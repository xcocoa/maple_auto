package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import z2.xc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableLastSingle<T> extends Single<T> {
    public final T defaultItem;
    public final xc0<T> source;

    public static final class LastSubscriber<T> implements FlowableSubscriber<T>, Disposable {
        public final T defaultItem;
        public final SingleObserver<? super T> downstream;
        public T item;
        public zc0 upstream;

        public LastSubscriber(SingleObserver<? super T> singleObserver, T t) {
            this.downstream = singleObserver;
            this.defaultItem = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.cancel();
            this.upstream = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream == SubscriptionHelper.CANCELLED;
        }

        @Override // z2.yc0
        public void onComplete() {
            this.upstream = SubscriptionHelper.CANCELLED;
            T t = this.item;
            if (t != null) {
                this.item = null;
            } else {
                t = this.defaultItem;
                if (t == null) {
                    this.downstream.onError(new NoSuchElementException());
                    return;
                }
            }
            this.downstream.onSuccess(t);
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.upstream = SubscriptionHelper.CANCELLED;
            this.item = null;
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            this.item = t;
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

    public FlowableLastSingle(xc0<T> xc0Var, T t) {
        this.source = xc0Var;
        this.defaultItem = t;
    }

    @Override // io.reactivex.Single
    public void subscribeActual(SingleObserver<? super T> singleObserver) {
        this.source.subscribe(new LastSubscriber(singleObserver, this.defaultItem));
    }
}
