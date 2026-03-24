package io.reactivex.internal.operators.mixed;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class CompletableAndThenPublisher<R> extends Flowable<R> {
    public final xc0<? extends R> other;
    public final CompletableSource source;

    public static final class AndThenPublisherSubscriber<R> extends AtomicReference<zc0> implements FlowableSubscriber<R>, CompletableObserver, zc0 {
        private static final long serialVersionUID = -8948264376121066672L;
        public final yc0<? super R> downstream;
        public xc0<? extends R> other;
        public final AtomicLong requested = new AtomicLong();
        public Disposable upstream;

        public AndThenPublisherSubscriber(yc0<? super R> yc0Var, xc0<? extends R> xc0Var) {
            this.downstream = yc0Var;
            this.other = xc0Var;
        }

        @Override // z2.zc0
        public void cancel() {
            this.upstream.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // z2.yc0
        public void onComplete() {
            xc0<? extends R> xc0Var = this.other;
            if (xc0Var == null) {
                this.downstream.onComplete();
            } else {
                this.other = null;
                xc0Var.subscribe(this);
            }
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            SubscriptionHelper.deferredSetOnce(this, this.requested, zc0Var);
        }

        @Override // z2.zc0
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.requested, j);
        }
    }

    public CompletableAndThenPublisher(CompletableSource completableSource, xc0<? extends R> xc0Var) {
        this.source = completableSource;
        this.other = xc0Var;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        this.source.subscribe(new AndThenPublisherSubscriber(yc0Var, this.other));
    }
}
