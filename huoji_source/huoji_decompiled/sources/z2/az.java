package z2;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes2.dex */
public final class az {
    public static final int OooO0Oo = 307;
    public static final int OooO0o = 100;
    public static final int OooO0o0 = 308;
    public final Protocol OooO00o;
    public final int OooO0O0;
    public final String OooO0OO;

    public az(Protocol protocol, int i, String str) {
        this.OooO00o = protocol;
        this.OooO0O0 = i;
        this.OooO0OO = str;
    }

    public static az OooO00o(sx sxVar) {
        return new az(sxVar.o0ooOOo(), sxVar.OoooooO(), sxVar.o00ooo());
    }

    public static az OooO0O0(String str) throws IOException {
        Protocol protocol;
        String strSubstring;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                protocol = Protocol.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                protocol = Protocol.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            protocol = Protocol.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i3 = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                strSubstring = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i + 4);
            }
            return new az(protocol, i3, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.OooO00o == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.OooO0O0);
        if (this.OooO0OO != null) {
            sb.append(' ');
            sb.append(this.OooO0OO);
        }
        return sb.toString();
    }
}
