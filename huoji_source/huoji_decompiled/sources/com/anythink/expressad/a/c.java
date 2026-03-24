package com.anythink.expressad.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.anythink.expressad.foundation.g.g.a;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.URL;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {
    private static final boolean i = true;
    private int l;
    private com.anythink.expressad.foundation.g.g.c o;
    private h p;
    private int j = 0;
    private String k = null;
    public b a = null;
    private e m = null;
    private boolean n = true;
    private Handler q = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.anythink.expressad.a.c$1, reason: invalid class name */
    public class AnonymousClass1 implements a.b {
        private AnonymousClass1() {
        }

        @Override // com.anythink.expressad.foundation.g.g.a.b
        public final void a(a.EnumC0136a enumC0136a) {
            if (enumC0136a == a.EnumC0136a.FINISH && c.this.n) {
                c.this.q.post(new Runnable() { // from class: com.anythink.expressad.a.c.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (c.this.m != null) {
                            if (c.this.a.g()) {
                                e unused = c.this.m;
                            } else {
                                e unused2 = c.this.m;
                                c.this.a.h();
                            }
                        }
                    }
                });
            }
        }
    }

    public class a extends com.anythink.expressad.foundation.g.g.a {
        private a() {
        }

        private /* synthetic */ a(c cVar, byte b) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:108:0x009e A[EDGE_INSN: B:108:0x009e->B:32:0x009e BREAK  A[LOOP:0: B:5:0x000b->B:68:0x0138], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0107 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0101 A[Catch: Exception -> 0x01de, TryCatch #2 {Exception -> 0x01de, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001e, B:17:0x0085, B:47:0x00cb, B:49:0x00d1, B:51:0x00d9, B:54:0x00e2, B:56:0x00f1, B:57:0x00f5, B:55:0x00ea, B:58:0x00f9, B:59:0x0101, B:61:0x0107, B:62:0x010c, B:64:0x0118, B:65:0x0122, B:68:0x0138, B:34:0x00b2, B:37:0x00b8, B:72:0x0140, B:73:0x0143, B:74:0x0144, B:76:0x0156, B:79:0x0169, B:81:0x0179, B:82:0x018f, B:90:0x01cf, B:83:0x0193, B:85:0x019b, B:88:0x01ac, B:87:0x01a5, B:89:0x01b8), top: B:97:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x010c A[Catch: Exception -> 0x01de, TryCatch #2 {Exception -> 0x01de, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001e, B:17:0x0085, B:47:0x00cb, B:49:0x00d1, B:51:0x00d9, B:54:0x00e2, B:56:0x00f1, B:57:0x00f5, B:55:0x00ea, B:58:0x00f9, B:59:0x0101, B:61:0x0107, B:62:0x010c, B:64:0x0118, B:65:0x0122, B:68:0x0138, B:34:0x00b2, B:37:0x00b8, B:72:0x0140, B:73:0x0143, B:74:0x0144, B:76:0x0156, B:79:0x0169, B:81:0x0179, B:82:0x018f, B:90:0x01cf, B:83:0x0193, B:85:0x019b, B:88:0x01ac, B:87:0x01a5, B:89:0x01b8), top: B:97:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0140 A[Catch: Exception -> 0x01de, TryCatch #2 {Exception -> 0x01de, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001e, B:17:0x0085, B:47:0x00cb, B:49:0x00d1, B:51:0x00d9, B:54:0x00e2, B:56:0x00f1, B:57:0x00f5, B:55:0x00ea, B:58:0x00f9, B:59:0x0101, B:61:0x0107, B:62:0x010c, B:64:0x0118, B:65:0x0122, B:68:0x0138, B:34:0x00b2, B:37:0x00b8, B:72:0x0140, B:73:0x0143, B:74:0x0144, B:76:0x0156, B:79:0x0169, B:81:0x0179, B:82:0x018f, B:90:0x01cf, B:83:0x0193, B:85:0x019b, B:88:0x01ac, B:87:0x01a5, B:89:0x01b8), top: B:97:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x01b8 A[Catch: Exception -> 0x01de, TryCatch #2 {Exception -> 0x01de, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001e, B:17:0x0085, B:47:0x00cb, B:49:0x00d1, B:51:0x00d9, B:54:0x00e2, B:56:0x00f1, B:57:0x00f5, B:55:0x00ea, B:58:0x00f9, B:59:0x0101, B:61:0x0107, B:62:0x010c, B:64:0x0118, B:65:0x0122, B:68:0x0138, B:34:0x00b2, B:37:0x00b8, B:72:0x0140, B:73:0x0143, B:74:0x0144, B:76:0x0156, B:79:0x0169, B:81:0x0179, B:82:0x018f, B:90:0x01cf, B:83:0x0193, B:85:0x019b, B:88:0x01ac, B:87:0x01a5, B:89:0x01b8), top: B:97:0x0001 }] */
        @Override // com.anythink.expressad.foundation.g.g.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() throws Throwable {
            b bVar;
            HttpURLConnection httpURLConnection;
            String headerField;
            int responseCode;
            String headerField2;
            b bVar2;
            try {
                c.this.a = new b();
                int i = 0;
                while (true) {
                    HttpURLConnection httpURLConnection2 = null;
                    if (i >= 10) {
                        break;
                    }
                    if (!c.this.n) {
                        return;
                    }
                    c.d(c.this);
                    try {
                        c cVar = c.this;
                        cVar.k = cVar.k.replace(o4.OooO00o.OooO0Oo, "%20");
                        new StringBuilder("mTargetURL = ").append(c.this.k);
                        httpURLConnection = (HttpURLConnection) new URL(c.this.k).openConnection();
                        try {
                            try {
                                httpURLConnection.setRequestMethod("GET");
                                httpURLConnection.setRequestProperty("User-Agent", com.anythink.core.common.o.e.i());
                                httpURLConnection.setConnectTimeout(15000);
                                httpURLConnection.setReadTimeout(15000);
                                httpURLConnection.setInstanceFollowRedirects(false);
                                httpURLConnection.connect();
                                responseCode = httpURLConnection.getResponseCode();
                                try {
                                    headerField = httpURLConnection.getHeaderField("Location");
                                } catch (Exception e) {
                                    e = e;
                                    headerField = null;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                headerField = null;
                                responseCode = 200;
                                e.printStackTrace();
                                if (i != 0) {
                                    c.this.a.a(false);
                                    c.this.a.d(e.getLocalizedMessage());
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                        return;
                                    }
                                    return;
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                headerField2 = null;
                                if (responseCode != 301) {
                                    if (!TextUtils.isEmpty(headerField)) {
                                    }
                                    bVar2.b(true);
                                }
                                if (c.this.k.toLowerCase().startsWith("market:/")) {
                                    c.this.a.c(1);
                                    c cVar2 = c.this;
                                    cVar2.a.e(cVar2.k);
                                    bVar = c.this.a;
                                    bVar.b(true);
                                }
                                c.this.a.d(null);
                                c.this.a.a(true);
                            }
                            try {
                                headerField2 = httpURLConnection.getHeaderField("Content-type");
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                            } catch (Exception e3) {
                                e = e3;
                                e.printStackTrace();
                                if (i != 0) {
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            httpURLConnection2 = httpURLConnection;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        httpURLConnection = null;
                        headerField = null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (httpURLConnection2 != null) {
                        }
                        throw th;
                    }
                    if (responseCode != 301 || responseCode == 302 || responseCode == 307) {
                        if (!TextUtils.isEmpty(headerField)) {
                            bVar2 = c.this.a;
                            break;
                        }
                        if (!headerField.toLowerCase().startsWith("http")) {
                            c.this.k = headerField;
                            bVar2 = c.this.a;
                            break;
                        } else {
                            c.this.k = headerField;
                            if (c.this.k.toLowerCase().endsWith(com.anythink.china.common.a.a.g)) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else if (responseCode == 200) {
                        if (TextUtils.isEmpty(headerField2) || headerField2.indexOf(com.tramini.plugin.a.f.a.b) >= 0 || headerField2.indexOf("text") >= 0) {
                            c.this.a.c(2);
                        } else {
                            c.this.a.c(3);
                        }
                        bVar2 = c.this.a;
                    } else {
                        c.this.a.b(false);
                    }
                }
                bVar2.b(true);
                if (!c.this.k.toLowerCase().startsWith("market:/") || c.this.k.toLowerCase().indexOf("play.google.com") > 0) {
                    c.this.a.c(1);
                    c cVar22 = c.this;
                    cVar22.a.e(cVar22.k);
                    bVar = c.this.a;
                } else {
                    if (!c.this.k.toLowerCase().endsWith(com.anythink.china.common.a.a.g)) {
                        if (c.this.j >= 10 || !c.this.a.k()) {
                            c.this.a.c(2);
                        }
                        c cVar3 = c.this;
                        cVar3.a.e(cVar3.k);
                        c.this.a.d(null);
                        c.this.a.a(true);
                    }
                    c.this.a.c(3);
                    c cVar4 = c.this;
                    cVar4.a.e(cVar4.k);
                    bVar = c.this.a;
                }
                bVar.b(true);
                c.this.a.d(null);
                c.this.a.a(true);
            } catch (Exception e5) {
                c cVar5 = c.this;
                cVar5.a.e(cVar5.k);
                c.this.a.a(false);
                c.this.a.d(e5.getLocalizedMessage());
                e5.printStackTrace();
            }
        }

        @Override // com.anythink.expressad.foundation.g.g.a
        public final void b() {
        }

        @Override // com.anythink.expressad.foundation.g.g.a
        public final void c() {
        }
    }

    public static class b implements com.anythink.expressad.e.b, Serializable {
        public static final int a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        private static final long e = 1;
        private boolean f;
        private String g;
        private int h;
        private String i;
        private String j;
        private boolean k;
        private String l;
        private String m;
        private String n;
        private int o;
        private boolean p;
        private int q;

        private void f(String str) {
            this.j = str;
        }

        private boolean l() {
            return this.p;
        }

        private String m() {
            return this.j;
        }

        public final int a() {
            return this.q;
        }

        public final void a(int i) {
            this.q = i;
        }

        public final void a(String str) {
            this.n = str;
        }

        public final void a(boolean z) {
            this.f = z;
        }

        public final void b() {
            this.p = true;
        }

        public final void b(int i) {
            this.o = i;
        }

        public final void b(String str) {
            this.m = str;
        }

        public final void b(boolean z) {
            this.k = z;
        }

        public final int c() {
            return this.o;
        }

        public final void c(int i) {
            this.h = i;
        }

        public final void c(String str) {
            this.l = str;
        }

        public final String d() {
            return this.n;
        }

        public final void d(String str) {
            this.g = str;
        }

        public final String e() {
            return this.m;
        }

        public final void e(String str) {
            this.i = str;
        }

        public final String f() {
            return this.l;
        }

        public final boolean g() {
            return this.f;
        }

        public final String h() {
            return this.g;
        }

        public final int i() {
            return this.h;
        }

        public final String j() {
            return this.i;
        }

        public final boolean k() {
            return this.k;
        }
    }

    public c(Context context) {
        this.o = new com.anythink.expressad.foundation.g.g.c(context, 2);
        this.p = new h(context);
    }

    private void a(String str, String str2, com.anythink.expressad.foundation.d.c cVar, e eVar) {
        this.k = new String(cVar.ad());
        this.m = eVar;
        this.a = null;
        this.p.a(cVar.ad(), eVar, "5".equals(cVar.ab()) || "6".equals(cVar.ab()), str, cVar.aZ(), str2, null, cVar, true, false, com.anythink.expressad.a.a.a.l);
    }

    private void a(String str, String str2, com.anythink.expressad.foundation.d.c cVar, e eVar, com.anythink.expressad.c.b bVar) {
        this.k = new String(cVar.ad());
        this.m = eVar;
        this.a = null;
        this.p.a(cVar.ad(), eVar, "5".equals(cVar.ab()) || "6".equals(cVar.ab()), str, cVar.aZ(), str2, bVar, cVar, true, false, com.anythink.expressad.a.a.a.l);
    }

    public static /* synthetic */ int d(c cVar) {
        int i2 = cVar.j;
        cVar.j = i2 + 1;
        return i2;
    }

    public final void a(String str, String str2, com.anythink.expressad.foundation.d.c cVar, e eVar, String str3, boolean z, boolean z3, int i2) {
        String strAZ;
        boolean z4;
        this.k = str3;
        this.m = eVar;
        this.a = null;
        this.l = i2;
        if (cVar != null) {
            boolean z5 = "5".equals(cVar.ab()) || "6".equals(cVar.ab());
            strAZ = cVar.aZ();
            z4 = z5;
        } else {
            strAZ = "";
            z4 = false;
        }
        this.p.a(str3, eVar, z4, str, strAZ, str2, null, cVar, z, z3, i2);
    }

    public final boolean a() {
        return this.n;
    }

    @Override // com.anythink.expressad.a.d
    public final void b() {
        this.n = false;
    }
}
