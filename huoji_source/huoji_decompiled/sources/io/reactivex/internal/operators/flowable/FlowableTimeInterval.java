package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.schedulers.Timed;
import java.util.concurrent.TimeUnit;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableTimeInterval<T> extends AbstractFlowableWithUpstream<T, Timed<T>> {
    public final Scheduler scheduler;
    public final TimeUnit unit;

    public static final class TimeIntervalSubscriber<T> implements FlowableSubscriber<T>, zc0 {
        public final yc0<? super Timed<T>> downstream;
        public long lastTime;
        public final Scheduler scheduler;
        public final TimeUnit unit;
        public zc0 upstream;

        public TimeIntervalSubscriber(yc0<? super Timed<T>> yc0Var, TimeUnit timeUnit, Scheduler scheduler) {
            this.downstream = yc0Var;
            this.scheduler = scheduler;
            this.unit = timeUnit;
        }

        @Override // z2.zc0
        public void cancel() {
            this.upstream.cancel();
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
        public void onNext(T t) {
            long jNow = this.scheduler.now(this.unit);
            long j = this.lastTime;
            this.lastTime = jNow;
            this.downstream.onNext(new Timed(t, jNow - j, this.unit));
        }

        @Override // io.reactivex.FlowableSubscriber, z2.yc0
        public void onSubscribe(zc0 zc0Var) {
            if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
                this.lastTime = this.scheduler.now(this.unit);
                this.upstream = zc0Var;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // z2.zc0
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public FlowableTimeInterval(Flowable<T> flowable, TimeUnit timeUnit, Scheduler scheduler) {
        super(flowable);
        this.scheduler = scheduler;
        this.unit = timeUnit;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super Timed<T>> yc0Var) {
        this.source.subscribe((FlowableSubscriber) new TimeIntervalSubscriber(yc0Var, this.unit, this.scheduler));
    }
}
