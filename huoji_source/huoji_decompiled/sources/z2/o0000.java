package z2;

import com.android.volley.ParseError;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class o0000 extends o0000oo<JSONArray> {
    public o0000(int i, String str, JSONArray jSONArray, oo000o.OooO0O0<JSONArray> oooO0O0, oo000o.OooO00o oooO00o) {
        super(i, str, jSONArray == null ? null : jSONArray.toString(), oooO0O0, oooO00o);
    }

    public o0000(String str, oo000o.OooO0O0<JSONArray> oooO0O0, oo000o.OooO00o oooO00o) {
        super(0, str, null, oooO0O0, oooO00o);
    }

    @Override // z2.o0000oo, com.android.volley.Request
    public oo000o<JSONArray> Oooo00o(o00Oo0 o00oo0) {
        ParseError parseError;
        try {
            return oo000o.OooO0OO(new JSONArray(new String(o00oo0.OooO0O0, o00000.OooO0OO(o00oo0.OooO0OO, "utf-8"))), o00000.OooO00o(o00oo0));
        } catch (UnsupportedEncodingException e) {
            parseError = new ParseError(e);
            return oo000o.OooO00o(parseError);
        } catch (JSONException e2) {
            parseError = new ParseError(e2);
            return oo000o.OooO00o(parseError);
        }
    }
}
