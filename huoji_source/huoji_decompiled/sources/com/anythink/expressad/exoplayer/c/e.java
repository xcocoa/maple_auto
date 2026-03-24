package com.anythink.expressad.exoplayer.c;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.anythink.expressad.exoplayer.c.a {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public final b d = new b();
    public ByteBuffer e;
    public long f;
    private final int g;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public e(int i) {
        this.g = i;
    }

    public static e e() {
        return new e(0);
    }

    private ByteBuffer e(int i) {
        int i2 = this.g;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.e;
        throw new IllegalStateException("Buffer too small (" + (byteBuffer == null ? 0 : byteBuffer.capacity()) + " < " + i + ")");
    }

    @Override // com.anythink.expressad.exoplayer.c.a
    public final void a() {
        super.a();
        ByteBuffer byteBuffer = this.e;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final void d(int i) {
        ByteBuffer byteBuffer = this.e;
        if (byteBuffer == null) {
            this.e = e(i);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = this.e.position();
        int i2 = i + iPosition;
        if (iCapacity >= i2) {
            return;
        }
        ByteBuffer byteBufferE = e(i2);
        if (iPosition > 0) {
            this.e.position(0);
            this.e.limit(iPosition);
            byteBufferE.put(this.e);
        }
        this.e = byteBufferE;
    }

    public final boolean f() {
        return this.e == null && this.g == 0;
    }

    public final boolean g() {
        return c(1073741824);
    }

    public final void h() {
        this.e.flip();
    }
}
