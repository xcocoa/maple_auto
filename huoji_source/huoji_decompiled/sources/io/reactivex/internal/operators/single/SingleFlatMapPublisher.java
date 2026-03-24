package io.reactivex.internal.operators.single;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleFlatMapPublisher<T, R> extends Flowable<R> {
    public final Function<? super T, ? extends xc0<? extends R>> mapper;
    public final SingleSource<T> source;

    public static final class SingleFlatMapPublisherObserver<S, T> extends AtomicLong implements SingleObserver<S>, FlowableSubscriber<T>, zc0 {
        private static final long serialVersionUID = 7759721921468635667L;
        public Disposable disposable;
        public final yc0<? super T> downstream;
        public final Function<? super S, ? extends xc0<? extends T>> mapper;
        public final AtomicReference<zc0> parent = new AtomicReference<>();

        public SingleFlatMapPublisherObserver(yc0<? super T> yc0Var, Function<? super S, ? extends xc0<? extends T>> function) {
            this.downstream = yc0Var;
            this.mapper = function;
        }

        @Override // z2.zc0
        public void cancel() {
            this.disposable.dispose();
            SubscriptionHelper.cancel(this.parent);
        }

        @Override // z2.yc0
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.disposable = disposable;
            this.downstream.onSubscribe(this);
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            SubscriptionHelper.deferredSetOnce(this.parent, this, zc0Var);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(S s) {
            try {
                ((xc0) ObjectHelper.requireNonNull(this.mapper.apply(s), "the mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.parent, this, j);
        }
    }

    public SingleFlatMapPublisher(SingleSource<T> singleSource, Function<? super T, ? extends xc0<? extends R>> function) {
        this.source = singleSource;
        this.mapper = function;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        this.source.subscribe(new SingleFlatMapPublisherObserver(yc0Var, this.mapper));
    }
}
