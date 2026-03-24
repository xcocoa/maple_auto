package io.reactivex;

import io.reactivex.annotations.NonNull;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public interface FlowableOperator<Downstream, Upstream> {
    @NonNull
    yc0<? super Upstream> apply(@NonNull yc0<? super Downstream> yc0Var) throws Exception;
}
