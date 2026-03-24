package com.anythink.core.common.f;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class az {
    public static final String e = "reqId";
    public static final String f = "reqDatetime";
    public static final String g = "fillOffers";
    public static final String h = "bidResps";
    public static final String i = "adSourceId";
    public static final String j = "price";
    public static final String k = "networkFirmId";
    public static final String l = "demandType";
    public static final String m = "tp_bid_id";
    public String a;
    public long b;
    public List<a> c = new ArrayList(3);
    public List<a> d = new ArrayList(3);

    public static class a {
        public int a;
        public String b;
        public int c;
        public double d;
        public String e;

        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(av avVar, q qVar) {
            this.b = avVar.u();
            this.d = qVar != null ? qVar.getPrice() : avVar.y();
            this.c = avVar.d();
            int iM = avVar.m();
            if (iM == 0) {
                this.a = 1;
            } else if (iM == 1) {
                this.a = 2;
            } else if (iM == 2) {
                this.a = 3;
            } else if (iM == 3) {
                this.a = 4;
            } else if (iM != 4 && iM != 7) {
                if (iM == 8) {
                }
            }
            if (35 == avVar.d()) {
                this.a = 2;
            }
            this.e = qVar != null ? qVar.g : "";
        }

        public final synchronized JSONObject a() {
            JSONObject jSONObject;
            jSONObject = new JSONObject();
            try {
                jSONObject.put(az.i, this.b);
                jSONObject.put("price", this.d);
                jSONObject.put("networkFirmId", this.c);
                jSONObject.put(az.l, this.a);
                jSONObject.put(az.m, this.e);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return jSONObject;
        }
    }

    public static az a(String str) {
        az azVar = new az();
        try {
            JSONObject jSONObject = new JSONObject(str);
            azVar.b(jSONObject.getString("reqId"));
            azVar.a(jSONObject.getLong(f));
            azVar.a(azVar.c(jSONObject.getString(g)));
            azVar.b(azVar.c(jSONObject.getString(h)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return azVar;
    }

    private synchronized void a(List<a> list) {
        this.c = list;
    }

    private synchronized void a(List<a> list, a aVar) {
        if (aVar != null) {
            if (list.size() == 0) {
                list.add(aVar);
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    i2 = -1;
                    break;
                } else if (aVar.d > list.get(i2).d) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 != -1) {
                list.add(i2, aVar);
                return;
            }
            list.add(aVar);
        }
    }

    private synchronized void b(List<a> list) {
        this.d = list;
    }

    private synchronized long c() {
        return this.b;
    }

    private synchronized List<a> c(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    a aVar = new a();
                    JSONObject jSONObject = new JSONObject(jSONArray.optString(i2));
                    aVar.b = jSONObject.getString(i);
                    aVar.d = jSONObject.getDouble("price");
                    aVar.c = jSONObject.getInt("networkFirmId");
                    aVar.a = jSONObject.getInt(l);
                    if (jSONObject.has(m)) {
                        aVar.e = jSONObject.getString(m);
                    }
                    arrayList.add(aVar);
                }
                Collections.sort(arrayList, new Comparator<a>() { // from class: com.anythink.core.common.f.az.1
                    private static int a(a aVar2, a aVar3) {
                        double d = aVar2.d;
                        double d2 = aVar3.d;
                        if (d > d2) {
                            return -1;
                        }
                        return d == d2 ? 0 : 1;
                    }

                    @Override // java.util.Comparator
                    public final /* bridge */ /* synthetic */ int compare(a aVar2, a aVar3) {
                        double d = aVar2.d;
                        double d2 = aVar3.d;
                        if (d > d2) {
                            return -1;
                        }
                        return d == d2 ? 0 : 1;
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return arrayList;
    }

    private synchronized JSONArray c(List<a> list) {
        JSONArray jSONArray;
        jSONArray = new JSONArray();
        if (list != null) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                try {
                    jSONArray.put(it.next().a());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return jSONArray;
    }

    private synchronized JSONArray d() {
        return c(this.c);
    }

    private synchronized JSONArray e() {
        return c(this.d);
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("reqId", this.a);
            jSONObject.put(f, this.b);
            jSONObject.put(g, d());
            jSONObject.put(h, e());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public final synchronized void a(long j2) {
        this.b = j2;
    }

    public final synchronized void a(a aVar) {
        a(this.c, aVar);
    }

    public final synchronized String b() {
        return this.a;
    }

    public final synchronized void b(a aVar) {
        a(this.d, aVar);
    }

    public final synchronized void b(String str) {
        this.a = str;
    }
}
