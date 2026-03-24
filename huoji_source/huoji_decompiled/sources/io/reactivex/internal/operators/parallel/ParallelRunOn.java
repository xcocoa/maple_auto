package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class ParallelRunOn<T> extends ParallelFlowable<T> {
    public final int prefetch;
    public final Scheduler scheduler;
    public final ParallelFlowable<? extends T> source;

    public static abstract class BaseRunOnSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, zc0, Runnable {
        private static final long serialVersionUID = 9222303586456402150L;
        public volatile boolean cancelled;
        public int consumed;
        public volatile boolean done;
        public Throwable error;
        public final int limit;
        public final int prefetch;
        public final SpscArrayQueue<T> queue;
        public final AtomicLong requested = new AtomicLong();
        public zc0 upstream;
        public final Scheduler.Worker worker;

        public BaseRunOnSubscriber(int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            this.prefetch = i;
            this.queue = spscArrayQueue;
            this.limit = i - (i >> 2);
            this.worker = worker;
        }

        @Override // z2.zc0
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // z2.yc0
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            schedule();
        }

        @Override // z2.yc0
        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            schedule();
        }

        @Override // z2.yc0
        public final void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.queue.offer(t)) {
                schedule();
            } else {
                this.upstream.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
            }
        }

        @Override // z2.zc0
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                schedule();
            }
        }

        public final void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }
    }

    public final class MultiWorkerCallback implements SchedulerMultiWorkerSupport.WorkerCallback {
        public final yc0<T>[] parents;
        public final yc0<? super T>[] subscribers;

        public MultiWorkerCallback(yc0<? super T>[] yc0VarArr, yc0<T>[] yc0VarArr2) {
            this.subscribers = yc0VarArr;
            this.parents = yc0VarArr2;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport.WorkerCallback
        public void onWorker(int i, Scheduler.Worker worker) {
            ParallelRunOn.this.createSubscriber(i, this.subscribers, this.parents, worker);
        }
    }

    public static final class RunOnConditionalSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        public final ConditionalSubscriber<? super T> downstream;

        public RunOnConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i, spscArrayQueue, worker);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
                zc0Var.request(this.prefetch);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
        
            r18.worker.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
        
            r3.onComplete();
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Throwable th;
            int i = this.consumed;
            SpscArrayQueue<T> spscArrayQueue = this.queue;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            int i2 = this.limit;
            int iAddAndGet = 1;
            loop0: while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (!this.cancelled) {
                        boolean z = this.done;
                        if (z && (th = this.error) != null) {
                            spscArrayQueue.clear();
                            conditionalSubscriber.onError(th);
                            break loop0;
                        }
                        T tPoll = spscArrayQueue.poll();
                        boolean z3 = tPoll == null;
                        if (z && z3) {
                            break loop0;
                        }
                        if (z3) {
                            break;
                        }
                        if (conditionalSubscriber.tryOnNext(tPoll)) {
                            j2++;
                        }
                        i++;
                        if (i == i2) {
                            this.upstream.request(i);
                            i = 0;
                        }
                    } else {
                        spscArrayQueue.clear();
                        return;
                    }
                }
                if (j2 == j) {
                    if (!this.cancelled) {
                        if (this.done) {
                            Throwable th2 = this.error;
                            if (th2 == null) {
                                if (spscArrayQueue.isEmpty()) {
                                    break;
                                }
                            } else {
                                spscArrayQueue.clear();
                                conditionalSubscriber.onError(th2);
                                break;
                            }
                        }
                    } else {
                        spscArrayQueue.clear();
                        return;
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                int i3 = get();
                if (i3 == iAddAndGet) {
                    this.consumed = i;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i3;
                }
            }
        }
    }

    public static final class RunOnSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        public final yc0<? super T> downstream;

        public RunOnSubscriber(yc0<? super T> yc0Var, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i, spscArrayQueue, worker);
            this.downstream = yc0Var;
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
                zc0Var.request(this.prefetch);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
        
            r18.worker.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
        
            r3.onComplete();
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Throwable th;
            int i = this.consumed;
            SpscArrayQueue<T> spscArrayQueue = this.queue;
            yc0<? super T> yc0Var = this.downstream;
            int i2 = this.limit;
            int iAddAndGet = 1;
            loop0: while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (!this.cancelled) {
                        boolean z = this.done;
                        if (z && (th = this.error) != null) {
                            spscArrayQueue.clear();
                            yc0Var.onError(th);
                            break loop0;
                        }
                        T tPoll = spscArrayQueue.poll();
                        boolean z3 = tPoll == null;
                        if (z && z3) {
                            break loop0;
                        }
                        if (z3) {
                            break;
                        }
                        yc0Var.onNext(tPoll);
                        j2++;
                        i++;
                        if (i == i2) {
                            this.upstream.request(i);
                            i = 0;
                        }
                    } else {
                        spscArrayQueue.clear();
                        return;
                    }
                }
                if (j2 == j) {
                    if (!this.cancelled) {
                        if (this.done) {
                            Throwable th2 = this.error;
                            if (th2 == null) {
                                if (spscArrayQueue.isEmpty()) {
                                    break;
                                }
                            } else {
                                spscArrayQueue.clear();
                                yc0Var.onError(th2);
                                break;
                            }
                        }
                    } else {
                        spscArrayQueue.clear();
                        return;
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                int i3 = get();
                if (i3 == iAddAndGet) {
                    this.consumed = i;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i3;
                }
            }
        }
    }

    public ParallelRunOn(ParallelFlowable<? extends T> parallelFlowable, Scheduler scheduler, int i) {
        this.source = parallelFlowable;
        this.scheduler = scheduler;
        this.prefetch = i;
    }

    public void createSubscriber(int i, yc0<? super T>[] yc0VarArr, yc0<T>[] yc0VarArr2, Scheduler.Worker worker) {
        yc0<? super T> yc0Var = yc0VarArr[i];
        SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.prefetch);
        if (yc0Var instanceof ConditionalSubscriber) {
            yc0VarArr2[i] = new RunOnConditionalSubscriber((ConditionalSubscriber) yc0Var, this.prefetch, spscArrayQueue, worker);
        } else {
            yc0VarArr2[i] = new RunOnSubscriber(yc0Var, this.prefetch, spscArrayQueue, worker);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.source.parallelism();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(yc0<? super T>[] yc0VarArr) {
        if (validate(yc0VarArr)) {
            int length = yc0VarArr.length;
            yc0<T>[] yc0VarArr2 = new yc0[length];
            Object obj = this.scheduler;
            if (obj instanceof SchedulerMultiWorkerSupport) {
                ((SchedulerMultiWorkerSupport) obj).createWorkers(length, new MultiWorkerCallback(yc0VarArr, yc0VarArr2));
            } else {
                for (int i = 0; i < length; i++) {
                    createSubscriber(i, yc0VarArr, yc0VarArr2, this.scheduler.createWorker());
                }
            }
            this.source.subscribe(yc0VarArr2);
        }
    }
}
