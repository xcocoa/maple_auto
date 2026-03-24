package mobi.oneway.export.f;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.f.c;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static List<c> a;
    private static List<g> b;
    private static String c;

    public static String a() {
        return c;
    }

    public static List<a> a(String str, AdType adType) {
        List<a> listA;
        List<c> list = a;
        if (list != null) {
            for (c cVar : list) {
                if (str.equals(cVar.a())) {
                    listA = a(cVar.b(), str, adType);
                    break;
                }
            }
            listA = null;
        } else {
            listA = null;
        }
        return listA == null ? b(str) : listA;
    }

    public static List<String> a(List<a> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().f());
            }
        }
        return arrayList;
    }

    private static List<a> a(List<c.a> list, String str, AdType adType) {
        ArrayList arrayList = null;
        if (a != null && list != null) {
            for (c.a aVar : list) {
                int iA = aVar.a();
                g gVarA = a(iA);
                if (gVarA != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    a aVar2 = new a(gVarA, str, iA == 1 ? str : aVar.b());
                    if (aVar2.d(adType)) {
                        arrayList.add(aVar2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static a a(List<a> list, String str) {
        if (list != null) {
            Iterator<a> it = list.iterator();
            if (it.hasNext()) {
                a next = it.next();
                if (next.f().equals(str)) {
                    return next;
                }
            }
        }
        return null;
    }

    private static g a(int i) {
        List<g> list = b;
        if (list == null) {
            return null;
        }
        for (g gVar : list) {
            if (gVar.a() == i) {
                return gVar;
            }
        }
        return null;
    }

    public static void a(String str) {
        c = str;
    }

    public static void a(c cVar) {
        if (a == null) {
            a = new ArrayList();
        }
        a.add(cVar);
    }

    public static void a(g gVar) {
        if (b == null) {
            b = new ArrayList();
        }
        b.add(gVar);
    }

    private static List<a> b(String str) {
        g gVarA = a(1);
        if (gVarA == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(gVarA, str, str));
        return arrayList;
    }
}
