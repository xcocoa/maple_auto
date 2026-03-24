package z2;

import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class o0000O extends Request<String> {
    private final oo000o.OooO0O0<String> o00o0O;

    public o0000O(int i, String str, oo000o.OooO0O0<String> oooO0O0, oo000o.OooO00o oooO00o) {
        super(i, str, oooO00o);
        this.o00o0O = oooO0O0;
    }

    public o0000O(String str, oo000o.OooO0O0<String> oooO0O0, oo000o.OooO00o oooO00o) {
        this(0, str, oooO0O0, oooO00o);
    }

    @Override // com.android.volley.Request
    /* JADX INFO: renamed from: Oooo, reason: merged with bridge method [inline-methods] */
    public void OooO0o(String str) {
        this.o00o0O.onResponse(str);
    }

    @Override // com.android.volley.Request
    public oo000o<String> Oooo00o(o00Oo0 o00oo0) {
        String str;
        try {
            str = new String(o00oo0.OooO0O0, o00000.OooO0O0(o00oo0.OooO0OO));
        } catch (UnsupportedEncodingException unused) {
            str = new String(o00oo0.OooO0O0);
        }
        return oo000o.OooO0OO(str, o00000.OooO00o(o00oo0));
    }
}
