package com.anythink.expressad.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.OrientationEventListener;
import android.view.WindowInsets;
import android.view.WindowManager;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.anythink.expressad.foundation.f.b;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public abstract class ATBaseActivity extends Activity {
    private static final String a = "ATBaseActivity";
    private OrientationEventListener b;
    private Display c;
    private int d = -1;

    /* JADX INFO: renamed from: com.anythink.expressad.activity.ATBaseActivity$2, reason: invalid class name */
    public class AnonymousClass2 extends OrientationEventListener {
        public AnonymousClass2(Context context) {
            super(context, 1);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0014 A[PHI: r0
          0x0014: PHI (r0v3 int) = (r0v1 int), (r0v0 int) binds: [B:15:0x0029, B:8:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.view.OrientationEventListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void onOrientationChanged(int i) {
            int iD = ATBaseActivity.this.d();
            if (iD < 0) {
                iD = 0;
            }
            int i2 = 1;
            if (iD != 1 || ATBaseActivity.this.d == 1) {
                i2 = 2;
                if (iD == 3 && ATBaseActivity.this.d != 2) {
                    ATBaseActivity.this.d = i2;
                } else {
                    if (iD != 0 || ATBaseActivity.this.d == 3) {
                        if (iD != 2 || ATBaseActivity.this.d == 4) {
                            return;
                        }
                        ATBaseActivity.this.d = 4;
                        ATBaseActivity.this.a();
                        return;
                    }
                    ATBaseActivity.this.d = 3;
                }
            }
            ATBaseActivity.this.a();
        }
    }

    private void b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mCalled");
            declaredField.setAccessible(true);
            declaredField.setBoolean(this, true);
        } catch (Throwable unused) {
            finish();
        }
    }

    private void c() {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this);
        this.b = anonymousClass2;
        if (anonymousClass2.canDetectOrientation()) {
            this.b.enable();
        } else {
            this.b.disable();
            this.b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        if (this.c == null) {
            this.c = Build.VERSION.SDK_INT >= 30 ? getDisplay() : ((WindowManager) getSystemService("window")).getDefaultDisplay();
        }
        Display display = this.c;
        if (display == null) {
            return -1;
        }
        try {
            return display.getRotation();
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static /* synthetic */ void d(ATBaseActivity aTBaseActivity) {
        AnonymousClass2 anonymousClass2 = aTBaseActivity.new AnonymousClass2(aTBaseActivity);
        aTBaseActivity.b = anonymousClass2;
        if (anonymousClass2.canDetectOrientation()) {
            aTBaseActivity.b.enable();
        } else {
            aTBaseActivity.b.disable();
            aTBaseActivity.b = null;
        }
    }

    private void e() {
        try {
            if (Build.VERSION.SDK_INT < 19) {
                getWindow().getDecorView().setSystemUiVisibility(2);
            } else {
                getWindow().addFlags(67108864);
                getWindow().getDecorView().setSystemUiVisibility(4098);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a() {
        getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.anythink.expressad.activity.ATBaseActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                int safeInsetRight;
                int safeInsetTop;
                int i;
                DisplayCutout displayCutout;
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 23) {
                        WindowInsets rootWindowInsets = ATBaseActivity.this.getWindow().getDecorView().getRootWindowInsets();
                        int i3 = -1;
                        int i4 = 0;
                        if (rootWindowInsets == null || i2 < 28 || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
                            safeInsetRight = 0;
                            safeInsetTop = 0;
                            i = 0;
                        } else {
                            int safeInsetLeft = displayCutout.getSafeInsetLeft();
                            safeInsetRight = displayCutout.getSafeInsetRight();
                            safeInsetTop = displayCutout.getSafeInsetTop();
                            int safeInsetBottom = displayCutout.getSafeInsetBottom();
                            StringBuilder sb = new StringBuilder("NOTCH Left:");
                            sb.append(safeInsetLeft);
                            sb.append(" Right:");
                            sb.append(safeInsetRight);
                            sb.append(" Top:");
                            sb.append(safeInsetTop);
                            sb.append(" Bottom:");
                            sb.append(safeInsetBottom);
                            int iD = ATBaseActivity.this.d();
                            if (ATBaseActivity.this.d == -1) {
                                ATBaseActivity.this.d = iD == 0 ? 3 : iD == 1 ? 1 : iD == 2 ? 4 : iD == 3 ? 2 : -1;
                                new StringBuilder().append(ATBaseActivity.this.d);
                            }
                            if (iD != 0) {
                                if (iD == 1) {
                                    i3 = 90;
                                } else if (iD == 2) {
                                    i3 = 180;
                                } else if (iD == 3) {
                                    i3 = SubsamplingScaleImageView.ORIENTATION_270;
                                }
                                i = safeInsetBottom;
                                i4 = safeInsetLeft;
                            } else {
                                i = safeInsetBottom;
                                i4 = safeInsetLeft;
                                i3 = 0;
                            }
                        }
                        ATBaseActivity.this.a(i3, i4, safeInsetRight, safeInsetTop, i);
                        if (ATBaseActivity.this.b == null) {
                            ATBaseActivity.d(ATBaseActivity.this);
                        }
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
        }, 500L);
    }

    public abstract void a(int i, int i2, int i3, int i4, int i5);

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().addFlags(512);
            e();
            d();
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                getWindow().setAttributes(attributes);
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        OrientationEventListener orientationEventListener = this.b;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
            this.b = null;
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                try {
                    super.onResume();
                } catch (Throwable unused) {
                    finish();
                }
            } catch (Throwable unused2) {
                Field declaredField = Activity.class.getDeclaredField("mCalled");
                declaredField.setAccessible(true);
                declaredField.setBoolean(this, true);
            }
        } else {
            super.onResume();
        }
        if (b.c) {
            return;
        }
        a();
        e();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        e();
    }
}
