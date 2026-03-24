package z2;

import android.content.Context;
import com.android.volley.VolleyError;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class od extends pd {
    private nd OoooOoO;
    private md OoooOoo;
    public String Ooooo00;

    public od(nd ndVar) {
        this.OoooOoO = ndVar;
    }

    public od(nd ndVar, md mdVar) {
        this.OoooOoO = ndVar;
        this.OoooOoo = mdVar;
    }

    public void OooO(Object obj, String str) {
        OooO0oO(null, obj, str);
    }

    @Override // z2.oo000o.OooO00o
    public void OooO0O0(VolleyError volleyError) {
        nd ndVar = this.OoooOoO;
        if (ndVar != null) {
            ndVar.OooO0o0(volleyError);
        }
    }

    public void OooO0oO(Context context, Object obj, String str) {
        this.Ooooo00 = str;
        super.OooO0o0(context, obj, str, this.OoooOoo);
    }

    public void OooO0oo(Context context, String str) {
        OooO0oO(context, this, str);
    }

    public void OooOO0(Context context, Object obj, String str, Map<String, String> map) {
        this.Ooooo00 = str;
        String str2 = "url:" + str;
        super.OooO0o(context, obj, str, map, this.OoooOoo);
    }

    public void OooOO0O(Context context, String str, Map<String, String> map) {
        OooOO0(context, this, str, map);
    }

    public void OooOO0o(Object obj, String str, Map<String, String> map) {
        OooOO0(null, obj, str, map);
    }

    public void OooOOO(Object obj) {
        qd.OooO0OO().OooO0o(obj);
    }

    public void OooOOO0() {
        OooOOO(this);
    }

    @Override // z2.oo000o.OooO0O0
    public void onResponse(Object obj) {
        nd ndVar = this.OoooOoO;
        if (ndVar != null) {
            ndVar.OooO00o(obj);
        }
    }
}
