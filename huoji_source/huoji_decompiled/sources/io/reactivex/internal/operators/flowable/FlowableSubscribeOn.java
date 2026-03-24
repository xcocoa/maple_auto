package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableSubscribeOn<T> extends AbstractFlowableWithUpstream<T, T> {
    public final boolean nonScheduledRequests;
    public final Scheduler scheduler;

    public static final class SubscribeOnSubscriber<T> extends AtomicReference<Thread> implements FlowableSubscriber<T>, zc0, Runnable {
        private static final long serialVersionUID = 8094547886072529208L;
        public final yc0<? super T> downstream;
        public final boolean nonScheduledRequests;
        public xc0<T> source;
        public final Scheduler.Worker worker;
        public final AtomicReference<zc0> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public static final class Request implements Runnable {
            public final long n;
            public final zc0 upstream;

            public Request(zc0 zc0Var, long j) {
                this.upstream = zc0Var;
                this.n = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.upstream.request(this.n);
            }
        }

        public SubscribeOnSubscriber(yc0<? super T> yc0Var, Scheduler.Worker worker, xc0<T> xc0Var, boolean z) {
            this.downstream = yc0Var;
            this.worker = worker;
            this.source = xc0Var;
            this.nonScheduledRequests = !z;
        }

        @Override // z2.zc0
        public void cancel() {
            SubscriptionHelper.cancel(this.upstream);
            this.worker.dispose();
        }

        @Override // z2.yc0
        public void onComplete() {
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override // z2.yc0
        public void onError(Throwable th) {
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // z2.yc0
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.setOnce(this.upstream, zc0Var)) {
                long andSet = this.requested.getAndSet(0L);
                if (andSet != 0) {
                    requestUpstream(andSet, zc0Var);
                }
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                zc0 zc0Var = this.upstream.get();
                if (zc0Var != null) {
                    requestUpstream(j, zc0Var);
                    return;
                }
                BackpressureHelper.add(this.requested, j);
                zc0 zc0Var2 = this.upstream.get();
                if (zc0Var2 != null) {
                    long andSet = this.requested.getAndSet(0L);
                    if (andSet != 0) {
                        requestUpstream(andSet, zc0Var2);
                    }
                }
            }
        }

        public void requestUpstream(long j, zc0 zc0Var) {
            if (this.nonScheduledRequests || Thread.currentThread() == get()) {
                zc0Var.request(j);
            } else {
                this.worker.schedule(new Request(zc0Var, j));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            xc0<T> xc0Var = this.source;
            this.source = null;
            xc0Var.subscribe(this);
        }
    }

    public FlowableSubscribeOn(Flowable<T> flowable, Scheduler scheduler, boolean z) {
        super(flowable);
        this.scheduler = scheduler;
        this.nonScheduledRequests = z;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        SubscribeOnSubscriber subscribeOnSubscriber = new SubscribeOnSubscriber(yc0Var, workerCreateWorker, this.source, this.nonScheduledRequests);
        yc0Var.onSubscribe(subscribeOnSubscriber);
        workerCreateWorker.schedule(subscribeOnSubscriber);
    }
}
