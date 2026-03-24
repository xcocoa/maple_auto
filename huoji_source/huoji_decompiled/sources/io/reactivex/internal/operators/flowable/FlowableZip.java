package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableZip<T, R> extends Flowable<R> {
    public final int bufferSize;
    public final boolean delayError;
    public final xc0<? extends T>[] sources;
    public final Iterable<? extends xc0<? extends T>> sourcesIterable;
    public final Function<? super Object[], ? extends R> zipper;

    public static final class ZipCoordinator<T, R> extends AtomicInteger implements zc0 {
        private static final long serialVersionUID = -2434867452883857743L;
        public volatile boolean cancelled;
        public final Object[] current;
        public final boolean delayErrors;
        public final yc0<? super R> downstream;
        public final AtomicThrowable errors;
        public final AtomicLong requested;
        public final ZipSubscriber<T, R>[] subscribers;
        public final Function<? super Object[], ? extends R> zipper;

        public ZipCoordinator(yc0<? super R> yc0Var, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.downstream = yc0Var;
            this.zipper = function;
            this.delayErrors = z;
            ZipSubscriber<T, R>[] zipSubscriberArr = new ZipSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                zipSubscriberArr[i3] = new ZipSubscriber<>(this, i2);
            }
            this.current = new Object[i];
            this.subscribers = zipSubscriberArr;
            this.requested = new AtomicLong();
            this.errors = new AtomicThrowable();
        }

        @Override // z2.zc0
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
        }

        public void cancelAll() {
            for (ZipSubscriber<T, R> zipSubscriber : this.subscribers) {
                zipSubscriber.cancel();
            }
        }

        public void drain() {
            boolean z;
            T tPoll;
            boolean z3;
            if (getAndIncrement() != 0) {
                return;
            }
            yc0<? super R> yc0Var = this.downstream;
            ZipSubscriber<T, R>[] zipSubscriberArr = this.subscribers;
            int length = zipSubscriberArr.length;
            Object[] objArr = this.current;
            int iAddAndGet = 1;
            loop0: do {
                long j = this.requested.get();
                long j2 = 0;
                while (j != j2) {
                    if (this.cancelled) {
                        return;
                    }
                    if (!this.delayErrors && this.errors.get() != null) {
                        break loop0;
                    }
                    boolean z4 = false;
                    for (int i = 0; i < length; i++) {
                        ZipSubscriber<T, R> zipSubscriber = zipSubscriberArr[i];
                        if (objArr[i] == null) {
                            try {
                                z = zipSubscriber.done;
                                SimpleQueue<T> simpleQueue = zipSubscriber.queue;
                                tPoll = simpleQueue != null ? simpleQueue.poll() : null;
                                z3 = tPoll == null;
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                this.errors.addThrowable(th);
                                if (!this.delayErrors) {
                                    cancelAll();
                                    yc0Var.onError(this.errors.terminate());
                                    return;
                                }
                            }
                            if (z && z3) {
                                cancelAll();
                                if (this.errors.get() != null) {
                                    yc0Var.onError(this.errors.terminate());
                                    return;
                                } else {
                                    yc0Var.onComplete();
                                    return;
                                }
                            }
                            if (z3) {
                                z4 = true;
                            } else {
                                objArr[i] = tPoll;
                            }
                        }
                    }
                    if (z4) {
                        break;
                    }
                    try {
                        yc0Var.onNext((Object) ObjectHelper.requireNonNull(this.zipper.apply(objArr.clone()), "The zipper returned a null value"));
                        j2++;
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        cancelAll();
                        this.errors.addThrowable(th2);
                    }
                }
                if (j == j2) {
                    if (this.cancelled) {
                        return;
                    }
                    if (this.delayErrors || this.errors.get() == null) {
                        for (int i2 = 0; i2 < length; i2++) {
                            ZipSubscriber<T, R> zipSubscriber2 = zipSubscriberArr[i2];
                            if (objArr[i2] == null) {
                                try {
                                    boolean z5 = zipSubscriber2.done;
                                    SimpleQueue<T> simpleQueue2 = zipSubscriber2.queue;
                                    T tPoll2 = simpleQueue2 != null ? simpleQueue2.poll() : null;
                                    boolean z6 = tPoll2 == null;
                                    if (z5 && z6) {
                                        cancelAll();
                                        if (this.errors.get() != null) {
                                            yc0Var.onError(this.errors.terminate());
                                            return;
                                        } else {
                                            yc0Var.onComplete();
                                            return;
                                        }
                                    }
                                    if (!z6) {
                                        objArr[i2] = tPoll2;
                                    }
                                } catch (Throwable th3) {
                                    Exceptions.throwIfFatal(th3);
                                    this.errors.addThrowable(th3);
                                    if (!this.delayErrors) {
                                        cancelAll();
                                        yc0Var.onError(this.errors.terminate());
                                        return;
                                    }
                                }
                            }
                        }
                    }
                    cancelAll();
                    yc0Var.onError(this.errors.terminate());
                    return;
                }
                if (j2 != 0) {
                    for (ZipSubscriber<T, R> zipSubscriber3 : zipSubscriberArr) {
                        zipSubscriber3.request(j2);
                    }
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        public void error(ZipSubscriber<T, R> zipSubscriber, Throwable th) {
            if (!this.errors.addThrowable(th)) {
                RxJavaPlugins.onError(th);
            } else {
                zipSubscriber.done = true;
                drain();
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }

        public void subscribe(xc0<? extends T>[] xc0VarArr, int i) {
            ZipSubscriber<T, R>[] zipSubscriberArr = this.subscribers;
            for (int i2 = 0; i2 < i && !this.cancelled; i2++) {
                if (!this.delayErrors && this.errors.get() != null) {
                    return;
                }
                xc0VarArr[i2].subscribe(zipSubscriberArr[i2]);
            }
        }
    }

    public static final class ZipSubscriber<T, R> extends AtomicReference<zc0> implements FlowableSubscriber<T>, zc0 {
        private static final long serialVersionUID = -4627193790118206028L;
        public volatile boolean done;
        public final int limit;
        public final ZipCoordinator<T, R> parent;
        public final int prefetch;
        public long produced;
        public SimpleQueue<T> queue;
        public int sourceMode;

        public ZipSubscriber(ZipCoordinator<T, R> zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // z2.zc0
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // z2.yc0
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.parent.error(this, th);
        }

        @Override // z2.yc0
        public void onNext(T t) {
            if (this.sourceMode != 2) {
                this.queue.offer(t);
            }
            this.parent.drain();
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.setOnce(this, zc0Var)) {
                if (zc0Var instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) zc0Var;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.parent.drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        zc0Var.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                zc0Var.request(this.prefetch);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            if (this.sourceMode != 1) {
                long j2 = this.produced + j;
                if (j2 < this.limit) {
                    this.produced = j2;
                } else {
                    this.produced = 0L;
                    get().request(j2);
                }
            }
        }
    }

    public FlowableZip(xc0<? extends T>[] xc0VarArr, Iterable<? extends xc0<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.sources = xc0VarArr;
        this.sourcesIterable = iterable;
        this.zipper = function;
        this.bufferSize = i;
        this.delayError = z;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        int length;
        xc0<? extends T>[] xc0VarArr = this.sources;
        if (xc0VarArr == null) {
            xc0VarArr = new xc0[8];
            length = 0;
            for (xc0<? extends T> xc0Var : this.sourcesIterable) {
                if (length == xc0VarArr.length) {
                    xc0<? extends T>[] xc0VarArr2 = new xc0[(length >> 2) + length];
                    System.arraycopy(xc0VarArr, 0, xc0VarArr2, 0, length);
                    xc0VarArr = xc0VarArr2;
                }
                xc0VarArr[length] = xc0Var;
                length++;
            }
        } else {
            length = xc0VarArr.length;
        }
        int i = length;
        if (i == 0) {
            EmptySubscription.complete(yc0Var);
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(yc0Var, this.zipper, i, this.bufferSize, this.delayError);
        yc0Var.onSubscribe(zipCoordinator);
        zipCoordinator.subscribe(xc0VarArr, i);
    }
}
