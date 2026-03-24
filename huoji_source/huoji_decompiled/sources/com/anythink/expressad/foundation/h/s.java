package com.anythink.expressad.foundation.h;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.expressad.out.p;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class s extends f {
    public static boolean a = false;
    public static char[] b = {'a', 'n', 'd', 'r', 'o', 'i', 'd', 'c', 'o', 'n', 't', 'e', 'n', 't', 'p', 'm', 'g', 'e', 't', 'C', 'o', 'n', 't', 'e', 'x', 't'};
    private static final String c = "SDKUtil";

    public static class a {
        public static final String a = "com.android.vending";
        public static final String b = "market";
        public static final String c = "play.google.com";
        public static final String d = "market.android.com";
        public static final String e = "google.com";
        public static final String f = "market://";
        public static final String g = "details?id=";
        public static final String h = "market://details?id=com.package.name";

        private static Intent a() {
            return new Intent("android.intent.action.VIEW", Uri.parse(h));
        }

        private static List<ResolveInfo> a(Context context) {
            try {
                return context.getPackageManager().queryIntentActivities(a(), 0);
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        public static boolean a(Context context, String str, p.c cVar) {
            try {
                if (!b(str)) {
                    str = c(str) ? "market://".concat(String.valueOf(str.substring(str.indexOf(g)))) : null;
                }
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                Intent intentA = a();
                intentA.setData(Uri.parse(str));
                intentA.addFlags(268435456);
                context.startActivity(intentA);
                s.a(cVar);
                return true;
            } catch (Throwable th) {
                Log.getStackTraceString(th);
                return false;
            }
        }

        public static boolean a(String str) {
            return b(str) || c(str);
        }

        private static boolean b(Context context) {
            List<ResolveInfo> listA = a(context);
            return listA != null && listA.size() > 0;
        }

        public static boolean b(String str) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return Uri.parse(str).getScheme().equals("market");
            } catch (Throwable th) {
                Log.getStackTraceString(th);
                return false;
            }
        }

        private static boolean c(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    Uri uri = Uri.parse(str);
                    if (uri.getHost().equals("play.google.com")) {
                        return true;
                    }
                    return uri.getHost().equals("market.android.com");
                }
            } catch (Throwable th) {
                Log.getStackTraceString(th);
            }
            return false;
        }

        private static String d(String str) {
            if (b(str)) {
                return str;
            }
            if (c(str)) {
                return "market://".concat(String.valueOf(str.substring(str.indexOf(g))));
            }
            return null;
        }
    }

    private static String a() {
        return com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.AD_ANYTHINK_700);
    }

    public static String a(String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File fileA = com.anythink.expressad.foundation.g.c.d.a(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_IMG);
        if (TextUtils.isEmpty(str)) {
            string = "";
        } else if (str.lastIndexOf("/") == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.hashCode());
            string = sb.toString();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str.hashCode() + str.substring(str.lastIndexOf("/") + 1).hashCode());
            string = sb2.toString();
        }
        return new File(fileA, string).getAbsolutePath();
    }

    public static void a(Context context, String str, com.anythink.expressad.foundation.d.c cVar, p.c cVar2) {
        if (context == null) {
            return;
        }
        if (a) {
            a(context, str, cVar2);
            return;
        }
        try {
            Class.forName("com.anythink.expressad.activity.ATCommonActivity");
            Intent intent = new Intent(context, Class.forName("com.anythink.expressad.activity.ATCommonActivity"));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (a.b(str)) {
                str = "https://play.google.com/store/apps/details?id=".concat(String.valueOf(str.replace("market://details?id=", "")));
            }
            intent.putExtra(com.anythink.expressad.foundation.d.c.am, str);
            intent.setFlags(268435456);
            intent.putExtra("mvcommon", cVar);
            context.startActivity(intent);
        } catch (Exception unused) {
            a(context, str, cVar2);
        }
    }

    public static void a(Context context, String str, p.c cVar) {
        if (str == null || context == null) {
            return;
        }
        try {
            if (a.b(str)) {
                str = "https://play.google.com/store/apps/details?id=".concat(String.valueOf(str.replace("market://details?id=", "")));
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null) {
                ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
            }
            context.startActivity(intent);
            a(cVar);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.addFlags(268468224);
                context.startActivity(intent2);
                a(cVar);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(p.c cVar) {
        if (cVar instanceof p.e) {
            ((p.e) cVar).c();
        }
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.lastIndexOf("/") == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.hashCode());
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str.hashCode() + str.substring(str.lastIndexOf("/") + 1).hashCode());
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        r8.startActivity(r1);
        a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        a(r8, "https://play.google.com/store/apps/details?id=".concat(java.lang.String.valueOf(r9.replace("market://details?id=", ""))), r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void b(Context context, String str, p.c cVar) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            boolean z = listQueryIntentActivities.size() > 0;
            if (!str.startsWith("market://")) {
                if (str.startsWith("https://play.google.com/")) {
                    b(context, "market://details?id=".concat(String.valueOf(str.replace("https://play.google.com/store/apps/details?id=", ""))), cVar);
                }
            } else {
                if (!z) {
                    a(context, "https://play.google.com/store/apps/details?id=".concat(String.valueOf(str.replace("market://details?id=", ""))), cVar);
                    return;
                }
                Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                            intent.setClassName("com.android.vending", "com.android.vending.AssetBrowserActivity");
                            break;
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }
}
