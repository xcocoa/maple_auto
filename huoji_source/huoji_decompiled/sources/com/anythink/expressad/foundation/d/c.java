package com.anythink.expressad.foundation.d;

import android.net.Uri;
import android.text.TextUtils;
import androidx.multidex.MultiDexExtractor;
import com.anythink.basead.b.a;
import com.anythink.expressad.a.c;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.foundation.h.x;
import java.io.Serializable;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends h implements com.anythink.expressad.e.b, Serializable {
    public static final int A = -2;
    public static final int B = 1;
    public static final String C = "id";
    public static final String D = "unitId";
    public static final String E = "title";
    public static final String F = "desc";
    public static final String G = "package_name";
    public static final String H = "icon_url";
    public static final String I = "image_url";
    public static final String J = "image_size";
    public static final String K = "app_size";
    public static final String L = "impression_url";
    public static final String M = "click_url";
    public static final String N = "wtick";
    public static final String O = "deep_link";
    public static final String P = "user_activation";
    public static final String Q = "notice_url";
    public static final String R = "template";
    public static final String S = "ad_source_id";
    public static final String T = "fca";
    public static final String U = "fcb";
    public static final String V = "click_mode";
    public static final String W = "landing_type";
    public static final String X = "link_type";
    public static final String Y = "rating";
    public static final String Z = "number_rating";
    public static final String a = c.class.getSimpleName();
    public static final String aA = "vctn_t";
    public static final String aB = "vck_t";
    public static final String aC = "rs_ignc_r";
    public static final int aD = 1;
    public static final int aE = 2;
    public static final String aF = "rw_pl";
    public static final String aG = "jm_pd";
    public static final String aI = "oc_type";
    public static final String aJ = "oc_time";
    public static final String aK = "t_list";
    public static final String aL = "adchoice";
    public static final String aM = "omid";
    public static final String aN = "ia_icon";
    public static final String aO = "ia_rst";
    public static final String aP = "ia_url";
    public static final String aQ = "ia_ori";
    public static final String aR = "ad_type";
    public static final String aS = "ia_ext1";
    public static final String aT = "ia_ext2";
    public static final String aU = "is_download_zip";
    public static final String aV = "ia_cache";
    public static final String aW = "imp_ua";
    public static final String aX = "c_ua";
    public static final int aY = 1;
    public static final int aZ = 1;
    public static final String aa = "ctatext";
    public static final String ab = "c_ct";
    public static final String ac = "video_url";
    public static final String ad = "video_length";
    public static final String ae = "video_size";
    public static final String af = "video_resolution";
    public static final String ag = "watch_mile";
    public static final String ah = "endcard_click_result";
    public static final String ai = "ctype";
    public static final String aj = "adv_imp";
    public static final String ak = "t_imp";
    public static final String al = "sec";
    public static final String am = "url";
    public static final String an = "guidelines";
    public static final String ao = "offer_type";
    public static final String ap = "reward_amount";
    public static final String aq = "reward_name";
    public static final String ar = "md5_file";
    public static final String as = "c_toi";
    public static final int at = 2;
    public static final String au = "5";
    public static final String av = "rtins_type";
    public static final String aw = "ad_url_list";
    public static final String ax = "retarget_offer";
    public static final String ay = "flb";
    public static final String az = "flb_skiptime";
    public static final String b = "ad_tpl_url";
    public static final int bA = 9;
    public static final int bB = 12;
    public static final String bC = "video_end_type";
    public static final int bD = 1;
    public static final int bE = 2;
    public static final int bF = 3;
    public static final int bG = 4;
    public static final int bH = 5;
    public static final int bI = 100;
    public static final int bJ = 2;
    public static final String bL = "ready_rate";
    public static final String bM = "tmp_ids";
    public static final String bN = "ext_data";
    public static final String bO = "endcard_url";
    public static final String bP = "playable_ads_without_video";
    public static final int bQ = 1;
    public static final int bR = 2;
    public static final String bS = "impression";
    public static final String bT = "start";
    public static final String bU = "first_quartile";
    public static final String bV = "midpoint";
    public static final String bW = "third_quartile";
    public static final String bX = "complete";
    public static final String bY = "mute";
    public static final String bZ = "unmute";
    public static final String ba = "iex";
    public static final String bb = "ts";
    public static final String bc = "nv_t2";
    public static final String bd = "impression_t2";
    public static final String be = "gif_url";
    public static final String bf = "dropout_track";
    public static final String bg = "plycmpt_track";
    public static final String bh = "aks";
    public static final String bi = "k";
    public static final String bj = "q";
    public static final String bk = "r";
    public static final String bl = "al";
    public static final String bm = "mp";
    public static final String bn = "pv_urls";
    public static final int bo = 3;
    public static final int bp = 4;
    public static final int bq = 1;
    public static final int br = 2;
    public static final int bs = 3;
    public static final int bt = 1;
    public static final int bu = 2;
    public static final int bv = 1;
    public static final int bw = 2;
    public static final int bx = 3;
    public static final int by = 4;
    public static final int bz = 8;
    public static final String c = "ad_html";
    public static final String ca = "click";
    public static final String cb = "pause";
    public static final String cc = "resume";
    public static final String cd = "error";
    public static final String ce = "endcard";
    public static final String cf = "close";
    public static final String cg = "video_click";
    public static final String ch = "endcard_show";
    public static final String ci = "play_percentage";
    public static final String cj = "ad_tracking";
    public static final String ck = "rv";
    public static final int cl = -1;
    public static final int cm = 1;

    /* JADX INFO: renamed from: cn, reason: collision with root package name */
    public static final int f3cn = 0;
    public static final String d = "cmpt=1";
    private static final long dP = 1;
    public static final String e = "tp_offer";
    private static final int eS = 100;
    public static final String f = "fac";
    public static final String g = "at_cd_rate";
    public static final String h = "plct";
    public static final String i = "plctb";
    public static final String j = "banner_url";
    public static final String k = "banner_html";
    public static final String l = "creative_id";
    public static final String m = "mraid";
    public static final String n = "mraid_src";
    public static final String o = "timestamp";
    public static final String p = "hb";
    public static final String q = "maitve";
    public static final String r = "maitve_src";
    public static final String s = "vcn";
    public static final String t = "token_r";
    public static final String u = "encrypt_p";
    public static final String v = "view_com_time";
    public static final String w = "adspace_t";
    public static final String x = "cbd";
    public static final String y = "vst";
    public static final int z = -2;
    public p aH;
    private List<String> cZ;
    private String dA;
    private int dB;
    private String dC;
    private int dD;
    private int dE;
    private String dF;
    private String dG;
    private int dH;
    private String dI;
    private a dJ;
    private int dL;
    private String dM;
    private String dR;
    private long da;
    private int dd;
    private boolean dl;
    private int du;
    private int dv;
    private int dw;
    private int dx;
    private int dy;
    private int dz;
    private int eA;
    private String eB;
    private int eC;
    private String eD;
    private HashMap<String, String> eE;
    private String eF;
    private String eG;
    private String eH;
    private String eI;
    private String eJ;
    private boolean eK;
    private String eM;
    private boolean eN;
    private boolean eO;
    private int eQ;
    private String eT;
    private String eV;
    private String eW;
    private int eX;
    private String eY;
    private int eb;
    private int ec;
    private int ed;
    private String ee;
    private String ef;
    private String eg;
    private String eh;
    private int ei;
    private boolean ej;
    private boolean el;
    private int em;
    private int eo;
    private String ep;
    private int eq;
    private int er;
    private String es;
    private int et;
    private int eu;
    private int ev;
    private String ew;
    private int ex;
    private String ey;
    private String ez;
    private String fA;
    private int fC;
    private String fb;
    private n fd;
    private String fe;
    private String ff;
    private int fg;
    private long fh;
    private String fi;
    private String fj;
    private int fk;
    private String fl;
    private int fm;
    private b fn;
    private C0131c fo;
    private c.b fp;
    private int fs;
    private ArrayList<Integer> fu;
    private int cV = 1;
    private String cW = "";
    private String cX = "";
    private boolean cY = false;
    private int db = 0;
    private int dc = 0;
    private int de = -2;
    private int df = -2;
    private long dg = 0;
    private long dh = 0;
    private String di = "";
    private String dj = "";
    private long dk = 0;
    private int dm = 0;
    private int dn = 0;

    /* JADX INFO: renamed from: do, reason: not valid java name */
    private String f1do = "";
    private boolean dp = false;
    private int dq = 0;
    private boolean dr = false;
    private int ds = 0;
    private int dt = -1;
    private int dK = 0;
    private int dN = 1;
    private int dO = 1;
    private int dQ = 6;
    private int dS = -1;
    private String dT = "";
    private String dU = "";
    private String dV = "";
    private int dW = 0;
    private String dX = "";
    private boolean dY = false;
    private String dZ = "";
    private String ea = "";
    private boolean ek = false;
    private String en = "";
    private String eL = "";
    private int eP = 2;
    public String bK = "";
    private int eR = -1;
    private int eU = 1;
    private int eZ = 0;
    private int fa = 2;
    private int fc = 1;
    private boolean fq = false;
    private String fr = null;
    private String ft = "";
    private int fv = 2;
    private int fw = 1;
    private int fx = -1;
    private boolean fy = false;
    private boolean fz = false;
    private int fB = 0;

    public static final class a implements Serializable {
        public static final String a = "ad_logo_link";
        public static final String b = "adchoice_link";
        public static final String c = "adchoice_icon";
        public static final String d = "adchoice_size";
        public static final String e = "platform_name";
        public static final String f = "platform_logo";
        public static final String g = "adv_name";
        public static final String h = "adv_logo";
        private String i = "";
        private String j = "";
        private String k = "";
        private String l = "";
        private String m = "";
        private String n = "";
        private String o = "";
        private String p = "";
        private int q = 0;
        private int r = 0;
        private String s = "";

        public static a a(String str) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return a(new JSONObject(str));
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
                return null;
            } catch (Throwable th) {
                if (com.anythink.expressad.a.a) {
                    th.printStackTrace();
                }
                return null;
            }
        }

        private static a a(JSONObject jSONObject) {
            a aVar = null;
            try {
                a aVar2 = new a();
                try {
                    aVar2.k = jSONObject.optString("adchoice_icon");
                    aVar2.j = jSONObject.optString("adchoice_link");
                    String strOptString = jSONObject.optString("adchoice_size");
                    aVar2.l = strOptString;
                    aVar2.i = jSONObject.optString(a);
                    aVar2.p = jSONObject.optString(h);
                    aVar2.o = jSONObject.optString(g);
                    aVar2.n = jSONObject.optString("platform_logo");
                    aVar2.m = jSONObject.optString("platform_name");
                    aVar2.r = k(strOptString);
                    aVar2.q = l(strOptString);
                    aVar2.s = jSONObject.toString();
                    return aVar2;
                } catch (Exception e2) {
                    e = e2;
                    aVar = aVar2;
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                    return aVar;
                } catch (Throwable th) {
                    th = th;
                    aVar = aVar2;
                    if (com.anythink.expressad.a.a) {
                        th.printStackTrace();
                    }
                    return aVar;
                }
            } catch (Exception e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        private void a(int i) {
            this.q = i;
        }

        private void b(int i) {
            this.r = i;
        }

        private void b(String str) {
            this.s = str;
        }

        private void c(String str) {
            this.i = str;
        }

        private void d(String str) {
            this.j = str;
        }

        private int e() {
            return this.q;
        }

        private void e(String str) {
            this.k = str;
        }

        private int f() {
            return this.r;
        }

        private void f(String str) {
            this.l = str;
        }

        private String g() {
            return this.i;
        }

        private void g(String str) {
            this.m = str;
        }

        private String h() {
            return this.m;
        }

        private void h(String str) {
            this.n = str;
        }

        private String i() {
            return this.n;
        }

        private void i(String str) {
            this.o = str;
        }

        private String j() {
            return this.o;
        }

        private void j(String str) {
            this.p = str;
        }

        private static int k(String str) {
            String[] strArrSplit;
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            try {
                if (str.contains("x") && (strArrSplit = str.split("x")) != null && strArrSplit.length > 1) {
                    return Integer.parseInt(strArrSplit[1]);
                }
            } catch (NumberFormatException | Exception unused) {
            }
            return 0;
        }

        private String k() {
            return this.p;
        }

        private static int l(String str) {
            String[] strArrSplit;
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            try {
                if (str.contains("x") && (strArrSplit = str.split("x")) != null && strArrSplit.length > 0) {
                    return Integer.parseInt(strArrSplit[0]);
                }
            } catch (NumberFormatException | Exception unused) {
            }
            return 0;
        }

        private boolean l() {
            return (TextUtils.isEmpty(this.j) || TextUtils.isEmpty(this.l) || TextUtils.isEmpty(this.k)) ? false : true;
        }

        public final String a() {
            return this.s;
        }

        public final String b() {
            return this.j;
        }

        public final String c() {
            return this.k;
        }

        public final String d() {
            return this.l;
        }
    }

    public static final class b implements Serializable {
        public boolean a = false;
        public boolean b = false;
        public boolean c = false;
        public boolean d = false;
        public boolean e = false;
        public boolean f = false;
        public boolean g = false;
        public boolean h = false;
        public boolean i = false;
        public boolean j = false;
        public boolean k = false;
        public Map<Integer, String> l;
    }

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.d.c$c, reason: collision with other inner class name */
    public static final class C0131c implements Serializable {
        public static final String a = "video_template";
        public static final String b = "template_url";
        public static final String c = "orientation";
        public static final String d = "paused_url";
        public static final String e = "image";
        private static final int f = 1;
        private String g;
        private int h;
        private int i;
        private String j;
        private String k;
        private List<a> l;

        /* JADX INFO: renamed from: com.anythink.expressad.foundation.d.c$c$a */
        public static final class a implements Serializable {
            public String a;
            public List<String> b = new ArrayList();
        }

        private C0131c(String str) {
            this.g = str;
        }

        public static C0131c a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                if (!w.b(jSONObject.toString())) {
                    return null;
                }
                C0131c c0131c = new C0131c(jSONObject.toString());
                c0131c.h = jSONObject.optInt(a, 1);
                c0131c.a(jSONObject.optString("template_url"));
                c0131c.i = jSONObject.optInt("orientation");
                c0131c.j = jSONObject.optString(d);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(e);
                if (jSONObjectOptJSONObject != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys != null && itKeys.hasNext()) {
                        String next = itKeys.next();
                        List<String> listA = t.a(jSONObjectOptJSONObject.optJSONArray(next));
                        if (listA != null && listA.size() > 0) {
                            a aVar = new a();
                            aVar.a = next;
                            aVar.b.addAll(listA);
                            arrayList.add(aVar);
                        }
                    }
                    c0131c.l = arrayList;
                }
                return c0131c;
            } catch (Throwable unused) {
                return null;
            }
        }

        private void a(int i) {
            this.h = i;
        }

        private void a(List<a> list) {
            this.l = list;
        }

        private void b(int i) {
            this.i = i;
        }

        private void b(String str) {
            this.g = str;
        }

        private void c(String str) {
            this.j = str;
        }

        private static C0131c d(String str) {
            try {
                if (w.b(str)) {
                    return a(new JSONObject(str));
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final String a() {
            return this.g;
        }

        public final void a(String str) {
            this.k = x.c(str);
        }

        public final int b() {
            return this.h;
        }

        public final int c() {
            return this.i;
        }

        public final String d() {
            return this.j;
        }

        public final String e() {
            return this.k;
        }

        public final List<a> f() {
            return this.l;
        }
    }

    private void A(int i2) {
        this.dH = i2;
    }

    private void B(int i2) {
        this.dz = i2;
    }

    private void C(int i2) {
        this.dx = i2;
    }

    private void C(String str) {
        this.dM = str;
    }

    private void D(int i2) {
        this.dy = i2;
    }

    private void D(String str) {
        this.dI = str;
    }

    private void E(int i2) {
        this.dw = i2;
    }

    private void E(String str) {
        this.dR = str;
    }

    private void F(int i2) {
        this.dQ = i2;
    }

    private void F(String str) {
        this.eF = str;
    }

    private void G(int i2) {
        this.eQ = i2;
    }

    private void G(String str) {
        this.eG = str;
    }

    private void H(int i2) {
        this.dN = i2;
    }

    private void H(String str) {
        this.eH = str;
    }

    private void I(int i2) {
        this.dO = i2;
    }

    private void I(String str) {
        this.eI = str;
    }

    private void J(int i2) {
        this.eP = i2;
    }

    private void J(String str) {
        this.eJ = str;
    }

    private void K(int i2) {
        this.fc = i2;
    }

    private void K(String str) {
        this.eL = str;
    }

    private void L(int i2) {
        this.fg = i2;
    }

    private void L(String str) {
        this.bK = str;
    }

    private void M(int i2) {
        this.fm = i2;
    }

    private void M(String str) {
        this.fe = str;
    }

    private void N(int i2) {
        this.eC = i2;
    }

    private void N(String str) {
        this.eD = str;
    }

    private void O(int i2) {
        this.ex = i2;
    }

    private void O(String str) {
        this.fi = str;
    }

    private void P(int i2) {
        this.eA = i2;
    }

    private void P(String str) {
        this.fj = str;
    }

    private void Q(int i2) {
        this.eu = i2;
    }

    private void Q(String str) {
        this.ew = str;
    }

    private void R(int i2) {
        this.er = i2;
    }

    private void R(String str) {
        this.eB = str;
    }

    private void S(int i2) {
        this.et = i2;
    }

    private void S(String str) {
        this.es = str;
    }

    private void T(int i2) {
        this.eo = i2;
    }

    private void T(String str) {
        this.en = str;
    }

    private void U(int i2) {
        this.eq = i2;
    }

    private void U(String str) {
        this.ep = str;
    }

    private void V(int i2) {
        this.em = i2;
    }

    private void V(String str) {
        this.eg = str;
    }

    private void W(int i2) {
        this.ei = i2;
    }

    private void W(String str) {
        this.eh = str;
    }

    private void X(int i2) {
        this.fa = i2;
    }

    private void X(String str) {
        this.ee = str;
    }

    private void Y(int i2) {
        this.ec = i2;
    }

    private void Y(String str) {
        this.ef = str;
    }

    private void Z(int i2) {
        this.ed = i2;
    }

    private void Z(String str) {
        this.dX = str;
    }

    public static c a(JSONObject jSONObject) {
        c cVar = new c();
        cVar.v(jSONObject.optString("campaignid"));
        cVar.w(jSONObject.optString("packageName"));
        cVar.x(jSONObject.optString("title"));
        cVar.o(jSONObject.optString(a.C0051a.k));
        cVar.y(jSONObject.optString("desc"));
        cVar.dT = jSONObject.optString(L);
        cVar.A(jSONObject.optString("image_url"));
        cVar.dg = jSONObject.optLong("plct");
        cVar.dh = jSONObject.optLong("plctb");
        cVar.cX = jSONObject.optString(c);
        cVar.a(jSONObject.optString(b));
        cVar.d(jSONObject.optString(j));
        cVar.dj = jSONObject.optString(k);
        cVar.dk = jSONObject.optInt("creative_id");
        return cVar;
    }

    private static c a(JSONObject jSONObject, String str, String str2, String str3, boolean z3, d dVar) {
        return a(jSONObject, str, str2, str3, z3, dVar, "");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:52|(1:54)|55|(1:57)|58|(1:60)|61|(1:68)(1:67)|69|(1:71)(2:72|(1:77)(1:76))|78|(2:80|(1:82)(9:84|120|86|124|87|91|(5:95|(2:98|96)|131|99|(1:101))|102|103))(1:85)|83|120|86|124|87|91|(6:93|95|(1:96)|131|99|(0))|102|103) */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0491, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0492, code lost:
    
        r0.getMessage();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x04d6 A[Catch: Exception -> 0x04e2, TryCatch #2 {Exception -> 0x04e2, blocks: (B:91:0x0495, B:93:0x04b0, B:95:0x04b6, B:96:0x04bc, B:98:0x04c2, B:99:0x04d0, B:101:0x04d6, B:102:0x04d8, B:90:0x0492, B:87:0x047c), top: B:120:0x043e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04c2 A[Catch: Exception -> 0x04e2, LOOP:2: B:96:0x04bc->B:98:0x04c2, LOOP_END, TryCatch #2 {Exception -> 0x04e2, blocks: (B:91:0x0495, B:93:0x04b0, B:95:0x04b6, B:96:0x04bc, B:98:0x04c2, B:99:0x04d0, B:101:0x04d6, B:102:0x04d8, B:90:0x0492, B:87:0x047c), top: B:120:0x043e, inners: #4 }] */
    /* JADX WARN: Type inference failed for: r11v55, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v57, types: [com.anythink.expressad.foundation.d.c, com.anythink.expressad.out.j] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static c a(JSONObject jSONObject, String str, String str2, String str3, boolean z3, d dVar, String str4) {
        c cVarIsEmpty;
        String string;
        JSONArray jSONArrayOptJSONArray;
        ArrayList<Integer> arrayList;
        int i2;
        ArrayList arrayList2;
        JSONObject jSONObjectC = c(jSONObject);
        if (jSONObjectC == null) {
            return null;
        }
        try {
            c cVar = new c();
            try {
                String strOptString = jSONObjectC.optString(bh);
                if (!TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    HashMap<String, String> map = new HashMap<>();
                    for (Iterator<String> itKeys = jSONObject2.keys(); itKeys != null && itKeys.hasNext(); itKeys = itKeys) {
                        String next = itKeys.next();
                        map.put(next, jSONObject2.optString(next));
                    }
                    cVar.eE = map;
                }
                if (!TextUtils.isEmpty(str4)) {
                    cVar.eL = str4;
                    cVar.eK = true;
                }
                try {
                    cVar.eR = jSONObjectC.optInt("ready_rate", -1);
                    JSONObject jSONObjectOptJSONObject = jSONObjectC.optJSONObject(bN);
                    if (jSONObjectOptJSONObject != null) {
                        cVar.eT = jSONObjectOptJSONObject.toString();
                    }
                    cVar.eX = jSONObjectC.optInt(d.G);
                    cVar.r(jSONObjectC.optString(d.F));
                    cVar.eU = jSONObjectC.optInt(d.E);
                    new JSONArray();
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectC.optJSONArray("pv_urls");
                    if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                        arrayList2 = null;
                    } else {
                        arrayList2 = new ArrayList(jSONArrayOptJSONArray2.length());
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                            arrayList2.add(jSONArrayOptJSONArray2.optString(i3));
                        }
                    }
                    cVar.cZ = arrayList2;
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectC.optJSONObject(d.H);
                    if (jSONObjectOptJSONObject2 != null) {
                        cVar.eY = jSONObjectOptJSONObject2.toString();
                    }
                } catch (Exception unused) {
                }
                cVar.v(jSONObjectC.optString("id"));
                cVar.x(jSONObjectC.optString("title"));
                cVar.ff = jSONObjectC.optString("unitId", "");
                cVar.y(jSONObjectC.optString("desc"));
                cVar.w(jSONObjectC.optString("package_name"));
                cVar.ev = jSONObjectC.optInt(av);
                cVar.z(jSONObjectC.optString("icon_url"));
                cVar.A(jSONObjectC.optString("image_url"));
                cVar.B(jSONObjectC.optString(K));
                cVar.ea = jSONObjectC.optString(J);
                cVar.dT = h.a(dVar, cVar, jSONObjectC.optString(L));
                cVar.dV = h.a(dVar, cVar, jSONObjectC.optString("click_url"));
                cVar.aH = p.a(jSONObjectC.optString(aF));
                cVar.dW = jSONObjectC.optInt(N);
                cVar.dX = h.a(dVar, cVar, jSONObjectC.optString(O));
                cVar.dY = jSONObjectC.optBoolean(P, false);
                cVar.dU = h.a(dVar, cVar, jSONObjectC.optString("notice_url"));
                cVar.eb = jSONObjectC.optInt("template");
                cVar.p(jSONObjectC.optInt("ad_source_id", 1));
                cVar.ec = jSONObjectC.optInt(T);
                cVar.ed = jSONObjectC.optInt(U);
                cVar.eQ = jSONObjectC.optInt(ah);
                if (!TextUtils.isEmpty(jSONObjectC.optString(Y))) {
                    cVar.a(Double.parseDouble(jSONObjectC.optString(Y, "0")));
                }
                if (!TextUtils.isEmpty(jSONObjectC.optString(Z))) {
                    cVar.o(jSONObjectC.optInt(Z, 333333));
                }
                cVar.ee = jSONObjectC.optString("click_mode");
                cVar.ef = jSONObjectC.optString("landing_type");
                cVar.eu = jSONObjectC.optInt("link_type", 4);
                cVar.ei = jSONObjectC.optInt(ab);
                cVar.o(jSONObjectC.optString(aa));
                cVar.eD = jSONObjectC.optString(aw);
                cVar.fm = jSONObjectC.optInt(ax, 2);
                String strOptString2 = jSONObjectC.optString("video_url");
                cVarIsEmpty = TextUtils.isEmpty(strOptString2);
                if (cVarIsEmpty == 0) {
                    if (!z3) {
                        strOptString2 = com.anythink.expressad.foundation.h.j.b(strOptString2);
                    }
                    cVar.en = strOptString2;
                }
                cVar.ds = jSONObjectC.optInt(v);
                cVar.q(jSONObjectC.optInt("video_length"));
                cVar.eo = jSONObjectC.optInt("video_size");
                cVar.ep = jSONObjectC.optString(af);
                cVar.eq = jSONObjectC.optInt(ag);
                cVar.a(System.currentTimeMillis());
                cVar.dZ = h.a(dVar, cVar, str);
                cVar.er = jSONObjectC.optInt("ctype");
                cVar.es = jSONObjectC.optString(aj);
                cVar.et = jSONObjectC.optInt(ak);
                cVar.ey = str2;
                cVar.n(str3);
                cVar.ew = jSONObjectC.optString(an);
                cVar.ex = jSONObjectC.optInt("offer_type");
                cVar.eB = jSONObjectC.optString("reward_name");
                cVar.eA = jSONObjectC.optInt("reward_amount");
                try {
                    if (jSONObjectC.has(cj)) {
                        String strA = h.a(dVar, cVar, jSONObjectC.optString(cj));
                        if (!TextUtils.isEmpty(strA)) {
                            cVar.fe = strA;
                            cVar.fd = ad(strA);
                        }
                    }
                } catch (Exception unused2) {
                }
                cVar.eP = jSONObjectC.optInt(bC, 2);
                if (a(cVar, jSONObjectC.optString("endcard_url"))) {
                    return null;
                }
                cVar.fc = jSONObjectC.optInt(bP, 1);
                if (jSONObjectC.has(ar)) {
                    cVar.bK = jSONObjectC.optString(ar);
                }
                if (jSONObjectC.has(bc)) {
                    cVar.dQ = jSONObjectC.optInt(bc);
                }
                if (jSONObjectC.has(be)) {
                    cVar.dR = jSONObjectC.optString(be);
                }
                cVar.a(C0131c.a(jSONObjectC.optJSONObject(ck)));
                cVar.fa = jSONObjectC.optInt(as, 2);
                cVar.dN = jSONObjectC.optInt(aW, 1);
                cVar.dO = jSONObjectC.optInt(aX, 1);
                cVar.dw = jSONObjectC.optInt(aG);
                cVar.dA = jSONObjectC.optString("ia_icon");
                cVar.dB = jSONObjectC.optInt("ia_rst");
                cVar.dC = jSONObjectC.optString("ia_url");
                cVar.dD = jSONObjectC.optInt("ia_ori");
                cVar.dE = dVar.d();
                cVar.db = jSONObjectC.optInt(e);
                cVar.dc = jSONObjectC.optInt(f);
                cVar.dF = jSONObjectC.optString(aS);
                cVar.dG = jSONObjectC.optString(aT);
                cVar.dH = jSONObjectC.optInt(aU);
                cVar.dI = jSONObjectC.optString(aV);
                cVar.dL = jSONObjectC.optInt(aJ);
                cVar.dK = jSONObjectC.optInt(aI);
                cVar.dM = jSONObjectC.optString(aK);
                cVar.dJ = a.a(jSONObjectC.optString(aL, ""));
                cVar.dg = jSONObjectC.optLong("plct");
                cVar.dh = jSONObjectC.optLong("plctb");
                cVar.dk = jSONObjectC.optLong("creative_id");
                String strOptString3 = jSONObjectC.optString("cam_tpl_url");
                Uri uri = Uri.parse(strOptString3);
                if (TextUtils.isEmpty(uri.getPath()) || !(uri.getPath().endsWith(MultiDexExtractor.EXTRACTED_SUFFIX) || uri.getPath().endsWith(".ZIP"))) {
                    cVar.d(strOptString3);
                } else {
                    cVar.a(strOptString3);
                }
                cVar.dj = jSONObjectC.optString("cam_html");
                cVar.cX = jSONObjectC.optString("cam_html");
                String strOptString4 = jSONObjectC.optString(m);
                if (!TextUtils.isEmpty(strOptString4)) {
                    cVar.eN = true;
                    cVar.eM = strOptString4;
                } else if (TextUtils.isEmpty(cVar.cX) || cVar.cX.contains("<MBTPLMARK>")) {
                    cVar.eN = false;
                } else {
                    cVar.eN = true;
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObjectC.optJSONArray(aM);
                try {
                    if (jSONArrayOptJSONArray3 != null) {
                        string = jSONArrayOptJSONArray3.toString();
                    } else {
                        if (TextUtils.isEmpty(jSONObjectC.optString(aM))) {
                            cVar.fr = null;
                            cVar.fk = jSONObjectC.optInt(q);
                            cVar.fl = jSONObjectC.optString(r);
                            cVar.du = jSONObjectC.optInt(ay);
                            cVar.de = jSONObjectC.optInt(x, -2);
                            cVar.df = jSONObjectC.optInt(y, -2);
                            cVar.dd = jSONObjectC.optInt("adspace_t", 1);
                            cVar.dv = jSONObjectC.optInt(az);
                            cVarIsEmpty = h.b(jSONObjectC, cVar);
                            ((c) cVarIsEmpty).dT = t.a(com.anythink.core.common.b.n.a().f(), cVarIsEmpty.ba(), ((c) cVarIsEmpty).dT);
                            cVarIsEmpty.ag(jSONObjectC.optInt(aB, 2));
                            cVarIsEmpty.ah(jSONObjectC.optInt(aA, 1));
                            jSONArrayOptJSONArray = jSONObjectC.optJSONArray(aC);
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                                arrayList = new ArrayList<>();
                                for (i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i2)));
                                }
                                if (arrayList.size() > 0) {
                                    ((c) cVarIsEmpty).fu = arrayList;
                                }
                            }
                            ((c) cVarIsEmpty).fC = jSONObjectC.optInt(g, 0);
                            return cVarIsEmpty;
                        }
                        string = jSONObjectC.optString(aM);
                    }
                    cVar.fk = jSONObjectC.optInt(q);
                    cVar.fl = jSONObjectC.optString(r);
                    cVar.du = jSONObjectC.optInt(ay);
                    cVar.de = jSONObjectC.optInt(x, -2);
                    cVar.df = jSONObjectC.optInt(y, -2);
                    cVar.dd = jSONObjectC.optInt("adspace_t", 1);
                    cVar.dv = jSONObjectC.optInt(az);
                    cVarIsEmpty = h.b(jSONObjectC, cVar);
                    ((c) cVarIsEmpty).dT = t.a(com.anythink.core.common.b.n.a().f(), cVarIsEmpty.ba(), ((c) cVarIsEmpty).dT);
                    cVarIsEmpty.ag(jSONObjectC.optInt(aB, 2));
                    cVarIsEmpty.ah(jSONObjectC.optInt(aA, 1));
                    jSONArrayOptJSONArray = jSONObjectC.optJSONArray(aC);
                    if (jSONArrayOptJSONArray != null) {
                        arrayList = new ArrayList<>();
                        while (i2 < jSONArrayOptJSONArray.length()) {
                        }
                        if (arrayList.size() > 0) {
                        }
                    }
                    ((c) cVarIsEmpty).fC = jSONObjectC.optInt(g, 0);
                    return cVarIsEmpty;
                } catch (Exception e2) {
                    e = e2;
                }
                cVar.fr = string;
            } catch (Exception e3) {
                e = e3;
                cVarIsEmpty = cVar;
            }
        } catch (Exception e4) {
            e = e4;
            cVarIsEmpty = 0;
        }
        e.printStackTrace();
        return cVarIsEmpty;
    }

    private static n a(JSONObject jSONObject, n nVar) {
        nVar.a(a(jSONObject.optJSONArray(h.cK)));
        nVar.b(a(jSONObject.optJSONArray(h.cL)));
        nVar.c(a(jSONObject.optJSONArray(h.cM)));
        return nVar;
    }

    public static JSONObject a(c cVar) throws JSONException {
        C0131c c0131c;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", cVar.aZ());
        jSONObject.put(ay, cVar.du);
        jSONObject.put(az, cVar.dv);
        jSONObject.put("adspace_t", cVar.dd);
        jSONObject.put(y, cVar.df);
        jSONObject.put(x, cVar.de);
        if (!TextUtils.isEmpty(cVar.ff)) {
            jSONObject.put("unitId", cVar.ff);
        }
        if (!TextUtils.isEmpty(cVar.eT)) {
            try {
                jSONObject.put(bN, new JSONObject(cVar.eT));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(cVar.eY)) {
            try {
                jSONObject.put(d.H, new JSONObject(cVar.eY));
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
        List<String> list = cVar.cZ;
        if (list != null && list.size() > 0) {
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = cVar.cZ.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject.put("pv_urls", jSONArray);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(cVar.eV)) {
            jSONObject.put(d.G, cVar.eX);
            jSONObject.put(d.F, cVar.eV);
            jSONObject.put(d.E, cVar.eU);
        }
        jSONObject.put("ready_rate", cVar.eR);
        jSONObject.put("title", cVar.bb());
        jSONObject.put("desc", cVar.bc());
        jSONObject.put("package_name", cVar.ba());
        jSONObject.put(av, cVar.ev);
        jSONObject.put("icon_url", cVar.bd());
        jSONObject.put("image_url", cVar.be());
        jSONObject.put(K, cVar.bh());
        jSONObject.put(J, cVar.ea);
        jSONObject.put(L, cVar.dT);
        jSONObject.put("click_url", cVar.dV);
        p pVar = cVar.aH;
        if (pVar != null) {
            jSONObject.put(aF, pVar.c());
        }
        jSONObject.put(N, cVar.dW);
        jSONObject.put(O, cVar.dX);
        jSONObject.put(P, cVar.dY);
        jSONObject.put("notice_url", cVar.dU);
        jSONObject.put("template", cVar.eb);
        jSONObject.put("ad_source_id", cVar.bf());
        jSONObject.put(T, cVar.ec);
        jSONObject.put(U, cVar.ed);
        StringBuilder sb = new StringBuilder();
        sb.append(cVar.aX());
        jSONObject.put(Y, sb.toString());
        jSONObject.put(Z, cVar.aY());
        jSONObject.put("click_mode", cVar.ee);
        jSONObject.put("landing_type", cVar.ef);
        jSONObject.put("link_type", cVar.eu);
        jSONObject.put(ab, cVar.ei);
        jSONObject.put(aa, cVar.cU);
        jSONObject.put(ah, cVar.eQ);
        jSONObject.put(ax, cVar.fm);
        jSONObject.put("video_url", cVar.en);
        jSONObject.put("video_length", cVar.bi());
        jSONObject.put("video_size", cVar.eo);
        jSONObject.put(af, cVar.ep);
        jSONObject.put(ag, cVar.eq);
        jSONObject.put(aw, cVar.eD);
        jSONObject.put(d.g, cVar.dZ);
        jSONObject.put("ctype", cVar.er);
        jSONObject.put(ak, cVar.et);
        jSONObject.put(aj, cVar.es);
        jSONObject.put(d.f, cVar.ey);
        jSONObject.put(d.k, cVar.ez);
        jSONObject.put(an, cVar.ew);
        jSONObject.put("offer_type", cVar.ex);
        jSONObject.put("reward_amount", cVar.eA);
        jSONObject.put("reward_name", cVar.eB);
        jSONObject.put(be, cVar.dR);
        if (w.b(cVar.fe)) {
            jSONObject.put(cj, new JSONObject(cVar.fe));
        }
        jSONObject.put(bC, cVar.eP);
        jSONObject.put("endcard_url", cVar.I());
        jSONObject.put(bP, cVar.fc);
        if (cVar != null && (c0131c = cVar.fo) != null && w.b(c0131c.a())) {
            jSONObject.put(ck, new JSONObject(cVar.fo.a()));
        }
        jSONObject.put(ar, cVar.bK);
        jSONObject.put(as, cVar.fa);
        jSONObject.put(aX, cVar.dO);
        jSONObject.put(aW, cVar.dN);
        jSONObject.put(aG, cVar.dw);
        jSONObject.put("ia_icon", cVar.dA);
        jSONObject.put("ia_rst", cVar.dB);
        jSONObject.put("ia_url", cVar.dC);
        jSONObject.put("ia_ori", cVar.dD);
        jSONObject.put("ad_type", cVar.dE);
        jSONObject.put(aS, cVar.dF);
        jSONObject.put(aT, cVar.dG);
        jSONObject.put(aU, cVar.dH);
        jSONObject.put(aV, cVar.dI);
        jSONObject.put(aI, cVar.dK);
        jSONObject.put(aJ, cVar.dL);
        jSONObject.put(aK, cVar.dM);
        a aVar = cVar.dJ;
        if (aVar != null) {
            jSONObject.put(aL, new JSONObject(aVar.a()));
        }
        jSONObject.put("plct", cVar.dg);
        jSONObject.put("plctb", cVar.dh);
        jSONObject.put(aM, cVar.fr);
        jSONObject.put("creative_id", cVar.dk);
        jSONObject.put("cam_html", cVar.dj);
        String str = cVar.di;
        if (str == null) {
            str = cVar.cW;
        }
        jSONObject.put("cam_tpl_url", str);
        jSONObject.put(m, cVar.eM);
        jSONObject.put(n, cVar.eM);
        jSONObject.put(o, cVar.bg());
        jSONObject.put("hb", cVar.eK);
        jSONObject.put(q, cVar.fk);
        jSONObject.put(r, cVar.fl);
        int i2 = cVar.dm;
        if (i2 <= 0) {
            i2 = 1;
        }
        jSONObject.put("vcn", i2);
        int i3 = cVar.dn;
        if (i3 != 1) {
            i3 = 0;
        }
        jSONObject.put("token_r", i3);
        jSONObject.put("encrypt_p", cVar.f1do);
        jSONObject.put(v, cVar.ds);
        jSONObject.put(aC, cVar.fu);
        jSONObject.put(aB, cVar.fv);
        jSONObject.put(aA, cVar.fw);
        jSONObject.put(e, cVar.db);
        jSONObject.put(f, cVar.dc);
        try {
            jSONObject.put("misk_spt", com.anythink.core.common.o.a().c());
            com.anythink.core.common.o.a();
            jSONObject.put("misk_spt_det", com.anythink.core.common.o.b());
        } catch (JSONException unused) {
        }
        jSONObject.put(g, cVar.fC);
        if (cVar == null) {
            return jSONObject;
        }
        jSONObject.put(h.cw, cVar.aW());
        jSONObject.put(h.cx, cVar.aV());
        jSONObject.put(h.cA, cVar.aU());
        jSONObject.put("ttc_type", cVar.aT());
        jSONObject.put(h.cC, cVar.aS());
        jSONObject.put(h.cD, cVar.aN());
        jSONObject.put(h.cE, com.anythink.expressad.foundation.h.j.a(cVar.aO()));
        jSONObject.put(h.cF, cVar.aP());
        jSONObject.put(h.cp, cVar.aI());
        jSONObject.put(h.cq, cVar.aH());
        if (cVar.aG() != null) {
            jSONObject.put(h.cr, cVar.aG().g());
        }
        jSONObject.put(h.cG, cVar.aQ());
        jSONObject.put(h.cH, cVar.aR());
        jSONObject.put(bc, cVar.dQ);
        jSONObject.put(h.ct, cVar.aK());
        jSONObject.put(h.cs, cVar.aJ());
        jSONObject.put(h.cu, cVar.aL());
        jSONObject.put(h.cv, cVar.aM());
        return jSONObject;
    }

    public static JSONObject a(c cVar, boolean z3, boolean z4) throws JSONException {
        JSONObject jSONObjectA = a(cVar);
        jSONObjectA.put("isReady", z3);
        jSONObjectA.put("expired", z4);
        return jSONObjectA;
    }

    private void a(a aVar) {
        this.dJ = aVar;
    }

    private void a(b bVar) {
        this.fn = bVar;
    }

    private void a(C0131c c0131c) {
        this.fo = c0131c;
        if (c0131c == null || TextUtils.isEmpty(c0131c.e())) {
            return;
        }
        if (TextUtils.isEmpty(this.eV) && c0131c.e().contains(d)) {
            this.eW = c0131c.e();
        }
        boolean zE = t.e(c0131c.e());
        int iG = t.g(c0131c.e());
        if (zE) {
            this.dp = true;
            v(iG);
        }
    }

    private void a(n nVar) {
        this.fd = nVar;
    }

    private void a(p pVar) {
        this.aH = pVar;
    }

    private void a(ArrayList<Integer> arrayList) {
        this.fu = arrayList;
    }

    private void a(HashMap<String, String> map) {
        this.eE = map;
    }

    private static boolean a(c cVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (com.anythink.expressad.foundation.b.a.c().i() == 2 && "1".equals(Uri.parse(str).getQueryParameter("dpwgl"))) {
            return true;
        }
        cVar.k(str);
        return false;
    }

    private static String[] a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        String[] strArr = new String[jSONArray.length()];
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            strArr[i2] = jSONArray.optString(i2);
        }
        return strArr;
    }

    private void aa(int i2) {
        this.dS = i2;
    }

    private void aa(String str) {
        this.dT = str;
    }

    private void ab(int i2) {
        this.dW = i2;
    }

    private void ab(String str) {
        this.dZ = str;
    }

    private void ac(int i2) {
        this.eb = i2;
    }

    private void ac(String str) {
        this.ea = str;
    }

    private static n ad(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                n nVar = new n();
                nVar.r(a(jSONObject.optJSONArray(bS)));
                nVar.g(a(jSONObject.optJSONArray(bT)));
                nVar.h(a(jSONObject.optJSONArray(bU)));
                nVar.i(a(jSONObject.optJSONArray(bV)));
                nVar.j(a(jSONObject.optJSONArray(bW)));
                nVar.k(a(jSONObject.optJSONArray(bX)));
                nVar.a(b(jSONObject.optJSONArray(ci)));
                nVar.l(a(jSONObject.optJSONArray("mute")));
                nVar.m(a(jSONObject.optJSONArray(bZ)));
                nVar.n(a(jSONObject.optJSONArray(ca)));
                nVar.o(a(jSONObject.optJSONArray(cb)));
                nVar.p(a(jSONObject.optJSONArray(cc)));
                nVar.q(a(jSONObject.optJSONArray("error")));
                nVar.s(a(jSONObject.optJSONArray(ce)));
                nVar.u(a(jSONObject.optJSONArray(cf)));
                nVar.t(a(jSONObject.optJSONArray(ch)));
                nVar.v(a(jSONObject.optJSONArray(cg)));
                nVar.f(a(jSONObject.optJSONArray(bd)));
                nVar.d(a(jSONObject.optJSONArray(bf)));
                nVar.e(a(jSONObject.optJSONArray(bg)));
                nVar.a(a(jSONObject.optJSONArray(h.cK)));
                nVar.b(a(jSONObject.optJSONArray(h.cL)));
                nVar.c(a(jSONObject.optJSONArray(h.cM)));
                return nVar;
            }
        } catch (JSONException unused) {
        }
        return null;
    }

    private void ad(int i2) {
        this.eR = i2;
    }

    private static Map<Integer, String> ae(String str) {
        HashMap map = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() <= 0) {
                return null;
            }
            HashMap map2 = new HashMap();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    int iOptInt = jSONObjectOptJSONObject.optInt(al);
                    map2.put(Integer.valueOf(iOptInt), jSONObjectOptJSONObject.optString(am));
                } catch (Exception e2) {
                    e = e2;
                    map = map2;
                }
            }
            return map2;
        } catch (Exception e3) {
            e = e3;
        }
        e.printStackTrace();
        return map;
    }

    private void ae(int i2) {
        this.cV = i2;
    }

    private void af(int i2) {
        this.fk = i2;
    }

    private void af(String str) {
        this.eT = str;
    }

    private void ag(int i2) {
        if (i2 > 2 || i2 <= 0) {
            this.fv = 2;
        } else {
            this.fv = i2;
        }
    }

    private void ag(String str) {
        this.eW = str;
    }

    private void ah(int i2) {
        if (i2 > 2 || i2 <= 0) {
            this.fw = 1;
        } else {
            this.fw = i2;
        }
    }

    private void ah(String str) {
        this.fl = str;
    }

    private void ai(int i2) {
        this.fx = i2;
    }

    private void ai(String str) {
        this.fr = str;
    }

    private void aj(int i2) {
        this.fC = i2;
    }

    private void aj(String str) {
        this.ft = str;
    }

    private void ak(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length > 0) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (String str2 : strArrSplit) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str2)));
            }
            this.fu = arrayList;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:33|(1:35)|36|(1:38)|39|(1:41)|42|(2:44|(1:46)(18:48|50|(1:57)(1:56)|58|(1:60)|61|(1:63)(2:64|(1:69)(1:68))|103|70|71|(2:73|(1:75))|76|(2:78|(1:80))|81|82|(5:86|(2:89|87)|114|90|(1:92))|93|94))(1:49)|47|50|(3:52|54|57)(0)|58|(0)|61|(0)(0)|103|70|71|(0)|76|(0)|81|82|(6:84|86|(1:87)|114|90|(0))|93|94) */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0381 A[Catch: Exception -> 0x04b0, TryCatch #1 {Exception -> 0x04b0, blocks: (B:5:0x0018, B:7:0x00d6, B:8:0x00e3, B:10:0x00ed, B:11:0x00f7, B:30:0x022d, B:33:0x0242, B:35:0x0250, B:36:0x0256, B:38:0x025c, B:39:0x0262, B:41:0x0268, B:42:0x026e, B:44:0x032f, B:46:0x0339, B:47:0x033d, B:50:0x0348, B:52:0x0365, B:54:0x0371, B:56:0x037d, B:58:0x0384, B:60:0x03a4, B:61:0x03aa, B:63:0x03b0, B:81:0x0400, B:64:0x03b5, B:66:0x03bd, B:68:0x03c7, B:69:0x03ca, B:57:0x0381, B:48:0x0340, B:49:0x0343), top: B:105:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x03a4 A[Catch: Exception -> 0x04b0, TryCatch #1 {Exception -> 0x04b0, blocks: (B:5:0x0018, B:7:0x00d6, B:8:0x00e3, B:10:0x00ed, B:11:0x00f7, B:30:0x022d, B:33:0x0242, B:35:0x0250, B:36:0x0256, B:38:0x025c, B:39:0x0262, B:41:0x0268, B:42:0x026e, B:44:0x032f, B:46:0x0339, B:47:0x033d, B:50:0x0348, B:52:0x0365, B:54:0x0371, B:56:0x037d, B:58:0x0384, B:60:0x03a4, B:61:0x03aa, B:63:0x03b0, B:81:0x0400, B:64:0x03b5, B:66:0x03bd, B:68:0x03c7, B:69:0x03ca, B:57:0x0381, B:48:0x0340, B:49:0x0343), top: B:105:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03b0 A[Catch: Exception -> 0x04b0, TryCatch #1 {Exception -> 0x04b0, blocks: (B:5:0x0018, B:7:0x00d6, B:8:0x00e3, B:10:0x00ed, B:11:0x00f7, B:30:0x022d, B:33:0x0242, B:35:0x0250, B:36:0x0256, B:38:0x025c, B:39:0x0262, B:41:0x0268, B:42:0x026e, B:44:0x032f, B:46:0x0339, B:47:0x033d, B:50:0x0348, B:52:0x0365, B:54:0x0371, B:56:0x037d, B:58:0x0384, B:60:0x03a4, B:61:0x03aa, B:63:0x03b0, B:81:0x0400, B:64:0x03b5, B:66:0x03bd, B:68:0x03c7, B:69:0x03ca, B:57:0x0381, B:48:0x0340, B:49:0x0343), top: B:105:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03b5 A[Catch: Exception -> 0x04b0, TryCatch #1 {Exception -> 0x04b0, blocks: (B:5:0x0018, B:7:0x00d6, B:8:0x00e3, B:10:0x00ed, B:11:0x00f7, B:30:0x022d, B:33:0x0242, B:35:0x0250, B:36:0x0256, B:38:0x025c, B:39:0x0262, B:41:0x0268, B:42:0x026e, B:44:0x032f, B:46:0x0339, B:47:0x033d, B:50:0x0348, B:52:0x0365, B:54:0x0371, B:56:0x037d, B:58:0x0384, B:60:0x03a4, B:61:0x03aa, B:63:0x03b0, B:81:0x0400, B:64:0x03b5, B:66:0x03bd, B:68:0x03c7, B:69:0x03ca, B:57:0x0381, B:48:0x0340, B:49:0x0343), top: B:105:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03da A[Catch: Exception -> 0x0400, TRY_ENTER, TryCatch #0 {Exception -> 0x0400, blocks: (B:70:0x03cc, B:73:0x03da, B:75:0x03e2, B:76:0x03e8, B:78:0x03f2, B:80:0x03fa), top: B:103:0x03cc }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03f2 A[Catch: Exception -> 0x0400, TryCatch #0 {Exception -> 0x0400, blocks: (B:70:0x03cc, B:73:0x03da, B:75:0x03e2, B:76:0x03e8, B:78:0x03f2, B:80:0x03fa), top: B:103:0x03cc }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0491 A[Catch: Exception -> 0x04b3, LOOP:1: B:87:0x048b->B:89:0x0491, LOOP_END, TryCatch #4 {Exception -> 0x04b3, blocks: (B:4:0x0013, B:82:0x0445, B:84:0x047f, B:86:0x0485, B:87:0x048b, B:89:0x0491, B:90:0x049f, B:92:0x04a5, B:93:0x04a7), top: B:111:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04a5 A[Catch: Exception -> 0x04b3, TryCatch #4 {Exception -> 0x04b3, blocks: (B:4:0x0013, B:82:0x0445, B:84:0x047f, B:86:0x0485, B:87:0x048b, B:89:0x0491, B:90:0x049f, B:92:0x04a5, B:93:0x04a7), top: B:111:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static c b(JSONObject jSONObject) {
        String string;
        String strOptString;
        Uri uri;
        String strOptString2;
        JSONArray jSONArrayOptJSONArray;
        ArrayList<Integer> arrayList;
        int i2;
        String strOptString3;
        String strOptString4;
        ArrayList arrayList2;
        c cVarA = null;
        if (jSONObject != null) {
            try {
                c cVar = new c();
                try {
                    cVar.v(jSONObject.optString("id"));
                    cVar.x(jSONObject.optString("title"));
                    cVar.y(jSONObject.optString("desc"));
                    cVar.w(jSONObject.optString("package_name"));
                    cVar.ev = jSONObject.optInt(av);
                    cVar.z(jSONObject.optString("icon_url"));
                    cVar.A(jSONObject.optString("image_url"));
                    cVar.B(jSONObject.optString(K));
                    cVar.ea = jSONObject.optString(J);
                    cVar.dT = jSONObject.optString(L);
                    cVar.dV = jSONObject.optString("click_url");
                    cVar.aH = p.a(jSONObject.optString(aF));
                    cVar.dW = jSONObject.optInt(N);
                    cVar.dX = jSONObject.optString(O);
                    cVar.dY = jSONObject.optBoolean(P, false);
                    cVar.dU = jSONObject.optString("notice_url");
                    cVar.eb = jSONObject.optInt("template");
                    cVar.p(jSONObject.optInt("ad_source_id", 1));
                    cVar.ec = jSONObject.optInt(T);
                    cVar.ed = jSONObject.optInt(U);
                    cVar.eQ = jSONObject.optInt(ah);
                    if (!TextUtils.isEmpty(jSONObject.optString(Y))) {
                        cVar.a(Double.parseDouble(jSONObject.optString(Y, "0")));
                    }
                    if (!TextUtils.isEmpty(jSONObject.optString(Z))) {
                        cVar.o(jSONObject.optInt(Z, 333333));
                    }
                    cVar.ee = jSONObject.optString("click_mode");
                    cVar.ef = jSONObject.optString("landing_type");
                    cVar.eu = jSONObject.optInt("link_type", 4);
                    cVar.ei = jSONObject.optInt(ab);
                    cVar.o(jSONObject.optString(aa));
                    cVar.eD = jSONObject.optString(aw);
                    cVar.fm = jSONObject.optInt(ax, 2);
                    cVar.en = jSONObject.optString("video_url");
                    cVar.q(jSONObject.optInt("video_length"));
                    cVar.eo = jSONObject.optInt("video_size");
                    cVar.ep = jSONObject.optString(af);
                    cVar.eq = jSONObject.optInt(ag);
                    cVar.a(System.currentTimeMillis());
                    cVar.er = jSONObject.optInt("ctype");
                    cVar.es = jSONObject.optString(aj);
                    cVar.et = jSONObject.optInt(ak);
                    cVar.ey = jSONObject.optString(d.f);
                    cVar.n(jSONObject.optString(d.k));
                    cVar.ew = jSONObject.optString(an);
                    cVar.ex = jSONObject.optInt("offer_type");
                    cVar.eB = jSONObject.optString("reward_name");
                    cVar.eA = jSONObject.optInt("reward_amount");
                    try {
                        String strOptString5 = jSONObject.optString(cj);
                        if (!TextUtils.isEmpty(strOptString5)) {
                            cVar.fe = strOptString5;
                            cVar.fd = ad(strOptString5);
                        }
                    } catch (Exception unused) {
                    }
                    try {
                        cVar.eR = jSONObject.optInt("ready_rate", -1);
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(bN);
                        if (jSONObjectOptJSONObject != null) {
                            cVar.eT = jSONObjectOptJSONObject.toString();
                        }
                        cVar.eX = jSONObject.optInt(d.G);
                        cVar.r(jSONObject.optString(d.F));
                        cVar.eU = jSONObject.optInt(d.E);
                        new JSONArray();
                        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("pv_urls");
                        if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                            arrayList2 = null;
                        } else {
                            arrayList2 = new ArrayList(jSONArrayOptJSONArray2.length());
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                                arrayList2.add(jSONArrayOptJSONArray2.optString(i3));
                            }
                        }
                        cVar.cZ = arrayList2;
                        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(d.H);
                        if (jSONObjectOptJSONObject2 != null) {
                            cVar.eY = jSONObjectOptJSONObject2.toString();
                        }
                    } catch (Exception unused2) {
                    }
                    cVar.eP = jSONObject.optInt(bC, 2);
                    if (a(cVar, jSONObject.optString("endcard_url"))) {
                        return null;
                    }
                    cVar.fc = jSONObject.optInt(bP, 1);
                    if (jSONObject.has(ar)) {
                        cVar.bK = jSONObject.optString(ar);
                    }
                    if (jSONObject.has(bc)) {
                        cVar.dQ = jSONObject.optInt(bc);
                    }
                    if (jSONObject.has(be)) {
                        cVar.dR = jSONObject.optString(be);
                    }
                    cVar.a(C0131c.a(jSONObject.optJSONObject(ck)));
                    cVar.fa = jSONObject.optInt(as, 2);
                    cVar.dN = jSONObject.optInt(aW, 1);
                    cVar.dO = jSONObject.optInt(aX, 1);
                    cVar.dw = jSONObject.optInt(aG);
                    cVar.dA = jSONObject.optString("ia_icon");
                    cVar.dB = jSONObject.optInt("ia_rst");
                    cVar.dC = jSONObject.optString("ia_url");
                    cVar.dD = jSONObject.optInt("ia_ori");
                    cVar.dE = jSONObject.optInt("ad_type");
                    cVar.db = jSONObject.optInt(e);
                    cVar.dc = jSONObject.optInt(f);
                    cVar.dF = jSONObject.optString(aS);
                    cVar.dG = jSONObject.optString(aT);
                    cVar.dH = jSONObject.optInt(aU);
                    cVar.dI = jSONObject.optString(aV);
                    cVar.dL = jSONObject.optInt(aJ);
                    cVar.dK = jSONObject.optInt(aI);
                    cVar.dM = jSONObject.optString(aK);
                    cVar.dJ = a.a(jSONObject.optString(aL, ""));
                    cVar.dg = jSONObject.optLong("plct");
                    cVar.dh = jSONObject.optLong("plctb");
                    JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(aM);
                    if (jSONArrayOptJSONArray3 != null) {
                        string = jSONArrayOptJSONArray3.toString();
                    } else {
                        if (TextUtils.isEmpty(jSONObject.optString(aM))) {
                            cVar.fr = null;
                            cVar.dk = jSONObject.optInt("creative_id");
                            strOptString = jSONObject.optString("cam_tpl_url");
                            uri = Uri.parse(strOptString);
                            if (TextUtils.isEmpty(uri.getPath()) && (uri.getPath().endsWith(MultiDexExtractor.EXTRACTED_SUFFIX) || uri.getPath().endsWith(".ZIP"))) {
                                cVar.a(strOptString);
                            } else {
                                cVar.d(strOptString);
                            }
                            cVar.dj = jSONObject.optString("cam_html");
                            cVar.cX = jSONObject.optString("cam_html");
                            cVar.ff = jSONObject.optString("unitId");
                            strOptString2 = jSONObject.optString(m);
                            if (TextUtils.isEmpty(strOptString2)) {
                                strOptString2 = jSONObject.optString(n);
                            }
                            if (TextUtils.isEmpty(strOptString2)) {
                                cVar.eN = true;
                                cVar.eM = strOptString2;
                            } else if (TextUtils.isEmpty(cVar.cX) || cVar.cX.contains("<MBTPLMARK>")) {
                                cVar.eN = false;
                            } else {
                                cVar.eN = true;
                            }
                            strOptString3 = jSONObject.optString(d.g);
                            if (!TextUtils.isEmpty(strOptString3)) {
                                cVar.dZ = strOptString3;
                                Uri uri2 = Uri.parse(strOptString3);
                                if (uri2 != null) {
                                    cVar.eg = uri2.getQueryParameter("k");
                                }
                            }
                            strOptString4 = jSONObject.optString("notice_url");
                            if (!TextUtils.isEmpty(strOptString4)) {
                                cVar.dU = strOptString4;
                                Uri uri3 = Uri.parse(strOptString4);
                                if (uri3 != null) {
                                    cVar.eh = uri3.getQueryParameter("k");
                                }
                            }
                            cVar.eK = jSONObject.optBoolean("hb", false);
                            cVar.fk = jSONObject.optInt(q);
                            cVar.fl = jSONObject.optString(r);
                            cVar.du = jSONObject.optInt(ay);
                            cVar.dv = jSONObject.optInt(az);
                            cVar.de = jSONObject.optInt(x, -2);
                            cVar.df = jSONObject.optInt(y, -2);
                            cVar.dd = jSONObject.optInt("adspace_t", 1);
                            cVarA = h.a(jSONObject, cVar);
                            cVarA.dm = jSONObject.optInt("vcn");
                            cVarA.dn = jSONObject.optInt("token_r");
                            cVarA.f1do = jSONObject.optString("encrypt_p");
                            cVarA.ds = jSONObject.optInt(v);
                            cVarA.ag(jSONObject.optInt(aB, 2));
                            cVarA.ah(jSONObject.optInt(aA, 1));
                            jSONArrayOptJSONArray = jSONObject.optJSONArray(aC);
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                                arrayList = new ArrayList<>();
                                for (i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i2)));
                                }
                                if (arrayList.size() > 0) {
                                    cVarA.fu = arrayList;
                                }
                            }
                            cVarA.fC = jSONObject.optInt(g, 0);
                            return cVarA;
                        }
                        string = jSONObject.optString(aM);
                    }
                    cVar.fr = string;
                    cVar.dk = jSONObject.optInt("creative_id");
                    strOptString = jSONObject.optString("cam_tpl_url");
                    uri = Uri.parse(strOptString);
                    if (TextUtils.isEmpty(uri.getPath())) {
                        cVar.d(strOptString);
                    }
                    cVar.dj = jSONObject.optString("cam_html");
                    cVar.cX = jSONObject.optString("cam_html");
                    cVar.ff = jSONObject.optString("unitId");
                    strOptString2 = jSONObject.optString(m);
                    if (TextUtils.isEmpty(strOptString2)) {
                    }
                    if (TextUtils.isEmpty(strOptString2)) {
                    }
                    strOptString3 = jSONObject.optString(d.g);
                    if (!TextUtils.isEmpty(strOptString3)) {
                    }
                    strOptString4 = jSONObject.optString("notice_url");
                    if (!TextUtils.isEmpty(strOptString4)) {
                    }
                    cVar.eK = jSONObject.optBoolean("hb", false);
                    cVar.fk = jSONObject.optInt(q);
                    cVar.fl = jSONObject.optString(r);
                    cVar.du = jSONObject.optInt(ay);
                    cVar.dv = jSONObject.optInt(az);
                    cVar.de = jSONObject.optInt(x, -2);
                    cVar.df = jSONObject.optInt(y, -2);
                    cVar.dd = jSONObject.optInt("adspace_t", 1);
                    cVarA = h.a(jSONObject, cVar);
                    cVarA.dm = jSONObject.optInt("vcn");
                    cVarA.dn = jSONObject.optInt("token_r");
                    cVarA.f1do = jSONObject.optString("encrypt_p");
                    cVarA.ds = jSONObject.optInt(v);
                    cVarA.ag(jSONObject.optInt(aB, 2));
                    cVarA.ah(jSONObject.optInt(aA, 1));
                    jSONArrayOptJSONArray = jSONObject.optJSONArray(aC);
                    if (jSONArrayOptJSONArray != null) {
                        arrayList = new ArrayList<>();
                        while (i2 < jSONArrayOptJSONArray.length()) {
                        }
                        if (arrayList.size() > 0) {
                        }
                    }
                    cVarA.fC = jSONObject.optInt(g, 0);
                    return cVarA;
                } catch (Exception e2) {
                    e = e2;
                    cVarA = cVar;
                    e.printStackTrace();
                    return cVarA;
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        return cVarA;
    }

    private static List<Map<Integer, String>> b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    String string = jSONArray.getString(i2);
                    if (!TextUtils.isEmpty(string)) {
                        JSONObject jSONObject = new JSONObject(string);
                        HashMap map = new HashMap();
                        int i3 = jSONObject.getInt("rate");
                        map.put(Integer.valueOf(i3), jSONObject.getString(am));
                        arrayList.add(map);
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return arrayList;
    }

    public static JSONArray b(List<c> list) {
        JSONArray jSONArray = null;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    JSONArray jSONArray2 = new JSONArray();
                    try {
                        Iterator<c> it = list.iterator();
                        while (it.hasNext()) {
                            try {
                                jSONArray2.put(a(it.next()));
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                        return jSONArray2;
                    } catch (Exception e2) {
                        e = e2;
                        jSONArray = jSONArray2;
                        e.printStackTrace();
                        return jSONArray;
                    }
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        return jSONArray;
    }

    private void b(long j2) {
        this.dg = j2;
    }

    private int bA() {
        return this.dD;
    }

    private int bB() {
        return this.dz;
    }

    private int bC() {
        return this.dw;
    }

    private int bD() {
        return this.dx;
    }

    private int bE() {
        return this.dy;
    }

    private int bF() {
        return this.ev;
    }

    private String bG() {
        return this.eF;
    }

    private String bH() {
        return this.eG;
    }

    private String bI() {
        return this.eH;
    }

    private String bJ() {
        return this.eI;
    }

    private String bK() {
        return this.eJ;
    }

    private String bL() {
        return this.bK;
    }

    private String bM() {
        return this.fe;
    }

    private String bN() {
        return this.eD;
    }

    private String bO() {
        return this.fi;
    }

    private String bP() {
        return this.fj;
    }

    private int bQ() {
        return this.fg;
    }

    private long bR() {
        return this.fh;
    }

    private b bS() {
        return this.fn;
    }

    private int bT() {
        return this.eC;
    }

    private String bU() {
        return this.ew;
    }

    private String bV() {
        return this.ey;
    }

    private int bW() {
        return this.eA;
    }

    private String bX() {
        return this.eB;
    }

    private int bY() {
        return this.er;
    }

    private String bZ() {
        return this.es;
    }

    private int bj() {
        return this.cV;
    }

    private String bk() {
        return this.f1do;
    }

    private int bl() {
        int i2 = this.dn;
        if (i2 == 1) {
            return i2;
        }
        return 0;
    }

    private int bm() {
        int i2 = this.dm;
        if (i2 > 0) {
            return i2;
        }
        return 1;
    }

    private void bn() {
        this.dp = true;
    }

    private long bo() {
        return this.dh;
    }

    private p bp() {
        return this.aH;
    }

    private int bq() {
        return this.dK;
    }

    private int br() {
        return this.dL;
    }

    private String bs() {
        return this.dM;
    }

    private String bt() {
        return this.dI;
    }

    private int bu() {
        return this.dH;
    }

    private String bv() {
        return this.dF;
    }

    private String bw() {
        return this.dG;
    }

    private String bx() {
        return this.dA;
    }

    private int by() {
        return this.dB;
    }

    private String bz() {
        return this.dC;
    }

    private static JSONObject c(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        try {
            if (!jSONObject.has(bM) || (jSONArrayOptJSONArray = jSONObject.optJSONArray(bM)) == null || jSONArrayOptJSONArray.length() <= 0) {
                return jSONObject;
            }
            jSONObject.remove(bM);
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectA = com.anythink.expressad.foundation.c.a.a.a().a(jSONArrayOptJSONArray.getString(i2));
                if (jSONObjectA != null) {
                    Iterator<String> itKeys = jSONObjectA.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObject.put(next, jSONObjectA.opt(next));
                    }
                }
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private void c(long j2) {
        this.dh = j2;
    }

    private int ca() {
        return this.et;
    }

    private int cb() {
        return this.eq;
    }

    private int cc() {
        return this.em;
    }

    private boolean cd() {
        return this.ek;
    }

    private int ce() {
        return this.ei;
    }

    private int cf() {
        return this.ec;
    }

    private int cg() {
        return this.ed;
    }

    private int ch() {
        return this.dS;
    }

    private boolean ci() {
        return this.dY;
    }

    private int cj() {
        return this.eb;
    }

    private String ck() {
        return this.ea;
    }

    private String cl() {
        return this.eT;
    }

    private String cm() {
        return this.eY;
    }

    private int cn() {
        return this.fk;
    }

    private String co() {
        return this.fl;
    }

    private String cp() {
        return this.fr;
    }

    private String cq() {
        return this.ft;
    }

    private long cr() {
        return this.da;
    }

    private String cs() {
        ArrayList<Integer> arrayList = this.fu;
        if (arrayList == null || arrayList.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<Integer> it = this.fu.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(",");
            }
            if (sb.length() > 0) {
                sb.delete(sb.length() - 1, sb.length());
            }
            return !TextUtils.isEmpty(sb) ? sb.toString() : "";
        } catch (Throwable th) {
            th.getMessage();
            return "";
        }
    }

    private int ct() {
        return this.fv;
    }

    private int cu() {
        return this.fx;
    }

    private boolean cv() {
        return this.fz;
    }

    private int cw() {
        return this.fC;
    }

    private void d(long j2) {
        this.dk = j2;
    }

    private void d(boolean z3) {
        this.eK = z3;
    }

    private void e(long j2) {
        this.fh = j2;
    }

    private void e(boolean z3) {
        this.ek = z3;
    }

    private void f(boolean z3) {
        this.dY = z3;
    }

    private boolean f(long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return this.dg > 0 ? bg() + (this.dg * 1000) >= jCurrentTimeMillis : bg() + j2 >= jCurrentTimeMillis;
    }

    private void g(long j2) {
        this.da = j2;
    }

    private void g(boolean z3) {
        this.fy = z3;
    }

    private void h(boolean z3) {
        this.fz = z3;
    }

    private void r(int i2) {
        this.db = i2;
    }

    private void s(int i2) {
        this.dc = i2;
    }

    private void t(int i2) {
        this.dd = i2;
    }

    private void u(int i2) {
        this.de = i2;
    }

    private void v(int i2) {
        this.dq = t.a(i2);
    }

    private void w(int i2) {
        this.du = i2;
    }

    private void x(int i2) {
        this.dv = i2;
    }

    private void y(int i2) {
        this.dK = i2;
    }

    private void z(int i2) {
        this.dL = i2;
    }

    public final boolean A() {
        return this.eK;
    }

    public final String B() {
        return this.eL;
    }

    public final int C() {
        return this.eQ;
    }

    public final int D() {
        return this.dN;
    }

    public final int E() {
        return this.dO;
    }

    public final int F() {
        return this.eP;
    }

    public final String G() {
        return this.eM;
    }

    public final boolean H() {
        return this.eN;
    }

    public final String I() {
        if (TextUtils.isEmpty(this.fb)) {
            return this.fb;
        }
        return this.fb + "&n_logo=0";
    }

    public final int J() {
        return this.fc;
    }

    public final String K() {
        return this.ff;
    }

    public final n L() {
        return this.fd;
    }

    public final C0131c M() {
        return this.fo;
    }

    public final int N() {
        return this.fm;
    }

    public final int O() {
        return this.ex;
    }

    public final String P() {
        return this.ez;
    }

    public final int Q() {
        return this.eu;
    }

    public final Map<Integer, String> R() {
        return ae(this.es);
    }

    public final String S() {
        return this.en;
    }

    public final int T() {
        return this.eo;
    }

    public final String U() {
        return this.ep;
    }

    public final boolean V() {
        return this.ej;
    }

    public final boolean W() {
        return this.el;
    }

    public final void X() {
        this.el = true;
    }

    public final int Y() {
        return this.fa;
    }

    public final String Z() {
        try {
            if (!TextUtils.isEmpty(this.eg)) {
                return this.eg;
            }
            if (TextUtils.isEmpty(this.dZ)) {
                return null;
            }
            Uri uri = Uri.parse(this.dZ);
            if (uri != null) {
                String queryParameter = uri.getQueryParameter("k");
                this.eg = queryParameter;
                this.eg = queryParameter;
            }
            return this.eg;
        } catch (Exception unused) {
            return null;
        }
    }

    public final int a() {
        return this.db;
    }

    public final void a(int i2) {
        this.df = i2;
    }

    @Override // com.anythink.expressad.foundation.d.h
    public final void a(c.b bVar) {
        this.fp = bVar;
    }

    public final void a(String str) {
        this.cW = str;
        boolean zE = t.e(str);
        int iG = t.g(str);
        if (zE) {
            this.dp = true;
            v(iG);
        }
    }

    public final void a(List<String> list) {
        this.cZ = list;
    }

    public final void a(boolean z3) {
        this.dl = z3;
    }

    public final boolean a(long j2, long j3) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.dg <= 0 ? bg() + j2 >= jCurrentTimeMillis : bg() + (this.dg * 1000) >= jCurrentTimeMillis) {
            return false;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        return this.dh > 0 ? bg() + (this.dh * 1000) >= jCurrentTimeMillis2 : bg() + j3 >= jCurrentTimeMillis2;
    }

    public final boolean aA() {
        return super.b(this);
    }

    public final ArrayList<Integer> aB() {
        return this.fu;
    }

    public final int aC() {
        return this.fw;
    }

    public final boolean aD() {
        return this.fy;
    }

    public final String aE() {
        return this.fA;
    }

    public final int aF() {
        return this.fB;
    }

    public final String aa() {
        try {
            if (!TextUtils.isEmpty(this.eh)) {
                return this.eh;
            }
            if (TextUtils.isEmpty(this.dU)) {
                return "";
            }
            Uri uri = Uri.parse(this.dU);
            if (uri != null) {
                String queryParameter = uri.getQueryParameter("k");
                this.eh = queryParameter;
                this.eh = queryParameter;
            }
            return this.eh;
        } catch (Exception unused) {
            return "";
        }
    }

    public final String ab() {
        return this.ee;
    }

    public final String ac() {
        return this.ef;
    }

    public final String ad() {
        return this.dV;
    }

    public final int ae() {
        return this.dW;
    }

    public final String af() {
        return this.dX;
    }

    public final String ag() {
        return this.dT;
    }

    public final String ah() {
        return this.dU;
    }

    public final String ai() {
        return this.dZ;
    }

    @Override // com.anythink.expressad.foundation.d.h
    public final c.b aj() {
        return this.fp;
    }

    public final String ak() {
        if (!TextUtils.isEmpty(this.dU)) {
            try {
                URL url = new URL(this.dU);
                return url.getProtocol() + "://" + url.getHost();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return "";
    }

    public final List<String> al() {
        Exception e2;
        ArrayList arrayList;
        String str = this.eD;
        try {
        } catch (Exception e3) {
            e2 = e3;
            arrayList = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONArray jSONArray = new JSONArray(str);
        arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(jSONArray.optString(i2));
            } catch (Exception e4) {
                e2 = e4;
                e2.printStackTrace();
            }
        }
        return arrayList;
        e2.printStackTrace();
        return arrayList;
    }

    public final boolean am() {
        return this.eO;
    }

    public final void an() {
        this.eO = true;
    }

    public final int ao() {
        return this.eR;
    }

    public final int ap() {
        return this.eU;
    }

    public final String aq() {
        return this.eV;
    }

    public final String ar() {
        return this.eW;
    }

    public final int as() {
        return this.eX;
    }

    public final boolean at() {
        return this.cY;
    }

    public final void au() {
        this.cY = true;
    }

    public final int av() {
        return this.eZ;
    }

    public final boolean aw() {
        return this.fq;
    }

    public final void ax() {
        this.fq = true;
    }

    public final boolean ay() {
        return (TextUtils.isEmpty(this.fr) || TextUtils.isEmpty(com.anythink.expressad.a.w)) ? false : true;
    }

    public final int az() {
        return this.fs;
    }

    public final int b() {
        return this.dc;
    }

    public final void b(int i2) {
        this.ds = i2;
    }

    public final void b(String str) {
        this.cX = str;
    }

    public final void b(boolean z3) {
        this.eN = z3;
    }

    public final String c() {
        return this.cW;
    }

    public final void c(int i2) {
        this.dn = i2;
    }

    public final void c(String str) {
        this.f1do = str;
    }

    public final void c(boolean z3) {
        this.ej = z3;
    }

    public final String d() {
        return this.cX;
    }

    public final void d(int i2) {
        this.dm = i2;
    }

    public final void d(String str) {
        this.di = x.c(str);
    }

    public final List<String> e() {
        return this.cZ;
    }

    public final void e(int i2) {
        this.dt = i2;
    }

    public final void e(String str) {
        this.dj = str;
    }

    public final int f() {
        return this.dd;
    }

    public final void f(int i2) {
        this.dE = i2;
    }

    public final void f(String str) {
        this.dF = str;
    }

    public final int g() {
        return this.de;
    }

    public final void g(int i2) {
        this.dB = i2;
    }

    public final void g(String str) {
        this.dG = str;
    }

    public final int h() {
        return this.df;
    }

    public final void h(int i2) {
        this.dD = i2;
    }

    public final void h(String str) {
        this.dA = str;
    }

    public final int i() {
        return this.ds;
    }

    public final void i(int i2) {
        this.ev = i2;
    }

    public final void i(String str) {
        this.dC = str;
    }

    public final void j(int i2) {
        this.eU = i2;
    }

    public final void j(String str) {
        this.eM = str;
    }

    public final boolean j() {
        return this.dp;
    }

    public final int k() {
        return this.dq;
    }

    public final void k(int i2) {
        this.eX = i2;
    }

    public final void k(String str) {
        C0131c c0131c;
        this.fb = str;
        if (TextUtils.isEmpty(this.eV) && (((c0131c = this.fo) == null || TextUtils.isEmpty(c0131c.k)) && !TextUtils.isEmpty(str) && str.contains(d))) {
            this.eW = str;
        }
        this.fz = t.d(str);
    }

    public final void l(int i2) {
        this.eZ = i2;
    }

    public final void l(String str) {
        this.ff = str;
    }

    public final boolean l() {
        return this.dr;
    }

    public final void m() {
        this.dr = true;
    }

    public final void m(int i2) {
        this.fs = i2;
    }

    public final void m(String str) {
        this.ey = str;
    }

    public final int n() {
        return this.dt;
    }

    public final void n(int i2) {
        this.fB = i2;
    }

    public final void n(String str) {
        this.ez = x.c(str);
    }

    public final long o() {
        return this.dg;
    }

    @Override // com.anythink.expressad.out.j
    public final void o(String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.eu != 2 ? "Learn more" : "Install";
        }
        super.o(str);
    }

    public final String p() {
        return this.di;
    }

    public final void p(String str) {
        this.dV = str;
    }

    public final String q() {
        return this.dj;
    }

    public final void q(String str) {
        this.dU = str;
    }

    public final long r() {
        return this.dk;
    }

    public final void r(String str) {
        this.eV = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.eW = str;
        boolean zE = t.e(str);
        int iG = t.g(str);
        if (zE) {
            this.dp = true;
            v(iG);
        }
        this.fy = t.d(str);
    }

    public final void s(String str) {
        this.eY = str;
    }

    public final boolean s() {
        return this.dl;
    }

    public final int t() {
        return this.du;
    }

    public final void t(String str) {
        this.fA = str;
    }

    public final int u() {
        return this.dv;
    }

    public final a v() {
        return this.dJ;
    }

    public final int w() {
        return this.dE;
    }

    public final int x() {
        return this.dQ;
    }

    public final String y() {
        return this.dR;
    }

    public final HashMap<String, String> z() {
        return this.eE;
    }
}
