package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.b.b;
import com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View;
import com.anythink.basead.ui.guidetoclickv2.b;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.e;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public Queue<b> a;
    public BaseG2CV2View.b b = new BaseG2CV2View.b() { // from class: com.anythink.basead.ui.guidetoclickv2.a.1
        @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View.b
        public final void a() {
            a.this.f();
        }

        @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View.b
        public final void b() {
            a.this.c();
        }
    };
    private Context c;
    private l d;
    private m e;
    private RelativeLayout f;
    private int g;
    private View h;
    private b i;
    private b.a j;

    public a(Context context, l lVar, m mVar, int i, RelativeLayout relativeLayout, View view, b.a aVar) {
        this.c = context;
        this.d = lVar;
        this.e = mVar;
        this.g = i;
        this.f = relativeLayout;
        this.h = view;
        this.j = aVar;
        d();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean a(int i) {
        boolean z = false;
        switch (i) {
            case 1:
            case 6:
                return z;
            case 2:
                if ((this.g != 1 || com.anythink.basead.a.d.a(this.d, this.e)) && this.g != 3) {
                    return true;
                }
                return z;
            case 3:
                int i2 = this.g;
                if (i2 != 1 && i2 != 3) {
                    return true;
                }
                return z;
            case 4:
            case 5:
                int i3 = this.g;
                if (i3 != 1 && i3 != 2 && i3 != 3) {
                    return true;
                }
                if (this.h == null) {
                }
                return z;
            case 7:
                if (this.g != 3) {
                }
                return z;
            default:
                return true;
        }
        z = true;
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d() {
        n nVar;
        int i;
        this.a = new ConcurrentLinkedQueue();
        n nVar2 = this.e.n;
        int i2 = 3;
        int iW = this.g == 3 ? nVar2.w() : e.g(this.c);
        long jAp = nVar2.ap();
        String strAq = nVar2.aq();
        if (TextUtils.isEmpty(strAq)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(strAq);
            if (jSONArray.length() > 0) {
                int i3 = 0;
                while (i3 < jSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i3);
                    int iOptInt = jSONObjectOptJSONObject.optInt("cgf_type", -1);
                    boolean z = true;
                    switch (iOptInt) {
                        case 1:
                        case 6:
                            z = false;
                            break;
                        case 2:
                            if ((this.g == 1 && !com.anythink.basead.a.d.a(this.d, this.e)) || this.g == i2) {
                            }
                            break;
                        case 3:
                            int i4 = this.g;
                            if (i4 == 1 || i4 == i2) {
                            }
                            break;
                        case 4:
                        case 5:
                            int i5 = this.g;
                            if ((i5 == 1 || i5 == 2 || i5 == i2) && this.h != null) {
                            }
                            break;
                        case 7:
                            if (this.g != i2) {
                                break;
                            }
                            break;
                    }
                    if (!z) {
                        long jOptLong = jSONObjectOptJSONObject.optLong("cgf_st", -1L);
                        if (iOptInt <= 0 || jOptLong < 0) {
                            nVar = nVar2;
                            i = i3;
                        } else {
                            nVar = nVar2;
                            i = i3;
                            this.a.add(new b(this.c, this.d, this.e, this.g, new b.a(i3 + 1, iOptInt, jAp, jOptLong, nVar2.ar(), iW), this.f, this.h, this.j, this.b));
                        }
                    }
                    i3 = i + 1;
                    nVar2 = nVar;
                    i2 = 3;
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void e() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.a();
        } else {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        g();
        if (this.a.size() > 0) {
            this.i = this.a.poll();
            e();
        }
    }

    private void g() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.c();
            this.i = null;
        }
    }

    public final void a() {
        e();
    }

    public final void b() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.b();
        }
    }

    public final void c() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.b();
        }
        g();
        Queue<b> queue = this.a;
        if (queue != null) {
            queue.clear();
        }
    }
}
