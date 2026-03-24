package com.anythink.core.d;

import android.text.TextUtils;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.b.q;
import com.anythink.core.common.f.ac;
import com.anythink.core.common.f.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {
    public static final String a = "a";
    private int A;
    private Map B;
    private String C;
    private String D;
    private String E;
    private String F;
    private ConcurrentHashMap<String, ac> G;
    private int H;
    private int I;
    private Map<String, String> J;
    private Map<String, String> K;
    private Map<String, String> L;
    private Map<String, Map<String, String>> M;
    private Map<String, Map<String, String>> N;
    private int O;
    private String P;
    private int Q;
    private String R;
    private int S;
    private String T;
    private String U;
    private String V;
    private e W;
    private t X;
    private int Y;
    private int Z;
    private List<String> aA;
    private List<String> aB;
    private String aa;
    private String ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private String ag;
    private String ah;
    private int ai;
    private String aj;
    private String ak;
    private String al;
    private int am;
    private String an;
    private String ao;
    private JSONObject ap;
    private JSONObject aq;
    private int ar;
    private com.anythink.core.common.l.d as;
    private JSONObject at;
    private int au = 1;
    private boolean av;
    private String aw;
    private String ax;
    private String ay;
    private List<String> az;
    public boolean b;
    public Map<String, Object> c;
    private long e;
    private String f;
    private long g;
    private int h;
    private int i;
    private String j;
    private String k;
    private int l;
    private long m;
    private String n;
    private String o;
    private String p;
    private int q;
    private long r;
    private int[] s;
    private String t;
    private int u;
    private long v;
    private String w;
    private String x;
    private long y;
    private long z;

    /* JADX INFO: renamed from: com.anythink.core.d.a$a, reason: collision with other inner class name */
    public static class C0097a {
        private static String A = "tk_interval";
        private static String B = "da_address";
        private static String C = "da_max_amount";
        private static String D = "da_interval";
        private static String E = "n_psid_tm";
        private static String F = "c_a";
        private static String G = "tk_firm";
        private static String H = "n_l";
        private static String I = "preinit";
        private static String J = "nw_eu_def";
        private static String K = "t_c";
        private static String L = "data_level";
        private static String M = "psid_hl";
        private static String N = "la_sw";
        private static String O = "da_rt_keys_ft";
        private static String P = "tk_no_t_ft";
        private static String Q = "da_not_keys_ft";
        private static String R = "abtest_id";
        private static String S = "crash_sw";
        private static String T = "crash_list";
        private static String U = "tcp_domain";
        private static String V = "tcp_port";
        private static String W = "tcp_tk_da_type";
        private static String X = "tcp_rate";
        private static String Y = "sy_id";
        private static String Z = "adx";
        public static String a = "pil";
        private static String aa = "req_addr";
        private static String ab = "bid_addr";
        private static String ac = "tk_addr";
        private static String ad = "ol_req_addr";
        private static String ae = "ofm_data";
        private static String af = "ccpa_sw";
        private static String ag = "coppa_sw";
        private static String ah = "tk_no_nt_t";
        private static String ai = "da_no_nt_k";
        private static String aj = "s2s_addr";
        private static String ak = "cn_gdpr_nu";
        private static String al = "cn_s2s_addr";
        private static String am = "cn_req_addr";
        private static String an = "cn_bid_addr";
        private static String ao = "cn_tk_addr";
        private static String ap = "cn_ol_req_addr";
        private static String aq = "cn_tk_address";
        private static String ar = "cn_da_address";
        private static String as = "cn_tcp_domain";
        private static String at = "cn_tcp_port";
        private static String au = "show_delay_url";
        private static String av = "show_delay_text";
        private static String aw = "store_wakup";
        private static String ax = "admob_m_sw";
        public static String b = "tk_rt_sp_ft";
        public static String c = "da_rt_sp_ft";
        public static String d = "lrqf_interval";
        public static String e = "a_c";
        public static String f = "upd_alg";
        public static String g = "device_perf_sw";
        public static String h = "at_a_cg";
        public static String i = "at_a_re";
        public static String j = "at_a_rc";
        public static String k = "s_p_data";
        public static String l = "nw_ext";
        public static String m = "sens_sw";
        public static String n = "adx_getimgwh_sw";
        private static String o = "scet";
        private static String p = "req_ver";
        private static String q = "gdpr_sdcs";
        private static String r = "gdpr_so";
        private static String s = "gdpr_nu";
        private static String t = "gdpr_a";
        private static String u = "gdpr_ia";
        private static String v = "pl_n";
        private static String w = "upid";
        private static String x = "logger";
        private static String y = "tk_address";
        private static String z = "tk_max_amount";
    }

    private void A(String str) {
        this.ah = str;
    }

    private void B(String str) {
        this.j = str;
    }

    private void C(String str) {
        this.k = str;
    }

    private void D(String str) {
        this.o = str;
    }

    private void E(String str) {
        this.aa = str;
    }

    private void F(String str) {
        this.ab = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02ec A[Catch: Exception -> 0x06e8, PHI: r2
      0x02ec: PHI (r2v72 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>) = 
      (r2v0 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>)
      (r2v61 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>)
      (r2v64 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>)
     binds: [B:100:0x02ea, B:252:0x02ec, B:116:0x034b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0355 A[Catch: Exception -> 0x06e8, PHI: r2
      0x0355: PHI (r2v71 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>) = 
      (r2v68 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>)
      (r2v69 java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>)
     binds: [B:118:0x0353, B:135:0x03b2] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x01d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0358 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x020e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x02ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d2 A[Catch: Exception -> 0x06e8, TRY_LEAVE, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x020b A[Catch: Exception -> 0x06e8, TRY_LEAVE, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x026c A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x026f A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0283 A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0286 A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x029a A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02ae A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02c2 A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02d6 A[Catch: Exception -> 0x06e8, TryCatch #3 {Exception -> 0x06e8, blocks: (B:6:0x000d, B:9:0x0022, B:11:0x002e, B:13:0x0038, B:15:0x0048, B:17:0x0053, B:19:0x0060, B:21:0x006a, B:23:0x0077, B:26:0x0083, B:28:0x0090, B:31:0x009c, B:33:0x00a8, B:35:0x00b2, B:37:0x00bf, B:39:0x00c9, B:41:0x00d8, B:43:0x00e2, B:51:0x018d, B:53:0x0199, B:60:0x01c8, B:62:0x01d2, B:69:0x0201, B:71:0x020b, B:78:0x023a, B:80:0x026c, B:82:0x0279, B:84:0x0283, B:86:0x0290, B:88:0x029a, B:89:0x02a4, B:91:0x02ae, B:92:0x02b8, B:94:0x02c2, B:95:0x02cc, B:97:0x02d6, B:98:0x02e0, B:101:0x02ec, B:117:0x034d, B:119:0x0355, B:85:0x0286, B:81:0x026f, B:136:0x03b4, B:138:0x03be, B:139:0x03c8, B:141:0x03d2, B:142:0x03dc, B:144:0x03e6, B:145:0x03fc, B:147:0x0402, B:148:0x0410, B:149:0x0412, B:151:0x041c, B:152:0x0426, B:154:0x0430, B:155:0x043a, B:157:0x0444, B:158:0x044e, B:160:0x0458, B:162:0x0468, B:164:0x0472, B:166:0x0480, B:168:0x048a, B:170:0x0497, B:172:0x04a2, B:174:0x04af, B:176:0x04b9, B:178:0x04c6, B:180:0x04d0, B:182:0x04dd, B:184:0x04e7, B:198:0x057b, B:200:0x058f, B:207:0x05bb, B:209:0x05e3, B:210:0x05ed, B:212:0x05f7, B:213:0x0601, B:215:0x060b, B:216:0x0615, B:218:0x061f, B:219:0x0629, B:221:0x0633, B:222:0x063b, B:224:0x0641, B:226:0x064b, B:228:0x0658, B:230:0x0660, B:231:0x0668, B:233:0x0670, B:234:0x0678, B:236:0x0680, B:237:0x0688, B:239:0x0690, B:241:0x0698, B:242:0x069a, B:246:0x06e6, B:227:0x0656, B:185:0x04ec, B:187:0x052f, B:188:0x053a, B:190:0x0544, B:191:0x054f, B:193:0x0559, B:194:0x0564, B:196:0x056e, B:197:0x0579, B:181:0x04d3, B:177:0x04bc, B:173:0x04a5, B:169:0x048d, B:165:0x0476, B:161:0x045e, B:40:0x00ce, B:36:0x00b5, B:32:0x009f, B:27:0x0086, B:22:0x006d, B:18:0x0056, B:14:0x003e, B:10:0x0025), top: B:261:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a a(JSONObject jSONObject) {
        int i;
        JSONObject jSONObjectOptJSONObject;
        Map<String, Map<String, String>> map = null;
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        try {
            aVar.b(jSONObject);
            aVar.c(jSONObject);
            aVar.d(jSONObject);
            aVar.f = jSONObject.isNull(C0097a.p) ? "unkown" : jSONObject.optString(C0097a.p);
            if (jSONObject.isNull(C0097a.o)) {
                aVar.e = h.C0085h.a;
            } else {
                aVar.e = jSONObject.optLong(C0097a.o);
            }
            i = 0;
            if (jSONObject.isNull(C0097a.q)) {
                aVar.h = 0;
            } else {
                aVar.h = jSONObject.optInt(C0097a.q);
            }
            if (jSONObject.isNull(C0097a.r)) {
                aVar.i = 0;
            } else {
                aVar.i = jSONObject.optInt(C0097a.r);
            }
            if (jSONObject.isNull(C0097a.s)) {
                aVar.j = "";
            } else {
                aVar.j = jSONObject.optString(C0097a.s);
            }
            aVar.k = jSONObject.isNull(C0097a.t) ? "[\"AT\",\"BE\",\"BG\",\"HR\",\"CY\",\"CZ\",\"DK\",\"EE\",\"FI\",\"FR\",\"DE\",\"GR\",\"HU\",\"IS\",\"IE\",\"IT\",\"LV\",\"LI\",\"LT\",\"LU\",\"MT\",\"NL\",\"NO\",\"PL\",\"PT\",\"RO\",\"SK\",\"SI\",\"ES\",\"SE\",\"GB\",\"UK\"]" : jSONObject.optString(C0097a.t);
            if (jSONObject.isNull(C0097a.u)) {
                aVar.l = 0;
            } else {
                aVar.l = jSONObject.optInt(C0097a.u);
            }
            if (jSONObject.isNull(C0097a.v)) {
                aVar.m = com.anythink.expressad.exoplayer.f.a;
            } else {
                aVar.m = jSONObject.optLong(C0097a.v);
            }
        } catch (Exception unused) {
        }
        if (!jSONObject.isNull(C0097a.x)) {
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(C0097a.x);
            aVar.o = jSONObjectOptJSONObject2.toString();
            aVar.p = jSONObjectOptJSONObject2.optString(C0097a.y);
            aVar.q = jSONObjectOptJSONObject2.optInt(C0097a.z);
            aVar.r = jSONObjectOptJSONObject2.optLong(C0097a.A);
            aVar.t = jSONObjectOptJSONObject2.optString(C0097a.B);
            aVar.u = jSONObjectOptJSONObject2.optInt(C0097a.C);
            aVar.v = jSONObjectOptJSONObject2.optLong(C0097a.D);
            ConcurrentHashMap<String, ac> concurrentHashMap = new ConcurrentHashMap<>();
            try {
                if (!jSONObjectOptJSONObject2.isNull(C0097a.G)) {
                    JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject2.optString(C0097a.G));
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        ac acVar = new ac();
                        JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject(next);
                        acVar.a = jSONObjectOptJSONObject3.optInt("tk_fi_re_sw");
                        acVar.b = jSONObjectOptJSONObject3.optInt("tk_im_sw");
                        acVar.c = jSONObjectOptJSONObject3.optInt("tk_sh_sw");
                        acVar.d = jSONObjectOptJSONObject3.optInt("tk_ck_sw");
                        acVar.e = jSONObjectOptJSONObject3.optString("pg_m_li");
                        concurrentHashMap.put(next, acVar);
                    }
                }
            } catch (Exception unused2) {
            }
            aVar.G = concurrentHashMap;
            if (jSONObjectOptJSONObject2.isNull(C0097a.O)) {
                aVar.J = null;
                if (jSONObjectOptJSONObject2.isNull(C0097a.Q)) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(jSONObjectOptJSONObject2.optString(C0097a.Q));
                        Iterator<String> itKeys2 = jSONObject3.keys();
                        HashMap map2 = new HashMap();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            map2.put(next2, jSONObject3.optString(next2));
                        }
                        aVar.L = map2;
                    } catch (Throwable unused3) {
                        aVar.L = null;
                    }
                    if (jSONObjectOptJSONObject2.isNull(C0097a.P)) {
                    }
                } else {
                    aVar.L = null;
                    if (jSONObjectOptJSONObject2.isNull(C0097a.P)) {
                        try {
                            JSONObject jSONObject4 = new JSONObject(jSONObjectOptJSONObject2.optString(C0097a.P));
                            Iterator<String> itKeys3 = jSONObject4.keys();
                            HashMap map3 = new HashMap();
                            while (itKeys3.hasNext()) {
                                String next3 = itKeys3.next();
                                map3.put(next3, jSONObject4.optString(next3));
                            }
                            aVar.K = map3;
                        } catch (Throwable unused4) {
                            aVar.K = null;
                        }
                        aVar.R = jSONObjectOptJSONObject2.optString(C0097a.U);
                        aVar.S = jSONObjectOptJSONObject2.optInt(C0097a.V);
                        aVar.Q = jSONObjectOptJSONObject2.optInt(C0097a.W);
                        aVar.T = jSONObjectOptJSONObject2.optString(C0097a.X);
                        if (jSONObjectOptJSONObject2.isNull(C0097a.ah)) {
                        }
                        if (jSONObjectOptJSONObject2.isNull(C0097a.ai)) {
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.aq)) {
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.ar)) {
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.as)) {
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.at)) {
                        }
                        if (jSONObjectOptJSONObject2.isNull(C0097a.b)) {
                        }
                    } else {
                        aVar.K = null;
                        aVar.R = jSONObjectOptJSONObject2.optString(C0097a.U);
                        aVar.S = jSONObjectOptJSONObject2.optInt(C0097a.V);
                        aVar.Q = jSONObjectOptJSONObject2.optInt(C0097a.W);
                        aVar.T = jSONObjectOptJSONObject2.optString(C0097a.X);
                        if (jSONObjectOptJSONObject2.isNull(C0097a.ah)) {
                            aVar.aa = jSONObjectOptJSONObject2.optString(C0097a.ah);
                        } else {
                            aVar.aa = null;
                        }
                        if (jSONObjectOptJSONObject2.isNull(C0097a.ai)) {
                            aVar.ab = jSONObjectOptJSONObject2.optString(C0097a.ai);
                        } else {
                            aVar.ab = null;
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.aq)) {
                            aVar.af = jSONObjectOptJSONObject2.optString(C0097a.aq);
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.ar)) {
                            aVar.ag = jSONObjectOptJSONObject2.optString(C0097a.ar);
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.as)) {
                            aVar.ah = jSONObjectOptJSONObject2.optString(C0097a.as);
                        }
                        if (!jSONObjectOptJSONObject2.isNull(C0097a.at)) {
                            aVar.ai = jSONObjectOptJSONObject2.optInt(C0097a.at);
                        }
                        if (jSONObjectOptJSONObject2.isNull(C0097a.b)) {
                            try {
                                JSONObject jSONObject5 = new JSONObject(jSONObjectOptJSONObject2.optString(C0097a.b));
                                Iterator<String> itKeys4 = jSONObject5.keys();
                                HashMap map4 = new HashMap();
                                while (itKeys4.hasNext()) {
                                    String next4 = itKeys4.next();
                                    HashMap map5 = new HashMap();
                                    JSONObject jSONObject6 = new JSONObject(jSONObject5.optString(next4));
                                    JSONArray jSONArrayOptJSONArray = jSONObject6.optJSONArray("ids");
                                    String strOptString = jSONObject6.optString("formats");
                                    if (jSONArrayOptJSONArray.length() > 0 && !TextUtils.isEmpty(strOptString)) {
                                        while (i < jSONArrayOptJSONArray.length()) {
                                            try {
                                                map5.put(jSONArrayOptJSONArray.optString(i), strOptString);
                                                i++;
                                            } catch (Throwable unused5) {
                                                map = null;
                                            }
                                        }
                                    }
                                    map4.put(next4, map5);
                                    map = null;
                                    i = 0;
                                }
                                aVar.M = map4;
                                map = null;
                            } catch (Throwable unused6) {
                            }
                            if (jSONObjectOptJSONObject2.isNull(C0097a.c)) {
                            }
                        } else {
                            aVar.M = map;
                            if (jSONObjectOptJSONObject2.isNull(C0097a.c)) {
                                try {
                                    JSONObject jSONObject7 = new JSONObject(jSONObjectOptJSONObject2.optString(C0097a.c));
                                    Iterator<String> itKeys5 = jSONObject7.keys();
                                    HashMap map6 = new HashMap();
                                    while (itKeys5.hasNext()) {
                                        String next5 = itKeys5.next();
                                        HashMap map7 = new HashMap();
                                        JSONObject jSONObject8 = new JSONObject(jSONObject7.optString(next5));
                                        JSONArray jSONArrayOptJSONArray2 = jSONObject8.optJSONArray("ids");
                                        String strOptString2 = jSONObject8.optString("formats");
                                        if (jSONArrayOptJSONArray2.length() > 0 && !TextUtils.isEmpty(strOptString2)) {
                                            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                                                map7.put(jSONArrayOptJSONArray2.optString(i2), strOptString2);
                                            }
                                        }
                                        map6.put(next5, map7);
                                    }
                                    aVar.N = map6;
                                } catch (Throwable unused7) {
                                    map = null;
                                    aVar.N = map;
                                }
                            } else {
                                aVar.N = map;
                            }
                        }
                    }
                }
            } else {
                try {
                    JSONObject jSONObject9 = new JSONObject(jSONObjectOptJSONObject2.optString(C0097a.O));
                    Iterator<String> itKeys6 = jSONObject9.keys();
                    HashMap map8 = new HashMap();
                    while (itKeys6.hasNext()) {
                        String next6 = itKeys6.next();
                        map8.put(next6, jSONObject9.optString(next6));
                    }
                    aVar.J = map8;
                } catch (Throwable unused8) {
                    aVar.J = null;
                }
                if (jSONObjectOptJSONObject2.isNull(C0097a.Q)) {
                }
            }
            return aVar;
        }
        if (!jSONObject.isNull(C0097a.E)) {
            aVar.y = jSONObject.optLong(C0097a.E);
        }
        if (!jSONObject.isNull(C0097a.F)) {
            aVar.z = jSONObject.optLong(C0097a.F);
        }
        if (!jSONObject.isNull(C0097a.H)) {
            JSONObject jSONObject10 = new JSONObject(jSONObject.optString(C0097a.H));
            Iterator<String> itKeys7 = jSONObject10.keys();
            HashMap map9 = new HashMap();
            while (itKeys7.hasNext()) {
                String next7 = itKeys7.next();
                map9.put(next7, jSONObject10.optString(next7));
            }
            aVar.B = map9;
        }
        if (!jSONObject.isNull(C0097a.K)) {
            aVar.D = jSONObject.optString(C0097a.K);
        }
        if (!jSONObject.isNull(C0097a.J)) {
            aVar.A = jSONObject.optInt(C0097a.J);
        }
        if (!jSONObject.isNull(C0097a.L)) {
            aVar.E = jSONObject.optString(C0097a.L);
        }
        if (jSONObject.isNull(C0097a.M)) {
            aVar.H = 60000;
        } else {
            aVar.H = jSONObject.optInt(C0097a.M);
        }
        if (jSONObject.isNull(C0097a.N)) {
            aVar.I = 0;
        } else {
            aVar.I = jSONObject.optInt(C0097a.N);
        }
        if (jSONObject.isNull(C0097a.R)) {
            aVar.F = "";
        } else {
            aVar.F = jSONObject.optString(C0097a.R);
        }
        if (jSONObject.isNull(C0097a.S)) {
            aVar.O = 1;
        } else {
            aVar.O = jSONObject.optInt(C0097a.S);
        }
        if (jSONObject.isNull(C0097a.T)) {
            aVar.P = "";
        } else {
            aVar.P = jSONObject.optString(C0097a.T);
        }
        if (jSONObject.isNull(C0097a.Y)) {
            aVar.U = "";
        } else {
            aVar.U = jSONObject.optString(C0097a.Y);
        }
        if (jSONObject.isNull(C0097a.Z)) {
            aVar.X = null;
        } else {
            t tVar = new t();
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject(C0097a.Z);
            tVar.b(jSONObjectOptJSONObject4.optString(C0097a.aa));
            tVar.c(jSONObjectOptJSONObject4.optString(C0097a.ab));
            tVar.d(jSONObjectOptJSONObject4.optString(C0097a.ac));
            tVar.a(jSONObjectOptJSONObject4.optString(C0097a.ad));
            if (!jSONObject.isNull(C0097a.am)) {
                tVar.e(jSONObjectOptJSONObject4.optString(C0097a.am));
            }
            if (!jSONObject.isNull(C0097a.an)) {
                tVar.f(jSONObjectOptJSONObject4.optString(C0097a.an));
            }
            if (!jSONObject.isNull(C0097a.ao)) {
                tVar.g(jSONObjectOptJSONObject4.optString(C0097a.ao));
            }
            if (!jSONObject.isNull(C0097a.ap)) {
                tVar.h(jSONObjectOptJSONObject4.optString(C0097a.ap));
            }
            aVar.X = tVar;
        }
        aVar.W = e.a(jSONObject.optString(C0097a.ae));
        if (jSONObject.isNull("custom")) {
            aVar.c = null;
        } else {
            try {
                JSONObject jSONObject11 = new JSONObject(jSONObject.optString("custom"));
                HashMap map10 = new HashMap();
                Iterator<String> itKeys8 = jSONObject11.keys();
                while (itKeys8.hasNext()) {
                    String next8 = itKeys8.next();
                    map10.put(next8, jSONObject11.opt(next8));
                }
                aVar.c = map10;
            } catch (Throwable unused9) {
            }
        }
        aVar.Y = jSONObject.optInt(C0097a.af);
        aVar.Z = jSONObject.optInt(C0097a.ag);
        aVar.ac = jSONObject.optString(C0097a.aj);
        if (!jSONObject.isNull(C0097a.ak)) {
            aVar.ad = jSONObject.optString(C0097a.ak);
        }
        if (!jSONObject.isNull(C0097a.al)) {
            aVar.ae = jSONObject.optString(C0097a.al);
        }
        if (!jSONObject.isNull(C0097a.au)) {
            aVar.aj = jSONObject.optString(C0097a.au);
        }
        if (!jSONObject.isNull(C0097a.av)) {
            aVar.ak = jSONObject.optString(C0097a.av);
        }
        aVar.al = !jSONObject.isNull(C0097a.aw) ? jSONObject.optString(C0097a.aw) : "1";
        if (jSONObject.isNull(C0097a.ax)) {
            aVar.am = 1;
        } else {
            aVar.am = jSONObject.optInt(C0097a.ax);
        }
        if (!jSONObject.isNull(C0097a.a)) {
            aVar.an = jSONObject.optString(C0097a.a);
        }
        if (!jSONObject.isNull(C0097a.d)) {
            aVar.ao = jSONObject.optString(C0097a.d);
        }
        if (!jSONObject.isNull(C0097a.e)) {
            aVar.ap = jSONObject.optJSONObject(C0097a.e);
        }
        if (!jSONObject.isNull(C0097a.f) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(C0097a.f)) != null) {
            aVar.aq = jSONObjectOptJSONObject;
        }
        aVar.ar = jSONObject.optInt(C0097a.g, 0);
        aVar.g(jSONObject.optString(C0097a.h, ""));
        aVar.h(jSONObject.optString(C0097a.i, ""));
        aVar.i(jSONObject.optString(C0097a.j, ""));
        aVar.as = com.anythink.core.common.l.d.a(jSONObject.optJSONObject(C0097a.k));
        aVar.at = jSONObject.optJSONObject(C0097a.l);
        aVar.au = jSONObject.optInt(C0097a.m, 1);
        aVar.av = jSONObject.optInt(C0097a.n, 2) == 1;
        return aVar;
    }

    private void a(t tVar) {
        this.X = tVar;
    }

    private void a(com.anythink.core.common.l.d dVar) {
        this.as = dVar;
    }

    private void a(e eVar) {
        this.W = eVar;
    }

    private void a(Map map) {
        this.B = map;
    }

    private void a(ConcurrentHashMap<String, ac> concurrentHashMap) {
        this.G = concurrentHashMap;
    }

    private void a(boolean z) {
        this.av = z;
    }

    private String aA() {
        return this.ae;
    }

    private String aB() {
        return this.af;
    }

    private String aC() {
        return this.ag;
    }

    private String aD() {
        return this.ah;
    }

    private int aE() {
        return this.ai;
    }

    private String aF() {
        return this.f;
    }

    private String aG() {
        return this.k;
    }

    private String aH() {
        return this.o;
    }

    private Map<String, Object> aI() {
        return this.c;
    }

    public static boolean at() {
        a aVarB = b.a(n.a().f()).b(n.a().o());
        boolean z = aVarB != null && aVarB.A == 1;
        q qVarA = q.a(n.a().f());
        if (aVarB.b) {
            if (qVarA.a() == 2) {
                return false;
            }
        } else if (qVarA.a() == 2 && (aVarB.l == 0 || z)) {
            return false;
        }
        return true;
    }

    private String aw() {
        return this.V;
    }

    private ConcurrentHashMap<String, ac> ax() {
        return this.G;
    }

    private String ay() {
        return this.C;
    }

    private String az() {
        return this.ad;
    }

    private void b(int i) {
        this.ar = i;
    }

    private void b(Map<String, String> map) {
        this.J = map;
    }

    private void c(int i) {
        this.Y = i;
    }

    private void c(Map<String, String> map) {
        this.K = map;
    }

    private void d(int i) {
        this.Z = i;
    }

    private void d(Map<String, String> map) {
        this.L = map;
    }

    private void e(int i) {
        this.Q = i;
    }

    private void e(Map<String, Object> map) {
        this.c = map;
    }

    private void e(JSONObject jSONObject) {
        this.aq = jSONObject;
    }

    private void f(int i) {
        this.S = i;
    }

    private void f(String str) {
        this.ao = str;
    }

    private void f(Map<String, Map<String, String>> map) {
        this.M = map;
    }

    private void f(JSONObject jSONObject) {
        this.at = jSONObject;
    }

    private void g(int i) {
        this.A = i;
    }

    private void g(String str) {
        this.aw = str;
        this.az = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                this.az.add(jSONArray.optString(i));
            }
        } catch (Throwable unused) {
        }
    }

    private void g(Map<String, Map<String, String>> map) {
        this.N = map;
    }

    private void g(JSONObject jSONObject) {
        this.ap = jSONObject;
    }

    private void h(int i) {
        this.ai = i;
    }

    private void h(String str) {
        this.ax = str;
        this.aA = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                this.aA.add(jSONArray.optString(i));
            }
        } catch (Throwable unused) {
        }
    }

    private static void h(Map<String, Object> map) {
        a aVarB = b.a(n.a().f()).b(n.a().o());
        boolean z = false;
        boolean z3 = aVarB != null && aVarB.l == 1;
        boolean z4 = aVarB != null && aVarB.A == 1;
        q qVarA = q.a(n.a().f());
        map.put(h.p.e, Boolean.valueOf(qVarA.c()));
        map.put("is_eu", Boolean.valueOf(z3));
        if (!aVarB.b ? qVarA.a() != 2 || (aVarB.l != 0 && !z4) : qVarA.a() != 2) {
            z = true;
        }
        map.put("need_set_gdpr", Boolean.valueOf(z));
    }

    private void i(int i) {
        this.h = i;
    }

    private void i(String str) {
        this.ay = str;
        this.aB = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            this.aB.add("https://mores.toponad.com/image/adx_animate/animate5_recommend1.png");
            this.aB.add("https://mores.toponad.com/image/adx_animate/animate5_recommend2.png");
            this.aB.add("https://mores.toponad.com/image/adx_animate/animate5_recommend3.png");
            this.aB.add("https://mores.toponad.com/image/adx_animate/animate5_recommend4.png");
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                this.aB.add(jSONArray.optString(i));
            }
        } catch (Throwable unused) {
        }
    }

    private void j(int i) {
        this.i = i;
    }

    private void j(String str) {
        this.an = str;
    }

    private void k(int i) {
        this.l = i;
    }

    private void k(String str) {
        this.al = str;
    }

    private void l(int i) {
        this.au = i;
    }

    private void l(String str) {
        this.ak = str;
    }

    private void m(String str) {
        this.aj = str;
    }

    private void n(String str) {
        this.ac = str;
    }

    private void o(String str) {
        this.U = str;
    }

    private void p(String str) {
        this.V = str;
    }

    private void q(String str) {
        this.T = str;
    }

    private void r(String str) {
        this.R = str;
    }

    private void s(String str) {
        this.F = str;
    }

    private void t(String str) {
        this.E = str;
    }

    private void u(String str) {
        this.D = str;
    }

    private void v(String str) {
        this.C = str;
    }

    private void w(String str) {
        this.ad = str;
    }

    private void x(String str) {
        this.ae = str;
    }

    private void y(String str) {
        this.af = str;
    }

    private void z(String str) {
        this.ag = str;
    }

    public final void A() {
        this.O = 1;
    }

    public final String B() {
        return this.P;
    }

    public final String C() {
        return this.F;
    }

    public final int D() {
        return this.H;
    }

    public final void E() {
        this.H = 30000;
    }

    public final int F() {
        return this.I;
    }

    public final void G() {
        this.I = 0;
    }

    public final String H() {
        return this.E;
    }

    public final boolean I() {
        return this.b;
    }

    public final String J() {
        return this.D;
    }

    public final int K() {
        return this.A;
    }

    public final long L() {
        return this.z;
    }

    public final void M() {
        this.z = 51200L;
    }

    public final long N() {
        return this.g;
    }

    public final Map<String, String> O() {
        return this.B;
    }

    public final JSONObject P() {
        return this.aq;
    }

    public final JSONObject Q() {
        return this.at;
    }

    public final long R() {
        return this.y;
    }

    public final void S() {
        this.y = 30000L;
    }

    public final long T() {
        return this.e;
    }

    public final void U() {
        this.e = h.C0085h.a;
    }

    public final int V() {
        return this.h;
    }

    public final int W() {
        return this.i;
    }

    public final String X() {
        return this.j;
    }

    public final int Y() {
        return this.l;
    }

    public final long Z() {
        return this.m;
    }

    public final e a() {
        return this.W;
    }

    public final Map<String, String> a(int i) {
        Map<String, Map<String, String>> map = this.M;
        if (map != null) {
            return map.get(String.valueOf(i));
        }
        return null;
    }

    public final void a(long j) {
        this.g = j;
    }

    public final void a(String str) {
        this.P = str;
    }

    public final void aa() {
        this.m = com.anythink.expressad.exoplayer.f.a;
    }

    public final String ab() {
        return this.p;
    }

    public final int ac() {
        return this.q;
    }

    public final void ad() {
        this.q = 1;
    }

    public final long ae() {
        return this.r;
    }

    public final void af() {
        this.r = 0L;
    }

    public final String ag() {
        return this.t;
    }

    public final int ah() {
        return this.u;
    }

    public final void ai() {
        this.u = 1;
    }

    public final long aj() {
        return this.v;
    }

    public final void ak() {
        this.v = 0L;
    }

    public final Map<String, String> al() {
        return this.J;
    }

    public final Map<String, String> am() {
        return this.K;
    }

    public final Map<String, String> an() {
        return this.L;
    }

    public final String ao() {
        return this.aa;
    }

    public final String ap() {
        return this.ab;
    }

    public final boolean aq() {
        return this.au == 1;
    }

    public final JSONObject ar() {
        return this.ap;
    }

    public final boolean as() {
        return this.av;
    }

    public final com.anythink.core.common.l.d b() {
        return this.as;
    }

    public final void b(String str) {
        this.f = str;
    }

    public final void c(String str) {
        this.p = str;
    }

    public final boolean c() {
        return this.ar == 1;
    }

    public final String d() {
        return this.ao;
    }

    public final void d(String str) {
        this.t = str;
    }

    public final String e() {
        return this.aw;
    }

    public final Map<String, String> e(String str) {
        Map<String, Map<String, String>> map = this.N;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final String f() {
        return this.ax;
    }

    public final String g() {
        return this.ay;
    }

    public final List<String> h() {
        return this.az;
    }

    public final List<String> i() {
        return this.aB;
    }

    public final List<String> j() {
        return this.aA;
    }

    public final String k() {
        return this.an;
    }

    public final int l() {
        return this.am;
    }

    public final void m() {
        this.am = 1;
    }

    public final String n() {
        return this.al;
    }

    public final String o() {
        return this.ak;
    }

    public final String p() {
        return this.aj;
    }

    public final String q() {
        return this.ac;
    }

    public final int r() {
        return this.Y;
    }

    public final int s() {
        return this.Z;
    }

    public final t t() {
        return this.X;
    }

    public final String u() {
        return this.U;
    }

    public final String v() {
        return this.T;
    }

    public final int w() {
        return this.Q;
    }

    public final String x() {
        return this.R;
    }

    public final int y() {
        return this.S;
    }

    public final int z() {
        return this.O;
    }
}
