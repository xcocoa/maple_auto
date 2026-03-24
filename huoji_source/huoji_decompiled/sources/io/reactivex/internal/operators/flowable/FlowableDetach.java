package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableDetach<T> extends AbstractFlowableWithUpstream<T, T> {

    public static final class DetachSubscriber<T> implements FlowableSubscriber<T>, zc0 {
        public yc0<? super T> downstream;
        public zc0 upstream;

        public DetachSubscriber(yc0<? super T> yc0Var) {
            this.downstream = yc0Var;
        }

        @Override // z2.zc0
        public void cancel() {
            zc0 zc0Var = this.upstream;
            this.upstream = EmptyComponent.INSTANCE;
            this.downstream = EmptyComponent.asSubscriber();
            zc0Var.cancel();
        }

        @Override // z2.yc0
        public void onComplete() {
            yc0<? super T> yc0Var = this.downstream;
            this.upstream = EmptyComponent.INSTANCE;
            this.downstream = EmptyComponent.asSubscriber();
            yc0Var.onComplete();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            yc0<? super T> yc0Var = this.downstream;
            this.upstream = EmptyComponent.INSTANCE;
            this.downstream = EmptyComponent.asSubscriber();
            yc0Var.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public FlowableDetach(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        this.source.subscribe((FlowableSubscriber) new DetachSubscriber(yc0Var));
    }
}
