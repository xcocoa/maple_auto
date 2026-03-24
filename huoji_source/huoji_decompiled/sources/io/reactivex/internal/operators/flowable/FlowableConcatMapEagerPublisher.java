package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableConcatMapEager;
import io.reactivex.internal.util.ErrorMode;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableConcatMapEagerPublisher<T, R> extends Flowable<R> {
    public final ErrorMode errorMode;
    public final Function<? super T, ? extends xc0<? extends R>> mapper;
    public final int maxConcurrency;
    public final int prefetch;
    public final xc0<T> source;

    public FlowableConcatMapEagerPublisher(xc0<T> xc0Var, Function<? super T, ? extends xc0<? extends R>> function, int i, int i2, ErrorMode errorMode) {
        this.source = xc0Var;
        this.mapper = function;
        this.maxConcurrency = i;
        this.prefetch = i2;
        this.errorMode = errorMode;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        this.source.subscribe(new FlowableConcatMapEager.ConcatMapEagerDelayErrorSubscriber(yc0Var, this.mapper, this.maxConcurrency, this.prefetch, this.errorMode));
    }
}
