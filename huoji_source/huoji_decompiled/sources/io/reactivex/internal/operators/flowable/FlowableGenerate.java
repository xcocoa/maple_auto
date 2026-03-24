package io.reactivex.internal.operators.flowable;

import io.reactivex.Emitter;
import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableGenerate<T, S> extends Flowable<T> {
    public final Consumer<? super S> disposeState;
    public final BiFunction<S, Emitter<T>, S> generator;
    public final Callable<S> stateSupplier;

    public static final class GeneratorSubscription<T, S> extends AtomicLong implements Emitter<T>, zc0 {
        private static final long serialVersionUID = 7565982551505011832L;
        public volatile boolean cancelled;
        public final Consumer<? super S> disposeState;
        public final yc0<? super T> downstream;
        public final BiFunction<S, ? super Emitter<T>, S> generator;
        public boolean hasNext;
        public S state;
        public boolean terminate;

        public GeneratorSubscription(yc0<? super T> yc0Var, BiFunction<S, ? super Emitter<T>, S> biFunction, Consumer<? super S> consumer, S s) {
            this.downstream = yc0Var;
            this.generator = biFunction;
            this.disposeState = consumer;
            this.state = s;
        }

        private void dispose(S s) {
            try {
                this.disposeState.accept(s);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }

        @Override // z2.zc0
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            if (BackpressureHelper.add(this, 1L) == 0) {
                S s = this.state;
                this.state = null;
                dispose(s);
            }
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (this.terminate) {
                return;
            }
            this.terminate = true;
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (this.terminate) {
                RxJavaPlugins.onError(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.terminate = true;
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            Throwable nullPointerException;
            if (this.terminate) {
                return;
            }
            if (this.hasNext) {
                nullPointerException = new IllegalStateException("onNext already called in this generate turn");
            } else {
                if (t != null) {
                    this.hasNext = true;
                    this.downstream.onNext(t);
                    return;
                }
                nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            onError(nullPointerException);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
        
            r9.state = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
        
            r9.state = r0;
            r10 = addAndGet(-r4);
         */
        @Override // z2.zc0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.add(this, j) == 0) {
                S sApply = this.state;
                BiFunction<S, ? super Emitter<T>, S> biFunction = this.generator;
                loop0: do {
                    long j2 = 0;
                    while (true) {
                        if (j2 == j) {
                            j = get();
                            if (j2 == j) {
                                break;
                            }
                        } else {
                            if (this.cancelled) {
                                break loop0;
                            }
                            this.hasNext = false;
                            try {
                                sApply = biFunction.apply(sApply, this);
                                if (this.terminate) {
                                    this.cancelled = true;
                                    break loop0;
                                }
                                j2++;
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                this.cancelled = true;
                                this.state = null;
                                onError(th);
                                dispose(sApply);
                                return;
                            }
                        }
                    }
                } while (j != 0);
            }
        }
    }

    public FlowableGenerate(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        this.stateSupplier = callable;
        this.generator = biFunction;
        this.disposeState = consumer;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        try {
            yc0Var.onSubscribe(new GeneratorSubscription(yc0Var, this.generator, this.disposeState, this.stateSupplier.call()));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, yc0Var);
        }
    }
}
