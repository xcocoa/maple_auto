package z2;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.http.bean.request.QueryRegCodeRequestInfo;
import com.cyjh.http.bean.response.RegCodeInfoResponse;

/* JADX INFO: loaded from: classes.dex */
public class xc extends hc {
    private id OooO0O0;

    public xc(id idVar) {
        this.OooO0O0 = idVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        try {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                this.OooO0O0.OooO0oo("bind getData下发json数据为null");
            } else {
                this.OooO0O0.OooOOOo((RegCodeInfoResponse) n4.OooO0o0(str, RegCodeInfoResponse.class));
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.OooO0O0.OooO0oo("json解析抛异常：" + e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        this.OooO0O0.OooO0oo(str);
    }

    public void OooO0OO() {
        this.OooO00o.OooOOO(getClass().getCanonicalName());
    }

    public void OooO0o(String str, String str2, Context context) {
        try {
            QueryRegCodeRequestInfo queryRegCodeRequestInfo = new QueryRegCodeRequestInfo(gc.OooO0OO().OooO00o(context));
            queryRegCodeRequestInfo.RegCode = str;
            queryRegCodeRequestInfo.OldRegCode = str2;
            String string = j3.OooO0oo(k3.Oooo0OO, k3.OoooO00).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, queryRegCodeRequestInfo));
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "QueryRegCodeInfoPresenter--queryRegCodeInfo--" + e.getMessage());
        }
    }
}
