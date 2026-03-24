package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class BlockingSubscriber<T> extends AtomicReference<zc0> implements FlowableSubscriber<T>, zc0 {
    public static final Object TERMINATED = new Object();
    private static final long serialVersionUID = -4875965440900746268L;
    public final Queue<Object> queue;

    public BlockingSubscriber(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override // z2.zc0
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    public boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // z2.yc0
    public void onComplete() {
        this.queue.offer(NotificationLite.complete());
    }

    @Override // z2.yc0
    public void onError(Throwable th) {
        this.queue.offer(NotificationLite.error(th));
    }

    @Override // z2.yc0
    public void onNext(T t) {
        this.queue.offer(NotificationLite.next(t));
    }

    @Override // io.reactivex.FlowableSubscriber, z2.yc0
    public void onSubscribe(zc0 zc0Var) {
        if (SubscriptionHelper.setOnce(this, zc0Var)) {
            this.queue.offer(NotificationLite.subscription(this));
        }
    }

    @Override // z2.zc0
    public void request(long j) {
        get().request(j);
    }
}
