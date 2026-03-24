package com.anythink.basead.d.a;

import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.basead.c.e;
import com.anythink.basead.c.f;
import com.anythink.core.common.a.i;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.al;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.d.d;
import com.anythink.expressad.out.TemplateBannerView;
import com.anythink.expressad.out.g;
import com.anythink.expressad.out.h;
import com.anythink.expressad.out.o;
import com.anythink.expressad.splash.d.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static volatile b c;
    private final String b = getClass().getSimpleName();
    public ConcurrentHashMap<String, i> a = new ConcurrentHashMap<>(2);

    /* JADX INFO: renamed from: com.anythink.basead.d.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ j a;
        public final /* synthetic */ m b;
        public final /* synthetic */ d c;
        public final /* synthetic */ a d;

        public AnonymousClass1(j jVar, m mVar, d dVar, a aVar) {
            this.a = jVar;
            this.b = mVar;
            this.c = dVar;
            this.d = aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0046 A[PHI: r4
          0x0046: PHI (r4v7 int) = (r4v1 int), (r4v2 int) binds: [B:11:0x0044, B:14:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void run() {
            c cVar = new c(n.a().f(), "", TextUtils.isEmpty(this.a.ac()) ? this.b.c : this.a.ac());
            cVar.b(this.b.n.v() == 0);
            int iT = ((int) this.b.n.t()) / 1000;
            int i = 2;
            if (iT <= 2) {
                cVar.b(i);
            } else {
                i = 10;
                if (iT < 10) {
                    cVar.b(iT);
                }
            }
            cVar.a(this.b.n.D() == 0);
            cVar.a(this.b.n.w());
            cVar.f();
            ArrayList<com.anythink.expressad.foundation.d.c> arrayList = this.c.J;
            if (arrayList != null && arrayList.size() > 0) {
                for (com.anythink.expressad.foundation.d.c cVar2 : arrayList) {
                    if (cVar2 != null) {
                        String strC = cVar2.c();
                        if (!TextUtils.isEmpty(strC)) {
                            boolean z = this.b.n.D() == 0;
                            boolean z3 = com.anythink.expressad.shake.a.a().b() && this.b.n.Q() == 1;
                            strC = b.b(b.c(strC, z), z3, this.b.n.R(), this.b.n.S());
                            if (!z3 && !z) {
                                strC = b.b(strC, true);
                            } else if (z3) {
                                strC = b.b(strC, false);
                            }
                        }
                        cVar2.a(strC);
                    }
                }
            }
            cVar.a(new com.anythink.expressad.out.d() { // from class: com.anythink.basead.d.a.b.1.1
                @Override // com.anythink.expressad.out.d
                public final void a() {
                    c cVar3 = (c) b.this.a.remove(AnonymousClass1.this.b.b + AnonymousClass1.this.b.a);
                    if (cVar3 != null) {
                        a aVar = AnonymousClass1.this.d;
                        if (aVar != null) {
                            aVar.b(cVar3);
                            return;
                        }
                        return;
                    }
                    if (AnonymousClass1.this.d != null) {
                        AnonymousClass1.this.d.a(f.a(f.m, "Resource download fail."));
                    }
                }

                @Override // com.anythink.expressad.out.d
                public final void a(String str) {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    b.a(b.this, str, anonymousClass1.b, anonymousClass1.d);
                }

                @Override // com.anythink.expressad.out.d
                public final void b() {
                }
            });
            a aVar = this.d;
            if (aVar != null) {
                aVar.a(cVar);
            }
            b.this.a.put(this.b.b + this.b.a, cVar);
            cVar.a(this.c);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.a.b$2, reason: invalid class name */
    public class AnonymousClass2 implements h {
        public final /* synthetic */ m a;
        public final /* synthetic */ a b;

        public AnonymousClass2(m mVar, a aVar) {
            this.a = mVar;
            this.b = aVar;
        }

        @Override // com.anythink.expressad.out.h
        public final void a() {
            TemplateBannerView templateBannerView = (TemplateBannerView) b.this.a.remove(this.a.b + this.a.a);
            if (templateBannerView != null) {
                a aVar = this.b;
                if (aVar != null) {
                    aVar.b(templateBannerView);
                    return;
                }
                return;
            }
            if (this.b != null) {
                this.b.a(f.a(f.m, "Resource download fail."));
            }
        }

        @Override // com.anythink.expressad.out.h
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
        }

        @Override // com.anythink.expressad.out.h
        public final void a(String str) {
            b.a(b.this, str, this.a, this.b);
        }

        @Override // com.anythink.expressad.out.h
        public final void b() {
        }

        @Override // com.anythink.expressad.out.h
        public final void c() {
        }

        @Override // com.anythink.expressad.out.h
        public final void d() {
        }

        @Override // com.anythink.expressad.out.h
        public final void e() {
        }

        @Override // com.anythink.expressad.out.h
        public final void f() {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.a.b$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public final /* synthetic */ j a;
        public final /* synthetic */ m b;
        public final /* synthetic */ a c;
        public final /* synthetic */ d d;

        public AnonymousClass4(j jVar, m mVar, a aVar, d dVar) {
            this.a = jVar;
            this.b = mVar;
            this.c = aVar;
            this.d = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.expressad.advanced.d.c cVar = new com.anythink.expressad.advanced.d.c("", TextUtils.isEmpty(this.a.ac()) ? this.b.c : this.a.ac(), n.a().f());
            cVar.a(new o() { // from class: com.anythink.basead.d.a.b.4.1
                @Override // com.anythink.expressad.out.o
                public final void a() {
                    com.anythink.expressad.advanced.d.c cVar2 = (com.anythink.expressad.advanced.d.c) b.this.a.remove(AnonymousClass4.this.b.b + AnonymousClass4.this.b.a);
                    if (cVar2 != null) {
                        a aVar = AnonymousClass4.this.c;
                        if (aVar != null) {
                            aVar.b(cVar2);
                            return;
                        }
                        return;
                    }
                    if (AnonymousClass4.this.c != null) {
                        AnonymousClass4.this.c.a(f.a(f.n, f.I));
                    }
                }

                @Override // com.anythink.expressad.out.o
                public final void a(com.anythink.expressad.foundation.d.c cVar2) {
                }

                @Override // com.anythink.expressad.out.o
                public final void a(String str) {
                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                    b.a(b.this, str, anonymousClass4.b, anonymousClass4.c);
                }

                @Override // com.anythink.expressad.out.o
                public final void b() {
                }

                @Override // com.anythink.expressad.out.o
                public final void c() {
                }

                @Override // com.anythink.expressad.out.o
                public final void d() {
                }

                @Override // com.anythink.expressad.out.o
                public final void e() {
                }

                @Override // com.anythink.expressad.out.o
                public final void f() {
                }
            });
            a aVar = this.c;
            if (aVar != null) {
                aVar.a(cVar);
            }
            b.this.a.put(this.b.b + this.b.a, cVar);
            cVar.a(this.d);
        }
    }

    public interface a {
        void a(e eVar);

        void a(i iVar);

        void b(i iVar);
    }

    private b() {
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005c A[PHI: r4
      0x005c: PHI (r4v1 int) = (r4v0 int), (r4v0 int), (r4v2 int) binds: [B:9:0x0039, B:10:0x003b, B:12:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.anythink.basead.a.b a(com.anythink.basead.a.b bVar, com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.core.common.f.n nVarO = bVar.b().o();
        if (bVar.b().t().equals(cVar.aZ())) {
            a(bVar.b(), cVar);
            return bVar;
        }
        j jVar = new j();
        a(jVar, cVar);
        jVar.k(cVar.aZ());
        int iQ = cVar.Q();
        if (iQ != 0) {
            int i = 1;
            if (iQ == 1 || iQ == 2) {
                jVar.h(i);
            } else {
                i = 4;
                if (iQ != 3) {
                    if (iQ == 4) {
                        jVar.h(3);
                    } else if (iQ == 5) {
                        jVar.h(2);
                    } else if (iQ != 8) {
                        if (iQ != 9) {
                            if (iQ == 12) {
                                jVar.h(6);
                            }
                        }
                    }
                }
            }
        }
        com.anythink.expressad.foundation.d.a aVarAG = cVar.aG();
        if (aVarAG != null) {
            jVar.O(aVarAG.b());
            jVar.z(aVarAG.f());
            jVar.A(aVarAG.e());
            jVar.B(aVarAG.c());
            jVar.C(aVarAG.a());
        }
        com.anythink.basead.a.b bVar2 = new com.anythink.basead.a.b(n.a().f(), bVar.c(), jVar);
        jVar.a(nVarO);
        return bVar2;
    }

    public static b a() {
        if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = new b();
                }
            }
        }
        return c;
    }

    public static /* synthetic */ void a(b bVar, String str, m mVar, a aVar) {
        bVar.a.remove(mVar.b + mVar.a);
        if (aVar != null) {
            aVar.a(f.a(f.m, str));
        }
    }

    public static void a(j jVar) {
        if (!TextUtils.isEmpty(jVar.p())) {
            com.anythink.expressad.out.b.a = jVar.p();
        }
        if (com.anythink.expressad.foundation.b.a.c().e() == null) {
            com.anythink.expressad.foundation.b.a.c().a(n.a().f());
            com.anythink.expressad.foundation.b.a.c().a(n.a().L());
            com.anythink.expressad.e.a aVarA = g.a();
            HashMap map = new HashMap(3);
            map.put(com.anythink.expressad.a.d, jVar.aa());
            map.put(com.anythink.expressad.a.e, jVar.ab());
            aVarA.a(map, n.a().f());
        }
    }

    public static void a(j jVar, com.anythink.expressad.foundation.d.c cVar) {
        jVar.x(cVar.ba());
        jVar.o(cVar.bd());
        jVar.m(cVar.bb());
        jVar.n(cVar.bc());
        jVar.w(cVar.ad());
        jVar.v(cVar.af());
        al alVarAh = jVar.ah();
        if (alVarAh == null) {
            alVarAh = new al();
            jVar.a(alVarAh);
        }
        com.anythink.expressad.foundation.d.n nVarL = cVar.L();
        if (nVarL != null) {
            alVarAh.b(nVarL.a());
            alVarAh.c(nVarL.b());
            alVarAh.d(nVarL.c());
        }
        a((l) jVar, cVar);
    }

    public static void a(j jVar, List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<com.anythink.expressad.foundation.d.c> it = list.iterator();
        while (it.hasNext()) {
            it.next().t(jVar.z());
        }
    }

    public static void a(l lVar, com.anythink.expressad.foundation.d.c cVar) {
        String[] strArrL;
        j jVar = lVar instanceof j ? (j) lVar : null;
        if (lVar == null || cVar == null) {
            return;
        }
        lVar.w(cVar.ad());
        lVar.e(cVar.aO());
        lVar.d(cVar.aN());
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar.ah() + "&opdptype={opdptype}&apk_ptype={apk_ptype}");
        com.anythink.expressad.foundation.d.n nVarL = cVar.L();
        if (nVarL != null && (strArrL = nVarL.l()) != null) {
            for (String str : strArrL) {
                arrayList.add(str);
            }
        }
        al alVarAh = jVar.ah();
        if (alVarAh == null) {
            alVarAh = new al();
            jVar.a(alVarAh);
        }
        alVarAh.a((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public static void a(m mVar, List<com.anythink.expressad.foundation.d.c> list) {
        int i = mVar.j;
        if (i == 1 || i == 3) {
            list.get(0).a(mVar.n.F());
        }
    }

    private void a(String str, m mVar, a aVar) {
        this.a.remove(mVar.b + mVar.a);
        if (aVar != null) {
            aVar.a(f.a(f.m, str));
        }
    }

    public static /* synthetic */ String b(String str, boolean z) {
        StringBuilder sb;
        String str2;
        if (z) {
            if (str.contains("hdbtn")) {
                return str.replace("hdbtn=1", "hdbtn=0");
            }
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&hdbtn=0";
        } else {
            if (str.contains("hdbtn")) {
                return str.replace("hdbtn=0", "hdbtn=1");
            }
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&hdbtn=1";
        }
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, boolean z, int i, long j) {
        StringBuilder sb;
        String str2;
        String strReplace;
        String strReplaceAll;
        if (z) {
            if (str.contains("shake_show")) {
                strReplace = str.replace("shake_show=0", "shake_show=1");
            } else {
                sb = new StringBuilder();
                sb.append(str);
                str2 = "&shake_show=1";
                sb.append(str2);
                strReplace = sb.toString();
            }
        } else if (str.contains("shake_show")) {
            strReplace = str.replace("shake_show=1", "shake_show=0");
        } else {
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&shake_show=0";
            sb.append(str2);
            strReplace = sb.toString();
        }
        if (strReplace.contains("shake_time")) {
            strReplaceAll = strReplace.replaceAll("(shake_time=[^&]*)", "shake_time=" + (j / 1000));
        } else {
            strReplaceAll = strReplace + "&shake_time=" + (j / 1000);
        }
        if (strReplaceAll.contains("shake_strength")) {
            return strReplaceAll.replaceAll("(shake_strength=[^&]*)", "shake_strength=".concat(String.valueOf(i)));
        }
        return strReplaceAll + "&shake_strength=" + i;
    }

    private void b(j jVar, m mVar, d dVar, a aVar) {
        n.a().b(new AnonymousClass1(jVar, mVar, dVar, aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str, boolean z) {
        StringBuilder sb;
        String str2;
        if (z) {
            if (str.contains(com.anythink.expressad.video.dynview.a.a.L)) {
                return str.replace("alecfc=0", "alecfc=1");
            }
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&alecfc=1";
        } else {
            if (str.contains(com.anythink.expressad.video.dynview.a.a.L)) {
                return str.replace("alecfc=1", "alecfc=0");
            }
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&alecfc=0";
        }
        sb.append(str2);
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c(j jVar, m mVar, d dVar, a aVar) {
        com.anythink.core.common.f.n nVar = mVar.n;
        int iA = com.anythink.core.common.o.i.a(n.a().f(), 50.0f);
        int i = 2;
        if (nVar.h() > 0) {
            i = 5;
            iA = nVar.h();
        } else if (nVar != null) {
            String strX = nVar.x();
            strX.hashCode();
            switch (strX) {
                case "300x250":
                    iA = com.anythink.core.common.o.i.a(n.a().f(), 250.0f);
                    break;
                case "320x90":
                case "728x90":
                    iA = com.anythink.core.common.o.i.a(n.a().f(), 90.0f);
                    i = 1;
                    break;
                default:
                    i = 4;
                    break;
            }
        }
        TemplateBannerView templateBannerView = new TemplateBannerView(n.a().f());
        templateBannerView.init(new com.anythink.expressad.out.i(i, nVar.h()), "", TextUtils.isEmpty(jVar.ac()) ? mVar.c : jVar.ac());
        templateBannerView.setAllowShowCloseBtn(nVar.y() == 0);
        if (iA > 0) {
            templateBannerView.setLayoutParams(new ViewGroup.LayoutParams(-1, iA));
        }
        templateBannerView.setBannerAdListener(new AnonymousClass2(mVar, aVar));
        if (aVar != null) {
            aVar.a(templateBannerView);
        }
        this.a.put(mVar.b + mVar.a, templateBannerView);
        templateBannerView.load(dVar);
    }

    private static String d(String str, boolean z) {
        StringBuilder sb;
        String str2;
        if (z) {
            if (str.contains("hdbtn")) {
                return str.replace("hdbtn=1", "hdbtn=0");
            }
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&hdbtn=0";
        } else {
            if (str.contains("hdbtn")) {
                return str.replace("hdbtn=0", "hdbtn=1");
            }
            sb = new StringBuilder();
            sb.append(str);
            str2 = "&hdbtn=1";
        }
        sb.append(str2);
        return sb.toString();
    }

    private void d(j jVar, final m mVar, d dVar, final a aVar) {
        com.anythink.expressad.reward.b.a aVar2 = new com.anythink.expressad.reward.b.a();
        String strAc = TextUtils.isEmpty(jVar.ac()) ? mVar.c : jVar.ac();
        int i = mVar.j;
        if (i == 1) {
            com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), strAc, false);
            aVar2.a(false);
        } else if (i == 3) {
            com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), strAc, true);
            aVar2.a(true);
        }
        aVar2.a(mVar.n.E() == 0 ? 1 : 2);
        aVar2.a("", strAc);
        com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), strAc, false);
        if (mVar.n.F() >= 0) {
            dVarA.a(mVar.n.F());
        }
        if (mVar.j == 1) {
            dVarA.l();
        }
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList = dVar.J;
        if (arrayList != null && arrayList.size() > 0) {
            for (com.anythink.expressad.foundation.d.c cVar : arrayList) {
                if (cVar != null) {
                    boolean z = com.anythink.expressad.shake.a.a().b() && mVar.n.Q() == 1;
                    boolean z3 = mVar.n.D() == 0;
                    String strI = cVar.I();
                    if (!TextUtils.isEmpty(strI)) {
                        cVar.k(b(c(strI, z3), z, mVar.n.R(), mVar.n.S()));
                    }
                    String strP = cVar.P();
                    if (!TextUtils.isEmpty(strP)) {
                        cVar.n(b(c(strP, z3), z, mVar.n.R(), mVar.n.S()));
                    }
                    c.C0131c c0131cM = cVar.M();
                    boolean z4 = mVar.n.A() == 1;
                    if (c0131cM != null) {
                        String strE = c0131cM.e();
                        if (!TextUtils.isEmpty(strE)) {
                            c0131cM.a(c(strE, z4));
                        }
                    }
                }
            }
        }
        aVar2.a(new com.anythink.expressad.videocommon.d.a() { // from class: com.anythink.basead.d.a.b.3
            @Override // com.anythink.expressad.videocommon.d.a
            public final void a() {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void a(com.anythink.expressad.foundation.d.c cVar2) {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void a(String str) {
                b.a(b.this, str, mVar, aVar);
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void a(boolean z5, String str, float f) {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void b() {
                com.anythink.expressad.reward.b.a aVar3 = (com.anythink.expressad.reward.b.a) b.this.a.remove(mVar.b + mVar.a);
                if (aVar3 == null || !aVar3.isReady()) {
                    if (aVar != null) {
                        aVar.a(f.a(f.m, "Resource download fail."));
                        return;
                    }
                    return;
                }
                a aVar4 = aVar;
                if (aVar4 != null) {
                    aVar4.b(aVar3);
                }
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void b(String str) {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void c() {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void d() {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void e() {
            }

            @Override // com.anythink.expressad.videocommon.d.a
            public final void f() {
            }
        });
        if (aVar != null) {
            aVar.a(aVar2);
        }
        this.a.put(mVar.b + mVar.a, aVar2);
        aVar2.a(dVar);
    }

    private void e(j jVar, m mVar, d dVar, a aVar) {
        n.a().b(new AnonymousClass4(jVar, mVar, aVar, dVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(j jVar, m mVar, d dVar, a aVar) {
        a(jVar);
        if (String.valueOf(mVar.j).equals("0")) {
            n.a().b(new AnonymousClass4(jVar, mVar, aVar, dVar));
            return;
        }
        if (!String.valueOf(mVar.j).equals("2")) {
            if (String.valueOf(mVar.j).equals("4")) {
                n.a().b(new AnonymousClass1(jVar, mVar, dVar, aVar));
                return;
            } else {
                d(jVar, mVar, dVar, aVar);
                return;
            }
        }
        com.anythink.core.common.f.n nVar = mVar.n;
        int i = 4;
        int iA = com.anythink.core.common.o.i.a(n.a().f(), 50.0f);
        if (nVar.h() <= 0) {
            if (nVar != null) {
                String strX = nVar.x();
                strX.hashCode();
                switch (strX) {
                    case "300x250":
                        iA = com.anythink.core.common.o.i.a(n.a().f(), 250.0f);
                        i = 2;
                        break;
                    case "320x90":
                    case "728x90":
                        iA = com.anythink.core.common.o.i.a(n.a().f(), 90.0f);
                        i = 1;
                        break;
                }
            }
        } else {
            i = 5;
            iA = nVar.h();
        }
        TemplateBannerView templateBannerView = new TemplateBannerView(n.a().f());
        templateBannerView.init(new com.anythink.expressad.out.i(i, nVar.h()), "", TextUtils.isEmpty(jVar.ac()) ? mVar.c : jVar.ac());
        templateBannerView.setAllowShowCloseBtn(nVar.y() == 0);
        if (iA > 0) {
            templateBannerView.setLayoutParams(new ViewGroup.LayoutParams(-1, iA));
        }
        templateBannerView.setBannerAdListener(new AnonymousClass2(mVar, aVar));
        aVar.a(templateBannerView);
        this.a.put(mVar.b + mVar.a, templateBannerView);
        templateBannerView.load(dVar);
    }
}
