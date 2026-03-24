package com.anythink.expressad.out;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    public interface a {
        void a();
    }

    public interface b {
        void a();

        void b();

        void c();

        void d();

        void e();
    }

    public interface c {
        void a(com.anythink.expressad.foundation.d.c cVar, String str);

        void a(j jVar);

        void a(j jVar, String str);

        boolean a();

        void b();

        void b(j jVar);

        void b(j jVar, String str);

        void c(j jVar);

        void d(j jVar);
    }

    public static class d {
        private int a;
        private int b;

        private d(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        private int a() {
            return this.a;
        }

        private void a(int i) {
            this.a = i;
        }

        private int b() {
            return this.b;
        }

        private void b(int i) {
            this.b = i;
        }
    }

    public interface e extends c {
        void c();
    }
}
