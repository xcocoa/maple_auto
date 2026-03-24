package okhttp3.logging;

import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import z2.j00;
import z2.jx;
import z2.l00;
import z2.lx;
import z2.mx;
import z2.qx;
import z2.rx;
import z2.sx;
import z2.tx;
import z2.uy;
import z2.uz;
import z2.yw;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpLoggingInterceptor implements lx {
    private static final Charset OooO0OO = Charset.forName("UTF-8");
    private final OooO00o OooO00o;
    private volatile Level OooO0O0;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface OooO00o {
        public static final OooO00o OooO00o = new C0244OooO00o();

        /* JADX INFO: renamed from: okhttp3.logging.HttpLoggingInterceptor$OooO00o$OooO00o, reason: collision with other inner class name */
        public static class C0244OooO00o implements OooO00o {
            @Override // okhttp3.logging.HttpLoggingInterceptor.OooO00o
            public void OooO00o(String str) {
                uz.OooOO0O().OooOOo(4, str, null);
            }
        }

        void OooO00o(String str);
    }

    public HttpLoggingInterceptor() {
        this(OooO00o.OooO00o);
    }

    public HttpLoggingInterceptor(OooO00o oooO00o) {
        this.OooO0O0 = Level.NONE;
        this.OooO00o = oooO00o;
    }

    private boolean OooO00o(jx jxVar) {
        String strOooO0Oo = jxVar.OooO0Oo("Content-Encoding");
        return (strOooO0Oo == null || strOooO0Oo.equalsIgnoreCase("identity")) ? false : true;
    }

    public static boolean OooO0OO(j00 j00Var) {
        try {
            j00 j00Var2 = new j00();
            j00Var.o0OoOo0(j00Var2, 0L, j00Var.o00000O0() < 64 ? j00Var.o00000O0() : 64L);
            for (int i = 0; i < 16; i++) {
                if (j00Var2.OooOOO()) {
                    return true;
                }
                int iOooOoo = j00Var2.OooOoo();
                if (Character.isISOControl(iOooOoo) && !Character.isWhitespace(iOooOoo)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public Level OooO0O0() {
        return this.OooO0O0;
    }

    public HttpLoggingInterceptor OooO0Oo(Level level) {
        Objects.requireNonNull(level, "level == null. Use Level.NONE instead.");
        this.OooO0O0 = level;
        return this;
    }

    @Override // z2.lx
    public sx intercept(lx.OooO00o oooO00o) throws Exception {
        boolean z;
        OooO00o oooO00o2;
        String str;
        OooO00o oooO00o3;
        StringBuilder sb;
        String strOooO0oO;
        boolean z3;
        Level level = this.OooO0O0;
        qx qxVarRequest = oooO00o.request();
        if (level == Level.NONE) {
            return oooO00o.OooO0o0(qxVarRequest);
        }
        boolean z4 = level == Level.BODY;
        boolean z5 = z4 || level == Level.HEADERS;
        rx rxVarOooO00o = qxVarRequest.OooO00o();
        boolean z6 = rxVarOooO00o != null;
        yw ywVarOooO0o = oooO00o.OooO0o();
        String str2 = "--> " + qxVarRequest.OooO0oO() + ' ' + qxVarRequest.OooOO0O() + ' ' + (ywVarOooO0o != null ? ywVarOooO0o.OooO00o() : Protocol.HTTP_1_1);
        if (!z5 && z6) {
            str2 = str2 + " (" + rxVarOooO00o.contentLength() + "-byte body)";
        }
        this.OooO00o.OooO00o(str2);
        if (z5) {
            if (z6) {
                if (rxVarOooO00o.contentType() != null) {
                    this.OooO00o.OooO00o("Content-Type: " + rxVarOooO00o.contentType());
                }
                if (rxVarOooO00o.contentLength() != -1) {
                    this.OooO00o.OooO00o("Content-Length: " + rxVarOooO00o.contentLength());
                }
            }
            jx jxVarOooO0o0 = qxVarRequest.OooO0o0();
            int iOooOO0o = jxVarOooO0o0.OooOO0o();
            int i = 0;
            while (i < iOooOO0o) {
                String strOooO0oO2 = jxVarOooO0o0.OooO0oO(i);
                int i2 = iOooOO0o;
                if ("Content-Type".equalsIgnoreCase(strOooO0oO2) || "Content-Length".equalsIgnoreCase(strOooO0oO2)) {
                    z3 = z5;
                } else {
                    z3 = z5;
                    this.OooO00o.OooO00o(strOooO0oO2 + ": " + jxVarOooO0o0.OooOOO(i));
                }
                i++;
                iOooOO0o = i2;
                z5 = z3;
            }
            z = z5;
            if (!z4 || !z6) {
                oooO00o3 = this.OooO00o;
                sb = new StringBuilder();
                sb.append("--> END ");
                strOooO0oO = qxVarRequest.OooO0oO();
            } else if (OooO00o(qxVarRequest.OooO0o0())) {
                oooO00o3 = this.OooO00o;
                sb = new StringBuilder();
                sb.append("--> END ");
                sb.append(qxVarRequest.OooO0oO());
                strOooO0oO = " (encoded body omitted)";
            } else {
                j00 j00Var = new j00();
                rxVarOooO00o.writeTo(j00Var);
                Charset charsetOooO0O0 = OooO0OO;
                mx mxVarContentType = rxVarOooO00o.contentType();
                if (mxVarContentType != null) {
                    charsetOooO0O0 = mxVarContentType.OooO0O0(charsetOooO0O0);
                }
                this.OooO00o.OooO00o("");
                if (OooO0OO(j00Var)) {
                    this.OooO00o.OooO00o(j00Var.OooOoOO(charsetOooO0O0));
                    oooO00o3 = this.OooO00o;
                    sb = new StringBuilder();
                    sb.append("--> END ");
                    sb.append(qxVarRequest.OooO0oO());
                    sb.append(" (");
                    sb.append(rxVarOooO00o.contentLength());
                    sb.append("-byte body)");
                } else {
                    oooO00o3 = this.OooO00o;
                    sb = new StringBuilder();
                    sb.append("--> END ");
                    sb.append(qxVarRequest.OooO0oO());
                    sb.append(" (binary ");
                    sb.append(rxVarOooO00o.contentLength());
                    sb.append("-byte body omitted)");
                }
                oooO00o3.OooO00o(sb.toString());
            }
            sb.append(strOooO0oO);
            oooO00o3.OooO00o(sb.toString());
        } else {
            z = z5;
        }
        long jNanoTime = System.nanoTime();
        try {
            sx sxVarOooO0o0 = oooO00o.OooO0o0(qxVarRequest);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            tx txVarOooOO0 = sxVarOooO0o0.OooOO0();
            long jContentLength = txVarOooOO0.contentLength();
            String str3 = jContentLength != -1 ? jContentLength + "-byte" : "unknown-length";
            OooO00o oooO00o4 = this.OooO00o;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("<-- ");
            sb2.append(sxVarOooO0o0.OoooooO());
            sb2.append(' ');
            sb2.append(sxVarOooO0o0.o00ooo());
            sb2.append(' ');
            sb2.append(sxVarOooO0o0.o0OOO0o().OooOO0O());
            sb2.append(" (");
            sb2.append(millis);
            sb2.append("ms");
            sb2.append(z ? "" : ", " + str3 + " body");
            sb2.append(')');
            oooO00o4.OooO00o(sb2.toString());
            if (z) {
                jx jxVarO00Oo0 = sxVarOooO0o0.o00Oo0();
                int iOooOO0o2 = jxVarO00Oo0.OooOO0o();
                for (int i3 = 0; i3 < iOooOO0o2; i3++) {
                    this.OooO00o.OooO00o(jxVarO00Oo0.OooO0oO(i3) + ": " + jxVarO00Oo0.OooOOO(i3));
                }
                if (z4 && uy.OooO0OO(sxVarOooO0o0)) {
                    if (OooO00o(sxVarOooO0o0.o00Oo0())) {
                        oooO00o2 = this.OooO00o;
                        str = "<-- END HTTP (encoded body omitted)";
                    } else {
                        l00 l00VarSource = txVarOooOO0.source();
                        l00VarSource.request(Long.MAX_VALUE);
                        j00 j00VarOooO00o = l00VarSource.OooO00o();
                        Charset charsetOooO0O02 = OooO0OO;
                        mx mxVarContentType2 = txVarOooOO0.contentType();
                        if (mxVarContentType2 != null) {
                            try {
                                charsetOooO0O02 = mxVarContentType2.OooO0O0(charsetOooO0O02);
                            } catch (UnsupportedCharsetException unused) {
                                this.OooO00o.OooO00o("");
                                this.OooO00o.OooO00o("Couldn't decode the response body; charset is likely malformed.");
                                this.OooO00o.OooO00o("<-- END HTTP");
                                return sxVarOooO0o0;
                            }
                        }
                        if (!OooO0OO(j00VarOooO00o)) {
                            this.OooO00o.OooO00o("");
                            this.OooO00o.OooO00o("<-- END HTTP (binary " + j00VarOooO00o.o00000O0() + "-byte body omitted)");
                            return sxVarOooO0o0;
                        }
                        if (jContentLength != 0) {
                            this.OooO00o.OooO00o("");
                            this.OooO00o.OooO00o(j00VarOooO00o.clone().OooOoOO(charsetOooO0O02));
                        }
                        oooO00o2 = this.OooO00o;
                        str = "<-- END HTTP (" + j00VarOooO00o.o00000O0() + "-byte body)";
                    }
                    oooO00o2.OooO00o(str);
                } else {
                    this.OooO00o.OooO00o("<-- END HTTP");
                }
            }
            return sxVarOooO0o0;
        } catch (Exception e) {
            this.OooO00o.OooO00o("<-- HTTP FAILED: " + e);
            throw e;
        }
    }
}
