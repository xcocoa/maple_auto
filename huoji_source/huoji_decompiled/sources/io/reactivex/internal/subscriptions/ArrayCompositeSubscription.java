package io.reactivex.internal.subscriptions;

import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReferenceArray;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<zc0> implements Disposable {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i) {
        super(i);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        zc0 andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                zc0 zc0Var = get(i);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (zc0Var != subscriptionHelper && (andSet = getAndSet(i, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public zc0 replaceResource(int i, zc0 zc0Var) {
        zc0 zc0Var2;
        do {
            zc0Var2 = get(i);
            if (zc0Var2 == SubscriptionHelper.CANCELLED) {
                if (zc0Var == null) {
                    return null;
                }
                zc0Var.cancel();
                return null;
            }
        } while (!compareAndSet(i, zc0Var2, zc0Var));
        return zc0Var2;
    }

    public boolean setResource(int i, zc0 zc0Var) {
        zc0 zc0Var2;
        do {
            zc0Var2 = get(i);
            if (zc0Var2 == SubscriptionHelper.CANCELLED) {
                if (zc0Var == null) {
                    return false;
                }
                zc0Var.cancel();
                return false;
            }
        } while (!compareAndSet(i, zc0Var2, zc0Var));
        if (zc0Var2 == null) {
            return true;
        }
        zc0Var2.cancel();
        return true;
    }
}
