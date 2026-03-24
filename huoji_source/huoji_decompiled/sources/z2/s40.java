package z2;

import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class s40<D, F, P> extends q40<D, F, P> implements u30<D, F, P> {
    @Override // z2.u30
    public u30<D, F, P> OooOO0O(P p) {
        synchronized (this) {
            if (!OooOo00()) {
                throw new IllegalStateException("Deferred object already finished, cannot notify progress");
            }
            OooOooO(p);
        }
        return this;
    }

    @Override // z2.u30
    public Promise<D, F, P> OooOO0o() {
        return this;
    }

    @Override // z2.u30
    public u30<D, F, P> OooOo0O(D d) {
        synchronized (this) {
            if (!OooOo00()) {
                throw new IllegalStateException("Deferred object already finished, cannot resolve again");
            }
            this.OooO0O0 = Promise.State.RESOLVED;
            this.OooO0oO = d;
            try {
                OooOoO(d);
            } finally {
                OooOoO0(this.OooO0O0, d, null);
            }
        }
        return this;
    }

    @Override // z2.u30
    public u30<D, F, P> OooOo0o(F f) {
        synchronized (this) {
            if (!OooOo00()) {
                throw new IllegalStateException("Deferred object already finished, cannot reject again");
            }
            this.OooO0O0 = Promise.State.REJECTED;
            this.OooO0oo = f;
            try {
                OooOoo0(f);
            } finally {
                OooOoO0(this.OooO0O0, null, f);
            }
        }
        return this;
    }
}
