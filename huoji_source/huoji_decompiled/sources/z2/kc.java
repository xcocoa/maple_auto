package z2;

import android.content.Context;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;

/* JADX INFO: loaded from: classes.dex */
public class kc implements ic, ld {
    public static final int Ooooo00 = 2;
    public static final int Ooooo0o = 3;
    private static kc OooooO0;
    private nc OoooOoO;
    private OooO00o OoooOoo;

    public interface OooO00o {
        void OooO00o(VersionUpdateInfo versionUpdateInfo);

        void OooO0O0(VersionUpdateInfo versionUpdateInfo);

        void OooO0OO(VersionUpdateInfo versionUpdateInfo);
    }

    private kc() {
    }

    public static kc OooOo00() {
        if (OooooO0 == null) {
            OooooO0 = new kc();
        }
        return OooooO0;
    }

    @Override // z2.ld
    public void OooO00o(VersionUpdateInfo versionUpdateInfo) {
        OooO00o oooO00o = this.OoooOoo;
        if (oooO00o != null) {
            oooO00o.OooO00o(versionUpdateInfo);
        }
    }

    @Override // z2.ld
    public void OooO0O0(VersionUpdateInfo versionUpdateInfo) {
        OooO00o oooO00o = this.OoooOoo;
        if (oooO00o != null) {
            oooO00o.OooO0O0(versionUpdateInfo);
        }
    }

    @Override // z2.ld
    public void OooO0o(String str) {
        this.OoooOoo.OooO0OO(null);
    }

    @Override // z2.ld
    public void OooOO0(VersionUpdateInfo versionUpdateInfo) {
        OooO00o oooO00o = this.OoooOoo;
        if (oooO00o != null) {
            oooO00o.OooO0OO(versionUpdateInfo);
        }
    }

    @Override // z2.ld
    public void OooOOO0() {
        this.OoooOoo.OooO0OO(null);
    }

    public void OooOo(boolean z, Context context, UpdateRequestInfo updateRequestInfo) {
        nc ncVar = new nc(context, this, z, updateRequestInfo);
        this.OoooOoO = ncVar;
        ncVar.OooO0o(context);
    }

    public void OooOo0() {
        nc ncVar = this.OoooOoO;
        if (ncVar != null) {
            ncVar.OooO0OO();
        }
    }

    public kc OooOo0O(OooO00o oooO00o) {
        this.OoooOoo = oooO00o;
        return this;
    }

    public void OooOo0o(boolean z, Context context) {
        nc ncVar = new nc(context, this, z);
        this.OoooOoO = ncVar;
        ncVar.OooO0o(context);
    }
}
