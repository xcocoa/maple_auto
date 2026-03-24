package com.anythink.core.basead.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.bb;
import com.anythink.core.d.b;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String a = "play.google.com";
    public static final String b = "market.android.com";
    public static final String c = "details?";
    public static final String d = "market";
    public static final String e = "market://";

    public static bb a(Context context, String str) {
        bb bbVar = new bb();
        bbVar.n = !str.startsWith("http");
        bbVar.o = str;
        if (d(str)) {
            bbVar.o = str;
            boolean zEquals = TextUtils.equals(b.a(context).b(n.a().o()).n(), "1");
            if (a(context, str, false, zEquals)) {
                bbVar.m = true;
                if (zEquals) {
                    bbVar.l = 3;
                } else {
                    bbVar.l = 4;
                }
            } else if (a(context, str, false, false)) {
                bbVar.m = true;
                bbVar.l = 4;
            }
            return bbVar;
        }
        if (!str.startsWith("http")) {
            bbVar.o = str;
            if (a(context, str, false, false)) {
                bbVar.m = true;
                bbVar.l = 5;
            }
            return bbVar;
        }
        if (b(str)) {
            String strF = f(str);
            bbVar.n = true;
            bbVar.o = strF;
            if (a(context, strF, false, true)) {
                bbVar.m = true;
                bbVar.l = 1;
            } else if (a(context, strF, false, false)) {
                bbVar.m = true;
                bbVar.l = 2;
            }
        }
        return bbVar;
    }

    public static bb a(String str) {
        bb bbVar = new bb();
        bbVar.l = 8;
        bbVar.n = false;
        bbVar.m = true;
        bbVar.o = str;
        try {
            if (Uri.parse(str).getScheme().equals("intent")) {
                Intent uri = Intent.parseUri(str, 1);
                uri.addCategory("android.intent.category.BROWSABLE");
                uri.setComponent(null);
                if (Build.VERSION.SDK_INT >= 15) {
                    uri.setSelector(null);
                }
                String stringExtra = uri.getStringExtra("browser_fallback_url");
                if (!TextUtils.isEmpty(stringExtra) && stringExtra.startsWith("http")) {
                    bbVar.l = 10;
                    bbVar.o = stringExtra;
                    return bbVar;
                }
            }
        } catch (Throwable unused) {
        }
        if (d(str)) {
            String strE = e(str);
            bbVar.l = 9;
            bbVar.o = strE;
        }
        return bbVar;
    }

    public static boolean a(Context context, String str, boolean z) {
        if (b(str)) {
            return a(context, f(str), z, true);
        }
        String scheme = Uri.parse(str).getScheme();
        if (scheme == null || scheme.startsWith("http")) {
            return false;
        }
        return a(context, str, z, scheme.startsWith("market") && TextUtils.equals(b.a(context).b(n.a().o()).n(), "1"));
    }

    private static boolean a(final Context context, String str, boolean z, boolean z3) {
        Intent intent;
        try {
            Uri uri = Uri.parse(str);
            if (uri.getScheme().equals("intent")) {
                intent = Intent.parseUri(str, 1);
                intent.addCategory("android.intent.category.BROWSABLE");
                intent.setComponent(null);
                if (Build.VERSION.SDK_INT >= 15) {
                    intent.setSelector(null);
                }
            } else {
                intent = new Intent("android.intent.action.VIEW", uri);
                intent.setData(uri);
            }
            if (z3 && TextUtils.isEmpty(intent.getPackage())) {
                intent.setPackage("com.android.vending");
            }
            intent.addFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            if (!z) {
                return false;
            }
            n.a().b(new Runnable() { // from class: com.anythink.core.basead.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    Toast.makeText(context, "Detect that the App Market is not installed and cannot be opened through the App Market.", 1).show();
                }
            });
            return false;
        }
    }

    public static boolean b(String str) {
        Uri uri;
        try {
            if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && uri.getHost() != null) {
                if (uri.getHost().equals("play.google.com")) {
                    return true;
                }
                return uri.getHost().equals("market.android.com");
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static void c(String str) {
        com.anythink.core.common.o.n.a(str);
    }

    private static boolean d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return Uri.parse(str).getScheme().equals("market");
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String e(String str) {
        try {
            return "https://play.google.com/store/apps/details?id=".concat(String.valueOf(str.replace("market://details?id=", "")));
        } catch (Throwable unused) {
            return str;
        }
    }

    private static String f(String str) {
        try {
            return "market://".concat(String.valueOf(str.substring(str.indexOf(c))));
        } catch (Throwable unused) {
            return null;
        }
    }
}
