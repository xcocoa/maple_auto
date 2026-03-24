package io.reactivex.internal.operators.parallel;

import io.reactivex.parallel.ParallelFlowable;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class ParallelFromArray<T> extends ParallelFlowable<T> {
    public final xc0<T>[] sources;

    public ParallelFromArray(xc0<T>[] xc0VarArr) {
        this.sources = xc0VarArr;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.sources.length;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(yc0<? super T>[] yc0VarArr) {
        if (validate(yc0VarArr)) {
            int length = yc0VarArr.length;
            for (int i = 0; i < length; i++) {
                this.sources[i].subscribe(yc0VarArr[i]);
            }
        }
    }
}
