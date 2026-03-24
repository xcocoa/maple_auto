package com.octopus.ad.internal.video;

import android.graphics.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private c a;
    private c b;

    /* JADX INFO: renamed from: com.octopus.ad.internal.video.a$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[EnumC0200a.values().length];
            b = iArr;
            try {
                iArr[EnumC0200a.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[EnumC0200a.LEFT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[EnumC0200a.LEFT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[EnumC0200a.CENTER_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[EnumC0200a.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[EnumC0200a.CENTER_BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[EnumC0200a.RIGHT_TOP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[EnumC0200a.RIGHT_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[EnumC0200a.RIGHT_BOTTOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[b.values().length];
            a = iArr2;
            try {
                iArr2[b.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[b.FIT_XY.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[b.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[b.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[b.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[b.LEFT_TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[b.LEFT_CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[b.LEFT_BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[b.CENTER_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                a[b.CENTER.ordinal()] = 10;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[b.CENTER_BOTTOM.ordinal()] = 11;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[b.RIGHT_TOP.ordinal()] = 12;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[b.RIGHT_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[b.RIGHT_BOTTOM.ordinal()] = 14;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[b.LEFT_TOP_CROP.ordinal()] = 15;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[b.LEFT_CENTER_CROP.ordinal()] = 16;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[b.LEFT_BOTTOM_CROP.ordinal()] = 17;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[b.CENTER_TOP_CROP.ordinal()] = 18;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                a[b.CENTER_CROP.ordinal()] = 19;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                a[b.CENTER_BOTTOM_CROP.ordinal()] = 20;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                a[b.RIGHT_TOP_CROP.ordinal()] = 21;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                a[b.RIGHT_CENTER_CROP.ordinal()] = 22;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                a[b.RIGHT_BOTTOM_CROP.ordinal()] = 23;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                a[b.START_INSIDE.ordinal()] = 24;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                a[b.CENTER_INSIDE.ordinal()] = 25;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                a[b.END_INSIDE.ordinal()] = 26;
            } catch (NoSuchFieldError unused35) {
            }
        }
    }

    /* JADX INFO: renamed from: com.octopus.ad.internal.video.a$a, reason: collision with other inner class name */
    public enum EnumC0200a {
        LEFT_TOP,
        LEFT_CENTER,
        LEFT_BOTTOM,
        CENTER_TOP,
        CENTER,
        CENTER_BOTTOM,
        RIGHT_TOP,
        RIGHT_CENTER,
        RIGHT_BOTTOM
    }

    public enum b {
        NONE,
        FIT_XY,
        FIT_START,
        FIT_CENTER,
        FIT_END,
        LEFT_TOP,
        LEFT_CENTER,
        LEFT_BOTTOM,
        CENTER_TOP,
        CENTER,
        CENTER_BOTTOM,
        RIGHT_TOP,
        RIGHT_CENTER,
        RIGHT_BOTTOM,
        LEFT_TOP_CROP,
        LEFT_CENTER_CROP,
        LEFT_BOTTOM_CROP,
        CENTER_TOP_CROP,
        CENTER_CROP,
        CENTER_BOTTOM_CROP,
        RIGHT_TOP_CROP,
        RIGHT_CENTER_CROP,
        RIGHT_BOTTOM_CROP,
        START_INSIDE,
        CENTER_INSIDE,
        END_INSIDE
    }

    public static class c {
        private int a;
        private int b;

        public c(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public int a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }
    }

    public a(c cVar, c cVar2) {
        this.a = cVar;
        this.b = cVar2;
    }

    private Matrix a() {
        return a(this.b.a() / this.a.a(), this.b.b() / this.a.b(), EnumC0200a.LEFT_TOP);
    }

    private Matrix a(float f, float f2, float f3, float f4) {
        Matrix matrix = new Matrix();
        matrix.setScale(f, f2, f3, f4);
        return matrix;
    }

    private Matrix a(float f, float f2, EnumC0200a enumC0200a) {
        switch (AnonymousClass1.b[enumC0200a.ordinal()]) {
            case 1:
                return a(f, f2, 0.0f, 0.0f);
            case 2:
                return a(f, f2, 0.0f, this.a.b() / 2.0f);
            case 3:
                return a(f, f2, 0.0f, this.a.b());
            case 4:
                return a(f, f2, this.a.a() / 2.0f, 0.0f);
            case 5:
                return a(f, f2, this.a.a() / 2.0f, this.a.b() / 2.0f);
            case 6:
                return a(f, f2, this.a.a() / 2.0f, this.a.b());
            case 7:
                return a(f, f2, this.a.a(), 0.0f);
            case 8:
                return a(f, f2, this.a.a(), this.a.b() / 2.0f);
            case 9:
                return a(f, f2, this.a.a(), this.a.b());
            default:
                throw new IllegalArgumentException("Illegal PivotPoint");
        }
    }

    private Matrix a(EnumC0200a enumC0200a) {
        float fA = this.a.a() / this.b.a();
        float fB = this.a.b() / this.b.b();
        float fMin = Math.min(fA, fB);
        return a(fMin / fA, fMin / fB, enumC0200a);
    }

    private Matrix b() {
        return a(1.0f, 1.0f, EnumC0200a.LEFT_TOP);
    }

    private Matrix b(EnumC0200a enumC0200a) {
        return a(this.b.a() / this.a.a(), this.b.b() / this.a.b(), enumC0200a);
    }

    private Matrix c() {
        return a(EnumC0200a.LEFT_TOP);
    }

    private Matrix c(EnumC0200a enumC0200a) {
        float fA = this.a.a() / this.b.a();
        float fB = this.a.b() / this.b.b();
        float fMax = Math.max(fA, fB);
        return a(fMax / fA, fMax / fB, enumC0200a);
    }

    private Matrix d() {
        return a(EnumC0200a.CENTER);
    }

    private Matrix e() {
        return a(EnumC0200a.RIGHT_BOTTOM);
    }

    private Matrix f() {
        return (this.b.b() > this.a.a() || this.b.b() > this.a.b()) ? c() : b(EnumC0200a.LEFT_TOP);
    }

    private Matrix g() {
        return (this.b.b() > this.a.a() || this.b.b() > this.a.b()) ? d() : b(EnumC0200a.CENTER);
    }

    private Matrix h() {
        return (this.b.b() > this.a.a() || this.b.b() > this.a.b()) ? e() : b(EnumC0200a.RIGHT_BOTTOM);
    }

    public Matrix a(b bVar) {
        switch (AnonymousClass1.a[bVar.ordinal()]) {
            case 1:
                return a();
            case 2:
                return b();
            case 3:
                return d();
            case 4:
                return c();
            case 5:
                return e();
            case 6:
                return b(EnumC0200a.LEFT_TOP);
            case 7:
                return b(EnumC0200a.LEFT_CENTER);
            case 8:
                return b(EnumC0200a.LEFT_BOTTOM);
            case 9:
                return b(EnumC0200a.CENTER_TOP);
            case 10:
                return b(EnumC0200a.CENTER);
            case 11:
                return b(EnumC0200a.CENTER_BOTTOM);
            case 12:
                return b(EnumC0200a.RIGHT_TOP);
            case 13:
                return b(EnumC0200a.RIGHT_CENTER);
            case 14:
                return b(EnumC0200a.RIGHT_BOTTOM);
            case 15:
                return c(EnumC0200a.LEFT_TOP);
            case 16:
                return c(EnumC0200a.LEFT_CENTER);
            case 17:
                return c(EnumC0200a.LEFT_BOTTOM);
            case 18:
                return c(EnumC0200a.CENTER_TOP);
            case 19:
                return c(EnumC0200a.CENTER);
            case 20:
                return c(EnumC0200a.CENTER_BOTTOM);
            case 21:
                return c(EnumC0200a.RIGHT_TOP);
            case 22:
                return c(EnumC0200a.RIGHT_CENTER);
            case 23:
                return c(EnumC0200a.RIGHT_BOTTOM);
            case 24:
                return f();
            case 25:
                return g();
            case 26:
                return h();
            default:
                return null;
        }
    }
}
