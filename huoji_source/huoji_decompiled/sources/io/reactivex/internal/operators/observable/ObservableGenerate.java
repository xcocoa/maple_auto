package io.reactivex.internal.operators.observable;

import io.reactivex.Emitter;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final class ObservableGenerate<T, S> extends Observable<T> {
    public final Consumer<? super S> disposeState;
    public final BiFunction<S, Emitter<T>, S> generator;
    public final Callable<S> stateSupplier;

    public static final class GeneratorDisposable<T, S> implements Emitter<T>, Disposable {
        public volatile boolean cancelled;
        public final Consumer<? super S> disposeState;
        public final Observer<? super T> downstream;
        public final BiFunction<S, ? super Emitter<T>, S> generator;
        public boolean hasNext;
        public S state;
        public boolean terminate;

        public GeneratorDisposable(Observer<? super T> observer, BiFunction<S, ? super Emitter<T>, S> biFunction, Consumer<? super S> consumer, S s) {
            this.downstream = observer;
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

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
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

        public void run() {
            S sApply = this.state;
            if (this.cancelled) {
                this.state = null;
            } else {
                BiFunction<S, ? super Emitter<T>, S> biFunction = this.generator;
                while (true) {
                    if (this.cancelled) {
                        break;
                    }
                    this.hasNext = false;
                    try {
                        sApply = biFunction.apply(sApply, this);
                        if (this.terminate) {
                            this.cancelled = true;
                            break;
                        }
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        this.state = null;
                        this.cancelled = true;
                        onError(th);
                    }
                }
                this.state = null;
            }
            dispose(sApply);
        }
    }

    public ObservableGenerate(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        this.stateSupplier = callable;
        this.generator = biFunction;
        this.disposeState = consumer;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            GeneratorDisposable generatorDisposable = new GeneratorDisposable(observer, this.generator, this.disposeState, this.stateSupplier.call());
            observer.onSubscribe(generatorDisposable);
            generatorDisposable.run();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
