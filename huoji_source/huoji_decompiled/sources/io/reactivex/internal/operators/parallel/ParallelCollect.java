package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class ParallelCollect<T, C> extends ParallelFlowable<C> {
    public final BiConsumer<? super C, ? super T> collector;
    public final Callable<? extends C> initialCollection;
    public final ParallelFlowable<? extends T> source;

    public static final class ParallelCollectSubscriber<T, C> extends DeferredScalarSubscriber<T, C> {
        private static final long serialVersionUID = -4767392946044436228L;
        public C collection;
        public final BiConsumer<? super C, ? super T> collector;
        public boolean done;

        public ParallelCollectSubscriber(yc0<? super C> yc0Var, C c, BiConsumer<? super C, ? super T> biConsumer) {
            super(yc0Var);
            this.collection = c;
            this.collector = biConsumer;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, z2.zc0
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, z2.yc0
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            C c = this.collection;
            this.collection = null;
            complete(c);
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, z2.yc0
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.collection = null;
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                this.collector.accept(this.collection, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
                zc0Var.request(Long.MAX_VALUE);
            }
        }
    }

    public ParallelCollect(ParallelFlowable<? extends T> parallelFlowable, Callable<? extends C> callable, BiConsumer<? super C, ? super T> biConsumer) {
        this.source = parallelFlowable;
        this.initialCollection = callable;
        this.collector = biConsumer;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.source.parallelism();
    }

    public void reportError(yc0<?>[] yc0VarArr, Throwable th) {
        for (yc0<?> yc0Var : yc0VarArr) {
            EmptySubscription.error(th, yc0Var);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(yc0<? super C>[] yc0VarArr) {
        if (validate(yc0VarArr)) {
            int length = yc0VarArr.length;
            yc0<? super Object>[] yc0VarArr2 = new yc0[length];
            for (int i = 0; i < length; i++) {
                try {
                    yc0VarArr2[i] = new ParallelCollectSubscriber(yc0VarArr[i], ObjectHelper.requireNonNull(this.initialCollection.call(), "The initialSupplier returned a null value"), this.collector);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    reportError(yc0VarArr, th);
                    return;
                }
            }
            this.source.subscribe(yc0VarArr2);
        }
    }
}
