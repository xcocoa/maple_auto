package z2;

import android.content.Context;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.client.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public abstract class ke {
    public static final String OooO0OO = "http://api4.mobileanjian.com/api";
    public Context OooO00o;
    public String OooO0O0;

    public ke(Context context) {
        this.OooO00o = context;
    }

    public abstract void OooO00o();

    public abstract String OooO0O0();

    public void commit() {
        OooO00o();
        HttpUtils httpUtils = new HttpUtils();
        RequestParams requestParams = new RequestParams();
        requestParams.addQueryStringParameter("Data", OooO0O0());
        httpUtils.send(HttpRequest.HttpMethod.GET, this.OooO0O0, requestParams, null);
    }
}
