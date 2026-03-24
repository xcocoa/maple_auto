package z2;

import android.content.Context;
import com.cyjh.http.bean.request.BindRegCodeRequestInfo;
import com.cyjh.http.bean.response.BaseResponseInfo;
import com.cyjh.http.bean.response.BindRegCodeResponse;

/* JADX INFO: loaded from: classes.dex */
public class oc extends hc {
    private dd OooO0O0;

    public oc(dd ddVar) {
        this.OooO0O0 = ddVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        try {
            BindRegCodeResponse bindRegCodeResponse = (BindRegCodeResponse) n4.OooO0o0((String) obj, BindRegCodeResponse.class);
            if (bindRegCodeResponse == null) {
                this.OooO0O0.OooOOOO(new BaseResponseInfo(-1, "getData下发json数据为null"));
            } else {
                this.OooO0O0.OooOOoo(bindRegCodeResponse);
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.OooO0O0.OooOOOO(new BaseResponseInfo(-1, e.getMessage()));
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        this.OooO0O0.OooOOOO(new BaseResponseInfo(-1, str));
    }

    public void OooO0OO(String str, Context context, int i, String str2) {
        try {
            BindRegCodeRequestInfo bindRegCodeRequestInfo = new BindRegCodeRequestInfo(gc.OooO0OO().OooO00o(context));
            bindRegCodeRequestInfo.RegCode = str;
            bindRegCodeRequestInfo.OldRegCode = str2;
            bindRegCodeRequestInfo.IsSuperpose = i;
            String string = j3.OooO0oo(k3.Oooo0OO, k3.Oooo0oo).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, bindRegCodeRequestInfo));
            String str3 = "BindRegisterCodePresenter--bindRegCode--" + string;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0o() {
        this.OooO00o.OooOOO(getClass().getCanonicalName());
    }
}
