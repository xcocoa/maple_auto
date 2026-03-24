package z2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.Html;
import java.util.Locale;
import org.json.JSONObject;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
public class o00oOoo {
    public static final int OooOOO = 0;
    public static final int OooOOOO = 1;
    public static final int OooOOOo = 2;
    private static PackageInfo OooOOo = null;
    private static ApplicationInfo OooOOo0 = null;
    private static final String OooOOoo = "aqs.skip";
    private static final String OooOo00 = "•";
    private Activity OooO00o;
    private o000 OooO0O0;
    private String OooO0o;
    private String OooO0o0;
    private boolean OooO0oO;
    private int OooO0oo;
    private String OooOO0;
    private boolean OooOO0O;
    private boolean OooOO0o;
    private long OooO = 720000;
    private int OooOOO0 = 0;
    private OooO00o OooO0OO = new OooO00o(this, null);
    private String OooO0Oo = Locale.getDefault().toString();

    public class OooO00o implements DialogInterface.OnClickListener, Html.TagHandler {
        private OooO00o() {
        }

        public /* synthetic */ OooO00o(o00oOoo o00oooo, OooO00o oooO00o) {
            this();
        }

        private void OooO00o(String str, JSONObject jSONObject, o000O o000o) {
            if (o00oOoo.this.OooOO0o) {
                return;
            }
            o00oOoo.this.OooOO0o = true;
            o00oOoo.this.OooO0oo = 0;
            o00oOoo.this.OooOOOO(str, jSONObject, o000o);
        }

        public void OooO0O0(String str, String str2, o000O o000o) {
            if (str2 == null || str2.length() <= 1000) {
                return;
            }
            String strOooOoO0 = o00oOoo.this.OooOoO0();
            o000O0O0 o000o0o0 = new o000O0O0();
            o000o0o0.url(strOooOoO0).type(JSONObject.class).handler(this, "marketCb");
            o000o0o0.param(com.tramini.plugin.a.f.a.b, str2);
            o00oOoo.this.OooO0O0.o0000o(o00oOoo.this.OooO0oo).OooO0OO(o000o0o0);
        }

        public void OooO0OO(String str, JSONObject jSONObject, o000O o000o) {
            if (o00oOoo.this.OooO00o.isFinishing()) {
                return;
            }
            if (jSONObject != null) {
                String strOptString = jSONObject.optString("status");
                if ("1".equals(strOptString)) {
                    if (jSONObject.has("dialog")) {
                        OooO00o(str, jSONObject, o000o);
                    }
                    if (!o00oOoo.this.OooOO0O && jSONObject.optBoolean("fetch", false) && o000o.OooOoO() == 1) {
                        o00oOoo.this.OooOO0O = true;
                        String strOptString2 = jSONObject.optString("marketUrl", null);
                        o000O0O0 o000o0o0 = new o000O0O0();
                        o000o0o0.url(strOptString2).type(String.class).handler(this, "detailCb");
                        o00oOoo.this.OooO0O0.o0000o(o00oOoo.this.OooO0oo).OooO0OO(o000o0o0);
                        return;
                    }
                    return;
                }
                if ("0".equals(strOptString)) {
                    o000o.OooOoo();
                    return;
                }
            }
            OooO00o(str, jSONObject, o000o);
        }

