package com.anythink.basead.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;
import com.anythink.core.common.h.k;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int A = 27;
    public static final int B = 28;
    public static final int C = 29;
    public static final int D = 30;
    public static final int E = 31;
    public static final int F = 32;
    public static final int G = 33;
    public static final int H = 34;
    public static final int I = 35;
    public static final int J = 36;
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    public static final int f = 6;
    public static final int g = 7;
    public static final int h = 8;
    public static final int i = 9;
    public static final int j = 10;
    public static final int k = 11;
    public static final int l = 12;
    public static final int m = 13;
    public static final int n = 14;
    public static final int o = 15;
    public static final int p = 16;
    public static final int q = 17;
    public static final int r = 18;
    public static final int s = 19;
    public static final int t = 20;
    public static final int u = 21;
    public static final int v = 22;
    public static final int w = 23;
    public static final int x = 24;
    public static final int y = 25;
    public static final int z = 26;

    public static void a(final int i2, final l lVar, @NonNull final com.anythink.basead.c.i iVar) {
        if (lVar.P()) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                l lVar2 = lVar;
                if (lVar2 instanceof z) {
                    z zVar = (z) lVar2;
                    boolean zA = lVar2.o() != null ? a.a(i2, lVar.o()) : false;
                    if (i2 == 8) {
                        new com.anythink.basead.g.c(zVar.Z(), iVar.a, zA).a(0, (k) null);
                    }
                    com.anythink.basead.g.b bVar = new com.anythink.basead.g.b(i2, zVar, iVar.a);
                    bVar.a(iVar.b);
                    bVar.a(0, (k) null);
                } else {
                    i.a(i2, (aj) lVar2, iVar);
                }
                if (i2 == 21) {
                    l lVar3 = lVar;
                    if (lVar3 instanceof com.anythink.core.common.f.j) {
                        com.anythink.core.common.f.j jVar = (com.anythink.core.common.f.j) lVar3;
                        if (jVar.c() == 1) {
                            if (!com.anythink.core.common.o.i.a(n.a().f().getApplicationContext(), jVar.F())) {
                                StringBuilder sb = new StringBuilder("check offer installed(Apk Install Broadcast):false,dsp offerid:");
                                sb.append(jVar.ae());
                                sb.append(",packagename:");
                                sb.append(jVar.F());
                                return;
                            }
                            StringBuilder sb2 = new StringBuilder("check offer installed(Apk Install Broadcast):true,dsp offerid:");
                            sb2.append(jVar.ae());
                            sb2.append(",packagename:");
                            sb2.append(jVar.F());
                            com.anythink.core.common.a.d.a().c(jVar);
                        }
                    }
                }
            }
        }, 13);
    }

    private static void a(l lVar) {
        if (lVar instanceof com.anythink.core.common.f.j) {
            com.anythink.core.common.f.j jVar = (com.anythink.core.common.f.j) lVar;
            if (jVar.c() == 1) {
                if (!com.anythink.core.common.o.i.a(n.a().f().getApplicationContext(), jVar.F())) {
                    StringBuilder sb = new StringBuilder("check offer installed(Apk Install Broadcast):false,dsp offerid:");
                    sb.append(jVar.ae());
                    sb.append(",packagename:");
                    sb.append(jVar.F());
                    return;
                }
                StringBuilder sb2 = new StringBuilder("check offer installed(Apk Install Broadcast):true,dsp offerid:");
                sb2.append(jVar.ae());
                sb2.append(",packagename:");
                sb2.append(jVar.F());
                com.anythink.core.common.a.d.a().c(jVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(int i2, com.anythink.core.common.f.n nVar) {
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 8) {
            if (nVar.i() == 1) {
                return false;
            }
        } else if (i2 != 9) {
            if (i2 != 35) {
                return false;
            }
            if (nVar.i() == 1) {
            }
        } else if (nVar.j() != 1) {
            return false;
        }
        return true;
    }

    public static boolean a(Context context, l lVar) {
        if (!TextUtils.isEmpty(lVar.D()) && com.anythink.core.basead.a.a.a(context, lVar.D(), false)) {
            return true;
        }
        if (TextUtils.isEmpty(lVar.F())) {
            return false;
        }
        return b.a(context, lVar.F());
    }

    public static boolean a(Context context, m mVar, final l lVar, com.anythink.basead.c.d dVar, String str, com.anythink.core.common.g.b bVar) {
        try {
            IExHandler iExHandlerB = n.a().b();
            String str2 = (dVar == null || TextUtils.isEmpty(dVar.c)) ? "" : dVar.c;
            if (iExHandlerB != null) {
                final Context applicationContext = context.getApplicationContext();
                iExHandlerB.handleOfferClick(applicationContext, mVar, lVar, str, str2, new Runnable() { // from class: com.anythink.basead.a.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (lVar instanceof aj) {
                            g.a(applicationContext).a();
                            g.a(applicationContext).a(lVar.t(), lVar);
                        }
                    }
                }, bVar);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                context.getPackageManager().getApplicationInfo(str, 8192);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    private static boolean a(l lVar, com.anythink.core.common.f.n nVar) {
        if (lVar instanceof com.anythink.core.common.f.j) {
            if (!(nVar instanceof ak) || ((ak) nVar).au() != 1) {
                return false;
            }
        } else if (!(lVar instanceof z) || ((z) lVar).Y() != 1) {
            return false;
        }
        return true;
    }
}
