package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.b.n;
import com.anythink.expressad.exoplayer.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseG2CV2View extends RelativeLayout {
    public b a;
    public b.a b;
    private long c;
    private long d;
    private Runnable e;
    private boolean f;
    private boolean g;

    public class a {
        public static final int a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;

        private a() {
        }
    }

    public interface b {
        void a();

        void b();
    }

    public BaseG2CV2View(Context context) {
        this(context, null);
    }

    public BaseG2CV2View(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseG2CV2View(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = f.a;
        this.g = false;
    }

    public static /* synthetic */ boolean b(BaseG2CV2View baseG2CV2View) {
        baseG2CV2View.f = true;
        return true;
    }

    public void a() {
    }

    public abstract void a(int i, int i2);

    public void b() {
    }

    public boolean canStartNextAnim() {
        return true;
    }

    public void init(long j, int i, int i2, b.a aVar, b bVar) {
        this.c = j;
        this.b = aVar;
        this.a = bVar;
        this.f = false;
        this.e = new Runnable() { // from class: com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseG2CV2View baseG2CV2View = BaseG2CV2View.this;
                if (baseG2CV2View.a == null || baseG2CV2View.f || !BaseG2CV2View.this.canStartNextAnim()) {
                    return;
                }
                BaseG2CV2View.b(BaseG2CV2View.this);
                BaseG2CV2View.this.a.a();
                BaseG2CV2View.this.b();
            }
        };
        a(i, i2);
    }

    public void pauseAnimPlay() {
        if (this.g) {
            this.g = false;
            long j = this.c;
            if (j > 0) {
                this.c = Math.max(j - (SystemClock.elapsedRealtime() - this.d), 0L);
            }
            n.a().d(this.e);
            b();
        }
    }

    public void release() {
    }

    public void resumeAnimPlay() {
        if (this.g) {
            return;
        }
        this.g = true;
        this.d = SystemClock.elapsedRealtime();
        if (this.c <= 0) {
            this.a.a();
        } else {
            a();
            n.a().a(this.e, this.c);
        }
    }
}
