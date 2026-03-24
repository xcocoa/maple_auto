package com.anythink.core.debugger;

import android.content.Context;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.e;
import com.anythink.core.debugger.api.DebuggerDeviceInfo;
import com.anythink.core.debugger.api.DebuggerSdkInfo;
import com.anythink.core.debugger.api.IDeviceInfoGetter;
import com.anythink.core.debugger.api.ISdkInfoGetter;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CoreDebuggerManager {
    private static volatile CoreDebuggerManager a;
    private final DebuggerDeviceInfo b = new DebuggerDeviceInfo();
    private final DebuggerSdkInfo c = new DebuggerSdkInfo();

    private CoreDebuggerManager() {
    }

    private void a() {
        IExHandler iExHandlerB = n.a().b();
        Context contextF = n.a().f();
        if (iExHandlerB == null) {
            return;
        }
        try {
            String aid = iExHandlerB.getAid(contextF);
            JSONObject jSONObject = new JSONObject();
            iExHandlerB.fillRequestData(jSONObject, null);
            this.b.setAndroidId(aid);
            if (jSONObject.has("imei")) {
                this.b.setImei(jSONObject.opt("imei").toString());
            }
            if (jSONObject.has("oaid")) {
                this.b.setOaid(jSONObject.opt("oaid").toString());
            }
            if (jSONObject.has("mac")) {
                this.b.setMac(jSONObject.opt("mac").toString());
            }
        } catch (Exception unused) {
        }
    }

    public static CoreDebuggerManager getInstance() {
        if (a == null) {
            synchronized (CoreDebuggerManager.class) {
                if (a == null) {
                    a = new CoreDebuggerManager();
                }
            }
        }
        return a;
    }

    public void setDeviceInfoGetter(Context context, IDeviceInfoGetter iDeviceInfoGetter) {
        if (iDeviceInfoGetter != null) {
            this.b.setGaid(e.s(context));
            this.b.setMnc(e.c(context));
            this.b.setMcc(e.b(context));
            this.b.setUpId(n.a().x());
            IExHandler iExHandlerB = n.a().b();
            Context contextF = n.a().f();
            if (iExHandlerB != null) {
                try {
                    String aid = iExHandlerB.getAid(contextF);
                    JSONObject jSONObject = new JSONObject();
                    iExHandlerB.fillRequestData(jSONObject, null);
                    this.b.setAndroidId(aid);
                    if (jSONObject.has("imei")) {
                        this.b.setImei(jSONObject.opt("imei").toString());
                    }
                    if (jSONObject.has("oaid")) {
                        this.b.setOaid(jSONObject.opt("oaid").toString());
                    }
                    if (jSONObject.has("mac")) {
                        this.b.setMac(jSONObject.opt("mac").toString());
                    }
                } catch (Exception unused) {
                }
            }
            iDeviceInfoGetter.onDeviceInfoCallback(this.b);
        }
    }

    public void setSdkInfoGetter(ISdkInfoGetter iSdkInfoGetter) {
        n nVarA = n.a();
        if (iSdkInfoGetter != null) {
            this.c.setInitSdk(nVarA.M());
            this.c.setAppId(nVarA.o());
            this.c.setDeniedUploadDeviceInfo(nVarA.e());
            this.c.setHaveLoadAd(nVarA.c);
            this.c.setHavePreInitNetwork(nVarA.H());
            iSdkInfoGetter.onSdkInfoCallback(this.c);
        }
    }
}
