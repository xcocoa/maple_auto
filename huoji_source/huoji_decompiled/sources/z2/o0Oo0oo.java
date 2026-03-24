package z2;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.volley.AuthFailureError;

/* JADX INFO: loaded from: classes.dex */
public class o0Oo0oo implements o0OO00O {
    private final AccountManager OooO00o;
    private final Account OooO0O0;
    private final String OooO0OO;
    private final boolean OooO0Oo;

    public o0Oo0oo(AccountManager accountManager, Account account, String str, boolean z) {
        this.OooO00o = accountManager;
        this.OooO0O0 = account;
        this.OooO0OO = str;
        this.OooO0Oo = z;
    }

    public o0Oo0oo(Context context, Account account, String str) {
        this(context, account, str, false);
    }

    public o0Oo0oo(Context context, Account account, String str, boolean z) {
        this(AccountManager.get(context), account, str, z);
    }

    @Override // z2.o0OO00O
    public String OooO00o() throws AuthFailureError {
        AccountManagerFuture<Bundle> authToken = this.OooO00o.getAuthToken(this.OooO0O0, this.OooO0OO, this.OooO0Oo, null, null);
        try {
            Bundle result = authToken.getResult();
            String string = null;
            if (authToken.isDone() && !authToken.isCancelled()) {
                if (result.containsKey("intent")) {
                    throw new AuthFailureError((Intent) result.getParcelable("intent"));
                }
                string = result.getString("authtoken");
            }
            if (string != null) {
                return string;
            }
            throw new AuthFailureError("Got null auth token for type: " + this.OooO0OO);
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    @Override // z2.o0OO00O
    public void OooO0O0(String str) {
        this.OooO00o.invalidateAuthToken(this.OooO0O0.type, str);
    }

    public Account OooO0OO() {
        return this.OooO0O0;
    }
}
