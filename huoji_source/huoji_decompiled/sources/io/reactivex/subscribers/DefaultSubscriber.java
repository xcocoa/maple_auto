package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DefaultSubscriber<T> implements FlowableSubscriber<T> {
    public zc0 upstream;

    public final void cancel() {
        zc0 zc0Var = this.upstream;
        this.upstream = SubscriptionHelper.CANCELLED;
        zc0Var.cancel();
    }

    public void onStart() {
        request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.FlowableSubscriber, z2.yc0
    public final void onSubscribe(zc0 zc0Var) {
        if (EndConsumerHelper.validate(this.upstream, zc0Var, getClass())) {
            this.upstream = zc0Var;
            onStart();
        }
    }

    public final void request(long j) {
        zc0 zc0Var = this.upstream;
        if (zc0Var != null) {
            zc0Var.request(j);
        }
    }
}
