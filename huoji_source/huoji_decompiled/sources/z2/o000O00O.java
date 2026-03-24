package z2;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o000O00O extends o000Oo0 {
    private static final String Ooooooo = "https://graph.facebook.com/oauth/authorize";
    private static final String o00O0O = "aq.fb.token";
    private static final String o00Oo0 = "aq.fb.permission";
    private static Boolean o00Ooo = null;
    public static final String o00o0O = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2";
    private static final String o0OoOo0 = "https://www.facebook.com/connect/login_success.html";
    private static final String ooOO = "fbconnect:cancel";
    private String OoooOoo;
    private Activity Ooooo00;
    private o000O0o Ooooo0o;
    private String OooooO0;
    private String OooooOO;
    private String OooooOo;
    private boolean Oooooo;
    private boolean Oooooo0;
    private int OoooooO;

    public class OooO00o implements Runnable {
        private final /* synthetic */ o000OO0O OoooOoo;

        public OooO00o(o000OO0O o000oo0o) {
            this.OoooOoo = o000oo0o;
        }

        @Override // java.lang.Runnable
        public void run() {
            o000O00O.this.OooO0Oo(this.OoooOoo);
        }
    }

    public class OooO0O0 extends WebViewClient implements DialogInterface.OnCancelListener {
        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(o000O00O o000o00o, OooO0O0 oooO0O0) {
            this();
        }

        private boolean OooO00o(String str) {
            if (!str.startsWith(o000O00O.o0OoOo0)) {
                if (!str.startsWith(o000O00O.ooOO)) {
                    return false;
                }
                o00O000.OooO("cancelled");
                o000O00O.this.OooOooo();
                return true;
            }
            String string = o000O00O.Oooo0oo(str).getString("error_reason");
            o00O000.OooOO0("error", string);
            if (string == null) {
                o000O00O o000o00o = o000O00O.this;
                o000o00o.OooooO0 = o000o00o.OooOooO(str);
            }
            if (o000O00O.this.OooooO0 != null) {
                o000O00O.this.OooOoo0();
                o000O00O o000o00o2 = o000O00O.this;
                o000o00o2.o000oOoO(o000o00o2.OooooO0, o000O00O.this.OooooOO);
                o000O00O.this.Oooooo0 = false;
                o000O00O o000o00o3 = o000O00O.this;
                o000o00o3.OooOoO(o000o00o3.OooooO0);
                o000O00O o000o00o4 = o000O00O.this;
                o000o00o4.OooOO0O(o000o00o4.Ooooo00);
            } else {
                o000O00O.this.OooOooo();
            }
            return true;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            o000O00O.this.OooOooo();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            o000O00O.this.OoooO0();
            o00O000.OooOO0("finished", str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            o00O000.OooOO0("started", str);
            if (OooO00o(str)) {
                return;
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            o000O00O.this.OooOooo();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            o00O000.OooO("return url: " + str);
            return OooO00o(str);
        }
    }

    public o000O00O(Activity activity, String str, String str2) {
        this(activity, str, str2, null);
    }

    public o000O00O(Activity activity, String str, String str2, String str3) {
        this.OoooOoo = str;
        this.Ooooo00 = activity;
        this.OooooOO = str2;
        this.OooooO0 = str3;
        if (str3 == null && Oooo(str2, Oooo00O())) {
            this.OooooO0 = Oooo00o();
        }
        this.Oooooo0 = this.OooooO0 == null;
    }

    private static Bundle OooOoOO(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                bundle.putString(strArrSplit[0], strArrSplit[1]);
            }
        }
        return bundle;
    }

    private static String OooOoo(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : bundle.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append("&");
            }
            sb.append(String.valueOf(str) + "=" + bundle.getString(str));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOoo0() {
        if (this.Ooooo0o != null) {
            new o000(this.Ooooo00).OooOooO(this.Ooooo0o);
            this.Ooooo0o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String OooOooO(String str) {
        String queryParameter = Uri.parse(str.replace('#', '?')).getQueryParameter("access_token");
        o00O000.OooOO0("token", queryParameter);
        return queryParameter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOooo() {
        Oooo000(com.anythink.expressad.d.a.b.dO);
    }

    private boolean Oooo(String str, String str2) {
        if (str == null) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        HashSet hashSet = new HashSet(Arrays.asList(str2.split("[,\\s]+")));
        for (String str3 : str.split("[,\\s]+")) {
            if (!hashSet.contains(str3)) {
                o00O000.OooO("perm mismatch");
                return false;
            }
        }
        return true;
    }

    private void Oooo000(String str) {
        OooOoo0();
        OooO0oO(this.Ooooo00, -102, str);
    }

    private String Oooo00O() {
        return PreferenceManager.getDefaultSharedPreferences(this.Ooooo00).getString(o00Oo0, null);
    }

    private String Oooo00o() {
        return PreferenceManager.getDefaultSharedPreferences(this.Ooooo00).getString(o00O0O, null);
    }

    public static String Oooo0O0(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(o00O0O, null);
    }

    private void Oooo0OO() {
        o000O0o o000o0o = this.Ooooo0o;
        if (o000o0o != null) {
            try {
                o000o0o.hide();
            } catch (Exception e) {
                o00O000.OooOO0O(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle Oooo0oo(String str) {
        try {
            URL url = new URL(str);
            Bundle bundleOooOoOO = OooOoOO(url.getQuery());
            bundleOooOoOO.putAll(OooOoOO(url.getRef()));
            return bundleOooOoOO;
        } catch (MalformedURLException unused) {
            return new Bundle();
        }
    }

    private boolean OoooO() {
        if (this.Oooooo) {
            return OoooOO0(this.Ooooo00, this.OoooOoo, this.OooooOO, this.OoooooO);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OoooO0() {
        if (this.Ooooo0o != null) {
            new o000(this.Ooooo00).o000O0oo(this.Ooooo0o);
        }
    }

    private boolean OoooOO0(Activity activity, String str, String str2, int i) {
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
        intent.putExtra("client_id", str);
        if (str2 != null) {
            intent.putExtra("scope", str2);
        }
        if (!OoooOOO(activity, intent)) {
            return false;
        }
        try {
            activity.startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    private boolean OoooOOO(Context context, Intent intent) {
        PackageManager packageManager = context.getPackageManager();
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveInfoResolveActivity == null) {
            return false;
        }
        try {
            for (Signature signature : packageManager.getPackageInfo(resolveInfoResolveActivity.activityInfo.packageName, 64).signatures) {
                if (signature.toCharsString().equals(o00o0O)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private void OoooOOo() {
        o00O000.OooO("web auth");
        Bundle bundle = new Bundle();
        bundle.putString("client_id", this.OoooOoo);
        bundle.putString("type", "user_agent");
        String str = this.OooooOO;
        if (str != null) {
            bundle.putString("scope", str);
        }
        bundle.putString("redirect_uri", o0OoOo0);
        String str2 = "https://graph.facebook.com/oauth/authorize?" + OooOoo(bundle);
        OooO0O0 oooO0O0 = new OooO0O0(this, null);
        o000O0o o000o0o = new o000O0o(this.Ooooo00, str2, oooO0O0);
        this.Ooooo0o = o000o0o;
        o000o0o.OooO0Oo(this.OooooOo);
        this.Ooooo0o.setOnCancelListener(oooO0O0);
        OoooO0();
        if (!this.Oooooo0 || this.OooooO0 != null) {
            o00O000.OooO("auth hide");
            Oooo0OO();
        }
        this.Ooooo0o.OooO0OO();
        o00O000.OooO("auth started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o000oOoO(String str, String str2) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.Ooooo00).edit();
        editorEdit.putString(o00O0O, str).putString(o00Oo0, str2);
        o00O000.OooO00o(editorEdit);
    }

    @Override // z2.o000Oo0
    public String OooO(String str) {
        StringBuilder sb;
        String str2;
        if (str.indexOf(63) == -1) {
            sb = new StringBuilder(String.valueOf(str));
            str2 = "?";
        } else {
            sb = new StringBuilder(String.valueOf(str));
            str2 = "&";
        }
        sb.append(str2);
        return String.valueOf(sb.toString()) + "access_token=" + this.OooooO0;
    }

    @Override // z2.o000Oo0
    public void OooO0OO() {
        if (this.Ooooo00.isFinishing()) {
            return;
        }
        boolean zOoooO = OoooO();
        o00O000.OooOO0("authing", Boolean.valueOf(zOoooO));
        if (zOoooO) {
            return;
        }
        OoooOOo();
    }

    @Override // z2.o000Oo0
    public boolean OooO0o(o000OO0O<?, ?> o000oo0o, o000O o000o) {
        int iOooOO0o = o000o.OooOO0o();
        if (iOooOO0o == 200) {
            return false;
        }
        String strOooOOo0 = o000o.OooOOo0();
        if (strOooOOo0 != null && strOooOOo0.contains("OAuthException")) {
            o00O000.OooO("fb token expired");
            return true;
        }
        String url = o000oo0o.getUrl();
        if (iOooOO0o == 400 && (url.endsWith("/likes") || url.endsWith("/comments") || url.endsWith("/checkins"))) {
            return false;
        }
        if (iOooOO0o == 403 && (url.endsWith("/feed") || url.contains("method=delete"))) {
            return false;
        }
        return iOooOO0o == 400 || iOooOO0o == 401 || iOooOO0o == 403;
    }

    @Override // z2.o000Oo0
    public boolean OooO0o0() {
        return this.OooooO0 != null;
    }

    @Override // z2.o000Oo0
    public String OooO0oo(String str) {
        return OooO(str);
    }

    @Override // z2.o000Oo0
    public boolean OooOO0(o000OO0O<?, ?> o000oo0o) {
        o00O000.OooO("reauth requested");
        this.OooooO0 = null;
        o00O000.Oooo0o(new OooO00o(o000oo0o));
        return false;
    }

    @Override // z2.o000Oo0
    public void OooOO0o() {
        this.OooooO0 = null;
        CookieSyncManager.createInstance(this.Ooooo00);
        CookieManager.getInstance().removeAllCookie();
        o000oOoO(null, null);
    }

    public void OooOo(o000O0O0<JSONObject> o000o0o0) {
        OooOoO0(o000o0o0, 0L);
    }

    public void OooOoO(String str) {
    }

    public void OooOoO0(o000O0O0<JSONObject> o000o0o0, long j) {
        new o000(this.Ooooo00).OooOOO(this).OooO0Oo("https://graph.facebook.com/me", JSONObject.class, j, o000o0o0);
    }

    public String Oooo0() {
        return this.OooooO0;
    }

    public o000O00O Oooo0o(String str) {
        this.OooooOo = str;
        return this;
    }

    public boolean Oooo0o0() {
        if (o00Ooo == null) {
            Intent intent = new Intent();
            intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
            o00Ooo = Boolean.valueOf(OoooOOO(this.Ooooo00, intent));
        }
        return o00Ooo.booleanValue();
    }

    public void Oooo0oO(int i, int i2, Intent intent) {
        o00O000.OooOO0("on result", Integer.valueOf(i2));
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra("error");
            if (stringExtra == null) {
                stringExtra = intent.getStringExtra("error_type");
            }
            if (stringExtra != null) {
                o00O000.OooOO0("error", stringExtra);
                if (stringExtra.equals("service_disabled") || stringExtra.equals("AndroidAuthKillSwitchException")) {
                    OoooOOo();
                    return;
                }
                String stringExtra2 = intent.getStringExtra("error_description");
                o00O000.OooOO0("fb error", stringExtra2);
                Log.e("fb error", stringExtra2);
                Oooo000(stringExtra2);
                return;
            }
            String stringExtra3 = intent.getStringExtra("access_token");
            this.OooooO0 = stringExtra3;
            o00O000.OooOO0("onComplete", stringExtra3);
            String str = this.OooooO0;
            if (str != null) {
                o000oOoO(str, this.OooooOO);
                this.Oooooo0 = false;
                OooOoO(this.OooooO0);
                OooOO0O(this.Ooooo00);
                return;
            }
        } else if (i2 != 0) {
            return;
        }
        OooOooo();
    }

    public o000O00O OoooO00(int i) {
        this.OooooOo = this.Ooooo00.getString(i);
        return this;
    }

    public o000O00O OoooO0O(int i) {
        this.Oooooo = true;
        this.OoooooO = i;
        return this;
    }
}
