package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements FlowableSubscriber<T> {
    private static final long serialVersionUID = 2984505488220891551L;
    public boolean hasValue;
    public zc0 upstream;

    public DeferredScalarSubscriber(yc0<? super R> yc0Var) {
        super(yc0Var);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, z2.zc0
    public void cancel() {
        super.cancel();
        this.upstream.cancel();
    }

    public void onComplete() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            this.downstream.onComplete();
        }
    }

    public void onError(Throwable th) {
        this.value = null;
        this.downstream.onError(th);
    }

    public void onSubscribe(zc0 zc0Var) {
        if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
            this.upstream = zc0Var;
            this.downstream.onSubscribe(this);
            zc0Var.request(Long.MAX_VALUE);
        }
    }
}
