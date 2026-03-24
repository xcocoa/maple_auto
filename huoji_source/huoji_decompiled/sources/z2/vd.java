package z2;

import android.content.res.Resources;
import android.text.TextUtils;
import com.android.volley.AuthFailureError;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.ParseError;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.cyjh.http.R;
import com.cyjh.http.bean.SignaClass;
import com.cyjh.http.bean.response.BaseInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class vd implements md, nd {
    public od OooO00o = new od(this, this);

    @Override // z2.md
    public Object OooO0Oo(String str) {
        try {
            BaseInfo baseInfo = (BaseInfo) n4.OooO0o0(str, BaseInfo.class);
            SignaClass signaClass = (SignaClass) n4.OooO0o0(de.OooO00o(this.OooO00o.Ooooo00, baseInfo.Data, baseInfo.R), SignaClass.class);
            if (signaClass == null || !de.OooO0o0(signaClass.SignContent, signaClass.Signature)) {
                return null;
            }
            return signaClass.SignContent;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public abstract void OooO0o(String str);

    /* JADX WARN: Removed duplicated region for block: B:26:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
    @Override // z2.nd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooO0o0(VolleyError volleyError) {
        String string;
        int i;
        Resources resources = gc.OooO0OO().OooO0O0().getResources();
        if (resources != null) {
            if (volleyError instanceof ServerError) {
                i = R.string.network_server_error;
            } else if (volleyError instanceof NoConnectionError) {
                i = R.string.network_no_connection_error;
            } else if (volleyError instanceof NetworkError) {
                i = R.string.network_network_error;
            } else if (volleyError instanceof ParseError) {
                i = R.string.network_parse_error;
            } else if (volleyError instanceof AuthFailureError) {
                i = R.string.network_auth_failure_error;
            } else {
                if (!(volleyError instanceof TimeoutError)) {
                    string = null;
                    if (volleyError.networkResponse != null) {
                        if (!TextUtils.isEmpty(volleyError.networkResponse.OooO00o + "")) {
                            string = volleyError.networkResponse.OooO00o + "\t\t" + string;
                        }
                    }
                    if (string == null) {
                        string = resources.getString(R.string.network_again_error);
                    }
                    OooO0o(string);
                }
                i = R.string.network_timeout_error;
            }
            string = resources.getString(i);
            if (volleyError.networkResponse != null) {
            }
            if (string == null) {
            }
            OooO0o(string);
        }
    }
}
