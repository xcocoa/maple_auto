package com.anythink.core.common.f;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class aj extends l<ak> {
    public static final int ag = 1;
    public static final int ah = 2;
    public static final int ai = 3;
    public static final int aj = 4;
    public static final int ak = 5;
    public static final int al = 6;
    private int a;
    private int aA;
    public long ac;
    public String ad;
    public String ae;
    public int af;
    public String am;
    public String an;
    public al ao;
    public int ap;
    public String aq;
    public long ar;
    public long as;
    public long at;
    public String au = "";
    private String av;
    private String aw;
    private String ax;
    private String ay;
    private int az;
    private int b;
    private int c;
    private int d;
    private String e;

    private long a() {
        return this.ar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0125, code lost:
    
        if (android.text.TextUtils.isEmpty(r8.q) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x013c, code lost:
    
        if (android.text.TextUtils.isEmpty(r8.q) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x013e, code lost:
    
        r6 = r8.q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0144, code lost:
    
        r1.append("full_u,");
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<String> a(ak akVar) {
        boolean z;
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        if (!TextUtils.equals(String.valueOf(akVar.z()), "1")) {
            z = true;
        } else if (k()) {
            z = true;
            if (TextUtils.isEmpty(this.t)) {
                if (akVar.aj() != 1 && akVar.ak() <= 0) {
                    stringBuffer.append("video_u,");
                } else if (akVar.ak() != 1) {
                    if (TextUtils.isEmpty(this.q)) {
                        stringBuffer.append("full_u,");
                    } else if (!arrayList.contains(this.q)) {
                        str2 = this.q;
                    }
                }
                z = false;
            } else {
                str2 = this.t;
            }
            arrayList.add(str2);
        } else {
            if (!TextUtils.isEmpty(this.o)) {
                arrayList.add(this.o);
            }
            if (!TextUtils.isEmpty(this.r)) {
                arrayList.add(this.r);
            }
            if (TextUtils.isEmpty(this.q)) {
                stringBuffer.append("full_u,");
                z = false;
                if (TextUtils.isEmpty(this.t)) {
                }
                arrayList.add(str2);
            } else {
                arrayList.add(this.q);
                z = true;
                if (TextUtils.isEmpty(this.t)) {
                }
                arrayList.add(str2);
            }
        }
        if (TextUtils.equals(String.valueOf(akVar.z()), "3")) {
            if (!k()) {
                if (!TextUtils.isEmpty(this.o)) {
                    arrayList.add(this.o);
                }
                if (!TextUtils.isEmpty(this.r)) {
                    arrayList.add(this.r);
                }
                if (TextUtils.isEmpty(this.q)) {
                    stringBuffer.append("full_u,");
                    z = false;
                } else {
                    arrayList.add(this.q);
                }
            }
            if (I()) {
                arrayList.add(this.t);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(akVar.z());
        if (TextUtils.equals(sb.toString(), "2")) {
            int i = this.af;
            if (i != 1) {
                if (i == 2) {
                    if (TextUtils.isEmpty(this.am)) {
                        str = "img_list,";
                        stringBuffer.append(str);
                        z = false;
                    }
                } else if (i != 3) {
                    if (i == 4) {
                    }
                } else if (TextUtils.equals(n.a, akVar.x())) {
                    if (TextUtils.isEmpty(this.o)) {
                        str = "icon_u,";
                        stringBuffer.append(str);
                        z = false;
                    } else {
                        String str3 = this.o;
                        arrayList.add(str3);
                    }
                }
            }
            if (!TextUtils.isEmpty(this.r)) {
                arrayList.add(this.r);
            }
        }
        if (TextUtils.equals(String.valueOf(akVar.z()), "4")) {
            if (1 != this.af && !TextUtils.isEmpty(this.o)) {
                arrayList.add(this.o);
            }
            if (!TextUtils.isEmpty(this.r)) {
                arrayList.add(this.r);
            }
            if (TextUtils.isEmpty(this.q)) {
                stringBuffer.append("full_u,");
                z = false;
            } else {
                arrayList.add(this.q);
            }
        }
        if (z) {
            return arrayList;
        }
        this.au = stringBuffer.substring(0, stringBuffer.length() - 1);
        return null;
    }

    private void a(int i) {
        this.ap = i;
    }

    private String al() {
        return this.ae;
    }

    private String am() {
        return this.an;
    }

    private int an() {
        return this.a;
    }

    private int ao() {
        return this.b;
    }

    private int ap() {
        return this.c;
    }

    private int aq() {
        return this.d;
    }

    private int b() {
        return this.ap;
    }

    private long c() {
        return this.ac;
    }

    private String e() {
        return this.ad;
    }

    public final void F(String str) {
        this.e = str;
    }

    public final void G(String str) {
        this.av = str;
    }

    public final void H(String str) {
        this.aw = str;
    }

    public final void I(String str) {
        this.ax = str;
    }

    public final void J(String str) {
        this.ay = str;
    }

    public final void K(String str) {
        this.ad = str;
    }

    public final void L(String str) {
        this.ae = str;
    }

    public final void M(String str) {
        this.am = str;
    }

    public final void N(String str) {
        this.an = str;
    }

    public final void O(String str) {
        this.aq = str;
    }

    public final boolean Y() {
        return System.currentTimeMillis() >= this.at;
    }

    public final long Z() {
        return this.at;
    }

    public final void a(long j) {
        this.ar = j;
        this.at = this.as + j;
    }

    public final void a(al alVar) {
        this.ao = alVar;
    }

    public final boolean a(boolean z, boolean z3) {
        return z ? z3 ? this.a == 1 : this.b == 1 : z3 ? this.c == 1 : this.d == 1;
    }

    public final String aa() {
        return this.e;
    }

    public final String ab() {
        return this.av;
    }

    public final String ac() {
        return this.aw;
    }

    public final String ad() {
        return this.ax;
    }

    public final String ae() {
        return this.ay;
    }

    public final int af() {
        return this.az;
    }

    public final int ag() {
        return this.aA;
    }

    public final al ah() {
        return this.ao;
    }

    public final int ai() {
        return this.af;
    }

    public final String aj() {
        return this.am;
    }

    public final String ak() {
        return this.aq;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0127, code lost:
    
        if (android.text.TextUtils.isEmpty(r8.q) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x013e, code lost:
    
        if (android.text.TextUtils.isEmpty(r8.q) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0140, code lost:
    
        r6 = r8.q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0146, code lost:
    
        r1.append("full_u,");
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x012a  */
    @Override // com.anythink.core.common.f.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ List b(n nVar) {
        boolean z;
        String str;
        String str2;
        ak akVar = (ak) nVar;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        if (!TextUtils.equals(String.valueOf(akVar.z()), "1")) {
            z = true;
        } else if (k()) {
            z = true;
            if (TextUtils.isEmpty(this.t)) {
                if (akVar.aj() != 1 && akVar.ak() <= 0) {
                    stringBuffer.append("video_u,");
                } else if (akVar.ak() != 1) {
                    if (TextUtils.isEmpty(this.q)) {
                        stringBuffer.append("full_u,");
                    } else if (!arrayList.contains(this.q)) {
                        str2 = this.q;
                    }
                }
                z = false;
            } else {
                str2 = this.t;
            }
            arrayList.add(str2);
        } else {
            if (!TextUtils.isEmpty(this.o)) {
                arrayList.add(this.o);
            }
            if (!TextUtils.isEmpty(this.r)) {
                arrayList.add(this.r);
            }
            if (TextUtils.isEmpty(this.q)) {
                stringBuffer.append("full_u,");
                z = false;
                if (TextUtils.isEmpty(this.t)) {
                }
                arrayList.add(str2);
            } else {
                arrayList.add(this.q);
                z = true;
                if (TextUtils.isEmpty(this.t)) {
                }
                arrayList.add(str2);
            }
        }
        if (TextUtils.equals(String.valueOf(akVar.z()), "3")) {
            if (!k()) {
                if (!TextUtils.isEmpty(this.o)) {
                    arrayList.add(this.o);
                }
                if (!TextUtils.isEmpty(this.r)) {
                    arrayList.add(this.r);
                }
                if (TextUtils.isEmpty(this.q)) {
                    stringBuffer.append("full_u,");
                    z = false;
                } else {
                    arrayList.add(this.q);
                }
            }
            if (I()) {
                arrayList.add(this.t);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(akVar.z());
        if (TextUtils.equals(sb.toString(), "2")) {
            int i = this.af;
            if (i != 1) {
                if (i == 2) {
                    if (TextUtils.isEmpty(this.am)) {
                        str = "img_list,";
                        stringBuffer.append(str);
                        z = false;
                    }
                } else if (i != 3) {
                    if (i == 4) {
                    }
                } else if (TextUtils.equals(n.a, akVar.x())) {
                    if (TextUtils.isEmpty(this.o)) {
                        str = "icon_u,";
                        stringBuffer.append(str);
                        z = false;
                    } else {
                        String str3 = this.o;
                        arrayList.add(str3);
                    }
                }
            }
            if (!TextUtils.isEmpty(this.r)) {
                arrayList.add(this.r);
            }
        }
        if (TextUtils.equals(String.valueOf(akVar.z()), "4")) {
            if (1 != this.af && !TextUtils.isEmpty(this.o)) {
                arrayList.add(this.o);
            }
            if (!TextUtils.isEmpty(this.r)) {
                arrayList.add(this.r);
            }
            if (TextUtils.isEmpty(this.q)) {
                stringBuffer.append("full_u,");
                z = false;
            } else {
                arrayList.add(this.q);
            }
        }
        if (z) {
            return arrayList;
        }
        this.au = stringBuffer.substring(0, stringBuffer.length() - 1);
        return null;
    }

    public final void b(long j) {
        this.as = j;
    }

    public final void c(long j) {
        this.at = j;
    }

    public final void d(long j) {
        this.ac = j;
    }

    public final void o(int i) {
        this.az = i;
    }

    public final void p(int i) {
        this.aA = i;
    }

    @Override // com.anythink.core.common.f.l
    public final String q() {
        return this.au;
    }

    public final void q(int i) {
        this.af = i;
    }

    public final void r(int i) {
        this.a = i;
    }

    public final void s(int i) {
        this.b = i;
    }

    public final void t(int i) {
        this.c = i;
    }

    public final void u(int i) {
        this.d = i;
    }
}
