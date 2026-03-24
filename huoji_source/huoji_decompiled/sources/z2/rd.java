package z2;

import com.android.volley.AuthFailureError;
import com.android.volley.ParseError;
import com.android.volley.Request;
import java.util.Map;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class rd extends Request<Object> {
    private static final int o00oO0o = 50000;
    private md o00o0O;
    private oo000o.OooO0O0<Object> o00ooo;
    private Map<String, String> oo000o;

    public rd(int i, String str, Map<String, String> map, oo000o.OooO0O0<Object> oooO0O0, oo000o.OooO00o oooO00o) {
        super(i, str, oooO00o);
        this.o00ooo = oooO0O0;
        this.oo000o = map;
        Oooo0OO(new Oooo0(50000, 0, 1.0f));
        Oooo0o(false);
    }

    public rd(String str, Map<String, String> map, oo000o.OooO0O0<Object> oooO0O0, oo000o.OooO00o oooO00o, md mdVar) {
        this(1, str, map, oooO0O0, oooO00o);
        this.o00o0O = mdVar;
    }

    public rd(String str, oo000o.OooO0O0<Object> oooO0O0, oo000o.OooO00o oooO00o, md mdVar) {
        this(0, str, (Map<String, String>) null, oooO0O0, oooO00o);
        this.o00o0O = mdVar;
    }

    @Override // com.android.volley.Request
    public void OooO0o(Object obj) {
        oo000o.OooO0O0<Object> oooO0O0 = this.o00ooo;
        if (oooO0O0 != null) {
            oooO0O0.onResponse(obj);
        }
    }

    @Override // com.android.volley.Request
    public Map<String, String> OooOOo0() throws AuthFailureError {
        return this.oo000o;
    }

    @Override // com.android.volley.Request
    public Request.Priority OooOo0o() {
        return Request.Priority.HIGH;
    }

    @Override // com.android.volley.Request
    public oo000o<Object> Oooo00o(o00Oo0 o00oo0) {
        try {
            String str = new String(o00oo0.OooO0O0, "UTF-8");
            md mdVar = this.o00o0O;
            if (mdVar != null) {
                return oo000o.OooO0OO(mdVar.OooO0Oo(str), o00000.OooO00o(o00oo0));
            }
            return null;
        } catch (Exception e) {
            return oo000o.OooO00o(new ParseError(e));
        }
    }
}
