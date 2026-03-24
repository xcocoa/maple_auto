package com.anythink.expressad.d;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.e;
import com.anythink.expressad.foundation.h.h;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.j;
import com.anythink.expressad.foundation.h.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private int A;
    private String B;
    private long C;
    private int D;
    private long E;
    private long F;
    private int G;
    private int H;
    private int I;
    private String J;
    private String K;
    private int L;
    private List<com.anythink.expressad.foundation.d.c> M;
    private List<com.anythink.expressad.foundation.d.b> N;
    private int R;
    private LinkedList<String> S;
    private int Y;
    private List<String> Z;
    private int aE;
    private long aG;
    private long aH;
    private int aI;
    private int aJ;
    private long aK;
    private int aM;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private String ae;
    private String af;
    private String ao;
    private String b;
    private Map<String, C0105a> be;
    private b bg;
    private String bl;
    private String bm;
    private long c;
    private int d;
    private int f;
    private boolean g;
    private Map<String, String> h;
    private boolean i;
    private long j;
    private List<c> l;
    private boolean m;
    private long n;
    private long o;
    private long p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private long u;
    private List<String> v;
    private int w;
    private int x;
    private int y;
    private int z;
    private int a = 0;
    private long e = com.anythink.expressad.d.a.b.aT;
    private String k = "";
    private boolean O = false;
    private int P = 3;
    private boolean Q = true;
    private int T = 0;
    private int U = com.anythink.expressad.d.a.b.ck;
    private int V = 10;
    private int W = 120;
    private String X = "";
    private int ag = 1;
    private int ah = 1;
    private int ai = 1;
    private int aj = 0;
    private int ak = 1;
    private String al = "";
    private int am = 0;
    private int an = 2;
    private int ap = 86400;
    private String aq = "LdxThdi1WBK\\/WgfPhbxQYkeXHBPwHZKAJ7eXHM==";
    private String ar = "LdxThdi1WBK\\/WgfPhbxQYkeXHBPwHZKsYFh=";
    private int as = 1;
    private int at = 30;
    private int au = 5;
    private int av = 0;
    private int aw = 0;
    private int ax = 9377;
    private int ay = 0;
    private int az = 0;
    private int aA = 0;
    private int aB = 2;
    private int aC = 10;
    private List<Integer> aD = new ArrayList();
    private int aF = 1;
    private int aL = 3;
    private String aN = "";
    private String aO = "";
    private String aP = "";
    private String aQ = "";
    private String aR = "";
    private int aS = 0;
    private int aT = 21600;
    private int aU = 2;
    private int aV = 0;
    private int aW = 0;
    private int aX = 604800;
    private int aY = 0;
    private String aZ = "";
    private String ba = "";
    private String bb = "";
    private String bc = "";
    private String bd = "";
    private int bf = 0;
    private int bh = 0;
    private String bi = "";
    private int bj = 2;
    private int bk = 7200;
    private int bn = 0;
    private boolean bo = false;
    private int bp = 1;
    private int bq = 0;
    private int br = 0;
    private int bs = 0;
    private int bt = 3;
    private int bu = 600;
    private int bv = 10;

    /* JADX INFO: renamed from: com.anythink.expressad.d.a$a, reason: collision with other inner class name */
    public static class C0105a {
        private List<String> a;
        private List<String> b;
        private List<String> c;
        private List<String> d;

        private List<String> a() {
            return this.a;
        }

        private void a(List<String> list) {
            this.a = list;
        }

        private List<String> b() {
            return this.b;
        }

        private void b(List<String> list) {
            this.b = list;
        }

        private List<String> c() {
            return this.c;
        }

        private void c(List<String> list) {
            this.c = list;
        }

        private List<String> d() {
            return this.d;
        }

        private void d(List<String> list) {
            this.d = list;
        }

        public final void a(JSONObject jSONObject) {
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("x");
                if (jSONArrayOptJSONArray != null) {
                    this.a = h.a(jSONArrayOptJSONArray);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("y");
                if (jSONArrayOptJSONArray2 != null) {
                    this.b = h.a(jSONArrayOptJSONArray2);
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("width");
                if (jSONArrayOptJSONArray3 != null) {
                    this.c = h.a(jSONArrayOptJSONArray3);
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("height");
                if (jSONArrayOptJSONArray4 != null) {
                    this.d = h.a(jSONArrayOptJSONArray4);
                }
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static class b {
        private String a;
        private String b;
        private String c;
        private JSONArray d;

        public static b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            b bVar = new b();
            Context contextF = n.a().f();
            bVar.a = jSONObject.optString("title", contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_title", i.g)));
            bVar.b = jSONObject.optString(com.anythink.expressad.d.a.b.dO, contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_close_close", i.g)));
            bVar.c = jSONObject.optString(com.anythink.expressad.d.a.b.dP, contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_close_submit", i.g)));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
            bVar.d = jSONArrayOptJSONArray;
            if (jSONArrayOptJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                bVar.d = jSONArray;
                jSONArray.put(contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_content_stuck", i.g)));
                bVar.d.put(contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_content_cnr", i.g)));
                bVar.d.put(contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_content_balck_screen", i.g)));
                bVar.d.put(contextF.getString(i.a(contextF, "anythink_cm_feedback_dialog_content_other", i.g)));
            }
            return bVar;
        }

        private void a(String str) {
            this.a = str;
        }

        private void a(JSONArray jSONArray) {
            this.d = jSONArray;
        }

        private void b(String str) {
            this.b = str;
        }

        private void c(String str) {
            this.c = str;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final JSONArray d() {
            return this.d;
        }
    }

    private void A(int i) {
        this.t = i;
    }

    private void A(String str) {
        this.bm = str;
    }

    private void B(int i) {
        this.A = i;
    }

    private void C(int i) {
        this.x = i;
    }

    private void D(int i) {
        this.y = i;
    }

    private void E(int i) {
        this.z = i;
    }

    private void F(int i) {
        this.aL = i;
    }

    private void G(int i) {
        this.aI = i;
    }

    private void H(int i) {
        this.aJ = i;
    }

    private void I(int i) {
        this.f = i;
    }

    private void J(int i) {
        this.r = i;
    }

    private void K(int i) {
        this.s = i;
    }

    private void L(int i) {
        this.aY = i;
    }

    private void M(int i) {
        this.aS = i;
    }

    private void N(int i) {
        this.aT = i;
    }

    private void O(int i) {
        this.aU = i;
    }

    private void P(int i) {
        this.aV = i;
    }

    private void Q(int i) {
        this.aW = i;
    }

    private void R(int i) {
        this.aX = i;
    }

    private void S(int i) {
        this.at = i;
    }

    private void T(int i) {
        this.au = i;
    }

    private void U(int i) {
        this.av = i;
    }

    private void V(int i) {
        this.aw = i;
    }

    private void W(int i) {
        this.ax = i;
    }

    private int X() {
        return this.R;
    }

    private void X(int i) {
        this.P = i;
    }

    private List<com.anythink.expressad.foundation.d.b> Y() {
        return this.N;
    }

    private void Y(int i) {
        this.bf = i;
    }

    private String Z() {
        return this.X;
    }

    private void Z(int i) {
        this.bh = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(Context context, String str) {
        String strReplace = "";
        try {
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.foundation.b.a.c().f();
            a aVarB = com.anythink.expressad.d.b.b();
            if (aVarB != null && aVarB.h != null) {
                String host = Uri.parse(str).getHost();
                Iterator<Map.Entry<String, String>> it = aVarB.h.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        String key = it.next().getKey();
                        if (!TextUtils.isEmpty(host) && host.contains(key)) {
                            String str2 = aVarB.h.get(key);
                            if (TextUtils.isEmpty(str2)) {
                                return "";
                            }
                            String strReplace2 = str2.replace("{gaid}", e.f());
                            if (strReplace2.contains(com.anythink.expressad.d.a.b.I)) {
                                strReplace = e.d(context) != null ? strReplace2.replace(com.anythink.expressad.d.a.b.I, e.d(context)) : strReplace2;
                            } else if (strReplace2.contains(com.anythink.expressad.d.a.b.H) && e.e(context) != null) {
                                strReplace = strReplace2.replace(com.anythink.expressad.d.a.b.H, e.e(context));
                            }
                        }
                    }
                }
            }
            break;
        } catch (Throwable unused) {
        }
        return strReplace;
    }

    private void a(long j) {
        this.E = j;
    }

    private void a(b bVar) {
        this.bg = bVar;
    }

    private void a(LinkedList<String> linkedList) {
        this.S = linkedList;
    }

    private void a(List<com.anythink.expressad.foundation.d.b> list) {
        this.N = list;
    }

    private void a(Map<String, String> map) {
        this.h = map;
    }

    private void a(boolean z) {
        this.g = z;
    }

    private int aA() {
        return this.aE;
    }

    private int aB() {
        return this.Y;
    }

    private List<String> aC() {
        return this.Z;
    }

    private int aD() {
        return this.aa;
    }

    private int aE() {
        return this.ab;
    }

    private int aF() {
        return this.ac;
    }

    private int aG() {
        return this.ad;
    }

    private String aH() {
        return this.ae;
    }

    private int aI() {
        return this.G;
    }

    private int aJ() {
        return this.H;
    }

    private List<com.anythink.expressad.foundation.d.c> aK() {
        return this.M;
    }

    private int aL() {
        return this.I;
    }

    private String aM() {
        return this.J;
    }

    private int aN() {
        return this.D;
    }

    private long aO() {
        return this.E;
    }

    private long aP() {
        return this.F;
    }

    private long aQ() {
        return this.C * 1000;
    }

    private int aR() {
        return this.t;
    }

    private String aS() {
        return this.B;
    }

    private int aT() {
        return this.x;
    }

    private int aU() {
        return this.y;
    }

    private int aV() {
        return this.z;
    }

    private int aW() {
        return this.aL;
    }

    private long aX() {
        return this.aK;
    }

    private int aY() {
        return this.aI;
    }

    private int aZ() {
        return this.aJ;
    }

    private int aa() {
        return this.V;
    }

    private void aa(int i) {
        this.bj = i;
    }

    private LinkedList<String> ab() {
        return this.S;
    }

    private void ab(int i) {
        this.bk = i;
    }

    private int ac() {
        return this.a;
    }

    private void ac(int i) {
        this.bp = i;
    }

    private int ad() {
        return this.T;
    }

    private void ad(int i) {
        this.br = i;
    }

    private int ae() {
        return this.U * 1000;
    }

    private void ae(int i) {
        this.bs = i;
    }

    private int af() {
        return this.aC;
    }

    private void af(int i) {
        this.bt = i;
    }

    private int ag() {
        return this.ay;
    }

    private void ag(int i) {
        this.bu = i;
    }

    private int ah() {
        return this.az;
    }

    private void ah(int i) {
        this.bv = i;
    }

    private int ai() {
        return this.aA;
    }

    private int aj() {
        return this.aB;
    }

    private int ak() {
        return this.as;
    }

    private String al() {
        return this.aq;
    }

    private String am() {
        return this.ar;
    }

    private int an() {
        return this.ap;
    }

    private int ao() {
        return this.an;
    }

    private String ap() {
        return this.ao;
    }

    private int aq() {
        return this.ag;
    }

    private int ar() {
        return this.ah;
    }

    private int as() {
        return this.ai;
    }

    private int at() {
        return this.aj;
    }

    private int au() {
        return this.ak;
    }

    private String av() {
        return this.al;
    }

    private int aw() {
        return this.am;
    }

    private int ax() {
        return this.L;
    }

    private String ay() {
        return this.K;
    }

    private int az() {
        return this.aF;
    }

    public static a b(String str) {
        ArrayList arrayList;
        a aVar = null;
        arrayList = null;
        ArrayList arrayList2 = null;
        aVar = null;
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                a aVar2 = new a();
                try {
                    aVar2.b = jSONObject.optString(com.anythink.expressad.d.a.b.h);
                    aVar2.K = jSONObject.optString(com.anythink.expressad.d.a.b.j, "anythink");
                    aVar2.c = jSONObject.optLong(com.anythink.expressad.d.a.b.l);
                    aVar2.d = jSONObject.optInt(com.anythink.expressad.d.a.b.m);
                    aVar2.e = jSONObject.optLong("getpf");
                    aVar2.f = jSONObject.optInt(com.anythink.expressad.d.a.b.p);
                    aVar2.g = jSONObject.optBoolean(com.anythink.expressad.d.a.b.w);
                    aVar2.j = jSONObject.optLong("current_time");
                    aVar2.i = jSONObject.optBoolean(com.anythink.expressad.d.a.b.o);
                    aVar2.o = jSONObject.optLong(com.anythink.expressad.d.a.b.B);
                    aVar2.n = jSONObject.optLong("plct") == 0 ? com.anythink.expressad.d.a.b.P : jSONObject.optLong("plct");
                    aVar2.m = jSONObject.optBoolean(com.anythink.expressad.d.a.b.C);
                    aVar2.p = jSONObject.optLong(com.anythink.expressad.d.a.b.F);
                    aVar2.q = jSONObject.optBoolean(com.anythink.expressad.d.a.b.G);
                    aVar2.r = jSONObject.optInt(com.anythink.expressad.d.a.b.X);
                    aVar2.s = jSONObject.optInt(com.anythink.expressad.d.a.b.Y);
                    aVar2.L = jSONObject.optInt(com.anythink.expressad.d.a.b.k);
                    aVar2.t = jSONObject.optInt(com.anythink.expressad.d.a.b.Z, 1800);
                    aVar2.x = jSONObject.optInt(com.anythink.expressad.d.a.b.aa);
                    aVar2.u = jSONObject.optLong("plctb") == 0 ? com.anythink.expressad.d.a.b.Q : jSONObject.optLong("plctb");
                    aVar2.aI = jSONObject.optInt(com.anythink.expressad.d.a.b.ad);
                    aVar2.aJ = jSONObject.optInt(com.anythink.expressad.d.a.b.ae);
                    aVar2.x = jSONObject.optInt(com.anythink.expressad.d.a.b.aa, 100);
                    aVar2.y = jSONObject.optInt(com.anythink.expressad.d.a.b.af, 2);
                    aVar2.z = jSONObject.optInt(com.anythink.expressad.d.a.b.ag, 2);
                    boolean z = true;
                    aVar2.A = jSONObject.optInt(com.anythink.expressad.d.a.b.ah, 1);
                    aVar2.aK = jSONObject.optLong(com.anythink.expressad.d.a.b.ai, com.anythink.expressad.d.a.b.aC);
                    aVar2.B = jSONObject.optString(com.anythink.expressad.d.a.b.aj);
                    aVar2.C = jSONObject.optLong(com.anythink.expressad.d.a.b.ak, com.anythink.expressad.d.a.b.aD);
                    aVar2.D = jSONObject.optInt(com.anythink.expressad.d.a.b.aE, 1);
                    aVar2.E = jSONObject.optInt(com.anythink.expressad.d.a.b.aF, 604800);
                    aVar2.F = jSONObject.optInt(com.anythink.expressad.d.a.b.aG, com.anythink.expressad.d.a.b.aK);
                    aVar2.aL = jSONObject.optInt(com.anythink.expressad.d.a.b.bn, 3);
                    aVar2.aF = jSONObject.optInt(com.anythink.expressad.d.a.b.bv, 1);
                    aVar2.af = jSONObject.optString(com.anythink.expressad.d.a.b.aH, "");
                    aVar2.aE = jSONObject.optInt(com.anythink.expressad.d.a.b.al, 1);
                    aVar2.ah = jSONObject.optInt(com.anythink.expressad.d.a.b.bE, 1);
                    aVar2.ag = jSONObject.optInt(com.anythink.expressad.d.a.b.bF, 1);
                    aVar2.ai = jSONObject.optInt(com.anythink.expressad.d.a.b.bG, 1);
                    int i = 0;
                    aVar2.aj = jSONObject.optInt(com.anythink.expressad.d.a.b.bH, 0);
                    aVar2.ak = jSONObject.optInt(com.anythink.expressad.d.a.b.bI, 1);
                    aVar2.am = jSONObject.optInt(com.anythink.expressad.d.a.b.bK, -1);
                    aVar2.an = jSONObject.optInt(com.anythink.expressad.d.a.b.bV, 2);
                    aVar2.ap = jSONObject.optInt(com.anythink.expressad.d.a.b.bY, 86400);
                    aVar2.ao = jSONObject.optString(com.anythink.expressad.d.a.b.bW);
                    aVar2.ar = jSONObject.optString(com.anythink.expressad.d.a.b.cG);
                    aVar2.aq = jSONObject.optString(com.anythink.expressad.d.a.b.cF);
                    aVar2.as = jSONObject.optInt(com.anythink.expressad.d.a.b.cN);
                    aVar2.U = jSONObject.optInt(com.anythink.expressad.d.a.b.ci, com.anythink.expressad.d.a.b.ck);
                    aVar2.T = jSONObject.optInt(com.anythink.expressad.d.a.b.ch, 0);
                    try {
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(com.anythink.expressad.d.a.b.cg);
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                            LinkedList<String> linkedList = new LinkedList<>();
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                linkedList.add(jSONArrayOptJSONArray.optString(i2));
                            }
                            aVar2.S = linkedList;
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    long jOptLong = jSONObject.optLong(com.anythink.expressad.d.a.b.ab);
                    if (jOptLong == 0) {
                        aVar2.aG = 20L;
                    } else {
                        aVar2.aG = jOptLong;
                    }
                    long jOptLong2 = jSONObject.optLong(com.anythink.expressad.d.a.b.ac);
                    if (jOptLong2 == 0) {
                        aVar2.aH = 10L;
                    } else {
                        aVar2.aH = jOptLong2;
                        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(com.anythink.expressad.d.a.b.v);
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                            HashMap map = new HashMap();
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i3);
                                map.put(jSONObjectOptJSONObject.optString("domain"), jSONObjectOptJSONObject.optString("format"));
                            }
                            aVar2.h = map;
                        }
                    }
                    aVar2.G = jSONObject.optInt(com.anythink.expressad.d.a.b.ao, 3);
                    aVar2.H = jSONObject.optInt(com.anythink.expressad.d.a.b.ap, 86400);
                    aVar2.I = jSONObject.optInt("iex", 1);
                    JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(com.anythink.expressad.d.a.b.ar);
                    if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                            String strOptString = jSONArrayOptJSONArray3.optString(i4);
                            if (w.b(strOptString)) {
                                arrayList.add(com.anythink.expressad.foundation.d.c.a(new JSONObject(strOptString)));
                            }
                        }
                    }
                    if (arrayList != null) {
                        aVar2.M = arrayList;
                    }
                    try {
                        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(com.anythink.expressad.d.a.b.as);
                        if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                            arrayList2 = new ArrayList();
                            for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                                String strOptString2 = jSONArrayOptJSONArray4.optString(i5);
                                if (w.b(strOptString2)) {
                                    JSONObject jSONObject2 = new JSONObject(strOptString2);
                                    arrayList2.add(new com.anythink.expressad.foundation.d.b(jSONObject2.optInt("adtype"), jSONObject2.optString("unitid")));
                                }
                            }
                        }
                        if (arrayList2 != null) {
                            aVar2.N = arrayList2;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    aVar2.aM = jSONObject.optInt(com.anythink.expressad.d.a.b.at, com.anythink.expressad.d.a.b.bx);
                    aVar2.Y = jSONObject.optInt("pf", com.anythink.expressad.d.a.b.by);
                    aVar2.aa = jSONObject.optInt(com.anythink.expressad.d.a.b.aA, 20);
                    aVar2.ae = jSONObject.optString(com.anythink.expressad.d.a.b.aB);
                    JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray(com.anythink.expressad.d.a.b.av);
                    if (jSONArrayOptJSONArray5 != null && jSONArrayOptJSONArray5.length() > 0) {
                        ArrayList arrayList3 = new ArrayList();
                        for (int i6 = 0; i6 < jSONArrayOptJSONArray5.length(); i6++) {
                            arrayList3.add(jSONArrayOptJSONArray5.optString(i6));
                        }
                        aVar2.Z = arrayList3;
                    }
                    JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(com.anythink.expressad.d.a.b.aw);
                    if (jSONObjectOptJSONObject2 != null) {
                        aVar2.ab = jSONObjectOptJSONObject2.optInt(com.anythink.expressad.d.a.b.ax, 1);
                        aVar2.ac = jSONObjectOptJSONObject2.optInt(com.anythink.expressad.d.a.b.ay, 1);
                        aVar2.ad = jSONObjectOptJSONObject2.optInt("delete", 1);
                    }
                    aVar2.aN = jSONObject.optString(com.anythink.expressad.d.a.b.ct, "");
                    aVar2.aO = jSONObject.optString(com.anythink.expressad.d.a.b.cu, "");
                    aVar2.aP = jSONObject.optString(com.anythink.expressad.d.a.b.cv, "");
                    aVar2.aQ = jSONObject.optString(com.anythink.expressad.d.a.b.cw, "");
                    aVar2.aR = jSONObject.optString(com.anythink.expressad.d.a.b.cx, "");
                    aVar2.aS = jSONObject.optInt(com.anythink.expressad.d.a.b.cy, 0);
                    aVar2.aT = jSONObject.optInt(com.anythink.expressad.d.a.b.cz, 21600);
                    aVar2.aU = jSONObject.optInt(com.anythink.expressad.d.a.b.cA, 2);
                    aVar2.aV = jSONObject.optInt(com.anythink.expressad.d.a.b.cB, 0);
                    aVar2.aW = jSONObject.optInt(com.anythink.expressad.d.a.b.cC, 0);
                    aVar2.aX = jSONObject.optInt(com.anythink.expressad.d.a.b.cD, 604800);
                    aVar2.aY = jSONObject.optInt(com.anythink.expressad.d.a.b.cE, 0);
                    aVar2.aZ = jSONObject.optString("adchoice_icon", "");
                    aVar2.bb = jSONObject.optString("adchoice_link", "");
                    aVar2.ba = jSONObject.optString("adchoice_size", "");
                    aVar2.bd = jSONObject.optString("platform_logo", "");
                    aVar2.bc = jSONObject.optString("platform_name", "");
                    aVar2.be = y(jSONObject.optString(com.anythink.expressad.d.a.b.cM, ""));
                    aVar2.a = jSONObject.optInt(com.anythink.expressad.d.a.b.cO, 0);
                    aVar2.bh = jSONObject.optInt(com.anythink.expressad.d.a.b.cQ, 0);
                    aVar2.W = jSONObject.optInt(com.anythink.expressad.d.a.b.di, 120);
                    aVar2.V = jSONObject.optInt(com.anythink.expressad.d.a.b.dg, 10);
                    aVar2.X = jSONObject.optString(com.anythink.expressad.d.a.b.dI, "");
                    aVar2.bi = jSONObject.optString(com.anythink.expressad.d.a.b.cT, "");
                    aVar2.bj = jSONObject.optInt(com.anythink.expressad.d.a.b.cU, 2);
                    aVar2.bk = jSONObject.optInt(com.anythink.expressad.d.a.b.cV, 7200);
                    aVar2.bm = jSONObject.optString(com.anythink.expressad.d.a.b.ds);
                    aVar2.bl = jSONObject.optString(com.anythink.expressad.d.a.b.dA);
                    int iOptInt = jSONObject.optInt(com.anythink.expressad.d.a.b.dt, 0);
                    if (iOptInt > 2 || iOptInt < 0) {
                        iOptInt = 0;
                    }
                    aVar2.bn = iOptInt;
                    aVar2.bo = jSONObject.optBoolean(com.anythink.expressad.d.a.b.dw, false);
                    JSONArray jSONArrayOptJSONArray6 = jSONObject.optJSONArray(com.anythink.expressad.d.a.b.dr);
                    if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() > 0) {
                        for (int i7 = 0; i7 < jSONArrayOptJSONArray6.length(); i7++) {
                            JSONObject jSONObject3 = jSONArrayOptJSONArray6.getJSONObject(i7);
                            Iterator<String> itKeys = jSONObject3.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                if (!TextUtils.isEmpty(next) && jSONObject3.getBoolean(next)) {
                                    aVar2.aD.add(Integer.valueOf(Integer.parseInt(next)));
                                }
                            }
                        }
                    }
                    try {
                        int iOptInt2 = jSONObject.optInt("lqcnt", 30);
                        int iOptInt3 = jSONObject.optInt("lqto", 5);
                        int iOptInt4 = jSONObject.optInt("lqswt", 0);
                        int iOptInt5 = jSONObject.optInt("lqtype", 0);
                        aVar2.au = iOptInt3;
                        aVar2.at = iOptInt2;
                        aVar2.av = iOptInt4;
                        aVar2.aw = iOptInt5;
                        int i8 = Integer.parseInt(j.b(jSONObject.optString("lqpt")));
                        if (i8 > 0 && i8 < 65535) {
                            aVar2.ax = i8;
                        }
                    } catch (Exception unused) {
                    }
                    aVar2.bp = jSONObject.optInt(com.anythink.expressad.d.a.b.dB, 0);
                    try {
                        int iOptInt6 = jSONObject.optInt("l", 3);
                        boolean z3 = jSONObject.optInt("k", 0) == 1;
                        if (jSONObject.optInt(com.anythink.expressad.d.a.b.dH, 1) != 1) {
                            z = false;
                        }
                        aVar2.P = iOptInt6;
                        aVar2.O = z3;
                        aVar2.Q = z;
                    } catch (Exception e2) {
                        e2.getMessage();
                    }
                    aVar2.bf = jSONObject.optInt(com.anythink.expressad.d.a.b.dK, 0);
                    aVar2.bg = b.a(jSONObject.optJSONObject(com.anythink.expressad.d.a.b.dL));
                    try {
                        int iOptInt7 = jSONObject.optInt(com.anythink.expressad.d.a.b.dQ, com.anythink.expressad.foundation.g.a.cH);
                        int iOptInt8 = jSONObject.optInt(com.anythink.expressad.d.a.b.dR, com.anythink.expressad.foundation.g.a.cI);
                        int iOptInt9 = jSONObject.optInt(com.anythink.expressad.d.a.b.dS, com.anythink.expressad.foundation.g.a.cJ);
                        int iOptInt10 = jSONObject.optInt(com.anythink.expressad.d.a.b.dU, com.anythink.expressad.foundation.g.a.cO);
                        if (iOptInt7 <= 0) {
                            iOptInt7 = com.anythink.expressad.foundation.g.a.cH;
                        }
                        if (iOptInt8 <= 0) {
                            iOptInt8 = com.anythink.expressad.foundation.g.a.cI;
                        }
                        if (iOptInt9 <= 0) {
                            iOptInt9 = com.anythink.expressad.foundation.g.a.cJ;
                        }
                        if (iOptInt10 < 0) {
                            iOptInt10 = com.anythink.expressad.foundation.g.a.cO;
                        }
                        aVar2.aA = iOptInt7;
                        aVar2.ay = iOptInt8;
                        aVar2.az = iOptInt9;
                        aVar2.aB = iOptInt10;
                        int iOptInt11 = jSONObject.optInt(com.anythink.expressad.d.a.b.dT, 0);
                        if (iOptInt11 >= 0) {
                            i = iOptInt11;
                        }
                        aVar2.R = i;
                        aVar2.b(jSONObject.optInt(com.anythink.expressad.d.a.b.dV, 10));
                        return aVar2;
                    } catch (Exception unused2) {
                        aVar = aVar2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    aVar = aVar2;
                    e.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
        return aVar;
    }

    private void b(long j) {
        this.C = j;
    }

    private void b(List<String> list) {
        this.Z = list;
    }

    private void b(Map<String, C0105a> map) {
        this.be = map;
    }

    private void b(boolean z) {
        this.O = z;
    }

    private int bA() {
        return this.aX;
    }

    private String bB() {
        return this.bc;
    }

    private String bC() {
        return this.bd;
    }

    private Map<String, C0105a> bD() {
        return this.be;
    }

    private boolean bE() {
        return (TextUtils.isEmpty(this.aZ) || TextUtils.isEmpty(this.bb) || TextUtils.isEmpty(this.ba)) ? false : true;
    }

    private int bF() {
        return this.at;
    }

    private int bG() {
        return this.au;
    }

    private int bH() {
        return this.av;
    }

    private int bI() {
        return this.aw;
    }

    private int bJ() {
        return this.ax;
    }

    private boolean bK() {
        return this.O;
    }

    private int bL() {
        return this.P;
    }

    private boolean bM() {
        return this.Q;
    }

    private int bN() {
        return this.bh;
    }

    private String bO() {
        return this.bi;
    }

    private int bP() {
        return this.bj;
    }

    private int bQ() {
        return this.bk;
    }

    private String bR() {
        return this.bm;
    }

    private int bS() {
        return this.bn;
    }

    private boolean bT() {
        return this.bo;
    }

    private int bU() {
        return this.bq;
    }

    private long ba() {
        return this.p;
    }

    private long bb() {
        return this.o;
    }

    private String bc() {
        return this.b;
    }

    private long bd() {
        return this.c;
    }

    private int be() {
        return this.d;
    }

    private long bf() {
        return this.e;
    }

    private int bg() {
        return this.f;
    }

    private List<c> bh() {
        return this.l;
    }

    private String bi() {
        return this.af;
    }

    private String bj() {
        return this.k;
    }

    private long bk() {
        return this.j;
    }

    private Map<String, String> bl() {
        return this.h;
    }

    private boolean bm() {
        return this.g;
    }

    private boolean bn() {
        return this.i;
    }

    private int bo() {
        return this.r;
    }

    private int bp() {
        return this.s;
    }

    private static boolean bq() {
        try {
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.foundation.b.a.c().f();
            a aVarB = com.anythink.expressad.d.b.b();
            if (aVarB != null) {
                return aVarB.g;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    private String br() {
        return this.aQ;
    }

    private boolean bs() {
        return (TextUtils.isEmpty(this.aN) || TextUtils.isEmpty(this.aO) || TextUtils.isEmpty(this.aP) || TextUtils.isEmpty(this.aQ)) ? false : true;
    }

    private boolean bt() {
        return (TextUtils.isEmpty(this.aN) || TextUtils.isEmpty(this.aO) || TextUtils.isEmpty(this.aP) || TextUtils.isEmpty(this.aR)) ? false : true;
    }

    private int bu() {
        return this.aY;
    }

    private int bv() {
        return this.aS;
    }

    private int bw() {
        return this.aT;
    }

    private int bx() {
        return this.aU;
    }

    private int by() {
        return this.aV;
    }

    private int bz() {
        return this.aW;
    }

    private void c(long j) {
        this.aG = j;
    }

    private void c(List<com.anythink.expressad.foundation.d.c> list) {
        this.M = list;
    }

    private void c(boolean z) {
        this.Q = z;
    }

    private void d(long j) {
        this.p = j;
    }

    private void d(String str) {
        this.X = str;
    }

    private void d(List<c> list) {
        this.l = list;
    }

    private void e(long j) {
        this.c = j;
    }

    private void e(String str) {
        this.aq = str;
    }

    private void f(long j) {
        this.e = j;
    }

    private void f(String str) {
        this.ar = str;
    }

    private void g(int i) {
        this.V = i;
    }

    private void g(long j) {
        this.j = j;
    }

    private void g(String str) {
        this.ao = str;
    }

    private void h(int i) {
        this.T = i;
    }

    private void h(String str) {
        this.al = str;
    }

    private void i(int i) {
        this.U = i;
    }

    private void i(String str) {
        this.ae = str;
    }

    private void j(int i) {
        this.aD.add(Integer.valueOf(i));
    }

    private void j(String str) {
        this.J = str;
    }

    private void k(String str) {
        this.B = str;
    }

    private boolean k(int i) {
        return this.aD.contains(Integer.valueOf(i));
    }

    private void l(int i) {
        this.as = i;
    }

    private void l(String str) {
        this.b = str;
    }

    private void m(int i) {
        this.ap = i;
    }

    private void m(String str) {
        this.af = str;
    }

    private void n(int i) {
        this.an = i;
    }

    private void n(String str) {
        this.k = str;
    }

    private void o(int i) {
        this.aF = i;
    }

    private void o(String str) {
        this.aN = str;
    }

    private void p(int i) {
        this.aE = i;
    }

    private void p(String str) {
        this.aO = str;
    }

    private void q(int i) {
        this.Y = i;
    }

    private void q(String str) {
        this.aP = str;
    }

    private void r(int i) {
        this.aa = i;
    }

    private void r(String str) {
        this.aQ = str;
    }

    private void s(int i) {
        this.ab = i;
    }

    private void s(String str) {
        this.aR = str;
    }

    private void t(int i) {
        this.ac = i;
    }

    private void t(String str) {
        this.aZ = str;
    }

    private void u(int i) {
        this.ad = i;
    }

    private void u(String str) {
        this.ba = str;
    }

    private void v(int i) {
        this.G = i;
    }

    private void v(String str) {
        this.bb = str;
    }

    private void w(int i) {
        this.H = i;
    }

    private void w(String str) {
        this.bc = str;
    }

    private void x(int i) {
        this.I = i;
    }

    private void x(String str) {
        this.bd = str;
    }

    private static Map<String, C0105a> y(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                C0105a c0105a = new C0105a();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                if (jSONObjectOptJSONObject != null) {
                    c0105a.a(jSONObjectOptJSONObject);
                }
                map.put(next, c0105a);
            }
            return map;
        } catch (JSONException e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
            return null;
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
            return null;
        }
    }

    private void y(int i) {
        this.D = i;
    }

    private void z(int i) {
        this.F = i;
    }

    private void z(String str) {
        this.bl = str;
    }

    public final void A() {
        this.d = 1;
    }

    public final void B() {
        this.i = true;
    }

    public final String C() {
        return this.aN;
    }

    public final String D() {
        return this.aO;
    }

    public final String E() {
        return this.aP;
    }

    public final String F() {
        return this.aR;
    }

    public final void G() {
        Locale.getDefault().getLanguage();
        if (!((TextUtils.isEmpty(this.aN) || TextUtils.isEmpty(this.aO) || TextUtils.isEmpty(this.aP) || TextUtils.isEmpty(this.aQ)) ? false : true)) {
            this.aN = "Confirm to close? ";
            this.aO = "You will not be rewarded after closing the window";
            this.aP = "Close it";
            this.aQ = "Continue";
        }
        if ((TextUtils.isEmpty(this.aN) || TextUtils.isEmpty(this.aO) || TextUtils.isEmpty(this.aP) || TextUtils.isEmpty(this.aR)) ? false : true) {
            return;
        }
        this.aN = "Confirm to close? ";
        this.aO = "You will not be rewarded after closing the window";
        this.aP = "Close it";
        this.aR = "Continue";
    }

    public final String H() {
        return this.aZ;
    }

    public final String I() {
        return this.ba;
    }

    public final String J() {
        return this.bb;
    }

    public final int K() {
        return this.bf;
    }

    public final b L() {
        return this.bg;
    }

    public final String M() {
        return this.bl;
    }

    public final void N() {
        this.bn = 0;
    }

    public final void O() {
        this.bo = false;
    }

    public final int P() {
        return this.bp;
    }

    public final void Q() {
        this.bq = 1;
    }

    public final String R() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.anythink.expressad.d.a.b.h, this.b);
            jSONObject.put(com.anythink.expressad.d.a.b.l, this.c);
            jSONObject.put(com.anythink.expressad.d.a.b.m, this.d);
            jSONObject.put(com.anythink.expressad.d.a.b.p, this.f);
            jSONObject.put(com.anythink.expressad.d.a.b.w, this.g);
            jSONObject.put(com.anythink.expressad.d.a.b.o, this.i);
            jSONObject.put("plct", this.n);
            jSONObject.put(com.anythink.expressad.d.a.b.B, this.o);
            jSONObject.put(com.anythink.expressad.d.a.b.C, this.m);
            jSONObject.put(com.anythink.expressad.d.a.b.G, this.q);
            jSONObject.put("plctb", this.u);
            jSONObject.put(com.anythink.expressad.d.a.b.ab, this.aG);
            jSONObject.put(com.anythink.expressad.d.a.b.ac, this.aH);
            jSONObject.put(com.anythink.expressad.d.a.b.af, this.y);
            jSONObject.put(com.anythink.expressad.d.a.b.ag, this.z);
            jSONObject.put(com.anythink.expressad.d.a.b.i, this.J);
            jSONObject.put(com.anythink.expressad.d.a.b.j, this.K);
            jSONObject.put(com.anythink.expressad.d.a.b.k, this.L);
            jSONObject.put(com.anythink.expressad.d.a.b.ai, this.aK);
            jSONObject.put(com.anythink.expressad.d.a.b.aa, this.x);
            jSONObject.put(com.anythink.expressad.d.a.b.aG, this.F);
            jSONObject.put(com.anythink.expressad.d.a.b.aE, this.D);
            jSONObject.put(com.anythink.expressad.d.a.b.aF, this.E);
            jSONObject.put(com.anythink.expressad.d.a.b.ae, this.aJ);
            jSONObject.put(com.anythink.expressad.d.a.b.bn, this.aL);
            jSONObject.put(com.anythink.expressad.d.a.b.bv, this.aF);
            jSONObject.put("iex", this.I);
            jSONObject.put(com.anythink.expressad.d.a.b.ao, this.G);
            jSONObject.put(com.anythink.expressad.d.a.b.ap, this.H);
            jSONObject.put(com.anythink.expressad.d.a.b.at, this.aM);
            jSONObject.put(com.anythink.expressad.d.a.b.al, this.aE);
            jSONObject.put("pf", this.Y);
            jSONObject.put(com.anythink.expressad.d.a.b.aA, this.aa);
            jSONObject.put(com.anythink.expressad.d.a.b.aB, this.ae);
            jSONObject.put(com.anythink.expressad.d.a.b.ax, this.ab);
            jSONObject.put(com.anythink.expressad.d.a.b.ay, this.ac);
            jSONObject.put("delete", this.ad);
            jSONObject.put(com.anythink.expressad.d.a.b.ad, this.aI);
            jSONObject.put(com.anythink.expressad.d.a.b.bE, this.ah);
            jSONObject.put(com.anythink.expressad.d.a.b.bF, this.ag);
            jSONObject.put(com.anythink.expressad.d.a.b.bG, this.ai);
            jSONObject.put(com.anythink.expressad.d.a.b.bH, this.aj);
            jSONObject.put(com.anythink.expressad.d.a.b.bI, this.ak);
            jSONObject.put(com.anythink.expressad.d.a.b.bK, this.am);
            jSONObject.put(com.anythink.expressad.d.a.b.bJ, this.al);
            jSONObject.put(com.anythink.expressad.d.a.b.bV, this.an);
            jSONObject.put(com.anythink.expressad.d.a.b.bY, this.ap);
            jSONObject.put(com.anythink.expressad.d.a.b.cO, this.a);
            jSONObject.put(com.anythink.expressad.d.a.b.cT, this.bi);
            jSONObject.put(com.anythink.expressad.d.a.b.di, this.W);
            jSONObject.put(com.anythink.expressad.d.a.b.dg, this.V);
            jSONObject.put(com.anythink.expressad.d.a.b.dw, this.bo);
            jSONObject.put(com.anythink.expressad.d.a.b.dt, this.bn);
            jSONObject.put("isDefault", this.bq);
            return jSONObject.toString();
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    public final int S() {
        return this.br;
    }

    public final int T() {
        return this.bs;
    }

    public final int U() {
        return this.bt;
    }

    public final int V() {
        return this.bu;
    }

    public final int W() {
        return this.bv;
    }

    public final void a() {
        this.R = 10;
    }

    public final void a(int i) {
        this.W = i;
    }

    public final void a(String str) {
        this.K = str;
    }

    public final int b() {
        return this.W;
    }

    public final void b(int i) {
        if (i > 0) {
            this.aC = i;
        }
    }

    public final void c() {
        this.a = 0;
    }

    public final void c(int i) {
        this.ay = i;
    }

    public final void c(String str) {
        this.bi = str;
    }

    public final void d() {
        this.ag = 1;
    }

    public final void d(int i) {
        this.az = i;
    }

    public final void e() {
        this.ah = 1;
    }

    public final void e(int i) {
        this.aA = i;
    }

    public final void f() {
        this.ai = 1;
    }

    public final void f(int i) {
        this.aB = i;
    }

    public final void g() {
        this.aj = 0;
    }

    public final void h() {
        this.ak = 1;
    }

    public final void i() {
        this.am = -1;
    }

    public final void j() {
        this.L = 1;
    }

    public final int k() {
        return this.A;
    }

    public final long l() {
        if (this.u <= 0) {
            this.u = com.anythink.expressad.d.a.b.Q;
        }
        return this.u;
    }

    public final void m() {
        this.u = com.anythink.expressad.d.a.b.Q;
    }

    public final int n() {
        return this.aM;
    }

    public final void o() {
        this.aM = com.anythink.expressad.d.a.b.bx;
    }

    public final void p() {
        this.aK = com.anythink.expressad.d.a.b.aC;
    }

    public final long q() {
        return this.aG * 1000;
    }

    public final long r() {
        return this.aH * 1000;
    }

    public final void s() {
        this.aH = 10L;
    }

    public final boolean t() {
        return this.q;
    }

    public final String toString() {
        return "cc=" + this.b + " upal=" + this.c + " cfc=" + this.d + " getpf=" + this.e + " uplc=" + this.f + " rurl=" + this.m;
    }

    public final void u() {
        this.q = false;
    }

    public final boolean v() {
        return this.m;
    }

    public final void w() {
        this.m = false;
    }

    public final long x() {
        return this.n;
    }

    public final void y() {
        this.n = com.anythink.expressad.d.a.b.P;
    }

    public final void z() {
        this.o = 0L;
    }
}
