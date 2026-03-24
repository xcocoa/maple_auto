package io.reactivex;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface FlowableConverter<T, R> {
    @NonNull
    R apply(@NonNull Flowable<T> flowable);
}
