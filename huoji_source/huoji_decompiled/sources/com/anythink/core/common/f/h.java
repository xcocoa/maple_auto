package com.anythink.core.common.f;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATRewardInfo;
import com.anythink.core.common.c.g;
import com.anythink.core.d.f;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.kx;

/* JADX INFO: loaded from: classes.dex */
public class h extends au implements Cloneable {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    public static final int f = 6;
    public static final int g = 7;
    public static final int h = 8;
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 0;
    public static final int m = 1;
    public static final int n = 2;
    public int A;
    public String B;
    public int C;
    public int D;
    public int E;
    public int F;
    public double G;
    public boolean H;
    public int I;
    public String J;
    public long K;
    public long L;
    public String M;
    private String aA;
    private int aB;
    private int aD;
    private int aE;
    private boolean aF;
    private long aG;
    private long aH;
    private String aI;
    private String aJ;
    private String aK;
    private int aL;
    private String aN;
    private String aO;
    private double aP;
    private String aQ;
    private double aR;
    private double aS;
    private String aT;
    private String aU;
    private String aV;
    private int aW;
    private int aX;
    private String aY;
    private long aZ;
    private int av;
    private String aw;
    private String ax;
    private int ay;
    private int az;
    private int bA;
    private int bC;
    private String bD;
    private long bE;
    private long bF;
    private boolean bG;
    private long bH;
    private int ba;
    private int bb;
    private int bc;
    private int bd;
    private int be;
    private long bf;
    private int bh;
    private int bi;
    private int bl;
    private String bm;
    private int bn;
    private ATRewardInfo bo;
    private Map<String, ATRewardInfo> bp;
    private Map<String, Object> bq;
    private Map<String, Object> br;
    private c bs;
    private Map<String, Object> bt;
    private boolean bu;
    private double bv;
    private int bw;
    private int bx;
    private int by;
    private double bz;
    public int o;
    public int t;
    public String u;
    public int v;
    public double w;
    public String x;
    public int y;
    public int z;
    private int aC = -1;
    public String p = "";
    public int q = 0;
    public int r = 0;
    public int s = 0;
    private String aM = "unknow";
    private int bg = -1;
    private int bj = 1;
    private int bk = 13;
    private int bB = 1;

    private void A(String str) {
        this.u = str;
    }

    private void O(int i2) {
        this.q = i2;
    }

    private void P(int i2) {
        this.r = i2;
    }

    private void Q(int i2) {
        this.s = i2;
    }

    private void R(int i2) {
        this.t = i2;
    }

    private JSONObject S(int i2) {
        return super.F(i2);
    }

    private void a(int i2, JSONObject jSONObject) throws JSONException {
        if (i2 == 1 || i2 == 2 || i2 == 4 || i2 == 6 || i2 == 13) {
            jSONObject.put(g.a.h, this.aU);
        }
    }

    private void a(JSONObject jSONObject, int i2) {
        int i3;
        try {
            if (TextUtils.equals(this.al, "2")) {
                if (i2 == 1 || i2 == 2 || i2 == 4 || i2 == 13 || i2 == 11 || i2 == 6) {
                    if (this.bg == 0 || i2 == 11) {
                        StringBuilder sb = new StringBuilder("Banner广告上使用自渲染原生广告 >>> tk = ");
                        sb.append(i2);
                        sb.append(" bnTemplateId = ");
                        sb.append(this.by);
                        sb.append(" bnClickArea = ");
                        sb.append(this.bx);
                        jSONObject.put(f.a.aq, this.by);
                    }
                    Map<String, Object> map = this.br;
                    if (map != null) {
                        Object obj = map.get(ATAdConst.KEY.AD_WIDTH);
                        Object obj2 = this.br.get(ATAdConst.KEY.AD_HEIGHT);
                        if (obj != null) {
                            try {
                                jSONObject.put("bn_width", Integer.parseInt(obj.toString()));
                            } catch (Exception e2) {
                                new StringBuilder("parse ad width failed: ").append(e2.getMessage());
                            }
                        }
                        if (obj2 != null) {
                            try {
                                jSONObject.put("bn_height", Integer.parseInt(obj2.toString()));
                            } catch (Exception e3) {
                                new StringBuilder("parse ad height failed: ").append(e3.getMessage());
                            }
                        }
                    }
                    if (i2 != 6 || (i3 = this.bx) == 0) {
                        return;
                    }
                    jSONObject.put("bn_click_area", i3);
                }
            }
        } catch (Exception unused) {
        }
    }

