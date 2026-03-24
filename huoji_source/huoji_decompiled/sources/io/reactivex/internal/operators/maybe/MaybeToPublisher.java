package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeSource;
import io.reactivex.functions.Function;
import z2.xc0;

/* JADX INFO: loaded from: classes2.dex */
public enum MaybeToPublisher implements Function<MaybeSource<Object>, xc0<Object>> {
    INSTANCE;

    public static <T> Function<MaybeSource<T>, xc0<T>> instance() {
        return INSTANCE;
    }

    @Override // io.reactivex.functions.Function
    public xc0<Object> apply(MaybeSource<Object> maybeSource) throws Exception {
        return new MaybeToFlowable(maybeSource);
    }
}
