package z2;

import android.text.TextUtils;
import net.grandcentrix.tray.provider.TrayContract;

/* JADX INFO: loaded from: classes2.dex */
public class fc0 {
    private String OooO00o;
    private String OooO0O0;
    private boolean OooO0OO = true;
    private boolean OooO0Oo = false;
    private String OooO0o0 = "";

    public void OooO(String str) {
        if ("text".equalsIgnoreCase(this.OooO0O0)) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            str = "'" + str + "'";
        }
        this.OooO0o0 = str;
    }

    public String OooO00o() {
        return this.OooO00o;
    }

    public String OooO0O0() {
        return this.OooO0O0;
    }

    public String OooO0OO() {
        return this.OooO0o0;
    }

    public boolean OooO0Oo() {
        return TrayContract.Preferences.Columns.ID.equalsIgnoreCase(this.OooO00o) || "id".equalsIgnoreCase(this.OooO00o);
    }

    public boolean OooO0o() {
        return this.OooO0Oo;
    }

    public boolean OooO0o0() {
        return this.OooO0OO;
    }

    public void OooO0oO(String str) {
        this.OooO00o = str;
    }

    public void OooO0oo(String str) {
        this.OooO0O0 = str;
    }

    public void OooOO0(boolean z) {
        this.OooO0OO = z;
    }

    public void OooOO0O(boolean z) {
        this.OooO0Oo = z;
    }
}
