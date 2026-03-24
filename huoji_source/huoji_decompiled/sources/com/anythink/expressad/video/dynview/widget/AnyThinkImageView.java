package com.anythink.expressad.video.dynview.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class AnyThinkImageView extends ImageView {
    private static final String a = "MBridgeImageView";
    private Xfermode b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private float[] l;
    private float[] m;
    private RectF n;
    private RectF o;
    private boolean p;
    private boolean q;
    private Path r;
    private Paint s;

    public AnyThinkImageView(Context context) {
        this(context, null);
    }

    public AnyThinkImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AnyThinkImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.r = new Path();
        this.s = new Paint();
        this.l = new float[8];
        this.m = new float[8];
        this.o = new RectF();
        this.n = new RectF();
        this.b = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a() {
        if (this.l == null || this.m == null) {
            return;
        }
        int i = 0;
        while (true) {
            try {
                float[] fArr = this.l;
                if (i >= fArr.length) {
                    return;
                }
                int i2 = this.e;
                fArr[i] = i2;
                this.m[i] = i2 - (this.j / 2.0f);
                i++;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
    }

    private void a(int i, int i2) {
        Path path = this.r;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.s;
        if (paint != null) {
            paint.setStrokeWidth(i);
            this.s.setColor(i2);
            this.s.setStyle(Paint.Style.STROKE);
        }
    }

    private void a(Canvas canvas) {
        a(canvas, this.j, this.k, this.o, this.l);
    }

    private void a(Canvas canvas, int i, int i2, RectF rectF, float[] fArr) {
        try {
            a(i, i2);
            Path path = this.r;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.r, this.s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b() {
        int i;
        int i2;
        int i3;
        try {
            if (this.l == null || this.m == null) {
                return;
            }
            int i4 = 0;
            while (true) {
                i = 2;
                if (i4 >= 2) {
                    break;
                }
                float[] fArr = this.l;
                int i5 = this.f;
                fArr[i4] = i5;
                this.m[i4] = i5 - (this.j / 2.0f);
                i4++;
            }
            while (true) {
                i2 = 4;
                if (i >= 4) {
                    break;
                }
                float[] fArr2 = this.l;
                int i6 = this.g;
                fArr2[i] = i6;
                this.m[i] = i6 - (this.j / 2.0f);
                i++;
            }
            while (true) {
                if (i2 >= 6) {
                    break;
                }
                float[] fArr3 = this.l;
                int i7 = this.h;
                fArr3[i2] = i7;
                this.m[i2] = i7 - (this.j / 2.0f);
                i2++;
            }
            for (i3 = 6; i3 < 8; i3++) {
                float[] fArr4 = this.l;
                int i8 = this.i;
                fArr4[i3] = i8;
                this.m[i3] = i8 - (this.j / 2.0f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.o;
        if (rectF != null) {
            int i = this.j;
            rectF.set(i / 2.0f, i / 2.0f, this.c - (i / 2.0f), this.d - (i / 2.0f));
        }
    }

    private void d() {
        RectF rectF = this.n;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.c, this.d);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.n, null, 31);
            int i = this.c;
            int i2 = this.j;
            int i3 = this.d;
            canvas.scale(((i - (i2 * 2)) * 1.0f) / i, ((i3 - (i2 * 2)) * 1.0f) / i3, i / 2.0f, i3 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.s;
            if (paint != null) {
                paint.reset();
                this.s.setAntiAlias(true);
                this.s.setStyle(Paint.Style.FILL);
                this.s.setXfermode(this.b);
            }
            Path path = this.r;
            if (path != null) {
                path.reset();
                this.r.addRoundRect(this.n, this.m, Path.Direction.CCW);
            }
            canvas.drawPath(this.r, this.s);
            Paint paint2 = this.s;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.p) {
                a(canvas, this.j, this.k, this.o, this.l);
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        super.onSizeChanged(i, i2, i3, i4);
        this.c = i;
        this.d = i2;
        int i8 = 0;
        try {
            if (this.q) {
                if (this.l != null && this.m != null) {
                    while (true) {
                        i5 = 2;
                        if (i8 >= 2) {
                            break;
                        }
                        float[] fArr = this.l;
                        int i9 = this.f;
                        fArr[i8] = i9;
                        this.m[i8] = i9 - (this.j / 2.0f);
                        i8++;
                    }
                    while (true) {
                        i6 = 4;
                        if (i5 >= 4) {
                            break;
                        }
                        float[] fArr2 = this.l;
                        int i10 = this.g;
                        fArr2[i5] = i10;
                        this.m[i5] = i10 - (this.j / 2.0f);
                        i5++;
                    }
                    while (true) {
                        if (i6 >= 6) {
                            break;
                        }
                        float[] fArr3 = this.l;
                        int i11 = this.h;
                        fArr3[i6] = i11;
                        this.m[i6] = i11 - (this.j / 2.0f);
                        i6++;
                    }
                    for (i7 = 6; i7 < 8; i7++) {
                        float[] fArr4 = this.l;
                        int i12 = this.i;
                        fArr4[i7] = i12;
                        this.m[i7] = i12 - (this.j / 2.0f);
                    }
                }
            } else if (this.l != null && this.m != null) {
                while (true) {
                    float[] fArr5 = this.l;
                    if (i8 >= fArr5.length) {
                        break;
                    }
                    int i13 = this.e;
                    fArr5[i8] = i13;
                    this.m[i8] = i13 - (this.j / 2.0f);
                    i8++;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        RectF rectF = this.o;
        if (rectF != null) {
            int i14 = this.j;
            rectF.set(i14 / 2.0f, i14 / 2.0f, this.c - (i14 / 2.0f), this.d - (i14 / 2.0f));
        }
        RectF rectF2 = this.n;
        if (rectF2 != null) {
            rectF2.set(0.0f, 0.0f, this.c, this.d);
        }
    }

    public void setBorder(int i, int i2, int i3) {
        this.p = true;
        this.j = i2;
        this.k = i3;
        this.e = i;
    }

    public void setCornerRadius(int i) {
        this.e = i;
    }

    public void setCustomBorder(int i, int i2, int i3, int i4, int i5, int i6) {
        this.p = true;
        this.q = true;
        this.j = i5;
        this.k = i6;
        this.f = i;
        this.h = i3;
        this.g = i2;
        this.i = i4;
    }
}
