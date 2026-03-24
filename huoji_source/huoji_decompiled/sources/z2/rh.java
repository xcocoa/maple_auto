package z2;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import z2.mc;

/* JADX INFO: loaded from: classes2.dex */
public class rh {
    public static final int OooOO0 = 4;
    private static final int OooOO0O = 100;
    private static final int OooOO0o = 102;
    private static final String OooOOO0 = "AdManager";
    private View OooO;
    private boolean OooO00o;
    public int OooO0O0;
    private Activity OooO0o;
    private nh OooO0o0;
    private int OooO0OO = 0;
    private int OooO0Oo = 0;
    private int OooO0oO = 100;
    private Handler OooO0oo = new Handler();

    public class OooO00o implements mc.OooO00o {
        public OooO00o() {
        }

        @Override // z2.mc.OooO00o
        public void OooO00o(Object obj) {
            mc.OooO0oo().OooO0oO();
            qh.OooO0O0().OooO0o0(rh.this.OooO0o);
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rh rhVar = rh.this;
            rhVar.OooOOo(rhVar.OooO0o);
        }
    }

    public class OooO0OO implements mc.OooO00o {
        public final /* synthetic */ Context OooO00o;

        public OooO0OO(Context context) {
            this.OooO00o = context;
        }

        @Override // z2.mc.OooO00o
        public void OooO00o(Object obj) {
            mc.OooO0oo().OooO0oO();
            qh.OooO0O0().OooO0o0(this.OooO00o);
        }
    }

    public rh(Activity activity, View view) {
        this.OooO0o = activity;
        this.OooO = view;
    }

    private void OooO(int i) {
        String str;
        nh nhVar;
        Log.d("XJL_AD_TAG", "loadBackgroundAd index：" + i);
        boolean zOooO0OO = qh.OooO0O0().OooO0OO(i);
        String str2 = "加载后台广告 handleMessage --> isDisplay=" + zOooO0OO;
        str = "";
        if (zOooO0OO) {
            str = qh.OooO0O0().OooO0O0 != null ? qh.OooO0O0().OooO0O0.ImageUrl : "";
            String str3 = "加载后台广告 handleMessage --> imageUrl=" + str;
            nhVar = this.OooO0o0;
            if (nhVar == null) {
                return;
            }
        } else {
            nhVar = this.OooO0o0;
            if (nhVar == null) {
                return;
            }
        }
        nhVar.OooO0O0(str);
    }

    private void OooO0OO() {
        if (this.OooO0OO == 3) {
            this.OooO0oo.postDelayed(new OooO0O0(), 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooO0oO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooO0oo() {
        this.OooO0o0.onAdClose();
    }

    private void OooOO0o(Context context) {
        mc.OooO0oo().OooOOO0(new OooO0OO(context)).OooO(context, 1, 3, qh.OooO0O0().OooO0O0.Id);
    }

    private void OooOOOo(int i) {
        this.OooO0oO = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOo(Activity activity) {
        ei.OooO0O0(activity);
        if (activity.isFinishing()) {
            return;
        }
        activity.finish();
    }

    public void OooO0Oo() {
        if (this.OooO0Oo < 4) {
            OooOOO0();
        } else {
            OooOOo(this.OooO0o);
        }
    }

    public boolean OooO0o() {
        return this.OooO00o;
    }

    public void OooO0o0() {
        Log.d(OooOOO0, "displayAd");
        nh nhVar = this.OooO0o0;
        if (nhVar != null) {
            nhVar.OooO0Oo(this.OooO0oO);
        }
        this.OooO0oo.postDelayed(new Runnable() { // from class: z2.ph
            @Override // java.lang.Runnable
            public final void run() {
                this.OoooOoO.OooO0oo();
            }
        }, 300L);
    }

    public void OooOO0(int i, nh nhVar) {
        this.OooO0O0 = i;
        String str = "loadILFYAd:" + i;
        OooOOOo(100);
        mh mhVarOooO00o = qh.OooO0O0().OooO00o(this.OooO0O0, oh.OooO0o0);
        String str2 = "loadILFYAd --> ilfyAd.isDisplay =" + mhVarOooO00o.OooO00o;
        this.OooO0o0 = nhVar;
        if (mhVarOooO00o.OooO00o) {
            nhVar.OooO0OO();
        } else {
            OooOOo0();
        }
    }

    public void OooOO0O() {
        this.OooO.setVisibility(8);
        int i = this.OooO0oO;
        if (i != 100 && i == 102) {
            mc.OooO0oo().OooOOO0(new OooO00o()).OooO(this.OooO0o, 1, 3, qh.OooO0O0().OooO0O0.Id);
        }
    }

    public void OooOOO() {
        this.OooO = null;
        this.OooO0o = null;
        this.OooO0o0 = null;
        this.OooO0oo.removeCallbacksAndMessages(null);
        this.OooO00o = false;
    }

    public void OooOOO0() {
        if (this.OooO00o) {
            return;
        }
        this.OooO00o = true;
        OooOO0o(this.OooO0o);
    }

    public void OooOOOO() {
        if (this.OooO00o) {
            OooOOo(this.OooO0o);
        }
    }

    public void OooOOo0() {
        OooOOOo(102);
        OooO(this.OooO0O0);
    }
}
