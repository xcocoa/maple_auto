package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableFlatMapPublisher<T, U> extends Flowable<U> {
    public final int bufferSize;
    public final boolean delayErrors;
    public final Function<? super T, ? extends xc0<? extends U>> mapper;
    public final int maxConcurrency;
    public final xc0<T> source;

    public FlowableFlatMapPublisher(xc0<T> xc0Var, Function<? super T, ? extends xc0<? extends U>> function, boolean z, int i, int i2) {
        this.source = xc0Var;
        this.mapper = function;
        this.delayErrors = z;
        this.maxConcurrency = i;
        this.bufferSize = i2;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super U> yc0Var) {
        if (FlowableScalarXMap.tryScalarXMapSubscribe(this.source, yc0Var, this.mapper)) {
            return;
        }
        this.source.subscribe(FlowableFlatMap.subscribe(yc0Var, this.mapper, this.delayErrors, this.maxConcurrency, this.bufferSize));
    }
}
