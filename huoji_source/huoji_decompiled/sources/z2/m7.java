package z2;

import android.text.TextUtils;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.http.bean.response.BackgroundSetAdInfo;
import com.cyjh.http.bean.response.BuyRegCodeConfigInfo;
import com.cyjh.http.bean.response.FlySettingInfo;
import com.cyjh.http.bean.response.RecommendSettingInfo;
import com.cyjh.http.bean.response.ScriptStartRunInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class m7 {
    private static m7 OooOOOO;
    public List<BackgroundSetAdInfo> OooO;
    public AppContext OooO00o;
    public String OooO0O0;
    public int OooO0OO;
    public int OooO0Oo;
    public List<BuyRegCodeConfigInfo> OooO0o;
    public String OooO0o0;
    public List<FlySettingInfo> OooO0oO;
    public List<RecommendSettingInfo> OooO0oo;
    public ScriptStartRunInfo OooOO0;
    private String OooOO0O;
    private String OooOO0o;
    private String OooOOO;
    public int OooOOO0;

    private m7() {
    }

    private void OooO00o() {
        this.OooO0oO = null;
        this.OooO = null;
        this.OooO0oo = null;
    }

    public static m7 OooO0o0() {
        if (OooOOOO == null) {
            synchronized (m7.class) {
                if (OooOOOO == null) {
                    OooOOOO = new m7();
                }
            }
        }
        return OooOOOO;
    }

    public void OooO(String str) {
        this.OooOOO = str;
    }

    public void OooO0O0() {
        OooO00o();
        this.OooO00o = null;
        OooOOOO = null;
    }

    public void OooO0OO() {
        this.OooO0o = new ArrayList();
        this.OooO0oO = new ArrayList();
        this.OooO0oo = new ArrayList();
        this.OooO = new ArrayList();
    }

    public String OooO0Oo() {
        return this.OooOOO;
    }

    public String OooO0o() {
        return TextUtils.isEmpty(this.OooOO0O) ? "" : this.OooOO0O;
    }

    public String OooO0oO() {
        return TextUtils.isEmpty(this.OooOO0o) ? "" : this.OooOO0o;
    }

    public void OooO0oo(AppContext appContext) {
        this.OooO00o = appContext;
    }

    public void OooOO0(String str) {
        this.OooOO0O = str;
    }

    public void OooOO0O(String str) {
        this.OooOO0o = str;
    }
}
