package com.octopus.ad.utils.a;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.internal.utilities.SPUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static volatile boolean a;
    private static volatile String b;
    private static volatile String c;
    private static volatile String d;
    private static volatile String e;
    private static volatile String f;
    private static volatile String g;
    private static volatile String h;
    private static volatile String i;

    private b() {
    }

    public static String a() {
        if (TextUtils.isEmpty(b)) {
            synchronized (b.class) {
                if (TextUtils.isEmpty(b)) {
                    b = a.b();
                }
            }
        }
        if (b == null) {
            b = "";
        }
        return b;
    }

    public static String a(Context context) {
        if (Octopus.getCustomController() != null && !Octopus.getCustomController().isCanUsePhoneState()) {
            c = Octopus.getCustomController().getImei();
        } else if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = a.a(context);
                }
            }
        }
        if (c == null) {
            c = "";
        }
        return c;
    }

    public static void a(Application application) {
        if (a) {
            return;
        }
        synchronized (b.class) {
            if (!a) {
                a.a(application);
                a = true;
            }
        }
    }

    public static String b(Context context) {
        d = SPUtils.getString(context, "oaid");
        if (TextUtils.isEmpty(d)) {
            synchronized (b.class) {
                if (TextUtils.isEmpty(d)) {
                    d = a.c();
                    if (TextUtils.isEmpty(d)) {
                        a.a(context, new c() { // from class: com.octopus.ad.utils.a.b.1
                            @Override // com.octopus.ad.utils.a.c
                            public void a(Exception exc) {
                                String unused = b.d = b.a();
                            }

                            @Override // com.octopus.ad.utils.a.c
                            public void a(String str) {
                                String unused = b.d = str;
                            }
                        });
                    }
                }
            }
            if (d == null) {
                d = "";
            } else {
                SPUtils.put(context, "oaid", d);
            }
        }
        f.b("Oaid is: " + d);
        return d;
    }

    public static String c(final Context context) {
        i = SPUtils.getString(context, "gaid");
        if (TextUtils.isEmpty(i)) {
            synchronized (b.class) {
                if (TextUtils.isEmpty(i)) {
                    i = a.d();
                    if (TextUtils.isEmpty(i)) {
                        a.a(context, new c() { // from class: com.octopus.ad.utils.a.b.2
                            @Override // com.octopus.ad.utils.a.c
                            public void a(Exception exc) {
                                String unused = b.i = b.e(context);
                            }

                            @Override // com.octopus.ad.utils.a.c
                            public void a(String str) {
                                String unused = b.i = str;
                            }
                        });
                    }
                }
            }
            if (i == null) {
                i = "";
            } else {
                SPUtils.put(context, "gaid", i);
            }
        }
        f.b("Gaid is: " + i);
        return i;
    }

    public static String d(Context context) {
        if (e == null) {
            synchronized (b.class) {
                if (e == null) {
                    e = a.b(context);
                }
            }
        }
        if (e == null) {
            e = "";
        }
        return e;
    }

    public static String e(Context context) {
        if (h == null) {
            synchronized (b.class) {
                if (h == null) {
                    h = a.c(context);
                }
            }
        }
        if (h == null) {
            h = "";
        }
        return h;
    }
}
