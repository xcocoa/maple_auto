package javax.mail.internet;

import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.LineOutputStream;
import com.sun.mail.util.PropUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.mail.BodyPart;
import javax.mail.MessageAware;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.MultipartDataSource;

/* JADX INFO: loaded from: classes2.dex */
public class MimeMultipart extends Multipart {
    public boolean allowEmpty;
    public boolean complete;
    public DataSource ds;
    public boolean ignoreExistingBoundaryParameter;
    public boolean ignoreMissingBoundaryParameter;
    public boolean ignoreMissingEndBoundary;
    public boolean parsed;
    public String preamble;

    public MimeMultipart() {
        this("mixed");
    }

    public MimeMultipart(String str) {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        this.ignoreMissingEndBoundary = true;
        this.ignoreMissingBoundaryParameter = true;
        this.ignoreExistingBoundaryParameter = false;
        this.allowEmpty = false;
        String uniqueBoundaryValue = UniqueValue.getUniqueBoundaryValue();
        ContentType contentType = new ContentType("multipart", str, null);
        contentType.setParameter("boundary", uniqueBoundaryValue);
        this.contentType = contentType.toString();
        initializeProperties();
    }

    public MimeMultipart(String str, BodyPart... bodyPartArr) throws MessagingException {
        this(str);
        for (BodyPart bodyPart : bodyPartArr) {
            super.addBodyPart(bodyPart);
        }
    }

    public MimeMultipart(DataSource dataSource) throws MessagingException {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        this.ignoreMissingEndBoundary = true;
        this.ignoreMissingBoundaryParameter = true;
        this.ignoreExistingBoundaryParameter = false;
        this.allowEmpty = false;
        if (dataSource instanceof MessageAware) {
            setParent(((MessageAware) dataSource).getMessageContext().getPart());
        }
        if (dataSource instanceof MultipartDataSource) {
            setMultipartDataSource((MultipartDataSource) dataSource);
            return;
        }
        this.parsed = false;
        this.ds = dataSource;
        this.contentType = dataSource.getContentType();
    }

    public MimeMultipart(BodyPart... bodyPartArr) throws MessagingException {
        this();
        for (BodyPart bodyPart : bodyPartArr) {
            super.addBodyPart(bodyPart);
        }
    }

