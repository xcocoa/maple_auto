package com.cyjh.common.base.activity;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.fragment.app.FragmentActivity;
import com.cyjh.common.R;
import com.cyjh.common.receiver.NetworkStatusReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import z2.c5;
import z2.t3;
import z2.v3;

/* JADX INFO: loaded from: classes.dex */
public class BaseActivity extends FragmentActivity {
    private ProgressDialog OoooOoO;
    private NetworkStatusReceiver OoooOoo;
    private t3 Ooooo00;
    private ArrayList<OooO0O0> Ooooo0o = new ArrayList<>();

    public class OooO00o implements t3 {
        public OooO00o() {
        }

        @Override // z2.t3
        public void OooO00o(boolean z) {
            BaseActivity.this.OooO0OO(z);
            if (z) {
                return;
            }
            c5.OooO0O0(BaseActivity.this, R.string.network_off);
        }
    }

    public interface OooO0O0 {
        boolean onTouchEvent(MotionEvent motionEvent);
    }

    public void OooO0O0() {
        this.OoooOoO.dismiss();
    }

    public void OooO0OO(boolean z) {
    }

    public void OooO0Oo(OooO0O0 oooO0O0) {
        this.Ooooo0o.add(oooO0O0);
    }

    public void OooO0o(OooO0O0 oooO0O0) {
        this.Ooooo0o.remove(oooO0O0);
    }

    public void OooO0o0(Context context, int i, int i2) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        this.OoooOoO = progressDialog;
        progressDialog.setTitle(context.getString(i));
        this.OoooOoO.setProgressStyle(0);
        this.OoooOoO.setMessage(context.getString(i2));
        this.OoooOoO.setCanceledOnTouchOutside(false);
        this.OoooOoO.show();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Iterator<OooO0O0> it = this.Ooooo0o.iterator();
        while (it.hasNext()) {
            it.next().onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        v3.OooO().OooO00o(this);
        this.Ooooo00 = new OooO00o();
        NetworkStatusReceiver networkStatusReceiver = new NetworkStatusReceiver();
        this.OoooOoo = networkStatusReceiver;
        networkStatusReceiver.OooO00o(this.Ooooo00);
        registerReceiver(this.OoooOoo, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.OoooOoo);
        v3.OooO().OooO0o0(this);
    }
}
