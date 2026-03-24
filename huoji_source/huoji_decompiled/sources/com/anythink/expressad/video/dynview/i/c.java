package com.anythink.expressad.video.dynview.i;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.o.e;
import com.anythink.expressad.foundation.h.i;
import java.util.List;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static int a(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null && cVar.M() != null) {
            int iB = cVar.M().b();
            if (iB == 302 || iB == 802) {
                return -3;
            }
            if (iB == 904) {
                return !a(cVar.M().e()) ? -1 : -3;
            }
        }
        return 100;
    }

    private static String a(long j, Context context) {
        StringBuilder sb;
        String str;
        String strF = e.f(context);
        if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.Q) || strF.startsWith(com.anythink.expressad.video.dynview.a.a.R)) {
            return j + o4.OooO00o.OooO0Oo + context.getString(i.a(context, "anythink_cm_video_auto_play_after", i.g));
        }
        if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.S)) {
            sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.G);
            sb.append(j);
            str = " Sekunden";
        } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.T)) {
            sb = new StringBuilder();
            sb.append(j);
            str = com.anythink.expressad.video.dynview.a.a.H;
        } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.U)) {
            sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.I);
            sb.append(j);
            str = " secondes";
        } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.V)) {
            sb = new StringBuilder(" ثوان");
            sb.append(j);
            str = com.anythink.expressad.video.dynview.a.a.J;
        } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.W)) {
            sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.K);
            sb.append(j);
            str = " секунд";
        } else {
            sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.F);
            sb.append(j);
            str = " s";
        }
        sb.append(str);
        return sb.toString();
    }

    private static void a(Activity activity) {
        activity.setRequestedOrientation(a((Context) activity) ? 6 : 7);
    }

    private static void a(com.anythink.expressad.foundation.d.c cVar, Activity activity) {
        if (cVar == null || cVar.M() == null) {
            return;
        }
        int iC = cVar.M().c();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        if (iC == 1) {
            activity.setRequestedOrientation(7);
            return;
        }
        if (iC == 2) {
            activity.setRequestedOrientation(6);
        } else if (a((Context) activity)) {
            activity.setRequestedOrientation(6);
        } else {
            activity.setRequestedOrientation(7);
        }
    }

    public static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                return false;
            }
            String queryParameter = uri.getQueryParameter(com.anythink.expressad.video.dynview.a.a.L);
            if (TextUtils.isEmpty(queryParameter)) {
                return false;
            }
            return queryParameter.equals("1");
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean a(List<com.anythink.expressad.foundation.d.c> list) {
        com.anythink.expressad.foundation.d.c cVar;
        if (list == null || list.size() <= 0 || (cVar = list.get(0)) == null) {
            return false;
        }
        return cVar.j();
    }

    private static int b(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null || cVar.M() == null) {
            return 1;
        }
        return cVar.M().c();
    }
}
