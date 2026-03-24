package com.anythink.basead.d;

import android.app.Activity;
import android.content.Context;
import com.anythink.basead.d.b;
import com.anythink.basead.e.b;
import com.anythink.basead.e.j;
import com.anythink.basead.ui.BaseATActivity;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f extends b {
    public static final String a = "f";

    public f(Context context, b.EnumC0055b enumC0055b, m mVar) {
        super(context, enumC0055b, mVar);
    }

    public final void a(Activity activity, Map<String, Object> map) {
        String str;
        try {
            if (!c()) {
                com.anythink.basead.e.a aVar = this.h;
                if (aVar != null) {
                    aVar.onShowFailed(com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, com.anythink.basead.c.f.y));
                }
                this.e = null;
                return;
            }
            final String string = map.get("extra_scenario").toString();
            int iIntValue = ((Integer) map.get(com.anythink.basead.f.c.j)).intValue();
            final String strA = a(this.e);
            HashMap map2 = new HashMap(2);
            a(map2);
            if (this.c != null) {
                str = this.c.d + this.c.c;
            } else {
                str = "";
            }
            com.anythink.core.common.a.i iVar = this.f;
            if (iVar instanceof com.anythink.expressad.reward.b.a) {
                ((com.anythink.expressad.reward.b.a) iVar).a(new com.anythink.expressad.videocommon.d.b(map2, str) { // from class: com.anythink.basead.d.f.1
                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void a() {
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void a(final com.anythink.expressad.foundation.d.c cVar) {
                        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.d.f.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                f.this.a(cVar, string);
                            }
                        }, 2, true);
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void a(String str2) {
                    }

                    @Override // com.anythink.expressad.videocommon.d.b, com.anythink.expressad.videocommon.d.a
                    public final void a(boolean z, String str2, float f) {
                        com.anythink.basead.e.a aVar2;
                        n nVar;
                        super.a(z, str2, f);
                        if ((z || ((nVar = f.this.c.n) != null && nVar.l() == 1)) && (aVar2 = f.this.h) != null && (aVar2 instanceof j)) {
                            ((j) aVar2).onRewarded();
                        }
                        com.anythink.basead.e.a aVar3 = f.this.h;
                        if (aVar3 != null) {
                            aVar3.onAdClosed();
                        }
                        f.this.e();
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void b() {
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void b(String str2) {
                        com.anythink.basead.e.a aVar2 = f.this.h;
                        if (aVar2 != null) {
                            aVar2.onShowFailed(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, str2));
                        }
                        f.this.e = null;
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void c() {
                        com.anythink.basead.e.a aVar2 = f.this.h;
                        if (aVar2 != null) {
                            com.anythink.basead.e.i iVar2 = new com.anythink.basead.e.i();
                            iVar2.c = 9;
                            aVar2.onAdShow(iVar2);
                        }
                        com.anythink.basead.e.a aVar3 = f.this.h;
                        if (aVar3 != null && (aVar3 instanceof j)) {
                            ((j) aVar3).onVideoAdPlayStart();
                        }
                        f.this.e = null;
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void d() {
                        com.anythink.basead.e.a aVar2 = f.this.h;
                        if (aVar2 == null || !(aVar2 instanceof j)) {
                            return;
                        }
                        ((j) aVar2).onVideoAdPlayEnd();
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void e() {
                    }

                    @Override // com.anythink.expressad.videocommon.d.a
                    public final void f() {
                    }
                });
                ((com.anythink.expressad.reward.b.a) this.f).a(activity, "", "", "", this.c);
                return;
            }
            com.anythink.basead.e.b.a().a(strA, new b.AbstractC0061b(map2, str) { // from class: com.anythink.basead.d.f.2
                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a() {
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 == null || !(aVar2 instanceof j)) {
                        return;
                    }
                    ((j) aVar2).onVideoAdPlayStart();
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a(com.anythink.basead.c.e eVar) {
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 != null) {
                        aVar2.onShowFailed(eVar);
                    }
                    f.this.e = null;
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a(com.anythink.basead.e.i iVar2) {
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 != null) {
                        aVar2.onAdShow(iVar2);
                    }
                    f.this.e = null;
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void a(boolean z) {
                    String str2 = f.a;
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 != null) {
                        aVar2.onDeeplinkCallback(z);
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void b() {
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 == null || !(aVar2 instanceof j)) {
                        return;
                    }
                    ((j) aVar2).onVideoAdPlayEnd();
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void b(com.anythink.basead.e.i iVar2) {
                    String str2 = f.a;
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 != null) {
                        aVar2.onAdClick(iVar2);
                    }
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void c() {
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 == null || !(aVar2 instanceof j)) {
                        return;
                    }
                    ((j) aVar2).onRewarded();
                }

                @Override // com.anythink.basead.e.b.AbstractC0061b
                public final void d() {
                    super.d();
                    String str2 = f.a;
                    com.anythink.basead.e.a aVar2 = f.this.h;
                    if (aVar2 != null) {
                        aVar2.onAdClosed();
                    }
                    com.anythink.basead.e.b.a().b(strA);
                }
            });
            com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
            cVar.c = this.e;
            cVar.d = strA;
            cVar.a = 1;
            cVar.h = this.c;
            cVar.e = iIntValue;
            cVar.b = string;
            BaseATActivity.a(activity, cVar);
        } catch (Exception e) {
            e.printStackTrace();
            com.anythink.basead.e.a aVar2 = this.h;
            if (aVar2 != null) {
                aVar2.onShowFailed(com.anythink.basead.c.f.a("-9999", e.getMessage()));
            }
            this.e = null;
        }
    }

    @Override // com.anythink.basead.d.b
    public final void b() {
        super.b();
        this.h = null;
    }
}
