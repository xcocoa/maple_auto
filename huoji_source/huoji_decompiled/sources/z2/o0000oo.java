package z2;

import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public abstract class o0000oo<T> extends Request<T> {
    private static final String o00oO0o = String.format("application/json; charset=%s", "utf-8");
    public static final String oo000o = "utf-8";
    private final oo000o.OooO0O0<T> o00o0O;
    private final String o00ooo;

    public o0000oo(int i, String str, String str2, oo000o.OooO0O0<T> oooO0O0, oo000o.OooO00o oooO00o) {
        super(i, str, oooO00o);
        this.o00o0O = oooO0O0;
        this.o00ooo = str2;
    }

    public o0000oo(String str, String str2, oo000o.OooO0O0<T> oooO0O0, oo000o.OooO00o oooO00o) {
        this(-1, str, str2, oooO0O0, oooO00o);
    }

    @Override // com.android.volley.Request
    public void OooO0o(T t) {
        this.o00o0O.onResponse(t);
    }

    @Override // com.android.volley.Request
    public byte[] OooOO0() {
        try {
            String str = this.o00ooo;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            o0OOO0o.OooO0oO("Unsupported Encoding while trying to get the bytes of %s using %s", this.o00ooo, "utf-8");
            return null;
        }
    }

    @Override // com.android.volley.Request
    public String OooOO0O() {
        return o00oO0o;
    }

    @Override // com.android.volley.Request
    public byte[] OooOOoo() {
        return OooOO0();
    }

    @Override // com.android.volley.Request
    public String OooOo00() {
        return OooOO0O();
    }

    @Override // com.android.volley.Request
    public abstract oo000o<T> Oooo00o(o00Oo0 o00oo0);
}
