package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableMap;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableMapPublisher<T, U> extends Flowable<U> {
    public final Function<? super T, ? extends U> mapper;
    public final xc0<T> source;

    public FlowableMapPublisher(xc0<T> xc0Var, Function<? super T, ? extends U> function) {
        this.source = xc0Var;
        this.mapper = function;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super U> yc0Var) {
        this.source.subscribe(new FlowableMap.MapSubscriber(yc0Var, this.mapper));
    }
}
