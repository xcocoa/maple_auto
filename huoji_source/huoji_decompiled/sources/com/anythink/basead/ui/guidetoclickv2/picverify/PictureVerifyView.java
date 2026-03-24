package com.anythink.basead.ui.guidetoclickv2.picverify;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.anythink.core.common.o.i;
import com.anythink.core.common.ui.component.RoundImageView;

/* JADX INFO: loaded from: classes.dex */
public class PictureVerifyView extends RoundImageView {
    private static final int c = 1;
    private static final int d = 2;
    private static final int e = 3;
    private static final int f = 4;
    private static final int g = 5;
    private static final int h = 6;
    private static final int i = 20;
    private float A;
    private float B;
    private float C;
    private int j;
    private c k;
    private c l;
    private Bitmap m;
    private Path n;
    private Paint o;
    private Paint p;
    private Paint q;
    private long r;
    private long s;
    private int t;
    private boolean u;
    private a v;
    private com.anythink.basead.ui.guidetoclickv2.picverify.a w;
    private int x;
    private int y;
    private float z;

    public interface a {
        void a();

        void b();
    }

    public PictureVerifyView(Context context) {
        this(context, null);
    }

    public PictureVerifyView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PictureVerifyView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.j = 4;
        this.t = 50;
        this.u = true;
        this.y = -1;
        b bVar = new b(context);
        this.w = bVar;
        this.p = bVar.a();
        Paint paint = new Paint();
        this.q = paint;
        paint.setColor(Color.parseColor("#B5B5B5"));
        this.q.setStrokeWidth(i.a(getContext(), 1.0f));
        this.q.setStyle(Paint.Style.STROKE);
        this.o = this.w.b();
    }

    private Bitmap a(Bitmap bitmap) {
        c cVar = this.k;
        int i2 = cVar.a;
        int i3 = cVar.b;
        int i4 = this.t;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i2, i3, i4, i4);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private void a() {
        Bitmap bitmapCreateBitmap;
        if (getDrawable() == null || getWidth() <= 0 || getHeight() < 0) {
            return;
        }
        if (this.k == null) {
            this.k = this.w.a(getWidth(), getHeight(), this.t);
            this.l = this.w.b(getWidth(), getHeight(), this.t);
        }
        if (this.n == null) {
            Path pathA = this.w.a(this.t);
            this.n = pathA;
            c cVar = this.k;
            pathA.offset(cVar.a, cVar.b);
        }
        if (this.m == null) {
            if (getDrawable() != null) {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap2);
                getDrawable().setBounds(0, 0, getWidth(), getHeight());
                canvas.clipPath(this.n);
                getDrawable().draw(canvas);
                this.w.a(getContext(), canvas, this.n);
                c cVar2 = this.k;
                int i2 = cVar2.a;
                int i3 = cVar2.b;
                int i4 = this.t;
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap2, i2, i3, i4, i4);
                bitmapCreateBitmap2.recycle();
            } else {
                bitmapCreateBitmap = null;
            }
            this.m = bitmapCreateBitmap;
        }
    }

    private void a(float f2, float f3) {
        this.j = 1;
        c cVar = this.l;
        int i2 = this.t;
        cVar.a = (int) (f2 - (i2 / 2.0f));
        cVar.b = (int) (f3 - (i2 / 2.0f));
        this.r = System.currentTimeMillis();
        postInvalidate();
    }

    private void a(com.anythink.basead.ui.guidetoclickv2.picverify.a aVar) {
        this.w = aVar;
    }

    private void a(boolean z) {
        this.u = z;
    }

    private void b() {
        this.j = 4;
        this.m = null;
        this.k = null;
        this.n = null;
        postInvalidate();
    }

    private void b(float f2, float f3) {
        this.j = 2;
        c cVar = this.l;
        cVar.a = (int) (cVar.a + f2);
        cVar.b = (int) (cVar.b + f3);
        postInvalidate();
    }

    private void c() {
        this.j = 6;
        postInvalidate();
    }

    private void d() {
        this.j = 5;
        postInvalidate();
    }

    private Bitmap e() {
        if (getDrawable() == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        getDrawable().setBounds(0, 0, getWidth(), getHeight());
        canvas.clipPath(this.n);
        getDrawable().draw(canvas);
        this.w.a(getContext(), canvas, this.n);
        c cVar = this.k;
        int i2 = cVar.a;
        int i3 = cVar.b;
        int i4 = this.t;
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, i2, i3, i4, i4);
        bitmapCreateBitmap.recycle();
        return bitmapCreateBitmap2;
    }

    private void f() {
        if (Math.abs(this.l.a - this.k.a) >= 20 || Math.abs(this.l.b - this.k.b) >= 20) {
            this.j = 6;
            postInvalidate();
            return;
        }
        this.j = 5;
        postInvalidate();
        a aVar = this.v;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void callback(a aVar) {
        this.v = aVar;
    }

    public void down(int i2) {
        this.r = System.currentTimeMillis();
        this.j = 1;
        c cVar = this.l;
        int width = getWidth() - this.t;
        cVar.a = (int) (((i2 / 100.0f) * (width - (r2 * 2))) + this.l.c);
        postInvalidate();
    }

    public void loose() {
        this.j = 3;
        this.s = System.currentTimeMillis();
        if (Math.abs(this.l.a - this.k.a) >= 20 || Math.abs(this.l.b - this.k.b) >= 20) {
            this.j = 6;
            postInvalidate();
        } else {
            this.j = 5;
            postInvalidate();
            a aVar = this.v;
            if (aVar != null) {
                aVar.a();
            }
        }
        postInvalidate();
    }

    public void move(int i2) {
        if (this.y != i2) {
            this.y = i2;
            this.j = 2;
            c cVar = this.l;
            int width = getWidth() - this.t;
            cVar.a = (int) (((i2 / 100.0f) * (width - (r2 * 2))) + this.l.c);
            postInvalidate();
        }
    }

    @Override // com.anythink.core.common.ui.component.RoundImageView, com.anythink.core.common.res.image.RecycleImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmapCreateBitmap;
        if (getDrawable() != null && getWidth() > 0 && getHeight() >= 0) {
            if (this.k == null) {
                this.k = this.w.a(getWidth(), getHeight(), this.t);
                this.l = this.w.b(getWidth(), getHeight(), this.t);
            }
            if (this.n == null) {
                Path pathA = this.w.a(this.t);
                this.n = pathA;
                c cVar = this.k;
                pathA.offset(cVar.a, cVar.b);
            }
            if (this.m == null) {
                if (getDrawable() != null) {
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                    getDrawable().setBounds(0, 0, getWidth(), getHeight());
                    canvas2.clipPath(this.n);
                    getDrawable().draw(canvas2);
                    this.w.a(getContext(), canvas2, this.n);
                    c cVar2 = this.k;
                    int i2 = cVar2.a;
                    int i3 = cVar2.b;
                    int i4 = this.t;
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap2, i2, i3, i4, i4);
                    bitmapCreateBitmap2.recycle();
                } else {
                    bitmapCreateBitmap = null;
                }
                this.m = bitmapCreateBitmap;
            }
        }
        if (getDrawable() == null) {
            return;
        }
        if (this.j != 5) {
            canvas.drawPath(this.n, this.p);
            c cVar3 = this.k;
            int i5 = cVar3.a;
            int i6 = cVar3.b;
            int i7 = this.t;
            canvas.drawRect(i5, i6, i5 + i7, i6 + i7, this.q);
        }
        int i8 = this.j;
        if (i8 == 2 || i8 == 4 || i8 == 1 || i8 == 6) {
            Bitmap bitmap = this.m;
            c cVar4 = this.l;
            canvas.drawBitmap(bitmap, cVar4.a, cVar4.b, this.o);
        }
    }

    public void setBitmap(Bitmap bitmap) {
        this.n = null;
        this.l = null;
        this.k = null;
        this.m.recycle();
        this.m = null;
        setImageBitmap(bitmap);
    }

    public void setBlockSize(int i2) {
        this.t = i2;
        this.n = null;
        this.l = null;
        this.k = null;
        this.m = null;
        postInvalidate();
    }
}
