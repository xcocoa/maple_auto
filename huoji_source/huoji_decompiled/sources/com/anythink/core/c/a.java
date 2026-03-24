package com.anythink.core.c;

import android.text.TextUtils;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.s;
import com.anythink.core.d.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static volatile a e;
    public final String a = a.class.getSimpleName();
    private final String b = "sv_request_id";
    private final String c = "sv_price";
    private Map<String, LinkedList<C0082a>> d = new HashMap();

    /* JADX INFO: renamed from: com.anythink.core.c.a$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ LinkedList b;

        public AnonymousClass1(String str, LinkedList linkedList) {
            this.a = str;
            this.b = linkedList;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String string;
            if (TextUtils.isEmpty(this.a) || this.b == null) {
                return;
            }
            try {
                JSONArray jSONArray = new JSONArray();
                for (C0082a c0082a : this.b) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("sv_request_id", c0082a.a);
                    jSONObject.put("sv_price", c0082a.b);
                    jSONArray.put(jSONObject);
                }
                string = jSONArray.toString();
            } catch (Throwable unused) {
                string = "";
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            s.a(n.a().f(), h.M, this.a, string);
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.c.a$a, reason: collision with other inner class name */
    public class C0082a {
        public String a;
        public double b;

        public C0082a(String str, double d) {
            this.a = str;
            this.b = d;
        }
    }

    private a() {
    }

    private double a(String str, int i) {
        LinkedList<C0082a> linkedListA = a(str);
        StringBuilder sb = new StringBuilder("getAverageImpPrice valueList:");
        sb.append(linkedListA == null ? "null" : linkedListA.toString());
        sb.append(",proverCount:");
        sb.append(i);
        if (linkedListA == null || linkedListA.size() == 0 || i == 0) {
            return -1.0d;
        }
        double d = 0.0d;
        List<C0082a> listSubList = linkedListA.subList(0, Math.min(i, linkedListA.size()));
        Iterator<C0082a> it = listSubList.iterator();
        while (it.hasNext()) {
            d += it.next().b;
        }
        return d / ((double) listSubList.size());
    }

    public static a a() {
        if (e == null) {
            synchronized (b.class) {
                if (e == null) {
                    e = new a();
                }
            }
        }
        return e;
    }

    private synchronized LinkedList<C0082a> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        LinkedList<C0082a> linkedListB = this.d.get(str);
        if (linkedListB == null) {
            linkedListB = b(str);
            if (linkedListB == null) {
                linkedListB = new LinkedList<>();
            }
            this.d.put(str, linkedListB);
        }
        return linkedListB;
    }

    private synchronized void a(String str, String str2, double d, int i) {
        LinkedList<C0082a> linkedListA = a(str);
        StringBuilder sb = new StringBuilder("putProverPriceInfo before list:");
        sb.append(linkedListA == null ? "null" : linkedListA.toString());
        sb.append(",cur impPrice:");
        sb.append(d);
        sb.append(",maxRecordListSize:");
        sb.append(i);
        if (linkedListA == null) {
            return;
        }
        if (i == 0) {
            linkedListA.clear();
        } else {
            if (linkedListA.size() >= i - 1) {
                int size = (linkedListA.size() - i) + 1;
                for (int i2 = 0; i2 < size; i2++) {
                    linkedListA.removeLast();
                }
            }
            if (linkedListA.size() < i) {
                linkedListA.addFirst(new C0082a(str2, d));
            }
        }
        new StringBuilder("putProverPriceInfo after list:").append(linkedListA.toString());
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass1(str, linkedListA));
    }

    private void a(String str, LinkedList<C0082a> linkedList) {
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass1(str, linkedList));
    }

    private LinkedList<C0082a> b(String str) {
        try {
            String strB = s.b(n.a().f(), h.M, str, "");
            if (TextUtils.isEmpty(strB)) {
                return null;
            }
            LinkedList<C0082a> linkedList = new LinkedList<>();
            try {
                JSONArray jSONArray = new JSONArray(strB);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        linkedList.add(new C0082a(jSONObjectOptJSONObject.optString("sv_request_id"), jSONObjectOptJSONObject.optDouble("sv_price", 0.0d)));
                    }
                }
            } catch (Throwable unused) {
            }
            return linkedList;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private String c(String str) {
        LinkedList<C0082a> linkedListA = a(str);
        if (linkedListA.size() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (C0082a c0082a : linkedListA) {
                    jSONObject.put(c0082a.a, c0082a.b);
                }
                return jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public final void a(com.anythink.core.common.f.h hVar, av avVar) {
        f fVarB;
        if (hVar == null || avVar == null || (fVarB = com.anythink.core.d.h.a(n.a().f()).b(hVar.ah())) == null || avVar.ao() != 1) {
            return;
        }
        double d = -1.0d;
        try {
            if (avVar.d() == 2) {
                Map<String, Object> mapF = hVar.f();
                new StringBuilder("generateImpPrice step1：extInfoMap:").append(mapF == null ? "null" : mapF.toString());
                if (mapF == null) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        sb.append(avVar.d());
                        String string = sb.toString();
                        String strU = avVar.u();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(avVar.ag());
                        e.a(hVar, fVarB, string, strU, sb2.toString(), a(avVar.u(), fVarB.k()) > 0.0d ? 2 : 1);
                    } catch (Throwable unused) {
                        return;
                    }
                }
                if (mapF != null && mapF.containsKey("value_micros")) {
                    d = Double.parseDouble(mapF.get("value_micros").toString()) / 1000.0d;
                }
            }
            if (d > 0.0d) {
                avVar.e(d);
                a(avVar.u(), hVar.ai(), d, fVarB.k());
            }
        } catch (Throwable unused2) {
        }
    }

    public final void a(com.anythink.core.common.f.h hVar, List<av> list, f fVar) {
        ListIterator<av> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            av next = listIterator.next();
            if (next.ao() == 1) {
                int iK = fVar.k();
                double dA = a(next.u(), iK);
                StringBuilder sb = new StringBuilder("syncProverbPrice adSourceId:");
                sb.append(next.u());
                sb.append(",calPreverbCacheNum:");
                sb.append(iK);
                sb.append(",averageValue:");
                sb.append(dA);
                if (dA > 0.0d) {
                    next.aq();
                    next.a(dA);
                    next.d(dA);
                    next.b(hVar.o() * dA);
                    next.i("estimated");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(next.d());
                    e.a(hVar, fVar, sb2.toString(), next.u(), String.valueOf(dA), String.valueOf(iK), c(next.u()));
                }
            }
        }
    }
}
