package com.didi.virtualapk.delegate;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class StubActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (launchIntentForPackage == null) {
            launchIntentForPackage = new Intent("android.intent.action.MAIN");
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
            launchIntentForPackage.setPackage(getPackageName());
            ResolveInfo resolveInfoResolveActivity = getPackageManager().resolveActivity(launchIntentForPackage, 0);
            if (resolveInfoResolveActivity != null) {
                launchIntentForPackage.setClassName(this, resolveInfoResolveActivity.activityInfo.name);
            }
        }
        startActivity(launchIntentForPackage);
        finish();
    }
}
