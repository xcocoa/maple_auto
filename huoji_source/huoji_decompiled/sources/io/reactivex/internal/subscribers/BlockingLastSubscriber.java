package io.reactivex.internal.subscribers;

/* JADX INFO: loaded from: classes2.dex */
public final class BlockingLastSubscriber<T> extends BlockingBaseSubscriber<T> {
    @Override // z2.yc0
    public void onError(Throwable th) {
        this.value = null;
        this.error = th;
        countDown();
    }

    @Override // z2.yc0
    public void onNext(T t) {
        this.value = t;
    }
}
