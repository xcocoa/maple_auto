package z2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.http.bean.response.BackgroundSetAdInfo;
import com.cyjh.http.bean.response.FlySettingInfo;
import com.elfin.ad.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class qh {
    private static qh OooO0o = null;
    private static final int OooO0oO = 32;
    public BackgroundSetAdInfo OooO0O0;
    private FlySettingInfo OooO0Oo;
    public int OooO0o0;
    public List<FlySettingInfo> OooO0OO = new ArrayList();
    public List<BackgroundSetAdInfo> OooO00o = new ArrayList();

    private qh() {
    }

    public static qh OooO0O0() {
        if (OooO0o == null) {
            synchronized (qh.class) {
                if (OooO0o == null) {
                    OooO0o = new qh();
                }
            }
        }
        return OooO0o;
    }

    public mh OooO00o(int i, String str) {
        mh mhVar = new mh();
        List<FlySettingInfo> list = this.OooO0OO;
        if (list == null || list.size() == 0) {
            mhVar.OooO00o = true;
            mhVar.OooO0O0 = str;
            return mhVar;
        }
        Iterator<FlySettingInfo> it = this.OooO0OO.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FlySettingInfo next = it.next();
            if (i == next.AdType) {
                this.OooO0Oo = next;
                break;
            }
        }
        int iNextInt = new Random().nextInt(100) + 1;
        Log.d("XJL_AD_TAG", "loadILFYAd --> ilfyAd.randomNumber =" + iNextInt);
        FlySettingInfo flySettingInfo = this.OooO0Oo;
        mhVar.OooO00o = flySettingInfo.Active == 1 && ((double) iNextInt) < flySettingInfo.Probability;
        Log.d("XJL_AD_TAG", "loadILFYAd --> ilfyAd.isDisplay =" + mhVar.OooO00o);
        String str2 = this.OooO0Oo.FlyKey;
        if (!TextUtils.isEmpty(str2) || str2.length() == 32) {
            str = str2;
        }
        mhVar.OooO0O0 = str;
        return mhVar;
    }

    public boolean OooO0OO(int i) {
        String str = "加载后台广告 isDisplayBackgroundSetAd 1 =" + i;
        List<BackgroundSetAdInfo> list = this.OooO00o;
        if (list != null && list.size() != 0) {
            String str2 = "加载后台广告 isDisplayBackgroundSetAd 2 =" + i;
            for (BackgroundSetAdInfo backgroundSetAdInfo : this.OooO00o) {
                if (backgroundSetAdInfo.AdType == i) {
                    this.OooO0O0 = backgroundSetAdInfo;
                    int iNextInt = new Random().nextInt(100) + 1;
                    String str3 = "加载后台广告 isDisplayBackgroundSetAd 2 randomNumber =" + iNextInt;
                    String str4 = "加载后台广告 isDisplayBackgroundSetAd 2 mBackgroundSetAdInfo.Probability =" + this.OooO0O0.Probability;
                    if (iNextInt < this.OooO0O0.Probability) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean OooO0Oo() {
        Log.d("XJL_AD_TAG", "url isFreeAd:" + this.OooO0o0);
        return this.OooO0o0 == 1;
    }

    public void OooO0o0(Context context) {
        BackgroundSetAdInfo backgroundSetAdInfo = this.OooO0O0;
        String str = backgroundSetAdInfo.LinkUrl;
        int i = backgroundSetAdInfo.OpenMethod;
        String str2 = backgroundSetAdInfo.Title;
        if (i != 3) {
            ei.OooO0OO(context, str2, str);
            return;
        }
        if (TextUtils.isEmpty(str) || !str.startsWith("http")) {
            c5.OooO0OO(ih.OooO0Oo().OooO0OO(), ih.OooO0Oo().OooO0OO().getResources().getString(R.string.link_url_error));
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        context.startActivity(intent);
    }
}
