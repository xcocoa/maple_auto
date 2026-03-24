package com.anythink.basead.f;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.anythink.basead.ui.MraidBannerATView;
import com.anythink.basead.ui.SdkBannerATView;
import com.anythink.core.common.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class b extends c {
    public com.anythink.basead.e.a a;
    private final String k;

    public b(Context context, m mVar, String str, boolean z) {
        super(context, mVar, str, z);
        this.k = b.class.getSimpleName();
    }

    @Override // com.anythink.basead.f.a
    public final void a(Activity activity, Map<String, Object> map) {
    }

    public final void a(com.anythink.basead.e.a aVar) {
        this.a = aVar;
    }

    public final View b() {
        if (a()) {
            return this.g.k() ? new MraidBannerATView(this.c, this.d, this.g, this.a) : new SdkBannerATView(this.c, this.d, this.g, this.a);
        }
        return null;
    }

    @Override // com.anythink.basead.f.c
    public final void c() {
        this.a = null;
    }
}
