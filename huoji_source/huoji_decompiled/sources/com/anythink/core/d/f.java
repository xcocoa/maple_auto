package com.anythink.core.d;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATRewardInfo;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ab;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.at;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.n;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.z;
import com.anythink.core.common.u;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import z2.kx;

/* JADX INFO: loaded from: classes.dex */
public class f extends c {
    public static final String a = "Placement";
    public static final int b = 0;
    public static final int c = 1;
    public static final int e = 2;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    private List<av> A;
    private Map<String, av> B;
    private int C;
    private int D;
    private long E;
    private long F;
    private long G;
    private int H;
    private String I;
    private at J;
    private int K;
    private String L;
    private int M;
    private int N;
    private String O;
    private Map<String, Object> P;
    private Map<String, ATRewardInfo> Q;
    private ATRewardInfo R;
    private String S;
    private String T;
    private long U;
    private String V;
    private long W;
    private int X;
    private long Y;
    private int Z;
    private JSONObject aA;
    private String aB;
    private String aC;
    private int aD;
    private int aE;
    private List<Integer> aF;
    private int aG;
    private int aH;
    private int aI;
    private int aK;
    private double[][] aO;
    private int aQ;
    private d aR;
    private long aS;
    private int aT;
    private int aU;
    private int aV;
    private List<Integer> aW;
    private int aX;
    private String aY;
    private int aZ;
    private List<z> aa;
    private ab ab;
    private long ac;
    private double ad;
    private String ae;
    private List<String> af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private long ak;
    private String al;
    private String am;
    private String an;
    private double ao;
    private String ap;
    private long aq;
    private long ar;
    private long as;
    private long at;
    private int au;
    private int av;
    private int aw;
    private long ax;
    private JSONObject ay;
    private String az;
    private int ba;
    private int[] bb;
    private int bd;
    private String be;
    private String bf;
    private String bg;
    private long bh;
    private String bi;
    private String bj;
    private double bk;
    private int bl;
    private int bm;
    private int bn;
    private int bo;
    private JSONObject bp;
    private String i;
    private long j;
    private long k;
    private int l;
    private int m;
    private int n;
    private long o;
    private long p;
    private long q;
    private int r;
    private int s;
    private int t;
    private int u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;
    private int aJ = 0;
    private int aL = 10;
    private int aM = 10;
    private int aN = 2;
    private int aP = 1;
    private int bc = 2;

    public static class a {
        public static final String A = "req_w_time";
        public static final String B = "wf_loadts";
        public static final String C = "req_ug_type";
        public static final String D = "req_ug_numsp";
        public static final String E = "bf_ldf_rf_sw";
        public static final String F = "hb_start_time";
        public static final String G = "dsp_list";
        public static final String H = "bid_floor";
        public static final String I = "max_unit_ids";
        public static final String J = "xdb_list";
        public static final String K = "s2s_bd_max";
        public static final String L = "req_merge";
        public static final String M = "exclude_id_max";
        public static final String N = "install_id_max";
        public static final String O = "install_ids";
        public static final String P = "exclude_ids";
        public static final String Q = "is_test";
        public static final String R = "gsp_rates";
        public static final String S = "adx_ext";
        public static final String T = "wf_id";
        public static final String U = "sysh_mtg_sw";
        public static final String V = "mid_gdt_sw";
        public static final String W = "lm_lrqf_interval_sws";
        public static final String X = "wf_lscb_type";
        public static final String Y = "reqid_pg_sw";
        public static final String Z = "sr_sw";
        public static final String a = "hb_bid_timeout";
        private static final String aA = "pucs";
        private static final String aB = "ad_delivery_sw";
        private static final String aC = "req_ug_num";
        private static final String aD = "unit_caps_d";
        private static final String aE = "unit_caps_h";
        private static final String aF = "unit_pacing";
        private static final String aG = "wifi_auto_sw";
        private static final String aH = "show_type";
        private static final String aI = "refresh";
        private static final String aJ = "ug_list";
        private static final String aK = "ol_list";
        private static final String aL = "gro_id";
        private static final String aM = "hb_list";
        private static final String aN = "s2shb_list";
        private static final String aO = "format";
        private static final String aP = "auto_refresh";
        private static final String aQ = "auto_refresh_time";
        private static final String aR = "s_t";
        private static final String aS = "l_s_t";
        private static final String aT = "ra";
        private static final String aU = "asid";
        private static final String aV = "tp_ps";
        private static final String aW = "t_g_id";
        private static final String aX = "s_id";
        private static final String aY = "u_n_f_sw";
        private static final String aZ = "m_o";
        public static final String aa = "p_c";
        public static final String ab = "has_1st_rl";
        public static final String ac = "updateTime";
        public static final String ad = "upd_type";
        public static final String ae = "upd_th";
        public static final String af = "value_n";
        public static final String ag = "bid_value_n";
        public static final String ah = "sto_stg";
        public static final String ai = "lf_rt_itr";
        public static final String aj = "wf2_mode_sw";
        public static final String ak = "wf2_req_ug_type";
        public static final String al = "wf2_mode_req_num";
        public static final String am = "am_est_num";
        public static final String an = "share_pl_id";
        public static final String ao = "s2s_sw";
        public static final String ap = "bd_req_bid_sw";
        public static final String aq = "bn_template_id";
        public static final String ar = "mix_click_type";
        public static final String as = "auto_refresh_type";
        public static final String at = "wf_sw";
        public static final String au = "wf_obj";
        public static final String av = "pl_wf_st_type";
        public static final String aw = "presetwf_reload_sw";
        private static final String ax = "ps_id_timeout";
        private static final String ay = "ps_ct";
        private static final String az = "ps_ct_out";
        public static final String b = "addr_bid";
        private static final String ba = "m_o_s";
        private static final String bb = "m_o_ks";
        private static final String bc = "p_m_o";
        private static final String bd = "callback";
        private static final String be = "sc_list";
        private static final String bf = "rw_n";
        private static final String bg = "rw_num";
        private static final String bh = "reward";
        private static final String bi = "currency";
        private static final String bj = "cc";
        private static final String bk = "exch_r";
        private static final String bl = "acct_cy";
        public static final String c = "load_fail_wtime";
        public static final String d = "load_cap";
        public static final String e = "load_cap_time";
        public static final String f = "cached_offers_num";
        public static final String g = "adx_list";
        public static final String h = "adx_st";
        public static final String i = "ilrd";
        public static final String j = "hb_list";
        public static final String k = "inh_list";
        public static final String l = "fbhb_bid_wtime";
        public static final String m = "burl_nt_firm";
        public static final String n = "wf_bid_addr";
        public static final String o = "ss_data";
        public static final String p = "cn_addr_bid";
        public static final String q = "cn_wf_bid_addr";
        public static final String r = "byuid_wt";
        public static final String s = "addr_bks";
        public static final String t = "addr_subbks";
        public static final String u = "s2sbks_list";
        public static final String v = "exch_rate_c2u";
        public static final String w = "doffer_list";
        public static final String x = "bottom_list";
        public static final String y = "bottom_reqts";
        public static final String z = "cb_w_time";
    }

