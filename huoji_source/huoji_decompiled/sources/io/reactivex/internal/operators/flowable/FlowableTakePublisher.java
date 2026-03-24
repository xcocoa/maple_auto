package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.internal.operators.flowable.FlowableTake;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableTakePublisher<T> extends Flowable<T> {
    public final long limit;
    public final xc0<T> source;

    public FlowableTakePublisher(xc0<T> xc0Var, long j) {
        this.source = xc0Var;
        this.limit = j;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        this.source.subscribe(new FlowableTake.TakeSubscriber(yc0Var, this.limit));
    }
}
