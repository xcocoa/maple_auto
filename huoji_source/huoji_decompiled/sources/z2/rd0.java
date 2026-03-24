package z2;

import java.lang.Thread;

/* JADX INFO: loaded from: classes2.dex */
public abstract class rd0 implements Runnable {
    public final ed0 OoooOoO;

    public rd0(ed0 ed0Var) {
        this.OoooOoO = ed0Var;
    }

    public abstract void OooO00o();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.OoooOoO.OooOo0O()) {
                return;
            }
            OooO00o();
        } catch (Throwable th) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
            throw th;
        }
    }
}
