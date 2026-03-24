package z2;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import z2.py;

/* JADX INFO: loaded from: classes2.dex */
public final class zw {
    private static final Executor OooO0oO = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), zx.Oooo00o("OkHttp ConnectionPool", true));
    public static final /* synthetic */ boolean OooO0oo = false;
    private final int OooO00o;
    private final long OooO0O0;
    private final Runnable OooO0OO;
    private final Deque<my> OooO0Oo;
    public boolean OooO0o;
    public final ny OooO0o0;

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long jOooO00o = zw.this.OooO00o(System.nanoTime());
                if (jOooO00o == -1) {
                    return;
                }
                if (jOooO00o > 0) {
                    long j = jOooO00o / 1000000;
                    long j2 = jOooO00o - (1000000 * j);
                    synchronized (zw.this) {
                        try {
                            zw.this.wait(j, (int) j2);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public zw() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public zw(int i, long j, TimeUnit timeUnit) {
        this.OooO0OO = new OooO00o();
        this.OooO0Oo = new ArrayDeque();
        this.OooO0o0 = new ny();
        this.OooO00o = i;
        this.OooO0O0 = timeUnit.toNanos(j);
        if (j > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
    }

    private int OooO0oo(my myVar, long j) {
        List<Reference<py>> list = myVar.OooOOO;
        int i = 0;
        while (i < list.size()) {
            Reference<py> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                uz.OooOO0O().OooOOoo("A connection to " + myVar.OooO0O0().OooO00o().OooOO0o() + " was leaked. Did you forget to close a response body?", ((py.OooO00o) reference).OooO00o);
                list.remove(i);
                myVar.OooOO0O = true;
                if (list.isEmpty()) {
                    myVar.OooOOOO = j - this.OooO0O0;
                    return 0;
                }
            }
        }
        return list.size();
    }

    public void OooO(my myVar) {
        if (!this.OooO0o) {
            this.OooO0o = true;
            OooO0oO.execute(this.OooO0OO);
        }
        this.OooO0Oo.add(myVar);
    }

    public long OooO00o(long j) {
        synchronized (this) {
            my myVar = null;
            long j2 = Long.MIN_VALUE;
            int i = 0;
            int i2 = 0;
            for (my myVar2 : this.OooO0Oo) {
                if (OooO0oo(myVar2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - myVar2.OooOOOO;
                    if (j3 > j2) {
                        myVar = myVar2;
                        j2 = j3;
                    }
                }
            }
            long j4 = this.OooO0O0;
            if (j2 < j4 && i <= this.OooO00o) {
                if (i > 0) {
                    return j4 - j2;
                }
                if (i2 > 0) {
                    return j4;
                }
                this.OooO0o = false;
                return -1L;
            }
            this.OooO0Oo.remove(myVar);
            zx.OooO(myVar.OooO0Oo());
            return 0L;
        }
    }

    public boolean OooO0O0(my myVar) {
        if (myVar.OooOO0O || this.OooO00o == 0) {
            this.OooO0Oo.remove(myVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public synchronized int OooO0OO() {
        return this.OooO0Oo.size();
    }

    @Nullable
    public Socket OooO0Oo(pw pwVar, py pyVar) {
        for (my myVar : this.OooO0Oo) {
            if (myVar.OooOOOO(pwVar, null) && myVar.OooOOo0() && myVar != pyVar.OooO0Oo()) {
                return pyVar.OooOOO0(myVar);
            }
        }
        return null;
    }

    @Nullable
    public my OooO0o(pw pwVar, py pyVar, ux uxVar) {
        for (my myVar : this.OooO0Oo) {
            if (myVar.OooOOOO(pwVar, uxVar)) {
                pyVar.OooO00o(myVar, true);
                return myVar;
            }
        }
        return null;
    }

    public void OooO0o0() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<my> it = this.OooO0Oo.iterator();
            while (it.hasNext()) {
                my next = it.next();
                if (next.OooOOO.isEmpty()) {
                    next.OooOO0O = true;
                    arrayList.add(next);
                    it.remove();
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            zx.OooO(((my) it2.next()).OooO0Oo());
        }
    }

    public synchronized int OooO0oO() {
        int i;
        i = 0;
        Iterator<my> it = this.OooO0Oo.iterator();
        while (it.hasNext()) {
            if (it.next().OooOOO.isEmpty()) {
                i++;
            }
        }
        return i;
    }
}
