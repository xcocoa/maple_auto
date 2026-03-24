package com.anythink.expressad.exoplayer.d;

import com.anythink.expressad.exoplayer.d.i;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface j<T extends i> {
    public static final int a = 2;
    public static final int b = 3;
    public static final int c = 1;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;

    public static final class a implements d {
        private final byte[] a;
        private final String b;

        public a(byte[] bArr, String str) {
            this.a = bArr;
            this.b = str;
        }

        @Override // com.anythink.expressad.exoplayer.d.j.d
        public final byte[] a() {
            return this.a;
        }

        @Override // com.anythink.expressad.exoplayer.d.j.d
        public final String b() {
            return this.b;
        }
    }

    public static final class b implements e {
        private final int a;
        private final byte[] b;

        public b(int i, byte[] bArr) {
            this.a = i;
            this.b = bArr;
        }

        @Override // com.anythink.expressad.exoplayer.d.j.e
        public final int a() {
            return this.a;
        }

        @Override // com.anythink.expressad.exoplayer.d.j.e
        public final byte[] b() {
            return this.b;
        }
    }

    public static final class c implements h {
        private final byte[] a;
        private final String b;

        public c(byte[] bArr, String str) {
            this.a = bArr;
            this.b = str;
        }

        @Override // com.anythink.expressad.exoplayer.d.j.h
        public final byte[] a() {
            return this.a;
        }

        @Override // com.anythink.expressad.exoplayer.d.j.h
        public final String b() {
            return this.b;
        }
    }

    public interface d {
        byte[] a();

        String b();
    }

    public interface e {
        int a();

        byte[] b();
    }

    public interface f<T extends i> {
        void a(byte[] bArr, int i);
    }

    public interface g<T extends i> {
        void a();
    }

    public interface h {
        byte[] a();

        String b();
    }

    d a(byte[] bArr, byte[] bArr2, String str, int i, HashMap<String, String> map);

    String a(String str);

    void a(f<? super T> fVar);

    void a(g<? super T> gVar);

    void a(String str, String str2);

    void a(String str, byte[] bArr);

    void a(byte[] bArr);

    byte[] a();

    byte[] a(byte[] bArr, byte[] bArr2);

    h b();

    void b(byte[] bArr);

    void b(byte[] bArr, byte[] bArr2);

    byte[] b(String str);

    Map<String, String> c(byte[] bArr);

    void c();

    T d(byte[] bArr);
}
