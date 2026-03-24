package com.anythink.basead.mraid;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewTreeObserver;
import com.anythink.core.common.b.n;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.atsignalcommon.mraid.MraidVolumeChangeReceiver;
import com.anythink.expressad.mbbanner.view.ATBannerWebView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class MraidWebView extends ATBannerWebView {
    public static String TAG = MraidWebView.class.getSimpleName();
    public b a;
    public boolean b;
    public MraidVolumeChangeReceiver c;
    public boolean d;

    /* JADX INFO: renamed from: com.anythink.basead.mraid.MraidWebView$2, reason: invalid class name */
    public class AnonymousClass2 implements MraidVolumeChangeReceiver.VolumeChangeListener {
        public AnonymousClass2() {
        }

        @Override // com.anythink.expressad.atsignalcommon.mraid.MraidVolumeChangeReceiver.VolumeChangeListener
        public final void onVolumeChanged(double d) {
            String str = MraidWebView.TAG;
            try {
                CallMraidJS.getInstance().fireAudioVolumeChange(MraidWebView.this, d);
            } catch (Exception e) {
                String str2 = MraidWebView.TAG;
                e.getMessage();
            }
        }
    }

    public MraidWebView(Context context) {
        super(context);
        this.b = false;
    }

    public MraidWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = false;
    }

    public MraidWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = false;
    }

    public static /* synthetic */ void a(MraidWebView mraidWebView) {
        Object object = mraidWebView.getObject();
        com.anythink.expressad.atsignalcommon.base.b baseWebViewClient = mraidWebView.getBaseWebViewClient();
        if (object instanceof a) {
            Context context = mraidWebView.getContext();
            if (context instanceof Activity) {
                ((a) object).b = new WeakReference<>((Activity) context);
            }
            ((a) object).a(mraidWebView.a);
        }
        if (baseWebViewClient instanceof e) {
            ((e) baseWebViewClient).c = mraidWebView.a;
        }
    }

    private void b() {
        Object object = getObject();
        com.anythink.expressad.atsignalcommon.base.b baseWebViewClient = getBaseWebViewClient();
        if (object instanceof a) {
            Context context = getContext();
            if (context instanceof Activity) {
                ((a) object).b = new WeakReference<>((Activity) context);
            }
            ((a) object).a(this.a);
        }
        if (baseWebViewClient instanceof e) {
            ((e) baseWebViewClient).c = this.a;
        }
    }

    public static /* synthetic */ void b(MraidWebView mraidWebView) {
        MraidVolumeChangeReceiver mraidVolumeChangeReceiver = new MraidVolumeChangeReceiver(mraidWebView.getContext());
        mraidWebView.c = mraidVolumeChangeReceiver;
        mraidVolumeChangeReceiver.registerReceiver();
        mraidWebView.c.getCurrentVolume();
        mraidWebView.c.setVolumeChangeListener(mraidWebView.new AnonymousClass2());
    }

    private void c() {
        MraidVolumeChangeReceiver mraidVolumeChangeReceiver = new MraidVolumeChangeReceiver(getContext());
        this.c = mraidVolumeChangeReceiver;
        mraidVolumeChangeReceiver.registerReceiver();
        this.c.getCurrentVolume();
        this.c.setVolumeChangeListener(new AnonymousClass2());
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0010  */
    @Override // com.anythink.expressad.atsignalcommon.base.BaseWebView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            if (!str.contains("../")) {
                if (str.startsWith("file")) {
                    String path = Uri.parse(str).getPath();
                    if (TextUtils.isEmpty(path) || !path.contains(com.anythink.core.common.res.d.a(n.a().f()).a())) {
                        z = true;
                    }
                }
            }
        }
        if (!z) {
            return str;
        }
        Log.e("anythink_express", "illegal URL: ".concat(String.valueOf(str)));
        return com.anythink.core.common.res.d.a;
    }

    public void prepare(Context context, b bVar) {
        this.a = bVar;
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.anythink.basead.mraid.MraidWebView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                try {
                    MraidWebView mraidWebView = MraidWebView.this;
                    if (!mraidWebView.b) {
                        mraidWebView.getViewTreeObserver().removeOnPreDrawListener(this);
                        MraidWebView mraidWebView2 = MraidWebView.this;
                        mraidWebView2.b = true;
                        int[] iArr = new int[2];
                        mraidWebView2.getLocationInWindow(iArr);
                        com.anythink.expressad.mbbanner.a.a.a.a(MraidWebView.this, iArr[0], iArr[1]);
                        MraidWebView mraidWebView3 = MraidWebView.this;
                        com.anythink.expressad.mbbanner.a.a.a.a(mraidWebView3, iArr[0], iArr[1], mraidWebView3.getWidth(), MraidWebView.this.getHeight());
                        MraidWebView.a(MraidWebView.this);
                        MraidWebView mraidWebView4 = MraidWebView.this;
                        if (mraidWebView4.d) {
                            MraidWebView.b(mraidWebView4);
                        }
                        b bVar2 = MraidWebView.this.a;
                        if (bVar2 != null) {
                            bVar2.a();
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return false;
            }
        });
    }

    @Override // com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView
    public void release() {
        super.release();
        setWebViewListener(null);
        MraidVolumeChangeReceiver mraidVolumeChangeReceiver = this.c;
        if (mraidVolumeChangeReceiver != null) {
            mraidVolumeChangeReceiver.unregisterReceiver();
        }
    }

    public void setNeedRegisterVolumeChangeReceiver(boolean z) {
        this.d = z;
    }
}
