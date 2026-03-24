package com.anythink.core.common.f;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class z extends l<ab> {
    public static final int a = 1;
    public static final int b = 2;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private String ak;
    private String al;
    private long am;
    private int an;
    private String ao;
    private String ap;
    private String aq;
    private String ar;
    private String as;
    public int c;
    public long d;
    public String e = "";

    private String aj() {
        return this.as;
    }

    private int ak() {
        return this.c;
    }

    private long al() {
        return this.d;
    }

    private long am() {
        return this.am;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0080, code lost:
    
        if (android.text.TextUtils.isEmpty(r10.q) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0094, code lost:
    
        if (android.text.TextUtils.isEmpty(r10.q) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ac, code lost:
    
        if (android.text.TextUtils.isEmpty(r10.q) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ae, code lost:
    
        r0.add(r10.q);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b6, code lost:
    
        r5 = false;
        r6 = false;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<String> b(ab abVar) {
        boolean z;
        String str;
        boolean z3;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        TextUtils.equals(String.valueOf(abVar.z()), "0");
        if (TextUtils.equals(String.valueOf(abVar.z()), "2")) {
            String strX = abVar.x();
            byte b2 = -1;
            switch (strX.hashCode()) {
                case -559799608:
                    if (strX.equals(n.c)) {
                        b2 = 1;
                    }
                    break;
                case 1507809730:
                    if (strX.equals(n.a)) {
                        b2 = 3;
                    }
                    break;
                case 1507809854:
                    if (strX.equals(n.b)) {
                        b2 = 0;
                    }
                    break;
                case 1622564786:
                    if (strX.equals(n.d)) {
                        b2 = 2;
                    }
                    break;
            }
            if (b2 != 0) {
                if (b2 != 1) {
                    if (b2 != 2) {
                        if (!TextUtils.isEmpty(this.ao)) {
                            str = this.ao;
                        }
                        z3 = false;
                        z = true;
                        if (!z3) {
                            if (TextUtils.isEmpty(this.o)) {
                                z = false;
                            } else {
                                arrayList.add(this.o);
                            }
                        }
                        if (!z) {
                            stringBuffer.append(strX);
                            stringBuffer.append(" url,");
                        }
                        if (!TextUtils.isEmpty(this.r)) {
                            arrayList.add(this.r);
                        }
                    } else if (!TextUtils.isEmpty(this.ar)) {
                        str = this.ar;
                    }
                    arrayList.add(str);
                    z3 = true;
                    z = true;
                    if (!z3) {
                    }
                    if (!z) {
                    }
                    if (!TextUtils.isEmpty(this.r)) {
                    }
                } else if (!TextUtils.isEmpty(this.aq)) {
                    str = this.aq;
                    arrayList.add(str);
                    z3 = true;
                    z = true;
                    if (!z3) {
                    }
                    if (!z) {
                    }
                    if (!TextUtils.isEmpty(this.r)) {
                    }
                }
            } else if (!TextUtils.isEmpty(this.ap)) {
                str = this.ap;
                arrayList.add(str);
                z3 = true;
                z = true;
                if (!z3) {
                }
                if (!z) {
                }
                if (!TextUtils.isEmpty(this.r)) {
                }
            }
        } else {
            z = true;
        }
        if (TextUtils.equals(String.valueOf(abVar.z()), "1")) {
            if (TextUtils.isEmpty(this.o)) {
                stringBuffer.append("icon_u,");
                z = false;
            } else {
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
            if (TextUtils.isEmpty(this.t)) {
                stringBuffer.append("video_u,");
                z = false;
            } else {
                arrayList.add(this.t);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(abVar.z());
        if (TextUtils.equals(sb.toString(), "3")) {
            if (TextUtils.isEmpty(this.o)) {
                stringBuffer.append("icon_u,");
                z = false;
            } else {
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
            if (this.y == 1) {
                if (TextUtils.isEmpty(this.t)) {
                    stringBuffer.append("video_u,");
                    z = false;
                } else {
                    arrayList.add(this.t);
                }
            }
        }
        if (TextUtils.equals(String.valueOf(abVar.z()), "4")) {
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
        this.e = stringBuffer.substring(0, stringBuffer.length() - 1);
        return null;
    }

    private void b(int i) {
        this.c = i;
    }

    private void b(long j) {
        this.d = j;
    }

    public final void F(String str) {
        this.ap = str;
    }

    public final void G(String str) {
        this.aq = str;
    }

    public final void H(String str) {
        this.ar = str;
    }

    public final void I(String str) {
        this.ac = str;
    }

    public final void J(String str) {
        this.ad = str;
    }

    public final void K(String str) {
        this.ae = str;
    }

    public final void L(String str) {
        this.af = str;
    }

    public final void M(String str) {
        this.ag = str;
    }

    public final void N(String str) {
        this.ah = str;
    }

    public final void O(String str) {
        this.ai = str;
    }

    public final void P(String str) {
        this.aj = str;
    }

    public final void Q(String str) {
        this.ak = str;
    }

    public final void R(String str) {
        this.al = str;
    }

    public final String S(String str) {
        try {
            JSONObject jSONObject = new JSONObject(this.as);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                str = str.replaceAll("\\{" + next + "\\}", jSONObject.optString(next));
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    public final int Y() {
        return this.an;
    }

    public final String Z() {
        return this.ac;
    }

    public final String a() {
        return this.ao;
    }

    public final void a(int i) {
        this.an = i;
    }

    public final void a(long j) {
        this.am = j;
    }

    public final void a(String str) {
        this.as = str;
    }

    public final boolean a(ab abVar) {
        return abVar == null || System.currentTimeMillis() - this.am > abVar.G();
    }

    public final String aa() {
        return this.ad;
    }

    public final String ab() {
        return this.ae;
    }

    public final String ac() {
        return this.af;
    }

    public final String ad() {
        return this.ag;
    }

    public final String ae() {
        return this.ah;
    }

    public final String af() {
        return this.ai;
    }

    public final String ag() {
        return this.aj;
    }

    public final String ah() {
        return this.ak;
    }

    public final String ai() {
        return this.al;
    }

    public final String b() {
        return this.ap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0082, code lost:
    
        if (android.text.TextUtils.isEmpty(r10.q) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0096, code lost:
    
        if (android.text.TextUtils.isEmpty(r10.q) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ae, code lost:
    
        if (android.text.TextUtils.isEmpty(r10.q) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b0, code lost:
    
        r0.add(r10.q);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b8, code lost:
    
        r5 = false;
        r6 = false;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00dd  */
    @Override // com.anythink.core.common.f.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ List b(n nVar) {
        boolean z;
        String str;
        boolean z3;
        ab abVar = (ab) nVar;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        TextUtils.equals(String.valueOf(abVar.z()), "0");
        if (TextUtils.equals(String.valueOf(abVar.z()), "2")) {
            String strX = abVar.x();
            byte b2 = -1;
            switch (strX.hashCode()) {
                case -559799608:
                    if (strX.equals(n.c)) {
                        b2 = 1;
                    }
                    break;
                case 1507809730:
                    if (strX.equals(n.a)) {
                        b2 = 3;
                    }
                    break;
                case 1507809854:
                    if (strX.equals(n.b)) {
                        b2 = 0;
                    }
                    break;
                case 1622564786:
                    if (strX.equals(n.d)) {
                        b2 = 2;
                    }
                    break;
            }
            if (b2 != 0) {
                if (b2 != 1) {
                    if (b2 != 2) {
                        if (!TextUtils.isEmpty(this.ao)) {
                            str = this.ao;
                        }
                        z3 = false;
                        z = true;
                        if (!z3) {
                            if (TextUtils.isEmpty(this.o)) {
                                z = false;
                            } else {
                                arrayList.add(this.o);
                            }
                        }
                        if (!z) {
                            stringBuffer.append(strX);
                            stringBuffer.append(" url,");
                        }
                        if (!TextUtils.isEmpty(this.r)) {
                            arrayList.add(this.r);
                        }
                    } else if (!TextUtils.isEmpty(this.ar)) {
                        str = this.ar;
                    }
                    arrayList.add(str);
                    z3 = true;
                    z = true;
                    if (!z3) {
                    }
                    if (!z) {
                    }
                    if (!TextUtils.isEmpty(this.r)) {
                    }
                } else if (!TextUtils.isEmpty(this.aq)) {
                    str = this.aq;
                    arrayList.add(str);
                    z3 = true;
                    z = true;
                    if (!z3) {
                    }
                    if (!z) {
                    }
                    if (!TextUtils.isEmpty(this.r)) {
                    }
                }
            } else if (!TextUtils.isEmpty(this.ap)) {
                str = this.ap;
                arrayList.add(str);
                z3 = true;
                z = true;
                if (!z3) {
                }
                if (!z) {
                }
                if (!TextUtils.isEmpty(this.r)) {
                }
            }
        } else {
            z = true;
        }
        if (TextUtils.equals(String.valueOf(abVar.z()), "1")) {
            if (TextUtils.isEmpty(this.o)) {
                stringBuffer.append("icon_u,");
                z = false;
            } else {
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
            if (TextUtils.isEmpty(this.t)) {
                stringBuffer.append("video_u,");
                z = false;
            } else {
                arrayList.add(this.t);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(abVar.z());
        if (TextUtils.equals(sb.toString(), "3")) {
            if (TextUtils.isEmpty(this.o)) {
                stringBuffer.append("icon_u,");
                z = false;
            } else {
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
            if (this.y == 1) {
                if (TextUtils.isEmpty(this.t)) {
                    stringBuffer.append("video_u,");
                    z = false;
                } else {
                    arrayList.add(this.t);
                }
            }
        }
        if (TextUtils.equals(String.valueOf(abVar.z()), "4")) {
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
        this.e = stringBuffer.substring(0, stringBuffer.length() - 1);
        return null;
    }

    public final void b(String str) {
        this.ao = str;
    }

    public final String c() {
        return this.aq;
    }

    @Override // com.anythink.core.common.f.l
    public final int d() {
        return 1;
    }

    public final String e() {
        return this.ar;
    }

    @Override // com.anythink.core.common.f.l
    public final String q() {
        return this.e;
    }
}
