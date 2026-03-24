package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.util.ErrorMode;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableConcatMapPublisher<T, R> extends Flowable<R> {
    public final ErrorMode errorMode;
    public final Function<? super T, ? extends xc0<? extends R>> mapper;
    public final int prefetch;
    public final xc0<T> source;

    public FlowableConcatMapPublisher(xc0<T> xc0Var, Function<? super T, ? extends xc0<? extends R>> function, int i, ErrorMode errorMode) {
        this.source = xc0Var;
        this.mapper = function;
        this.prefetch = i;
        this.errorMode = errorMode;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        if (FlowableScalarXMap.tryScalarXMapSubscribe(this.source, yc0Var, this.mapper)) {
            return;
        }
        this.source.subscribe(FlowableConcatMap.subscribe(yc0Var, this.mapper, this.prefetch, this.errorMode));
    }
}
