package z2;

import android.app.Application;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.RegCodeStatusInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import z2.kc;
import z2.na;

/* JADX INFO: loaded from: classes.dex */
public class na extends AndroidViewModel implements hd {
    private static final String Ooooooo = "z2.na";
    public static final int o00O0O = 1008;
    public static final int o0OoOo0 = 1006;
    public static final int ooOO = 1007;
    private ArrayList<NotifyMsgBean> OoooOoO;
    private ArrayList<NotifyMsgBean> OoooOoo;
    private List<String> Ooooo00;
    private ScheduledExecutorService Ooooo0o;
    private ScheduledFuture<?> OooooO0;
    private wc OooooOO;
    private MutableLiveData<VersionUpdateInfo> OooooOo;
    private MutableLiveData<Integer> Oooooo;
    private MutableLiveData<NotifyMsgBean> Oooooo0;
    private MutableLiveData<Boolean> OoooooO;

    public class OooO implements Runnable {
        public OooO() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String strOooOO0 = ae.OooOO0(k3.oo000o + j3.OooO0o(), AppContext.OooO00o());
            String strOooOO02 = ae.OooOO0(k3.o00oO0o + j3.OooO0o(), AppContext.OooO00o());
            String str = "oldFileRegCode:" + strOooOO0;
            String str2 = "json:" + strOooOO02;
            if (TextUtils.isEmpty(strOooOO02)) {
                q7.OooO0o0().OooOOO0(strOooOO0);
                if (TextUtils.isEmpty(strOooOO0)) {
                    return;
                }
            } else {
                RegCodeStatusInfo regCodeStatusInfo = (RegCodeStatusInfo) n4.OooO0o0(strOooOO02, RegCodeStatusInfo.class);
                if (regCodeStatusInfo != null) {
                    q7.OooO0o0().OooOOO0(regCodeStatusInfo.regCode);
                    if (TextUtils.isEmpty(regCodeStatusInfo.regCode) || regCodeStatusInfo.status != 1) {
                        return;
                    }
                } else if (TextUtils.isEmpty(q7.OooO0o0().OooO0o())) {
                    return;
                }
            }
            na.this.Oooooo.postValue(1006);
        }
    }

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zOooOoo = ae.OooOoo(k3.Oooo0O0, na.this.getApplication());
            String strOooo0 = ae.Oooo0(System.currentTimeMillis() / 1000, ae.OooO0O0);
            if (!zOooOoo) {
                mc.OooO0oo().OooO(na.this.getApplication(), 5, 0, 0L);
                ae.Oooo0OO(k3.Oooo0O0, na.this.getApplication(), strOooo0);
            }
            na.this.Oooo0oO((ae.Oooo0O0(strOooo0) - System.currentTimeMillis()) / 1000);
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ae.Oooo0OO(k3.Oooo0O0, na.this.getApplication(), ae.Oooo0(System.currentTimeMillis() / 1000, ae.OooO0O0));
                na.this.Oooo0oo();
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                Log.e("zzz", "ElfinFreeActivity--" + e.getMessage());
            }
        }
    }

    public class OooO0OO implements kc.OooO00o {
        public OooO0OO() {
        }

        @Override // z2.kc.OooO00o
        public void OooO00o(VersionUpdateInfo versionUpdateInfo) {
            String unused = na.Ooooooo;
            String str = "onConnectStudioSocket IS_SERVICE_START:" + dh.OooOOO0();
            if (dh.OooOOO0()) {
                return;
            }
            AppContext.OooO00o().OoooOoO = versionUpdateInfo.StudioProjectKey;
            a4.Oooo00o(AppContext.OooO00o(), versionUpdateInfo.DeviceName);
            na.this.Oooooo.postValue(1007);
        }

        @Override // z2.kc.OooO00o
        public void OooO0O0(VersionUpdateInfo versionUpdateInfo) {
            int i = versionUpdateInfo.InstanceDataUploadInterval;
            if (i != 0) {
                g6.o0OO00O = i;
            }
        }

        @Override // z2.kc.OooO00o
        public void OooO0OO(VersionUpdateInfo versionUpdateInfo) {
            if (versionUpdateInfo == null) {
                na.this.OooooOo.postValue(null);
            } else {
                na.this.OooooOo.postValue(versionUpdateInfo);
            }
        }
    }

    public class OooO0o implements r3 {
        public OooO0o() {
        }

        @Override // z2.r3
        public void OooO00o(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (arrayList != null) {
                na.this.Oooo00o(arrayList);
            }
        }

        @Override // z2.r3
        public void error(String str) {
        }
    }

    public class OooOO0 implements r3<Boolean> {
        public OooOO0() {
        }

        @Override // z2.r3
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(Boolean bool) {
            na.this.OoooooO.postValue(Boolean.TRUE);
        }

        @Override // z2.r3
        public void error(String str) {
            na.this.OoooooO.postValue(Boolean.FALSE);
        }
    }

    public class OooOO0O implements gh {
        public OooOO0O() {
        }

        public static /* synthetic */ void OooO0O0() {
            dh.OooOO0O();
            l10.OooO0o().OooOOOO(new fh(10003, "工作室解绑！"));
        }

        @Override // z2.gh
        public void OooO00o(eh ehVar) {
            l10 l10VarOooO0o;
            eh ehVar2;
            l10 l10VarOooO0o2;
            Object ehVar3;
            String unused = na.Ooooooo;
            String str = "setElfStudioCallback --> messageEvent" + ehVar.OooO0oO();
            int iOooO0oO = ehVar.OooO0oO();
            if (iOooO0oO == -1) {
                String unused2 = na.Ooooooo;
                na.this.Oooooo.postValue(1007);
                return;
            }
            if (iOooO0oO == 10002) {
                String unused3 = na.Ooooooo;
                if (ehVar.OooO00o() == 0) {
                    dh.OooOOOo(AppContext.OooO00o());
                    return;
                }
                return;
            }
            if (iOooO0oO == 10004) {
                String unused4 = na.Ooooooo;
                if (ehVar.OooO0oo()) {
                    dh.OooOO0O();
                    return;
                }
                return;
            }
            if (iOooO0oO == 10101) {
                String unused5 = na.Ooooooo;
                l10VarOooO0o = l10.OooO0o();
                ehVar2 = new eh(10101);
            } else {
                if (iOooO0oO != 10103) {
                    if (iOooO0oO == 10105) {
                        String unused6 = na.Ooooooo;
                        c7.OooO0oo().OooO(AppContext.OooO00o(), b7.OooO0Oo().OooO0oO().getId(), c7.OooO0o).OooO0oO(ehVar.OooO0Oo());
                        return;
                    }
                    if (iOooO0oO == 10107) {
                        String unused7 = na.Ooooooo;
                        l10VarOooO0o2 = l10.OooO0o();
                        ehVar3 = new eh(10107, ehVar.OooO0o0());
                    } else {
                        if (iOooO0oO == 10109) {
                            r7.OooO0o().OooO0oO(7);
                            return;
                        }
                        if (iOooO0oO == 10111) {
                            String unused8 = na.Ooooooo;
                            AppContext.OooO00o().OoooOoO = null;
                            dh.OooO0oo(0, "解绑工作室项目成功！");
                            new Handler().postDelayed(new Runnable() { // from class: z2.la
                                @Override // java.lang.Runnable
                                public final void run() {
                                    na.OooOO0O.OooO0O0();
                                }
                            }, com.anythink.expressad.video.module.a.a.m.ag);
                            return;
                        }
                        if (iOooO0oO != 10113) {
                            return;
                        }
                        String strOooO0O0 = ehVar.OooO0O0();
                        if (a4.Oooo00o(AppContext.OooO00o(), strOooO0O0)) {
                            dh.OooO00o(0, "修改成功！");
                        } else {
                            dh.OooO00o(-1, "修改失败！");
                        }
                        l10VarOooO0o2 = l10.OooO0o();
                        ehVar3 = new fh(10004, strOooO0O0);
                    }
                    l10VarOooO0o2.OooOOOO(ehVar3);
                    return;
                }
                String unused9 = na.Ooooooo;
                l10VarOooO0o = l10.OooO0o();
                ehVar2 = new eh(10103);
            }
            l10VarOooO0o.OooOOOO(ehVar2);
        }
    }

    public na(@NonNull Application application) {
        super(application);
        this.OoooOoO = new ArrayList<>();
        this.OoooOoo = new ArrayList<>();
        this.Ooooo00 = new ArrayList();
        this.Ooooo0o = new ScheduledThreadPoolExecutor(1);
        this.OooooOo = new MutableLiveData<>();
        this.Oooooo0 = new MutableLiveData<>();
        this.Oooooo = new MutableLiveData<>();
        this.OoooooO = new MutableLiveData<>();
        this.OooooOO = new wc(this);
    }

    private void Oooo(boolean z) {
        String strOooO0Oo = z8.OooO0Oo(getApplication(), f6.OooO0oo);
        String strOooOO0O = a4.OooOO0O(getApplication());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = b7.OooO0Oo().OooO0oO().getId();
        updateRequestInfo.DeviceName = strOooOO0O;
        updateRequestInfo.ScriptVersion = Integer.parseInt(strOooO0Oo);
        updateRequestInfo.IsScriptHotUpgrade = 1;
        updateRequestInfo.AppVersion = a4.OooO0o0();
        String str = "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName;
        kc.OooOo00().OooOo0O(new OooO0OO()).OooOo(z, getApplication(), updateRequestInfo);
    }

    private void Oooo0() {
        this.Oooooo0.postValue(this.OoooOoo.get(0));
        x4.OooO0O0().OooO0o(g6.OooO0o0, Boolean.TRUE);
        k6.OooO0Oo().OooO0o0(this.OoooOoo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo00o(ArrayList<NotifyMsgBean> arrayList) {
        this.OoooOoO.clear();
        this.Ooooo00.clear();
        this.OoooOoO.addAll(arrayList);
        Iterator<NotifyMsgBean> it = this.OoooOoO.iterator();
        while (it.hasNext()) {
            this.Ooooo00.add(it.next().ID);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo0oO(long j) {
        if (j <= 0) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.OooooO0;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.OooooO0 = null;
        }
        this.OooooO0 = this.Ooooo0o.schedule(new OooO0O0(), j + ((long) (new Random().nextInt(18600) + 600)), TimeUnit.SECONDS);
    }

    @Override // z2.hd
    public void OooO0o0(List<NotifyMsgBean> list) {
        this.OoooOoo.clear();
        this.OoooOoo.addAll(list);
        if (this.Ooooo00.contains(this.OoooOoo.get(0).ID)) {
            return;
        }
        this.OoooOoO.addAll(0, this.OoooOoo);
        Oooo0();
    }

    public void OooOoO() {
        this.OoooooO.postValue(Boolean.TRUE);
        h7.OooO0o(new OooOO0());
    }

    public void OooOoOO() {
        this.OoooOoO.clear();
        k6.OooO0Oo().OooO0OO();
    }

    public MutableLiveData<Integer> OooOoo() {
        return this.Oooooo;
    }

    public MutableLiveData<Boolean> OooOoo0() {
        return this.OoooooO;
    }

    public ArrayList<NotifyMsgBean> OooOooO() {
        return this.OoooOoO;
    }

    public MutableLiveData<NotifyMsgBean> OooOooo() {
        return this.Oooooo0;
    }

    public MutableLiveData<VersionUpdateInfo> Oooo000() {
        return this.OooooOo;
    }

    public void Oooo00O() {
        this.OooooOO.OooO0OO(getApplication());
    }

    public void Oooo0O0() {
        k6.OooO0Oo().OooO0o(new OooO0o());
    }

    public void Oooo0OO() {
        rb.OooO00o().OooO00o(new OooO());
    }

    public void Oooo0o() {
        rb.OooO00o().OooO00o(new OooO00o());
    }

    public void Oooo0o0() {
    }

    public void Oooo0oo() {
        mc.OooO0oo().OooO(getApplication(), 5, 0, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        Oooo0oO((ae.Oooo0O0(ae.Oooo0(jCurrentTimeMillis, ae.OooO0O0)) / 1000) - jCurrentTimeMillis);
    }

    public void OoooO00() {
        if (t4.OooOO0(getApplication())) {
            Oooo(false);
        } else {
            c5.OooO0o0(getApplication(), "当前网络无法访问，请检查网络设置……");
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        this.OooooOO.OooO0o();
        kc.OooOo00().OooOo0();
        mc.OooO0oo().OooO0o();
        ScheduledFuture<?> scheduledFuture = this.OooooO0;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }
}