        @Override // android.text.Html.TagHandler
        public void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
            String str2;
            if ("li".equals(str)) {
                if (z) {
                    str2 = "  ";
                    editable.append("  ");
                    editable.append(o00oOoo.OooOo00);
                } else {
                    str2 = "\n";
                }
                editable.append((CharSequence) str2);
            }
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Activity activity;
            String str;
            if (i == -3) {
                o00oOoo.Oooo0o0(o00oOoo.this.OooO00o, o00oOoo.this.OooOO0);
                return;
            }
            if (i == -2) {
                activity = o00oOoo.this.OooO00o;
                str = o00oOoo.this.OooO0o;
            } else {
                if (i != -1) {
                    return;
                }
                activity = o00oOoo.this.OooO00o;
                str = o00oOoo.this.OooO0o0;
            }
            o00oOoo.Oooo000(activity, str);
        }
    }

    public o00oOoo(Activity activity) {
        this.OooO00o = activity;
        this.OooO0O0 = new o000(activity);
        String strOooOo0o = OooOo0o();
        this.OooO0o0 = strOooOo0o;
        this.OooO0o = strOooOo0o;
    }

    private Drawable OooOOoo() {
        return OooOo0().loadIcon(this.OooO00o.getPackageManager());
    }

    private PackageInfo OooOo() {
        if (OooOOo == null) {
            try {
                OooOOo = this.OooO00o.getPackageManager().getPackageInfo(OooOo00(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return OooOOo;
    }

    private ApplicationInfo OooOo0() {
        if (OooOOo0 == null) {
            OooOOo0 = this.OooO00o.getApplicationInfo();
        }
        return OooOOo0;
    }

    private String OooOo00() {
        return OooOo0().packageName;
    }

    private String OooOo0O() {
        return "https://androidquery.appspot.com";
    }

    private String OooOo0o() {
        return "market://details?id=" + OooOo00();
    }

    private static String OooOoO(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(OooOOoo, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String OooOoO0() {
        String str = String.valueOf(OooOo0O()) + "/api/market?app=" + OooOo00() + "&locale=" + this.OooO0Oo + "&version=" + OooOoOO() + "&code=" + OooOoo0() + "&aq=" + o00O00.OooO00o;
        if (!this.OooO0oO) {
            return str;
        }
        return String.valueOf(str) + "&force=true";
    }

    private String OooOoOO() {
        return OooOo().versionName;
    }

    private boolean OooOoo() {
        return !this.OooO00o.isFinishing();
    }

    private int OooOoo0() {
        return OooOo().versionCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean Oooo000(Activity activity, String str) {
        if (str == null) {
            return false;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean Oooo00O(String str, int i) {
        if (str.equals(OooOoO(this.OooO00o))) {
            return false;
        }
        String strOooOoOO = OooOoOO();
        int iOooOoo0 = OooOoo0();
        if (strOooOoOO.equals(str) || iOooOoo0 > i) {
            return false;
        }
        return Oooo0OO(strOooOoOO, str, this.OooOOO0);
    }

    private static String Oooo00o(String str) {
        return "<small>" + str + "</small>";
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0050 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean Oooo0OO(String str, String str2, int i) {
        if (str.equals(str2)) {
            return false;
        }
        try {
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            if (strArrSplit.length >= 3 && strArrSplit2.length >= 3) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return true;
                        }
                    }
                    return strArrSplit[strArrSplit.length - 3].equals(strArrSplit2[strArrSplit2.length - 3]);
                }
                if (!strArrSplit[strArrSplit.length - 1].equals(strArrSplit2[strArrSplit2.length - 1])) {
                    return true;
                }
                if (!strArrSplit[strArrSplit.length - 2].equals(strArrSplit2[strArrSplit2.length - 2])) {
                    return true;
                }
                if (strArrSplit[strArrSplit.length - 3].equals(strArrSplit2[strArrSplit2.length - 3])) {
                }
            }
            return true;
        } catch (Exception e) {
            o00O000.OoooO0O(e);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Oooo0o0(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(OooOOoo, str).commit();
    }

    public void OooOOOO(String str, JSONObject jSONObject, o000O o000o) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("version", "0");
        int iOptInt = jSONObject.optInt("code", 0);
        o00O000.OooOO0("version", String.valueOf(OooOoOO()) + "->" + strOptString + ":" + OooOoo0() + "->" + iOptInt);
        o00O000.OooOO0("outdated", Boolean.valueOf(Oooo00O(strOptString, iOptInt)));
        if (this.OooO0oO || Oooo00O(strOptString, iOptInt)) {
            Oooo0o(jSONObject);
        }
    }

    public void OooOOOo() {
        String strOooOoO0 = OooOoO0();
        o000O0O0 o000o0o0 = new o000O0O0();
        o000o0o0.url(strOooOoO0).type(JSONObject.class).handler(this.OooO0OO, "marketCb").fileCache(!this.OooO0oO).expire(this.OooO);
        this.OooO0O0.o0000o(this.OooO0oo).OooO0OO(o000o0o0);
    }

    public o00oOoo OooOOo(boolean z) {
        this.OooO0oO = z;
        return this;
    }

    public o00oOoo OooOOo0(long j) {
        this.OooO = j;
        return this;
    }

    public o00oOoo OooOooO(int i) {
        this.OooOOO0 = i;
        return this;
    }

    public o00oOoo OooOooo(String str) {
        this.OooO0Oo = str;
        return this;
    }

    public o00oOoo Oooo0(int i) {
        this.OooO0oo = i;
        return this;
    }

    public o00oOoo Oooo0O0(String str) {
        this.OooO0o0 = str;
        return this;
    }

    public void Oooo0o(JSONObject jSONObject) {
        if (jSONObject != null && this.OooOO0 == null && OooOoo()) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("dialog");
            String strOptString = jSONObjectOptJSONObject.optString("update", "Update");
            String strOptString2 = jSONObjectOptJSONObject.optString("skip", "Skip");
            String strOptString3 = jSONObjectOptJSONObject.optString("rate", "Rate");
            String strOptString4 = jSONObjectOptJSONObject.optString("wbody", "");
            String strOptString5 = jSONObjectOptJSONObject.optString("title", "Update Available");
            o00O000.OooOO0("wbody", strOptString4);
            this.OooOO0 = jSONObject.optString("version", null);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this.OooO00o).setIcon(OooOOoo()).setTitle(strOptString5).setPositiveButton(strOptString3, this.OooO0OO).setNeutralButton(strOptString2, this.OooO0OO).setNegativeButton(strOptString, this.OooO0OO).create();
            alertDialogCreate.setMessage(Html.fromHtml(Oooo00o(strOptString4), null, this.OooO0OO));
            this.OooO0O0.o000O0oo(alertDialogCreate);
        }
    }

    public o00oOoo Oooo0oO(String str) {
        this.OooO0o = str;
        return this;
    }
}