    private static boolean allDashes(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != '-') {
                return false;
            }
        }
        return true;
    }

    private MimeBodyPart createMimeBodyPartIs(InputStream inputStream) throws MessagingException {
        try {
            return createMimeBodyPart(inputStream);
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    private static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (i2 > 0) {
            int i4 = inputStream.read(bArr, i, i2);
            if (i4 <= 0) {
                break;
            }
            i += i4;
            i3 += i4;
            i2 -= i4;
        }
        if (i3 > 0) {
            return i3;
        }
        return -1;
    }

    private void skipFully(InputStream inputStream, long j) throws IOException {
        while (j > 0) {
            long jSkip = inputStream.skip(j);
            if (jSkip <= 0) {
                throw new EOFException("can't skip");
            }
            j -= jSkip;
        }
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart) throws MessagingException {
        parse();
        super.addBodyPart(bodyPart);
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart, int i) throws MessagingException {
        parse();
        super.addBodyPart(bodyPart, i);
    }

    public InternetHeaders createInternetHeaders(InputStream inputStream) throws MessagingException {
        return new InternetHeaders(inputStream);
    }

    public MimeBodyPart createMimeBodyPart(InputStream inputStream) throws MessagingException {
        return new MimeBodyPart(inputStream);
    }

    public MimeBodyPart createMimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        return new MimeBodyPart(internetHeaders, bArr);
    }

    @Override // javax.mail.Multipart
    public synchronized BodyPart getBodyPart(int i) throws MessagingException {
        parse();
        return super.getBodyPart(i);
    }

    public synchronized BodyPart getBodyPart(String str) throws MessagingException {
        parse();
        int count = getCount();
        for (int i = 0; i < count; i++) {
            MimeBodyPart mimeBodyPart = (MimeBodyPart) getBodyPart(i);
            String contentID = mimeBodyPart.getContentID();
            if (contentID != null && contentID.equals(str)) {
                return mimeBodyPart;
            }
        }
        return null;
    }

    @Override // javax.mail.Multipart
    public synchronized int getCount() throws MessagingException {
        parse();
        return super.getCount();
    }

    public synchronized String getPreamble() throws MessagingException {
        parse();
        return this.preamble;
    }

    public void initializeProperties() {
        this.ignoreMissingEndBoundary = PropUtil.getBooleanSystemProperty("mail.mime.multipart.ignoremissingendboundary", true);
        this.ignoreMissingBoundaryParameter = PropUtil.getBooleanSystemProperty("mail.mime.multipart.ignoremissingboundaryparameter", true);
        this.ignoreExistingBoundaryParameter = PropUtil.getBooleanSystemProperty("mail.mime.multipart.ignoreexistingboundaryparameter", false);
        this.allowEmpty = PropUtil.getBooleanSystemProperty("mail.mime.multipart.allowempty", false);
    }

    public synchronized boolean isComplete() throws MessagingException {
        parse();
        return this.complete;
    }

    /* JADX WARN: Code restructure failed: missing block: B:171:0x025a, code lost:
    
        r26 = r4;
        r4 = r17;
        r8 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0330, code lost:
    
        r2.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:235:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0067 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void parse() throws MessagingException {
        String line;
        boolean z;
        InternetHeaders internetHeadersCreateInternetHeaders;
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        int fully;
        byte[] bArr;
        LineInputStream lineInputStream;
        byte[] bArr2;
        long j;
        int i2;
        ByteArrayOutputStream byteArrayOutputStream2;
        MimeBodyPart mimeBodyPartCreateMimeBodyPart;
        boolean z3;
        byte[] bArr3;
        byte[] bArr4;
        ByteArrayOutputStream byteArrayOutputStream3;
        int i3;
        byte b;
        String line2;
        String parameter;
        if (this.parsed) {
            return;
        }
        initializeProperties();
        try {
            InputStream inputStream = this.ds.getInputStream();
            InputStream bufferedInputStream = ((inputStream instanceof ByteArrayInputStream) || (inputStream instanceof BufferedInputStream) || (inputStream instanceof SharedInputStream)) ? inputStream : new BufferedInputStream(inputStream);
            SharedInputStream sharedInputStream = bufferedInputStream instanceof SharedInputStream ? (SharedInputStream) bufferedInputStream : null;
            String strConcat = (this.ignoreExistingBoundaryParameter || (parameter = new ContentType(this.contentType).getParameter("boundary")) == null) ? null : "--".concat(String.valueOf(parameter));
            if (strConcat == null && !this.ignoreMissingBoundaryParameter && !this.ignoreExistingBoundaryParameter) {
                throw new ParseException("Missing boundary parameter");
            }
            try {
                try {
                    LineInputStream lineInputStream2 = new LineInputStream(bufferedInputStream);
                    StringBuilder sb = null;
                    while (true) {
                        line = lineInputStream2.readLine();
                        z = false;
                        if (line == null) {
                            break;
                        }
                        int length = line.length() - 1;
                        while (length >= 0) {
                            char cCharAt = line.charAt(length);
                            if (cCharAt != ' ' && cCharAt != '\t') {
                                break;
                            } else {
                                length--;
                            }
                        }
                        line = line.substring(0, length + 1);
                        if (strConcat == null) {
                            if (line.length() > 2 && line.startsWith("--") && (line.length() <= 4 || !allDashes(line))) {
                                break;
                            }
                            if (line.length() > 0) {
                            }
                        } else {
                            if (line.equals(strConcat)) {
                                break;
                            }
                            if (line.length() == strConcat.length() + 2 && line.startsWith(strConcat) && line.endsWith("--")) {
                                line = null;
                                break;
                            }
                            if (line.length() > 0) {
                                if (sb == null) {
                                    sb = new StringBuilder(line.length() + 2);
                                }
                                sb.append(line);
                                sb.append(System.lineSeparator());
                            }
                        }
                    }
                    strConcat = line;
                    if (sb != null) {
                        this.preamble = sb.toString();
                    }
                    if (line == null) {
                        if (!this.allowEmpty) {
                            throw new ParseException("Missing start boundary");
                        }
                        try {
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    byte[] bytes = ASCIIUtility.getBytes(strConcat);
                    int length2 = bytes.length;
                    int[] iArr = new int[256];
                    int i4 = 0;
                    while (i4 < length2) {
                        int i5 = bytes[i4] & 255;
                        i4++;
                        iArr[i5] = i4;
                    }
                    int[] iArr2 = new int[length2];
                    for (int i6 = length2; i6 > 0; i6--) {
                        int i7 = length2 - 1;
                        while (true) {
                            if (i7 < i6) {
                                while (i7 > 0) {
                                    i7--;
                                    iArr2[i7] = i6;
                                }
                            } else if (bytes[i7] == bytes[i7 - i6]) {
                                iArr2[i7 - 1] = i6;
                                i7--;
                            }
                        }
                    }
                    int i8 = length2 - 1;
                    iArr2[i8] = 1;
                    long position = 0;
                    long position2 = 0;
                    boolean z4 = false;
                    while (true) {
                        if (!z4) {
                            if (sharedInputStream != null) {
                                position = sharedInputStream.getPosition();
                                do {
                                    line2 = lineInputStream2.readLine();
                                    if (line2 == null) {
                                        break;
                                    }
                                } while (line2.length() > 0);
                                if (line2 != null) {
                                    internetHeadersCreateInternetHeaders = null;
                                } else {
                                    if (!this.ignoreMissingEndBoundary) {
                                        throw new ParseException("missing multipart end boundary");
                                    }
                                    this.complete = z;
                                }
                            } else {
                                internetHeadersCreateInternetHeaders = createInternetHeaders(bufferedInputStream);
                            }
                            if (!bufferedInputStream.markSupported()) {
                                throw new MessagingException("Stream doesn't support mark");
                            }
                            if (sharedInputStream == null) {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                            } else {
                                position2 = sharedInputStream.getPosition();
                                byteArrayOutputStream = null;
                            }
                            byte[] bArr5 = new byte[length2];
                            byte[] bArr6 = new byte[length2];
                            int i9 = 0;
                            boolean z5 = true;
                            while (true) {
                                bufferedInputStream.mark(length2 + 4 + 1000);
                                i = i8;
                                fully = readFully(bufferedInputStream, bArr5, 0, length2);
                                if (fully >= length2) {
                                    int i10 = i;
                                    while (true) {
                                        if (i10 < 0) {
                                            lineInputStream = lineInputStream2;
                                            z3 = z4;
                                            break;
                                        }
                                        lineInputStream = lineInputStream2;
                                        z3 = z4;
                                        if (bArr5[i10] != bytes[i10]) {
                                            break;
                                        }
                                        i10--;
                                        lineInputStream2 = lineInputStream;
                                        z4 = z3;
                                    }
                                    if (i10 < 0) {
                                        i2 = (z5 || !((b = bArr6[i9 + (-1)]) == 13 || b == 10)) ? 0 : (b == 10 && i9 >= 2 && bArr6[i9 + (-2)] == 13) ? 2 : 1;
                                        if (z5 || i2 > 0) {
                                            if (sharedInputStream != null) {
                                                bArr2 = bArr5;
                                                position2 = (sharedInputStream.getPosition() - ((long) length2)) - ((long) i2);
                                            } else {
                                                bArr2 = bArr5;
                                            }
                                            int i11 = bufferedInputStream.read();
                                            if (i11 == 45 && bufferedInputStream.read() == 45) {
                                                this.complete = true;
                                                bArr = bytes;
                                                j = position2;
                                                z4 = true;
                                                break;
                                            }
                                            int i12 = 32;
                                            while (true) {
                                                if (i11 != i12 && i11 != 9) {
                                                    break;
                                                }
                                                bArr2 = bArr2;
                                                bytes = bytes;
                                                i12 = 32;
                                                byteArrayOutputStream = byteArrayOutputStream;
                                                i11 = bufferedInputStream.read();
                                            }
                                            if (i11 == 10) {
                                                break;
                                            }
                                            if (i11 == 13) {
                                                bufferedInputStream.mark(1);
                                                if (bufferedInputStream.read() != 10) {
                                                    bufferedInputStream.reset();
                                                }
                                            }
                                        } else {
                                            bArr2 = bArr5;
                                        }
                                        bArr3 = bytes;
                                        byteArrayOutputStream3 = byteArrayOutputStream;
                                        bArr4 = bArr2;
                                        i10 = 0;
                                    } else {
                                        bArr3 = bytes;
                                        bArr4 = bArr5;
                                        byteArrayOutputStream3 = byteArrayOutputStream;
                                    }
                                    int iMax = Math.max((i10 + 1) - iArr[bArr4[i10] & 127], iArr2[i10]);
                                    if (iMax < 2) {
                                        if (sharedInputStream == null && i9 > 1) {
                                            byteArrayOutputStream3.write(bArr6, 0, i9 - 1);
                                        }
                                        bufferedInputStream.reset();
                                        i3 = length2;
                                        skipFully(bufferedInputStream, 1L);
                                        if (i9 > 0) {
                                            bArr6[0] = bArr6[i9 - 1];
                                            bArr6[1] = bArr4[0];
                                            i9 = 2;
                                        } else {
                                            bArr6[0] = bArr4[0];
                                            i9 = 1;
                                        }
                                    } else {
                                        i3 = length2;
                                        if (i9 > 0 && sharedInputStream == null) {
                                            byteArrayOutputStream3.write(bArr6, 0, i9);
                                        }
                                        bufferedInputStream.reset();
                                        skipFully(bufferedInputStream, iMax);
                                        i9 = iMax;
                                        byte[] bArr7 = bArr6;
                                        bArr6 = bArr4;
                                        bArr4 = bArr7;
                                    }
                                    byteArrayOutputStream = byteArrayOutputStream3;
                                    length2 = i3;
                                    i8 = i;
                                    lineInputStream2 = lineInputStream;
                                    z4 = z3;
                                    z5 = false;
                                    bArr5 = bArr4;
                                    bytes = bArr3;
                                } else {
                                    if (!this.ignoreMissingEndBoundary) {
                                        throw new ParseException("missing multipart end boundary");
                                    }
                                    if (sharedInputStream != null) {
                                        position2 = sharedInputStream.getPosition();
                                    }
                                    this.complete = false;
                                    bArr = bytes;
                                    lineInputStream = lineInputStream2;
                                    bArr2 = bArr5;
                                    j = position2;
                                    z4 = true;
                                    i2 = 0;
                                }
                            }
                            if (sharedInputStream != null) {
                                mimeBodyPartCreateMimeBodyPart = createMimeBodyPartIs(sharedInputStream.newStream(position, j));
                            } else {
                                int i13 = i9 - i2;
                                if (i13 > 0) {
                                    byteArrayOutputStream2 = byteArrayOutputStream;
                                    byteArrayOutputStream2.write(bArr6, 0, i13);
                                } else {
                                    byteArrayOutputStream2 = byteArrayOutputStream;
                                }
                                if (!this.complete && fully > 0) {
                                    byteArrayOutputStream2.write(bArr2, 0, fully);
                                }
                                mimeBodyPartCreateMimeBodyPart = createMimeBodyPart(internetHeadersCreateInternetHeaders, byteArrayOutputStream2.toByteArray());
                            }
                            super.addBodyPart(mimeBodyPartCreateMimeBodyPart);
                            position2 = j;
                            i8 = i;
                            lineInputStream2 = lineInputStream;
                            bytes = bArr;
                            z = false;
                        }
                    }
                } catch (IOException e) {
                    throw new MessagingException("IO Error", e);
                }
            } finally {
                try {
                    bufferedInputStream.close();
                } catch (IOException unused2) {
                }
            }
        } catch (Exception e2) {
            throw new MessagingException("No inputstream from datasource", e2);
        }
        this.parsed = true;
    }

    @Override // javax.mail.Multipart
    public void removeBodyPart(int i) throws MessagingException {
        parse();
        super.removeBodyPart(i);
    }

    @Override // javax.mail.Multipart
    public boolean removeBodyPart(BodyPart bodyPart) throws MessagingException {
        parse();
        return super.removeBodyPart(bodyPart);
    }

    public synchronized void setPreamble(String str) throws MessagingException {
        this.preamble = str;
    }

    public synchronized void setSubType(String str) throws MessagingException {
        ContentType contentType = new ContentType(this.contentType);
        contentType.setSubType(str);
        this.contentType = contentType.toString();
    }

    public synchronized void updateHeaders() throws MessagingException {
        parse();
        for (int i = 0; i < this.parts.size(); i++) {
            ((MimeBodyPart) this.parts.elementAt(i)).updateHeaders();
        }
    }

    @Override // javax.mail.Multipart
    public synchronized void writeTo(OutputStream outputStream) throws MessagingException, IOException {
        parse();
        String str = "--" + new ContentType(this.contentType).getParameter("boundary");
        LineOutputStream lineOutputStream = new LineOutputStream(outputStream);
        String str2 = this.preamble;
        if (str2 != null) {
            byte[] bytes = ASCIIUtility.getBytes(str2);
            lineOutputStream.write(bytes);
            if (bytes.length > 0 && bytes[bytes.length - 1] != 13 && bytes[bytes.length - 1] != 10) {
                lineOutputStream.writeln();
            }
        }
        if (this.parts.size() != 0) {
            for (int i = 0; i < this.parts.size(); i++) {
                lineOutputStream.writeln(str);
                ((MimeBodyPart) this.parts.elementAt(i)).writeTo(outputStream);
                lineOutputStream.writeln();
            }
        } else {
            if (!this.allowEmpty) {
                throw new MessagingException("Empty multipart: " + this.contentType);
            }
            lineOutputStream.writeln(str);
            lineOutputStream.writeln();
        }
        lineOutputStream.writeln(str + "--");
    }
}
