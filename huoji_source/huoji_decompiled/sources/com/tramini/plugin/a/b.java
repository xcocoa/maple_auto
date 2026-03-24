package com.tramini.plugin.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.tramini.plugin.a.h.a;
import com.tramini.plugin.a.h.h;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends BroadcastReceiver {
    public static final String a = b.class.getSimpleName();
    public static final String b = "tramini";

    /* JADX INFO: renamed from: com.tramini.plugin.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements a.InterfaceC0229a {
        public final /* synthetic */ int a;
        public final /* synthetic */ String b;
        public final /* synthetic */ com.tramini.plugin.b.b c;
        public final /* synthetic */ String d;
        public final /* synthetic */ String e;

        public AnonymousClass1(int i, String str, com.tramini.plugin.b.b bVar, String str2, String str3) {
            this.a = i;
            this.b = str;
            this.c = bVar;
            this.d = str2;
            this.e = str3;
        }

        @Override // com.tramini.plugin.a.h.a.InterfaceC0229a
        public final void a(final com.tramini.plugin.a.d.a aVar) {
            int i;
            if (aVar != null || (i = this.a) == 18 || i == 19 || i == 20) {
                com.tramini.plugin.a.b.c.a();
                com.tramini.plugin.a.b.c.a(new Runnable() { // from class: com.tramini.plugin.a.b.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str;
                        String strA;
                        JSONObject jSONObject;
                        try {
                            JSONObject jSONObject2 = new JSONObject(AnonymousClass1.this.b);
                            com.tramini.plugin.a.d.a aVar2 = aVar;
                            if (aVar2 == null || (jSONObject = aVar2.a) == null) {
                                if (aVar2 == null || aVar2.b == null) {
                                    int i2 = AnonymousClass1.this.a;
                                    if (i2 != 18 && i2 != 19 && i2 != 20) {
                                        return;
                                    }
                                } else {
                                    jSONObject2.put("type", 10001);
                                    jSONObject2.put("i_t", aVar.b.a);
                                    if (!TextUtils.isEmpty(aVar.b.b)) {
                                        str = "i_al";
                                        strA = com.tramini.plugin.a.h.c.a(aVar.b.b.getBytes());
                                    }
                                }
                                com.tramini.plugin.a.g.a.a().a(AnonymousClass1.this.d, new JSONObject(AnonymousClass1.this.e), jSONObject2);
                            }
                            Iterator<String> itKeys = jSONObject.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                jSONObject2.put(next, jSONObject.optString(next));
                            }
                            str = "setting_id";
                            strA = AnonymousClass1.this.c.c();
                            jSONObject2.put(str, strA);
                            com.tramini.plugin.a.g.a.a().a(AnonymousClass1.this.d, new JSONObject(AnonymousClass1.this.e), jSONObject2);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
        }
    }

    private void a(Intent intent, com.tramini.plugin.b.b bVar) {
        String stringExtra = intent.getStringExtra(bVar.g());
        String stringExtra2 = intent.getStringExtra(bVar.h());
        intent.getStringExtra(bVar.i());
        String stringExtra3 = intent.getStringExtra(bVar.j());
        com.tramini.plugin.a.h.a.a(bVar, stringExtra3, intent.getStringExtra(bVar.l()), intent.getStringExtra(bVar.k()), new AnonymousClass1(intent.getIntExtra(bVar.m(), 0), stringExtra2, bVar, stringExtra3, stringExtra));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        List<String> listE;
        intent.getAction();
        com.tramini.plugin.b.b bVarB = com.tramini.plugin.b.c.a(context).b();
        if (bVarB == null) {
            return;
        }
        com.tramini.plugin.a.h.b.a().a(bVarB);
        if (!(h.a(context) && bVarB.n() == 0) && (listE = bVarB.e()) != null && listE.size() > 0 && listE.contains(intent.getAction())) {
            try {
                String stringExtra = intent.getStringExtra(bVarB.g());
                String stringExtra2 = intent.getStringExtra(bVarB.h());
                intent.getStringExtra(bVarB.i());
                String stringExtra3 = intent.getStringExtra(bVarB.j());
                com.tramini.plugin.a.h.a.a(bVarB, stringExtra3, intent.getStringExtra(bVarB.l()), intent.getStringExtra(bVarB.k()), new AnonymousClass1(intent.getIntExtra(bVarB.m(), 0), stringExtra2, bVarB, stringExtra3, stringExtra));
            } catch (Throwable unused) {
            }
        }
    }
}
