package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableSkip<T> extends AbstractFlowableWithUpstream<T, T> {
    public final long n;

    public static final class SkipSubscriber<T> implements FlowableSubscriber<T>, zc0 {
        public final yc0<? super T> downstream;
        public long remaining;
        public zc0 upstream;

        public SkipSubscriber(yc0<? super T> yc0Var, long j) {
            this.downstream = yc0Var;
            this.remaining = j;
        }

        @Override // z2.zc0
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // z2.yc0
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            long j = this.remaining;
            if (j != 0) {
                this.remaining = j - 1;
            } else {
                this.downstream.onNext(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                long j = this.remaining;
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
                zc0Var.request(j);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public FlowableSkip(Flowable<T> flowable, long j) {
        super(flowable);
        this.n = j;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        this.source.subscribe((FlowableSubscriber) new SkipSubscriber(yc0Var, this.n));
    }
}
