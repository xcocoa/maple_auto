package com.anythink.expressad.splash.c;

import android.graphics.Bitmap;
import android.text.TextUtils;
import cn.haorui.sdk.adsail_ad.view.scaleImage.ImageSource;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.splash.c.e;
import com.anythink.expressad.splash.view.ATSplashView;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static String a = "ResManager";
    private static int b = 1;
    private static ConcurrentHashMap<String, Boolean> c = new ConcurrentHashMap<>();

    public static void a(final ATSplashView aTSplashView, final com.anythink.expressad.foundation.d.c cVar, final com.anythink.expressad.splash.view.a aVar) {
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.be(), new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.splash.c.b.1
            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(Bitmap bitmap, String str) {
                b.c.put(cVar.be(), Boolean.TRUE);
                com.anythink.expressad.splash.view.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a();
                }
                ATSplashView aTSplashView2 = aTSplashView;
                if (aTSplashView2 != null) {
                    aTSplashView2.setImageReady(true);
                }
            }

            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(String str, String str2) {
                b.c.put(cVar.be(), Boolean.FALSE);
                com.anythink.expressad.splash.view.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.b();
                }
                ATSplashView aTSplashView2 = aTSplashView;
                if (aTSplashView2 != null) {
                    aTSplashView2.setImageReady(false);
                }
            }
        });
        if (TextUtils.isEmpty(cVar.bd())) {
            return;
        }
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.bd(), new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.splash.c.b.2
            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(Bitmap bitmap, String str) {
            }

            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(String str, String str2) {
            }
        });
    }

    private static void a(ATSplashView aTSplashView, String str, com.anythink.expressad.foundation.d.c cVar, String str2, String str3, boolean z, int i, boolean z3) {
        e.c cVar2 = new e.c();
        cVar2.c(str3);
        cVar2.b(str2);
        cVar2.a(cVar);
        cVar2.a(str);
        cVar2.b(z);
        cVar2.a(i);
        cVar2.a(z3);
        e.a.a.a(aTSplashView, cVar2, null);
    }

    public static void a(String str) {
        c.remove(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(com.anythink.expressad.foundation.d.c cVar) {
        boolean z;
        Bitmap bitmapA;
        if (!TextUtils.isEmpty(cVar.S())) {
            com.anythink.expressad.videocommon.b.a.a();
            String strA = com.anythink.expressad.videocommon.b.a.a(cVar.S());
            z = !w.a(strA) && new File(strA).length() > 0;
        }
        if (z && TextUtils.isEmpty(cVar.c()) && TextUtils.isEmpty(cVar.d())) {
            z = false;
        }
        return cVar.j() ? (TextUtils.isEmpty(cVar.be()) || (bitmapA = com.anythink.expressad.foundation.g.d.a.a(s.a(cVar.be()))) == null || bitmapA.isRecycled()) ? false : true : z;
    }

    public static boolean a(ATSplashView aTSplashView, com.anythink.expressad.foundation.d.c cVar) {
        if (aTSplashView == null) {
            return false;
        }
        boolean zIsVideoReady = TextUtils.isEmpty(cVar.S()) ? true : aTSplashView.isVideoReady();
        if (zIsVideoReady && !TextUtils.isEmpty(cVar.c())) {
            zIsVideoReady = aTSplashView.isH5Ready();
        }
        if (zIsVideoReady && TextUtils.isEmpty(cVar.c()) && !TextUtils.isEmpty(cVar.d())) {
            zIsVideoReady = aTSplashView.isH5Ready();
        }
        if (TextUtils.isEmpty(cVar.c()) && TextUtils.isEmpty(cVar.d())) {
            zIsVideoReady = false;
        }
        if (!cVar.j()) {
            return zIsVideoReady;
        }
        if (TextUtils.isEmpty(cVar.be())) {
            return false;
        }
        return aTSplashView.isImageReady();
    }

    private static com.anythink.expressad.foundation.d.c b(com.anythink.expressad.foundation.d.c cVar) {
        if (!TextUtils.isEmpty(cVar.c()) || (!TextUtils.isEmpty(cVar.d()) && cVar.d().contains("<MBTPLMARK>"))) {
            cVar.a(true);
            cVar.b(false);
        } else {
            cVar.a(false);
            cVar.b(true);
        }
        return cVar;
    }

    private static String b(String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                return "";
            }
            return ImageSource.FILE_SCHEME + file.getAbsolutePath();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Exception e) {
                e.getMessage();
                return "";
            }
        }
    }
}
