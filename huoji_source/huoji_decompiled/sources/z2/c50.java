package z2;

import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class c50 {
    private final int OooO00o;
    private final Promise OooO0O0;
    private final Object OooO0OO;

    public c50(int i, Promise promise, Object obj) {
        this.OooO00o = i;
        this.OooO0O0 = promise;
        this.OooO0OO = obj;
    }

    public int OooO00o() {
        return this.OooO00o;
    }

    public Promise OooO0O0() {
        return this.OooO0O0;
    }

    public Object OooO0OO() {
        return this.OooO0OO;
    }

    public String toString() {
        return "OneResult [index=" + this.OooO00o + ", promise=" + this.OooO0O0 + ", result=" + this.OooO0OO + "]";
    }
}
