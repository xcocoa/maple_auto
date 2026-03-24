package z2;

import android.content.Context;
import android.util.Log;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.response.NoticeBean;
import com.cyjh.http.bean.response.NoticeListBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class wc extends hc {
    private hd OooO0O0;
    private long OooO0OO;

    public wc(hd hdVar) {
        this.OooO0O0 = hdVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        NoticeListBean noticeListBean;
        List<NoticeBean> list;
        try {
            String str = (String) obj;
            String str2 = "com.cyjh.share.NoticeListPresenter--uiDataSuccess1:" + str;
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            if (jSONObject.getInt("Code") != 200 || (noticeListBean = (NoticeListBean) n4.OooO0o0(jSONObject2.toString(), NoticeListBean.class)) == null || (list = noticeListBean.NoticeList) == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (NoticeBean noticeBean : noticeListBean.NoticeList) {
                NotifyMsgBean notifyMsgBean = new NotifyMsgBean();
                notifyMsgBean.ID = String.valueOf(noticeBean.NoticeId);
                notifyMsgBean.NoticeTitle = noticeBean.NoticeTitle;
                notifyMsgBean.NoticeContent = noticeBean.NoticeContent;
                notifyMsgBean.NoticeTime = ae.Oooo0(noticeBean.NoticeTime, "yyyy-MM-dd HH:mm:ss");
                notifyMsgBean.DescriptionType = String.valueOf(noticeBean.DescriptionType);
                notifyMsgBean.NoticeDescription = noticeBean.NoticeDescription;
                boolean z = true;
                if (noticeBean.IsShowNoticeBar != 1) {
                    z = false;
                }
                notifyMsgBean.IsSendMessage = z;
                arrayList.add(notifyMsgBean);
            }
            this.OooO0O0.OooO0o0(arrayList);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--uiDataSuccess2:" + e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "com.cyjh.share.NoticeListPresenter--onErrorResponse:" + str);
    }

    public void OooO0OO(Context context) {
        try {
            BaseRequestValueInfo baseRequestValueInfoOooO00o = gc.OooO0OO().OooO00o(context);
            String string = j3.OooO0oo(k3.Oooo00O, "List").build().toString();
            Map<String, String> mapOooO = gc.OooO0OO().OooO(string, baseRequestValueInfoOooO00o);
            this.OooO0OO = gc.OooO0o;
            String str = "com.cyjh.share.NoticeListPresenter--loadAd:" + string;
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, mapOooO);
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.NoticeListPresenter--loadAd:" + e.getMessage());
        }
    }

    public void OooO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }
}
