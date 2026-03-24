package io.reactivex;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface SingleOnSubscribe<T> {
    void subscribe(@NonNull SingleEmitter<T> singleEmitter) throws Exception;
}
