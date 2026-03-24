package z2;

import android.content.Context;
import android.util.Log;
import com.cyjh.http.bean.request.UnbindRegCodeRequestInfo;
import com.cyjh.http.bean.response.RegCodeInfoResponse;

/* JADX INFO: loaded from: classes.dex */
public class yc extends hc {
    private kd OooO0O0;

    public yc(kd kdVar) {
        this.OooO0O0 = kdVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        String str = "UnbindRegisterCodePresenter--uiDataSuccess--" + obj;
        try {
            RegCodeInfoResponse regCodeInfoResponse = (RegCodeInfoResponse) n4.OooO0o0((String) obj, RegCodeInfoResponse.class);
            if (regCodeInfoResponse != null) {
                this.OooO0O0.OooO(regCodeInfoResponse);
            } else {
                this.OooO0O0.OooO0Oo("解绑注册码解析Json异常");
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.OooO0O0.OooO0Oo("解绑注册码解析异常:" + e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "UnbindRegisterCodePresenter--onErrorResponse--" + str);
        this.OooO0O0.OooO0Oo(str);
    }

    public void OooO0OO() {
        this.OooO00o.OooOOO(getClass().getCanonicalName());
    }

    public void OooO0o(String str, Context context) {
        try {
            UnbindRegCodeRequestInfo unbindRegCodeRequestInfo = new UnbindRegCodeRequestInfo(gc.OooO0OO().OooO00o(context));
            unbindRegCodeRequestInfo.RegCode = str;
            String string = j3.OooO0oo(k3.Oooo0OO, k3.Oooo).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, unbindRegCodeRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
