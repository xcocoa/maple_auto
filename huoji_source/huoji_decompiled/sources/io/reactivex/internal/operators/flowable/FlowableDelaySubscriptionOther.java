package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableDelaySubscriptionOther<T, U> extends Flowable<T> {
    public final xc0<? extends T> main;
    public final xc0<U> other;

    public static final class MainSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, zc0 {
        private static final long serialVersionUID = 2259811067697317255L;
        public final yc0<? super T> downstream;
        public final xc0<? extends T> main;
        public final MainSubscriber<T>.OtherSubscriber other = new OtherSubscriber();
        public final AtomicReference<zc0> upstream = new AtomicReference<>();

        public final class OtherSubscriber extends AtomicReference<zc0> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -3892798459447644106L;

            public OtherSubscriber() {
            }

            @Override // z2.yc0
            public void onComplete() {
                if (get() != SubscriptionHelper.CANCELLED) {
                    MainSubscriber.this.next();
                }
            }

            @Override // z2.yc0
            public void onError(Throwable th) {
                if (get() != SubscriptionHelper.CANCELLED) {
                    MainSubscriber.this.downstream.onError(th);
                } else {
                    RxJavaPlugins.onError(th);
                }
            }

            @Override // z2.yc0
            public void onNext(Object obj) {
                zc0 zc0Var = get();
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (zc0Var != subscriptionHelper) {
                    lazySet(subscriptionHelper);
                    zc0Var.cancel();
                    MainSubscriber.this.next();
                }
            }

            @Override // io.reactivex.FlowableSubscriber, z2.yc0
            public void onSubscribe(zc0 zc0Var) {
                if (SubscriptionHelper.setOnce(this, zc0Var)) {
                    zc0Var.request(Long.MAX_VALUE);
                }
            }
        }

        public MainSubscriber(yc0<? super T> yc0Var, xc0<? extends T> xc0Var) {
            this.downstream = yc0Var;
            this.main = xc0Var;
        }

        @Override // z2.zc0
        public void cancel() {
            SubscriptionHelper.cancel(this.other);
            SubscriptionHelper.cancel(this.upstream);
        }

        public void next() {
            this.main.subscribe(this);
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
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            SubscriptionHelper.deferredSetOnce(this.upstream, this, zc0Var);
        }

        @Override // z2.zc0
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                SubscriptionHelper.deferredRequest(this.upstream, this, j);
            }
        }
    }

    public FlowableDelaySubscriptionOther(xc0<? extends T> xc0Var, xc0<U> xc0Var2) {
        this.main = xc0Var;
        this.other = xc0Var2;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        MainSubscriber mainSubscriber = new MainSubscriber(yc0Var, this.main);
        yc0Var.onSubscribe(mainSubscriber);
        this.other.subscribe(mainSubscriber.other);
    }
}
