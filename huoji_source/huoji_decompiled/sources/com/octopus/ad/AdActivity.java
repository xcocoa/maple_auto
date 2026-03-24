package com.octopus.ad;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Display;
import android.view.Menu;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.octopus.ad.internal.a.c;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.utilities.DeviceInfo;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.WebviewUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class AdActivity extends Activity {
    public static boolean a;
    public static Class b = AdActivity.class;
    private a c;

    /* JADX INFO: renamed from: com.octopus.ad.AdActivity$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.none.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.landscape.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.portrait.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface a {
        void a();

        void b();

        void c();

        void d();

        void e();

        WebView f();
    }

    public enum b {
        portrait,
        landscape,
        none
    }

    public static Class a() {
        return b;
    }

    public static void a(Activity activity) {
        b(activity, activity.getResources().getConfiguration().orientation);
    }

    public static void a(Activity activity, int i) {
        b(activity, i);
    }

    public static void a(Activity activity, b bVar) {
        int i = activity.getResources().getConfiguration().orientation;
        int i2 = AnonymousClass2.a[bVar.ordinal()];
        if (i2 == 1) {
            activity.setRequestedOrientation(-1);
            return;
        }
        if (i2 == 2) {
            i = 2;
        } else if (i2 == 3) {
            i = 1;
        }
        b(activity, i);
    }

    public static void b(Activity activity) {
        activity.setRequestedOrientation(-1);
    }

    @TargetApi(9)
    private static void b(Activity activity, int i) {
        String str = DeviceInfo.getInstance().model;
        Locale locale = Locale.US;
        String upperCase = str.toUpperCase(locale);
        boolean z = DeviceInfo.getInstance().brand.toUpperCase(locale).equals("AMAZON") && (upperCase.equals("KFTT") || upperCase.equals("KFJWI") || upperCase.equals("KFJWA"));
        Display defaultDisplay = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay();
        if (i == 1) {
            int rotation = defaultDisplay.getRotation();
            if (rotation == 1 || rotation == 2) {
                activity.setRequestedOrientation(9);
                return;
            } else {
                activity.setRequestedOrientation(1);
                return;
            }
        }
        if (i == 2) {
            int rotation2 = defaultDisplay.getRotation();
            if (z ? rotation2 == 0 || rotation2 == 1 : !(rotation2 == 0 || rotation2 == 1)) {
                activity.setRequestedOrientation(8);
            } else {
                activity.setRequestedOrientation(0);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        a cVar;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("ACTIVITY_TYPE");
        if (TextUtils.isEmpty(stringExtra)) {
            HaoboLog.e(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adactivity_no_type));
            finish();
        } else {
            if ("INTERSTITIAL".equals(stringExtra)) {
                cVar = new com.octopus.ad.internal.a.b(this);
            } else if ("BROWSER".equals(stringExtra)) {
                cVar = new com.octopus.ad.internal.a.a(this);
            } else if (ServerResponse.EXTRAS_KEY_MRAID.equals(stringExtra)) {
                cVar = new c(this);
            } else if ("DOWNLOADBROWSER".equals(stringExtra)) {
                com.octopus.ad.internal.a.a aVar = new com.octopus.ad.internal.a.a(this);
                this.c = aVar;
                aVar.a();
                new Thread(new Runnable() { // from class: com.octopus.ad.AdActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i = 0;
                        while (i != 3) {
                            i++;
                            if (AdActivity.a) {
                                AdActivity.a = false;
                                AdActivity.this.finish();
                                i = 3;
                            }
                            SystemClock.sleep(500L);
                        }
                    }
                }).start();
            }
            this.c = cVar;
            cVar.a();
        }
        CookieSyncManager.createInstance(this);
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.startSync();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return false;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.c();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        a aVar = this.c;
        if (aVar != null) {
            WebviewUtil.onPause(aVar.f());
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.stopSync();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        a aVar = this.c;
        if (aVar != null) {
            WebviewUtil.onResume(aVar.f());
        }
        CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
        if (cookieSyncManager != null) {
            cookieSyncManager.startSync();
        }
        super.onResume();
    }
}
