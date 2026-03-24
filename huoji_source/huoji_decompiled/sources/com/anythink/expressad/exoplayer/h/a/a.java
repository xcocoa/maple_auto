package com.anythink.expressad.exoplayer.h.a;

import android.net.Uri;
import androidx.annotation.CheckResult;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final a f = new a(new long[0]);
    public final int g;
    public final long[] h;
    public final C0118a[] i;
    public final long j;
    public final long k;

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.h.a.a$a, reason: collision with other inner class name */
    public static final class C0118a {
        public final int a;
        public final Uri[] b;
        public final int[] c;
        public final long[] d;

        public C0118a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        private C0118a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            com.anythink.expressad.exoplayer.k.a.a(iArr.length == uriArr.length);
            this.a = i;
            this.c = iArr;
            this.b = uriArr;
            this.d = jArr;
        }

        @CheckResult
        private static int[] a(int[] iArr, int i) {
            int length = iArr.length;
            int iMax = Math.max(i, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        @CheckResult
        private static long[] a(long[] jArr, int i) {
            int length = jArr.length;
            int iMax = Math.max(i, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, com.anythink.expressad.exoplayer.b.b);
            return jArrCopyOf;
        }

        private int c() {
            return a(-1);
        }

        public final int a(int i) {
            int i2 = i + 1;
            while (true) {
                int[] iArr = this.c;
                if (i2 >= iArr.length || iArr[i2] == 0 || iArr[i2] == 1) {
                    break;
                }
                i2++;
            }
            return i2;
        }

        @CheckResult
        public final C0118a a(int i, int i2) {
            int i3 = this.a;
            com.anythink.expressad.exoplayer.k.a.a(i3 == -1 || i2 < i3);
            int[] iArrA = a(this.c, i2 + 1);
            com.anythink.expressad.exoplayer.k.a.a(iArrA[i2] == 0 || iArrA[i2] == 1 || iArrA[i2] == i);
            long[] jArrA = this.d;
            if (jArrA.length != iArrA.length) {
                jArrA = a(jArrA, iArrA.length);
            }
            Uri[] uriArr = this.b;
            if (uriArr.length != iArrA.length) {
                uriArr = (Uri[]) Arrays.copyOf(uriArr, iArrA.length);
            }
            iArrA[i2] = i;
            return new C0118a(this.a, iArrA, uriArr, jArrA);
        }

        @CheckResult
        public final C0118a a(Uri uri, int i) {
            int i2 = this.a;
            com.anythink.expressad.exoplayer.k.a.a(i2 == -1 || i < i2);
            int[] iArrA = a(this.c, i + 1);
            com.anythink.expressad.exoplayer.k.a.a(iArrA[i] == 0);
            long[] jArrA = this.d;
            if (jArrA.length != iArrA.length) {
                jArrA = a(jArrA, iArrA.length);
            }
            Uri[] uriArr = (Uri[]) Arrays.copyOf(this.b, iArrA.length);
            uriArr[i] = uri;
            iArrA[i] = 1;
            return new C0118a(this.a, iArrA, uriArr, jArrA);
        }

        @CheckResult
        public final C0118a a(long[] jArr) {
            com.anythink.expressad.exoplayer.k.a.a(this.a == -1 || jArr.length <= this.b.length);
            int length = jArr.length;
            Uri[] uriArr = this.b;
            if (length < uriArr.length) {
                jArr = a(jArr, uriArr.length);
            }
            return new C0118a(this.a, this.c, this.b, jArr);
        }

        public final boolean a() {
            return this.a == -1 || a(-1) < this.a;
        }

        @CheckResult
        public final C0118a b() {
            if (this.a == -1) {
                return new C0118a(0, new int[0], new Uri[0], new long[0]);
            }
            int[] iArr = this.c;
            int length = iArr.length;
            int[] iArrCopyOf = Arrays.copyOf(iArr, length);
            for (int i = 0; i < length; i++) {
                if (iArrCopyOf[i] == 1 || iArrCopyOf[i] == 0) {
                    iArrCopyOf[i] = 2;
                }
            }
            return new C0118a(length, iArrCopyOf, this.b, this.d);
        }

        @CheckResult
        public final C0118a b(int i) {
            com.anythink.expressad.exoplayer.k.a.a(this.a == -1 && this.c.length <= i);
            return new C0118a(i, a(this.c, i), (Uri[]) Arrays.copyOf(this.b, i), a(this.d, i));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    private a(long... jArr) {
        this.g = 0;
        this.h = Arrays.copyOf(jArr, 0);
        this.i = new C0118a[0];
        this.j = 0L;
        this.k = com.anythink.expressad.exoplayer.b.b;
    }

    private a(long[] jArr, C0118a[] c0118aArr, long j, long j2) {
        this.g = c0118aArr.length;
        this.h = jArr;
        this.i = c0118aArr;
        this.j = j;
        this.k = j2;
    }

    private int a(long j) {
        int length = this.h.length - 1;
        while (length >= 0) {
            long[] jArr = this.h;
            if (jArr[length] != Long.MIN_VALUE && jArr[length] <= j) {
                break;
            }
            length--;
        }
        if (length < 0 || !this.i[length].a()) {
            return -1;
        }
        return length;
    }

    @CheckResult
    private a a(int i) {
        C0118a[] c0118aArr = this.i;
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        c0118aArr2[i] = c0118aArr2[i].b();
        return new a(this.h, c0118aArr2, this.j, this.k);
    }

    @CheckResult
    private a a(int i, int i2) {
        com.anythink.expressad.exoplayer.k.a.a(i2 > 0);
        C0118a[] c0118aArr = this.i;
        if (c0118aArr[i].a == i2) {
            return this;
        }
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        c0118aArr2[i] = this.i[i].b(i2);
        return new a(this.h, c0118aArr2, this.j, this.k);
    }

    @CheckResult
    private a a(int i, int i2, Uri uri) {
        C0118a[] c0118aArr = this.i;
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        c0118aArr2[i] = c0118aArr2[i].a(uri, i2);
        return new a(this.h, c0118aArr2, this.j, this.k);
    }

    private int b(long j) {
        int i = 0;
        while (true) {
            long[] jArr = this.h;
            if (i >= jArr.length || jArr[i] == Long.MIN_VALUE || (j < jArr[i] && this.i[i].a())) {
                break;
            }
            i++;
        }
        if (i < this.h.length) {
            return i;
        }
        return -1;
    }

    @CheckResult
    private a b(int i, int i2) {
        C0118a[] c0118aArr = this.i;
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        c0118aArr2[i] = c0118aArr2[i].a(3, i2);
        return new a(this.h, c0118aArr2, this.j, this.k);
    }

    @CheckResult
    private a c(int i, int i2) {
        C0118a[] c0118aArr = this.i;
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        c0118aArr2[i] = c0118aArr2[i].a(2, i2);
        return new a(this.h, c0118aArr2, this.j, this.k);
    }

    @CheckResult
    private a c(long j) {
        return this.j == j ? this : new a(this.h, this.i, j, this.k);
    }

    @CheckResult
    private a d(int i, int i2) {
        C0118a[] c0118aArr = this.i;
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        c0118aArr2[i] = c0118aArr2[i].a(4, i2);
        return new a(this.h, c0118aArr2, this.j, this.k);
    }

    @CheckResult
    private a d(long j) {
        return this.k == j ? this : new a(this.h, this.i, this.j, j);
    }

    @CheckResult
    public final a a(long[][] jArr) {
        C0118a[] c0118aArr = this.i;
        C0118a[] c0118aArr2 = (C0118a[]) Arrays.copyOf(c0118aArr, c0118aArr.length);
        for (int i = 0; i < this.g; i++) {
            c0118aArr2[i] = c0118aArr2[i].a(jArr[i]);
        }
        return new a(this.h, c0118aArr2, this.j, this.k);
    }
}
