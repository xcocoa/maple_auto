package io.reactivex.internal.subscriptions;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public enum SubscriptionHelper implements zc0 {
    CANCELLED;

    public static boolean cancel(AtomicReference<zc0> atomicReference) {
        zc0 andSet;
        zc0 zc0Var = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (zc0Var == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static void deferredRequest(AtomicReference<zc0> atomicReference, AtomicLong atomicLong, long j) {
        zc0 zc0Var = atomicReference.get();
        if (zc0Var != null) {
            zc0Var.request(j);
            return;
        }
        if (validate(j)) {
            BackpressureHelper.add(atomicLong, j);
            zc0 zc0Var2 = atomicReference.get();
            if (zc0Var2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    zc0Var2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<zc0> atomicReference, AtomicLong atomicLong, zc0 zc0Var) {
        if (!setOnce(atomicReference, zc0Var)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        zc0Var.request(andSet);
        return true;
    }

    public static boolean replace(AtomicReference<zc0> atomicReference, zc0 zc0Var) {
        zc0 zc0Var2;
        do {
            zc0Var2 = atomicReference.get();
            if (zc0Var2 == CANCELLED) {
                if (zc0Var == null) {
                    return false;
                }
                zc0Var.cancel();
                return false;
            }
        } while (!atomicReference.compareAndSet(zc0Var2, zc0Var));
        return true;
    }

    public static void reportMoreProduced(long j) {
        RxJavaPlugins.onError(new ProtocolViolationException("More produced than requested: " + j));
    }

    public static void reportSubscriptionSet() {
        RxJavaPlugins.onError(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<zc0> atomicReference, zc0 zc0Var) {
        zc0 zc0Var2;
        do {
            zc0Var2 = atomicReference.get();
            if (zc0Var2 == CANCELLED) {
                if (zc0Var == null) {
                    return false;
                }
                zc0Var.cancel();
                return false;
            }
        } while (!atomicReference.compareAndSet(zc0Var2, zc0Var));
        if (zc0Var2 == null) {
            return true;
        }
        zc0Var2.cancel();
        return true;
    }

    public static boolean setOnce(AtomicReference<zc0> atomicReference, zc0 zc0Var) {
        ObjectHelper.requireNonNull(zc0Var, "s is null");
        if (atomicReference.compareAndSet(null, zc0Var)) {
            return true;
        }
        zc0Var.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        reportSubscriptionSet();
        return false;
    }

    public static boolean setOnce(AtomicReference<zc0> atomicReference, zc0 zc0Var, long j) {
        if (!setOnce(atomicReference, zc0Var)) {
            return false;
        }
        zc0Var.request(j);
        return true;
    }

    public static boolean validate(long j) {
        if (j > 0) {
            return true;
        }
        RxJavaPlugins.onError(new IllegalArgumentException("n > 0 required but it was " + j));
        return false;
    }

    public static boolean validate(zc0 zc0Var, zc0 zc0Var2) {
        if (zc0Var2 == null) {
            RxJavaPlugins.onError(new NullPointerException("next is null"));
            return false;
        }
        if (zc0Var == null) {
            return true;
        }
        zc0Var2.cancel();
        reportSubscriptionSet();
        return false;
    }

    @Override // z2.zc0
    public void cancel() {
    }

    @Override // z2.zc0
    public void request(long j) {
    }
}
