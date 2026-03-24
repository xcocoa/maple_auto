package z2;

import android.content.Context;
import com.hlzn.socketclient.bean.ServiceParam;

/* JADX INFO: loaded from: classes2.dex */
public class zt {
    private static zt OooO0OO;
    private Context OooO00o;
    private du OooO0O0;

    private zt() {
    }

    public static zt OooOO0() {
        if (OooO0OO == null) {
            synchronized (zt.class) {
                if (OooO0OO == null) {
                    OooO0OO = new zt();
                }
            }
        }
        return OooO0OO;
    }

    public void OooO() {
        iu.OooO0O0(this.OooO00o, bu.OooOO0o);
    }

    public void OooO00o(int i, String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setCmdRenameDeviceNameCode(i);
        serviceParam.setCmdRenameDeviceNameResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooOO0O, serviceParam);
    }

    public void OooO0O0(int i, String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setCmdScreenCaptureCode(i);
        serviceParam.setCmdScreenCaptureResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooO, serviceParam);
    }

    public void OooO0OO(int i, String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setCmdScriptSettingsCode(i);
        serviceParam.setCmdScriptSettingsResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooO0oo, serviceParam);
    }

    public void OooO0Oo(int i, String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setCmdScriptStartCode(i);
        serviceParam.setCmdScriptStartResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooO0o0, serviceParam);
    }

    public void OooO0o(int i, String str) {
        OooO0oO(i, str, str);
    }

    public void OooO0o0(int i, String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setCmdScriptStopCode(i);
        serviceParam.setCmdScriptStopResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooO0o, serviceParam);
    }

    public void OooO0oO(int i, String str, String str2) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setScriptId(str2);
        serviceParam.setCmdScriptUpgradeCode(i);
        serviceParam.setCmdScriptUpgradeResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooO0oO, serviceParam);
    }

    public void OooO0oo(int i, String str) {
        ServiceParam serviceParam = new ServiceParam();
        serviceParam.setCmdUnBindStudioProjectCode(i);
        serviceParam.setCmdUnBindStudioProjectResult(str);
        iu.OooO0OO(this.OooO00o, bu.OooOO0, serviceParam);
    }

    public du OooOO0O() {
        return this.OooO0O0;
    }

    public void OooOO0o(Context context) {
        this.OooO00o = context;
    }

    public void OooOOO() {
        if (bu.OooOo0O) {
            ServiceParam serviceParam = new ServiceParam();
            serviceParam.setScriptRunning(false);
            iu.OooO0OO(this.OooO00o, bu.OooO0Oo, serviceParam);
        }
    }

    public void OooOOO0() {
        if (bu.OooOo0O) {
            ServiceParam serviceParam = new ServiceParam();
            serviceParam.setScriptRunning(true);
            iu.OooO0OO(this.OooO00o, bu.OooO0OO, serviceParam);
        }
    }

    public void OooOOOO() {
        iu.OooO0O0(this.OooO00o, bu.OooO0O0);
    }

    public void OooOOOo(du duVar) {
        this.OooO0O0 = duVar;
    }
}
