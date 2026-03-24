package z2;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class wd extends vd implements td {
    private sd OooO0O0;

    public wd(sd sdVar) {
        this.OooO0O0 = sdVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        sd sdVar = this.OooO0O0;
        if (sdVar != null) {
            sdVar.OooO00o(obj);
        }
    }

    @Override // z2.td
    public void OooO0O0(Context context, String str, Map<String, String> map) {
        this.OooO00o.OooOO0(context, getClass().getCanonicalName(), str, map);
    }

    @Override // z2.td
    public void OooO0OO() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }

    @Override // z2.vd
    public void OooO0o(String str) {
        sd sdVar = this.OooO0O0;
        if (sdVar != null) {
            sdVar.OooO0O0(str);
        }
    }
}
