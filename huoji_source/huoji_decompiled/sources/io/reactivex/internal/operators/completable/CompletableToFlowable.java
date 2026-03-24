package io.reactivex.internal.operators.completable;

import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.internal.observers.SubscriberCompletableObserver;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class CompletableToFlowable<T> extends Flowable<T> {
    public final CompletableSource source;

    public CompletableToFlowable(CompletableSource completableSource) {
        this.source = completableSource;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        this.source.subscribe(new SubscriberCompletableObserver(yc0Var));
    }
}
