package com.anythink.core.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.c.l;
import com.anythink.core.common.f.ao;
import com.anythink.core.common.f.av;
import com.anythink.core.common.u;
import com.anythink.core.d.f;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a g;
    public l a;
    public Context d;
    private final String f = getClass().getSimpleName();
    public ConcurrentHashMap<String, ao> e = new ConcurrentHashMap<>(3);
    public SimpleDateFormat b = new SimpleDateFormat("yyyyMMdd");
    public SimpleDateFormat c = new SimpleDateFormat("yyyyMMddHH");

    private a(Context context) {
        this.a = l.a(com.anythink.core.common.c.c.a(context));
        this.d = context;
    }

    public static a a(Context context) {
        if (g == null) {
            synchronized (a.class) {
                if (g == null) {
                    g = new a(context);
                }
            }
        }
        return g;
    }

    public final ao.a a(String str, String str2, int i) {
        ao.a aVarA;
        ao aoVarA = a(str, i);
        if (aoVarA == null || (aVarA = aoVarA.a(str2)) == null) {
            return null;
        }
        if (TextUtils.equals(aVarA.c, aoVarA.g)) {
            if (!TextUtils.equals(aVarA.b, aoVarA.f)) {
                StringBuilder sb = new StringBuilder();
                sb.append(aVarA.a);
                sb.append(": AdSourceCap's cache hour is difference, it will reset the hour show count.");
                sb.append(aVarA.b);
                sb.append(" vs ");
                sb.append(aoVarA.f);
            }
            return aVarA;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(aVarA.a);
        sb2.append(": AdSourceCap's cache date is difference, it will reset the day&hour show count.");
        sb2.append(aVarA.c);
        sb2.append(" vs ");
        sb2.append(aoVarA.g);
        aVarA.c = aoVarA.g;
        aVarA.d = 0;
        aVarA.b = aoVarA.f;
        aVarA.e = 0;
        return aVarA;
    }

    public final ao a(String str, int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = this.b.format(new Date(jCurrentTimeMillis));
        String str3 = this.c.format(new Date(jCurrentTimeMillis));
        ao aoVarA = this.e.get(str);
        if (aoVarA != null) {
            if (!TextUtils.equals(aoVarA.g, str2)) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(":PlacementCap's cache date is difference, it will reset the day&hour show count.");
                sb.append(aoVarA.g);
                sb.append(" vs ");
                sb.append(str2);
                aoVarA.c = 0;
                aoVarA.g = str2;
            } else if (!TextUtils.equals(aoVarA.f, str3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(":PlacementCap's cache hour is difference, it will reset the hour show count.");
                sb2.append(aoVarA.f);
                sb2.append(" vs ");
                sb2.append(str3);
            }
            aoVarA.d = 0;
            aoVarA.f = str3;
        }
        synchronized (u.a().a(str)) {
            if (aoVarA == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(":PlacementCap's cache is null, try to find it in database");
                aoVarA = this.a.a(str, str2, str3);
                if (aoVarA == null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(str);
                    sb4.append(":PlacementCap's cache in database is null, try to create the new placemenCap's cache.");
                    aoVarA = new ao();
                    aoVarA.b = str;
                    aoVarA.a = i;
                }
                aoVarA.g = str2;
                aoVarA.f = str3;
                this.e.put(str, aoVarA);
            }
        }
        return aoVarA;
    }

    public final void a() {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                aVar.a.a(aVar.b.format(new Date(System.currentTimeMillis())));
            }
        }, 2, true);
    }

    public final void a(String str, String str2, String str3) {
        synchronized (u.a().a(str2)) {
            int i = Integer.parseInt(str);
            ao aoVarA = a(str2, i);
            ao.a aVarA = a(str2, str3, i);
            if (aVarA == null) {
                aVarA = new ao.a();
                aVarA.a = str3;
                aoVarA.a(str3, aVarA);
            }
            aVarA.c = aoVarA.g;
            aVarA.b = aoVarA.f;
            aoVarA.c++;
            aVarA.d++;
            aoVarA.d++;
            aVarA.e++;
            long jCurrentTimeMillis = System.currentTimeMillis();
            aoVarA.e = jCurrentTimeMillis;
            aVarA.f = jCurrentTimeMillis;
            StringBuilder sb = new StringBuilder("Save Show Time, placementId:");
            sb.append(str2);
            sb.append(": ");
            sb.append(aoVarA.toString());
            StringBuilder sb2 = new StringBuilder("Save Show Time, adsourceId:");
            sb2.append(str3);
            sb2.append(": ");
            sb2.append(aVarA.toString());
            this.a.a(i, str2, aVarA);
        }
    }

    public final boolean a(f fVar, String str) {
        if (fVar == null) {
            return false;
        }
        if (fVar.al() == -1 && fVar.am() == -1) {
            return false;
        }
        ao aoVarA = a(str, fVar.ah());
        int i = aoVarA != null ? aoVarA.c : 0;
        int i2 = aoVarA != null ? aoVarA.d : 0;
        if (fVar.al() == -1 || i < fVar.al()) {
            return fVar.am() != -1 && ((long) i2) >= fVar.am();
        }
        return true;
    }

    public final boolean a(String str, av avVar, int i) {
        ao.a aVarA;
        if ((avVar.g() == -1 && avVar.f() == -1) || (aVarA = a(str, avVar.u(), i)) == null) {
            return false;
        }
        if (avVar.g() == -1 || aVarA.e < avVar.g()) {
            return avVar.f() != -1 && aVarA.d >= avVar.f();
        }
        return true;
    }

    public final int[] a(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int[] iArrA = this.a.a(i, this.b.format(new Date(jCurrentTimeMillis)), this.c.format(new Date(jCurrentTimeMillis)));
        StringBuilder sb = new StringBuilder("getFormatShowTime: format:");
        sb.append(i);
        sb.append(": dayCount:");
        sb.append(iArrA[0]);
        sb.append("--hourcount:");
        sb.append(iArrA[1]);
        return iArrA;
    }
}
