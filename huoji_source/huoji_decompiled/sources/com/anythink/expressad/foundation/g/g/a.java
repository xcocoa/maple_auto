package com.anythink.expressad.foundation.g.g;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Runnable {
    public static long b;
    public EnumC0136a c = EnumC0136a.READY;
    public b d;

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.g.g.a$a, reason: collision with other inner class name */
    public enum EnumC0136a {
        READY,
        RUNNING,
        PAUSE,
        CANCEL,
        FINISH
    }

    public interface b {
        void a(EnumC0136a enumC0136a);
    }

    public a() {
        b++;
    }

    private void a(EnumC0136a enumC0136a) {
        this.c = enumC0136a;
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(enumC0136a);
        }
    }

    private void a(b bVar) {
        this.d = bVar;
    }

    private EnumC0136a d() {
        return this.c;
    }

    public static long e() {
        return b;
    }

    public abstract void a();

    public abstract void b();

    public abstract void c();

    public final void f() {
        EnumC0136a enumC0136a = this.c;
        EnumC0136a enumC0136a2 = EnumC0136a.CANCEL;
        if (enumC0136a != enumC0136a2) {
            a(enumC0136a2);
        }
    }

    public final void g() {
        EnumC0136a enumC0136a = this.c;
        if (enumC0136a == EnumC0136a.PAUSE || enumC0136a == EnumC0136a.CANCEL || enumC0136a == EnumC0136a.FINISH) {
            return;
        }
        a(EnumC0136a.RUNNING);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.c == EnumC0136a.READY) {
                a(EnumC0136a.RUNNING);
                a();
                a(EnumC0136a.FINISH);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
