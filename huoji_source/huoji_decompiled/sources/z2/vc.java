package z2;

import android.content.Context;
import android.util.Log;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.request.NoticeDetailsRequestParams;
import com.cyjh.http.bean.response.NoticeBean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class vc extends hc {
    private gd OooO0O0;
    private long OooO0OO;

    public vc(gd gdVar) {
        this.OooO0O0 = gdVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        NoticeBean noticeBean;
        try {
            JSONObject jSONObject = new JSONObject((String) obj);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            if (jSONObject.getInt("Code") == 200 && (noticeBean = (NoticeBean) n4.OooO0o0(jSONObject2.toString(), NoticeBean.class)) != null && noticeBean.ClientTimestamp == this.OooO0OO) {
                this.OooO0O0.OooO0OO(noticeBean);
            } else {
                gd gdVar = this.OooO0O0;
                gdVar.onFail();
            }
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.NoticeDetailsPresenter--uiDataSuccess:" + e.getMessage());
            this.OooO0O0.onFail();
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "com.cyjh.share.NoticeDetailsPresenter--onErrorResponse:" + str);
        this.OooO0O0.onFail();
    }

    public void OooO0OO(Context context, long j) {
        try {
            BaseRequestValueInfo baseRequestValueInfoOooO00o = gc.OooO0OO().OooO00o(context);
            this.OooO0OO = gc.OooO0o;
            NoticeDetailsRequestParams noticeDetailsRequestParams = new NoticeDetailsRequestParams(baseRequestValueInfoOooO00o);
            noticeDetailsRequestParams.NoticeId = j;
            String string = j3.OooO0oo(k3.Oooo00O, k3.Oooo0).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, noticeDetailsRequestParams));
        } catch (Exception unused) {
        }
    }

    public void OooO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }
}
