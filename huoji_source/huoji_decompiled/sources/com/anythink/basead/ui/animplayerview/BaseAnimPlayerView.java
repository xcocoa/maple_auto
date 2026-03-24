package com.anythink.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.basead.c.f;
import com.anythink.basead.ui.WrapRoundImageView;
import com.anythink.basead.ui.animplayerview.BasePlayerView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.c;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.res.image.RecycleImageView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAnimPlayerView extends BasePlayerView {
    public final String a;
    public long b;
    public long c;
    public List<Bitmap> d;
    public String e;
    public RecycleImageView f;
    public WrapRoundImageView g;
    private boolean y;
    private boolean z;

    /* JADX INFO: renamed from: com.anythink.basead.ui.animplayerview.BaseAnimPlayerView$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Handler handler;
            while (true) {
                BaseAnimPlayerView baseAnimPlayerView = BaseAnimPlayerView.this;
                if (!baseAnimPlayerView.q) {
                    return;
                }
                if (baseAnimPlayerView.s || (handler = baseAnimPlayerView.u) == null) {
                    Thread.sleep(10L);
                } else {
                    try {
                        handler.sendEmptyMessage(1);
                    } catch (Throwable unused) {
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        }
    }

    public BaseAnimPlayerView(Context context) {
        super(context);
        this.a = getClass().getSimpleName();
        this.b = 0L;
        this.c = 0L;
        this.e = "";
        this.y = false;
        this.z = false;
        j();
    }

    public BaseAnimPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = getClass().getSimpleName();
        this.b = 0L;
        this.c = 0L;
        this.e = "";
        this.y = false;
        this.z = false;
        j();
    }

    public BaseAnimPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = getClass().getSimpleName();
        this.b = 0L;
        this.c = 0L;
        this.e = "";
        this.y = false;
        this.z = false;
        j();
    }

    public static /* synthetic */ boolean b(BaseAnimPlayerView baseAnimPlayerView) {
        baseAnimPlayerView.y = false;
        return false;
    }

    private void j() {
        this.u = new Handler(Looper.getMainLooper()) { // from class: com.anythink.basead.ui.animplayerview.BaseAnimPlayerView.2
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                BasePlayerView.a aVar;
                int i;
                BaseAnimPlayerView baseAnimPlayerView = BaseAnimPlayerView.this;
                if (baseAnimPlayerView.v == null) {
                    return;
                }
                long jElapsedRealtime = baseAnimPlayerView.b + SystemClock.elapsedRealtime();
                BaseAnimPlayerView baseAnimPlayerView2 = BaseAnimPlayerView.this;
                baseAnimPlayerView.i = jElapsedRealtime - baseAnimPlayerView2.c;
                if (!baseAnimPlayerView2.r && !baseAnimPlayerView2.s) {
                    baseAnimPlayerView2.r = true;
                    BasePlayerView.a aVar2 = baseAnimPlayerView2.v;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
                BaseAnimPlayerView baseAnimPlayerView3 = BaseAnimPlayerView.this;
                BasePlayerView.a aVar3 = baseAnimPlayerView3.v;
                if (aVar3 != null) {
                    aVar3.a(baseAnimPlayerView3.i);
                }
                BaseAnimPlayerView baseAnimPlayerView4 = BaseAnimPlayerView.this;
                if (!baseAnimPlayerView4.m && baseAnimPlayerView4.i >= baseAnimPlayerView4.j) {
                    baseAnimPlayerView4.m = true;
                    aVar = baseAnimPlayerView4.v;
                    if (aVar != null) {
                        i = 25;
                        aVar.a(i);
                    }
                } else if (!baseAnimPlayerView4.n && baseAnimPlayerView4.i >= baseAnimPlayerView4.k) {
                    baseAnimPlayerView4.n = true;
                    aVar = baseAnimPlayerView4.v;
                    if (aVar != null) {
                        i = 50;
                        aVar.a(i);
                    }
                } else if (!baseAnimPlayerView4.o && baseAnimPlayerView4.i >= baseAnimPlayerView4.l) {
                    baseAnimPlayerView4.o = true;
                    aVar = baseAnimPlayerView4.v;
                    if (aVar != null) {
                        i = 75;
                        aVar.a(i);
                    }
                }
                BaseAnimPlayerView baseAnimPlayerView5 = BaseAnimPlayerView.this;
                if (baseAnimPlayerView5.s || baseAnimPlayerView5.i < baseAnimPlayerView5.h) {
                    return;
                }
                baseAnimPlayerView5.l();
                BaseAnimPlayerView.b(BaseAnimPlayerView.this);
                BaseAnimPlayerView baseAnimPlayerView6 = BaseAnimPlayerView.this;
                baseAnimPlayerView6.s = true;
                BasePlayerView.a aVar4 = baseAnimPlayerView6.v;
                if (aVar4 != null) {
                    aVar4.c();
                }
                BaseAnimPlayerView.this.i();
            }
        };
    }

    private void k() {
        if (this.t != null) {
            return;
        }
        this.q = true;
        Thread thread = new Thread(new AnonymousClass3());
        this.t = thread;
        thread.setName("anythink_type_anim_player_progress");
        this.t.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.q = false;
        this.t = null;
    }

    public abstract void a();

    public final void a(final int i, final int i2) {
        RecycleImageView recycleImageView = new RecycleImageView(getContext());
        this.f = recycleImageView;
        recycleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.f, -1, -1);
        this.g = new WrapRoundImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.g.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(this.g, layoutParams);
        com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.e), i, i2, new b.a() { // from class: com.anythink.basead.ui.animplayerview.BaseAnimPlayerView.4
            @Override // com.anythink.core.common.res.b.a
            public final void onFail(String str, String str2) {
                BaseAnimPlayerView.this.a(f.a(f.l, f.O));
            }

            @Override // com.anythink.core.common.res.b.a
            public final void onSuccess(String str, Bitmap bitmap) {
                if (TextUtils.equals(str, BaseAnimPlayerView.this.e)) {
                    BaseAnimPlayerView.this.g.setBitmapAndResize(bitmap, i, i2);
                    com.anythink.core.common.o.c.a(BaseAnimPlayerView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.animplayerview.BaseAnimPlayerView.4.1
                        @Override // com.anythink.core.common.o.c.a
                        public final void a() {
                        }

                        @Override // com.anythink.core.common.o.c.a
                        public final void a(Bitmap bitmap2) {
                            BaseAnimPlayerView.this.f.setImageBitmap(bitmap2);
                        }
                    });
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.3f, 1.0f);
                    alphaAnimation.setFillAfter(true);
                    alphaAnimation.setDuration(100L);
                    BaseAnimPlayerView.this.g.startAnimation(alphaAnimation);
                    BaseAnimPlayerView.this.f.startAnimation(alphaAnimation);
                }
            }
        });
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public final void a(com.anythink.basead.c.e eVar) {
        this.z = true;
        super.a(eVar);
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public int e() {
        return 0;
    }

    public void f() {
        if (TextUtils.isEmpty(this.e)) {
            a(f.a(f.l, f.O));
        }
    }

    public void g() {
        l();
        i();
        Handler handler = this.u;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        d();
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public long getCurrentPosition() {
        return this.i;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public long getVideoLength() {
        return this.h;
    }

    public final void h() {
        a(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels);
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public boolean hasVideo() {
        return this.w != null;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void init(l lVar, m mVar, boolean z, List<Bitmap> list) {
        super.init(lVar, mVar, z, list);
        this.d = list;
        this.e = lVar.y();
        long jMax = Math.max(this.x.n.ai(), e());
        this.h = jMax;
        this.j = Math.round(jMax * 0.25f);
        this.k = Math.round(this.h * 0.5f);
        this.l = Math.round(this.h * 0.75f);
        BasePlayerView.a aVar = this.v;
        if (aVar != null) {
            aVar.b(this.h);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.animplayerview.BaseAnimPlayerView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BasePlayerView.a aVar2 = BaseAnimPlayerView.this.v;
                if (aVar2 != null) {
                    aVar2.d();
                }
            }
        });
        f();
        StringBuilder sb = new StringBuilder("init success mDuration:");
        sb.append(this.h);
        sb.append(",mEndCardImageUrl:");
        sb.append(this.e);
        sb.append(",mAnimBitmapList:");
        List<Bitmap> list2 = this.d;
        sb.append(list2 == null ? "null" : Integer.valueOf(list2.size()));
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public boolean isMute() {
        return this.p;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public boolean isPlaying() {
        return this.y;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g();
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void pause() {
        this.y = false;
        this.b += SystemClock.elapsedRealtime() - this.c;
        l();
        b();
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void setListener(BasePlayerView.a aVar) {
        this.v = aVar;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void setMute(boolean z) {
        this.p = z;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void start() {
        if (this.z) {
            return;
        }
        this.y = !this.s;
        this.c = SystemClock.elapsedRealtime();
        if (this.t == null) {
            this.q = true;
            Thread thread = new Thread(new AnonymousClass3());
            this.t = thread;
            thread.setName("anythink_type_anim_player_progress");
            this.t.start();
        }
        if (this.y) {
            a();
        }
        new StringBuilder("start mIsPlaying:").append(this.y);
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void stop() {
        this.y = false;
        l();
        BasePlayerView.a aVar = this.v;
        if (aVar != null) {
            aVar.b();
        }
        c();
        i();
    }
}
