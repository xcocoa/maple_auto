package com.cyjh.mobileanjian.screencap;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.cyjh.mobileanjian.screencap.TestActivity;

/* JADX INFO: loaded from: classes2.dex */
public class TestActivity extends Activity {
    private static TestActivity OoooOoO;

    private static void OooO00o() {
        TestActivity testActivity = OoooOoO;
        if (testActivity != null) {
            testActivity.finish();
            OoooOoO = null;
        }
    }

    private static void OooO0O0(Context context) {
        Intent intent = new Intent(context, (Class<?>) TestActivity.class);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean OooO0OO(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        OoooOoO = this;
        setFinishOnTouchOutside(false);
        findViewById(R.id.content).setOnTouchListener(new View.OnTouchListener() { // from class: z2.yf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return TestActivity.OooO0OO(view, motionEvent);
            }
        });
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
    }
}
