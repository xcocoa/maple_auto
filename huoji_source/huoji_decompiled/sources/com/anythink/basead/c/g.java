package com.anythink.basead.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.af;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;

/* JADX INFO: loaded from: classes.dex */
public final class g extends af {
    public String a;
    public String b;

    public g(l lVar, String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = lVar;
    }

    @Override // com.anythink.core.common.f.af
    public final void a(Activity activity) {
        try {
            l lVar = this.c;
            String strAk = lVar instanceof aj ? ((aj) lVar).ak() : "";
            if (TextUtils.isEmpty(strAk)) {
                strAk = this.c.v();
            }
            final Context contextF = n.a().f();
            View viewInflate = LayoutInflater.from(activity).inflate(com.anythink.core.common.o.i.a(contextF, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
            TextView textView = (TextView) viewInflate.findViewById(com.anythink.core.common.o.i.a(contextF, "myoffer_confirm_msg", "id"));
            TextView textView2 = (TextView) viewInflate.findViewById(com.anythink.core.common.o.i.a(contextF, "myoffer_confirm_give_up", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(com.anythink.core.common.o.i.a(contextF, "myoffer_confirm_continue", "id"));
            String string = contextF.getString(com.anythink.core.common.o.i.a(n.a().f(), "myoffer_confirm_msg", com.anythink.expressad.foundation.h.i.g));
            String string2 = contextF.getString(com.anythink.core.common.o.i.a(n.a().f(), "myoffer_give_up", com.anythink.expressad.foundation.h.i.g));
            String string3 = contextF.getString(com.anythink.core.common.o.i.a(n.a().f(), "myoffer_continue", com.anythink.expressad.foundation.h.i.g));
            textView.setText(string + "\"" + strAk + "\"?");
            textView2.setText(string2);
            textView3.setText(string3);
            final Dialog dialog = new Dialog(activity, com.anythink.core.common.o.i.a(contextF, "style_full_screen_translucent_dialog", com.anythink.expressad.foundation.h.i.e));
            dialog.setContentView(viewInflate);
            dialog.setCancelable(false);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.c.g.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g gVar = g.this;
                    com.anythink.core.common.n.e.a(gVar.b, gVar.c.t(), g.this.a, 7, (String) null, 0L, 0L);
                    try {
                        dialog.dismiss();
                    } catch (Throwable unused) {
                    }
                }
            });
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.c.g.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        g gVar = g.this;
                        com.anythink.core.common.n.e.a(gVar.b, gVar.c.t(), g.this.a, 8, (String) null, 0L, 0L);
                        if (com.anythink.basead.a.a.a(contextF, g.this.c)) {
                            g gVar2 = g.this;
                            com.anythink.core.common.n.e.a(gVar2.b, gVar2.c.t(), g.this.a, 9, (String) null, 0L, 0L);
                        }
                        dialog.dismiss();
                    } catch (Throwable unused) {
                    }
                }
            });
            dialog.show();
        } catch (Throwable unused) {
        }
    }
}
