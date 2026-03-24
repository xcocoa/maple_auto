package javax.mail.internet;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.PropUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.mail.Header;
import javax.mail.MessagingException;
import org.apache.commons.io.IOUtils;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class InternetHeaders {
    private static final boolean ignoreWhitespaceLines = PropUtil.getBooleanSystemProperty("mail.mime.ignorewhitespacelines", false);
    public List<InternetHeader> headers;

    public static final class InternetHeader extends Header {
        public String line;

        public InternetHeader(String str) {
            super("", "");
            int iIndexOf = str.indexOf(58);
            this.name = iIndexOf < 0 ? str.trim() : str.substring(0, iIndexOf).trim();
            this.line = str;
        }

        public InternetHeader(String str, String str2) {
            String str3;
            super(str, "");
            if (str2 != null) {
                str3 = str + ": " + str2;
            } else {
                str3 = null;
            }
            this.line = str3;
        }

        @Override // javax.mail.Header
        public final String getValue() {
            char cCharAt;
            int iIndexOf = this.line.indexOf(58);
            if (iIndexOf < 0) {
                return this.line;
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= this.line.length() || ((cCharAt = this.line.charAt(iIndexOf)) != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n')) {
                    break;
                }
            }
            return this.line.substring(iIndexOf);
        }
    }

    public static class MatchEnum {
        private Iterator<InternetHeader> e;
        private boolean match;
        private String[] names;
        private InternetHeader next_header = null;
        private boolean want_line;

        public MatchEnum(List<InternetHeader> list, String[] strArr, boolean z, boolean z3) {
            this.e = list.iterator();
            this.names = strArr;
            this.match = z;
            this.want_line = z3;
        }

        private InternetHeader nextMatch() {
            while (this.e.hasNext()) {
                InternetHeader next = this.e.next();
                if (next.line != null) {
                    if (this.names == null) {
                        if (this.match) {
                            return null;
                        }
                        return next;
                    }
                    int i = 0;
                    while (true) {
                        String[] strArr = this.names;
                        if (i < strArr.length) {
                            if (!strArr[i].equalsIgnoreCase(next.getName())) {
                                i++;
                            } else if (this.match) {
                                return next;
                            }
                        } else if (!this.match) {
                            return next;
                        }
                    }
                }
            }
            return null;
        }

        public boolean hasMoreElements() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            return this.next_header != null;
        }

        public Object nextElement() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            InternetHeader internetHeader = this.next_header;
            if (internetHeader == null) {
                throw new NoSuchElementException("No more headers");
            }
            this.next_header = null;
            return this.want_line ? internetHeader.line : new Header(internetHeader.getName(), internetHeader.getValue());
        }
    }

    public static class MatchHeaderEnum extends MatchEnum implements Enumeration<Header> {
        public MatchHeaderEnum(List<InternetHeader> list, String[] strArr, boolean z) {
            super(list, strArr, z, false);
        }

        @Override // javax.mail.internet.InternetHeaders.MatchEnum, java.util.Enumeration
        public Header nextElement() {
            return (Header) super.nextElement();
        }
    }

    public static class MatchStringEnum extends MatchEnum implements Enumeration<String> {
        public MatchStringEnum(List<InternetHeader> list, String[] strArr, boolean z) {
            super(list, strArr, z, true);
        }

        @Override // javax.mail.internet.InternetHeaders.MatchEnum, java.util.Enumeration
        public String nextElement() {
            return (String) super.nextElement();
        }
    }

    public InternetHeaders() {
        ArrayList arrayList = new ArrayList(40);
        this.headers = arrayList;
        arrayList.add(new InternetHeader("Return-Path", null));
        this.headers.add(new InternetHeader("Received", null));
        this.headers.add(new InternetHeader("Resent-Date", null));
        this.headers.add(new InternetHeader("Resent-From", null));
        this.headers.add(new InternetHeader("Resent-Sender", null));
        this.headers.add(new InternetHeader("Resent-To", null));
        this.headers.add(new InternetHeader("Resent-Cc", null));
        this.headers.add(new InternetHeader("Resent-Bcc", null));
        this.headers.add(new InternetHeader("Resent-Message-Id", null));
        this.headers.add(new InternetHeader("Date", null));
        this.headers.add(new InternetHeader("From", null));
        this.headers.add(new InternetHeader("Sender", null));
        this.headers.add(new InternetHeader("Reply-To", null));
        this.headers.add(new InternetHeader("To", null));
        this.headers.add(new InternetHeader("Cc", null));
        this.headers.add(new InternetHeader("Bcc", null));
        this.headers.add(new InternetHeader("Message-Id", null));
        this.headers.add(new InternetHeader("In-Reply-To", null));
        this.headers.add(new InternetHeader("References", null));
        this.headers.add(new InternetHeader("Subject", null));
        this.headers.add(new InternetHeader("Comments", null));
        this.headers.add(new InternetHeader("Keywords", null));
        this.headers.add(new InternetHeader("Errors-To", null));
        this.headers.add(new InternetHeader("MIME-Version", null));
        this.headers.add(new InternetHeader("Content-Type", null));
        this.headers.add(new InternetHeader(MIME.CONTENT_TRANSFER_ENC, null));
        this.headers.add(new InternetHeader(HttpHeaders.CONTENT_MD5, null));
        this.headers.add(new InternetHeader(":", null));
        this.headers.add(new InternetHeader("Content-Length", null));
        this.headers.add(new InternetHeader("Status", null));
    }

    public InternetHeaders(InputStream inputStream) throws MessagingException {
        this(inputStream, false);
    }

    public InternetHeaders(InputStream inputStream, boolean z) throws MessagingException {
        this.headers = new ArrayList(40);
        load(inputStream, z);
    }

    private static final boolean isEmpty(String str) {
        if (str.length() != 0) {
            return ignoreWhitespaceLines && str.trim().length() == 0;
        }
        return true;
    }

    public void addHeader(String str, String str2) {
        int size = this.headers.size();
        boolean z = str.equalsIgnoreCase("Received") || str.equalsIgnoreCase("Return-Path");
        if (z) {
            size = 0;
        }
        for (int size2 = this.headers.size() - 1; size2 >= 0; size2--) {
            InternetHeader internetHeader = this.headers.get(size2);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (!z) {
                    this.headers.add(size2 + 1, new InternetHeader(str, str2));
                    return;
                }
                size = size2;
            }
            if (!z && internetHeader.getName().equals(":")) {
                size = size2;
            }
        }
        this.headers.add(size, new InternetHeader(str, str2));
    }

    public void addHeaderLine(String str) {
        try {
            char cCharAt = str.charAt(0);
            if (cCharAt != ' ' && cCharAt != '\t') {
                this.headers.add(new InternetHeader(str));
                return;
            }
            this.headers.get(r0.size() - 1).line += IOUtils.LINE_SEPARATOR_WINDOWS + str;
        } catch (StringIndexOutOfBoundsException | NoSuchElementException unused) {
        }
    }

    public Enumeration<String> getAllHeaderLines() {
        return getNonMatchingHeaderLines(null);
    }

    public Enumeration<Header> getAllHeaders() {
        return new MatchHeaderEnum(this.headers, null, false);
    }

    public String getHeader(String str, String str2) {
        String[] header = getHeader(str);
        if (header == null) {
            return null;
        }
        if (header.length == 1 || str2 == null) {
            return header[0];
        }
        StringBuilder sb = new StringBuilder(header[0]);
        for (int i = 1; i < header.length; i++) {
            sb.append(str2);
            sb.append(header[i]);
        }
        return sb.toString();
    }

    public String[] getHeader(String str) {
        ArrayList arrayList = new ArrayList();
        for (InternetHeader internetHeader : this.headers) {
            if (str.equalsIgnoreCase(internetHeader.getName()) && internetHeader.line != null) {
                arrayList.add(internetHeader.getValue());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public Enumeration<String> getMatchingHeaderLines(String[] strArr) {
        return new MatchStringEnum(this.headers, strArr, true);
    }

    public Enumeration<Header> getMatchingHeaders(String[] strArr) {
        return new MatchHeaderEnum(this.headers, strArr, true);
    }

    public Enumeration<String> getNonMatchingHeaderLines(String[] strArr) {
        return new MatchStringEnum(this.headers, strArr, false);
    }

    public Enumeration<Header> getNonMatchingHeaders(String[] strArr) {
        return new MatchHeaderEnum(this.headers, strArr, false);
    }

    public void load(InputStream inputStream) throws MessagingException {
        load(inputStream, false);
    }

    public void load(InputStream inputStream, boolean z) throws MessagingException {
        LineInputStream lineInputStream = new LineInputStream(inputStream, z);
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        String str = null;
        while (true) {
            try {
                String line = lineInputStream.readLine();
                if (line == null || !(line.startsWith(o4.OooO00o.OooO0Oo) || line.startsWith("\t"))) {
                    if (str != null) {
                        addHeaderLine(str);
                    } else if (sb.length() > 0) {
                        addHeaderLine(sb.toString());
                        sb.setLength(0);
                    }
                    str = line;
                } else {
                    if (str != null) {
                        sb.append(str);
                        str = null;
                    }
                    if (z3) {
                        String strTrim = line.trim();
                        if (strTrim.length() > 0) {
                            sb.append(strTrim);
                        }
                    } else {
                        if (sb.length() > 0) {
                            sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                        }
                        sb.append(line);
                    }
                }
                if (line == null || isEmpty(line)) {
                    return;
                } else {
                    z3 = false;
                }
            } catch (IOException e) {
                throw new MessagingException("Error in input stream", e);
            }
        }
    }

    public void removeHeader(String str) {
        for (int i = 0; i < this.headers.size(); i++) {
            InternetHeader internetHeader = this.headers.get(i);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                internetHeader.line = null;
            }
        }
    }

    public void setHeader(String str, String str2) {
        String str3;
        int iIndexOf;
        int i = 0;
        boolean z = false;
        while (i < this.headers.size()) {
            InternetHeader internetHeader = this.headers.get(i);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (z) {
                    this.headers.remove(i);
                    i--;
                } else {
                    String str4 = internetHeader.line;
                    if (str4 == null || (iIndexOf = str4.indexOf(58)) < 0) {
                        str3 = str + ": " + str2;
                    } else {
                        str3 = internetHeader.line.substring(0, iIndexOf + 1) + o4.OooO00o.OooO0Oo + str2;
                    }
                    internetHeader.line = str3;
                    z = true;
                }
            }
            i++;
        }
        if (z) {
            return;
        }
        addHeader(str, str2);
    }
}
