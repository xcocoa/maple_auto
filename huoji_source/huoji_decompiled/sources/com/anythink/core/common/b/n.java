package com.anythink.core.common.b;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import androidx.appcompat.widget.ActivityChooserModel;
import com.anythink.core.api.ATCommonConfig;
import com.anythink.core.api.ATCustomAdapterConfig;
import com.anythink.core.api.ATDebuggerConfig;
import com.anythink.core.api.ATInitConfig;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATNetworkConfig;
import com.anythink.core.api.ATPrivacyConfig;
import com.anythink.core.api.ATSharedPlacementConfig;
import com.anythink.core.api.DeviceInfoCallback;
import com.anythink.core.api.IATAdFilter;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ay;
import com.anythink.core.common.o.v;
import com.anythink.core.common.s;
import com.anythink.core.common.t;
import com.anythink.core.common.u;
import com.anythink.core.common.w;
import com.anythink.core.common.x;
import dalvik.system.DexFile;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class n {
    public static final int a = 0;
    public static final int b = 1;
    private static volatile n j;
    private IExHandler A;
    private String G;
    private String H;
    private boolean J;
    private com.anythink.core.common.g.c L;
    private Location M;
    private JSONArray O;
    private List<String> P;
    private String R;
    private ATDebuggerConfig S;
    private boolean T;
    private ConcurrentHashMap<String, IATAdFilter> X;
    private ATPrivacyConfig Z;
    private ay aa;
    private String ad;
    public WeakReference<Activity> e;
    private int f;
    private Context k;
    private String l;
    private String m;
    private String o;
    private ConcurrentHashMap<String, ATCustomAdapterConfig> r;
    private String t;
    private BroadcastReceiver w;
    private String x;
    private String y;
    private String z;
    private final String g = "SDK.init";
    private final String h = "com.anythink.pd.ExHandler";
    private boolean i = false;
    private final Object v = new Object();
    private boolean C = false;
    private boolean D = false;
    private long E = 0;
    private long F = 0;
    private boolean K = false;
    private String N = "";
    private int U = 1;
    private boolean V = false;
    private boolean W = false;
    private String Y = "";
    private final Object ac = new Object();
    public volatile boolean c = false;
    public long d = 0;
    private Handler n = new Handler(Looper.getMainLooper());
    private ConcurrentHashMap<String, Map<String, Object>> q = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, Object> p = new ConcurrentHashMap<>();
    private final String B = File.separator + "anythink.test";
    private boolean I = true;
    private ConcurrentHashMap<String, List<String>> Q = new ConcurrentHashMap<>();
    private JSONObject u = new JSONObject();
    private long ab = System.currentTimeMillis();
    private final Map<String, Boolean> s = new ConcurrentHashMap(2);

    /* JADX INFO: renamed from: com.anythink.core.common.b.n$12, reason: invalid class name */
    public class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Toast.makeText(n.this.k, "There is a problem with the integrated resources of AnyThink SDK, please check whether you have followed the steps of the integration document.", 1).show();
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.b.n$13, reason: invalid class name */
    public class AnonymousClass13 extends BroadcastReceiver {
        public AnonymousClass13() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (com.anythink.core.common.o.i.a(context)) {
                n.a(new Runnable() { // from class: com.anythink.core.common.b.n.13.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        t.a().b();
                        s.a().b();
                    }
                });
                com.anythink.core.common.n.d.a().b();
                n nVar = n.this;
                nVar.a(context, nVar.o(), n.this.p());
            }
            if (TextUtils.equals(intent.getAction(), h.G)) {
                com.anythink.core.common.n.e.a(intent.getStringExtra(h.H));
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.b.n$14, reason: invalid class name */
    public class AnonymousClass14 implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ String b;

        public AnonymousClass14(Context context, String str) {
            this.a = context;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.a.getApplicationContext()).b(this.b);
            if (aVarB != null) {
                if (!aVarB.I()) {
                    com.anythink.core.common.q.a(n.this.k).a(aVarB);
                    w.a().a(aVarB.b());
                }
                if (!com.anythink.core.d.b.a(this.a.getApplicationContext()).a(this.b)) {
                    com.anythink.core.d.b.a(this.a.getApplicationContext());
                }
                com.anythink.core.common.i.e.a().a(aVarB);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.b.n$6, reason: invalid class name */
    public class AnonymousClass6 implements Runnable {
        public final /* synthetic */ ATInitConfig a;
        public final /* synthetic */ Context b;

        public AnonymousClass6(ATInitConfig aTInitConfig, Context context) {
            this.a = aTInitConfig;
            this.b = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x009c A[Catch: all -> 0x00db, TryCatch #1 {all -> 0x00db, blocks: (B:2:0x0000, B:4:0x0008, B:6:0x0020, B:21:0x0057, B:25:0x0074, B:29:0x008b, B:31:0x009c, B:32:0x00d0, B:20:0x0054, B:7:0x0025), top: B:39:0x0000 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void run() {
            Map<String, Object> requestParamMap;
            boolean zC;
            boolean zD;
            com.anythink.core.d.a aVarB;
            try {
                ATInitMediation initMediation = this.a.getInitMediation();
                if (initMediation != null) {
                    String networkName = initMediation.getNetworkName();
                    String strB = com.anythink.core.common.o.s.b(n.this.k, h.B, networkName, "");
                    if (TextUtils.isEmpty(strB)) {
                        requestParamMap = this.a.getRequestParamMap();
                        requestParamMap.put(ATInitMediation.KEY_LOCAL, Boolean.TRUE);
                    } else {
                        requestParamMap = com.anythink.core.common.o.i.c(strB);
                    }
                    boolean z = false;
                    try {
                        zC = q.a(this.b).c();
                    } catch (Throwable th) {
                        th = th;
                        zC = false;
                    }
                    try {
                        zD = q.a(this.b).d();
                        try {
                            initMediation.setUserDataConsent(this.b, zC, zD);
                        } catch (Throwable th2) {
                            th = th2;
                            th.printStackTrace();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        zD = false;
                        th.printStackTrace();
                        aVarB = com.anythink.core.d.b.a(this.b).b(n.this.l);
                        requestParamMap.put(h.p.c, Boolean.valueOf(aVarB.r() != 3));
                        boolean zB = com.anythink.core.common.o.h.b();
                        if (aVarB.s() == 2) {
                            z = true;
                        }
                        requestParamMap.put(h.p.d, Boolean.valueOf(z));
                        if (n.a().A()) {
                        }
                        initMediation.initSDK(n.this.k, requestParamMap, null);
                    }
                    aVarB = com.anythink.core.d.b.a(this.b).b(n.this.l);
                    requestParamMap.put(h.p.c, Boolean.valueOf(aVarB.r() != 3));
                    boolean zB2 = com.anythink.core.common.o.h.b();
                    if (aVarB.s() == 2 && zB2) {
                        z = true;
                    }
                    requestParamMap.put(h.p.d, Boolean.valueOf(z));
                    if (n.a().A()) {
                        Log.i("anythink", "pre init network: [" + networkName + "], params: " + new JSONObject(requestParamMap).toString() + ", gdpr: " + zC + ", in eu: " + zD);
                    }
                    initMediation.initSDK(n.this.k, requestParamMap, null);
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
        }
    }

    private n() {
    }

    private void N() {
        try {
            BroadcastReceiver broadcastReceiver = this.w;
            if (broadcastReceiver != null) {
                this.k.unregisterReceiver(broadcastReceiver);
                k.a(this.k).a(this.w);
            }
            this.w = null;
        } catch (Throwable unused) {
        }
        try {
            this.w = new AnonymousClass13();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction(h.G);
            this.k.registerReceiver(this.w, intentFilter);
            k.a(this.k).a(this.w, intentFilter);
        } catch (Throwable unused2) {
        }
    }

    private void O() {
        Throwable th;
        boolean zExists;
        boolean z = false;
        if (this.k != null) {
            try {
                zExists = new File(this.k.getExternalFilesDir(null), this.B).exists();
                if (!zExists) {
                    try {
                        zExists = new File(this.k.getFilesDir(), this.B).exists();
                    } catch (Throwable th2) {
                        th = th2;
                        th.printStackTrace();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                zExists = false;
            }
            z = zExists;
        }
        this.C = z;
    }

    private boolean P() {
        return this.I;
    }

    private long Q() {
        return this.ab;
    }

    private static long a(long j2) {
        Date date = new Date(j2);
        return new Date(date.getYear(), date.getMonth(), date.getDate()).getTime();
    }

    public static n a() {
        if (j == null) {
            synchronized (n.class) {
                if (j == null) {
                    j = new n();
                }
            }
        }
        return j;
    }

    private void a(Context context, ATNetworkConfig aTNetworkConfig) {
        if (aTNetworkConfig == null) {
            aTNetworkConfig = new ATNetworkConfig();
        }
        List<ATInitConfig> aTInitConfigList = aTNetworkConfig.getATInitConfigList();
        if (aTInitConfigList == null) {
            aTInitConfigList = new ArrayList<>(2);
        }
        try {
            if (v()) {
                aTInitConfigList.clear();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            aTInitConfigList = new ArrayList<>(2);
        }
        boolean z = false;
        this.K = aTInitConfigList.size() > 0;
        ATInitConfig aTInitConfig = null;
        if (Build.VERSION.SDK_INT != 29) {
            try {
                Constructor declaredConstructor = Class.forName("com.anythink.network.facebook.FacebookATInitConfig").asSubclass(ATInitConfig.class).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                ATInitConfig aTInitConfig2 = (ATInitConfig) declaredConstructor.newInstance(new Object[0]);
                try {
                    aTInitConfigList.add(0, aTInitConfig2);
                } catch (Throwable unused) {
                }
                aTInitConfig = aTInitConfig2;
            } catch (Throwable unused2) {
            }
        }
        for (ATInitConfig aTInitConfig3 : aTInitConfigList) {
            if (aTInitConfig3 != null) {
                if (aTInitConfig != null && TextUtils.equals(aTInitConfig.getClass().getSimpleName(), aTInitConfig3.getClass().getSimpleName())) {
                    if (!z) {
                        z = true;
                    }
                }
                a(new AnonymousClass6(aTInitConfig3, context));
            }
        }
    }

    public static void a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            Log.e("SDK.init", "setPrePlacementStrategy failed: path is null or empty.");
        } else {
            com.anythink.core.d.h.a(context.getApplicationContext()).h(str);
        }
    }

    public static void a(ATSharedPlacementConfig aTSharedPlacementConfig) {
        w.a().a(aTSharedPlacementConfig);
    }

    public static /* synthetic */ void a(n nVar) {
        Throwable th;
        boolean zExists;
        boolean z = false;
        if (nVar.k != null) {
            try {
                zExists = new File(nVar.k.getExternalFilesDir(null), nVar.B).exists();
                if (!zExists) {
                    try {
                        zExists = new File(nVar.k.getFilesDir(), nVar.B).exists();
                    } catch (Throwable th2) {
                        th = th2;
                        th.printStackTrace();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                zExists = false;
            }
            z = zExists;
        }
        nVar.C = z;
    }

    public static /* synthetic */ void a(n nVar, Context context) {
        long jCurrentTimeMillis = nVar.d;
        try {
            String strB = com.anythink.core.common.o.s.b(a().k, h.p, a().o() + "playRecord", "");
            if (!TextUtils.isEmpty(strB)) {
                JSONObject jSONObject = new JSONObject(strB);
                long jOptLong = jSONObject.optLong("start_time");
                long jOptLong2 = jSONObject.optLong("end_time");
                String strOptString = jSONObject.optString(e.c);
                int iOptInt = jSONObject.optInt(e.d);
                if (jCurrentTimeMillis != 0) {
                    com.anythink.core.common.n.e.a(iOptInt == 1 ? 4 : 2, jOptLong, jOptLong2, strOptString);
                    new StringBuilder("Create new psid, SDKContext.init to send playTime:").append((jOptLong2 - jOptLong) / 1000);
                } else {
                    try {
                        new StringBuilder("Psid is old, use pervioud statime,close before:").append((jOptLong2 - jOptLong) / 1000);
                        jCurrentTimeMillis = jOptLong;
                    } catch (Exception unused) {
                        jCurrentTimeMillis = jOptLong;
                        com.anythink.core.common.o.s.a(a().k, h.p, a().o() + "playRecord", "");
                    }
                }
                com.anythink.core.common.o.s.a(a().k, h.p, a().o() + "playRecord", "");
            }
        } catch (Exception unused2) {
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = com.anythink.core.common.o.s.a(context, h.p, h.v.j, (Long) 0L).longValue();
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new e(jCurrentTimeMillis));
    }

    public static /* synthetic */ void a(n nVar, Context context, ATNetworkConfig aTNetworkConfig) {
        if (aTNetworkConfig == null) {
            aTNetworkConfig = new ATNetworkConfig();
        }
        List<ATInitConfig> aTInitConfigList = aTNetworkConfig.getATInitConfigList();
        if (aTInitConfigList == null) {
            aTInitConfigList = new ArrayList<>(2);
        }
        try {
            if (nVar.v()) {
                aTInitConfigList.clear();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            aTInitConfigList = new ArrayList<>(2);
        }
        boolean z = false;
        nVar.K = aTInitConfigList.size() > 0;
        ATInitConfig aTInitConfig = null;
        if (Build.VERSION.SDK_INT != 29) {
            try {
                Constructor declaredConstructor = Class.forName("com.anythink.network.facebook.FacebookATInitConfig").asSubclass(ATInitConfig.class).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                ATInitConfig aTInitConfig2 = (ATInitConfig) declaredConstructor.newInstance(new Object[0]);
                try {
                    aTInitConfigList.add(0, aTInitConfig2);
                } catch (Throwable unused) {
                }
                aTInitConfig = aTInitConfig2;
            } catch (Throwable unused2) {
            }
        }
        for (ATInitConfig aTInitConfig3 : aTInitConfigList) {
            if (aTInitConfig3 != null) {
                if (aTInitConfig != null && TextUtils.equals(aTInitConfig.getClass().getSimpleName(), aTInitConfig3.getClass().getSimpleName())) {
                    if (!z) {
                        z = true;
                    }
                }
                a(nVar.new AnonymousClass6(aTInitConfig3, context));
            }
        }
    }

    public static void a(Runnable runnable) {
        com.anythink.core.common.o.b.b.a().a(runnable, 7, true);
    }

    public static boolean a(Context context, List<String> list) {
        boolean z = true;
        if (list == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            try {
            } catch (Throwable th) {
                sb.append(", error: ");
                sb.append(th.getMessage());
            }
            if (context.getPackageManager().queryIntentActivities(new Intent(context, Class.forName(str)), 131072).size() <= 0) {
                sb.append(", ");
                sb.append(str);
                z = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (z) {
            Log.i("anythink", "Activities : VERIFIED");
        } else {
            Log.e("anythink", "Activities : Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z;
    }

    private void b(Context context, String str, String str2) {
        a(context.getApplicationContext(), str, str2);
        a(new AnonymousClass14(context, str));
    }

    public static /* synthetic */ void b(n nVar, Context context) {
        try {
            Class<?> cls = Class.forName("com.anythink.network.adx.AdxATInitManager");
            Object objInvoke = null;
            try {
                objInvoke = cls.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
            } catch (Throwable unused) {
                Log.e("anythink", "Cannot instantiate " + cls.getName() + ", please check if SDK is imported");
            }
            if (objInvoke == null || !(objInvoke instanceof ATInitMediation) || nVar.a(context, (List<String>) ((ATInitMediation) objInvoke).getResourceStatus(), true) || !ATCommonConfig.isShowInitErrorTips) {
                return;
            }
            nVar.a(nVar.new AnonymousClass12(), 500L);
        } catch (Throwable unused2) {
        }
    }

    public static void b(Runnable runnable, long j2) {
        com.anythink.core.common.o.b.b.a().a(runnable, j2);
    }

    public static boolean b(Context context, List<String> list) {
        boolean z = true;
        if (list == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        PackageManager packageManager = context.getPackageManager();
        for (String str : list) {
            try {
            } catch (Throwable th) {
                sb.append(", error: ");
                sb.append(th.getMessage());
            }
            if (packageManager.queryIntentServices(new Intent(context, Class.forName(str)), 131072).size() <= 0) {
                sb.append(", ");
                sb.append(str);
                z = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (z) {
            Log.i("anythink", "Services : VERIFIED");
        } else {
            Log.e("anythink", "Services : Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z;
    }

    public static boolean b(Map<String, Boolean> map) {
        boolean z = true;
        if (map == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            if (!map.get(str).booleanValue()) {
                sb.append(", ");
                sb.append(str);
                z = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (z) {
            Log.i("anythink", "Dependence Plugin: VERIFIED");
        } else {
            Log.e("anythink", "Dependence Plugin: Missing ".concat(String.valueOf(sb)));
        }
        return z;
    }

    private void c(Context context) {
        try {
            Class<?> cls = Class.forName("com.anythink.network.adx.AdxATInitManager");
            Object objInvoke = null;
            try {
                objInvoke = cls.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
            } catch (Throwable unused) {
                Log.e("anythink", "Cannot instantiate " + cls.getName() + ", please check if SDK is imported");
            }
            if (objInvoke == null || !(objInvoke instanceof ATInitMediation) || a(context, (List<String>) ((ATInitMediation) objInvoke).getResourceStatus(), true) || !ATCommonConfig.isShowInitErrorTips) {
                return;
            }
            a(new AnonymousClass12(), 500L);
        } catch (Throwable unused2) {
        }
    }

    public static void c(Runnable runnable) {
        com.anythink.core.common.o.b.b.a().a(runnable, 2, true);
    }

    public static boolean c(Context context, List<String> list) {
        boolean z;
        boolean z3;
        if (list == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        PackageInfo packageInfo = null;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 8);
            z = true;
        } catch (Throwable th) {
            sb.append(", error: ");
            sb.append(th.getMessage());
            z = false;
        }
        if (packageInfo == null) {
            return false;
        }
        ProviderInfo[] providerInfoArr = packageInfo.providers;
        for (String str : list) {
            int length = providerInfoArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z3 = false;
                    break;
                }
                if (TextUtils.equals(providerInfoArr[i].name, str)) {
                    z3 = true;
                    break;
                }
                i++;
            }
            if (!z3) {
                sb.append(", ");
                sb.append(str);
                z = false;
            }
        }
        if (sb.length() > 2) {
            sb.delete(0, 2);
        }
        if (z) {
            Log.i("anythink", "Providers : VERIFIED");
        } else {
            Log.e("anythink", "Providers : Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r2.importance != 100) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean d(Context context) {
        try {
            Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo next = it.next();
                if (next.processName.equals(context.getPackageName())) {
                    break;
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean d(Context context, List<String> list) {
        boolean z = true;
        if (list == null || list.size() == 0) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String str = list.get(i);
                if (TextUtils.isEmpty(applicationInfo.metaData.getString(str))) {
                    sb.append(", \"");
                    sb.append(str);
                    sb.append("\"");
                    z = false;
                }
            }
            if (sb.length() > 2) {
                sb.delete(0, 2);
            }
            z3 = z;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (z3) {
            Log.i("anythink", "meta-data: VERIFIED");
        } else {
            Log.e("anythink", "meta-data: Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z3;
    }

    private void e(boolean z) {
        this.V = z;
    }

    private boolean e(Context context) {
        String strD = com.anythink.core.common.o.e.d(context);
        if (!TextUtils.isEmpty(strD) && strD.equals(this.R)) {
            return true;
        }
        String strF = com.anythink.core.common.o.e.f();
        if (!TextUtils.isEmpty(strF) && strF.equals(this.R)) {
            return true;
        }
        IExHandler iExHandlerB = a().b();
        return iExHandlerB != null && iExHandlerB.checkDebuggerDevice(context, this.R);
    }

    public static boolean e(Context context, List<String> list) {
        int size;
        boolean z;
        if (list == null || (size = list.size()) == 0) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                boolean z4 = true;
                for (int i = 0; i < size; i++) {
                    String str = list.get(i);
                    int length = strArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z = false;
                            break;
                        }
                        if (TextUtils.equals(str, strArr[i2])) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                    if (!z) {
                        if (sb.length() != 0) {
                            sb.append(", ");
                        }
                        sb.append(str);
                        z4 = false;
                    }
                }
                z3 = z4;
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    String str2 = list.get(i3);
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(str2);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (z3) {
            Log.i("anythink", "Permission: VERIFIED");
        } else {
            Log.e("anythink", "Permission: Missing " + sb.toString() + " declare in AndroidManifest");
        }
        return z3;
    }

    private void f(Context context) {
        long jCurrentTimeMillis = this.d;
        try {
            String strB = com.anythink.core.common.o.s.b(a().k, h.p, a().o() + "playRecord", "");
            if (!TextUtils.isEmpty(strB)) {
                JSONObject jSONObject = new JSONObject(strB);
                long jOptLong = jSONObject.optLong("start_time");
                long jOptLong2 = jSONObject.optLong("end_time");
                String strOptString = jSONObject.optString(e.c);
                int iOptInt = jSONObject.optInt(e.d);
                if (jCurrentTimeMillis != 0) {
                    com.anythink.core.common.n.e.a(iOptInt == 1 ? 4 : 2, jOptLong, jOptLong2, strOptString);
                    new StringBuilder("Create new psid, SDKContext.init to send playTime:").append((jOptLong2 - jOptLong) / 1000);
                } else {
                    try {
                        new StringBuilder("Psid is old, use pervioud statime,close before:").append((jOptLong2 - jOptLong) / 1000);
                        jCurrentTimeMillis = jOptLong;
                    } catch (Exception unused) {
                        jCurrentTimeMillis = jOptLong;
                        com.anythink.core.common.o.s.a(a().k, h.p, a().o() + "playRecord", "");
                    }
                }
                com.anythink.core.common.o.s.a(a().k, h.p, a().o() + "playRecord", "");
            }
        } catch (Exception unused2) {
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = com.anythink.core.common.o.s.a(context, h.p, h.v.j, (Long) 0L).longValue();
        }
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new e(jCurrentTimeMillis));
    }

    private static void g(Context context) {
        com.anythink.core.common.e.c.a().a(context);
    }

    public static boolean i(String str) {
        try {
            Class.forName(str);
            Log.i("anythink", "SDK: VERIFIED");
            return true;
        } catch (Throwable unused) {
            Log.i("anythink", "SDK: NOT VERIFIED");
            return false;
        }
    }

    public static void o(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "AdSourceId is empty";
        } else {
            try {
                if (Long.parseLong(str) == 0) {
                    Log.e("anythink", "AdSourceId can't set 0");
                    return;
                }
                return;
            } catch (Exception unused) {
                str2 = "AdSourceId '" + str + "' is not compliant";
            }
        }
        Log.e("anythink", str2);
    }

    public static /* synthetic */ boolean s(String str) {
        String strA = com.anythink.core.common.o.h.a();
        boolean z = !TextUtils.isEmpty(str) && str.startsWith(strA);
        if (z) {
            Log.i("anythink", "Adapter Version: VERIFIED");
        } else {
            Log.e("anythink", String.format("Adapter Version: The current Adapter version(%s) does not apply to the SDK version(%s).", str, strA));
        }
        return z;
    }

    private Map<String, Object> t(String str) {
        if (this.q == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.q.get(str);
    }

    private void u(String str) {
        this.l = str;
        com.anythink.core.common.o.s.a(this.k, h.p, h.q, str);
    }

    private void v(String str) {
        this.m = str;
        com.anythink.core.common.o.s.a(this.k, h.p, h.r, str);
    }

    @Deprecated
    private void w(String str) {
        this.R = str;
    }

    private String x(String str) {
        synchronized (this.v) {
            String strOptString = this.u.optString(str);
            if (!TextUtils.isEmpty(strOptString)) {
                return strOptString;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(": sessionid is empty.");
            String strX = x();
            String string = "";
            if (TextUtils.isEmpty(strX)) {
                strX = com.anythink.core.common.o.e.d(this.k) + com.anythink.core.common.o.e.f();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new Random().nextInt(10000000));
                string = sb2.toString();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strA = com.anythink.core.common.o.g.a(strX + str + string + jCurrentTimeMillis);
            try {
                this.u.put(str, strA);
            } catch (Exception unused) {
            }
            com.anythink.core.common.o.s.a(this.k, h.p, h.v.i, this.u.toString());
            if (!TextUtils.isEmpty(x())) {
                string = null;
            }
            com.anythink.core.common.n.e.a(str, "2", string, String.valueOf(jCurrentTimeMillis));
            return strA;
        }
    }

    private static boolean y(String str) {
        String strA = com.anythink.core.common.o.h.a();
        boolean z = !TextUtils.isEmpty(str) && str.startsWith(strA);
        if (z) {
            Log.i("anythink", "Adapter Version: VERIFIED");
        } else {
            Log.e("anythink", String.format("Adapter Version: The current Adapter version(%s) does not apply to the SDK version(%s).", str, strA));
        }
        return z;
    }

    public final boolean A() {
        return this.C || this.D;
    }

    public final com.anythink.core.common.g.c B() {
        if (this.L == null) {
            this.L = new com.anythink.core.common.k.d();
        }
        return this.L;
    }

    public final boolean C() {
        return this.V;
    }

    public final boolean D() {
        return this.W;
    }

    public final Context E() {
        WeakReference<Activity> weakReference = this.e;
        return (weakReference == null || weakReference.get() == null) ? this.k : this.e.get();
    }

    public final Activity F() {
        WeakReference<Activity> weakReference = this.e;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.e.get();
    }

    public final String G() {
        return this.Y;
    }

    public final boolean H() {
        return this.K;
    }

    public final ATPrivacyConfig I() {
        return this.Z;
    }

    public final ay J() {
        if (this.aa == null) {
            this.aa = new ay();
        }
        try {
            this.aa.a(com.anythink.core.common.o.e.t(a().k));
            this.aa.b(com.anythink.core.common.o.e.k());
            this.aa.c(com.anythink.core.common.o.e.m());
            this.aa.d(com.anythink.core.common.o.e.b(com.anythink.core.common.o.e.l()));
        } catch (Throwable unused) {
        }
        return this.aa;
    }

    public final void K() {
        this.ab = System.currentTimeMillis();
    }

    public final String L() {
        return this.ad;
    }

    public final boolean M() {
        return this.J;
    }

    public final synchronized long a(Context context, String str, int i) {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(context).b(str);
        String strB = com.anythink.core.common.o.s.b(context, h.p, h.v.h, "");
        String strB2 = com.anythink.core.common.o.s.b(context, h.p, h.v.i, "");
        long jLongValue = com.anythink.core.common.o.s.a(context, h.p, h.v.j, (Long) 0L).longValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jLongValue < 0) {
            jLongValue = 0;
        }
        if (jCurrentTimeMillis - jLongValue <= (i == 0 ? aVarB.R() : aVarB.D())) {
            new StringBuilder("psid updataTime<=").append(aVarB.R());
            this.t = strB;
            if (!TextUtils.isEmpty(strB2)) {
                synchronized (this.v) {
                    this.u = new JSONObject(strB2);
                }
            }
            new StringBuilder("psid :").append(this.t);
            return 0L;
        }
        new StringBuilder("psid updataTime>").append(aVarB.R());
        String strX = x();
        String strValueOf = "";
        if (TextUtils.isEmpty(strX)) {
            strX = com.anythink.core.common.o.e.d(context) + com.anythink.core.common.o.e.f();
            strValueOf = String.valueOf(new Random().nextInt(10000000));
        }
        this.t = com.anythink.core.common.o.g.a(strX + str + strValueOf + jCurrentTimeMillis);
        synchronized (this.v) {
            this.u = new JSONObject();
        }
        com.anythink.core.common.o.s.a(context, h.p, h.v.h, this.t);
        com.anythink.core.common.o.s.a(context, h.p, h.v.i, "");
        com.anythink.core.common.o.s.a(context, h.p, h.v.j, jCurrentTimeMillis);
        new StringBuilder("psid :").append(this.t);
        com.anythink.core.common.n.e.a((String) null, "1", strValueOf, String.valueOf(jCurrentTimeMillis));
        if (i == 0) {
            this.d = jCurrentTimeMillis;
        }
        return jCurrentTimeMillis;
    }

    public final void a(int i) {
        if (i == 2) {
            this.U = 2;
        } else {
            this.U = 1;
        }
    }

    public final void a(Activity activity) {
        WeakReference<Activity> weakReference = this.e;
        if (weakReference == null || weakReference.get() == null) {
            this.e = new WeakReference<>(activity);
        }
    }

    public final void a(Context context) {
        if (context == null) {
            Log.w("SDK.init", "ATSDK.setContext() is null!");
        } else {
            this.k = context;
        }
    }

    public final void a(final Context context, final DeviceInfoCallback deviceInfoCallback) {
        if (this.J) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.b.n.4
                @Override // java.lang.Runnable
                public final void run() {
                    com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(context).b(n.a().o());
                    String strH = aVarB != null ? aVarB.H() : "";
                    boolean z = true;
                    if (!TextUtils.isEmpty(strH)) {
                        try {
                            JSONObject jSONObject = new JSONObject(strH);
                            if (!jSONObject.isNull("a")) {
                                if (jSONObject.optInt("a") != 1) {
                                    z = false;
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        IExHandler iExHandlerB = n.a().b();
                        if (iExHandlerB != null) {
                            iExHandlerB.fillTestDeviceData(jSONObject2, aVarB);
                        }
                        jSONObject2.put("GAID", com.anythink.core.common.o.e.s(context));
                        jSONObject2.put("AndroidID", z ? com.anythink.core.common.o.e.d(context) : "");
                        jSONObject2.put("How to config TestMode", "Please visit the document center and learn more through: Integration(Basic) -> How To Test");
                        com.anythink.core.common.o.p.a("testModeDeviceInfo", jSONObject2.toString());
                        DeviceInfoCallback deviceInfoCallback2 = deviceInfoCallback;
                        if (deviceInfoCallback2 != null) {
                            deviceInfoCallback2.deviceInfo(jSONObject2.toString());
                        }
                    } catch (Throwable unused2) {
                    }
                }
            }, 2, true);
            return;
        }
        Log.e("anythink", "You should init SDK first.");
        if (deviceInfoCallback != null) {
            deviceInfoCallback.deviceInfo("You should init SDK first.");
        }
    }

    public final void a(Context context, String str, ATDebuggerConfig aTDebuggerConfig) {
        IExHandler iExHandlerB;
        if (context == null) {
            if (A()) {
                Log.e("SDK.init", "setDebuggerConfig fail, because context is null.");
                return;
            }
            return;
        }
        if (a().k == null) {
            a().a(context.getApplicationContext());
        }
        this.R = str;
        this.S = aTDebuggerConfig;
        String strD = com.anythink.core.common.o.e.d(context);
        boolean z = true;
        if (TextUtils.isEmpty(strD) || !strD.equals(this.R)) {
            String strF = com.anythink.core.common.o.e.f();
            if ((TextUtils.isEmpty(strF) || !strF.equals(this.R)) && ((iExHandlerB = a().b()) == null || !iExHandlerB.checkDebuggerDevice(context, this.R))) {
                z = false;
            }
        }
        this.T = z;
        if (TextUtils.isEmpty(this.R)) {
            if (A()) {
                Log.e("SDK.init", "Setting Debugger's device fail, because deviceId is empty.");
            }
            this.T = false;
        } else if (!this.T) {
            if (A()) {
                Log.e("SDK.init", "The incoming device id does not match the current device id, and the debugger mode cannot take effect.");
            }
        } else {
            if (A()) {
                Log.i("SDK.init", "Setting Debugger's device success.");
            }
            if (this.S == null || !A()) {
                return;
            }
            Log.i("SDK.init", "Debugger config is in effect now.");
        }
    }

    public final void a(final Context context, final String str, final String str2) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.b.n.3
            @Override // java.lang.Runnable
            public final void run() {
                if (com.anythink.core.d.b.a(context).a(str)) {
                    com.anythink.core.d.b.a(context).a(str, str2);
                }
            }
        }, 13);
    }

    public final synchronized void a(final Context context, final String str, String str2, final ATNetworkConfig aTNetworkConfig) {
        if (context == null) {
            return;
        }
        this.k = context.getApplicationContext();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (this.J) {
                return;
            }
            this.J = true;
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jLongValue = com.anythink.core.common.o.s.a(context, h.p, h.v.m, (Long) 0L).longValue();
                this.E = jLongValue;
                if (jLongValue == 0) {
                    this.E = jCurrentTimeMillis;
                    com.anythink.core.common.o.s.a(context, h.p, h.v.m, jCurrentTimeMillis);
                }
                this.F = ((a(jCurrentTimeMillis) - a(this.E)) / 86400000) + 1;
                this.d = 0L;
                com.anythink.core.a.a.a(context.getApplicationContext()).a();
                final Context applicationContext = context.getApplicationContext();
                a(applicationContext);
                this.l = str;
                com.anythink.core.common.o.s.a(this.k, h.p, h.q, str);
                this.m = str2;
                com.anythink.core.common.o.s.a(this.k, h.p, h.r, str2);
                this.V = com.anythink.core.common.o.i.a();
                com.anythink.core.common.e.c.a().a(context);
                try {
                    BroadcastReceiver broadcastReceiver = this.w;
                    if (broadcastReceiver != null) {
                        this.k.unregisterReceiver(broadcastReceiver);
                        k.a(this.k).a(this.w);
                    }
                    this.w = null;
                } catch (Throwable unused) {
                }
                try {
                    this.w = new AnonymousClass13();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    intentFilter.addAction(h.G);
                    this.k.registerReceiver(this.w, intentFilter);
                    k.a(this.k).a(this.w, intentFilter);
                } catch (Throwable unused2) {
                }
                a(new Runnable() { // from class: com.anythink.core.common.b.n.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            com.anythink.core.common.n.d.a().a(applicationContext);
                            n.this.a(applicationContext, str, 0);
                            n.a(n.this, context);
                            i.a(applicationContext).a();
                            n.a(n.this);
                            n.b(n.this, applicationContext);
                            com.anythink.core.common.a.l.a().b();
                            com.anythink.core.common.res.d.a(n.this.f()).b();
                            com.anythink.core.common.res.d.a(n.this.f());
                            com.anythink.core.common.res.d.c();
                        } catch (Exception unused3) {
                        }
                    }
                });
                a(new Runnable() { // from class: com.anythink.core.common.b.n.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.this.t();
                    }
                });
                a(new Runnable() { // from class: com.anythink.core.common.b.n.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.anythink.core.common.o.a().a(n.this.k);
                    }
                });
                ((Application) this.k).registerActivityLifecycleCallbacks(new f(d(this.k)));
                a(new Runnable() { // from class: com.anythink.core.common.b.n.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.anythink.core.common.o.e.q(applicationContext);
                    }
                }, com.anythink.expressad.exoplayer.f.a);
                a(new Runnable() { // from class: com.anythink.core.common.b.n.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.this.b();
                        if (n.this.A != null) {
                            n.this.A.initDeviceInfo(context);
                        }
                        com.anythink.core.d.h.a(applicationContext).a();
                        x.a(context);
                        com.anythink.core.common.d.a().a(context);
                        String strS = com.anythink.core.common.o.e.s(n.this.k);
                        if (TextUtils.isEmpty(strS)) {
                            return;
                        }
                        n.this.h(strS);
                    }
                });
                a(new Runnable() { // from class: com.anythink.core.common.b.n.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        n nVar = n.this;
                        n.a(nVar, nVar.k, aTNetworkConfig);
                    }
                });
                a(context.getApplicationContext(), str, str2);
                a(new AnonymousClass14(context, str));
            } catch (Exception e) {
                Log.e("SDK.init", "init failed: " + e.getMessage());
            }
        }
    }

    public final synchronized void a(Location location) {
        this.M = location;
    }

    public final void a(ATPrivacyConfig aTPrivacyConfig) {
        this.Z = aTPrivacyConfig;
    }

    public final void a(Runnable runnable, long j2) {
        if (j2 > 0 || Looper.getMainLooper() != Looper.myLooper()) {
            this.n.postDelayed(runnable, j2);
        } else {
            runnable.run();
        }
    }

    public final void a(String str) {
        this.o = str;
    }

    public final synchronized void a(String str, ATCustomAdapterConfig aTCustomAdapterConfig) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.r == null) {
            this.r = new ConcurrentHashMap<>();
        }
        if (aTCustomAdapterConfig == null) {
            this.r.remove(str);
        } else {
            this.r.put(str, aTCustomAdapterConfig);
        }
    }

    public final void a(final String str, final String str2, final String str3, final Map<String, Object> map) {
        if (!this.J) {
            Log.e("SDK.init", "SDK should be inited first!");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.e("SDK.init", "Please put placementId!");
            return;
        }
        final com.anythink.core.common.f fVarA = u.a().a(str, str3);
        if (fVarA != null) {
            final boolean zF = fVarA.f();
            final com.anythink.core.common.f.b bVarA = fVarA.a(this.k, false, false, map, (com.anythink.core.common.f.c) null);
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.b.n.5
                /* JADX WARN: Removed duplicated region for block: B:12:0x004b A[PHI: r1
                  0x004b: PHI (r1v5 com.anythink.core.common.f.h) = (r1v3 com.anythink.core.common.f.h), (r1v7 com.anythink.core.common.f.h) binds: [B:27:0x008e, B:11:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void run() {
                    com.anythink.core.common.f.h hVarA;
                    com.anythink.core.d.f fVarA2 = com.anythink.core.d.h.a(n.this.k).a(str);
                    String strG = fVarA.g();
                    String str4 = (TextUtils.isEmpty(str2) || !com.anythink.core.common.o.h.c(str2)) ? "" : str2;
                    com.anythink.core.common.f.b bVar = bVarA;
                    if (bVar != null) {
                        hVarA = bVar.h().V();
                        hVarA.g(1);
                        hVarA.B = str4;
                        if (w.a().a(fVarA2)) {
                            v.a(str, fVarA2, hVarA);
                        }
                    } else {
                        hVarA = v.a(TextUtils.isEmpty(strG) ? "" : strG, str, fVarA2, 0, 0, map, null);
                        hVarA.g(zF ? 3 : 2);
                        if (fVarA2 == null) {
                            hVarA.y(str3);
                        }
                        hVarA.B = str4;
                        if (w.a().a(fVarA2)) {
                        }
                    }
                    com.anythink.core.common.n.c.a(n.this.k).a(16, hVarA);
                }
            }, 2, true);
        } else {
            Log.e("SDK.init", "The \"" + str + "\" object has not been created yet!");
        }
    }

    public final void a(String str, List<String> list) {
        this.Q.put(str, list);
    }

    public final void a(String str, Map<String, Object> map) {
        if (map != null) {
            this.q.put(str, map);
        }
    }

    public final void a(String str, Map<String, Object> map, String... strArr) {
        com.anythink.core.common.f.h hVar;
        if (map == null || map.containsKey(ATInitMediation.KEY_LOCAL)) {
            return;
        }
        try {
            hVar = (com.anythink.core.common.f.h) map.get(h.p.h);
        } catch (Throwable unused) {
            hVar = null;
        }
        map.remove(h.p.h);
        String string = new JSONObject(map).toString();
        Log.e("anythink", "Mismatched initialization parameters! server params: [" + str + "], " + string);
        com.anythink.core.common.o.s.a(this.k, h.B, str, string);
        if (hVar == null || strArr == null) {
            return;
        }
        try {
            com.anythink.core.common.n.e.a(hVar, strArr[0], strArr.length > 1 ? strArr[1] : null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(List<String> list) {
        try {
            this.P = list;
            if (list == null || list.isEmpty()) {
                this.O = null;
            } else {
                this.O = new JSONArray((Collection) list);
            }
        } catch (Exception unused) {
        }
    }

    public final void a(Map<String, Object> map) {
        if (map != null && map.containsKey("channel")) {
            Object obj = map.get("channel");
            String string = obj != null ? obj.toString() : "";
            this.G = string;
            if (!com.anythink.core.common.o.h.a(string)) {
                this.G = null;
                map.remove("channel");
            }
        }
        if (map != null && map.containsKey("sub_channel")) {
            Object obj2 = map.get("sub_channel");
            String string2 = obj2 != null ? obj2.toString() : "";
            this.H = string2;
            if (!com.anythink.core.common.o.h.b(string2)) {
                this.H = null;
                map.remove("sub_channel");
            }
        }
        this.p.clear();
        if (map != null) {
            this.p.putAll(map);
        }
        if (!TextUtils.isEmpty(this.G)) {
            this.p.put("channel", this.G);
        }
        if (TextUtils.isEmpty(this.H)) {
            return;
        }
        this.p.put("sub_channel", this.H);
    }

    public final synchronized void a(boolean z) {
        this.N = z ? "1" : "2";
    }

    public final void a(String... strArr) {
        synchronized (this.s) {
            if (strArr != null) {
                for (String str : strArr) {
                    this.s.put(str, Boolean.TRUE);
                }
            } else {
                this.s.clear();
            }
        }
    }

    public final void a(String[] strArr, IATAdFilter iATAdFilter) {
        ConcurrentHashMap<String, IATAdFilter> concurrentHashMap = this.X;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        if (this.X == null) {
            this.X = new ConcurrentHashMap<>();
        }
        for (String str : strArr) {
            this.X.put(str, iATAdFilter);
        }
    }

    public final boolean a(Context context, List<String> list, boolean z) {
        if (list == null || list.size() == 0) {
            return true;
        }
        String str = "";
        boolean z3 = false;
        try {
            int size = list.size();
            int i = 0;
            boolean z4 = true;
            while (true) {
                if (i >= size) {
                    z3 = z4;
                    break;
                }
                String str2 = list.get(i);
                try {
                    if (TextUtils.isEmpty(str)) {
                        str = str2.split("_")[0] + "_*";
                    }
                    int identifier = TextUtils.isEmpty(this.ad) ? -1 : context.getResources().getIdentifier(str2, "layout", this.ad);
                    if (identifier <= 0) {
                        identifier = context.getResources().getIdentifier(str2, "layout", context.getPackageName());
                    }
                    if (identifier <= 0) {
                        break;
                    }
                    XmlResourceParser layout = null;
                    try {
                        layout = context.getResources().getLayout(identifier);
                    } finally {
                        try {
                            i++;
                        } finally {
                        }
                    }
                    while (true) {
                        int next = layout.next();
                        if (next == 1) {
                            break;
                        }
                        if (next == 2) {
                            if ("x".equalsIgnoreCase(layout.getName())) {
                                if (layout.getAttributeCount() == 0) {
                                    z4 = false;
                                    break;
                                }
                            } else if (layout.getAttributeCount() >= 0) {
                                break;
                            }
                            i++;
                        }
                    }
                    if (layout != null) {
                        layout.close();
                    }
                    i++;
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!z3) {
            Log.e("anythink", "Resource: The " + str + " resources are missing. If shrinkResources is enabled, the " + str + " resources must be added to the whitelist (keep.xml)");
        } else if (!z) {
            Log.i("anythink", "Resource: VERIFIED");
        }
        return z3;
    }

    public final ATCustomAdapterConfig b(String str) {
        if (this.r == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.r.get(str);
    }

    public final IExHandler b() {
        if (this.i) {
            return this.A;
        }
        synchronized (this.ac) {
            if (this.i) {
                return this.A;
            }
            try {
                Constructor declaredConstructor = Class.forName("com.anythink.pd.ExHandler").asSubclass(IExHandler.class).getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                this.A = (IExHandler) declaredConstructor.newInstance(new Object[0]);
            } catch (Exception unused) {
            }
            this.i = true;
            return this.A;
        }
    }

    public final void b(int i) {
        this.f = i;
    }

    public final void b(final Context context) {
        if (A()) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.b.n.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    Object objInvoke;
                    String strConcat;
                    AnonymousClass2 anonymousClass2 = this;
                    try {
                        ArrayList arrayList = new ArrayList();
                        Enumeration<String> enumerationEntries = new DexFile(context.getPackageCodePath()).entries();
                        while (enumerationEntries.hasMoreElements()) {
                            String strNextElement = enumerationEntries.nextElement();
                            if (strNextElement.contains("com.anythink.network") && strNextElement.contains("InitManager") && !strNextElement.contains("$")) {
                                arrayList.add(strNextElement);
                            }
                        }
                        Log.i("anythink", "********************************** Network Integration Status *************************************");
                        if (arrayList.size() != 0) {
                            Log.i("anythink", "----------------------------------------");
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            try {
                                Class<?> cls = Class.forName((String) it.next());
                                z = false;
                                objInvoke = null;
                                try {
                                    objInvoke = cls.getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
                                } catch (Throwable unused) {
                                    Log.e("anythink", "Cannot instantiate " + cls.getName() + ", please check if a third-party SDK is imported");
                                    Log.i("anythink", "----------------------------------------");
                                }
                            } catch (Throwable unused2) {
                            }
                            if (objInvoke != null && (objInvoke instanceof ATInitMediation)) {
                                ATInitMediation aTInitMediation = (ATInitMediation) objInvoke;
                                String networkName = aTInitMediation.getNetworkName();
                                if (!TextUtils.isEmpty(networkName)) {
                                    String networkVersion = aTInitMediation.getNetworkVersion();
                                    if (TextUtils.isEmpty(networkVersion)) {
                                        strConcat = "NetworkName: ".concat(String.valueOf(networkName));
                                    } else {
                                        strConcat = "NetworkName: " + networkName + "  (v" + networkVersion + ")";
                                    }
                                    Log.i("anythink", strConcat);
                                    boolean zI = n.i(aTInitMediation.getNetworkSDKClass());
                                    boolean zB = n.b(aTInitMediation.getPluginClassStatus());
                                    boolean zA = n.a(context, (List<String>) aTInitMediation.getActivityStatus());
                                    boolean zB2 = n.b(context, (List<String>) aTInitMediation.getServiceStatus());
                                    boolean zC = n.c(context, aTInitMediation.getProviderStatus());
                                    boolean zD = n.d(context, aTInitMediation.getMetaValutStatus());
                                    boolean zE = n.e(context, aTInitMediation.getPermissionStatus());
                                    boolean zA2 = n.this.a(context, aTInitMediation.getResourceStatus(), false);
                                    boolean zS = aTInitMediation.needCheckAdapterVersion() ? n.s(aTInitMediation.getAdapterVersion()) : true;
                                    if (zI && zB && zA && zB2 && zC && zD && zE && zA2 && zS) {
                                        z = true;
                                    }
                                    if (z) {
                                        Log.i("anythink", "Status: Success");
                                    } else {
                                        Log.e("anythink", "Status: Fail");
                                    }
                                    Log.i("anythink", "----------------------------------------");
                                }
                            }
                            anonymousClass2 = this;
                        }
                        Log.i("anythink", "********************************** Network Integration Status *************************************");
                    } catch (Exception unused3) {
                    }
                }
            }, 2, true);
        }
    }

    public final void b(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.n.post(runnable);
        }
    }

    public final void b(String str, List<String> list) {
        this.Q.put(str + "_network_firm", list);
    }

    public final void b(boolean z) {
        this.D = z;
    }

    public final long c(int i) {
        if (i != 1 && i != 4) {
            return 26214400L;
        }
        com.anythink.core.d.b.a(this.k);
        return com.anythink.core.d.b.a() * 1024;
    }

    public final String c() {
        return this.o;
    }

    public final void c(boolean z) {
        this.I = z;
    }

    public final boolean c(String str) {
        boolean zContainsKey;
        synchronized (this.s) {
            zContainsKey = this.s.containsKey(str);
        }
        return zContainsKey;
    }

    public final int d() {
        return this.U;
    }

    public final Map<String, Object> d(String str) {
        HashMap map = new HashMap();
        Map<String, Object> map2 = this.q.get(str);
        ConcurrentHashMap<String, Object> concurrentHashMap = this.p;
        if (concurrentHashMap != null) {
            map.putAll(concurrentHashMap);
        }
        if (map2 != null) {
            map.putAll(map2);
        }
        map.remove("channel");
        map.remove("sub_channel");
        Object obj = this.p.get("channel");
        Object obj2 = this.p.get("sub_channel");
        if (obj != null) {
            map.put("channel", obj);
        }
        if (obj2 != null) {
            map.put("sub_channel", obj2);
        }
        return map;
    }

    public final void d(Runnable runnable) {
        this.n.removeCallbacks(runnable);
    }

    public final void d(boolean z) {
        this.W = z;
    }

    public final void e(String str) {
        this.G = str;
        this.p.put("channel", str);
    }

    public final String[] e() {
        synchronized (this.s) {
            Set<String> setKeySet = this.s.keySet();
            int size = setKeySet.size();
            if (size <= 0) {
                return null;
            }
            String[] strArr = new String[size];
            setKeySet.toArray(strArr);
            return strArr;
        }
    }

    public final Context f() {
        return this.k;
    }

    public final void f(String str) {
        this.H = str;
        this.p.put("sub_channel", str);
    }

    public final long g() {
        return this.E;
    }

    public final String g(String str) {
        String strOptString;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        synchronized (this.v) {
            strOptString = this.u.optString(str);
        }
        if (TextUtils.isEmpty(strOptString)) {
            return x(str);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": sessionid exists.");
        return strOptString;
    }

    public final long h() {
        return this.F;
    }

    public final void h(String str) {
        if (TextUtils.isEmpty(this.R)) {
            return;
        }
        if (TextUtils.equals(str, this.R)) {
            this.T = true;
        }
        if (this.T && A()) {
            Log.i("SDK.init", "Update Setting Debugger's device success.");
        }
    }

    public final int i() {
        return this.f;
    }

    public final List<String> j() {
        return this.P;
    }

    public final void j(String str) {
        this.y = str;
        com.anythink.core.common.o.s.a(this.k, h.A, h.v.n, str);
    }

    public final JSONArray k() {
        return this.O;
    }

    public final void k(String str) {
        this.z = str;
        com.anythink.core.common.o.s.a(this.k, h.A, h.v.o, str);
    }

    public final Map<String, Object> l() {
        return this.p;
    }

    public final void l(String str) {
        com.anythink.core.common.o.s.a(this.k, h.p, h.v.k, str);
        this.x = str;
    }

    public final String m() {
        Object obj = this.p.get("channel");
        return obj != null ? obj.toString() : "";
    }

    public final List<String> m(String str) {
        return this.Q.get(str);
    }

    public final String n() {
        Object obj = this.p.get("sub_channel");
        return obj != null ? obj.toString() : "";
    }

    public final List<String> n(String str) {
        return this.Q.get(str + "_network_firm");
    }

    public final String o() {
        if (TextUtils.isEmpty(this.l)) {
            this.l = com.anythink.core.common.o.s.b(this.k, h.p, h.q, "");
        }
        return this.l;
    }

    public final IATAdFilter p(String str) {
        ConcurrentHashMap<String, IATAdFilter> concurrentHashMap;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = this.X) == null) {
            return null;
        }
        return concurrentHashMap.get(str);
    }

    public final String p() {
        if (TextUtils.isEmpty(this.m)) {
            this.m = com.anythink.core.common.o.s.b(this.k, h.p, h.r, "");
        }
        return this.m;
    }

    public final String q() {
        try {
            if (TextUtils.isEmpty(this.t)) {
                a(this.k, o(), 0);
            }
        } catch (Exception unused) {
        }
        return this.t;
    }

    public final void q(String str) {
        this.Y = str;
    }

    public final Location r() {
        return this.M;
    }

    public final void r(String str) {
        if (A()) {
            Log.i("anythink", "setBundleName: ".concat(String.valueOf(str)));
        }
        this.ad = str;
    }

    public final String s() {
        return this.N;
    }

    public final void t() {
        try {
            com.anythink.core.common.o.e.a(this.k);
            com.anythink.core.common.o.e.r(this.k);
        } catch (Exception unused) {
        }
        if (A()) {
            String strD = com.anythink.core.common.o.e.d(this.k);
            Log.i("anythink", "********************************** " + com.anythink.core.common.o.h.a() + " *************************************");
            Log.i("anythink", "GAID(ADID): " + com.anythink.core.common.o.e.f() + " , AndroidID: " + strD);
            StringBuilder sb = new StringBuilder("********************************** ");
            sb.append(com.anythink.core.common.o.h.a());
            sb.append(" *************************************");
            Log.i("anythink", sb.toString());
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            Log.i("anythink", "You can use \"ATSDK.setDebuggerConfig(context, \"" + strD + "\",new ATDebuggerConfig.Builder(the NetworkFirmId you want to test).build());\" to open the debugger mode.");
        }
    }

    public final boolean u() {
        return this.T;
    }

    public final boolean v() {
        return this.T && this.S != null;
    }

    public final ATDebuggerConfig w() {
        return this.S;
    }

    public final String x() {
        if (TextUtils.isEmpty(this.x)) {
            this.x = com.anythink.core.common.o.s.b(this.k, h.p, h.v.k, "");
        }
        return this.x;
    }

    public final String y() {
        if (TextUtils.isEmpty(this.y)) {
            this.y = com.anythink.core.common.o.s.b(this.k, h.A, h.v.n, "");
        }
        return this.y;
    }

    public final String z() {
        if (TextUtils.isEmpty(this.z)) {
            this.z = com.anythink.core.common.o.s.b(this.k, h.A, h.v.o, "");
        }
        return this.z;
    }
}
