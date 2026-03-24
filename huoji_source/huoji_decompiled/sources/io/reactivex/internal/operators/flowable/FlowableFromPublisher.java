package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableFromPublisher<T> extends Flowable<T> {
    public final xc0<? extends T> publisher;

    public FlowableFromPublisher(xc0<? extends T> xc0Var) {
        this.publisher = xc0Var;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        this.publisher.subscribe(yc0Var);
    }
}
