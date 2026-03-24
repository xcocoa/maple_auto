package z2;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.net.HttpURLConnection;
import oauth.signpost.basic.DefaultOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthProvider;
import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public class o000O0Oo extends o000Oo0 {
    private static final String Oooooo = "https://api.twitter.com/oauth/access_token";
    private static final String Oooooo0 = "https://api.twitter.com/oauth/request_token";
    private static final String OoooooO = "https://api.twitter.com/oauth/authorize";
    private static final String Ooooooo = "twitter://callback";
    private static final String o00O0O = "aq.tw.secret";
    private static final String o0OoOo0 = "twitter://cancel";
    private static final String ooOO = "aq.tw.token";
    private Activity OoooOoo;
    private o000O0o Ooooo00;
    private CommonsHttpOAuthConsumer Ooooo0o;
    private CommonsHttpOAuthProvider OooooO0;
    private String OooooOO = Oooo000(ooOO);
    private String OooooOo;

    public class OooO00o extends AsyncTask<String, String, String> {
        private OooO00o() {
        }

        public /* synthetic */ OooO00o(o000O0Oo o000o0oo, OooO00o oooO00o) {
            this();
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String... strArr) {
            try {
                o000O0Oo.this.OooooO0.retrieveAccessToken(o000O0Oo.this.Ooooo0o, strArr[0]);
                return "";
            } catch (Exception e) {
                o00O000.OoooO0O(e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            if (str == null) {
                o000O0Oo.this.OooOooo();
                o000O0Oo.this.OooOoo0(null, null);
                return;
            }
            o000O0Oo o000o0oo = o000O0Oo.this;
            o000o0oo.OooooOO = o000o0oo.Ooooo0o.getToken();
            o000O0Oo o000o0oo2 = o000O0Oo.this;
            o000o0oo2.OooooOo = o000o0oo2.Ooooo0o.getTokenSecret();
            o00O000.OooOO0("token", o000O0Oo.this.OooooOO);
            o00O000.OooOO0("secret", o000O0Oo.this.OooooOo);
            o000O0Oo o000o0oo3 = o000O0Oo.this;
            o000o0oo3.Oooo0O0(o000O0Oo.ooOO, o000o0oo3.OooooOO, o000O0Oo.o00O0O, o000O0Oo.this.OooooOo);
            o000O0Oo.this.OooOoo();
            o000O0Oo o000o0oo4 = o000O0Oo.this;
            o000o0oo4.OooOO0O(o000o0oo4.OoooOoo);
            o000O0Oo o000o0oo5 = o000O0Oo.this;
            o000o0oo5.OooOoo0(o000o0oo5.OooooOo, o000O0Oo.this.OooooOO);
        }
    }

    public class OooO0O0 extends AsyncTask<String, String, String> implements DialogInterface.OnCancelListener, Runnable {
        private o000OO0O<?, ?> OoooOoO;

        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(o000O0Oo o000o0oo, OooO0O0 oooO0O0) {
            this();
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String... strArr) {
            try {
                return o000O0Oo.this.OooooO0.retrieveRequestToken(o000O0Oo.this.Ooooo0o, o000O0Oo.Ooooooo);
            } catch (Exception e) {
                o00O000.OoooO0O(e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            if (str == null) {
                o000O0Oo.this.OooOooo();
                return;
            }
            o000O0Oo.this.Ooooo00 = new o000O0o(o000O0Oo.this.OoooOoo, str, new OooO0OO(o000O0Oo.this, null));
            o000O0Oo.this.Ooooo00.setOnCancelListener(this);
            o000O0Oo.this.Oooo0();
            o000O0Oo.this.Ooooo00.OooO0OO();
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            o000O0Oo.this.OooOooo();
        }

        @Override // java.lang.Runnable
        public void run() {
            o000O0Oo.this.OooO0Oo(this.OoooOoO);
        }
    }

    public class OooO0OO extends WebViewClient {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(o000O0Oo o000o0oo, OooO0OO oooO0OO) {
            this();
        }

        private boolean OooO00o(String str) {
            if (str.startsWith(o000O0Oo.Ooooooo)) {
                String strOooOooO = o000O0Oo.this.OooOooO(str, "oauth_verifier");
                o000O0Oo.this.OooOoo();
                new OooO00o(o000O0Oo.this, null).execute(strOooOooO);
                return true;
            }
            if (!str.startsWith(o000O0Oo.o0OoOo0)) {
                return false;
            }
            o000O0Oo.this.OooOooo();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            o00O000.OooOO0("finished", str);
            super.onPageFinished(webView, str);
            o000O0Oo.this.Oooo0();
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
            o000O0Oo.this.OooOooo();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return OooO00o(str);
        }
    }

    public o000O0Oo(Activity activity, String str, String str2) {
        this.OoooOoo = activity;
        this.Ooooo0o = new CommonsHttpOAuthConsumer(str, str2);
        String strOooo000 = Oooo000(o00O0O);
        this.OooooOo = strOooo000;
        String str3 = this.OooooOO;
        if (str3 != null && strOooo000 != null) {
            this.Ooooo0o.setTokenWithSecret(str3, strOooo000);
        }
        this.OooooO0 = new CommonsHttpOAuthProvider(Oooooo0, Oooooo, OoooooO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOoo() {
        if (this.Ooooo00 != null) {
            new o000(this.OoooOoo).OooOooO(this.Ooooo00);
            this.Ooooo00 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String OooOooO(String str, String str2) {
        return Uri.parse(str).getQueryParameter(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOooo() {
        OooOoo();
        OooO0oO(this.OoooOoo, UiMessage.CommandToUi.Command_Type.GET_ENABLED_VALUE, com.anythink.expressad.d.a.b.dO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo0() {
        if (this.Ooooo00 != null) {
            new o000(this.OoooOoo).o000O0oo(this.Ooooo00);
        }
    }

    private String Oooo000(String str) {
        return PreferenceManager.getDefaultSharedPreferences(this.OoooOoo).getString(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo0O0(String str, String str2, String str3, String str4) {
        PreferenceManager.getDefaultSharedPreferences(this.OoooOoo).edit().putString(str, str2).putString(str3, str4).commit();
    }

    @Override // z2.o000Oo0
    public void OooO00o(o000OO0O<?, ?> o000oo0o, HttpURLConnection httpURLConnection) {
        o00O000.OooOO0("apply token multipart", o000oo0o.getUrl());
        DefaultOAuthConsumer defaultOAuthConsumer = new DefaultOAuthConsumer(this.Ooooo0o.getConsumerKey(), this.Ooooo0o.getConsumerSecret());
        defaultOAuthConsumer.setTokenWithSecret(this.Ooooo0o.getToken(), this.Ooooo0o.getTokenSecret());
        try {
            defaultOAuthConsumer.sign(httpURLConnection);
        } catch (Exception e) {
            o00O000.OoooO0O(e);
        }
    }

    @Override // z2.o000Oo0
    public void OooO0O0(o000OO0O<?, ?> o000oo0o, HttpRequest httpRequest) {
        o00O000.OooOO0("apply token", o000oo0o.getUrl());
        try {
            this.Ooooo0o.sign(httpRequest);
        } catch (Exception e) {
            o00O000.OoooO0O(e);
        }
    }

    @Override // z2.o000Oo0
    public void OooO0OO() {
        new OooO0O0(this, null).execute(new String[0]);
    }

    @Override // z2.o000Oo0
    public boolean OooO0o(o000OO0O<?, ?> o000oo0o, o000O o000o) {
        int iOooOO0o = o000o.OooOO0o();
        return iOooOO0o == 400 || iOooOO0o == 401;
    }

    @Override // z2.o000Oo0
    public boolean OooO0o0() {
        return (this.OooooOO == null || this.OooooOo == null) ? false : true;
    }

    @Override // z2.o000Oo0
    public boolean OooOO0(o000OO0O<?, ?> o000oo0o) {
        this.OooooOO = null;
        this.OooooOo = null;
        Oooo0O0(ooOO, null, o00O0O, null);
        new OooO0O0(this, null).OoooOoO = o000oo0o;
        o00O000.Oooo0o(o000oo0o);
        return false;
    }

    @Override // z2.o000Oo0
    public void OooOO0o() {
        this.OooooOO = null;
        this.OooooOo = null;
        CookieSyncManager.createInstance(this.OoooOoo);
        CookieManager.getInstance().removeAllCookie();
        Oooo0O0(ooOO, null, o00O0O, null);
    }

    public void OooOoOO(boolean z) {
        String str;
        String str2;
        if (z || (str = this.OooooOO) == null || (str2 = this.OooooOo) == null) {
            OooO0OO();
        } else {
            OooOoo0(str2, str);
        }
    }

    public void OooOoo0(String str, String str2) {
    }

    public String Oooo00O() {
        return this.OooooOo;
    }

    public String Oooo00o() {
        return this.OooooOO;
    }
}
