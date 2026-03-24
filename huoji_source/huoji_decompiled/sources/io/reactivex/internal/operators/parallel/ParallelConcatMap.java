package io.reactivex.internal.operators.parallel;

import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.parallel.ParallelFlowable;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class ParallelConcatMap<T, R> extends ParallelFlowable<R> {
    public final ErrorMode errorMode;
    public final Function<? super T, ? extends xc0<? extends R>> mapper;
    public final int prefetch;
    public final ParallelFlowable<T> source;

    public ParallelConcatMap(ParallelFlowable<T> parallelFlowable, Function<? super T, ? extends xc0<? extends R>> function, int i, ErrorMode errorMode) {
        this.source = parallelFlowable;
        this.mapper = (Function) ObjectHelper.requireNonNull(function, "mapper");
        this.prefetch = i;
        this.errorMode = (ErrorMode) ObjectHelper.requireNonNull(errorMode, "errorMode");
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.source.parallelism();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(yc0<? super R>[] yc0VarArr) {
        if (validate(yc0VarArr)) {
            int length = yc0VarArr.length;
            yc0<? super T>[] yc0VarArr2 = new yc0[length];
            for (int i = 0; i < length; i++) {
                yc0VarArr2[i] = FlowableConcatMap.subscribe(yc0VarArr[i], this.mapper, this.prefetch, this.errorMode);
            }
            this.source.subscribe(yc0VarArr2);
        }
    }
}
