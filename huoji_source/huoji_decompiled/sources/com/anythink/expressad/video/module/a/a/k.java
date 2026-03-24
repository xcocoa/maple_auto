package com.anythink.expressad.video.module.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.expressad.foundation.d.r;
import com.anythink.expressad.foundation.h.w;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class k extends f {
    public static final int V = 2;
    public static final int a = 1;
    private static final String ag = "camp_position";
    public boolean W;
    public com.anythink.expressad.foundation.d.c X;
    public List<com.anythink.expressad.foundation.d.c> Y;
    public boolean Z;
    public com.anythink.expressad.videocommon.b.c aa;
    public com.anythink.expressad.videocommon.c.c ab;
    public String ac;
    public String ad;
    public com.anythink.expressad.video.module.a.a ae;
    public int af;
    private boolean ah = false;
    private boolean ai = false;
    private boolean aj = false;

    public k(com.anythink.expressad.foundation.d.c cVar, com.anythink.expressad.videocommon.b.c cVar2, com.anythink.expressad.videocommon.c.c cVar3, String str, String str2, com.anythink.expressad.video.module.a.a aVar, int i, boolean z) {
        this.Z = false;
        this.ae = new f();
        this.af = 1;
        if (!z && cVar != null && w.b(str2) && cVar2 != null && aVar != null) {
            this.X = cVar;
            this.ad = str;
            this.ac = str2;
            this.aa = cVar2;
            this.ab = cVar3;
            this.ae = aVar;
            this.W = true;
            this.af = i;
            this.Z = false;
            return;
        }
        if (!z || cVar == null || !w.b(str2) || aVar == null) {
            return;
        }
        this.X = cVar;
        this.ad = str;
        this.ac = str2;
        this.aa = cVar2;
        this.ab = cVar3;
        this.ae = aVar;
        this.W = true;
        this.af = i;
        this.Z = true;
    }

    private static void g() {
    }

    private static void h() {
    }

    private static void i() {
        com.anythink.expressad.videocommon.b.e.a().a(false);
    }

    private static void j() {
    }

    private void k() {
        if (!this.W || com.anythink.expressad.foundation.g.a.f.k == null || TextUtils.isEmpty(this.X.aZ())) {
            return;
        }
        com.anythink.expressad.foundation.g.a.f.a(this.ac, this.X, "reward");
    }

    private static void l() {
    }

    private static void m() {
    }

    private static void n() {
    }

    public final void a() {
        if (!this.W || this.X == null) {
            return;
        }
        com.anythink.core.common.b.n.a().f();
        new r(r.q, this.X.aZ(), this.X.Z(), this.X.aa(), this.ac, com.anythink.expressad.foundation.h.k.a()).a(this.X.H() ? r.aQ : r.aR);
    }

    public final void a(int i) {
        if (this.X != null) {
            if (i == 1 || i == 2) {
                com.anythink.expressad.video.module.b.a.a(com.anythink.core.common.b.n.a().f(), this.X, i, this.af);
            }
        }
    }

    @Override // com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
    public void a(int i, Object obj) {
        super.a(i, obj);
        this.ae.a(i, obj);
    }

    public final void a(int i, String str) {
        if (this.X != null) {
            com.anythink.core.common.b.n.a().f();
            new r(r.r, this.X.aZ(), this.X.Z(), this.X.aa(), this.ac, com.anythink.expressad.foundation.h.k.a(), i, str);
        }
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        this.X = cVar;
    }

    public final void a(String str) {
        List<com.anythink.expressad.foundation.d.c> list;
        if (this.X == null || (list = this.Y) == null || list.size() == 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(ag)) {
                this.X = this.Y.get(jSONObject.getInt(ag));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public final void a(List<com.anythink.expressad.foundation.d.c> list) {
        this.Y = list;
    }

    public final void b() {
        com.anythink.expressad.videocommon.b.c cVar = this.aa;
        if (cVar != null) {
            cVar.b(true);
        }
    }

    public final void b(int i) {
        com.anythink.expressad.foundation.d.c cVar = this.X;
        if (cVar != null) {
            String strAh = cVar.ah();
            if (TextUtils.isEmpty(strAh)) {
                return;
            }
            if (i == 1 || i == 2) {
                if (!strAh.contains("endscreen_type")) {
                    StringBuilder sb = new StringBuilder(strAh);
                    sb.append(strAh.contains("?") ? "&endscreen_type=" : "?endscreen_type=");
                    sb.append(i);
                    strAh = sb.toString();
                } else if (i == 2) {
                    if (strAh.contains("endscreen_type=1")) {
                        strAh = strAh.replace("endscreen_type=1", "endscreen_type=2");
                    }
                } else if (strAh.contains("endscreen_type=2")) {
                    strAh = strAh.replace("endscreen_type=2", "endscreen_type=1");
                }
                this.X.q(strAh);
            }
        }
    }

    public final void c() {
        Map<String, Long> map;
        StringBuilder sb;
        try {
            com.anythink.expressad.foundation.d.c cVar = this.X;
            if (cVar != null && cVar.j() && this.Z && !this.X.l()) {
                this.ai = true;
                return;
            }
            if (!this.W || TextUtils.isEmpty(this.X.ai()) || (map = com.anythink.expressad.foundation.g.a.f.h) == null || map.containsKey(this.X.ai()) || this.ai) {
                return;
            }
            com.anythink.expressad.foundation.g.a.f.h.put(this.X.ai(), Long.valueOf(System.currentTimeMillis()));
            String strAi = this.X.ai();
            if (this.X.n() == 1) {
                sb = new StringBuilder();
                sb.append(strAi);
                sb.append("&to=1&cbt=");
                sb.append(this.X.az());
                sb.append("&tmorl=");
                sb.append(this.af);
            } else {
                sb = new StringBuilder();
                sb.append(strAi);
                sb.append("&to=0&cbt=");
                sb.append(this.X.az());
                sb.append("&tmorl=");
                sb.append(this.af);
            }
            String string = sb.toString();
            if (!this.Z) {
                com.anythink.expressad.a.a.a(com.anythink.core.common.b.n.a().f(), this.X, this.ac, string, true);
            } else if (this.X.l()) {
                com.anythink.expressad.a.a.a(com.anythink.core.common.b.n.a().f(), this.X, this.ac, string, false, true, com.anythink.expressad.a.a.a.j);
            }
            this.ai = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void d() {
        StringBuilder sb;
        try {
            if (!this.W || this.ah || TextUtils.isEmpty(this.X.ag())) {
                return;
            }
            this.ah = true;
            this.X.A();
            String strAg = this.X.ag();
            if (this.X.n() == 1) {
                sb = new StringBuilder();
                sb.append(strAg);
                sb.append("&to=1&cbt=");
                sb.append(this.X.az());
                sb.append("&tmorl=");
                sb.append(this.af);
            } else {
                sb = new StringBuilder();
                sb.append(strAg);
                sb.append("&to=0&cbt=");
                sb.append(this.X.az());
                sb.append("&tmorl=");
                sb.append(this.af);
            }
            com.anythink.expressad.a.a.a(com.anythink.core.common.b.n.a().f(), this.X, this.ac, sb.toString(), false, true, com.anythink.expressad.a.a.a.i);
            com.anythink.expressad.video.module.b.a.a(com.anythink.core.common.b.n.a().f(), this.X);
            if (!this.W || com.anythink.expressad.foundation.g.a.f.k == null || TextUtils.isEmpty(this.X.aZ())) {
                return;
            }
            com.anythink.expressad.foundation.g.a.f.a(this.ac, this.X, "reward");
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void e() {
        com.anythink.expressad.foundation.d.c cVar;
        List<String> listE;
        try {
            if (!this.W || this.aj || (cVar = this.X) == null) {
                return;
            }
            this.aj = true;
            if ((cVar.j() && this.Z && !this.X.l()) || this.Z || (listE = this.X.e()) == null || listE.size() <= 0) {
                return;
            }
            Iterator<String> it = listE.iterator();
            while (it.hasNext()) {
                com.anythink.expressad.a.a.a(com.anythink.core.common.b.n.a().f(), this.X, this.ac, it.next(), true);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void f() {
        com.anythink.expressad.foundation.d.c cVar = this.X;
        if (cVar == null || TextUtils.isEmpty(cVar.K()) || this.X.L() == null || this.X.L().n() == null) {
            return;
        }
        Context contextF = com.anythink.core.common.b.n.a().f();
        com.anythink.expressad.foundation.d.c cVar2 = this.X;
        com.anythink.expressad.a.a.a(contextF, cVar2, cVar2.K(), this.X.L().n(), false);
    }
}
