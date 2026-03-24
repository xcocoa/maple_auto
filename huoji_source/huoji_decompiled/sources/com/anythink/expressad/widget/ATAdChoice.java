package com.anythink.expressad.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.anythink.expressad.d.b;
import com.anythink.expressad.foundation.g.d.c;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.out.j;

/* JADX INFO: loaded from: classes.dex */
public class ATAdChoice extends ATImageView {
    private static String a = "ATAdChoice";
    private String b;
    private String c;
    private String d;
    private Context e;

    /* JADX INFO: renamed from: com.anythink.expressad.widget.ATAdChoice$1, reason: invalid class name */
    public class AnonymousClass1 implements c {
        public AnonymousClass1() {
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            ATAdChoice.this.setImageBitmap(bitmap);
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    }

    public ATAdChoice(Context context) {
        super(context);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = context;
        a();
    }

    public ATAdChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = context;
        a();
    }

    public ATAdChoice(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = context;
        a();
    }

    private void a() {
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        setClickable(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(com.anythink.expressad.foundation.d.c cVar) {
        boolean z;
        if (cVar == null || cVar.v() == null) {
            z = false;
        } else {
            String strC = cVar.v().c();
            this.b = strC;
            if (!TextUtils.isEmpty(strC)) {
                String strB = cVar.v().b();
                this.d = strB;
                if (!TextUtils.isEmpty(strB) && !TextUtils.isEmpty(cVar.v().d())) {
                    z = true;
                }
            }
        }
        if (!z) {
            b.a();
            com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.a aVarB = b.b();
            if (aVarB != null) {
                String strH = aVarB.H();
                this.b = strH;
                if (!TextUtils.isEmpty(strH)) {
                    String strJ = aVarB.J();
                    this.d = strJ;
                    boolean z3 = (TextUtils.isEmpty(strJ) || TextUtils.isEmpty(aVarB.I())) ? false : true;
                    z = z3;
                }
            }
        }
        setImageUrl(this.b);
        return z;
    }

    private void b() {
        Context context = this.e;
        if (context != null) {
            com.anythink.expressad.foundation.g.d.b.a(context).a(this.b, new AnonymousClass1());
        }
    }

    private void c() {
        if (TextUtils.isEmpty(this.d)) {
            return;
        }
        s.a(this.e, this.d, null);
    }

    @Override // android.view.View
    public boolean performClick() {
        if (TextUtils.isEmpty(this.d)) {
            return true;
        }
        s.a(this.e, this.d, null);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setCampaign(j jVar) {
        boolean z;
        Context context;
        if (jVar instanceof com.anythink.expressad.foundation.d.c) {
            com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) jVar;
            if (cVar == null || cVar.v() == null) {
                z = false;
            } else {
                String strC = cVar.v().c();
                this.b = strC;
                if (!TextUtils.isEmpty(strC)) {
                    String strB = cVar.v().b();
                    this.d = strB;
                    if (!TextUtils.isEmpty(strB) && !TextUtils.isEmpty(cVar.v().d())) {
                        z = true;
                    }
                }
            }
            if (!z) {
                b.a();
                com.anythink.expressad.foundation.b.a.c().f();
                com.anythink.expressad.d.a aVarB = b.b();
                if (aVarB != null) {
                    String strH = aVarB.H();
                    this.b = strH;
                    if (!TextUtils.isEmpty(strH)) {
                        String strJ = aVarB.J();
                        this.d = strJ;
                        boolean z3 = (TextUtils.isEmpty(strJ) || TextUtils.isEmpty(aVarB.I())) ? false : true;
                        z = z3;
                    }
                }
            }
            setImageUrl(this.b);
            if (!z || (context = this.e) == null) {
                return;
            }
            com.anythink.expressad.foundation.g.d.b.a(context).a(this.b, new AnonymousClass1());
        }
    }
}
