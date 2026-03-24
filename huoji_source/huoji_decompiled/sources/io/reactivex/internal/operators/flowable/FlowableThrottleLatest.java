package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableThrottleLatest<T> extends AbstractFlowableWithUpstream<T, T> {
    public final boolean emitLast;
    public final Scheduler scheduler;
    public final long timeout;
    public final TimeUnit unit;

    public static final class ThrottleLatestSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, zc0, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final yc0<? super T> downstream;
        public final boolean emitLast;
        public long emitted;
        public Throwable error;
        public final AtomicReference<T> latest = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();
        public final long timeout;
        public volatile boolean timerFired;
        public boolean timerRunning;
        public final TimeUnit unit;
        public zc0 upstream;
        public final Scheduler.Worker worker;

        public ThrottleLatestSubscriber(yc0<? super T> yc0Var, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.downstream = yc0Var;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = worker;
            this.emitLast = z;
        }

        @Override // z2.zc0
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.latest.lazySet(null);
            }
        }

        public void drain() {
            Throwable missingBackpressureException;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.latest;
            AtomicLong atomicLong = this.requested;
            yc0<? super T> yc0Var = this.downstream;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (!z || this.error == null) {
                    boolean z3 = atomicReference.get() == null;
                    if (z) {
                        if (z3 || !this.emitLast) {
                            atomicReference.lazySet(null);
                        } else {
                            T andSet = atomicReference.getAndSet(null);
                            long j = this.emitted;
                            if (j != atomicLong.get()) {
                                this.emitted = j + 1;
                                yc0Var.onNext(andSet);
                            } else {
                                missingBackpressureException = new MissingBackpressureException("Could not emit final value due to lack of requests");
                            }
                        }
                        yc0Var.onComplete();
                        this.worker.dispose();
                        return;
                    }
                    if (z3) {
                        if (this.timerFired) {
                            this.timerRunning = false;
                            this.timerFired = false;
                        }
                    } else if (!this.timerRunning || this.timerFired) {
                        T andSet2 = atomicReference.getAndSet(null);
                        long j2 = this.emitted;
                        if (j2 != atomicLong.get()) {
                            yc0Var.onNext(andSet2);
                            this.emitted = j2 + 1;
                            this.timerFired = false;
                            this.timerRunning = true;
                            this.worker.schedule(this, this.timeout, this.unit);
                        } else {
                            this.upstream.cancel();
                            missingBackpressureException = new MissingBackpressureException("Could not emit value due to lack of requests");
                        }
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.lazySet(null);
                    missingBackpressureException = this.error;
                }
                yc0Var.onError(missingBackpressureException);
                this.worker.dispose();
                return;
            }
            atomicReference.lazySet(null);
        }

        @Override // z2.yc0
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // z2.yc0
        public void onNext(T t) {
            this.latest.set(t);
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
                zc0Var.request(Long.MAX_VALUE);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.timerFired = true;
            drain();
        }
    }

    public FlowableThrottleLatest(Flowable<T> flowable, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(flowable);
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.emitLast = z;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        this.source.subscribe((FlowableSubscriber) new ThrottleLatestSubscriber(yc0Var, this.timeout, this.unit, this.scheduler.createWorker(), this.emitLast));
    }
}