    private int aA() {
        return this.t;
    }

    private boolean aB() {
        return this.H;
    }

    private int aC() {
        return this.I;
    }

    private String aD() {
        return this.J;
    }

    private long aE() {
        return this.K;
    }

    private long aF() {
        return this.L;
    }

    private String aG() {
        return this.M;
    }

    private int aH() {
        return this.bx;
    }

    private int aI() {
        return this.by;
    }

    private int al() {
        return this.bA;
    }

    private c am() {
        return this.bs;
    }

    private double an() {
        return this.bv;
    }

    private boolean ao() {
        return this.bu;
    }

    private double ap() {
        return this.G;
    }

    private int aq() {
        return this.bc;
    }

    private int ar() {
        return this.bb;
    }

    private String as() {
        return this.B;
    }

    private int at() {
        return this.y;
    }

    private void au() {
        this.y = 1;
    }

    private String av() {
        return this.u;
    }

    private boolean aw() {
        return this.bd == 9;
    }

    private String ax() {
        return this.aw;
    }

    private int ay() {
        return this.q;
    }

    private int az() {
        return this.r;
    }

    private void b(JSONObject jSONObject, int i2) {
        com.anythink.core.common.n.b bVarA = com.anythink.core.common.n.b.a();
        try {
            if (i2 != 4) {
                if (i2 == 6 && this.o == 66) {
                    long jB = com.anythink.core.common.n.b.b(this);
                    if (jB > 0) {
                        jSONObject.put("s_c_interval", jB);
                        return;
                    }
                    return;
                }
                return;
            }
            if ("0".equals(this.al)) {
                return;
            }
            long jA = bVarA.a(this);
            if (jA > 0) {
                jSONObject.put("pl_show_interval", jA);
            }
            long jB2 = bVarA.b();
            if (jB2 > 0) {
                jSONObject.put("bidads_show_interval", jB2);
            }
        } catch (Throwable th) {
            new StringBuilder("fillAdShowInterval() >>> ").append(th.getMessage());
        }
    }

    private void d(boolean z) {
        this.aF = z;
    }

    private void z(String str) {
        this.B = str;
    }

    public final Map<String, Object> A() {
        return this.bq;
    }

    public final void A(int i2) {
        this.bg = i2;
    }

    public final int B() {
        return this.z;
    }

    public final void B(int i2) {
        this.bj = i2;
    }

    public final int C() {
        return this.A;
    }

    public final void C(int i2) {
        this.bk = i2;
    }

    public final int D() {
        return this.v;
    }

    public final void D(int i2) {
        this.bl = i2;
    }

    public final double E() {
        return this.w;
    }

    public final void E(int i2) {
        this.I = i2;
    }

