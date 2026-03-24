package com.anythink.core.d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.am;
import com.anythink.core.common.r;
import com.anythink.core.d.f;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static final String a = "h";
    private static volatile h b;
    private Context c;
    private final j e;
    private final k d = new k();
    private final i f = new i(this);

    public static class a implements b {
        private final String a;
        private b b;
        private volatile boolean c = false;

        public a(String str, b bVar) {
            this.a = str;
            this.b = bVar;
        }

        @Override // com.anythink.core.d.h.b
        public final void a(AdError adError) {
            if (this.b == null || this.c) {
                return;
            }
            this.c = true;
            this.b.a(adError);
        }

        @Override // com.anythink.core.d.h.b
        public final void a(f fVar) {
            if (this.b == null || this.c) {
                return;
            }
            h.a(n.a().f()).b(this.a, fVar.aR());
            String str = h.a;
            this.c = true;
            this.b.a(fVar);
        }

        @Override // com.anythink.core.d.h.b
        public final void b(f fVar) {
            b bVar = this.b;
            if (bVar != null) {
                bVar.b(fVar);
            }
        }
    }

    public interface b {
        void a(AdError adError);

        void a(f fVar);

        void b(f fVar);
    }

    private h(Context context) {
        this.c = context;
        this.e = new j(context);
    }

    public static h a(Context context) {
        if (b == null) {
            synchronized (h.class) {
                if (b == null) {
                    b = new h(context);
                }
            }
        }
        return b;
    }

    private void a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        f fVarA;
        JSONObject jSONObjectAI;
        if (jSONObject != null) {
            if (jSONObject2 == null && TextUtils.isEmpty(str)) {
                return;
            }
            try {
                if (jSONObject2 != null) {
                    jSONObject.put(f.a.aa, jSONObject2);
                } else {
                    if (TextUtils.isEmpty(str) || (fVarA = a(str)) == null || (jSONObjectAI = fVarA.aI()) == null) {
                        return;
                    }
                    jSONObject.put(f.a.aa, jSONObjectAI);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final f a(String str) {
        return this.e.b(n.a().o(), str);
    }

    public final f a(String str, int i) {
        return this.e.a(n.a().o(), str, i);
    }

    public final void a() {
        Context context = this.c;
        if (context != null) {
            try {
                context.getSharedPreferences(com.anythink.core.common.b.h.E, 0).edit().clear().apply();
            } catch (Error | Exception unused) {
            }
        }
    }

    public final void a(f fVar, String str, String str2, String str3, Map<String, Object> map, b bVar, int i) {
        a(fVar, str, str2, str3, map, bVar, i, false);
    }

    public final void a(final f fVar, final String str, final String str2, final String str3, final Map<String, Object> map, final b bVar, final int i, final boolean z) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.d.h.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.m.b bVar2;
                final a aVar = new a(str3, bVar);
                f fVar2 = fVar;
                String strAa = fVar2 != null ? fVar2.aa() : "";
                Map<String, Object> mapD = n.a().d(str3);
                am amVar = new am(str, str2, str3, strAa, mapD, map);
                amVar.a(i);
                String str4 = h.a;
                StringBuilder sb = new StringBuilder("requestStrategy() >>> placeId: ");
                sb.append(str3);
                sb.append(" fistReqPlaceStrategyFlag: ");
                sb.append(i);
                sb.append(" oldStrategyType: ");
                f fVar3 = fVar;
                sb.append(fVar3 != null ? Integer.valueOf(fVar3.aR()) : null);
                f fVar4 = fVar;
                if (fVar4 == null) {
                    i unused = h.this.f;
                    i.a(h.this.c, amVar, new g(h.this, amVar, aVar, null));
                    return;
                }
                amVar.a(fVar4.av());
                if (z) {
                    i unused2 = h.this.f;
                    i.a(h.this.c, amVar, new g(h.this, amVar, aVar, fVar));
                    return;
                }
                if (fVar.aJ()) {
                    aVar.a(fVar);
                    amVar.a((Map<String, String>) null);
                    i unused3 = h.this.f;
                    i.a(h.this.c, amVar, new g(h.this, amVar, aVar, fVar));
                    return;
                }
                if (fVar.aL()) {
                    aVar.a(fVar);
                    aVar.b = null;
                }
                f fVarE = h.this.e(str3);
                if (fVarE == null) {
                    amVar.a((Map<String, String>) null);
                    i unused4 = h.this.f;
                    i.a(h.this.c, amVar, new g(h.this, amVar, aVar, fVar));
                    return;
                }
                amVar.a(fVarE.av());
                if (!((mapD.equals(fVarE.X()) ^ true) || fVarE.aW() || r.a().c(h.this.c, str3))) {
                    aVar.a(fVar);
                    return;
                }
                final boolean[] zArr = new boolean[1];
                long jAi = fVarE.ai();
                com.anythink.core.common.m.a aVarA = com.anythink.core.common.m.d.a();
                if (jAi == 0) {
                    zArr[0] = true;
                    aVar.a(fVar);
                    bVar2 = null;
                } else {
                    com.anythink.core.common.m.b bVar3 = new com.anythink.core.common.m.b() { // from class: com.anythink.core.d.h.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str5 = h.a;
                            zArr[0] = true;
                            aVar.a(fVar);
                        }
                    };
                    aVarA.a(bVar3, jAi, false);
                    bVar2 = bVar3;
                }
                com.anythink.core.c.b.a().b(str3);
                i unused5 = h.this.f;
                i.a(h.this.c, amVar, new g(h.this, amVar, aVar, fVar, aVarA, bVar2, zArr));
            }
        }, 2);
    }

    public final void a(Object obj, final am amVar, b bVar, boolean[] zArr, f fVar) {
        if (!(obj instanceof JSONObject) || amVar == null) {
            if (bVar != null) {
                if (fVar == null) {
                    bVar.a(ErrorCode.getErrorCode(ErrorCode.placeStrategyError, "", "Placement LoadParams error."));
                    return;
                } else {
                    bVar.a(fVar);
                    return;
                }
            }
            return;
        }
        JSONObject jSONObject = (JSONObject) obj;
        try {
            jSONObject.put(f.a.ac, System.currentTimeMillis());
            f fVarA = a(amVar.c(), jSONObject.optInt(f.a.av, 0));
            if (fVarA != null) {
                fVarA.a(jSONObject, amVar.c());
            }
        } catch (Throwable th) {
            Log.e(a, "parse place strategy error:" + th.getMessage());
        }
        final f fVarA2 = f.a(amVar.c(), jSONObject);
        final String strC = amVar.c();
        if (fVarA2 != null) {
            if (fVarA2.aj() != 1) {
                jSONObject = null;
            }
            a(strC, fVarA2, jSONObject, fVarA2.aR());
            int iG = amVar.g();
            StringBuilder sb = new StringBuilder("handlePlaceStrategyResult() >>> fistReqPlaceStrategyFlag: ");
            sb.append(iG);
            sb.append(" strategyType: ");
            sb.append(fVarA2.aR());
            if (iG == 3 && fVarA2.aL()) {
                amVar.a(2);
                amVar.a((Map<String, String>) null);
                this.f.a(this.c, amVar);
            } else if (fVarA2.aM()) {
                com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.d.h.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (fVarA2.Y() == 1) {
                            r.a().a(h.this.c, strC);
                        }
                        if (!fVarA2.aK()) {
                            h.this.e.b(amVar.a(), strC, 2);
                            return;
                        }
                        amVar.a(1);
                        f fVarD = h.this.d(strC);
                        if (fVarD != null) {
                            amVar.a(fVarD.av());
                        } else {
                            amVar.a((Map<String, String>) null);
                        }
                        h.this.f.a(h.this.c, amVar);
                    }
                });
            }
        }
        if (zArr != null && zArr.length > 0 && zArr[0]) {
            if (bVar == null || fVarA2 == null) {
                return;
            }
            bVar.b(fVarA2);
            return;
        }
        if (bVar != null) {
            if (fVarA2 != null) {
                bVar.a(fVarA2);
            } else {
                bVar.a(ErrorCode.getErrorCode(ErrorCode.placeStrategyError, "", "Placement Service error."));
            }
        }
    }

    public final void a(String str, f fVar, JSONObject jSONObject, int i) {
        this.e.a(n.a().o(), str, fVar, jSONObject, i);
    }

    public final f b(String str) {
        return a(str);
    }

    public final void b(String str, int i) {
        this.e.a(str, i);
    }

    public final f c(String str) {
        return this.e.a(n.a().o(), str);
    }

    public final f d(String str) {
        return this.e.a(n.a().o(), str, 2);
    }

    public final f e(String str) {
        return this.e.a(n.a().o(), str, 0);
    }

    public final f f(String str) {
        String strO = n.a().o();
        if (this.e.a(n.a().o(), str, 0) != null) {
            this.e.b(strO, str, 1);
            return null;
        }
        f fVarA = this.e.a(strO, str, 1);
        if (fVarA == null) {
            fVarA = this.d.b(str);
        }
        if (fVarA != null) {
            a(str, fVarA, null, 1);
        }
        return fVarA;
    }

    public final void g(String str) {
        this.e.c(n.a().o(), str);
    }

    public final void h(String str) {
        this.d.a(str);
    }
}
