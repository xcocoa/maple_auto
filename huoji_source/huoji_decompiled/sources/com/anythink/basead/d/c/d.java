package com.anythink.basead.d.c;

import android.content.Context;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static volatile d b;
    public ConcurrentHashMap<String, ArrayList<String>> a = new ConcurrentHashMap<>();

    private d() {
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    public static String a(String str, String str2) {
        return str + str2;
    }

    public final synchronized void a(Context context, String str, l lVar, n nVar) {
        if (lVar.d() == 3 && (nVar instanceof ak)) {
            if (((ak) nVar).at() <= 0) {
                return;
            }
            ak akVar = (ak) nVar;
            ArrayList<String> arrayList = this.a.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                try {
                    JSONArray jSONArray = new JSONArray(s.b(context, h.D, str, ""));
                    if (jSONArray.length() > 0) {
                        for (int i = 0; i < jSONArray.length(); i++) {
                            arrayList.add(jSONArray.optString(i));
                        }
                    }
                } catch (Exception unused) {
                }
                this.a.put(str, arrayList);
            }
            if (arrayList.size() >= akVar.at()) {
                arrayList.remove(arrayList.size() - 1);
            }
            arrayList.add(0, lVar.t());
            s.a(context, h.D, str, new JSONArray((Collection) arrayList).toString());
        }
    }

    public final String[] a(Context context, String str) {
        ArrayList<String> arrayList = this.a.get(str);
        if (arrayList == null) {
            try {
                JSONArray jSONArray = new JSONArray(s.b(context, h.D, str, ""));
                if (jSONArray.length() > 0) {
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            arrayList2.add(jSONArray.optString(i));
                        } catch (Exception unused) {
                        }
                    }
                    arrayList = arrayList2;
                }
            } catch (Exception unused2) {
            }
        }
        if (arrayList == null) {
            return null;
        }
        this.a.put(str, arrayList);
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }
}
