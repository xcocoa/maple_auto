package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicBoolean;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class BooleanSubscription extends AtomicBoolean implements zc0 {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override // z2.zc0
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // z2.zc0
    public void request(long j) {
        SubscriptionHelper.validate(j);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
