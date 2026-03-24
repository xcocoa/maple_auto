package com.octopus.ad.internal.a;

import android.app.Activity;
import android.content.MutableContextWrapper;
import android.webkit.WebView;
import com.octopus.ad.AdActivity;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.view.AdViewImpl;
import com.octopus.ad.internal.view.AdWebView;
import com.octopus.ad.internal.view.e;

/* JADX INFO: loaded from: classes2.dex */
public class c implements AdActivity.a {
    private Activity a;
    private AdWebView b;
    private e c = null;

    public c(Activity activity) {
        this.a = activity;
    }

    @Override // com.octopus.ad.AdActivity.a
    public void a() {
        if (AdViewImpl.getMRAIDFullscreenContainer() == null || AdViewImpl.getMRAIDFullscreenImplementation() == null) {
            HaoboLog.e(HaoboLog.baseLogTag, "Launched MRAID Fullscreen activity with invalid properties");
            this.a.finish();
            return;
        }
        ViewUtil.removeChildFromParent(AdViewImpl.getMRAIDFullscreenContainer());
        this.a.setContentView(AdViewImpl.getMRAIDFullscreenContainer());
        if (AdViewImpl.getMRAIDFullscreenContainer().getChildAt(0) instanceof AdWebView) {
            this.b = (AdWebView) AdViewImpl.getMRAIDFullscreenContainer().getChildAt(0);
        }
        if (this.b.getContext() instanceof MutableContextWrapper) {
            ((MutableContextWrapper) this.b.getContext()).setBaseContext(this.a);
        }
        e mRAIDFullscreenImplementation = AdViewImpl.getMRAIDFullscreenImplementation();
        this.c = mRAIDFullscreenImplementation;
        mRAIDFullscreenImplementation.a(this.a);
        if (AdViewImpl.getMRAIDFullscreenListener() != null) {
            AdViewImpl.getMRAIDFullscreenListener().a();
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    public void b() {
        e eVar = this.c;
        if (eVar != null) {
            eVar.a((Activity) null);
            this.c.a();
        }
        this.c = null;
    }

    @Override // com.octopus.ad.AdActivity.a
    public void c() {
    }

    @Override // com.octopus.ad.AdActivity.a
    public void d() {
    }

    @Override // com.octopus.ad.AdActivity.a
    public void e() {
    }

    @Override // com.octopus.ad.AdActivity.a
    public WebView f() {
        return this.b;
    }
}