    private f(String str) {
        this.i = str;
    }

    private void A(int i) {
        this.X = i;
    }

    private void A(String str) {
        this.ai = str;
    }

    private void B(int i) {
        this.Z = i;
    }

    private void B(String str) {
        this.aj = str;
    }

    private void C(int i) {
        this.bm = i;
    }

    private void C(String str) {
        this.bi = str;
    }

    private void D(int i) {
        this.bl = i;
    }

    private void D(String str) {
        this.bj = str;
    }

    private void E(int i) {
        this.bn = i;
    }

    private void F(int i) {
        this.bo = i;
    }

    private void G(int i) {
        this.aD = i;
    }

    private void H(int i) {
        this.aE = i;
    }

    private void I(int i) {
        this.aH = i;
    }

    private void J(int i) {
        this.aK = i;
    }

    private void K(int i) {
        this.aL = i;
    }

    private void L(int i) {
        this.aM = i;
    }

    private void M(int i) {
        this.aN = i;
    }

    private void N(int i) {
        this.aP = i;
    }

    private void O(int i) {
        this.ba = i;
    }

    private void P(int i) {
        this.bc = i;
    }

    public static f a(String str, JSONObject jSONObject) {
        f fVarB = b(str, jSONObject);
        if (fVarB != null) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            ArrayList arrayList = new ArrayList();
            m.a(fVarB, concurrentHashMap, arrayList);
            fVarB.A = arrayList;
            fVarB.B = concurrentHashMap;
        }
        return fVarB;
    }

    private static List<z> a(String str, String str2, long j, ab abVar) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                z zVar = new z();
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                zVar.k(jSONObjectOptJSONObject.optString("o_id"));
                zVar.l(jSONObjectOptJSONObject.optString("c_id"));
                zVar.m(jSONObjectOptJSONObject.optString("t"));
                zVar.x(jSONObjectOptJSONObject.optString("p_g"));
                zVar.n(jSONObjectOptJSONObject.optString("d"));
                zVar.o(jSONObjectOptJSONObject.optString("ic_u"));
                zVar.p(jSONObjectOptJSONObject.optString("im_u"));
                zVar.q(jSONObjectOptJSONObject.optString("f_i_u"));
                zVar.r(jSONObjectOptJSONObject.optString("a_c_u"));
                zVar.s(jSONObjectOptJSONObject.optString("c_t"));
                zVar.t(jSONObjectOptJSONObject.optString("v_u"));
                zVar.h(jSONObjectOptJSONObject.optInt("l_t"));
                zVar.u(jSONObjectOptJSONObject.optString("p_u"));
                zVar.v(jSONObjectOptJSONObject.optString("dl"));
                zVar.w(jSONObjectOptJSONObject.optString("c_u"));
                zVar.I(jSONObjectOptJSONObject.optString("ip_u"));
                zVar.J(jSONObjectOptJSONObject.optString("t_u"));
                zVar.K(jSONObjectOptJSONObject.optString("t_u_25"));
                zVar.L(jSONObjectOptJSONObject.optString("t_u_50"));
                zVar.M(jSONObjectOptJSONObject.optString("t_u_75"));
                zVar.N(jSONObjectOptJSONObject.optString("t_u_100"));
                zVar.O(jSONObjectOptJSONObject.optString("s_e_c_t_u"));
                zVar.P(jSONObjectOptJSONObject.optString("c_t_u"));
                zVar.Q(jSONObjectOptJSONObject.optString("ip_n_u"));
                zVar.R(jSONObjectOptJSONObject.optString("c_n_u"));
                zVar.c = jSONObjectOptJSONObject.optInt("o_a_d_c");
                zVar.d = jSONObjectOptJSONObject.optLong("o_a_p");
                zVar.a(j);
                zVar.g(jSONObjectOptJSONObject.optInt("unit_type"));
                zVar.a(jSONObjectOptJSONObject.optInt("c_m"));
                zVar.b(jSONObjectOptJSONObject.optString("ext_h_pic"));
                zVar.F(jSONObjectOptJSONObject.optString("ext_big_h_pic"));
                zVar.G(jSONObjectOptJSONObject.optString("ext_rect_h_pic"));
                zVar.H(jSONObjectOptJSONObject.optString("ext_home_h_pic"));
                zVar.a(str2);
                zVar.z(jSONObjectOptJSONObject.optString("pub"));
                zVar.A(jSONObjectOptJSONObject.optString("app_vc"));
                zVar.B(jSONObjectOptJSONObject.optString("pvc"));
                zVar.C(jSONObjectOptJSONObject.optString("pms"));
                zVar.a((n) abVar);
                arrayList.add(zVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return arrayList;
    }

    private void a(double d) {
        this.ao = d;
    }

    private void a(long j) {
        this.aS = j;
    }

    private void a(ATRewardInfo aTRewardInfo) {
        this.R = aTRewardInfo;
    }

    private void a(ab abVar) {
        this.ab = abVar;
    }

    private void a(at atVar) {
        this.J = atVar;
    }

    private void a(d dVar) {
        this.aR = dVar;
    }

    private void a(List<Integer> list) {
        this.aW = list;
    }

    private void a(Map<String, av> map) {
        this.B = map;
    }

    private void a(JSONObject jSONObject) {
        this.aA = jSONObject;
    }

    private void a(int[] iArr) {
        this.bb = iArr;
    }

    private void a(double[][] dArr) {
        this.aO = dArr;
    }

    private boolean a(f fVar) {
        if (fVar == null) {
            return true;
        }
        return (TextUtils.equals(this.I, fVar.I) || au()) ? false : true;
    }

    private JSONObject aY() {
        return this.ay;
    }

    private String aZ() {
        return this.bg;
    }

    private static f b(String str, JSONObject jSONObject) {
        long jOptLong;
        int i;
        JSONArray jSONArrayOptJSONArray;
        int length;
        if (jSONObject == null) {
            return null;
        }
        try {
            f fVar = new f(str);
            fVar.b(jSONObject);
            fVar.c(jSONObject);
            fVar.d(jSONObject);
            if (jSONObject.isNull("ps_ct")) {
                fVar.j = 0L;
            } else {
                fVar.j = jSONObject.optLong("ps_ct");
            }
            if (jSONObject.isNull("ps_ct_out")) {
                fVar.k = 0L;
            } else {
                fVar.k = jSONObject.optLong("ps_ct_out");
            }
            if (jSONObject.isNull("pucs")) {
                fVar.l = 1;
            } else {
                fVar.l = jSONObject.optInt("pucs");
            }
            if (jSONObject.isNull("ad_delivery_sw")) {
                fVar.m = 1;
            } else {
                fVar.m = jSONObject.optInt("ad_delivery_sw");
            }
            if (jSONObject.isNull("req_ug_num")) {
                fVar.n = -1;
            } else {
                fVar.n = jSONObject.optInt("req_ug_num");
            }
            if (jSONObject.isNull("unit_caps_d")) {
                fVar.o = -1L;
            } else {
                fVar.o = jSONObject.optLong("unit_caps_d");
            }
            if (jSONObject.isNull("unit_caps_h")) {
                fVar.p = -1L;
            } else {
                fVar.p = jSONObject.optLong("unit_caps_h");
            }
            if (jSONObject.isNull("unit_pacing")) {
                fVar.q = -1L;
            } else {
                fVar.q = jSONObject.optLong("unit_pacing");
            }
            if (jSONObject.isNull("wifi_auto_sw")) {
                fVar.r = 0;
            } else {
                fVar.r = jSONObject.optInt("wifi_auto_sw");
            }
            if (jSONObject.isNull("show_type")) {
                fVar.s = 0;
            } else {
                fVar.s = jSONObject.optInt("show_type");
            }
            if (jSONObject.isNull("refresh")) {
                fVar.t = 0;
            } else {
                fVar.t = jSONObject.optInt("refresh");
            }
            if (jSONObject.isNull("gro_id")) {
                fVar.u = 0;
            } else {
                fVar.u = jSONObject.optInt("gro_id");
            }
            if (jSONObject.isNull("format")) {
                fVar.C = 0;
            } else {
                fVar.C = jSONObject.optInt("format");
            }
            if (jSONObject.isNull("auto_refresh")) {
                fVar.D = 0;
            } else {
                fVar.D = jSONObject.optInt("auto_refresh");
            }
            if (jSONObject.isNull("auto_refresh_time")) {
                fVar.E = 0L;
            } else {
                fVar.E = jSONObject.optLong("auto_refresh_time");
            }
            if (jSONObject.isNull("s_t")) {
                fVar.F = 900000L;
            } else {
                fVar.F = jSONObject.optLong("s_t");
            }
            if (jSONObject.isNull(com.anythink.core.common.j.L)) {
                fVar.G = 1800000L;
            } else {
                fVar.G = jSONObject.optLong(com.anythink.core.common.j.L);
            }
            if (jSONObject.isNull("ra")) {
                fVar.H = -1;
            } else {
                fVar.H = jSONObject.optInt("ra");
            }
            if (jSONObject.isNull("asid")) {
                fVar.I = "";
            } else {
                fVar.I = jSONObject.optString("asid");
            }
            if (jSONObject.isNull("tp_ps")) {
                fVar.J = null;
            } else {
                try {
                    at atVar = new at();
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("tp_ps");
                    atVar.a = jSONObjectOptJSONObject.optInt("pucs") == 1;
                    atVar.b = jSONObjectOptJSONObject.optLong("apdt");
                    atVar.c = jSONObjectOptJSONObject.optInt("aprn");
                    atVar.d = jSONObjectOptJSONObject.optInt("puas") == 1;
                    atVar.e = jSONObjectOptJSONObject.optLong("cdt");
                    atVar.f = jSONObjectOptJSONObject.optInt("ski_swt") == 1;
                    atVar.g = jSONObjectOptJSONObject.optInt("aut_swt") == 1;
                    fVar.J = atVar;
                } catch (Exception unused) {
                }
            }
            if (jSONObject.isNull("ug_list")) {
                fVar.v = kx.OooOOO;
            } else {
                fVar.v = jSONObject.optString("ug_list");
            }
            if (jSONObject.isNull("ol_list")) {
                fVar.w = kx.OooOOO;
            } else {
                fVar.w = jSONObject.optString("ol_list");
            }
            if (jSONObject.isNull("s2shb_list")) {
                fVar.x = kx.OooOOO;
            } else {
                fVar.x = jSONObject.optString("s2shb_list");
            }
            if (jSONObject.isNull(a.g)) {
                fVar.bf = kx.OooOOO;
            } else {
                fVar.bf = jSONObject.optString(a.g);
            }
            if (jSONObject.isNull(a.j)) {
                fVar.y = kx.OooOOO;
            } else {
                fVar.y = jSONObject.optString(a.j);
            }
            if (jSONObject.isNull(a.k)) {
                fVar.z = kx.OooOOO;
            } else {
                fVar.z = jSONObject.optString(a.k);
            }
            if (jSONObject.isNull(a.u)) {
                fVar.an = "";
            } else {
                fVar.an = jSONObject.optString(a.u);
            }
            if (jSONObject.isNull(a.w)) {
                fVar.bi = kx.OooOOO;
            } else {
                fVar.bi = jSONObject.optString(a.w);
            }
            if (jSONObject.isNull(a.ac)) {
                fVar.bh = 0L;
                jOptLong = 0;
            } else {
                jOptLong = jSONObject.optLong(a.ac);
                fVar.bh = jOptLong;
            }
            if (jSONObject.isNull("t_g_id")) {
                fVar.K = -1;
            } else {
                fVar.K = jSONObject.optInt("t_g_id");
            }
            if (jSONObject.isNull("s_id")) {
                fVar.L = "";
            } else {
                fVar.L = jSONObject.optString("s_id");
            }
            if (jSONObject.isNull("u_n_f_sw")) {
                fVar.M = 0;
            } else {
                fVar.M = jSONObject.optInt("u_n_f_sw");
            }
            if (!jSONObject.isNull("m_o_s")) {
                fVar.ab = ab.i(jSONObject.optString("m_o_s"));
            }
            if (jSONObject.isNull("m_o")) {
                fVar.aa = null;
            } else {
                fVar.aa = a(jSONObject.optString("m_o"), jSONObject.optString("m_o_ks"), jOptLong, fVar.ab);
            }
            if (jSONObject.isNull("p_m_o")) {
                fVar.N = 0;
            } else {
                fVar.N = jSONObject.optInt("p_m_o");
            }
            if (jSONObject.isNull(com.anythink.core.common.h.l.a)) {
                fVar.P = null;
            } else {
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString(com.anythink.core.common.h.l.a));
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.opt(next));
                }
                fVar.P = map;
            }
            if (!jSONObject.isNull("callback")) {
                JSONObject jSONObject3 = new JSONObject(jSONObject.optString("callback"));
                if (!jSONObject3.isNull("sc_list")) {
                    JSONObject jSONObject4 = new JSONObject(jSONObject3.optString("sc_list"));
                    HashMap map2 = new HashMap();
                    Iterator<String> itKeys2 = jSONObject4.keys();
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        JSONObject jSONObject5 = new JSONObject(jSONObject4.optString(next2));
                        ATRewardInfo aTRewardInfo = new ATRewardInfo();
                        aTRewardInfo.rewardName = jSONObject5.optString("rw_n");
                        aTRewardInfo.rewardNumber = jSONObject5.optInt("rw_num");
                        map2.put(next2, aTRewardInfo);
                    }
                    fVar.Q = map2;
                }
                if (!jSONObject3.isNull("reward")) {
                    JSONObject jSONObject6 = new JSONObject(jSONObject3.optString("reward"));
                    ATRewardInfo aTRewardInfo2 = new ATRewardInfo();
                    if (!jSONObject6.isNull("rw_n")) {
                        aTRewardInfo2.rewardName = jSONObject6.optString("rw_n");
                    }
                    if (!jSONObject6.isNull("rw_num")) {
                        aTRewardInfo2.rewardNumber = jSONObject6.optInt("rw_num");
                    }
                    fVar.R = aTRewardInfo2;
                }
                if (!jSONObject3.isNull("currency")) {
                    fVar.S = jSONObject3.optString("currency");
                }
                if (!jSONObject3.isNull(com.anythink.expressad.d.a.b.h)) {
                    fVar.T = jSONObject3.optString(com.anythink.expressad.d.a.b.h);
                }
                if (!jSONObject3.isNull("exch_r")) {
                    fVar.ad = jSONObject3.optDouble("exch_r", 0.0d);
                }
                if (!jSONObject3.isNull("acct_cy")) {
                    fVar.ae = jSONObject3.optString("acct_cy");
                }
            }
            if (jSONObject.isNull(a.a)) {
                fVar.U = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
            } else {
                fVar.U = jSONObject.optLong(a.a);
            }
            if (jSONObject.isNull(a.b)) {
                fVar.V = "";
            } else {
                fVar.V = jSONObject.optString(a.b);
            }
            if (jSONObject.isNull(a.c)) {
                fVar.W = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
            } else {
                fVar.W = jSONObject.optLong(a.c);
            }
            if (jSONObject.isNull(a.d)) {
                fVar.X = -1;
            } else {
                fVar.X = jSONObject.optInt(a.d);
            }
            if (jSONObject.isNull(a.e)) {
                fVar.Y = 900000L;
            } else {
                fVar.Y = jSONObject.optLong(a.e);
            }
            if (jSONObject.isNull(a.f)) {
                fVar.Z = 2;
            } else {
                fVar.Z = jSONObject.optInt(a.f);
            }
            if (jSONObject.isNull(a.i)) {
                fVar.be = null;
            } else {
                fVar.be = jSONObject.optString(a.i);
            }
            if (jSONObject.isNull(a.h)) {
                fVar.bg = "";
            } else {
                fVar.bg = jSONObject.optString(a.h);
            }
            if (jSONObject.isNull(a.l)) {
                fVar.ac = 4000L;
            } else {
                fVar.ac = jSONObject.optLong(a.l);
            }
            if (jSONObject.isNull(a.m)) {
                fVar.af = null;
            } else {
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(a.m);
                ArrayList arrayList = new ArrayList(3);
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    arrayList.add(jSONArrayOptJSONArray2.optString(i2));
                }
                fVar.af = arrayList;
            }
            if (jSONObject.isNull(a.n)) {
                fVar.ag = "";
            } else {
                fVar.ag = jSONObject.optString(a.n);
            }
            if (jSONObject.isNull(a.o)) {
                fVar.ah = "";
            } else {
                fVar.ah = jSONObject.optString(a.o);
            }
            if (jSONObject.isNull(a.p)) {
                fVar.ai = "";
            } else {
                fVar.ai = jSONObject.optString(a.p);
            }
            if (jSONObject.isNull(a.q)) {
                fVar.aj = "";
            } else {
                fVar.aj = jSONObject.optString(a.q);
            }
            if (jSONObject.isNull(a.r)) {
                fVar.ak = 500L;
            } else {
                fVar.ak = jSONObject.optLong(a.r);
            }
            if (jSONObject.isNull(a.s)) {
                fVar.al = "";
            } else {
                fVar.al = jSONObject.optString(a.s);
            }
            if (jSONObject.isNull(a.t)) {
                fVar.am = "";
            } else {
                fVar.am = jSONObject.optString(a.t);
            }
            if (jSONObject.isNull(a.v)) {
                fVar.ao = 0.1614d;
            } else {
                fVar.ao = jSONObject.optDouble(a.v);
            }
            if (jSONObject.isNull(a.x)) {
                fVar.ap = kx.OooOOO;
            } else {
                fVar.ap = jSONObject.optString(a.x);
            }
            if (jSONObject.isNull(a.y)) {
                fVar.aq = 1000L;
            } else {
                fVar.aq = jSONObject.optLong(a.y);
            }
            if (jSONObject.isNull(a.z)) {
                fVar.ar = 0L;
            } else {
                fVar.ar = jSONObject.optLong(a.z);
            }
            if (jSONObject.isNull(a.A)) {
                fVar.as = com.anythink.expressad.exoplayer.i.a.f;
            } else {
                fVar.as = jSONObject.optLong(a.A);
            }
            if (jSONObject.isNull(a.B)) {
                fVar.at = -1L;
            } else {
                fVar.at = jSONObject.optLong(a.B);
            }
            if (jSONObject.isNull(a.C)) {
                fVar.au = 1;
            } else {
                int iOptInt = jSONObject.optInt(a.C);
                if (iOptInt != 1 && iOptInt != 2) {
                    StringBuilder sb = new StringBuilder("requestUnitGroupType error: ");
                    sb.append(iOptInt);
                    sb.append(", fix requestType to 1");
                    iOptInt = 1;
                }
                fVar.au = iOptInt;
            }
            if (jSONObject.isNull(a.D)) {
                fVar.av = 1;
            } else {
                fVar.av = jSONObject.optInt(a.D);
            }
            if (jSONObject.isNull(a.E)) {
                fVar.aw = 2;
            } else {
                fVar.aw = jSONObject.optInt(a.E);
            }
            if (jSONObject.isNull(a.F)) {
                fVar.ax = com.anythink.expressad.exoplayer.i.a.f;
            } else {
                fVar.ax = jSONObject.optLong(a.F);
            }
            if (jSONObject.isNull(a.G)) {
                fVar.bj = kx.OooOOO;
            } else {
                fVar.bj = jSONObject.optString(a.G);
            }
            if (jSONObject.isNull("bid_floor")) {
                fVar.bk = 0.0d;
            } else {
                fVar.bk = jSONObject.optDouble("bid_floor");
            }
            if (jSONObject.isNull(a.I)) {
                fVar.ay = null;
            } else {
                fVar.ay = jSONObject.optJSONObject(a.I);
            }
            if (jSONObject.isNull(a.J)) {
                fVar.az = "";
            } else {
                fVar.az = jSONObject.optString(a.J);
            }
            if (jSONObject.isNull(a.K)) {
                fVar.bl = 0;
            } else {
                fVar.bl = jSONObject.optInt(a.K);
            }
            if (jSONObject.isNull(a.L)) {
                fVar.bm = 2;
            } else {
                fVar.bm = jSONObject.optInt(a.L);
            }
            if (jSONObject.isNull(a.M)) {
                fVar.bo = 0;
            } else {
                fVar.bo = jSONObject.optInt(a.M);
            }
            if (jSONObject.isNull(a.N)) {
                fVar.bn = 0;
            } else {
                fVar.bn = jSONObject.optInt(a.N);
            }
            if (jSONObject.isNull("is_test")) {
                fVar.bd = 2;
            } else {
                fVar.bd = jSONObject.optInt("is_test");
            }
            fVar.aA = jSONObject.optJSONObject(a.R);
            if (jSONObject.isNull(a.S)) {
                fVar.aB = "";
            } else {
                fVar.aB = jSONObject.optString(a.S);
            }
            if (jSONObject.isNull(a.T)) {
                fVar.aC = "";
            } else {
                fVar.aC = jSONObject.optString(a.T);
            }
            if (jSONObject.isNull(a.U)) {
                fVar.aD = 2;
            } else {
                fVar.aD = jSONObject.optInt(a.U);
            }
            if (jSONObject.isNull(a.V)) {
                i = 1;
                fVar.aE = 1;
            } else {
                fVar.aE = jSONObject.optInt(a.V);
                i = 1;
            }
            if (jSONObject.isNull(a.W)) {
                fVar.aF = new ArrayList(i);
            } else {
                ArrayList arrayList2 = new ArrayList(3);
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(a.W);
                if (jSONArrayOptJSONArray3 != null) {
                    int length2 = jSONArrayOptJSONArray3.length();
                    for (int i3 = 0; i3 < length2; i3++) {
                        arrayList2.add(Integer.valueOf(jSONArrayOptJSONArray3.optInt(i3)));
                    }
                }
                fVar.aF = arrayList2;
            }
            if (jSONObject.isNull(a.X)) {
                fVar.aG = 2;
            } else {
                fVar.aG = jSONObject.optInt(a.X);
            }
            if (jSONObject.isNull(a.Y)) {
                fVar.aH = 1;
            } else {
                fVar.aH = jSONObject.optInt(a.Y);
            }
            if (jSONObject.isNull(a.Z)) {
                fVar.aI = 2;
            } else {
                fVar.aI = jSONObject.optInt(a.Z);
            }
            if (!jSONObject.isNull(a.aa)) {
                fVar.bp = jSONObject.optJSONObject(a.aa);
            }
            if (!jSONObject.isNull(a.ab)) {
                fVar.aK = jSONObject.optInt(a.ab);
            }
            if (!jSONObject.isNull(a.af)) {
                fVar.aL = jSONObject.optInt(a.af);
            }
            if (!jSONObject.isNull(a.ag)) {
                fVar.aM = jSONObject.optInt(a.ag);
            }
            if (!jSONObject.isNull(a.ad)) {
                fVar.aN = jSONObject.optInt(a.ad);
            }
            if (!jSONObject.isNull(a.ae)) {
                try {
                    JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(a.ae);
                    if (jSONArrayOptJSONArray4 != null) {
                        double[][] dArr = new double[jSONArrayOptJSONArray4.length()][];
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                            Object obj = jSONArrayOptJSONArray4.get(i4);
                            if (obj instanceof JSONArray) {
                                JSONArray jSONArray = (JSONArray) obj;
                                dArr[i4] = new double[]{Double.parseDouble(String.valueOf(jSONArray.get(0))), Double.parseDouble(String.valueOf(jSONArray.get(1)))};
                            }
                        }
                        fVar.aO = dArr;
                    }
                } catch (Exception unused2) {
                }
            }
            if (!jSONObject.isNull(a.ah)) {
                fVar.aP = jSONObject.optInt(a.ah);
            }
            fVar.aS = jSONObject.optLong(a.ai, com.anythink.expressad.exoplayer.i.a.f);
            fVar.aT = jSONObject.optInt(a.aj, 2);
            int iOptInt2 = jSONObject.optInt(a.ak, 1);
            if (iOptInt2 != 1 && iOptInt2 != 2) {
                StringBuilder sb2 = new StringBuilder("filledLoadRequestType error: ");
                sb2.append(iOptInt2);
                sb2.append(", fix requestType to 1");
                iOptInt2 = 1;
            }
            fVar.aU = iOptInt2;
            fVar.aV = jSONObject.optInt(a.al, 1);
            fVar.aX = jSONObject.optInt(a.am, 0);
            fVar.aY = jSONObject.optString(a.an, "");
            fVar.aZ = jSONObject.optInt("s2s_sw", 2);
            JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray(a.ap);
            if (jSONArrayOptJSONArray5 != null && (length = jSONArrayOptJSONArray5.length()) > 0) {
                ArrayList arrayList3 = new ArrayList();
                for (int i5 = 0; i5 < length; i5++) {
                    Object obj2 = jSONArrayOptJSONArray5.get(i5);
                    if (obj2 instanceof Integer) {
                        arrayList3.add((Integer) obj2);
                    }
                }
                fVar.aW = arrayList3;
            }
            fVar.ba = jSONObject.optInt(a.aq, 1);
            int[] iArr = {1, 2, 3, 4, 5};
            if (!jSONObject.isNull(a.ar) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(a.ar)) != null && jSONArrayOptJSONArray.length() > 0) {
                try {
                    iArr = new int[jSONArrayOptJSONArray.length()];
                    for (int i6 = 0; i6 < jSONArrayOptJSONArray.length(); i6++) {
                        iArr[i6] = jSONArrayOptJSONArray.getInt(i6);
                    }
                } catch (Exception unused3) {
                    iArr = new int[]{1, 2, 3, 4, 5};
                }
            }
            fVar.bb = iArr;
            fVar.aQ = jSONObject.optInt(a.as, 1);
            if (jSONObject.optInt(a.at, 2) == 1) {
                fVar.aR = d.a(jSONObject.optString(a.au));
            } else {
                fVar.aR = null;
            }
            fVar.aJ = jSONObject.optInt(a.av, 0);
            fVar.bc = jSONObject.optInt(a.aw, 2);
            return fVar;
        } catch (Exception unused4) {
            return null;
        }
    }

    private void b(double d) {
        this.ad = d;
    }

    private void b(int i) {
        this.aQ = i;
    }

    private void b(long j) {
        this.ax = j;
    }

    private void b(List<av> list) {
        this.A = list;
    }

    private void b(Map<String, ATRewardInfo> map) {
        this.Q = map;
    }

    private String ba() {
        return this.V;
    }

    private int bb() {
        return this.H;
    }

    private int bc() {
        return this.m;
    }

    private int bd() {
        return this.r;
    }

    private int be() {
        return this.s;
    }

    private int bf() {
        return this.t;
    }

    private at bg() {
        return this.J;
    }

    private long bh() {
        return this.bh;
    }

    private String bi() {
        return this.ai;
    }

    private long bj() {
        return this.ar;
    }

    private long bk() {
        return this.as;
    }

    private int bl() {
        return this.aE;
    }

    private int bm() {
        return this.aH;
    }

    private int[] bn() {
        return this.bb;
    }

    private av bo() {
        List<av> listA = m.a(this, this.bf);
        if (listA.size() > 0) {
            return listA.get(0);
        }
        return null;
    }

    private void c(double d) {
        this.bk = d;
    }

    private void c(int i) {
        this.aI = i;
    }

    private void c(long j) {
        this.at = j;
    }

    private void c(String str) {
        this.aY = str;
    }

    private void c(List<Integer> list) {
        this.aF = list;
    }

    private void c(Map<String, Object> map) {
        this.P = map;
    }

    private void d(int i) {
        this.aU = i;
    }

    private void d(long j) {
        this.aq = j;
    }

    private void d(String str) {
        this.aC = str;
    }

    private void d(List<String> list) {
        this.af = list;
    }

    private void e(int i) {
        this.aV = i;
    }

    private void e(long j) {
        this.ak = j;
    }

    private void e(String str) {
        this.aB = str;
    }

    private void e(List<z> list) {
        this.aa = list;
    }

    private void e(JSONObject jSONObject) {
        this.ay = jSONObject;
    }

    private void f(int i) {
        this.aT = i;
    }

    private void f(long j) {
        this.ac = j;
    }

    private void f(String str) {
        this.az = str;
    }

    private void f(JSONObject jSONObject) {
        this.bp = jSONObject;
    }

    private void g(int i) {
        this.aX = i;
    }

    private void g(long j) {
        this.U = j;
    }

    private void g(String str) {
        this.ap = str;
    }

    private void h(int i) {
        this.aZ = i;
    }

    private void h(long j) {
        this.F = j;
    }

    private void h(String str) {
        this.al = str;
    }

    private void i(int i) {
        this.aG = i;
    }

    private void i(long j) {
        this.G = j;
    }

    private void i(String str) {
        this.am = str;
    }

    private void j(int i) {
        this.bd = i;
    }

    private void j(long j) {
        this.E = j;
    }

    private void j(String str) {
        this.an = str;
    }

    private void k(int i) {
        this.aw = i;
    }

    private void k(long j) {
        this.j = j;
    }

    private void k(String str) {
        this.ah = str;
    }

    private void l(int i) {
        this.au = i;
    }

    private void l(long j) {
        this.k = j;
    }

    private void l(String str) {
        this.ag = str;
    }

    private void m(int i) {
        this.av = i;
    }

    private void m(long j) {
        this.o = j;
    }

    private void m(String str) {
        this.ae = str;
    }

    private void n(int i) {
        this.N = i;
    }

    private void n(long j) {
        this.p = j;
    }

    private void n(String str) {
        this.z = str;
    }

    private void o(int i) {
        this.K = i;
    }

    private void o(long j) {
        this.q = j;
    }

    private void o(String str) {
        this.be = str;
    }

    private void p(int i) {
        this.M = i;
    }

    private void p(long j) {
        this.bh = j;
    }

    private void p(String str) {
        this.bg = str;
    }

    private void q(int i) {
        this.H = i;
    }

    private void q(long j) {
        this.W = j;
    }

    private void q(String str) {
        this.bf = str;
    }

    private void r(int i) {
        this.D = i;
    }

    private void r(long j) {
        this.Y = j;
    }

    private void r(String str) {
        this.V = str;
    }

    private void s(int i) {
        this.C = i;
    }

    private void s(long j) {
        this.ar = j;
    }

    private void s(String str) {
        this.S = str;
    }

    private void t(int i) {
        this.l = i;
    }

    private void t(long j) {
        this.as = j;
    }

    private void t(String str) {
        this.T = str;
    }

    private void u(int i) {
        this.m = i;
    }

    private void u(String str) {
        this.L = str;
    }

    private void v(int i) {
        this.n = i;
    }

    private void v(String str) {
        this.I = str;
    }

    private void w(int i) {
        this.r = i;
    }

    private void w(String str) {
        this.v = str;
    }

    private void x(int i) {
        this.s = i;
    }

    private void x(String str) {
        this.w = str;
    }

    private void y(int i) {
        this.t = i;
    }

    private void y(String str) {
        this.x = str;
    }

    private void z(int i) {
        this.u = i;
    }

    private void z(String str) {
        this.y = str;
    }

    public final String A() {
        return this.ap;
    }

    public final long B() {
        return this.aq;
    }

    public final double C() {
        return this.ao;
    }

    public final String D() {
        return this.al;
    }

    public final String E() {
        return this.am;
    }

    public final String F() {
        return this.an;
    }

    public final long G() {
        return this.ak;
    }

    public final String H() {
        return this.ah;
    }

    public final String I() {
        return this.ag;
    }

    public final List<String> J() {
        return this.af;
    }

    public final double K() {
        return this.ad;
    }

    public final String L() {
        return this.ae;
    }

    public final long M() {
        return this.ac;
    }

    public final String N() {
        return this.z;
    }

    public final String O() {
        return this.be;
    }

    public final String P() {
        return this.bf;
    }

    public final ab Q() {
        return this.ab;
    }

    public final List<z> R() {
        return this.aa;
    }

    public final long S() {
        return this.U;
    }

    public final Map<String, ATRewardInfo> T() {
        return this.Q;
    }

    public final String U() {
        return this.S;
    }

    public final String V() {
        return this.T;
    }

    public final ATRewardInfo W() {
        return this.R;
    }

    public final Map<String, Object> X() {
        return this.P;
    }

    public final int Y() {
        return this.N;
    }

    public final int Z() {
        return this.K;
    }

    public final av a(String str) {
        Map<String, av> map = this.B;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final String a() {
        return this.i;
    }

    public final Map<String, Object> a(String str, String str2, av avVar) {
        q qVarM;
        Map<String, Object> mapC = com.anythink.core.common.o.i.c(avVar.h());
        boolean zB = com.anythink.core.common.o.h.b();
        com.anythink.core.d.a aVarB = b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
        if (!TextUtils.isEmpty(avVar.z())) {
            mapC.put("payload", avVar.z());
        }
        if (!TextUtils.isEmpty(avVar.Q())) {
            mapC.put("custom_inhouse_bid_result", avVar.Q());
        }
        boolean z = false;
        mapC.put(h.p.c, Boolean.valueOf(aVarB.r() == 3));
        if (aVarB.s() == 2 && zB) {
            z = true;
        }
        mapC.put(h.p.d, Boolean.valueOf(z));
        mapC.put(h.p.e, Boolean.valueOf(com.anythink.core.common.b.q.a(com.anythink.core.common.b.n.a().f()).c()));
        mapC.put("ad_type", Integer.valueOf(avVar.X()));
        if (this.aE == 1) {
            mapC.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.MEDIATION_WF_ID, str + "_" + this.K + "_" + this.u);
        }
        mapC.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.STACK_INFO, u.a().f(str));
        if (avVar.d() == 28 && (qVarM = avVar.M()) != null) {
            mapC.put(h.p.k, Double.valueOf(com.anythink.core.common.o.h.a(avVar) * qVarM.l));
        }
        String strL = com.anythink.core.common.o.e.l();
        if (!TextUtils.isEmpty(strL)) {
            mapC.put(ATAdConst.KEY.WECHAT_APPID, strL);
        }
        if (avVar.d() == 35 || avVar.m() == 3 || avVar.m() == 4 || avVar.m() == 7) {
            com.anythink.core.common.f.m mVar = new com.anythink.core.common.f.m();
            mVar.a = avVar.z();
            mVar.f = avVar.d();
            mVar.c = avVar.u();
            mVar.d = str2;
            mVar.b = str;
            mVar.h = this.K;
            mVar.i = this.u;
            mVar.j = this.C;
            mVar.g = avVar.e();
            q qVarM2 = avVar.M();
            mVar.k = qVarM2 != null ? qVarM2.g : "";
            mVar.l = qVarM2 != null ? qVarM2.h : "";
            mVar.n = avVar.d() == 35 ? this.ab : ak.i(this.bg);
            n nVar = mVar.n;
            if (nVar != null) {
                nVar.s(this.C);
            }
            mVar.m = qVarM2 != null ? qVarM2.f : 0L;
            if (TextUtils.equals(String.valueOf(this.C), "0")) {
                mVar.o = TextUtils.equals(ATInitMediation.getStringFromMap(mapC, "layout_type", ""), "1");
                mVar.p = aVarB.as();
            }
            mapC.put(h.p.a, mVar);
        }
        if (avVar.ai()) {
            mapC.put(h.p.i, this.ay);
        }
        if (avVar.d() == 50 && this.aH == 1) {
            mapC.put(h.p.m, str2);
        }
        if (avVar.d() == 46) {
            ATAdConst.CURRENCY currency = ATAdConst.CURRENCY.RMB;
            if (TextUtils.equals(avVar.ah(), "USD")) {
                currency = ATAdConst.CURRENCY.USD;
            }
            mapC.put(h.p.n, currency);
        }
        if (avVar.d() == 2) {
            mapC.put(h.p.p, avVar.as());
        }
        if (avVar.X() == 0) {
            mapC.put(a.aq, Integer.valueOf(this.ba));
            if (avVar.ay() == null) {
                mapC.put(a.ar, this.bb);
            } else {
                mapC.put(a.ar, avVar.ay());
            }
        }
        JSONObject jSONObjectQ = aVarB.Q();
        if (jSONObjectQ != null) {
            try {
                String string = jSONObjectQ.getString(String.valueOf(avVar.d()));
                if (!TextUtils.isEmpty(string)) {
                    mapC.put("network_ext", string);
                }
            } catch (Exception unused) {
            }
        }
        JSONArray jSONArrayAC = avVar.aC();
        if (jSONArrayAC != null && jSONArrayAC.length() > 0) {
            mapC.put("web_content_urls", jSONArrayAC);
        }
        int iAD = avVar.aD();
        if (iAD > 0) {
            mapC.put(com.anythink.core.common.j.aC, Integer.valueOf(iAD));
        }
        mapC.put("ad_s_reqf_mode", Integer.valueOf(avVar.aE()));
        return mapC;
    }

    public final void a(int i) {
        this.aJ = i;
    }

    public final String aA() {
        return this.bi;
    }

    public final String aB() {
        return this.bj;
    }

    public final int aC() {
        return this.bm;
    }

    public final int aD() {
        return this.bl;
    }

    public final double aE() {
        return this.bk;
    }

    public final int aF() {
        return this.bn;
    }

    public final int aG() {
        return this.bo;
    }

    public final int aH() {
        return this.aD;
    }

    public final JSONObject aI() {
        return this.bp;
    }

    public final boolean aJ() {
        return this.aJ == 1;
    }

    public final boolean aK() {
        return this.aK == 1;
    }

    public final boolean aL() {
        return this.aJ == 2;
    }

    public final boolean aM() {
        return this.aJ == 0;
    }

    public final int aN() {
        return this.aL;
    }

    public final int aO() {
        return this.aM;
    }

    public final int aP() {
        return this.aN;
    }

    public final double[][] aQ() {
        return this.aO;
    }

    public final int aR() {
        return this.aJ;
    }

    public final int aS() {
        return this.aP;
    }

    public final int aT() {
        return this.ba;
    }

    public final boolean aU() {
        return this.bc == 1;
    }

    public final boolean aV() {
        return this.m == 1;
    }

    public final boolean aW() {
        new StringBuilder("Already cache time -- > ").append(System.currentTimeMillis() - this.bh);
        return System.currentTimeMillis() - this.bh > this.j;
    }

    public final boolean aX() {
        return !TextUtils.isEmpty(this.aY);
    }

    public final String aa() {
        return this.L;
    }

    public final int ab() {
        return this.M;
    }

    public final long ac() {
        return this.F;
    }

    public final long ad() {
        return this.G;
    }

    public final String ae() {
        return this.I;
    }

    public final int af() {
        return this.D;
    }

    public final long ag() {
        return this.E;
    }

    public final int ah() {
        return this.C;
    }

    public final long ai() {
        return this.k;
    }

    public final int aj() {
        return this.l;
    }

    public final int ak() {
        return this.n;
    }

    public final long al() {
        return this.o;
    }

    public final long am() {
        return this.p;
    }

    public final long an() {
        return this.q;
    }

    public final int ao() {
        return this.u;
    }

    public final String ap() {
        return this.v;
    }

    public final String aq() {
        return this.w;
    }

    public final String ar() {
        return this.x;
    }

    public final String as() {
        return this.y;
    }

    public final long at() {
        return this.W;
    }

    public final int aw() {
        return this.X;
    }

    public final long ax() {
        return this.Y;
    }

    public final int ay() {
        return this.Z;
    }

    public final String az() {
        return this.aj;
    }

    public final z b(String str) {
        List<z> list = this.aa;
        if (list == null) {
            return null;
        }
        for (z zVar : list) {
            if (zVar.o() == null) {
                zVar.a((n) this.ab);
            }
            if (TextUtils.equals(str, zVar.t()) && !zVar.a(this.ab)) {
                return zVar;
            }
        }
        return null;
    }

    public final d b() {
        return this.aR;
    }

    public final int c() {
        return this.aQ;
    }

    public final int d() {
        return this.aI;
    }

    public final List<Integer> e() {
        return this.aW;
    }

    public final int f() {
        return this.aU;
    }

    public final int g() {
        return this.aV;
    }

    public final int h() {
        return this.aT;
    }

    public final int i() {
        return this.aT == 1 ? 2 : 1;
    }

    public final long j() {
        return this.aS;
    }

    public final int k() {
        return this.aX;
    }

    public final String l() {
        return this.aY;
    }

    public final int m() {
        return this.aZ;
    }

    public final List<av> n() {
        return this.A;
    }

    public final int o() {
        return this.aG;
    }

    public final List<Integer> p() {
        return this.aF;
    }

    public final String q() {
        return this.aC;
    }

    public final String r() {
        return this.aB;
    }

    public final JSONObject s() {
        return this.aA;
    }

    public final String t() {
        return this.az;
    }

    public final int u() {
        return this.bd;
    }

    public final long v() {
        return this.ax;
    }

    public final int w() {
        return this.aw;
    }

    public final int x() {
        return this.au;
    }

    public final int y() {
        int i = this.au;
        if (i == 1) {
            return this.n;
        }
        if (i != 2) {
            return 1;
        }
        return this.av;
    }

    public final long z() {
        return this.at;
    }
}
