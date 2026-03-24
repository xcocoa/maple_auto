package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.basead.ui.b.b;
import com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import com.anythink.expressad.exoplayer.f;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public Context a;
    public RelativeLayout b;
    public View c;
    public Runnable d;
    private l e;
    private m f;
    private int g;
    private int h;
    private BaseG2CV2View.b i;
    private BaseG2CV2View j;
    private long k;
    private long l;
    private long m;
    private String n;
    private int o;
    private b.a p;
    private boolean q = false;
    private int r;
    private long s;
    private long t;

    /* JADX INFO: renamed from: com.anythink.basead.ui.guidetoclickv2.b$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ BaseG2CV2View a;

        public AnonymousClass2(BaseG2CV2View baseG2CV2View) {
            this.a = baseG2CV2View;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RelativeLayout relativeLayout = b.this.b;
            if (relativeLayout == null || relativeLayout.getMeasuredHeight() <= i.a(b.this.a, 90.0f)) {
                return;
            }
            ((FingerG2CV2View) this.a).setFingerViewMode(GuideToClickView.a.f);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.guidetoclickv2.b$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            RelativeLayout relativeLayout = b.this.b;
            if (relativeLayout != null) {
                if ((relativeLayout.getMeasuredHeight() < 100 || b.this.b.getMeasuredWidth() < 200) && b.this.i != null) {
                    b.this.i.b();
                }
            }
        }
    }

    public static class a {
        public int a;
        public int b;
        public long c;
        public long d;
        private String e;
        private int f;

        public a(int i, int i2, long j, long j2, String str, int i3) {
            this.a = i;
            this.b = i2;
            this.c = j;
            this.d = j2;
            this.e = str;
            this.f = i3;
        }
    }

    public b(Context context, l lVar, m mVar, final int i, a aVar, RelativeLayout relativeLayout, View view, b.a aVar2, BaseG2CV2View.b bVar) {
        this.l = 0L;
        this.m = f.a;
        this.n = "";
        this.o = 1;
        this.a = context;
        this.e = lVar;
        this.f = mVar;
        this.b = relativeLayout;
        this.c = view;
        this.g = i;
        this.p = aVar2;
        this.i = bVar;
        this.h = aVar.b;
        this.m = aVar.c;
        this.l = aVar.d;
        this.n = aVar.e;
        this.o = aVar.f;
        this.r = aVar.a;
        this.d = new Runnable() { // from class: com.anythink.basead.ui.guidetoclickv2.b.1
            @Override // java.lang.Runnable
            public final void run() {
                View view2;
                int i2;
                if (b.this.j == null) {
                    b bVar2 = b.this;
                    bVar2.j = b.a(bVar2, bVar2.h);
                    if (b.this.j != null) {
                        b.this.s = System.currentTimeMillis();
                        b.this.j.init(b.this.m, i, b.this.o, b.this.p, b.this.i);
                        b bVar3 = b.this;
                        RelativeLayout relativeLayout2 = bVar3.b;
                        if (relativeLayout2 != null) {
                            relativeLayout2.addView(bVar3.j);
                        }
                        b bVar4 = b.this;
                        int i3 = bVar4.h;
                        if (i3 == 3 || i3 == 4 || i3 == 6) {
                            view2 = bVar4.c;
                            if (view2 != null) {
                                i2 = 0;
                                view2.setVisibility(i2);
                            }
                        } else {
                            view2 = bVar4.c;
                            if (view2 != null) {
                                i2 = 8;
                                view2.setVisibility(i2);
                            }
                        }
                    }
                }
                b.this.j.resumeAnimPlay();
            }
        };
    }

    public static /* synthetic */ BaseG2CV2View a(b bVar, int i) {
        BaseG2CV2View hintTextG2CV2View;
        BaseG2CV2View baseG2CV2View;
        switch (i) {
            case 1:
                GestureG2CV2View gestureG2CV2View = new GestureG2CV2View(bVar.a);
                gestureG2CV2View.setLayoutParams(bVar.c(i));
                gestureG2CV2View.setVerticalLandscape(bVar.c == null);
                baseG2CV2View = gestureG2CV2View;
                break;
            case 2:
                PicVerifyG2CV2View picVerifyG2CV2View = new PicVerifyG2CV2View(bVar.a);
                picVerifyG2CV2View.loadImage(bVar.e.y());
                hintTextG2CV2View = picVerifyG2CV2View;
                hintTextG2CV2View.setLayoutParams(bVar.c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 3:
                QuestionDialogG2CV2View questionDialogG2CV2View = new QuestionDialogG2CV2View(bVar.a);
                questionDialogG2CV2View.setLayoutParams(bVar.c(i));
                questionDialogG2CV2View.setQuestionAnswer(!TextUtils.isEmpty(bVar.e.v()) ? bVar.e.v() : !TextUtils.isEmpty(bVar.e.w()) ? bVar.e.w() : "", bVar.n);
                baseG2CV2View = questionDialogG2CV2View;
                break;
            case 4:
                hintTextG2CV2View = new HintTextG2CV2View(bVar.a);
                hintTextG2CV2View.setLayoutParams(bVar.c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 5:
                hintTextG2CV2View = new JumpConfirmG2CV2View(bVar.a);
                hintTextG2CV2View.setLayoutParams(bVar.c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 6:
                FingerG2CV2View fingerG2CV2View = new FingerG2CV2View(bVar.a);
                int i2 = 501;
                switch (bVar.g) {
                    case 2:
                        i2 = 502;
                        if (bVar.c == null) {
                            i2 = 503;
                        }
                        break;
                    case 3:
                        i2 = GuideToClickView.a.g;
                        break;
                    case 4:
                        i2 = GuideToClickView.a.e;
                        bVar.b.post(bVar.new AnonymousClass2(fingerG2CV2View));
                        break;
                    case 5:
                    case 6:
                        i2 = 504;
                        break;
                }
                fingerG2CV2View.setFingerViewMode(i2);
                hintTextG2CV2View = fingerG2CV2View;
                hintTextG2CV2View.setLayoutParams(bVar.c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 7:
                hintTextG2CV2View = new FullOrientationG2CV2View(bVar.a);
                hintTextG2CV2View.setLayoutParams(bVar.c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            default:
                baseG2CV2View = null;
                break;
        }
        int i3 = bVar.g;
        if (i3 == 5 || i3 == 6) {
            bVar.b.post(bVar.new AnonymousClass3());
        }
        return baseG2CV2View;
    }

    private void a(int i) {
        if (i == 3 || i == 4 || i == 6) {
            View view = this.c;
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        View view2 = this.c;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    private BaseG2CV2View b(int i) {
        BaseG2CV2View hintTextG2CV2View;
        BaseG2CV2View baseG2CV2View;
        switch (i) {
            case 1:
                GestureG2CV2View gestureG2CV2View = new GestureG2CV2View(this.a);
                gestureG2CV2View.setLayoutParams(c(i));
                gestureG2CV2View.setVerticalLandscape(this.c == null);
                baseG2CV2View = gestureG2CV2View;
                break;
            case 2:
                PicVerifyG2CV2View picVerifyG2CV2View = new PicVerifyG2CV2View(this.a);
                picVerifyG2CV2View.loadImage(this.e.y());
                hintTextG2CV2View = picVerifyG2CV2View;
                hintTextG2CV2View.setLayoutParams(c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 3:
                QuestionDialogG2CV2View questionDialogG2CV2View = new QuestionDialogG2CV2View(this.a);
                questionDialogG2CV2View.setLayoutParams(c(i));
                questionDialogG2CV2View.setQuestionAnswer(!TextUtils.isEmpty(this.e.v()) ? this.e.v() : !TextUtils.isEmpty(this.e.w()) ? this.e.w() : "", this.n);
                baseG2CV2View = questionDialogG2CV2View;
                break;
            case 4:
                hintTextG2CV2View = new HintTextG2CV2View(this.a);
                hintTextG2CV2View.setLayoutParams(c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 5:
                hintTextG2CV2View = new JumpConfirmG2CV2View(this.a);
                hintTextG2CV2View.setLayoutParams(c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 6:
                FingerG2CV2View fingerG2CV2View = new FingerG2CV2View(this.a);
                int i2 = 501;
                switch (this.g) {
                    case 2:
                        i2 = 502;
                        if (this.c == null) {
                            i2 = 503;
                        }
                        break;
                    case 3:
                        i2 = GuideToClickView.a.g;
                        break;
                    case 4:
                        i2 = GuideToClickView.a.e;
                        this.b.post(new AnonymousClass2(fingerG2CV2View));
                        break;
                    case 5:
                    case 6:
                        i2 = 504;
                        break;
                }
                fingerG2CV2View.setFingerViewMode(i2);
                hintTextG2CV2View = fingerG2CV2View;
                hintTextG2CV2View.setLayoutParams(c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            case 7:
                hintTextG2CV2View = new FullOrientationG2CV2View(this.a);
                hintTextG2CV2View.setLayoutParams(c(i));
                baseG2CV2View = hintTextG2CV2View;
                break;
            default:
                baseG2CV2View = null;
                break;
        }
        int i3 = this.g;
        if (i3 == 5 || i3 == 6) {
            this.b.post(new AnonymousClass3());
        }
        return baseG2CV2View;
    }

    private static /* synthetic */ void b(b bVar, int i) {
        if (i == 3 || i == 4 || i == 6) {
            View view = bVar.c;
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        View view2 = bVar.c;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    private RelativeLayout.LayoutParams c(int i) {
        RelativeLayout.LayoutParams layoutParams;
        int i2;
        switch (i) {
            case 1:
                return new RelativeLayout.LayoutParams(-1, -1);
            case 2:
                return new RelativeLayout.LayoutParams(-1, -1);
            case 3:
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(13);
                return layoutParams;
            case 4:
                layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (this.g != 2 && this.o == 1) {
                    layoutParams.setMargins(0, 0, 0, i.a(this.b.getContext(), 290.0f));
                    layoutParams.addRule(12);
                    return layoutParams;
                }
                layoutParams.addRule(13);
                return layoutParams;
            case 5:
                if (this.g == 2) {
                    layoutParams = new RelativeLayout.LayoutParams(-1, i.a(this.b.getContext(), 48.0f));
                    layoutParams.setMargins(i.a(this.b.getContext(), 36.0f), 0, i.a(this.b.getContext(), 36.0f), 0);
                    layoutParams.addRule(13);
                    return layoutParams;
                }
                layoutParams = new RelativeLayout.LayoutParams(i.a(this.b.getContext(), 300.0f), i.a(this.b.getContext(), 48.0f));
                if (this.o == 2) {
                    layoutParams.setMargins(0, 0, i.a(this.b.getContext(), 24.0f), i.a(this.b.getContext(), 96.0f));
                    i2 = 11;
                } else {
                    layoutParams.setMargins(0, 0, 0, i.a(this.b.getContext(), 290.0f));
                    i2 = 14;
                }
                layoutParams.addRule(i2);
                layoutParams.addRule(12);
                return layoutParams;
            case 6:
                return new RelativeLayout.LayoutParams(-1, -1);
            case 7:
                return new RelativeLayout.LayoutParams(-1, -1);
            default:
                return new RelativeLayout.LayoutParams(-2, -2);
        }
    }

    private void d() {
        int i = this.g;
        if (i == 5 || i == 6) {
            this.b.post(new AnonymousClass3());
        }
    }

    private void e() {
        if (this.s > 0) {
            m mVar = this.f;
            l lVar = this.e;
            e.a(mVar, lVar, com.anythink.basead.a.d.a(lVar, mVar), this.r, this.h, this.s, this.t);
        }
    }

    public final void a() {
        if (this.q) {
            return;
        }
        this.q = true;
        this.k = SystemClock.elapsedRealtime();
        n.a().a(this.d, this.l);
    }

    public final void b() {
        if (this.q) {
            this.q = false;
            long j = this.l;
            if (j > 0) {
                this.l = Math.max(j - (SystemClock.elapsedRealtime() - this.k), 0L);
            }
            n.a().d(this.d);
            BaseG2CV2View baseG2CV2View = this.j;
            if (baseG2CV2View != null) {
                baseG2CV2View.pauseAnimPlay();
            }
        }
    }

    public final void c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.s;
        this.t = jCurrentTimeMillis - j;
        if (j > 0) {
            m mVar = this.f;
            l lVar = this.e;
            e.a(mVar, lVar, com.anythink.basead.a.d.a(lVar, mVar), this.r, this.h, this.s, this.t);
        }
        n.a().d(this.d);
        BaseG2CV2View baseG2CV2View = this.j;
        if (baseG2CV2View != null) {
            baseG2CV2View.release();
            x.a(this.j);
        }
        View view = this.c;
        if (view != null) {
            view.setVisibility(8);
        }
    }
}
