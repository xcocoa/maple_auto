package com.cyjh.mobileanjian.screencap;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class ForScreenShotActivity extends Activity {
    private static final String OoooOoO = "ForScreenShotActivity";
    public static final int OoooOoo = 32896;

    private void OooO00o() {
        if (Build.VERSION.SDK_INT >= 21) {
            startActivityForResult(((MediaProjectionManager) getSystemService("media_projection")).createScreenCaptureIntent(), OoooOoo);
        } else {
            Log.e(OoooOoO, "The API version is too low,required is >= 21.");
            finish();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 32896) {
            return;
        }
        if (i2 != -1 || intent == null) {
            OooO00o();
            setResult(0);
        } else {
            setResult(-1);
            ScreenShoterV3.getInstance().init(this, intent);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setDimAmount(0.0f);
        OooO00o();
    }
}
