package com.anythink.basead.ui.specialnote;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anythink.basead.a.j;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.a.c;
import com.anythink.core.common.o.a.f;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseSpecialNoteView extends LinearLayout {
    public static final long SEPECIAL_NOTE_INTERVAL_TIME = 500;
    public final String a;
    public final long b;
    public final int c;
    public long d;
    public long e;
    public long f;
    public long g;
    public a h;
    public Runnable i;
    public c j;
    public f.b k;
    public TextView l;
    public TextView m;
    public String n;
    private View o;
    private int p;
    private boolean q;

    /* JADX INFO: renamed from: com.anythink.basead.ui.specialnote.BaseSpecialNoteView$4, reason: invalid class name */
    public class AnonymousClass4 extends com.anythink.core.common.o.a.a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.core.common.o.a.a, com.anythink.core.common.o.a.b
        public final int getImpressionMinPercentageViewed() {
            return 50;
        }

        @Override // com.anythink.core.common.o.a.a, com.anythink.core.common.o.a.b
        public final void recordImpression(View view) {
            BaseSpecialNoteView.this.e();
        }
    }

    public interface a {
        void a(int i);
    }

    public BaseSpecialNoteView(Context context) {
        super(context);
        this.a = getClass().getSimpleName();
        this.b = 500L;
        this.c = 50;
        this.n = "";
        this.q = false;
    }

    public BaseSpecialNoteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = getClass().getSimpleName();
        this.b = 500L;
        this.c = 50;
        this.n = "";
        this.q = false;
    }

    public static /* synthetic */ void a(BaseSpecialNoteView baseSpecialNoteView) {
        if (baseSpecialNoteView.getWindowVisibility() == 0) {
            if (baseSpecialNoteView.j()) {
                long j = baseSpecialNoteView.e;
                if (j > 0) {
                    baseSpecialNoteView.e = j - 500;
                } else {
                    long j2 = baseSpecialNoteView.g;
                    if (j2 > 0) {
                        baseSpecialNoteView.g = j2 - 500;
                    }
                }
                baseSpecialNoteView.h();
                baseSpecialNoteView.e();
                return;
            }
        } else if (baseSpecialNoteView.d()) {
            baseSpecialNoteView.k();
        }
        View view = baseSpecialNoteView.o;
        if (view != null) {
            baseSpecialNoteView.j.a(view, baseSpecialNoteView.new AnonymousClass4());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.h == null) {
            return;
        }
        postDelayed(this.i, 500L);
    }

    private void f() {
        View view = this.o;
        if (view == null) {
            return;
        }
        this.j.a(view, new AnonymousClass4());
    }

    private void g() {
        if (getWindowVisibility() == 0) {
            if (j()) {
                long j = this.e;
                if (j > 0) {
                    this.e = j - 500;
                } else {
                    long j2 = this.g;
                    if (j2 > 0) {
                        this.g = j2 - 500;
                    }
                }
                h();
                e();
                return;
            }
        } else if (d()) {
            k();
        }
        View view = this.o;
        if (view != null) {
            this.j.a(view, new AnonymousClass4());
        }
    }

    private void h() {
        if (this.e > 0) {
            if (getVisibility() == 0) {
                setVisibility(4);
                return;
            }
            return;
        }
        long j = this.g;
        if (j <= 0) {
            i();
            return;
        }
        this.l.setText(Html.fromHtml(String.format(this.n, Integer.valueOf(((int) (j / 1000)) + 1))));
        if (getVisibility() != 0) {
            this.q = true;
            c();
        }
    }

    private void i() {
        if (this.o == null) {
            return;
        }
        new StringBuilder("SpecialNote do action,type:").append(this.p);
        a aVar = this.h;
        if (aVar != null) {
            aVar.a(this.p);
        }
        release();
    }

    private boolean j() {
        View view = this.o;
        if (view != null && view.getParent() != null) {
            Object parent = this.o.getParent();
            if (parent instanceof View) {
                return this.k.a((View) parent, this.o, 50, 0);
            }
        }
        return false;
    }

    private void k() {
        this.e = this.d;
        this.g = this.f;
        setVisibility(4);
        this.q = false;
    }

    public void a() {
        this.n = getContext().getString(i.a(n.a().f(), "myoffer_special_note_delay_click", com.anythink.expressad.foundation.h.i.g));
    }

    public abstract void b();

    public void c() {
        final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.2f, 1.0f);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.basead.ui.specialnote.BaseSpecialNoteView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseSpecialNoteView.this.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.anythink.basead.ui.specialnote.BaseSpecialNoteView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                BaseSpecialNoteView.this.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                BaseSpecialNoteView.this.setAlpha(((Float) valueAnimatorOfFloat.getAnimatedValue()).floatValue());
                BaseSpecialNoteView.this.setVisibility(0);
            }
        });
        valueAnimatorOfFloat.start();
    }

    public abstract boolean d();

    public boolean hasBeenShow() {
        return this.q;
    }

    public void initSetting(View view, int i, a aVar, long j, long j2) {
        this.p = i;
        a();
        b();
        setVisibility(4);
        this.j = j.a().b();
        this.k = j.a().c();
        this.o = view;
        this.h = aVar;
        this.d = j;
        this.f = j2;
        this.e = j;
        this.g = j2;
        this.i = new Runnable() { // from class: com.anythink.basead.ui.specialnote.BaseSpecialNoteView.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseSpecialNoteView.a(BaseSpecialNoteView.this);
            }
        };
        setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.specialnote.BaseSpecialNoteView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
            }
        });
        TextView textView = this.m;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.specialnote.BaseSpecialNoteView.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BaseSpecialNoteView.this.release();
                }
            });
        }
        TextView textView2 = this.l;
        if (textView2 != null) {
            textView2.setText(Html.fromHtml(String.format(this.n, Integer.valueOf(((int) (this.g / 1000)) + 1))));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resume();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        pause();
    }

    public void pause() {
        setVisibility(4);
        Runnable runnable = this.i;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        View view = this.o;
        if (view != null) {
            this.j.a(view);
        }
    }

    public void release() {
        if (this.h != null) {
            pause();
            this.h = null;
            this.o = null;
        }
    }

    public void reset(int i, long j, long j2) {
        this.p = i;
        this.d = j;
        this.f = j2;
        k();
    }

    public void resume() {
        if (j()) {
            h();
        }
        e();
    }
}
