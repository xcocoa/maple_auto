package z2;

import android.text.TextUtils;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class nb {
    private String OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private int OooO0Oo;
    private boolean OooO0o0;

    public void OooO(String str) {
        this.OooO0OO = str;
    }

    public int OooO00o() {
        return this.OooO0Oo;
    }

    public String OooO0O0() {
        return this.OooO0O0;
    }

    public String OooO0OO() {
        return this.OooO00o;
    }

    public String OooO0Oo() {
        return this.OooO0OO;
    }

    public void OooO0o(int i) {
        this.OooO0Oo = i;
    }

    public boolean OooO0o0() {
        return this.OooO0o0;
    }

    public void OooO0oO(String str) {
        this.OooO0O0 = str;
    }

    public void OooO0oo(String str) {
        this.OooO00o = str;
        if (TextUtils.isEmpty(this.OooO0O0)) {
            this.OooO0O0 = str.substring(str.lastIndexOf("/") + 1);
        }
    }

    public void OooOO0(boolean z) {
        this.OooO0o0 = z;
    }

    public String toString() {
        return "FolderBean{dirPath='" + this.OooO00o + "', dirName='" + this.OooO0O0 + "', firstImgPath='" + this.OooO0OO + "', dirCount=" + this.OooO0Oo + ", isSelect=" + this.OooO0o0 + MessageFormatter.DELIM_STOP;
    }
}