    public final String F() {
        return this.aI;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:113:0x034a A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0356 A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0383 A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03a3 A[Catch: Exception -> 0x00da, TRY_ENTER, TryCatch #5 {Exception -> 0x00da, blocks: (B:39:0x00d2, B:42:0x00dd, B:125:0x03a3, B:126:0x03b1, B:128:0x03b5, B:129:0x03ba, B:131:0x03be, B:132:0x03c3, B:134:0x03c8, B:136:0x03cc, B:140:0x03e4, B:142:0x0429, B:143:0x042d, B:145:0x0436, B:146:0x043a, B:144:0x0431, B:147:0x043e), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b5 A[Catch: Exception -> 0x00da, TryCatch #5 {Exception -> 0x00da, blocks: (B:39:0x00d2, B:42:0x00dd, B:125:0x03a3, B:126:0x03b1, B:128:0x03b5, B:129:0x03ba, B:131:0x03be, B:132:0x03c3, B:134:0x03c8, B:136:0x03cc, B:140:0x03e4, B:142:0x0429, B:143:0x042d, B:145:0x0436, B:146:0x043a, B:144:0x0431, B:147:0x043e), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03be A[Catch: Exception -> 0x00da, TryCatch #5 {Exception -> 0x00da, blocks: (B:39:0x00d2, B:42:0x00dd, B:125:0x03a3, B:126:0x03b1, B:128:0x03b5, B:129:0x03ba, B:131:0x03be, B:132:0x03c3, B:134:0x03c8, B:136:0x03cc, B:140:0x03e4, B:142:0x0429, B:143:0x042d, B:145:0x0436, B:146:0x043a, B:144:0x0431, B:147:0x043e), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0498 A[Catch: Exception -> 0x0519, TryCatch #7 {Exception -> 0x0519, blocks: (B:152:0x0472, B:166:0x0490, B:171:0x04bd, B:173:0x04c1, B:183:0x04ff, B:178:0x04e0, B:186:0x0510, B:188:0x0514, B:170:0x0498, B:175:0x04d1, B:180:0x04f0), top: B:227:0x0472, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04c1 A[Catch: Exception -> 0x0519, TRY_LEAVE, TryCatch #7 {Exception -> 0x0519, blocks: (B:152:0x0472, B:166:0x0490, B:171:0x04bd, B:173:0x04c1, B:183:0x04ff, B:178:0x04e0, B:186:0x0510, B:188:0x0514, B:170:0x0498, B:175:0x04d1, B:180:0x04f0), top: B:227:0x0472, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x053a A[Catch: all -> 0x055c, TryCatch #9 {all -> 0x055c, blocks: (B:194:0x0526, B:196:0x052c, B:199:0x0536, B:200:0x053a, B:202:0x0544, B:204:0x054c, B:205:0x0551), top: B:231:0x0520 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014b A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0176 A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0197 A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b1 A[Catch: Exception -> 0x022f, TryCatch #1 {Exception -> 0x022f, blocks: (B:44:0x00f0, B:45:0x00f8, B:49:0x0111, B:48:0x010a, B:50:0x0116, B:54:0x0152, B:56:0x0176, B:57:0x017b, B:60:0x0197, B:53:0x014b, B:61:0x019c, B:63:0x01ad, B:66:0x01b4, B:67:0x01bf, B:65:0x01b1, B:68:0x01c4, B:72:0x01e9, B:74:0x01f1, B:75:0x01fc, B:76:0x0201, B:71:0x01e2, B:77:0x020d, B:81:0x0216, B:84:0x0234, B:86:0x025c, B:92:0x027f, B:94:0x0287, B:95:0x028c, B:97:0x0291, B:99:0x0295, B:87:0x026a, B:91:0x027c, B:103:0x02af, B:111:0x0322, B:113:0x034a, B:119:0x0369, B:121:0x0383, B:122:0x0388, B:114:0x0356, B:118:0x0366, B:105:0x02e5, B:107:0x030c, B:108:0x0313, B:110:0x031b), top: B:218:0x00cd }] */
    @Override // com.anythink.core.common.f.au
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final JSONObject F(int i2) {
        CharSequence charSequence;
        long jB;
        String str;
        Map<String, Object> map;
        int i3;
        String str2;
        long j2;
        String str3;
        long j3;
        String str4;
        String str5;
        double d2;
        int i4;
        int i5;
        Map<String, Object> map2;
        Map<String, Object> map3;
        String str6;
        int i6;
        String str7;
        long j4;
        int i7;
        int i8 = i2;
        JSONObject jSONObjectF = super.F(i2);
        try {
            jSONObjectF.put("nw_ver", this.u);
            int i9 = this.aC;
            if (i9 != -1) {
                jSONObjectF.put("refresh", i9);
            }
            if (!TextUtils.isEmpty(this.aV)) {
                jSONObjectF.put(az.m, this.aV);
            }
            if ("4".equals(this.al) || "2".equals(this.al) || "3".equals(this.al)) {
                try {
                    int i10 = this.bg;
                    if (i10 == -1) {
                        i10 = Integer.parseInt(this.al);
                    }
                    jSONObjectF.put("ad_type", i10);
                } catch (Exception unused) {
                }
            }
            if (i8 == 1 || i8 == 2 || i8 == 4 || i8 == 6 || i8 == 13) {
                jSONObjectF.put(g.a.h, this.aU);
            }
            c cVar = this.bs;
            if (cVar != null) {
                jSONObjectF.put("real_p", cVar.a());
                jSONObjectF.put("real_s", this.B);
                jSONObjectF.put("real_g", this.bs.b());
                jSONObjectF.put("real_t", this.bs.c());
            }
            int i11 = this.be;
            if (i11 > 0) {
                jSONObjectF.put("ads_list_type", i11);
            }
            if (this.bG) {
                jSONObjectF.put(com.anythink.core.common.h.c.aT, 1);
            }
            charSequence = "2";
        } catch (Exception e2) {
            e = e2;
            charSequence = "2";
        }
        try {
            try {
                switch (i8) {
                    case 1:
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("aprn_auto_req", G());
                        jSONObjectF.put("bidtype", this.v);
                        jSONObjectF.put("bidprice", String.valueOf(this.w));
                        str2 = "ad_reqt";
                        j2 = this.bf;
                        jSONObjectF.put(str2, j2);
                        break;
                    case 2:
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("aprn_auto_req", G());
                        jSONObjectF.put("status", this.r);
                        jSONObjectF.put("flag", this.s);
                        jSONObjectF.put("bidtype", this.v);
                        jSONObjectF.put("bidprice", String.valueOf(this.w));
                        jSONObjectF.put(ATAdConst.KEY.CP_LOAD_MODE, Z());
                        if (this.bB == 2) {
                            str3 = "filledtime";
                            j3 = this.aG;
                        } else {
                            str3 = "filledtime";
                            j3 = this.aH;
                        }
                        jSONObjectF.put(str3, j3);
                        str2 = "data_ft";
                        j2 = this.aG;
                        jSONObjectF.put(str2, j2);
                        break;
                    case 4:
                        str4 = "am_bp_type";
                        jSONObjectF.put(com.anythink.expressad.foundation.d.d.h, this.C);
                        jSONObjectF.put("ahs", this.D);
                        jSONObjectF.put("pds", this.E);
                        jSONObjectF.put("phs", this.F);
                        str5 = "phs";
                        jSONObjectF.put("cl_imp", this.aW);
                        if (!TextUtils.isEmpty(this.bm)) {
                            jSONObjectF.put(f.a.i, this.bm);
                        }
                        if (!TextUtils.isEmpty(this.bD)) {
                            jSONObjectF.put("render_w_h", this.bD);
                        }
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("aprn_auto_req", G());
                        jSONObjectF.put("bidtype", this.v);
                        d2 = this.bv;
                        if (d2 <= 0.0d) {
                            jSONObjectF.put("bidprice", String.valueOf(d2));
                            jSONObjectF.put(str4, 3);
                        } else {
                            jSONObjectF.put("bidprice", String.valueOf(this.w));
                            jSONObjectF.put(str4, this.bu ? 2 : 1);
                        }
                        jSONObjectF.put(com.anythink.core.common.j.ao, String.valueOf(this.G));
                        jSONObjectF.put("myoffer_showtype", this.y);
                        if (!TextUtils.isEmpty(this.B)) {
                            jSONObjectF.put("scenario", this.B);
                        }
                        jSONObjectF.put(com.anythink.expressad.foundation.d.d.h, this.C);
                        jSONObjectF.put("ahs", this.D);
                        jSONObjectF.put("pds", this.E);
                        jSONObjectF.put(str5, this.F);
                        i8 = i2;
                        if (i8 == 6) {
                            jSONObjectF.put("cl_s_type", this.bj);
                            jSONObjectF.put("cl_area", this.bk);
                        }
                        i4 = this.bn;
                        if (i4 > 0) {
                            jSONObjectF.put("render_type_video", i4);
                        }
                        i5 = this.bA;
                        if (i5 > 0) {
                            jSONObjectF.put("close_button_m", i5);
                        }
                        if (this.o == 2 && (map2 = this.bt) != null && map2.size() > 0) {
                            try {
                                jSONObjectF.put("am_ilrd", new JSONObject(this.bt).toString());
                            } catch (Throwable unused2) {
                            }
                        }
                        break;
                    case 6:
                        str4 = "am_bp_type";
                        str5 = "phs";
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("aprn_auto_req", G());
                        jSONObjectF.put("bidtype", this.v);
                        d2 = this.bv;
                        if (d2 <= 0.0d) {
                        }
                        jSONObjectF.put(com.anythink.core.common.j.ao, String.valueOf(this.G));
                        jSONObjectF.put("myoffer_showtype", this.y);
                        if (!TextUtils.isEmpty(this.B)) {
                        }
                        jSONObjectF.put(com.anythink.expressad.foundation.d.d.h, this.C);
                        jSONObjectF.put("ahs", this.D);
                        jSONObjectF.put("pds", this.E);
                        jSONObjectF.put(str5, this.F);
                        i8 = i2;
                        if (i8 == 6) {
                        }
                        i4 = this.bn;
                        if (i4 > 0) {
                        }
                        i5 = this.bA;
                        if (i5 > 0) {
                        }
                        if (this.o == 2) {
                            jSONObjectF.put("am_ilrd", new JSONObject(this.bt).toString());
                        }
                        break;
                    case 7:
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("aprn_auto_req", G());
                        jSONObjectF.put(NotificationCompat.CATEGORY_PROGRESS, this.t);
                        jSONObjectF.put("bidtype", this.v);
                        jSONObjectF.put("bidprice", String.valueOf(this.w));
                        i8 = i2;
                        break;
                    case 8:
                    case 9:
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("aprn_auto_req", G());
                        jSONObjectF.put("bidtype", this.v);
                        double d3 = this.bv;
                        if (d3 > 0.0d) {
                            jSONObjectF.put("bidprice", String.valueOf(d3));
                            jSONObjectF.put("am_bp_type", 3);
                        } else {
                            jSONObjectF.put("bidprice", String.valueOf(this.w));
                            jSONObjectF.put("am_bp_type", this.bu ? 2 : 1);
                        }
                        if (!TextUtils.isEmpty(this.B)) {
                            jSONObjectF.put("scenario", this.B);
                        }
                        if (this.o == 2 && (map3 = this.bt) != null && map3.size() > 0) {
                            try {
                                jSONObjectF.put("am_ilrd", new JSONObject(this.bt).toString());
                                break;
                            } catch (Throwable unused3) {
                            }
                        }
                        i8 = i2;
                        break;
                    case 10:
                        jSONObjectF.put("isload", this.H ? 1 : 0);
                        jSONObjectF.put(com.anythink.expressad.foundation.d.r.ac, this.I);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("req_par", this.bh);
                        str6 = "req_par_num";
                        i6 = this.bi;
                        jSONObjectF.put(str6, i6);
                        i8 = i2;
                        break;
                    case 11:
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("bidrequesttime", this.K);
                        jSONObjectF.put("bidresponselist", TextUtils.isEmpty(this.M) ? kx.OooOOO : new JSONArray(this.M));
                        if (this.bB == 2) {
                            jSONObjectF.put("bidresponsetime", this.L);
                            str7 = "data_bidresponsetime";
                            j4 = this.L;
                        } else {
                            jSONObjectF.put("data_bidresponsetime", this.bH);
                            str7 = "bidresponsetime";
                            j4 = this.L;
                        }
                        jSONObjectF.put(str7, j4);
                        i8 = i2;
                        break;
                    case 12:
                        jSONObjectF.put("loadtime", this.aH);
                        jSONObjectF.put("gro_id", this.av);
                        int i12 = this.I;
                        if (i12 != 5) {
                            switch (i12) {
                                case 9:
                                case 10:
                                case 11:
                                    jSONObjectF.put(com.anythink.expressad.foundation.d.r.ac, i12);
                                    break;
                            }
                            jSONObjectF.put("req_par", this.bh);
                            str6 = "req_par_num";
                            i6 = this.bi;
                            jSONObjectF.put(str6, i6);
                            i8 = i2;
                            break;
                        }
                        break;
                    case 13:
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("bidtype", this.v);
                        jSONObjectF.put("bidprice", String.valueOf(this.w));
                        jSONObjectF.put(com.anythink.core.common.j.ao, String.valueOf(this.G));
                        jSONObjectF.put("as_result", !TextUtils.isEmpty(this.J) ? kx.OooOOO : new JSONArray(this.J));
                        jSONObjectF.put("new_req_id", this.ak);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("req_id_match", 0);
                        jSONObjectF.put("myoffer_showtype", this.y);
                        if (!TextUtils.isEmpty(this.B)) {
                            jSONObjectF.put("scenario", this.B);
                        }
                        jSONObjectF.put(com.anythink.expressad.foundation.d.d.h, this.C);
                        jSONObjectF.put("ahs", this.D);
                        jSONObjectF.put("pds", this.E);
                        jSONObjectF.put("phs", this.F);
                        i7 = this.I;
                        if (i7 != 12) {
                            jSONObjectF.put(com.anythink.expressad.foundation.d.r.ac, i7);
                        }
                        i8 = i2;
                        break;
                    case 15:
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("bidresponselist", TextUtils.isEmpty(this.M) ? kx.OooOOO : new JSONArray(this.M));
                        i8 = i2;
                        break;
                    case 16:
                        jSONObjectF.put("ad_ch_st", this.bc);
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("gro_id", this.av);
                        jSONObjectF.put("bidtype", this.v);
                        jSONObjectF.put("bidprice", String.valueOf(this.w));
                        jSONObjectF.put(com.anythink.core.common.j.ao, String.valueOf(this.G));
                        jSONObjectF.put("as_result", !TextUtils.isEmpty(this.J) ? kx.OooOOO : new JSONArray(this.J));
                        jSONObjectF.put("new_req_id", this.ak);
                        jSONObjectF.put("auto_req", this.q);
                        jSONObjectF.put("req_id_match", 0);
                        jSONObjectF.put("myoffer_showtype", this.y);
                        if (!TextUtils.isEmpty(this.B)) {
                        }
                        jSONObjectF.put(com.anythink.expressad.foundation.d.d.h, this.C);
                        jSONObjectF.put("ahs", this.D);
                        jSONObjectF.put("pds", this.E);
                        jSONObjectF.put("phs", this.F);
                        i7 = this.I;
                        if (i7 != 12) {
                        }
                        i8 = i2;
                        break;
                    case 18:
                    case 20:
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("app_nm", this.aY);
                        break;
                    case 19:
                        jSONObjectF.put("dl_ts", this.aZ);
                        jSONObjectF.put("unit_id", this.aI);
                        jSONObjectF.put("nw_firm_id", this.o);
                        jSONObjectF.put("app_nm", this.aY);
                        break;
                }
            } catch (Exception e3) {
                e = e3;
                i8 = i2;
                e.printStackTrace();
                if (TextUtils.equals(this.al, charSequence)) {
                    if (this.bg != 0) {
                        StringBuilder sb = new StringBuilder("Banner广告上使用自渲染原生广告 >>> tk = ");
                        sb.append(i8);
                        sb.append(" bnTemplateId = ");
                        sb.append(this.by);
                        sb.append(" bnClickArea = ");
                        sb.append(this.bx);
                        jSONObjectF.put(f.a.aq, this.by);
                        map = this.br;
                        if (map != null) {
                        }
                        if (i8 == 6) {
                            jSONObjectF.put("bn_click_area", i3);
                        }
                    }
                }
                com.anythink.core.common.n.b bVarA = com.anythink.core.common.n.b.a();
                if (i8 != 4) {
                }
                return jSONObjectF;
            }
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
            if (TextUtils.equals(this.al, charSequence)) {
            }
            com.anythink.core.common.n.b bVarA2 = com.anythink.core.common.n.b.a();
            if (i8 != 4) {
            }
            return jSONObjectF;
        }
        try {
            if (TextUtils.equals(this.al, charSequence) && (i8 == 1 || i8 == 2 || i8 == 4 || i8 == 13 || i8 == 11 || i8 == 6)) {
                if (this.bg != 0 || i8 == 11) {
                    StringBuilder sb2 = new StringBuilder("Banner广告上使用自渲染原生广告 >>> tk = ");
                    sb2.append(i8);
                    sb2.append(" bnTemplateId = ");
                    sb2.append(this.by);
                    sb2.append(" bnClickArea = ");
                    sb2.append(this.bx);
                    jSONObjectF.put(f.a.aq, this.by);
                }
                map = this.br;
                if (map != null) {
                    Object obj = map.get(ATAdConst.KEY.AD_WIDTH);
                    Object obj2 = this.br.get(ATAdConst.KEY.AD_HEIGHT);
                    if (obj != null) {
                        try {
                            jSONObjectF.put("bn_width", Integer.parseInt(obj.toString()));
                        } catch (Exception e5) {
                            new StringBuilder("parse ad width failed: ").append(e5.getMessage());
                        }
                    }
                    if (obj2 != null) {
                        try {
                            jSONObjectF.put("bn_height", Integer.parseInt(obj2.toString()));
                        } catch (Exception e6) {
                            new StringBuilder("parse ad height failed: ").append(e6.getMessage());
                        }
                    }
                }
                if (i8 == 6 && (i3 = this.bx) != 0) {
                    jSONObjectF.put("bn_click_area", i3);
                }
            }
        } catch (Exception unused4) {
        }
        com.anythink.core.common.n.b bVarA22 = com.anythink.core.common.n.b.a();
        try {
            if (i8 != 4) {
                if (i8 == 6 && this.o == 66) {
                    jB = com.anythink.core.common.n.b.b(this);
                    if (jB > 0) {
                        str = "s_c_interval";
                        jSONObjectF.put(str, jB);
                    }
                }
            } else if (!"0".equals(this.al)) {
                long jA = bVarA22.a(this);
                if (jA > 0) {
                    jSONObjectF.put("pl_show_interval", jA);
                }
                jB = bVarA22.b();
                if (jB > 0) {
                    str = "bidads_show_interval";
                    jSONObjectF.put(str, jB);
                }
            }
        } catch (Throwable th) {
            new StringBuilder("fillAdShowInterval() >>> ").append(th.getMessage());
        }
        return jSONObjectF;
    }

    public final int G() {
        int i2 = this.bd;
        if (i2 != 8) {
            return i2 != 9 ? 0 : 1;
        }
        return 2;
    }

    public final void G(int i2) {
        this.bx = i2;
    }

    public final int H() {
        return this.aD;
    }

    public final void H(int i2) {
        this.by = i2;
    }

    public final int I() {
        return this.aE;
    }

    public final void I(int i2) {
        this.bC = i2;
    }

    public final int J() {
        return this.ay;
    }

    public final int K() {
        return this.az;
    }

    public final String L() {
        return this.aA;
    }

    public final int M() {
        return this.aB;
    }

    public final int N() {
        return this.aC;
    }

    public final String O() {
        return this.ax;
    }

    public final int P() {
        return this.o;
    }

    public final int Q() {
        return this.av;
    }

    public final long R() {
        return this.aG;
    }

    public final long S() {
        return this.aH;
    }

    public final int T() {
        return this.bg;
    }

    public final int U() {
        return this.bl;
    }

    public final h V() {
        try {
            h hVar = (h) super.clone();
            hVar.bo = this.bo;
            hVar.br = this.br;
            hVar.bp = this.bp;
            hVar.bq = this.bq;
            hVar.bt = this.bt;
            hVar.bs = this.bs;
            hVar.bB = this.bB;
            hVar.bH = this.bH;
            return hVar;
        } catch (Throwable unused) {
            return this;
        }
    }

    public final int W() {
        return this.bC;
    }

    public final boolean X() {
        return this.bG;
    }

    public final long a() {
        return this.bE;
    }

    public final void a(double d2) {
        this.bz = d2;
    }

    public final void a(int i2) {
        this.bA = i2;
    }

    public final void a(int i2, int i3) {
        this.bD = i2 + "_" + i3;
    }

    public final void a(long j2) {
        this.bE = j2;
    }

    public final void a(ATRewardInfo aTRewardInfo) {
        this.bo = aTRewardInfo;
    }

    public final void a(c cVar) {
        this.bs = cVar;
    }

    public final void a(String str) {
        this.bm = str;
    }

    public final void a(Map<String, Object> map) {
        this.bt = map;
    }

    public final void a(boolean z) {
        this.bu = z;
    }

    public final long b() {
        return this.bF;
    }

    public final void b(double d2) {
        this.bv = d2;
    }

    public final void b(int i2) {
        this.bw = i2;
    }

    public final void b(long j2) {
        this.bF = j2;
    }

    public final void b(String str) {
        this.aY = str;
    }

    public final void b(Map<String, Object> map) {
        this.br = map;
    }

    public final void b(boolean z) {
        this.H = z;
    }

    public final void c() {
        this.bB = 2;
    }

    public final void c(double d2) {
        this.G = d2;
    }

    public final void c(int i2) {
        this.bh = i2;
    }

    public final void c(long j2) {
        this.bf = j2;
    }

    public final void c(String str) {
        this.aV = str;
    }

    public final void c(Map<String, ATRewardInfo> map) {
        this.bp = map;
    }

    public final void c(boolean z) {
        this.bG = z;
    }

    public final double d() {
        return this.bz;
    }

    public final void d(double d2) {
        this.aS = d2;
    }

    public final void d(int i2) {
        this.bi = i2;
    }

    public final void d(long j2) {
        this.aZ = j2;
    }

    public final void d(String str) {
        this.aQ = str;
    }

    public final void d(Map<String, Object> map) {
        this.bq = map;
    }

    public final String e() {
        c cVar = this.bs;
        return cVar != null ? cVar.a() : "";
    }

    public final void e(double d2) {
        this.aP = d2;
    }

    public final void e(int i2) {
        this.bd = i2;
    }

    public final void e(long j2) {
        this.aG = j2;
    }

    public final void e(String str) {
        this.aT = str;
    }

    public final Map<String, Object> f() {
        return this.bt;
    }

    public final void f(double d2) {
        this.w = d2;
    }

    public final void f(int i2) {
        this.be = i2;
    }

    public final void f(long j2) {
        this.aH = j2;
    }

    public final void f(String str) {
        this.x = str;
    }

    public final int g() {
        return this.bw;
    }

    public final void g(int i2) {
        this.bc = i2;
    }

    public final void g(long j2) {
        this.K = j2;
    }

    public final void g(String str) {
        this.aJ = str;
    }

    public final Map<String, Object> h() {
        return this.br;
    }

    public final void h(int i2) {
        this.bb = i2;
    }

    public final void h(long j2) {
        this.L = j2;
    }

    public final void h(String str) {
        this.aK = str;
    }

    public final int i() {
        return this.be;
    }

    public final void i(int i2) {
        this.ba = i2;
    }

    public final void i(long j2) {
        this.bH = j2;
    }

    public final void i(String str) {
        this.aM = str;
    }

    public final int j() {
        return this.ba;
    }

    public final void j(int i2) {
        this.C = i2;
    }

    public final void j(String str) {
        this.aN = str;
    }

    public final void k() {
        this.aX = 1;
    }

    public final void k(int i2) {
        this.D = i2;
    }

    public final void k(String str) {
        this.aO = str;
    }

    public final void l() {
        if (this.aX != 1) {
            this.aW = 1;
        }
    }

    public final void l(int i2) {
        this.E = i2;
    }

    public final void l(String str) {
        this.aI = str;
    }

    public final String m() {
        return this.aV;
    }

    public final void m(int i2) {
        this.F = i2;
    }

    public final void m(String str) {
        this.aA = str;
    }

    public final double n() {
        return this.aS;
    }

    public final void n(int i2) {
        this.aL = i2;
    }

    public final void n(String str) {
        this.ax = str;
    }

    public final double o() {
        return this.aP;
    }

    public final void o(int i2) {
        this.bn = i2;
    }

    public final void o(String str) {
        this.aw = str;
    }

    public final String p() {
        return this.aQ;
    }

    public final void p(int i2) {
        this.z = i2;
    }

    public final void p(String str) {
        this.aU = str;
    }

    public final String q() {
        return this.aT;
    }

    public final void q(int i2) {
        this.A = i2;
    }

    public final void q(String str) {
        this.J = str;
    }

    public final String r() {
        return this.x;
    }

    public final void r(int i2) {
        this.v = i2;
    }

    public final void r(String str) {
        this.M = str;
    }

    public final String s() {
        return this.aJ;
    }

    public final void s(int i2) {
        this.aD = i2;
    }

    public final String t() {
        return this.aK;
    }

    public final void t(int i2) {
        this.aE = i2;
    }

    public final int u() {
        return this.aL;
    }

    public final void u(int i2) {
        this.ay = i2;
    }

    public final String v() {
        return this.aM;
    }

    public final void v(int i2) {
        this.az = i2;
    }

    public final String w() {
        return this.aN;
    }

    public final void w(int i2) {
        this.aB = i2;
    }

    public final String x() {
        return this.aO;
    }

    public final void x(int i2) {
        this.aC = i2;
    }

    public final Map<String, ATRewardInfo> y() {
        return this.bp;
    }

    public final void y(int i2) {
        this.o = i2;
    }

    public final ATRewardInfo z() {
        return this.bo;
    }

    public final void z(int i2) {
        this.av = i2;
    }
}
