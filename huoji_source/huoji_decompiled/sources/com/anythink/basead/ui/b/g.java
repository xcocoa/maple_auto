package com.anythink.basead.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.b.b;
import com.anythink.basead.ui.specialnote.BaseSpecialNoteView;
import com.anythink.basead.ui.specialnote.ScreenSpecialNoteView;
import com.anythink.basead.ui.specialnote.SimpleSpecialNoteView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g extends b {
    public BaseSpecialNoteView i;
    private long j;
    private boolean k = false;
    private boolean l = false;

    /* JADX WARN: Removed duplicated region for block: B:37:0x007c A[PHI: r0
      0x007c: PHI (r0v12 long) = (r0v11 long), (r0v11 long), (r0v14 long) binds: [B:30:0x0065, B:32:0x006e, B:36:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(int i) {
        long jAe;
        long jAf;
        long j;
        long j2;
        if (this.b.P() || this.k || this.i == null) {
            return;
        }
        if (i != 5) {
            if (i != 6) {
                if (i == 7 && this.c.n.ad()) {
                    jAe = this.c.n.ag();
                    jAf = this.c.n.ah();
                    j = this.j;
                    j2 = 0;
                    if (j > 0 || j >= jAe + jAf + 1000) {
                        j2 = jAe;
                    } else if (jAf + 1000 >= j) {
                        jAf = j - 1000;
                    } else {
                        jAe = (j - jAf) - 1000;
                        j2 = jAe;
                    }
                    a(i, j2, jAf);
                }
                return;
            }
            if (!this.c.n.ac()) {
                return;
            }
        } else if (!this.c.n.ab()) {
            return;
        }
        jAe = this.c.n.ae();
        jAf = this.c.n.af();
        j = this.j;
        j2 = 0;
        if (j > 0) {
            j2 = jAe;
        }
        a(i, j2, jAf);
    }

    private void a(final int i, final long j, final long j2) {
        if (j >= 0 && j2 >= 0) {
            n.a().b(new Runnable() { // from class: com.anythink.basead.ui.b.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSpecialNoteView baseSpecialNoteView = g.this.i;
                    if (baseSpecialNoteView != null) {
                        if (baseSpecialNoteView.getParent() == null) {
                            g gVar = g.this;
                            gVar.i.initSetting(gVar.d, i, new BaseSpecialNoteView.a() { // from class: com.anythink.basead.ui.b.g.1.1
                                @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView.a
                                public final void a(int i2) {
                                    b.a aVar = g.this.h;
                                    if (aVar != null) {
                                        aVar.a(i2, 4);
                                    }
                                }
                            }, j, j2);
                            g gVar2 = g.this;
                            gVar2.d.addView(gVar2.i);
                            return;
                        }
                        if (i == 7) {
                            g gVar3 = g.this;
                            if (!com.anythink.basead.a.d.a(gVar3.b, gVar3.c) || g.this.i.hasBeenShow()) {
                                return;
                            }
                            g.this.i.pause();
                            g.this.i.reset(i, j, j2);
                            g.this.i.resume();
                        }
                    }
                }
            });
        }
    }

    private void a(ViewGroup.LayoutParams layoutParams) {
        BaseSpecialNoteView baseSpecialNoteView = this.i;
        if (baseSpecialNoteView != null) {
            baseSpecialNoteView.setLayoutParams(layoutParams);
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a() {
        BaseSpecialNoteView baseSpecialNoteView = this.i;
        if (baseSpecialNoteView != null) {
            baseSpecialNoteView.release();
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(int i, Map<String, Object> map) {
        int i2;
        if (i == 102) {
            this.l = true;
            return;
        }
        if (i == 103) {
            if (com.anythink.basead.a.d.a(this.b, this.c)) {
                a(7);
                return;
            }
            return;
        }
        switch (i) {
            case 112:
                break;
            case 113:
                this.k = true;
                break;
            case 114:
                if (!com.anythink.basead.a.d.a(this.b, this.c)) {
                    i2 = 5;
                } else if (this.l) {
                    return;
                } else {
                    i2 = 6;
                }
                a(i2);
                return;
            default:
                return;
        }
        a();
    }

    public final void a(long j) {
        this.j = j;
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(Context context, l lVar, m mVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i, b.a aVar) {
        com.anythink.core.common.f.n nVar;
        super.a(context, lVar, mVar, viewGroup, relativeLayout, view, i, aVar);
        int i2 = this.e;
        this.i = (i2 == 4 || i2 == 5 || i2 == 6) ? new SimpleSpecialNoteView(this.a) : new ScreenSpecialNoteView(this.a);
        m mVar2 = this.c;
        if (mVar2 == null || !String.valueOf(mVar2.j).equals("4") || (nVar = this.c.n) == null) {
            return;
        }
        this.j = nVar.t();
    }
}
