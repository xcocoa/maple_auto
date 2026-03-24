package com.anythink.basead.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.anythink.basead.handler.OfferClickHandler;
import com.anythink.core.api.IExHandler;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.basead.ui.web.WebLandPageActivity;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ai;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.ay;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;
import com.anythink.core.common.o;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final int A = 8;
    public static final int B = 9;
    public static final int C = 11;
    public static final int D = 12;
    public static final int E = 13;
    public static final int F = 13;
    public static final int G = 14;
    public static final int H = 15;
    public static final int I = 16;
    public static final int J = 17;
    public static final int K = 18;
    public static final int L = 19;
    public static final int M = 20;
    public static final int N = 21;
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 6;
    public static final int f = 0;
    public static final int g = 1;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 4;
    public static final int l = 5;
    public static final int m = 6;
    public static final int n = 7;
    public static final int o = 10;
    public static final int p = 11;
    public static final int q = 12;
    public static final int r = 13;
    public static final int s = 13;
    public static final int t = 1;
    public static final int u = 2;
    public static final int v = 3;
    public static final int w = 4;
    public static final int x = 5;
    public static final int y = 6;
    public static final int z = 7;
    public l O;
    public boolean P;
    public boolean Q;
    public Context S;
    public boolean T;
    public m U;
    public InterfaceC0048b V;
    public IOfferClickHandler W;
    public a X;
    public boolean Y;
    private final String ab = b.class.getSimpleName();
    private final int ac = 0;
    private final int ad = 1;
    private final int ae = 2;
    private final int af = 10;
    public boolean R = false;
    public boolean Z = false;
    public InterfaceC0048b aa = new InterfaceC0048b() { // from class: com.anythink.basead.a.b.1
        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void a() {
            InterfaceC0048b interfaceC0048b;
            b bVar = b.this;
            if (bVar.R || (interfaceC0048b = bVar.V) == null) {
                return;
            }
            interfaceC0048b.a();
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void a(boolean z3) {
            InterfaceC0048b interfaceC0048b;
            b bVar = b.this;
            if (bVar.R || (interfaceC0048b = bVar.V) == null) {
                return;
            }
            interfaceC0048b.a(z3);
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
            InterfaceC0048b interfaceC0048b = b.this.V;
            if (interfaceC0048b != null) {
                return interfaceC0048b.a(str, iOfferClickHandler);
            }
            return false;
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void b() {
            InterfaceC0048b interfaceC0048b;
            b bVar = b.this;
            if (bVar.R || (interfaceC0048b = bVar.V) == null) {
                return;
            }
            interfaceC0048b.b();
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void c() {
            InterfaceC0048b interfaceC0048b;
            b bVar = b.this;
            if (bVar.R || (interfaceC0048b = bVar.V) == null) {
                return;
            }
            interfaceC0048b.c();
        }
    };

    /* JADX INFO: renamed from: com.anythink.basead.a.b$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ com.anythink.basead.c.i a;

        public AnonymousClass3(com.anythink.basead.c.i iVar) {
            this.a = iVar;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            if (b.a(b.this, this.a)) {
                return;
            }
            final int i = b.this.U.n.r() != 2 ? b.b(b.this, this.a) ? 1 : 2 : 0;
            if (i == 1 && b.this.U.n.r() == 1) {
                return;
            }
            IExHandler iExHandlerB = n.a().b();
            if (this.a.k || b.this.O.H() != 4 || 1 != b.this.U.n.u() || iExHandlerB == null || i == 1) {
                b.a(b.this, i, this.a);
            } else {
                b bVar = b.this;
                iExHandlerB.openApkConfirmDialog(bVar.S, bVar.O, bVar.U, new com.anythink.core.common.g.a() { // from class: com.anythink.basead.a.b.3.1
                    @Override // com.anythink.core.common.g.a
                    public final void a(boolean z) {
                        if (z) {
                            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.a.b.3.1.1
                                @Override // java.lang.Runnable
                                public final void run() throws Throwable {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    b.a(b.this, i, anonymousClass3.a);
                                }
                            }, 2, true);
                        } else {
                            b.this.P = false;
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.b$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public final /* synthetic */ boolean a;

        public AnonymousClass4(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            InterfaceC0048b interfaceC0048b = b.this.aa;
            if (interfaceC0048b != null && !this.a) {
                interfaceC0048b.b();
            }
            InterfaceC0048b interfaceC0048b2 = b.this.aa;
            if (interfaceC0048b2 != null) {
                interfaceC0048b2.c();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.b$6, reason: invalid class name */
    public class AnonymousClass6 implements Runnable {
        public AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            InterfaceC0048b interfaceC0048b = b.this.aa;
            if (interfaceC0048b != null) {
                interfaceC0048b.b();
            }
        }
    }

    public static class a {
        public long a;
        public long b;
        public String c;

        public final boolean a() {
            return System.currentTimeMillis() - this.a <= this.b;
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.b$b, reason: collision with other inner class name */
    public interface InterfaceC0048b {
        void a();

        void a(boolean z);

        boolean a(String str, IOfferClickHandler iOfferClickHandler);

        void b();

        void c();
    }

    public b(Context context, m mVar, l lVar) {
        this.O = lVar;
        this.U = mVar;
        this.S = context.getApplicationContext();
        com.anythink.core.common.f.n nVar = mVar.n;
        this.T = !(lVar instanceof com.anythink.core.common.f.j) ? !((lVar instanceof z) && ((z) lVar).Y() == 1) : !((nVar instanceof ak) && ((ak) nVar).au() == 1);
        this.O.h(mVar.d);
        this.W = new OfferClickHandler();
        this.Y = this.U.n.U() != 2;
    }

    private void a(int i2, com.anythink.basead.c.i iVar) throws Throwable {
        String strB;
        String strB2;
        String strB3;
        com.anythink.basead.c.d dVarA;
        boolean z3 = true;
        if (i2 != 1) {
            InterfaceC0048b interfaceC0048b = this.aa;
            if (interfaceC0048b != null) {
                interfaceC0048b.a();
            }
            n.a().b(new AnonymousClass6());
        }
        strB = "";
        String strE = this.O.E() != null ? this.O.E() : "";
        String str = this.U.d;
        if (str == null) {
            str = "";
        }
        String strA = i.a(strE.replaceAll("\\{req_id\\}", str), iVar, System.currentTimeMillis());
        com.anythink.basead.c.d dVar = (g() && this.O.H() == 4) ? new com.anythink.basead.c.d("", "", "") : new com.anythink.basead.c.d(strA, "", "");
        a(dVar);
        int iH = this.O.H();
        if (iH == 1) {
            if (!strA.startsWith("http")) {
                a(strA, i2, iVar);
                return;
            }
            a aVar = this.X;
            boolean z4 = aVar != null && aVar.a();
            if (this.T) {
                String strC = this.O.C();
                if (z4) {
                    strC = this.X.c;
                }
                if (!TextUtils.isEmpty(strC)) {
                    a(strC, i2, iVar);
                    z3 = false;
                }
            }
            if (z4) {
                strB2 = this.X.c;
            } else {
                strB2 = b(strA);
                if (!TextUtils.isEmpty(strB2)) {
                    a(strB2);
                }
            }
            if (z3) {
                if (TextUtils.isEmpty(strB2)) {
                    strB2 = dVar.a;
                }
                a(strB2, i2, iVar);
                return;
            }
            return;
        }
        if (iH == 2 || iH == 3) {
            if (g() && !TextUtils.isEmpty(this.O.D())) {
                strB = b(strA);
                String strA2 = com.anythink.basead.d.b.a.a.a(strB);
                dVar.b = strB;
                dVar.c = strA2;
                a(dVar);
            }
            if (TextUtils.isEmpty(strB)) {
                strB = dVar.a;
            }
            a(strB, i2, iVar);
            return;
        }
        if (iH != 4) {
            a(TextUtils.isEmpty("") ? dVar.a : "", i2, iVar);
            return;
        }
        if (g() && TextUtils.isEmpty(dVar.a) && (dVarA = com.anythink.basead.d.b.a.a.a(this.U, this.O, strA)) != null) {
            dVar.a = dVarA.a;
            dVar.c = dVarA.c;
        }
        a aVar2 = this.X;
        if (aVar2 == null || !aVar2.a()) {
            strB3 = b(dVar.a);
            if (!TextUtils.isEmpty(strB3)) {
                a(strB3);
            }
        } else {
            strB3 = this.X.c;
        }
        dVar.b = strB3;
        a(dVar);
        if (TextUtils.isEmpty(strB3)) {
            strB3 = dVar.a;
        } else {
            iVar.j = true;
        }
        a(strB3, i2, iVar);
    }

    public static /* synthetic */ void a(b bVar, int i2, com.anythink.basead.c.i iVar) throws Throwable {
        String strB;
        String strB2;
        String strB3;
        com.anythink.basead.c.d dVarA;
        boolean z3 = true;
        if (i2 != 1) {
            InterfaceC0048b interfaceC0048b = bVar.aa;
            if (interfaceC0048b != null) {
                interfaceC0048b.a();
            }
            n.a().b(bVar.new AnonymousClass6());
        }
        strB = "";
        String strE = bVar.O.E() != null ? bVar.O.E() : "";
        String str = bVar.U.d;
        if (str == null) {
            str = "";
        }
        String strA = i.a(strE.replaceAll("\\{req_id\\}", str), iVar, System.currentTimeMillis());
        com.anythink.basead.c.d dVar = (bVar.g() && bVar.O.H() == 4) ? new com.anythink.basead.c.d("", "", "") : new com.anythink.basead.c.d(strA, "", "");
        bVar.a(dVar);
        int iH = bVar.O.H();
        if (iH == 1) {
            if (!strA.startsWith("http")) {
                bVar.a(strA, i2, iVar);
                return;
            }
            a aVar = bVar.X;
            boolean z4 = aVar != null && aVar.a();
            if (bVar.T) {
                String strC = bVar.O.C();
                if (z4) {
                    strC = bVar.X.c;
                }
                if (!TextUtils.isEmpty(strC)) {
                    bVar.a(strC, i2, iVar);
                    z3 = false;
                }
            }
            if (z4) {
                strB2 = bVar.X.c;
            } else {
                strB2 = bVar.b(strA);
                if (!TextUtils.isEmpty(strB2)) {
                    bVar.a(strB2);
                }
            }
            if (z3) {
                if (TextUtils.isEmpty(strB2)) {
                    strB2 = dVar.a;
                }
                bVar.a(strB2, i2, iVar);
                return;
            }
            return;
        }
        if (iH == 2 || iH == 3) {
            if (bVar.g() && !TextUtils.isEmpty(bVar.O.D())) {
                strB = bVar.b(strA);
                String strA2 = com.anythink.basead.d.b.a.a.a(strB);
                dVar.b = strB;
                dVar.c = strA2;
                bVar.a(dVar);
            }
            if (TextUtils.isEmpty(strB)) {
                strB = dVar.a;
            }
            bVar.a(strB, i2, iVar);
            return;
        }
        if (iH != 4) {
            bVar.a(TextUtils.isEmpty("") ? dVar.a : "", i2, iVar);
            return;
        }
        if (bVar.g() && TextUtils.isEmpty(dVar.a) && (dVarA = com.anythink.basead.d.b.a.a.a(bVar.U, bVar.O, strA)) != null) {
            dVar.a = dVarA.a;
            dVar.c = dVarA.c;
        }
        a aVar2 = bVar.X;
        if (aVar2 == null || !aVar2.a()) {
            strB3 = bVar.b(dVar.a);
            if (!TextUtils.isEmpty(strB3)) {
                bVar.a(strB3);
            }
        } else {
            strB3 = bVar.X.c;
        }
        dVar.b = strB3;
        bVar.a(dVar);
        if (TextUtils.isEmpty(strB3)) {
            strB3 = dVar.a;
        } else {
            iVar.j = true;
        }
        bVar.a(strB3, i2, iVar);
    }

    private void a(com.anythink.basead.c.d dVar) {
        c.a().a(this.O.d(), this.O.t(), dVar);
    }

    private synchronized void a(String str) {
        if (this.X == null) {
            this.X = new a();
        }
        a aVar = this.X;
        aVar.c = str;
        aVar.b = this.U.n.T();
        this.X.a = System.currentTimeMillis();
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(String str, int i2, com.anythink.basead.c.i iVar) {
        InterfaceC0048b interfaceC0048b;
        com.anythink.core.basead.b.c cVar;
        n nVarA;
        Runnable runnable;
        InterfaceC0048b interfaceC0048b2;
        if (i2 == 1) {
            return;
        }
        if (this.Q) {
            this.P = false;
            if ((!TextUtils.isEmpty(this.O.s()) || !TextUtils.isEmpty(this.O.D())) && (interfaceC0048b2 = this.aa) != null) {
                interfaceC0048b2.a(false);
            }
            b(iVar);
            nVarA = n.a();
            runnable = new Runnable() { // from class: com.anythink.basead.a.b.7
                @Override // java.lang.Runnable
                public final void run() {
                    InterfaceC0048b interfaceC0048b3 = b.this.aa;
                    if (interfaceC0048b3 != null) {
                        interfaceC0048b3.c();
                    }
                }
            };
        } else {
            if (i2 == 0 && b(iVar, true)) {
                return;
            }
            if ((!TextUtils.isEmpty(this.O.s()) || !TextUtils.isEmpty(this.O.D())) && (interfaceC0048b = this.aa) != null) {
                interfaceC0048b.a(false);
            }
            if (TextUtils.isEmpty(this.O.F()) || !(this.O.H() == 1 || this.O.H() == 4)) {
                if (iVar.g != null && this.O.H() == 4) {
                    if (iVar.j) {
                        iVar.g.j = 3;
                    } else {
                        IExHandler iExHandlerB = n.a().b();
                        com.anythink.basead.c.a aVar = iVar.g;
                        aVar.j = iExHandlerB != null ? iExHandlerB.checkDownloadType(this.O, this.U) : aVar.j;
                    }
                }
                b(iVar);
                if (TextUtils.isEmpty(str)) {
                    str = this.O.C();
                }
                if (TextUtils.isEmpty(str)) {
                    int iH = this.O.H();
                    if (iH == 1) {
                        boolean z3 = (str == null || str.startsWith("http")) ? false : true;
                        if (!com.anythink.core.basead.a.a.a(this.S, str, z3) && !z3) {
                            if (this.U.n.q() == 2) {
                                cVar = new com.anythink.core.basead.b.c();
                                cVar.c = this.O;
                                cVar.h = this.U;
                                cVar.f = str;
                                cVar.g = this.W;
                                WebLandPageActivity.a(this.S, cVar);
                            }
                            com.anythink.core.common.o.n.a(str);
                        }
                        this.P = false;
                        nVarA = n.a();
                        runnable = new Runnable() { // from class: com.anythink.basead.a.b.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                InterfaceC0048b interfaceC0048b3 = b.this.aa;
                                if (interfaceC0048b3 != null) {
                                    interfaceC0048b3.c();
                                }
                            }
                        };
                    } else if (iH == 2) {
                        com.anythink.core.common.o.n.a(str);
                        this.P = false;
                        nVarA = n.a();
                        runnable = new Runnable() { // from class: com.anythink.basead.a.b.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                InterfaceC0048b interfaceC0048b3 = b.this.aa;
                                if (interfaceC0048b3 != null) {
                                    interfaceC0048b3.c();
                                }
                            }
                        };
                    } else if (iH != 3) {
                        if (iH != 4) {
                            if (iH != 6) {
                                if (this.U.n.q() == 2) {
                                    cVar = new com.anythink.core.basead.b.c();
                                }
                                com.anythink.core.common.o.n.a(str);
                            } else if (!f()) {
                                cVar = new com.anythink.core.basead.b.c();
                            }
                            cVar.c = this.O;
                            cVar.h = this.U;
                            cVar.f = str;
                            cVar.g = this.W;
                            WebLandPageActivity.a(this.S, cVar);
                        } else {
                            a(str, iVar);
                        }
                        this.P = false;
                        nVarA = n.a();
                        runnable = new Runnable() { // from class: com.anythink.basead.a.b.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                InterfaceC0048b interfaceC0048b3 = b.this.aa;
                                if (interfaceC0048b3 != null) {
                                    interfaceC0048b3.c();
                                }
                            }
                        };
                    } else {
                        if (!this.aa.a(str, this.W)) {
                            cVar = new com.anythink.core.basead.b.c();
                            cVar.c = this.O;
                            cVar.h = this.U;
                            cVar.f = str;
                            cVar.g = this.W;
                            WebLandPageActivity.a(this.S, cVar);
                        }
                        this.P = false;
                        nVarA = n.a();
                        runnable = new Runnable() { // from class: com.anythink.basead.a.b.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                InterfaceC0048b interfaceC0048b3 = b.this.aa;
                                if (interfaceC0048b3 != null) {
                                    interfaceC0048b3.c();
                                }
                            }
                        };
                    }
                } else {
                    Log.e("anythink", "Offer click result is null.");
                    n.a().b(new Runnable() { // from class: com.anythink.basead.a.b.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                if (TextUtils.isEmpty(b.this.O.E())) {
                                    Context context = b.this.S;
                                    Toast.makeText(context, com.anythink.core.common.o.i.a(context, "basead_click_empty", com.anythink.expressad.foundation.h.i.g), 0).show();
                                } else {
                                    Context context2 = b.this.S;
                                    Toast.makeText(context2, com.anythink.core.common.o.i.a(context2, "basead_click_fail", com.anythink.expressad.foundation.h.i.g), 0).show();
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    });
                    this.P = false;
                    nVarA = n.a();
                    runnable = new Runnable() { // from class: com.anythink.basead.a.b.10
                        @Override // java.lang.Runnable
                        public final void run() {
                            InterfaceC0048b interfaceC0048b3 = b.this.aa;
                            if (interfaceC0048b3 != null) {
                                interfaceC0048b3.c();
                            }
                        }
                    };
                }
            } else {
                boolean zA = a(this.S, this.O.F());
                iVar.i = new com.anythink.basead.c.b();
                com.anythink.basead.c.d dVarE = e();
                iVar.i.a = dVarE != null ? dVarE.c : "";
                com.anythink.basead.c.a aVar2 = iVar.g;
                if (aVar2 != null) {
                    aVar2.j = zA ? 5 : aVar2.j;
                }
                if (zA) {
                    b(iVar);
                    com.anythink.basead.a.a.a(25, this.O, iVar);
                    this.P = false;
                    nVarA = n.a();
                    runnable = new Runnable() { // from class: com.anythink.basead.a.b.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            InterfaceC0048b interfaceC0048b3 = b.this.aa;
                            if (interfaceC0048b3 != null) {
                                interfaceC0048b3.c();
                            }
                        }
                    };
                } else {
                    com.anythink.basead.a.a.a(26, this.O, iVar);
                    if (iVar.g != null) {
                        if (iVar.j) {
                        }
                    }
                    b(iVar);
                    if (TextUtils.isEmpty(str)) {
                    }
                    if (TextUtils.isEmpty(str)) {
                    }
                }
            }
        }
        nVarA.b(runnable);
    }

    private void a(String str, com.anythink.basead.c.i iVar) {
        if (iVar.j) {
            if (TextUtils.isEmpty(str)) {
                com.anythink.core.common.o.n.a(str);
                return;
            } else if (com.anythink.basead.a.a.a(this.S, this.U, this.O, e(), str, new h())) {
                return;
            }
        }
        com.anythink.core.common.o.n.a(str);
    }

    public static boolean a(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                return false;
            }
            launchIntentForPackage.setFlags(268435456);
            context.startActivity(launchIntentForPackage);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ boolean a(b bVar, com.anythink.basead.c.i iVar) {
        iVar.i = new com.anythink.basead.c.b();
        com.anythink.basead.c.d dVarE = bVar.e();
        iVar.i.a = dVarE != null ? dVarE.c : "";
        if (!TextUtils.isEmpty(bVar.O.s())) {
            String strS = bVar.O.s();
            String str = bVar.U.d;
            String strReplaceAll = strS.replaceAll("\\{req_id\\}", str != null ? str : "");
            if (com.anythink.core.basead.a.a.a(bVar.S, strReplaceAll, false)) {
                com.anythink.basead.c.a aVar = iVar.g;
                if (aVar != null) {
                    aVar.i = true;
                }
                bVar.b(iVar);
                com.anythink.core.common.n.e.a(bVar.U, bVar.O, strReplaceAll, "1", 1);
                InterfaceC0048b interfaceC0048b = bVar.aa;
                if (interfaceC0048b != null) {
                    interfaceC0048b.a();
                }
                InterfaceC0048b interfaceC0048b2 = bVar.aa;
                if (interfaceC0048b2 != null) {
                    interfaceC0048b2.a(true);
                }
                bVar.P = false;
                n.a().b(bVar.new AnonymousClass4(false));
                return true;
            }
            com.anythink.core.common.n.e.a(bVar.U, bVar.O, strReplaceAll, "0", 1);
        }
        return false;
    }

    private boolean a(com.anythink.basead.c.i iVar, boolean z3) {
        iVar.i = new com.anythink.basead.c.b();
        com.anythink.basead.c.d dVarE = e();
        iVar.i.a = dVarE != null ? dVarE.c : "";
        if (!TextUtils.isEmpty(this.O.s())) {
            String strS = this.O.s();
            String str = this.U.d;
            String strReplaceAll = strS.replaceAll("\\{req_id\\}", str != null ? str : "");
            if (com.anythink.core.basead.a.a.a(this.S, strReplaceAll, false)) {
                com.anythink.basead.c.a aVar = iVar.g;
                if (aVar != null) {
                    aVar.i = true;
                }
                b(iVar);
                com.anythink.core.common.n.e.a(this.U, this.O, strReplaceAll, "1", 1);
                InterfaceC0048b interfaceC0048b = this.aa;
                if (interfaceC0048b != null && !z3) {
                    interfaceC0048b.a();
                }
                InterfaceC0048b interfaceC0048b2 = this.aa;
                if (interfaceC0048b2 != null) {
                    interfaceC0048b2.a(true);
                }
                this.P = false;
                n.a().b(new AnonymousClass4(z3));
                return true;
            }
            com.anythink.core.common.n.e.a(this.U, this.O, strReplaceAll, "0", 1);
        }
        return false;
    }

    private String b(String str) throws Throwable {
        String str2;
        HttpURLConnection httpURLConnection;
        boolean z3 = false;
        String headerField = str;
        for (int i2 = 0; i2 < 10; i2++) {
            HttpURLConnection httpURLConnection2 = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e2) {
                e = e2;
                str2 = headerField;
            }
            try {
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setInstanceFollowRedirects(false);
                com.anythink.core.common.f.n nVar = this.U.n;
                if (nVar != null && com.anythink.basead.a.a.a(9, nVar)) {
                    String strI = com.anythink.core.common.o.e.i();
                    if (!TextUtils.isEmpty(strI)) {
                        httpURLConnection.addRequestProperty("User-Agent", strI);
                    }
                }
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    headerField = httpURLConnection.getHeaderField("Location");
                    if (!com.anythink.core.basead.a.a.b(headerField) && !headerField.contains(com.anythink.china.common.a.a.g) && headerField.startsWith("http")) {
                        httpURLConnection.disconnect();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                    z3 = true;
                }
                if (z3 || responseCode == 200) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return headerField;
                }
                com.anythink.core.common.n.e.a(this.U, this.O, str, headerField, String.valueOf(responseCode), "");
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return "";
            } catch (Exception e3) {
                e = e3;
                str2 = headerField;
                httpURLConnection2 = httpURLConnection;
                com.anythink.core.common.n.e.a(this.U, this.O, str, str2, "", e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }
        return "";
    }

    private void b(com.anythink.basead.c.i iVar) {
        if (this.Y || !this.Z) {
            this.Z = true;
            com.anythink.basead.a.a.a(9, this.O, iVar);
        }
    }

    public static /* synthetic */ boolean b(b bVar, com.anythink.basead.c.i iVar) {
        return bVar.b(iVar, false);
    }

    private boolean b(com.anythink.basead.c.i iVar, final boolean z3) {
        iVar.i = new com.anythink.basead.c.b();
        com.anythink.basead.c.d dVarE = e();
        iVar.i.a = dVarE != null ? dVarE.c : "";
        com.anythink.basead.a.a.a(23, this.O, iVar);
        if (!TextUtils.isEmpty(this.O.D())) {
            String strD = this.O.D();
            String str = this.U.d;
            String strReplaceAll = strD.replaceAll("\\{req_id\\}", str != null ? str : "");
            o.a().a(this.O);
            if (com.anythink.core.basead.a.a.a(this.S, strReplaceAll, false)) {
                com.anythink.basead.c.a aVar = iVar.g;
                if (aVar != null) {
                    aVar.i = true;
                }
                b(iVar);
                com.anythink.core.common.n.e.a(this.U, this.O, strReplaceAll, "1", 0);
                InterfaceC0048b interfaceC0048b = this.aa;
                if (interfaceC0048b != null && !z3) {
                    interfaceC0048b.a();
                }
                InterfaceC0048b interfaceC0048b2 = this.aa;
                if (interfaceC0048b2 != null) {
                    interfaceC0048b2.a(true);
                }
                this.P = false;
                n.a().b(new Runnable() { // from class: com.anythink.basead.a.b.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        InterfaceC0048b interfaceC0048b3 = b.this.aa;
                        if (interfaceC0048b3 != null && !z3) {
                            interfaceC0048b3.b();
                        }
                        InterfaceC0048b interfaceC0048b4 = b.this.aa;
                        if (interfaceC0048b4 != null) {
                            interfaceC0048b4.c();
                        }
                    }
                });
                com.anythink.basead.a.a.a(24, this.O, iVar);
                return true;
            }
            o.a().b(this.O);
            com.anythink.basead.a.a.a(com.anythink.basead.a.a.a(this.S, this.O.F()) ? 28 : 29, this.O, iVar);
            com.anythink.core.common.n.e.a(this.U, this.O, strReplaceAll, "0", 0);
        }
        return false;
    }

    private com.anythink.basead.c.d e() {
        return c.a().a(this.O.d(), this.O.t());
    }

    private boolean f() {
        ay ayVarJ = n.a().J();
        boolean z3 = ayVarJ.b() == 1;
        boolean z4 = ayVarJ.a() == 1;
        String strL = com.anythink.core.common.o.e.l();
        if (TextUtils.isEmpty(strL)) {
            com.anythink.core.common.n.e.a(this.U, this.O, 5);
            return false;
        }
        if (!z3) {
            com.anythink.core.common.n.e.a(this.U, this.O, 3);
            return false;
        }
        if (!z4) {
            com.anythink.core.common.n.e.a(this.U, this.O, 1);
            return false;
        }
        String strI = this.O.i();
        String strJ = this.O.j();
        if (TextUtils.isEmpty(strI) || TextUtils.isEmpty(strJ)) {
            com.anythink.core.common.n.e.a(this.U, this.O, 4);
            return false;
        }
        try {
            Object objC = com.anythink.core.common.o.e.c(strL);
            Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
            Object objNewInstance = cls.newInstance();
            cls.getField("userName").set(objNewInstance, strI);
            cls.getField("path").set(objNewInstance, strJ);
            cls.getField("miniprogramType").set(objNewInstance, cls.getField("MINIPTOGRAM_TYPE_RELEASE").get(null));
            Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq")).invoke(objC, objNewInstance);
            com.anythink.core.common.n.e.a(this.U, this.O, 0);
            return true;
        } catch (Throwable th) {
            m mVar = this.U;
            l lVar = this.O;
            th.getMessage();
            com.anythink.core.common.n.e.a(mVar, lVar, 2);
            return false;
        }
    }

    private boolean g() {
        if (this.O.r() == 42) {
            return true;
        }
        l lVar = this.O;
        return (lVar instanceof ai) && ((ai) lVar).a() == 42;
    }

    private void h() {
        this.Q = true;
    }

    public final void a(InterfaceC0048b interfaceC0048b) {
        this.V = interfaceC0048b;
    }

    public final void a(com.anythink.basead.c.i iVar) {
        if (this.P) {
            return;
        }
        this.P = true;
        this.Q = false;
        com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass3(iVar), 2, true);
    }

    public final boolean a() {
        return this.P;
    }

    public final l b() {
        return this.O;
    }

    public final m c() {
        return this.U;
    }

    public final void d() {
        this.R = true;
    }
}
