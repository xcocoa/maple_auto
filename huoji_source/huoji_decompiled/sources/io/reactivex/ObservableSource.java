package io.reactivex;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface ObservableSource<T> {
    void subscribe(@NonNull Observer<? super T> observer);
}
