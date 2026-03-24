package io.reactivex;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface Emitter<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onNext(@NonNull T t);
}
