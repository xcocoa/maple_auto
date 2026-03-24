package z2;

import android.content.Context;
import android.util.Log;
import com.cyjh.http.bean.request.FeedbackRequestInfo;

/* JADX INFO: loaded from: classes.dex */
public class sc extends hc {
    private ed OooO0O0;

    public sc(ed edVar) {
        this.OooO0O0 = edVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        try {
            this.OooO0O0.OooOO0o((String) obj);
        } catch (Exception e) {
            Log.e("zzz", "FeedbackCommitDataPresenter--uiDataSuccess:" + e.getMessage());
            this.OooO0O0.onFail(e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "FeedbackCommitDataPresenter--onErrorResponse:" + str);
        this.OooO0O0.onFail(str);
    }

    public void OooO0OO(Context context, FeedbackRequestInfo feedbackRequestInfo) {
        try {
            String string = j3.OooO0oo(k3.OoooOOo, k3.OoooOo0).build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, feedbackRequestInfo));
        } catch (Exception e) {
            Log.e("zzz", "FeedbackCommitDataPresenter --异常：" + e.getMessage());
        }
    }

    public void OooO0o() {
        this.OooO00o.OooOOO(getClass().getCanonicalName());
    }
}
