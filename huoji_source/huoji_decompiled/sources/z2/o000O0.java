package z2;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public class o000O0 extends o000Oo0 implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
    private AccountManager OoooOoo;
    private Account Ooooo00;
    private String Ooooo0o;
    private Activity OooooO0;
    private String OooooOO;
    private Account[] OooooOo;
    private String Oooooo0;

    public class OooO00o extends AsyncTask<String, String, Bundle> {
        private OooO00o() {
        }

        public /* synthetic */ OooO00o(o000O0 o000o0, OooO00o oooO00o) {
            this();
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Bundle doInBackground(String... strArr) {
            try {
                return o000O0.this.OoooOoo.getAuthToken(o000O0.this.Ooooo00, o000O0.this.Ooooo0o, (Bundle) null, o000O0.this.OooooO0, (AccountManagerCallback<Bundle>) null, (Handler) null).getResult();
            } catch (AuthenticatorException e) {
                e = e;
                o00O000.OooOO0O(e);
                return null;
            } catch (OperationCanceledException unused) {
                return null;
            } catch (Exception e2) {
                e = e2;
                o00O000.OooOO0O(e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bundle bundle) {
            if (bundle == null || !bundle.containsKey("authtoken")) {
                o000O0 o000o0 = o000O0.this;
                o000o0.OooO0oO(o000o0.OooooO0, -102, "rejected");
            } else {
                o000O0.this.Oooooo0 = bundle.getString("authtoken");
                o000O0 o000o02 = o000O0.this;
                o000o02.OooOO0O(o000o02.OooooO0);
            }
        }
    }

    public o000O0(Activity activity, String str, String str2) {
        str2 = o00O00.OooOoo0.equals(str2) ? OooOo00(activity) : str2;
        this.OooooO0 = activity;
        this.Ooooo0o = str.substring(2);
        this.OooooOO = str2;
        this.OoooOoo = AccountManager.get(activity);
    }

    private void OooOOo() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.OooooO0);
        Account[] accountsByType = this.OoooOoo.getAccountsByType("com.google");
        this.OooooOo = accountsByType;
        int length = accountsByType.length;
        if (length == 1) {
            OooOOoo(accountsByType[0]);
            return;
        }
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = this.OooooOo[i].name;
        }
        builder.setItems(strArr, this);
        builder.setOnCancelListener(this);
        new o000(this.OooooO0).o000O0oo(builder.create());
    }

    private void OooOOoo(Account account) {
        this.Ooooo00 = account;
        new OooO00o(this, null).execute(new String[0]);
    }

    public static String OooOo00(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(o00O00.OooOoo0, null);
    }

    public static void OooOo0O(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(o00O00.OooOoo0, str).commit();
    }

    @Override // z2.o000Oo0
    public void OooO0O0(o000OO0O<?, ?> o000oo0o, HttpRequest httpRequest) {
        httpRequest.addHeader("Authorization", "GoogleLogin auth=" + this.Oooooo0);
    }

    @Override // z2.o000Oo0
    public void OooO0OO() {
        if (this.OooooOO == null) {
            OooOOo();
            return;
        }
        for (Account account : this.OoooOoo.getAccountsByType("com.google")) {
            if (this.OooooOO.equals(account.name)) {
                OooOOoo(account);
                return;
            }
        }
    }

    @Override // z2.o000Oo0
    public boolean OooO0o(o000OO0O<?, ?> o000oo0o, o000O o000o) {
        int iOooOO0o = o000o.OooOO0o();
        return iOooOO0o == 401 || iOooOO0o == 403;
    }

    @Override // z2.o000Oo0
    public boolean OooO0o0() {
        return this.Oooooo0 != null;
    }

    @Override // z2.o000Oo0
    public String OooO0oo(String str) {
        return String.valueOf(str) + "#" + this.Oooooo0;
    }

    @Override // z2.o000Oo0
    public boolean OooOO0(o000OO0O<?, ?> o000oo0o) {
        this.OoooOoo.invalidateAuthToken(this.Ooooo00.type, this.Oooooo0);
        try {
            String strBlockingGetAuthToken = this.OoooOoo.blockingGetAuthToken(this.Ooooo00, this.Ooooo0o, true);
            this.Oooooo0 = strBlockingGetAuthToken;
            o00O000.OooOO0("re token", strBlockingGetAuthToken);
        } catch (Exception e) {
            o00O000.OooOO0O(e);
            this.Oooooo0 = null;
        }
        return this.Oooooo0 != null;
    }

    public String OooOo0() {
        return this.Ooooo0o;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        OooO0oO(this.OooooO0, -102, com.anythink.expressad.d.a.b.dO);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Account account = this.OooooOo[i];
        o00O000.OooOO0("acc", account.name);
        OooOo0O(this.OooooO0, account.name);
        OooOOoo(account);
    }
}
