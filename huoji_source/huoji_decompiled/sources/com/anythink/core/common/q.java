package com.anythink.core.common;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class q {
    public static final String a = "q";
    private static volatile q b;
    private Context c;

    private q(Context context) {
        this.c = context.getApplicationContext();
    }

    public static q a(Context context) {
        if (b == null) {
            synchronized (q.class) {
                if (b == null) {
                    b = new q(context);
                }
            }
        }
        return b;
    }

    private void a(int i, String str, String str2, String str3, String str4, com.anythink.core.common.f.h hVar) {
        if (this.c == null) {
            return;
        }
        try {
            Intent intent = new Intent(str);
            intent.putExtra("common", str2);
            intent.putExtra("data", str3);
            intent.putExtra("adsourceId", str4);
            intent.putExtra("networkType", String.valueOf(hVar.P()));
            intent.putExtra("format", hVar.aj());
            intent.putExtra("showid", hVar.t());
            intent.putExtra("tktype", i);
            intent.setPackage(this.c.getPackageName());
            com.anythink.core.common.b.k.a(this.c).a(intent);
        } catch (Throwable unused) {
        }
    }

    public static /* synthetic */ void a(q qVar, int i, String str, String str2, String str3, String str4, com.anythink.core.common.f.h hVar) {
        if (qVar.c != null) {
            try {
                Intent intent = new Intent(str);
                intent.putExtra("common", str2);
                intent.putExtra("data", str3);
                intent.putExtra("adsourceId", str4);
                intent.putExtra("networkType", String.valueOf(hVar.P()));
                intent.putExtra("format", hVar.aj());
                intent.putExtra("showid", hVar.t());
                intent.putExtra("tktype", i);
                intent.setPackage(qVar.c.getPackageName());
                com.anythink.core.common.b.k.a(qVar.c).a(intent);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(final int i, final com.anythink.core.common.f.i iVar, final com.anythink.core.d.a aVar) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.q.1
            @Override // java.lang.Runnable
            public final void run() {
                Map<String, String> mapO;
                String str;
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(iVar.b.ah()) == null) {
                        return;
                    }
                    String strF = ((com.anythink.core.common.f.h) iVar.b).F();
                    if (TextUtils.isEmpty(strF)) {
                        return;
                    }
                    String str2 = null;
                    int i2 = i;
                    if (i2 == 4) {
                        z = ((com.anythink.core.common.f.h) iVar.b).B() == 1;
                        mapO = aVar.O();
                        str = "show";
                    } else {
                        if (i2 != 6) {
                            switch (i2) {
                                case 18:
                                case 19:
                                case 20:
                                    z = ((com.anythink.core.common.f.h) iVar.b).j() == 1;
                                    mapO = aVar.O();
                                    str = "dl";
                                    break;
                            }
                            if (z && !TextUtils.isEmpty(str2)) {
                                JSONObject jSONObjectA = com.anythink.core.common.o.o.a();
                                String str3 = q.a;
                                new StringBuilder("common -> ").append(jSONObjectA.toString());
                                new StringBuilder("data -> ").append(iVar.a().toString());
                                q.a(q.this, i, str2, jSONObjectA.toString(), iVar.a().toString(), strF, (com.anythink.core.common.f.h) iVar.b);
                            }
                            String str4 = q.a;
                            new StringBuilder("handleTK cost time: ").append(System.currentTimeMillis() - jCurrentTimeMillis);
                        }
                        z = ((com.anythink.core.common.f.h) iVar.b).C() == 1;
                        mapO = aVar.O();
                        str = com.anythink.expressad.foundation.d.c.ca;
                    }
                    str2 = mapO.get(str);
                    if (z) {
                        JSONObject jSONObjectA2 = com.anythink.core.common.o.o.a();
                        String str32 = q.a;
                        new StringBuilder("common -> ").append(jSONObjectA2.toString());
                        new StringBuilder("data -> ").append(iVar.a().toString());
                        q.a(q.this, i, str2, jSONObjectA2.toString(), iVar.a().toString(), strF, (com.anythink.core.common.f.h) iVar.b);
                    }
                    String str42 = q.a;
                    new StringBuilder("handleTK cost time: ").append(System.currentTimeMillis() - jCurrentTimeMillis);
                } catch (Throwable unused) {
                }
            }
        }, 13, false);
    }

    public final void a(final com.anythink.core.d.a aVar) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.q.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (q.this.c == null) {
                        return;
                    }
                    String packageName = q.this.c.getPackageName();
                    String str = "";
                    for (int i = 0; i < 2; i++) {
                        str = str + packageName;
                    }
                    String strC = com.anythink.core.common.o.g.c(str);
                    Intent intent = new Intent(strC);
                    intent.putExtra(strC, aVar.J());
                    intent.putExtra("data", com.anythink.core.common.o.o.a().toString());
                    intent.putExtra("denied", com.anythink.core.common.b.n.a().e());
                    intent.setPackage(packageName);
                    com.anythink.core.common.b.k.a(q.this.c).a(intent);
                } catch (Throwable unused) {
                }
            }
        }, 1000L);
    }
}
