package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableAmb<T> extends Flowable<T> {
    public final xc0<? extends T>[] sources;
    public final Iterable<? extends xc0<? extends T>> sourcesIterable;

    public static final class AmbCoordinator<T> implements zc0 {
        public final yc0<? super T> downstream;
        public final AmbInnerSubscriber<T>[] subscribers;
        public final AtomicInteger winner = new AtomicInteger();

        public AmbCoordinator(yc0<? super T> yc0Var, int i) {
            this.downstream = yc0Var;
            this.subscribers = new AmbInnerSubscriber[i];
        }

        @Override // z2.zc0
        public void cancel() {
            if (this.winner.get() != -1) {
                this.winner.lazySet(-1);
                for (AmbInnerSubscriber<T> ambInnerSubscriber : this.subscribers) {
                    ambInnerSubscriber.cancel();
                }
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                int i = this.winner.get();
                if (i > 0) {
                    this.subscribers[i - 1].request(j);
                    return;
                }
                if (i == 0) {
                    for (AmbInnerSubscriber<T> ambInnerSubscriber : this.subscribers) {
                        ambInnerSubscriber.request(j);
                    }
                }
            }
        }

        public void subscribe(xc0<? extends T>[] xc0VarArr) {
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.subscribers;
            int length = ambInnerSubscriberArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                ambInnerSubscriberArr[i] = new AmbInnerSubscriber<>(this, i2, this.downstream);
                i = i2;
            }
            this.winner.lazySet(0);
            this.downstream.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.winner.get() == 0; i3++) {
                xc0VarArr[i3].subscribe(ambInnerSubscriberArr[i3]);
            }
        }

        public boolean win(int i) {
            int i2 = 0;
            if (this.winner.get() != 0 || !this.winner.compareAndSet(0, i)) {
                return false;
            }
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.subscribers;
            int length = ambInnerSubscriberArr.length;
            while (i2 < length) {
                int i3 = i2 + 1;
                if (i3 != i) {
                    ambInnerSubscriberArr[i2].cancel();
                }
                i2 = i3;
            }
            return true;
        }
    }

    public static final class AmbInnerSubscriber<T> extends AtomicReference<zc0> implements FlowableSubscriber<T>, zc0 {
        private static final long serialVersionUID = -1185974347409665484L;
        public final yc0<? super T> downstream;
        public final int index;
        public final AtomicLong missedRequested = new AtomicLong();
        public final AmbCoordinator<T> parent;
        public boolean won;

        public AmbInnerSubscriber(AmbCoordinator<T> ambCoordinator, int i, yc0<? super T> yc0Var) {
            this.parent = ambCoordinator;
            this.index = i;
            this.downstream = yc0Var;
        }

        @Override // z2.zc0
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // z2.yc0
        public void onComplete() {
            if (!this.won) {
                if (!this.parent.win(this.index)) {
                    get().cancel();
                    return;
                }
                this.won = true;
            }
            this.downstream.onComplete();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            if (!this.won) {
                if (!this.parent.win(this.index)) {
                    get().cancel();
                    RxJavaPlugins.onError(th);
                    return;
                }
                this.won = true;
            }
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            if (!this.won) {
                if (!this.parent.win(this.index)) {
                    get().cancel();
                    return;
                }
                this.won = true;
            }
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            SubscriptionHelper.deferredSetOnce(this, this.missedRequested, zc0Var);
        }

        @Override // z2.zc0
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.missedRequested, j);
        }
    }

    public FlowableAmb(xc0<? extends T>[] xc0VarArr, Iterable<? extends xc0<? extends T>> iterable) {
        this.sources = xc0VarArr;
        this.sourcesIterable = iterable;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        int length;
        xc0<? extends T>[] xc0VarArr = this.sources;
        if (xc0VarArr == null) {
            xc0VarArr = new xc0[8];
            try {
                length = 0;
                for (xc0<? extends T> xc0Var : this.sourcesIterable) {
                    if (xc0Var == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), yc0Var);
                        return;
                    }
                    if (length == xc0VarArr.length) {
                        xc0<? extends T>[] xc0VarArr2 = new xc0[(length >> 2) + length];
                        System.arraycopy(xc0VarArr, 0, xc0VarArr2, 0, length);
                        xc0VarArr = xc0VarArr2;
                    }
                    int i = length + 1;
                    xc0VarArr[length] = xc0Var;
                    length = i;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptySubscription.error(th, yc0Var);
                return;
            }
        } else {
            length = xc0VarArr.length;
        }
        if (length == 0) {
            EmptySubscription.complete(yc0Var);
        } else if (length == 1) {
            xc0VarArr[0].subscribe(yc0Var);
        } else {
            new AmbCoordinator(yc0Var, length).subscribe(xc0VarArr);
        }
    }
}
