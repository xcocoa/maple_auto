package com.anythink.expressad.exoplayer.b;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.v;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface h {
    public static final long a = Long.MIN_VALUE;

    public static final class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(Throwable th) {
            super(th);
        }
    }

    public static final class b extends Exception {
        public final int a;

        public b(int i, int i2, int i3, int i4) {
            super("AudioTrack init failed: " + i + ", Config(" + i2 + ", " + i3 + ", " + i4 + ")");
            this.a = i;
        }
    }

    public interface c {
        void a();

        void a(int i);

        void a(int i, long j, long j2);
    }

    public static final class d extends Exception {
        public final int a;

        public d(int i) {
            super("AudioTrack write failed: ".concat(String.valueOf(i)));
            this.a = i;
        }
    }

    long a(boolean z);

    v a(v vVar);

    void a();

    void a(float f);

    void a(int i, int i2, int i3, @Nullable int[] iArr, int i4, int i5);

    void a(com.anythink.expressad.exoplayer.b.b bVar);

    void a(c cVar);

    boolean a(int i);

    boolean a(ByteBuffer byteBuffer, long j);

    void b();

    void b(int i);

    void c();

    void c(int i);

    boolean d();

    boolean e();

    v f();

    void g();

    void h();

    void i();

    void j();
}
