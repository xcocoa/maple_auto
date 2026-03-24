package z2;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.ac.R;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.ScriptStartRunInfo;
import com.cyjh.http.bean.response.ScriptStartRunResponse;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import z2.kc;
import z2.mc;

/* JADX INFO: loaded from: classes.dex */
public class h7 {
    private static final String OooO00o = "z2.h7";

    public class OooO implements mc.OooO0O0 {
        public final /* synthetic */ r3 OooO00o;

        public class OooO00o implements View.OnClickListener {
            public final /* synthetic */ ba OoooOoO;

            public OooO00o(ba baVar) {
                this.OoooOoO = baVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.OoooOoO.dismiss();
            }
        }

        public OooO(r3 r3Var) {
            this.OooO00o = r3Var;
        }

        @Override // z2.mc.OooO0O0
        public void OooO00o(Object obj) {
            Boolean bool = Boolean.TRUE;
            String str = (String) obj;
            String unused = h7.OooO00o;
            String str2 = "startRunStatistics --> onCallbackSuc： " + str;
            if (!TextUtils.isEmpty(str)) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) n4.OooO0o0(str, ScriptStartRunResponse.class);
                if (scriptStartRunResponse.Code == 200) {
                    this.OooO00o.OooO00o(Boolean.FALSE);
                    m7.OooO0o0().OooOO0 = scriptStartRunResponse.Data;
                } else {
                    this.OooO00o.OooO00o(bool);
                    if (scriptStartRunResponse != null) {
                        int i = scriptStartRunResponse.Code;
                        String str3 = scriptStartRunResponse.Message;
                        String str4 = "AppContext--onStartScript message:" + str3 + ", responseCode:" + i;
                        if (1100 == i || 1200 == i || 1201 == i || 1202 == i || 1203 == i || 1300 == i) {
                            if (ba.Ooooo0o && !ba.OooooO0) {
                                l10.OooO0o().OooOOOO(new MsgItem(1005));
                            }
                            if (ba.Ooooo0o) {
                                l10.OooO0o().OooOOOO(new MsgItem.UpdateMessageToDialog(str3));
                            } else {
                                ba baVar = new ba(AppContext.OooO00o(), true, str3);
                                baVar.OooO0O0(new OooO00o(baVar));
                                baVar.show();
                            }
                        } else if (i == 1504) {
                            c5.OooO0OO(AppContext.OooO00o(), scriptStartRunResponse.Message);
                            i7.OooO().Oooo();
                        } else {
                            c5.OooO0OO(AppContext.OooO00o(), scriptStartRunResponse.Message);
                        }
                    } else {
                        c5.OooO0O0(AppContext.OooO00o(), R.string.json_parse_exception);
                    }
                    if (i7.OooO().OooOOO()) {
                        Log.i("EnginSdk", "start stop 111");
                        SystemClock.sleep(com.anythink.expressad.video.module.a.a.m.ag);
                    }
                }
                mc.OooO0oo().OooO0oO();
            }
            this.OooO00o.OooO00o(bool);
            c5.OooO0O0(AppContext.OooO00o(), R.string.json_data_null);
            i7.OooO().Oooo0o0();
            mc.OooO0oo().OooO0oO();
        }

        @Override // z2.mc.OooO0O0
        public void OooO0O0() {
            String unused = h7.OooO00o;
        }
    }

    public class OooO00o implements kc.OooO00o {
        public final /* synthetic */ OooOO0 OooO00o;

        public OooO00o(OooOO0 oooOO0) {
            this.OooO00o = oooOO0;
        }

        @Override // z2.kc.OooO00o
        public void OooO00o(VersionUpdateInfo versionUpdateInfo) {
        }

        @Override // z2.kc.OooO00o
        public void OooO0O0(VersionUpdateInfo versionUpdateInfo) {
        }

        @Override // z2.kc.OooO00o
        public void OooO0OO(VersionUpdateInfo versionUpdateInfo) {
            int i;
            if (versionUpdateInfo == null) {
                h7.OooO0OO(this.OooO00o);
                return;
            }
            if (versionUpdateInfo.UpgradeMode != 2 || (5 != (i = versionUpdateInfo.UpdateType) && 3 != i)) {
                h7.OooO0OO(this.OooO00o);
                return;
            }
            b5.OooO0OO().OooO0oO(versionUpdateInfo.AppVersion);
            int i2 = c7.OooOO0;
            if (3 == versionUpdateInfo.UpdateType) {
                i2 = c7.OooO;
            }
            c7.OooO0oo().OooO(AppContext.OooO00o(), b7.OooO0Oo().OooO0oO().getId(), i2).OooO0oO(versionUpdateInfo.UpdateUrl);
            z6.OooO0Oo().OooO00o.Oooo0OO();
        }
    }

    public class OooO0O0 implements mc.OooO0O0 {
        public final /* synthetic */ OooOO0 OooO00o;

        public OooO0O0(OooOO0 oooOO0) {
            this.OooO00o = oooOO0;
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x010f  */
        /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
        @Override // z2.mc.OooO0O0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void OooO00o(Object obj) {
            AppContext appContextOooO00o;
            int i;
            OooOO0 oooOO0;
            a5.OooO0O0(AppContext.OooO00o(), "runScriptOperate --> 准备启动引擎1");
            String str = (String) obj;
            String str2 = "runScriptOperate --> onCallbackSuc2:" + str;
            if (!TextUtils.isEmpty(str)) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) n4.OooO0o0(str, ScriptStartRunResponse.class);
                if (scriptStartRunResponse != null && !TextUtils.isEmpty(scriptStartRunResponse.Data.ScriptEncryptKey)) {
                    m7.OooO0o0().OooOO0(scriptStartRunResponse.Data.ScriptEncryptKey);
                    m7.OooO0o0().OooOO0O(scriptStartRunResponse.Data.SecKey);
                    if (!m7.OooO0o0().OooO0oO().equals(scriptStartRunResponse.Data.SecKey)) {
                        return;
                    }
                    if (AppContext.OooO00o().Oooooo0) {
                        ScriptStartRunInfo scriptStartRunInfo = scriptStartRunResponse.Data;
                        y8.OooO0oO(scriptStartRunInfo.ScriptEncryptKey, scriptStartRunInfo.SecKey);
                    }
                    if (AppContext.OooO00o().Oooooo) {
                        ScriptStartRunInfo scriptStartRunInfo2 = scriptStartRunResponse.Data;
                        y8.OooO(scriptStartRunInfo2.ScriptEncryptKey, scriptStartRunInfo2.SecKey);
                    }
                }
                if (scriptStartRunResponse != null && scriptStartRunResponse.Code == 200) {
                    if (!TextUtils.isEmpty(scriptStartRunResponse.Data.ExpireTime)) {
                        try {
                            q7.OooO0o0().OooOO0o(Long.parseLong(scriptStartRunResponse.Data.ExpireTime));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (b7.OooO0Oo().OooO0OO == 1) {
                        i7.OooO().Oooo0();
                    }
                } else if (scriptStartRunResponse != null) {
                    c5.OooO0OO(AppContext.OooO00o(), scriptStartRunResponse.Message);
                    int i2 = scriptStartRunResponse.Code;
                    if (i2 == 1401 || 1400 == i2) {
                        q7.OooO0o0().OooOOO0("");
                        ae.OooO0OO(k3.o00oO0o + j3.OooO0o(), AppContext.OooO00o());
                    }
                } else {
                    appContextOooO00o = AppContext.OooO00o();
                    i = R.string.json_parse_exception;
                }
                mc.OooO0oo().OooO0oO();
                oooOO0 = this.OooO00o;
                if (oooOO0 == null) {
                    oooOO0.OooO00o(Boolean.TRUE);
                    return;
                }
                return;
            }
            appContextOooO00o = AppContext.OooO00o();
            i = R.string.json_data_null;
            c5.OooO0O0(appContextOooO00o, i);
            mc.OooO0oo().OooO0oO();
            oooOO0 = this.OooO00o;
            if (oooOO0 == null) {
            }
        }

        @Override // z2.mc.OooO0O0
        public void OooO0O0() {
            a5.OooO0O0(AppContext.OooO00o(), "runScriptOperate --> 准备工作失败");
            OooOO0 oooOO0 = this.OooO00o;
            if (oooOO0 != null) {
                oooOO0.OooO0O0();
            }
        }
    }

    public class OooO0OO implements mc.OooO0O0 {
        public final /* synthetic */ boolean OooO00o;
        public final /* synthetic */ OooOO0 OooO0O0;

        public OooO0OO(boolean z, OooOO0 oooOO0) {
            this.OooO00o = z;
            this.OooO0O0 = oooOO0;
        }

        @Override // z2.mc.OooO0O0
        public void OooO00o(Object obj) {
            String unused = h7.OooO00o;
            String str = "runScriptOperate --> onCallbackSuc1 -- " + q7.OooO0o0().OooO0o();
            String str2 = (String) obj;
            if (!TextUtils.isEmpty(str2)) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) n4.OooO0o0(str2, ScriptStartRunResponse.class);
                if (scriptStartRunResponse != null && scriptStartRunResponse.Code == 200 && !TextUtils.isEmpty(scriptStartRunResponse.Data.ScriptEncryptKey)) {
                    m7.OooO0o0().OooOO0(scriptStartRunResponse.Data.ScriptEncryptKey);
                    m7.OooO0o0().OooOO0O(scriptStartRunResponse.Data.SecKey);
                    if (!m7.OooO0o0().OooO0oO().equals(scriptStartRunResponse.Data.SecKey)) {
                        return;
                    }
                    if (this.OooO00o) {
                        ScriptStartRunInfo scriptStartRunInfo = scriptStartRunResponse.Data;
                        y8.OooO0oO(scriptStartRunInfo.ScriptEncryptKey, scriptStartRunInfo.SecKey);
                        ScriptStartRunInfo scriptStartRunInfo2 = scriptStartRunResponse.Data;
                        y8.OooO(scriptStartRunInfo2.ScriptEncryptKey, scriptStartRunInfo2.SecKey);
                        y8.OooOO0();
                    }
                }
                OooOO0 oooOO0 = this.OooO0O0;
                if (oooOO0 != null) {
                    oooOO0.OooO00o(obj);
                }
            }
            mc.OooO0oo().OooO0oO();
        }

        @Override // z2.mc.OooO0O0
        public void OooO0O0() {
            String unused = h7.OooO00o;
            OooOO0 oooOO0 = this.OooO0O0;
            if (oooOO0 != null) {
                oooOO0.OooO0O0();
            }
        }
    }

    public class OooO0o implements mc.OooO0O0 {
        @Override // z2.mc.OooO0O0
        public void OooO00o(Object obj) {
            ScriptStartRunResponse scriptStartRunResponse;
            String unused = h7.OooO00o;
            String str = (String) obj;
            if (TextUtils.isEmpty(str) || (scriptStartRunResponse = (ScriptStartRunResponse) n4.OooO0o0(str, ScriptStartRunResponse.class)) == null || scriptStartRunResponse.Code != 200 || TextUtils.isEmpty(scriptStartRunResponse.Data.ScriptEncryptKey)) {
                return;
            }
            m7.OooO0o0().OooOO0(scriptStartRunResponse.Data.ScriptEncryptKey);
            m7.OooO0o0().OooOO0O(scriptStartRunResponse.Data.SecKey);
            if (m7.OooO0o0().OooO0oO().equals(scriptStartRunResponse.Data.SecKey)) {
                ScriptStartRunInfo scriptStartRunInfo = scriptStartRunResponse.Data;
                y8.OooO0oO(scriptStartRunInfo.ScriptEncryptKey, scriptStartRunInfo.SecKey);
            }
        }

        @Override // z2.mc.OooO0O0
        public void OooO0O0() {
            String unused = h7.OooO00o;
        }
    }

    public interface OooOO0 {
        void OooO00o(Object obj);

        void OooO0O0();
    }

    public static void OooO0O0() {
        mc.OooO0oo().OooOOO(new OooO0o()).OooOO0(AppContext.OooO00o(), q7.OooO0o0().OooO0o(), b7.OooO0Oo().OooO0oO().getId(), k3.Oooo0o);
    }

    public static void OooO0OO(OooOO0 oooOO0) {
        String str = "preStart  --  start : " + b7.OooO0Oo().OooO0oO().getId();
        mc.OooO0oo().OooOOO(new OooO0O0(oooOO0)).OooOO0(AppContext.OooO00o(), q7.OooO0o0().OooO0o(), b7.OooO0Oo().OooO0oO().getId(), k3.Oooo0o);
    }

    public static void OooO0Oo(OooOO0 oooOO0, boolean z) {
        mc.OooO0oo().OooOOO(new OooO0OO(z, oooOO0)).OooOO0(AppContext.OooO00o(), q7.OooO0o0().OooO0o(), b7.OooO0Oo().OooO0oO().getId(), k3.Oooo0o);
    }

    public static void OooO0o(r3<Boolean> r3Var) {
        mc.OooO0oo().OooOOO(new OooO(r3Var)).OooOO0(AppContext.OooO00o(), q7.OooO0o0().OooO0o(), b7.OooO0Oo().OooO0oO().getId(), k3.Oooo0o0);
    }

    public static void OooO0o0(OooOO0 oooOO0) {
        OooO0oo(false, oooOO0);
    }

    public static void OooO0oO(mc.OooO00o oooO00o) {
        mc.OooO0oo().OooOOO0(oooO00o).OooOO0O(AppContext.OooO00o(), m7.OooO0o0().OooOO0.RunGuid);
    }

    private static void OooO0oo(boolean z, OooOO0 oooOO0) {
        String strOooO0Oo = z8.OooO0Oo(AppContext.OooO00o(), f6.OooO0oo);
        String strOooOO0O = a4.OooOO0O(AppContext.OooO00o());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = b7.OooO0Oo().OooO0oO().getId();
        updateRequestInfo.DeviceName = strOooOO0O;
        updateRequestInfo.ScriptVersion = Integer.parseInt(strOooO0Oo);
        updateRequestInfo.IsScriptHotUpgrade = 1;
        updateRequestInfo.AppVersion = a4.OooO0o0();
        kc.OooOo00().OooOo0O(new OooO00o(oooOO0)).OooOo(z, AppContext.OooO00o(), updateRequestInfo);
    }
}
