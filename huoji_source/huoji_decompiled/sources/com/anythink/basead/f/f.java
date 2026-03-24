package com.anythink.basead.f;

import android.app.Activity;
import android.content.Context;
import com.anythink.basead.e.b;
import com.anythink.basead.e.i;
import com.anythink.basead.e.j;
import com.anythink.basead.ui.BaseATActivity;
import com.anythink.core.common.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f extends c {
    public static final String a = "f";
    private j k;

    public f(Context context, m mVar, String str, boolean z) {
        super(context, mVar, str, z);
    }

    @Override // com.anythink.basead.f.a
    public final void a(Activity activity, Map<String, Object> map) {
        try {
            if (this.c == null) {
                j jVar = this.k;
                if (jVar != null) {
                    jVar.onShowFailed(com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, com.anythink.basead.c.f.C));
                    return;
                }
                return;
            }
            map.get(c.h);
            String string = map.get("extra_scenario").toString();
            int iIntValue = ((Integer) map.get(c.j)).intValue();
            final String str = this.d.b + this.e + System.currentTimeMillis();
            com.anythink.basead.e.b.a().a(str, new b.AbstractC0061b() { // from class: com.anythink.basead.f.f.1
                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a() {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onVideoAdPlayStart();
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a(com.anythink.basead.c.e eVar) {
                    String str2 = f.a;
                    new StringBuilder("onVideoShowFailed.......").append(eVar.c());
                    if (f.this.k != null) {
                        f.this.k.onShowFailed(eVar);
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a(i iVar) {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onAdShow(iVar);
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a(boolean z) {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onDeeplinkCallback(z);
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void b() {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onVideoAdPlayEnd();
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void b(i iVar) {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onAdClick(iVar);
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void c() {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onRewarded();
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void d() {
                    String str2 = f.a;
                    if (f.this.k != null) {
                        f.this.k.onAdClosed();
                    }
                    com.anythink.basead.e.b.a().b(str);
                }
            });
            com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
            cVar.c = this.g;
            cVar.d = str;
            cVar.a = 1;
            cVar.h = this.d;
            cVar.e = iIntValue;
            cVar.b = string;
            BaseATActivity.a(activity, cVar);
        } catch (Exception e) {
            e.printStackTrace();
            j jVar2 = this.k;
            if (jVar2 != null) {
                jVar2.onShowFailed(com.anythink.basead.c.f.a("-9999", e.getMessage()));
            }
        }
    }

    public final void a(j jVar) {
        this.k = jVar;
    }
}
