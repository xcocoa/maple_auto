package javax.mail.internet;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.LineOutputStream;
import com.sun.mail.util.MessageRemovedIOException;
import com.sun.mail.util.MimeUtil;
import com.sun.mail.util.PropUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.EncodingAware;
import javax.mail.FolderClosedException;
import javax.mail.Header;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.internet.HeaderTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class MimeBodyPart extends BodyPart implements MimePart {
    public Object cachedContent;
    public byte[] content;
    public InputStream contentStream;
    public DataHandler dh;
    public InternetHeaders headers;
    private static final boolean setDefaultTextCharset = PropUtil.getBooleanSystemProperty("mail.mime.setdefaulttextcharset", true);
    private static final boolean setContentTypeFileName = PropUtil.getBooleanSystemProperty("mail.mime.setcontenttypefilename", true);
    private static final boolean encodeFileName = PropUtil.getBooleanSystemProperty("mail.mime.encodefilename", false);
    private static final boolean decodeFileName = PropUtil.getBooleanSystemProperty("mail.mime.decodefilename", false);
    private static final boolean ignoreMultipartEncoding = PropUtil.getBooleanSystemProperty("mail.mime.ignoremultipartencoding", true);
    private static final boolean allowutf8 = PropUtil.getBooleanSystemProperty("mail.mime.allowutf8", true);
    public static final boolean cacheMultipart = PropUtil.getBooleanSystemProperty("mail.mime.cachemultipart", true);

    public static class EncodedFileDataSource extends FileDataSource implements EncodingAware {
        private String contentType;
        private String encoding;

        public EncodedFileDataSource(File file, String str, String str2) {
            super(file);
            this.contentType = str;
            this.encoding = str2;
        }

        @Override // javax.activation.FileDataSource, javax.activation.DataSource
        public String getContentType() {
            String str = this.contentType;
            return str != null ? str : super.getContentType();
        }

        @Override // javax.mail.EncodingAware
        public String getEncoding() {
            return this.encoding;
        }
    }

    public static class MimePartDataHandler extends DataHandler {
        public MimePart part;

        public MimePartDataHandler(MimePart mimePart) {
            super(new MimePartDataSource(mimePart));
            this.part = mimePart;
        }

        public InputStream getContentStream() throws MessagingException {
            MimePart mimePart = this.part;
            if (mimePart instanceof MimeBodyPart) {
                return ((MimeBodyPart) mimePart).getContentStream();
            }
            if (mimePart instanceof MimeMessage) {
                return ((MimeMessage) mimePart).getContentStream();
            }
            return null;
        }

        public MimePart getPart() {
            return this.part;
        }
    }

    public MimeBodyPart() {
        this.headers = new InternetHeaders();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MimeBodyPart(InputStream inputStream) throws MessagingException {
        boolean z = inputStream instanceof ByteArrayInputStream;
        InputStream bufferedInputStream = inputStream;
        if (!z) {
            boolean z3 = inputStream instanceof BufferedInputStream;
            bufferedInputStream = inputStream;
            if (!z3) {
                boolean z4 = inputStream instanceof SharedInputStream;
                bufferedInputStream = inputStream;
                if (!z4) {
                    bufferedInputStream = new BufferedInputStream(inputStream);
                }
            }
        }
        this.headers = new InternetHeaders(bufferedInputStream);
        if (bufferedInputStream instanceof SharedInputStream) {
            SharedInputStream sharedInputStream = (SharedInputStream) bufferedInputStream;
            this.contentStream = sharedInputStream.newStream(sharedInputStream.getPosition(), -1L);
        } else {
            try {
                this.content = ASCIIUtility.getBytes(bufferedInputStream);
            } catch (IOException e) {
                throw new MessagingException("Error reading input stream", e);
            }
        }
    }

    public MimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        this.headers = internetHeaders;
        this.content = bArr;
    }

    public static String[] getContentLanguage(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Language", null);
        if (header == null) {
            return null;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(header, HeaderTokenizer.MIME);
        ArrayList arrayList = new ArrayList();
        while (true) {
            HeaderTokenizer.Token next = headerTokenizer.next();
            int type = next.getType();
            if (type == -4) {
                break;
            }
            if (type == -1) {
                arrayList.add(next.getValue());
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    public static String getDescription(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Description", null);
        if (header == null) {
            return null;
        }
        try {
            return MimeUtility.decodeText(MimeUtility.unfold(header));
        } catch (UnsupportedEncodingException unused) {
            return header;
        }
    }

    public static String getDisposition(MimePart mimePart) throws MessagingException {
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header == null) {
            return null;
        }
        return new ContentDisposition(header).getDisposition();
    }

    public static String getEncoding(MimePart mimePart) throws MessagingException {
        HeaderTokenizer.Token next;
        int type;
        String header = mimePart.getHeader(MIME.CONTENT_TRANSFER_ENC, null);
        if (header == null) {
            return null;
        }
        String strTrim = header.trim();
        if (strTrim.length() == 0) {
            return null;
        }
        if (strTrim.equalsIgnoreCase("7bit") || strTrim.equalsIgnoreCase(MIME.ENC_8BIT) || strTrim.equalsIgnoreCase("quoted-printable") || strTrim.equalsIgnoreCase(MIME.ENC_BINARY) || strTrim.equalsIgnoreCase("base64")) {
            return strTrim;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(strTrim, HeaderTokenizer.MIME);
        do {
            next = headerTokenizer.next();
            type = next.getType();
            if (type == -4) {
                return strTrim;
            }
        } while (type != -1);
        return next.getValue();
    }

    public static String getFileName(MimePart mimePart) throws MessagingException {
        String strCleanContentType;
        String header = mimePart.getHeader("Content-Disposition", null);
        String parameter = header != null ? new ContentDisposition(header).getParameter("filename") : null;
        if (parameter == null && (strCleanContentType = MimeUtil.cleanContentType(mimePart, mimePart.getHeader("Content-Type", null))) != null) {
            try {
                parameter = new ContentType(strCleanContentType).getParameter("name");
            } catch (ParseException unused) {
            }
        }
        if (!decodeFileName || parameter == null) {
            return parameter;
        }
        try {
            return MimeUtility.decodeText(parameter);
        } catch (UnsupportedEncodingException e) {
            throw new MessagingException("Can't decode filename", e);
        }
    }

    public static void invalidateContentHeaders(MimePart mimePart) throws MessagingException {
        mimePart.removeHeader("Content-Type");
        mimePart.removeHeader(MIME.CONTENT_TRANSFER_ENC);
    }

    public static boolean isMimeType(MimePart mimePart, String str) throws MessagingException {
        String contentType = mimePart.getContentType();
        try {
            return new ContentType(contentType).match(str);
        } catch (ParseException unused) {
            try {
                int iIndexOf = contentType.indexOf(59);
                if (iIndexOf > 0) {
                    return new ContentType(contentType.substring(0, iIndexOf)).match(str);
                }
            } catch (ParseException unused2) {
            }
            return contentType.equalsIgnoreCase(str);
        }
    }

    public static String restrictEncoding(MimePart mimePart, String str) throws MessagingException {
        String contentType;
        if (!ignoreMultipartEncoding || str == null || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase(MIME.ENC_8BIT) || str.equalsIgnoreCase(MIME.ENC_BINARY) || (contentType = mimePart.getContentType()) == null) {
            return str;
        }
        try {
            ContentType contentType2 = new ContentType(contentType);
            if (contentType2.match("multipart/*")) {
                return null;
            }
            if (contentType2.match("message/*")) {
                if (!PropUtil.getBooleanSystemProperty("mail.mime.allowencodedmessages", false)) {
                    return null;
                }
            }
        } catch (ParseException unused) {
        }
        return str;
    }

    public static void setContentLanguage(MimePart mimePart, String[] strArr) throws MessagingException {
        StringBuilder sb = new StringBuilder(strArr[0]);
        int length = strArr[0].length() + 18;
        for (int i = 1; i < strArr.length; i++) {
            sb.append(',');
            int i2 = length + 1;
            if (i2 > 76) {
                sb.append("\r\n\t");
                i2 = 8;
            }
            sb.append(strArr[i]);
            length = i2 + strArr[i].length();
        }
        mimePart.setHeader("Content-Language", sb.toString());
    }

    public static void setDescription(MimePart mimePart, String str, String str2) throws MessagingException {
        if (str == null) {
            mimePart.removeHeader("Content-Description");
            return;
        }
        try {
            mimePart.setHeader("Content-Description", MimeUtility.fold(21, MimeUtility.encodeText(str, str2, null)));
        } catch (UnsupportedEncodingException e) {
            throw new MessagingException("Encoding error", e);
        }
    }

    public static void setDisposition(MimePart mimePart, String str) throws MessagingException {
        if (str == null) {
            mimePart.removeHeader("Content-Disposition");
            return;
        }
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header != null) {
            ContentDisposition contentDisposition = new ContentDisposition(header);
            contentDisposition.setDisposition(str);
            str = contentDisposition.toString();
        }
        mimePart.setHeader("Content-Disposition", str);
    }

    public static void setEncoding(MimePart mimePart, String str) throws MessagingException {
        mimePart.setHeader(MIME.CONTENT_TRANSFER_ENC, str);
    }

    public static void setFileName(MimePart mimePart, String str) throws MessagingException {
        String strCleanContentType;
        boolean z = encodeFileName;
        if (z && str != null) {
            try {
                str = MimeUtility.encodeText(str);
            } catch (UnsupportedEncodingException e) {
                throw new MessagingException("Can't encode filename", e);
            }
        }
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header == null) {
            header = Part.ATTACHMENT;
        }
        ContentDisposition contentDisposition = new ContentDisposition(header);
        String defaultMIMECharset = MimeUtility.getDefaultMIMECharset();
        ParameterList parameterList = contentDisposition.getParameterList();
        if (parameterList == null) {
            parameterList = new ParameterList();
            contentDisposition.setParameterList(parameterList);
        }
        if (z) {
            parameterList.setLiteral("filename", str);
        } else {
            parameterList.set("filename", str, defaultMIMECharset);
        }
        mimePart.setHeader("Content-Disposition", contentDisposition.toString());
        if (!setContentTypeFileName || (strCleanContentType = MimeUtil.cleanContentType(mimePart, mimePart.getHeader("Content-Type", null))) == null) {
            return;
        }
        try {
            ContentType contentType = new ContentType(strCleanContentType);
            ParameterList parameterList2 = contentType.getParameterList();
            if (parameterList2 == null) {
                parameterList2 = new ParameterList();
                contentType.setParameterList(parameterList2);
            }
            if (z) {
                parameterList2.setLiteral("name", str);
            } else {
                parameterList2.set("name", str, defaultMIMECharset);
            }
            mimePart.setHeader("Content-Type", contentType.toString());
        } catch (ParseException unused) {
        }
    }

    public static void setText(MimePart mimePart, String str, String str2, String str3) throws MessagingException {
        if (str2 == null) {
            str2 = MimeUtility.checkAscii(str) != 1 ? MimeUtility.getDefaultMIMECharset() : "us-ascii";
        }
        mimePart.setContent(str, "text/" + str3 + "; charset=" + MimeUtility.quote(str2, HeaderTokenizer.MIME));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033 A[Catch: IOException -> 0x0127, TryCatch #0 {IOException -> 0x0127, blocks: (B:5:0x000b, B:9:0x001a, B:11:0x0027, B:13:0x002b, B:21:0x0043, B:23:0x0047, B:29:0x007f, B:31:0x0083, B:34:0x008e, B:35:0x0095, B:37:0x009b, B:40:0x00a1, B:42:0x00a9, B:44:0x00b2, B:46:0x00b6, B:48:0x00be, B:50:0x00c4, B:52:0x00ca, B:56:0x00d9, B:55:0x00d5, B:58:0x00e2, B:60:0x00e6, B:62:0x00ef, B:64:0x00fc, B:66:0x0102, B:67:0x010a, B:70:0x0110, B:72:0x011f, B:71:0x0118, B:73:0x0123, B:24:0x004d, B:25:0x0075, B:16:0x0033, B:17:0x0038, B:19:0x003c, B:26:0x0076), top: B:78:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047 A[Catch: IOException -> 0x0127, TryCatch #0 {IOException -> 0x0127, blocks: (B:5:0x000b, B:9:0x001a, B:11:0x0027, B:13:0x002b, B:21:0x0043, B:23:0x0047, B:29:0x007f, B:31:0x0083, B:34:0x008e, B:35:0x0095, B:37:0x009b, B:40:0x00a1, B:42:0x00a9, B:44:0x00b2, B:46:0x00b6, B:48:0x00be, B:50:0x00c4, B:52:0x00ca, B:56:0x00d9, B:55:0x00d5, B:58:0x00e2, B:60:0x00e6, B:62:0x00ef, B:64:0x00fc, B:66:0x0102, B:67:0x010a, B:70:0x0110, B:72:0x011f, B:71:0x0118, B:73:0x0123, B:24:0x004d, B:25:0x0075, B:16:0x0033, B:17:0x0038, B:19:0x003c, B:26:0x0076), top: B:78:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[Catch: IOException -> 0x0127, TryCatch #0 {IOException -> 0x0127, blocks: (B:5:0x000b, B:9:0x001a, B:11:0x0027, B:13:0x002b, B:21:0x0043, B:23:0x0047, B:29:0x007f, B:31:0x0083, B:34:0x008e, B:35:0x0095, B:37:0x009b, B:40:0x00a1, B:42:0x00a9, B:44:0x00b2, B:46:0x00b6, B:48:0x00be, B:50:0x00c4, B:52:0x00ca, B:56:0x00d9, B:55:0x00d5, B:58:0x00e2, B:60:0x00e6, B:62:0x00ef, B:64:0x00fc, B:66:0x0102, B:67:0x010a, B:70:0x0110, B:72:0x011f, B:71:0x0118, B:73:0x0123, B:24:0x004d, B:25:0x0075, B:16:0x0033, B:17:0x0038, B:19:0x003c, B:26:0x0076), top: B:78:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0083 A[Catch: IOException -> 0x0127, TryCatch #0 {IOException -> 0x0127, blocks: (B:5:0x000b, B:9:0x001a, B:11:0x0027, B:13:0x002b, B:21:0x0043, B:23:0x0047, B:29:0x007f, B:31:0x0083, B:34:0x008e, B:35:0x0095, B:37:0x009b, B:40:0x00a1, B:42:0x00a9, B:44:0x00b2, B:46:0x00b6, B:48:0x00be, B:50:0x00c4, B:52:0x00ca, B:56:0x00d9, B:55:0x00d5, B:58:0x00e2, B:60:0x00e6, B:62:0x00ef, B:64:0x00fc, B:66:0x0102, B:67:0x010a, B:70:0x0110, B:72:0x011f, B:71:0x0118, B:73:0x0123, B:24:0x004d, B:25:0x0075, B:16:0x0033, B:17:0x0038, B:19:0x003c, B:26:0x0076), top: B:78:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1 A[Catch: IOException -> 0x0127, TryCatch #0 {IOException -> 0x0127, blocks: (B:5:0x000b, B:9:0x001a, B:11:0x0027, B:13:0x002b, B:21:0x0043, B:23:0x0047, B:29:0x007f, B:31:0x0083, B:34:0x008e, B:35:0x0095, B:37:0x009b, B:40:0x00a1, B:42:0x00a9, B:44:0x00b2, B:46:0x00b6, B:48:0x00be, B:50:0x00c4, B:52:0x00ca, B:56:0x00d9, B:55:0x00d5, B:58:0x00e2, B:60:0x00e6, B:62:0x00ef, B:64:0x00fc, B:66:0x0102, B:67:0x010a, B:70:0x0110, B:72:0x011f, B:71:0x0118, B:73:0x0123, B:24:0x004d, B:25:0x0075, B:16:0x0033, B:17:0x0038, B:19:0x003c, B:26:0x0076), top: B:78:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e2 A[Catch: IOException -> 0x0127, TryCatch #0 {IOException -> 0x0127, blocks: (B:5:0x000b, B:9:0x001a, B:11:0x0027, B:13:0x002b, B:21:0x0043, B:23:0x0047, B:29:0x007f, B:31:0x0083, B:34:0x008e, B:35:0x0095, B:37:0x009b, B:40:0x00a1, B:42:0x00a9, B:44:0x00b2, B:46:0x00b6, B:48:0x00be, B:50:0x00c4, B:52:0x00ca, B:56:0x00d9, B:55:0x00d5, B:58:0x00e2, B:60:0x00e6, B:62:0x00ef, B:64:0x00fc, B:66:0x0102, B:67:0x010a, B:70:0x0110, B:72:0x011f, B:71:0x0118, B:73:0x0123, B:24:0x004d, B:25:0x0075, B:16:0x0033, B:17:0x0038, B:19:0x003c, B:26:0x0076), top: B:78:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void updateHeaders(MimePart mimePart) throws MessagingException {
        String header;
        String parameter;
        Object content;
        DataHandler dataHandler = mimePart.getDataHandler();
        if (dataHandler == null) {
            return;
        }
        try {
            String contentType = dataHandler.getContentType();
            boolean z = false;
            boolean z3 = mimePart.getHeader("Content-Type") == null;
            ContentType contentType2 = new ContentType(contentType);
            if (contentType2.match("multipart/*")) {
                if (mimePart instanceof MimeBodyPart) {
                    content = ((MimeBodyPart) mimePart).cachedContent;
                    if (content == null) {
                        content = dataHandler.getContent();
                    }
                    if (content instanceof MimeMultipart) {
                        throw new MessagingException("MIME part of type \"" + contentType + "\" contains object of type " + content.getClass().getName() + " instead of MimeMultipart");
                    }
                    ((MimeMultipart) content).updateHeaders();
                } else {
                    if (!(mimePart instanceof MimeMessage) || (content = ((MimeMessage) mimePart).cachedContent) == null) {
                    }
                    if (content instanceof MimeMultipart) {
                    }
                }
                if (dataHandler instanceof MimePartDataHandler) {
                    MimePart part = ((MimePartDataHandler) dataHandler).getPart();
                    if (part == mimePart) {
                        return;
                    }
                    if (z3) {
                        mimePart.setHeader("Content-Type", part.getContentType());
                    }
                    String encoding = part.getEncoding();
                    if (encoding != null) {
                        setEncoding(mimePart, encoding);
                        return;
                    }
                }
                if (!z) {
                    if (mimePart.getHeader(MIME.CONTENT_TRANSFER_ENC) == null) {
                        setEncoding(mimePart, MimeUtility.getEncoding(dataHandler));
                    }
                    if (z3 && setDefaultTextCharset && contentType2.match("text/*") && contentType2.getParameter(HttpRequest.PARAM_CHARSET) == null) {
                        String encoding2 = mimePart.getEncoding();
                        contentType2.setParameter(HttpRequest.PARAM_CHARSET, (encoding2 == null || !encoding2.equalsIgnoreCase("7bit")) ? MimeUtility.getDefaultMIMECharset() : "us-ascii");
                        contentType = contentType2.toString();
                    }
                }
                if (z3) {
                    if (setContentTypeFileName && (header = mimePart.getHeader("Content-Disposition", null)) != null && (parameter = new ContentDisposition(header).getParameter("filename")) != null) {
                        ParameterList parameterList = contentType2.getParameterList();
                        if (parameterList == null) {
                            parameterList = new ParameterList();
                            contentType2.setParameterList(parameterList);
                        }
                        if (encodeFileName) {
                            parameterList.setLiteral("name", MimeUtility.encodeText(parameter));
                        } else {
                            parameterList.set("name", parameter, MimeUtility.getDefaultMIMECharset());
                        }
                        contentType = contentType2.toString();
                    }
                    mimePart.setHeader("Content-Type", contentType);
                    return;
                }
                return;
            }
            if (contentType2.match("message/rfc822")) {
            }
            if (dataHandler instanceof MimePartDataHandler) {
            }
            if (!z) {
            }
            if (z3) {
            }
            z = true;
            if (dataHandler instanceof MimePartDataHandler) {
            }
            if (!z) {
            }
            if (z3) {
            }
        } catch (IOException e) {
            throw new MessagingException("IOException updating headers", e);
        }
    }

    public static void writeTo(MimePart mimePart, OutputStream outputStream, String[] strArr) throws MessagingException, IOException {
        LineOutputStream lineOutputStream = outputStream instanceof LineOutputStream ? (LineOutputStream) outputStream : new LineOutputStream(outputStream, allowutf8);
        Enumeration<String> nonMatchingHeaderLines = mimePart.getNonMatchingHeaderLines(strArr);
        while (nonMatchingHeaderLines.hasMoreElements()) {
            lineOutputStream.writeln(nonMatchingHeaderLines.nextElement());
        }
        lineOutputStream.writeln();
        InputStream contentStream = null;
        try {
            DataHandler dataHandler = mimePart.getDataHandler();
            if (dataHandler instanceof MimePartDataHandler) {
                MimePartDataHandler mimePartDataHandler = (MimePartDataHandler) dataHandler;
                if (mimePartDataHandler.getPart().getEncoding() != null) {
                    contentStream = mimePartDataHandler.getContentStream();
                }
            }
            if (contentStream != null) {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = contentStream.read(bArr);
                    if (i <= 0) {
                        break;
                    } else {
                        outputStream.write(bArr, 0, i);
                    }
                }
            } else {
                outputStream = MimeUtility.encode(outputStream, restrictEncoding(mimePart, mimePart.getEncoding()));
                mimePart.getDataHandler().writeTo(outputStream);
            }
            outputStream.flush();
        } finally {
            if (0 != 0) {
                contentStream.close();
            }
        }
    }

    @Override // javax.mail.Part
    public void addHeader(String str, String str2) throws MessagingException {
        this.headers.addHeader(str, str2);
    }

    public void addHeaderLine(String str) throws MessagingException {
        this.headers.addHeaderLine(str);
    }

    public void attachFile(File file) throws MessagingException, IOException {
        FileDataSource fileDataSource = new FileDataSource(file);
        setDataHandler(new DataHandler(fileDataSource));
        setFileName(fileDataSource.getName());
        setDisposition(Part.ATTACHMENT);
    }

    public void attachFile(File file, String str, String str2) throws MessagingException, IOException {
        EncodedFileDataSource encodedFileDataSource = new EncodedFileDataSource(file, str, str2);
        setDataHandler(new DataHandler(encodedFileDataSource));
        setFileName(encodedFileDataSource.getName());
        setDisposition(Part.ATTACHMENT);
    }

    public void attachFile(String str) throws MessagingException, IOException {
        attachFile(new File(str));
    }

    public void attachFile(String str, String str2, String str3) throws MessagingException, IOException {
        attachFile(new File(str), str2, str3);
    }

    public Enumeration<String> getAllHeaderLines() throws MessagingException {
        return this.headers.getAllHeaderLines();
    }

    @Override // javax.mail.Part
    public Enumeration<Header> getAllHeaders() throws MessagingException {
        return this.headers.getAllHeaders();
    }

    @Override // javax.mail.Part
    public Object getContent() throws MessagingException, IOException {
        Object obj = this.cachedContent;
        if (obj != null) {
            return obj;
        }
        try {
            Object content = getDataHandler().getContent();
            if (cacheMultipart && (((content instanceof Multipart) || (content instanceof Message)) && (this.content != null || this.contentStream != null))) {
                this.cachedContent = content;
                if (content instanceof MimeMultipart) {
                    ((MimeMultipart) content).parse();
                }
            }
            return content;
        } catch (FolderClosedIOException e) {
            throw new FolderClosedException(e.getFolder(), e.getMessage());
        } catch (MessageRemovedIOException e2) {
            throw new MessageRemovedException(e2.getMessage());
        }
    }

    public String getContentID() throws MessagingException {
        return getHeader("Content-Id", null);
    }

    @Override // javax.mail.internet.MimePart
    public String[] getContentLanguage() throws MessagingException {
        return getContentLanguage(this);
    }

    public String getContentMD5() throws MessagingException {
        return getHeader(HttpHeaders.CONTENT_MD5, null);
    }

    public InputStream getContentStream() throws MessagingException {
        Closeable closeable = this.contentStream;
        if (closeable != null) {
            return ((SharedInputStream) closeable).newStream(0L, -1L);
        }
        if (this.content != null) {
            return new ByteArrayInputStream(this.content);
        }
        throw new MessagingException("No MimeBodyPart content");
    }

    @Override // javax.mail.Part
    public String getContentType() throws MessagingException {
        String strCleanContentType = MimeUtil.cleanContentType(this, getHeader("Content-Type", null));
        return strCleanContentType == null ? "text/plain" : strCleanContentType;
    }

    @Override // javax.mail.Part
    public DataHandler getDataHandler() throws MessagingException {
        if (this.dh == null) {
            this.dh = new MimePartDataHandler(this);
        }
        return this.dh;
    }

    @Override // javax.mail.Part
    public String getDescription() throws MessagingException {
        return getDescription(this);
    }

    @Override // javax.mail.Part
    public String getDisposition() throws MessagingException {
        return getDisposition(this);
    }

    public String getEncoding() throws MessagingException {
        return getEncoding(this);
    }

    @Override // javax.mail.Part
    public String getFileName() throws MessagingException {
        return getFileName(this);
    }

    @Override // javax.mail.internet.MimePart
    public String getHeader(String str, String str2) throws MessagingException {
        return this.headers.getHeader(str, str2);
    }

    @Override // javax.mail.Part
    public String[] getHeader(String str) throws MessagingException {
        return this.headers.getHeader(str);
    }

    @Override // javax.mail.Part
    public InputStream getInputStream() throws MessagingException, IOException {
        return getDataHandler().getInputStream();
    }

    @Override // javax.mail.Part
    public int getLineCount() throws MessagingException {
        return -1;
    }

    public Enumeration<String> getMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration<Header> getMatchingHeaders(String[] strArr) throws MessagingException {
        return this.headers.getMatchingHeaders(strArr);
    }

    public Enumeration<String> getNonMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration<Header> getNonMatchingHeaders(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaders(strArr);
    }

    public InputStream getRawInputStream() throws MessagingException {
        return getContentStream();
    }

    @Override // javax.mail.Part
    public int getSize() throws MessagingException {
        byte[] bArr = this.content;
        if (bArr != null) {
            return bArr.length;
        }
        InputStream inputStream = this.contentStream;
        if (inputStream == null) {
            return -1;
        }
        try {
            int iAvailable = inputStream.available();
            if (iAvailable > 0) {
                return iAvailable;
            }
            return -1;
        } catch (IOException unused) {
            return -1;
        }
    }

    @Override // javax.mail.Part
    public boolean isMimeType(String str) throws MessagingException {
        return isMimeType(this, str);
    }

    @Override // javax.mail.Part
    public void removeHeader(String str) throws MessagingException {
        this.headers.removeHeader(str);
    }

    public void saveFile(File file) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        InputStream inputStream = null;
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                inputStream = getInputStream();
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, i);
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                try {
                    bufferedOutputStream.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (bufferedOutputStream == null) {
                    throw th;
                }
                try {
                    bufferedOutputStream.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
    }

    public void saveFile(String str) throws Throwable {
        saveFile(new File(str));
    }

    @Override // javax.mail.Part
    public void setContent(Object obj, String str) throws MessagingException {
        if (obj instanceof Multipart) {
            setContent((Multipart) obj);
        } else {
            setDataHandler(new DataHandler(obj, str));
        }
    }

    @Override // javax.mail.Part
    public void setContent(Multipart multipart) throws MessagingException {
        setDataHandler(new DataHandler(multipart, multipart.getContentType()));
        multipart.setParent(this);
    }

    public void setContentID(String str) throws MessagingException {
        if (str == null) {
            removeHeader("Content-ID");
        } else {
            setHeader("Content-ID", str);
        }
    }

    @Override // javax.mail.internet.MimePart
    public void setContentLanguage(String[] strArr) throws MessagingException {
        setContentLanguage(this, strArr);
    }

    public void setContentMD5(String str) throws MessagingException {
        setHeader(HttpHeaders.CONTENT_MD5, str);
    }

    @Override // javax.mail.Part
    public void setDataHandler(DataHandler dataHandler) throws MessagingException {
        this.dh = dataHandler;
        this.cachedContent = null;
        invalidateContentHeaders(this);
    }

    @Override // javax.mail.Part
    public void setDescription(String str) throws MessagingException {
        setDescription(str, null);
    }

    public void setDescription(String str, String str2) throws MessagingException {
        setDescription(this, str, str2);
    }

    @Override // javax.mail.Part
    public void setDisposition(String str) throws MessagingException {
        setDisposition(this, str);
    }

    @Override // javax.mail.Part
    public void setFileName(String str) throws MessagingException {
        setFileName(this, str);
    }

    @Override // javax.mail.Part
    public void setHeader(String str, String str2) throws MessagingException {
        this.headers.setHeader(str, str2);
    }

    @Override // javax.mail.Part, javax.mail.internet.MimePart
    public void setText(String str) throws MessagingException {
        setText(str, null);
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2) throws MessagingException {
        setText(this, str, str2, "plain");
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2, String str3) throws MessagingException {
        setText(this, str, str2, str3);
    }

    public void updateHeaders() throws MessagingException {
        updateHeaders(this);
        if (this.cachedContent != null) {
            this.dh = new DataHandler(this.cachedContent, getContentType());
            this.cachedContent = null;
            this.content = null;
            InputStream inputStream = this.contentStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            this.contentStream = null;
        }
    }

    @Override // javax.mail.Part
    public void writeTo(OutputStream outputStream) throws MessagingException, IOException {
        writeTo(this, outputStream, null);
    }
}
