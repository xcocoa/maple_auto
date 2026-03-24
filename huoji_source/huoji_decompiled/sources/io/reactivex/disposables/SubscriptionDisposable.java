package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class SubscriptionDisposable extends ReferenceDisposable<zc0> {
    private static final long serialVersionUID = -707001650852963139L;

    public SubscriptionDisposable(zc0 zc0Var) {
        super(zc0Var);
    }

    @Override // io.reactivex.disposables.ReferenceDisposable
    public void onDisposed(@NonNull zc0 zc0Var) {
        zc0Var.cancel();
    }
}
