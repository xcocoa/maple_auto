package com.anythink.expressad.foundation.f;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.f.a.a;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.widget.FeedBackButton;
import com.anythink.expressad.widget.a.c;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static int a = -2;
    public static int b = -2;
    public static volatile boolean c;
    private final ConcurrentHashMap<String, com.anythink.expressad.foundation.f.a.a> d;
    private final RelativeLayout.LayoutParams e;
    private com.anythink.expressad.d.a f;

    public static class a {
        private static final b a = new b(0);
    }

    private b() {
        this.d = new ConcurrentHashMap<>();
        this.e = new RelativeLayout.LayoutParams(a, b);
    }

    public /* synthetic */ b(byte b2) {
        this();
    }

    public static Activity a(Context context) {
        Activity activity;
        int i = Build.VERSION.SDK_INT;
        Context contextH = com.anythink.expressad.foundation.b.a.c().h();
        Activity activity2 = null;
        try {
            activity = contextH instanceof Activity ? (Activity) contextH : null;
        } catch (Exception e) {
            e = e;
        }
        try {
            if ((context instanceof Activity) && (i < 17 || !((Activity) context).isDestroyed())) {
                activity = (Activity) context;
            }
            if (activity == null || activity.isFinishing()) {
                return null;
            }
            if (i >= 17) {
                if (activity.isDestroyed()) {
                    return null;
                }
            }
            return activity;
        } catch (Exception e2) {
            e = e2;
            activity2 = activity;
            e.printStackTrace();
            return activity2;
        }
    }

    public static b a() {
        return a.a;
    }

    private void a(String str, int i, int i2, int i3, float f, float f2, float f3, String str2, String str3) {
        com.anythink.expressad.foundation.f.a.a aVarA = a(str);
        Context contextF = n.a().f();
        aVarA.a(t.b(contextF, f), t.b(contextF, f2), t.b(contextF, i), t.b(contextF, i2), t.b(contextF, i3), f3, str2, str3);
    }

    private void a(String str, int i, ViewGroup viewGroup) {
        com.anythink.expressad.foundation.f.a.a aVarA = a(str);
        if (aVarA.c() != null) {
            aVarA.a(i);
            if (i == 0) {
                a(str, n.a().f(), viewGroup, null, null);
            }
        }
    }

    private void a(String str, Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams) {
        a(str, context, viewGroup, layoutParams, null);
    }

    public static boolean a(Context context, c cVar) {
        if (cVar == null) {
            return false;
        }
        return b(context, cVar);
    }

    private static boolean b(Context context, c cVar) {
        Activity activityA = a(context);
        if (activityA == null || cVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 17 && activityA.isDestroyed()) {
            return false;
        }
        try {
            if (cVar.isShowing() || activityA.isFinishing()) {
                return false;
            }
            cVar.show();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void c(String str, int i) {
        com.anythink.expressad.foundation.f.a.a aVarA = a(str);
        if (i == 1) {
            aVarA.b();
        } else {
            aVarA.a();
        }
    }

    private com.anythink.expressad.foundation.f.a.a d(String str) {
        if (TextUtils.isEmpty(str)) {
            str = com.anythink.expressad.foundation.b.a.c().f();
        }
        if (this.d.containsKey(str)) {
            return this.d.get(str);
        }
        return null;
    }

    private void e(String str) {
        a(str).e();
    }

    public final com.anythink.expressad.foundation.f.a.a a(String str) {
        com.anythink.expressad.foundation.f.a.a aVar;
        if (TextUtils.isEmpty(str)) {
            str = com.anythink.expressad.foundation.b.a.c().f();
        }
        if (this.d.containsKey(str)) {
            aVar = this.d.get(str);
        } else {
            aVar = new com.anythink.expressad.foundation.f.a.a(str);
            this.d.put(str, aVar);
        }
        if (aVar != null) {
            return aVar;
        }
        com.anythink.expressad.foundation.f.a.a aVar2 = new com.anythink.expressad.foundation.f.a.a(str);
        this.d.put(str, aVar2);
        return aVar2;
    }

    public final void a(String str, int i) {
        a(str).b(i);
    }

    public final void a(String str, Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, com.anythink.expressad.foundation.f.a aVar) {
        if (b()) {
            com.anythink.expressad.foundation.f.a.a aVarA = a(str);
            if (aVar != null) {
                aVarA.a(new a.C0132a(str, aVar));
            }
            FeedBackButton feedBackButtonC = aVarA.c();
            if (feedBackButtonC != null) {
                if (layoutParams == null) {
                    int iB = t.b(n.a().f(), 10.0f);
                    this.e.setMargins(iB, iB, iB, iB);
                    layoutParams = this.e;
                }
                ViewGroup viewGroup2 = (ViewGroup) feedBackButtonC.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(feedBackButtonC);
                }
                Activity activityA = a(context);
                if (activityA != null && viewGroup == null) {
                    viewGroup = (ViewGroup) activityA.findViewById(R.id.content);
                }
                if (viewGroup != null) {
                    viewGroup.removeView(feedBackButtonC);
                    viewGroup.addView(feedBackButtonC, layoutParams);
                }
            }
        }
    }

    public final void a(String str, com.anythink.expressad.foundation.d.c cVar) {
        a(str).a(cVar);
    }

    public final void a(String str, com.anythink.expressad.foundation.f.a aVar) {
        a(str).a(new a.C0132a(str, aVar));
    }

    public final void a(String str, FeedBackButton feedBackButton) {
        a(str).a(feedBackButton);
    }

    public final FeedBackButton b(String str) {
        return a(str).c();
    }

    public final void b(String str, int i) {
        a(str).c(i);
    }

    public final boolean b() {
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.a aVarC = com.anythink.expressad.d.b.c();
        this.f = aVarC;
        return aVarC.K() != 0;
    }

    public final void c(String str) {
        try {
            String strF = TextUtils.isEmpty(str) ? com.anythink.expressad.foundation.b.a.c().f() : str;
            com.anythink.expressad.foundation.f.a.a aVar = this.d.containsKey(strF) ? this.d.get(strF) : null;
            if (aVar != null) {
                aVar.d();
            }
            this.d.remove(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
