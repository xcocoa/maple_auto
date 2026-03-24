package io.reactivex.internal.disposables;

import io.reactivex.annotations.Experimental;
import io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes2.dex */
@Experimental
public interface ResettableConnectable {
    void resetIf(Disposable disposable);
}
