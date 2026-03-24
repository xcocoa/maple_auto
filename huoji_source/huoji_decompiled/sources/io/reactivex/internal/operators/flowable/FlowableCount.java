package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableCount<T> extends AbstractFlowableWithUpstream<T, Long> {

    public static final class CountSubscriber extends DeferredScalarSubscription<Long> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 4973004223787171406L;
        public long count;
        public zc0 upstream;

        public CountSubscriber(yc0<? super Long> yc0Var) {
            super(yc0Var);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, z2.zc0
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // z2.yc0
        public void onComplete() {
            complete(Long.valueOf(this.count));
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(Object obj) {
            this.count++;
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
                zc0Var.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableCount(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super Long> yc0Var) {
        this.source.subscribe((FlowableSubscriber) new CountSubscriber(yc0Var));
    }
}
