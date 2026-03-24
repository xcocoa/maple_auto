package io.reactivex;

import io.reactivex.annotations.NonNull;
import z2.xc0;

/* JADX INFO: loaded from: classes2.dex */
public interface FlowableTransformer<Upstream, Downstream> {
    @NonNull
    xc0<Downstream> apply(@NonNull Flowable<Upstream> flowable);
}
