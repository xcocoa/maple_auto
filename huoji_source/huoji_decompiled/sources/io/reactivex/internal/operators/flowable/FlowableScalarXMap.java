package io.reactivex.internal.operators.flowable;

import android.R;
import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.ScalarSubscription;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import z2.xc0;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableScalarXMap {

    public static final class ScalarXMapFlowable<T, R> extends Flowable<R> {
        public final Function<? super T, ? extends xc0<? extends R>> mapper;
        public final T value;

        public ScalarXMapFlowable(T t, Function<? super T, ? extends xc0<? extends R>> function) {
            this.value = t;
            this.mapper = function;
        }

        @Override // io.reactivex.Flowable
        public void subscribeActual(yc0<? super R> yc0Var) {
            try {
                xc0 xc0Var = (xc0) ObjectHelper.requireNonNull(this.mapper.apply(this.value), "The mapper returned a null Publisher");
                if (!(xc0Var instanceof Callable)) {
                    xc0Var.subscribe(yc0Var);
                    return;
                }
                try {
                    Object objCall = ((Callable) xc0Var).call();
                    if (objCall == null) {
                        EmptySubscription.complete(yc0Var);
                    } else {
                        yc0Var.onSubscribe(new ScalarSubscription(yc0Var, objCall));
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    EmptySubscription.error(th, yc0Var);
                }
            } catch (Throwable th2) {
                EmptySubscription.error(th2, yc0Var);
            }
        }
    }

    private FlowableScalarXMap() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Flowable<U> scalarXMap(T t, Function<? super T, ? extends xc0<? extends U>> function) {
        return RxJavaPlugins.onAssembly(new ScalarXMapFlowable(t, function));
    }

    public static <T, R> boolean tryScalarXMapSubscribe(xc0<T> xc0Var, yc0<? super R> yc0Var, Function<? super T, ? extends xc0<? extends R>> function) {
        if (!(xc0Var instanceof Callable)) {
            return false;
        }
        try {
            R.bool boolVar = (Object) ((Callable) xc0Var).call();
            if (boolVar == null) {
                EmptySubscription.complete(yc0Var);
                return true;
            }
            xc0 xc0Var2 = (xc0) ObjectHelper.requireNonNull(function.apply(boolVar), "The mapper returned a null Publisher");
            if (xc0Var2 instanceof Callable) {
                Object objCall = ((Callable) xc0Var2).call();
                if (objCall == null) {
                    EmptySubscription.complete(yc0Var);
                    return true;
                }
                yc0Var.onSubscribe(new ScalarSubscription(yc0Var, objCall));
            } else {
                xc0Var2.subscribe(yc0Var);
            }
            return true;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, yc0Var);
            return true;
        }
    }
}
