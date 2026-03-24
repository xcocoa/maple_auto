package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class MaybeFlatMapPublisher<T, R> extends Flowable<R> {
    public final Function<? super T, ? extends xc0<? extends R>> mapper;
    public final MaybeSource<T> source;

    public static final class FlatMapPublisherSubscriber<T, R> extends AtomicReference<zc0> implements FlowableSubscriber<R>, MaybeObserver<T>, zc0 {
        private static final long serialVersionUID = -8948264376121066672L;
        public final yc0<? super R> downstream;
        public final Function<? super T, ? extends xc0<? extends R>> mapper;
        public final AtomicLong requested = new AtomicLong();
        public Disposable upstream;

        public FlatMapPublisherSubscriber(yc0<? super R> yc0Var, Function<? super T, ? extends xc0<? extends R>> function) {
            this.downstream = yc0Var;
            this.mapper = function;
        }

        @Override // z2.zc0
        public void cancel() {
            this.upstream.dispose();
            SubscriptionHelper.cancel(this);
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
        public void onNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // io.reactivex.MaybeObserver
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

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                ((xc0) ObjectHelper.requireNonNull(this.mapper.apply(t), "The mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.requested, j);
        }
    }

    public MaybeFlatMapPublisher(MaybeSource<T> maybeSource, Function<? super T, ? extends xc0<? extends R>> function) {
        this.source = maybeSource;
        this.mapper = function;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        this.source.subscribe(new FlatMapPublisherSubscriber(yc0Var, this.mapper));
    }
}
