package com.anythink.expressad.out;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public class TemplateBannerView extends RelativeLayout implements com.anythink.core.common.a.i {
    private com.anythink.expressad.mbbanner.b.a a;
    private h b;
    private boolean c;
    private boolean d;
    private String e;

    public TemplateBannerView(Context context) {
        this(context, null);
    }

    public TemplateBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TemplateBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.d = false;
        com.anythink.expressad.foundation.b.a.c().b(context);
    }

    private void a() {
        postDelayed(new Runnable() { // from class: com.anythink.expressad.out.TemplateBannerView.1
            @Override // java.lang.Runnable
            public final void run() {
                if (TemplateBannerView.this.a == null || com.anythink.expressad.foundation.f.b.c) {
                    return;
                }
                TemplateBannerView.this.a.c(true);
            }
        }, 200L);
    }

    private void a(boolean z) {
        this.c = z;
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    public String getRequestId() {
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        return aVar != null ? aVar.a() : "";
    }

    public void init(i iVar, String str, String str2) {
        com.anythink.expressad.mbbanner.b.a aVar = new com.anythink.expressad.mbbanner.b.a(this, iVar, str, str2);
        this.a = aVar;
        aVar.c(this.d);
        this.a.b(this.c);
    }

    @Override // com.anythink.core.common.a.i
    public boolean isReady() {
        return true;
    }

    public void load(com.anythink.expressad.foundation.d.d dVar) {
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.b(this.c);
            this.a.a(dVar);
        } else {
            h hVar = this.b;
            if (hVar != null) {
                hVar.a(com.anythink.expressad.mbbanner.a.a.a);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
    }

    public void onPause() {
        if (this.a == null || !TextUtils.isEmpty(this.e)) {
            return;
        }
        this.a.c();
    }

    public void onResume() {
        if (this.a == null || !TextUtils.isEmpty(this.e) || com.anythink.expressad.foundation.f.b.c) {
            return;
        }
        this.a.d();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.a(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.d = i == 0;
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            if (i == 0) {
                a();
            } else {
                aVar.c(false);
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.d = i == 0;
        if (this.a != null) {
            if (i == 0) {
                a();
            } else {
                if (com.anythink.expressad.foundation.f.b.c) {
                    return;
                }
                this.a.c(false);
            }
        }
    }

    public void release() {
        if (this.b != null) {
            this.b = null;
        }
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.a((h) null);
            this.a.b();
        }
        removeAllViews();
    }

    public void setAllowShowCloseBtn(boolean z) {
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public void setBannerAdListener(h hVar) {
        this.b = hVar;
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.a(hVar);
        }
    }

    public void updateBannerSize(i iVar) {
        com.anythink.expressad.mbbanner.b.a aVar = this.a;
        if (aVar != null) {
            aVar.a(iVar);
        }
    }
}
