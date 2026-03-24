package com.anythink.expressad.video.dynview.g;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ShapeDrawable {
    private int a;
    private float b;
    private float c;
    private int d;
    private int e;
    private Bitmap f;
    private Bitmap g;
    private boolean h;
    private Paint i;

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.g.a$a, reason: collision with other inner class name */
    public static class C0151a implements b {
        private RectShape a;
        private Bitmap b;
        private Bitmap c;
        private boolean d;
        private int e;
        private int f;
        private int g;
        private float h;
        private float i;

        private C0151a() {
            this.f = 100;
            this.g = 10;
            this.a = new RectShape();
        }

        public /* synthetic */ C0151a(byte b) {
            this();
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b a() {
            this.d = true;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b a(float f) {
            this.h = f;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b a(int i) {
            this.e = i;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b a(Bitmap bitmap) {
            this.b = bitmap;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b b(float f) {
            this.i = f;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b b(int i) {
            this.f = i;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b b(Bitmap bitmap) {
            this.c = bitmap;
            return this;
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final a b() {
            return new a(this, (byte) 0);
        }

        @Override // com.anythink.expressad.video.dynview.g.a.b
        public final b c(int i) {
            this.g = i;
            return this;
        }
    }

    public interface b {
        b a();

        b a(float f);

        b a(int i);

        b a(Bitmap bitmap);

        b b(float f);

        b b(int i);

        b b(Bitmap bitmap);

        a b();

        b c(int i);
    }

    private a(C0151a c0151a) {
        super(c0151a.a);
        this.h = false;
        this.f = c0151a.b;
        this.g = c0151a.c;
        this.h = c0151a.d;
        this.a = c0151a.e;
        this.d = c0151a.f;
        this.e = c0151a.g;
        this.b = c0151a.h;
        this.c = c0151a.i;
        Paint paint = new Paint();
        this.i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.i.setAntiAlias(true);
    }

    public /* synthetic */ a(C0151a c0151a, byte b2) {
        this(c0151a);
    }

    public static C0151a a() {
        return new C0151a((byte) 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(Canvas canvas) {
        float f = this.c / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, (this.d + f) - this.e);
        path.lineTo(this.b, (f - this.d) - this.e);
        path.lineTo(this.b, 0.0f);
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!this.h) {
            Bitmap bitmap = this.f;
            if (bitmap != null && !bitmap.isRecycled()) {
                a(canvas, path, this.f);
            }
            Path path2 = new Path();
            path2.moveTo(0.0f, this.d + f + this.e);
            path2.lineTo(0.0f, this.c);
            path2.lineTo(this.b, this.c);
            path2.lineTo(this.b, (f - this.d) + this.e);
            if (!this.h) {
                try {
                    a(canvas, path2);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            Bitmap bitmap2 = this.g;
            if (bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            try {
                a(canvas, path2, this.g);
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        a(canvas, path);
        Path path22 = new Path();
        path22.moveTo(0.0f, this.d + f + this.e);
        path22.lineTo(0.0f, this.c);
        path22.lineTo(this.b, this.c);
        path22.lineTo(this.b, (f - this.d) + this.e);
        if (!this.h) {
        }
    }

    private void a(Canvas canvas, Path path) {
        this.i.setColor(Color.parseColor("#40EAEAEA"));
        canvas.drawPath(path, this.i);
    }

    private void a(Canvas canvas, Path path, Bitmap bitmap) {
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.i.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        canvas.drawPath(path, this.i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b(Canvas canvas) {
        float f = this.b / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, this.c);
        path.lineTo((f - this.d) - this.e, this.c);
        path.lineTo((this.d + f) - this.e, 0.0f);
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!this.h) {
            Bitmap bitmap = this.f;
            if (bitmap != null && !bitmap.isRecycled()) {
                a(canvas, path, this.f);
            }
            Path path2 = new Path();
            path2.moveTo(this.d + f + this.e, 0.0f);
            path2.lineTo(this.b, 0.0f);
            path2.lineTo(this.b, this.c);
            path2.lineTo((f - this.d) + this.e, this.c);
            if (!this.h) {
                try {
                    a(canvas, path2);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            Bitmap bitmap2 = this.g;
            if (bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            try {
                a(canvas, path2, this.g);
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        a(canvas, path);
        Path path22 = new Path();
        path22.moveTo(this.d + f + this.e, 0.0f);
        path22.lineTo(this.b, 0.0f);
        path22.lineTo(this.b, this.c);
        path22.lineTo((f - this.d) + this.e, this.c);
        if (!this.h) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.a == 1) {
            float f = this.c / 2.0f;
            Path path = new Path();
            path.moveTo(0.0f, 0.0f);
            path.lineTo(0.0f, (this.d + f) - this.e);
            path.lineTo(this.b, (f - this.d) - this.e);
            path.lineTo(this.b, 0.0f);
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!this.h) {
                Bitmap bitmap = this.f;
                if (bitmap != null && !bitmap.isRecycled()) {
                    a(canvas, path, this.f);
                }
                Path path2 = new Path();
                path2.moveTo(0.0f, this.d + f + this.e);
                path2.lineTo(0.0f, this.c);
                path2.lineTo(this.b, this.c);
                path2.lineTo(this.b, (f - this.d) + this.e);
                if (!this.h) {
                    try {
                        a(canvas, path2);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                Bitmap bitmap2 = this.g;
                if (bitmap2 == null || bitmap2.isRecycled()) {
                    return;
                }
                try {
                    a(canvas, path2, this.g);
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            a(canvas, path);
            Path path22 = new Path();
            path22.moveTo(0.0f, this.d + f + this.e);
            path22.lineTo(0.0f, this.c);
            path22.lineTo(this.b, this.c);
            path22.lineTo(this.b, (f - this.d) + this.e);
            if (!this.h) {
            }
        } else {
            float f2 = this.b / 2.0f;
            Path path3 = new Path();
            path3.moveTo(0.0f, 0.0f);
            path3.lineTo(0.0f, this.c);
            path3.lineTo((f2 - this.d) - this.e, this.c);
            path3.lineTo((this.d + f2) - this.e, 0.0f);
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (!this.h) {
                Bitmap bitmap3 = this.f;
                if (bitmap3 != null && !bitmap3.isRecycled()) {
                    a(canvas, path3, this.f);
                }
                Path path4 = new Path();
                path4.moveTo(this.d + f2 + this.e, 0.0f);
                path4.lineTo(this.b, 0.0f);
                path4.lineTo(this.b, this.c);
                path4.lineTo((f2 - this.d) + this.e, this.c);
                if (!this.h) {
                    try {
                        a(canvas, path4);
                        return;
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        return;
                    }
                }
                Bitmap bitmap4 = this.g;
                if (bitmap4 == null || bitmap4.isRecycled()) {
                    return;
                }
                try {
                    a(canvas, path4, this.g);
                    return;
                } catch (Exception e6) {
                    e6.printStackTrace();
                    return;
                }
            }
            a(canvas, path3);
            Path path42 = new Path();
            path42.moveTo(this.d + f2 + this.e, 0.0f);
            path42.lineTo(this.b, 0.0f);
            path42.lineTo(this.b, this.c);
            path42.lineTo((f2 - this.d) + this.e, this.c);
            if (!this.h) {
            }
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }
}
