package io.reactivex.functions;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface Function<T, R> {
    R apply(@NonNull T t) throws Exception;
}
