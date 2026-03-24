package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.DisposableSubscriber;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableBufferBoundarySupplier<T, U extends Collection<? super T>, B> extends AbstractFlowableWithUpstream<T, U> {
    public final Callable<? extends xc0<B>> boundarySupplier;
    public final Callable<U> bufferSupplier;

    public static final class BufferBoundarySubscriber<T, U extends Collection<? super T>, B> extends DisposableSubscriber<B> {
        public boolean once;
        public final BufferBoundarySupplierSubscriber<T, U, B> parent;

        public BufferBoundarySubscriber(BufferBoundarySupplierSubscriber<T, U, B> bufferBoundarySupplierSubscriber) {
            this.parent = bufferBoundarySupplierSubscriber;
        }

        @Override // z2.yc0
        public void onComplete() {
            if (this.once) {
                return;
            }
            this.once = true;
            this.parent.next();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            if (this.once) {
                RxJavaPlugins.onError(th);
            } else {
                this.once = true;
                this.parent.onError(th);
            }
        }

        @Override // z2.yc0
        public void onNext(B b) {
            if (this.once) {
                return;
            }
            this.once = true;
            cancel();
            this.parent.next();
        }
    }

    public static final class BufferBoundarySupplierSubscriber<T, U extends Collection<? super T>, B> extends QueueDrainSubscriber<T, U, U> implements FlowableSubscriber<T>, zc0, Disposable {
        public final Callable<? extends xc0<B>> boundarySupplier;
        public U buffer;
        public final Callable<U> bufferSupplier;
        public final AtomicReference<Disposable> other;
        public zc0 upstream;

        public BufferBoundarySupplierSubscriber(yc0<? super U> yc0Var, Callable<U> callable, Callable<? extends xc0<B>> callable2) {
            super(yc0Var, new MpscLinkedQueue());
            this.other = new AtomicReference<>();
            this.bufferSupplier = callable;
            this.boundarySupplier = callable2;
        }

        @Override // io.reactivex.internal.subscribers.QueueDrainSubscriber, io.reactivex.internal.util.QueueDrain
        public /* bridge */ /* synthetic */ boolean accept(yc0 yc0Var, Object obj) {
            return accept((yc0<? super Collection>) yc0Var, (Collection) obj);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public boolean accept(yc0<? super U> yc0Var, U u) {
            this.downstream.onNext((Object) u);
            return true;
        }

        @Override // z2.zc0
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            disposeOther();
            if (enter()) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.cancel();
            disposeOther();
        }

        public void disposeOther() {
            DisposableHelper.dispose(this.other);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.other.get() == DisposableHelper.DISPOSED;
        }

        public void next() {
            U u;
            try {
                u = (U) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The buffer supplied is null");
            } catch (Throwable th) {
                th = th;
                Exceptions.throwIfFatal(th);
                cancel();
            }
            try {
                xc0 xc0Var = (xc0) ObjectHelper.requireNonNull(this.boundarySupplier.call(), "The boundary publisher supplied is null");
                BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(this);
                if (DisposableHelper.replace(this.other, bufferBoundarySubscriber)) {
                    synchronized (this) {
                        U u2 = this.buffer;
                        if (u2 == null) {
                            return;
                        }
                        this.buffer = u;
                        xc0Var.subscribe(bufferBoundarySubscriber);
                        fastPathEmitMax(u2, false, this);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                Exceptions.throwIfFatal(th);
                this.cancelled = true;
                this.upstream.cancel();
                this.downstream.onError(th);
            }
        }

        @Override // z2.yc0
        public void onComplete() {
            synchronized (this) {
                U u = this.buffer;
                if (u == null) {
                    return;
                }
                this.buffer = null;
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainMaxLoop(this.queue, this.downstream, false, this, this);
                }
            }
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            cancel();
            this.downstream.onError(th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            synchronized (this) {
                U u = this.buffer;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                yc0<? super V> yc0Var = this.downstream;
                try {
                    this.buffer = (U) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The buffer supplied is null");
                    xc0 xc0Var = (xc0) ObjectHelper.requireNonNull(this.boundarySupplier.call(), "The boundary publisher supplied is null");
                    BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(this);
                    this.other.set(bufferBoundarySubscriber);
                    yc0Var.onSubscribe(this);
                    if (this.cancelled) {
                        return;
                    }
                    zc0Var.request(Long.MAX_VALUE);
                    xc0Var.subscribe(bufferBoundarySubscriber);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.cancelled = true;
                    zc0Var.cancel();
                    EmptySubscription.error(th, yc0Var);
                }
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            requested(j);
        }
    }

    public FlowableBufferBoundarySupplier(Flowable<T> flowable, Callable<? extends xc0<B>> callable, Callable<U> callable2) {
        super(flowable);
        this.boundarySupplier = callable;
        this.bufferSupplier = callable2;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super U> yc0Var) {
        this.source.subscribe((FlowableSubscriber) new BufferBoundarySupplierSubscriber(new SerializedSubscriber(yc0Var), this.bufferSupplier, this.boundarySupplier));
    }
}
