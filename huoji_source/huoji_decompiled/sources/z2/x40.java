package z2;

import java.util.concurrent.atomic.AtomicInteger;
import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class x40 extends s40<z40, b50, y40> implements Promise<z40, b50, y40> {
    private final int OooO;
    private final AtomicInteger OooOO0 = new AtomicInteger();
    private final AtomicInteger OooOO0O = new AtomicInteger();
    private final z40 OooOO0o;

    public class OooO00o implements y30 {
        public final /* synthetic */ int OooO00o;
        public final /* synthetic */ Promise OooO0O0;

        public OooO00o(int i, Promise promise) {
            this.OooO00o = i;
            this.OooO0O0 = promise;
        }

        @Override // z2.y30
        public void OooO0O0(Object obj) {
            synchronized (x40.this) {
                if (x40.this.OooOo00()) {
                    z40 z40Var = x40.this.OooOO0o;
                    int i = this.OooO00o;
                    z40Var.OooO0O0(i, new c50(i, this.OooO0O0, obj));
                    int iIncrementAndGet = x40.this.OooOO0.incrementAndGet();
                    x40 x40Var = x40.this;
                    x40Var.OooOO0O(new y40(iIncrementAndGet, x40Var.OooOO0O.get(), x40.this.OooO));
                    if (iIncrementAndGet == x40.this.OooO) {
                        x40 x40Var2 = x40.this;
                        x40Var2.OooOo0O(x40Var2.OooOO0o);
                    }
                }
            }
        }
    }

    public class OooO0O0 implements e40 {
        public final /* synthetic */ int OooO00o;
        public final /* synthetic */ Promise OooO0O0;

        public OooO0O0(int i, Promise promise) {
            this.OooO00o = i;
            this.OooO0O0 = promise;
        }

        @Override // z2.e40
        public void OooO0O0(Object obj) {
            synchronized (x40.this) {
                if (x40.this.OooOo00()) {
                    x40 x40Var = x40.this;
                    x40Var.OooOO0O(new a50(x40Var.OooOO0.get(), x40.this.OooOO0O.get(), x40.this.OooO, this.OooO00o, this.OooO0O0, obj));
                }
            }
        }
    }

    public class OooO0OO implements b40<Object> {
        public final /* synthetic */ int OooO00o;
        public final /* synthetic */ Promise OooO0O0;

        public OooO0OO(int i, Promise promise) {
            this.OooO00o = i;
            this.OooO0O0 = promise;
        }

        @Override // z2.b40
        public void OooO0O0(Object obj) {
            synchronized (x40.this) {
                if (x40.this.OooOo00()) {
                    int iIncrementAndGet = x40.this.OooOO0O.incrementAndGet();
                    x40 x40Var = x40.this;
                    x40Var.OooOO0O(new y40(x40Var.OooOO0.get(), iIncrementAndGet, x40.this.OooO));
                    x40.this.OooOo0o(new b50(this.OooO00o, this.OooO0O0, obj));
                }
            }
        }
    }

    public x40(Promise... promiseArr) {
        if (promiseArr == null || promiseArr.length == 0) {
            throw new IllegalArgumentException("Promises is null or empty");
        }
        int length = promiseArr.length;
        this.OooO = length;
        this.OooOO0o = new z40(length);
        int length2 = promiseArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length2) {
            Promise promise = promiseArr[i];
            promise.OooOO0(new OooO0OO(i2, promise)).OooO00o(new OooO0O0(i2, promise)).OooOOO(new OooO00o(i2, promise));
            i++;
            i2++;
        }
    }
}
