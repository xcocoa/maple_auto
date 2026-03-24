package z2;

import android.content.Context;
import java.util.Map;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public abstract class pd implements oo000o.OooO0O0<Object>, oo000o.OooO00o {
    public rd OooO0OO(String str, Map<String, String> map, md mdVar) {
        return new rd(str, map, this, this, mdVar);
    }

    public rd OooO0Oo(String str, md mdVar) {
        return new rd(str, this, this, mdVar);
    }

    public void OooO0o(Context context, Object obj, String str, Map<String, String> map, md mdVar) {
        qd.OooO0OO().OooO00o(context, obj, OooO0OO(str, map, mdVar));
    }

    public void OooO0o0(Context context, Object obj, String str, md mdVar) {
        qd.OooO0OO().OooO00o(context, obj, OooO0Oo(str, mdVar));
    }
}
