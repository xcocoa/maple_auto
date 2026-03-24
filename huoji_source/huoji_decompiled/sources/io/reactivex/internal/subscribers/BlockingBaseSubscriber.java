package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BlockingBaseSubscriber<T> extends CountDownLatch implements FlowableSubscriber<T> {
    public volatile boolean cancelled;
    public Throwable error;
    public zc0 upstream;
    public T value;

    public BlockingBaseSubscriber() {
        super(1);
    }

    public final T blockingGet() {
        if (getCount() != 0) {
            try {
                BlockingHelper.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                zc0 zc0Var = this.upstream;
                this.upstream = SubscriptionHelper.CANCELLED;
                if (zc0Var != null) {
                    zc0Var.cancel();
                }
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }
        Throwable th = this.error;
        if (th == null) {
            return this.value;
        }
        throw ExceptionHelper.wrapOrThrow(th);
    }

    @Override // z2.yc0
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.FlowableSubscriber, z2.yc0
    public final void onSubscribe(zc0 zc0Var) {
        if (SubscriptionHelper.validate(this.upstream, zc0Var)) {
            this.upstream = zc0Var;
            if (this.cancelled) {
                return;
            }
            zc0Var.request(Long.MAX_VALUE);
            if (this.cancelled) {
                this.upstream = SubscriptionHelper.CANCELLED;
                zc0Var.cancel();
            }
        }
    }
}
