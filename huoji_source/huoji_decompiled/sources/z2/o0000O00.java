package z2;

import com.android.volley.ParseError;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class o0000O00 extends o0000oo<JSONObject> {
    public o0000O00(int i, String str, JSONObject jSONObject, oo000o.OooO0O0<JSONObject> oooO0O0, oo000o.OooO00o oooO00o) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), oooO0O0, oooO00o);
    }

    public o0000O00(String str, JSONObject jSONObject, oo000o.OooO0O0<JSONObject> oooO0O0, oo000o.OooO00o oooO00o) {
        this(jSONObject == null ? 0 : 1, str, jSONObject, oooO0O0, oooO00o);
    }

    @Override // z2.o0000oo, com.android.volley.Request
    public oo000o<JSONObject> Oooo00o(o00Oo0 o00oo0) {
        ParseError parseError;
        try {
            return oo000o.OooO0OO(new JSONObject(new String(o00oo0.OooO0O0, o00000.OooO0OO(o00oo0.OooO0OO, "utf-8"))), o00000.OooO00o(o00oo0));
        } catch (UnsupportedEncodingException e) {
            parseError = new ParseError(e);
            return oo000o.OooO00o(parseError);
        } catch (JSONException e2) {
            parseError = new ParseError(e2);
            return oo000o.OooO00o(parseError);
        }
    }
}
