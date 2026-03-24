package com.anythink.china.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.china.a.a.c;
import com.anythink.china.a.a.d;
import com.anythink.china.a.a.f;
import com.anythink.china.a.a.h;
import com.anythink.china.a.a.j;
import com.anythink.china.a.a.k;
import com.anythink.china.a.a.l;
import com.anythink.china.a.a.o;
import com.anythink.china.a.a.p;
import com.anythink.china.a.a.r;
import com.anythink.china.api.ATChinaSDKHandler;
import com.anythink.china.api.OaidSDKCallbackListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import com.octopus.ad.ADBidEvent;
import com.umeng.commonsdk.proguard.bg;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: com.anythink.china.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ com.anythink.china.a.a a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ String c;

        public AnonymousClass1(com.anythink.china.a.a aVar, Context context, String str) {
            this.a = aVar;
            this.b = context;
            this.c = str;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.china.a.a aVar = new com.anythink.china.a.a() { // from class: com.anythink.china.a.b.1.1
                @Override // com.anythink.china.a.a
                public final void a() {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    b.c(anonymousClass1.b, anonymousClass1.a);
                }

                @Override // com.anythink.china.a.a
                public final void a(String str, boolean z) {
                    com.anythink.china.a.a aVar2 = AnonymousClass1.this.a;
                    if (aVar2 != null) {
                        aVar2.a(str, z);
                    }
                }
            };
            try {
                String str = this.c;
                byte b = -1;
                switch (str.hashCode()) {
                    case -2053026509:
                        if (str.equals("LENOVO")) {
                            b = 8;
                        }
                        break;
                    case -1712043046:
                        if (str.equals("SAMSUNG")) {
                            b = 7;
                        }
                        break;
                    case -602397472:
                        if (str.equals("ONEPLUS")) {
                            b = 2;
                        }
                        break;
                    case 89163:
                        if (str.equals("ZTE")) {
                            b = 3;
                        }
                        break;
                    case 2018896:
                        if (str.equals("ASUS")) {
                            b = 0;
                        }
                        break;
                    case 2432928:
                        if (str.equals("OPPO")) {
                            b = 1;
                        }
                        break;
                    case 2555124:
                        if (str.equals("SSUI")) {
                            b = 5;
                        }
                        break;
                    case 73239724:
                        if (str.equals("MEIZU")) {
                            b = 10;
                        }
                        break;
                    case 630905871:
                        if (str.equals("MOTOLORA")) {
                            b = 9;
                        }
                        break;
                    case 976565563:
                        if (str.equals("FERRMEOS")) {
                            b = 4;
                        }
                        break;
                    case 1670208650:
                        if (str.equals("COOLPAD")) {
                            b = 12;
                        }
                        break;
                    case 1670211654:
                        if (str.equals("COOLSEA")) {
                            b = bg.k;
                        }
                        break;
                    case 2081893636:
                        if (str.equals("FREEME")) {
                            b = 11;
                        }
                        break;
                    case 2141820391:
                        if (str.equals(ADBidEvent.HUAWEI)) {
                            b = 6;
                        }
                        break;
                }
                switch (b) {
                    case 0:
                        new com.anythink.china.a.a.b(this.b).a(aVar);
                        break;
                    case 1:
                    case 2:
                        new l(this.b).a(aVar);
                        break;
                    case 3:
                    case 4:
                    case 5:
                        b.c(this.b, this.a);
                        break;
                    case 6:
                        new h(this.b).a(aVar);
                        break;
                    case 7:
                        new o(this.b).a(aVar);
                        break;
                    case 8:
                    case 9:
                        new r(this.b).a(aVar);
                        break;
                    case 10:
                        new j(this.b).a(aVar);
                        break;
                    case 11:
                        new f(this.b).a(aVar);
                        break;
                    case 12:
                        new c(this.b).a(aVar);
                        break;
                    case 13:
                        new d(this.b).a(aVar);
                        break;
                    default:
                        b.c(this.b, this.a);
                        break;
                }
            } catch (Throwable th) {
                com.anythink.china.a.a aVar2 = this.a;
                if (aVar2 != null) {
                    th.getMessage();
                    aVar2.a();
                }
            }
        }
    }

    @SuppressLint({"PrivateApi"})
    public static final class a {
        private static Object e;
        private static Class<?> f;
        private static Method g;
        private static Method h;
        private static Method i;
        private static Method j;
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        static {
            try {
                Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
                f = cls;
                e = cls.newInstance();
                g = f.getMethod("getUDID", Context.class);
                h = f.getMethod("getOAID", Context.class);
                i = f.getMethod("getVAID", Context.class);
                j = f.getMethod("getAAID", Context.class);
            } catch (Throwable unused) {
            }
        }

        public a(Context context) {
            this.a = a(context, g);
            this.b = a(context, h);
            this.c = a(context, i);
            this.d = a(context, j);
        }

        private static String a(Context context, Method method) {
            Object obj = e;
            if (obj == null || method == null) {
                return null;
            }
            try {
                Object objInvoke = method.invoke(obj, context);
                if (objInvoke != null) {
                    return (String) objInvoke;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        private static boolean a() {
            return (f == null || e == null) ? false : true;
        }
    }

    private static String a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Context context, com.anythink.china.a.a aVar) {
        String strB;
        try {
            strB = b(context);
        } catch (Throwable unused) {
            strB = "";
        }
        if (!TextUtils.isEmpty(strB)) {
            aVar.a(strB, false);
            return;
        }
        String str = Build.MANUFACTURER;
        String strA = a("ro.build.freeme.label");
        if (!TextUtils.isEmpty(strA) && strA.equalsIgnoreCase("FREEMEOS")) {
            str = "FERRMEOS";
        } else {
            String strA2 = a("ro.ssui.product");
            if ((TextUtils.isEmpty(strA2) || strA2.equalsIgnoreCase("unknown")) ? false : true) {
                str = "SSUI";
            } else {
                String strA3 = a("ro.build.freeme.label");
                if ((TextUtils.isEmpty(strA3) || strA3.equalsIgnoreCase("unknown")) ? false : true) {
                    str = "FREEME";
                } else if (a(context)) {
                    str = "COOLPAD";
                } else if (a("ro.odm.manufacturer").equalsIgnoreCase("PRIZE")) {
                    str = "COOLSEA";
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            String upperCase = str.toUpperCase();
            if (Arrays.asList("ASUS", ADBidEvent.HUAWEI, "OPPO", "ONEPLUS", "ZTE", "FERRMEOS", "SSUI", "SAMSUNG", "MEIZU", "MOTOLORA", "LENOVO", "FREEME", "COOLPAD", "COOLSEA").contains(upperCase)) {
                com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass1(aVar, context, upperCase), 2, true);
            } else if ("VIVO".equals(upperCase)) {
                strB = new p(context).a();
            } else if ("NUBIA".equals(upperCase)) {
                strB = new k(context).a();
            } else {
                c(context, aVar);
            }
        }
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        aVar.a(strB, false);
    }

    private static void a(Context context, String str, com.anythink.china.a.a aVar) {
        com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass1(aVar, context, str), 2, true);
    }

    public static /* synthetic */ void a(IdSupplier idSupplier, com.anythink.china.a.a aVar) {
        String oaid = idSupplier != null ? idSupplier.getOAID() : "";
        if (TextUtils.isEmpty(oaid)) {
            if (aVar != null) {
                aVar.a();
            }
        } else if (aVar != null) {
            aVar.a(oaid, false);
        }
    }

    private static boolean a() {
        String strA = a("ro.build.freeme.label");
        return !TextUtils.isEmpty(strA) && strA.equalsIgnoreCase("FREEMEOS");
    }

    private static boolean a(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static String b(Context context) {
        try {
            return new a(context).b;
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void b(IdSupplier idSupplier, com.anythink.china.a.a aVar) {
        String oaid = idSupplier != null ? idSupplier.getOAID() : "";
        if (TextUtils.isEmpty(oaid)) {
            if (aVar != null) {
                aVar.a();
            }
        } else if (aVar != null) {
            aVar.a(oaid, false);
        }
    }

    private static boolean b() {
        String strA = a("ro.ssui.product");
        return (TextUtils.isEmpty(strA) || strA.equalsIgnoreCase("unknown")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final Context context, final com.anythink.china.a.a aVar) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.china.a.b.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ATChinaSDKHandler.handleInitOaidSDK(context.getApplicationContext(), new OaidSDKCallbackListener() { // from class: com.anythink.china.a.b.2.1
                        @Override // com.anythink.china.api.OaidSDKCallbackListener
                        public final void OnSupport(boolean z, IdSupplier idSupplier) {
                            b.a(idSupplier, aVar);
                        }

                        @Override // com.anythink.china.api.OaidSDKCallbackListener
                        public final void onSupport(IdSupplier idSupplier) {
                            b.a(idSupplier, aVar);
                        }
                    });
                } catch (Throwable unused) {
                }
            }
        }, 2, true);
    }

    private static boolean c() {
        String strA = a("ro.build.freeme.label");
        return (TextUtils.isEmpty(strA) || strA.equalsIgnoreCase("unknown")) ? false : true;
    }

    private static boolean d() {
        return a("ro.odm.manufacturer").equalsIgnoreCase("PRIZE");
    }
}
