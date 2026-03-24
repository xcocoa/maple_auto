package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.Iterator;
import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableFromIterable<T> extends Flowable<T> {
    public final Iterable<? extends T> source;

    public static abstract class BaseRangeSubscription<T> extends BasicQueueSubscription<T> {
        private static final long serialVersionUID = -2252972430506210021L;
        public volatile boolean cancelled;
        public Iterator<? extends T> it;
        public boolean once;

        public BaseRangeSubscription(Iterator<? extends T> it) {
            this.it = it;
        }

        @Override // z2.zc0
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.it = null;
        }

        public abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.it;
            return it == null || !it.hasNext();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public final T poll() {
            Iterator<? extends T> it = this.it;
            if (it == null) {
                return null;
            }
            if (!this.once) {
                this.once = true;
            } else if (!it.hasNext()) {
                return null;
            }
            return (T) ObjectHelper.requireNonNull(this.it.next(), "Iterator.next() returned a null value");
        }

        @Override // z2.zc0
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.add(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    fastPath();
                } else {
                    slowPath(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }

        public abstract void slowPath(long j);
    }

    public static final class IteratorConditionalSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;
        public final ConditionalSubscriber<? super T> downstream;

        public IteratorConditionalSubscription(ConditionalSubscriber<? super T> conditionalSubscriber, Iterator<? extends T> it) {
            super(it);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        public void fastPath() {
            T next;
            Iterator<? extends T> it = this.it;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            while (!this.cancelled) {
                try {
                    next = it.next();
                } catch (Throwable th) {
                    th = th;
                    Exceptions.throwIfFatal(th);
                }
                if (this.cancelled) {
                    return;
                }
                if (next == null) {
                    th = new NullPointerException("Iterator.next() returned a null value");
                    conditionalSubscriber.onError(th);
                    return;
                }
                conditionalSubscriber.tryOnNext(next);
                if (this.cancelled) {
                    return;
                }
                if (!it.hasNext()) {
                    if (this.cancelled) {
                        return;
                    }
                    conditionalSubscriber.onComplete();
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            Iterator<? extends T> it = this.it;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
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
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.cancelled) {
                                return;
                            }
                            if (next == null) {
                                th = new NullPointerException("Iterator.next() returned a null value");
                                break loop0;
                            }
                            boolean zTryOnNext = conditionalSubscriber.tryOnNext(next);
                            if (this.cancelled) {
                                return;
                            }
                            if (!it.hasNext()) {
                                if (this.cancelled) {
                                    return;
                                }
                                conditionalSubscriber.onComplete();
                                return;
                            } else if (zTryOnNext) {
                                j2++;
                            }
                        } catch (Throwable th) {
                            th = th;
                            Exceptions.throwIfFatal(th);
                        }
                    }
                }
            } while (j != 0);
            return;
            conditionalSubscriber.onError(th);
        }
    }

    public static final class IteratorSubscription<T> extends BaseRangeSubscription<T> {
        private static final long serialVersionUID = -6022804456014692607L;
        public final yc0<? super T> downstream;

        public IteratorSubscription(yc0<? super T> yc0Var, Iterator<? extends T> it) {
            super(it);
            this.downstream = yc0Var;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        public void fastPath() {
            T next;
            Iterator<? extends T> it = this.it;
            yc0<? super T> yc0Var = this.downstream;
            while (!this.cancelled) {
                try {
                    next = it.next();
                } catch (Throwable th) {
                    th = th;
                    Exceptions.throwIfFatal(th);
                }
                if (this.cancelled) {
                    return;
                }
                if (next == null) {
                    th = new NullPointerException("Iterator.next() returned a null value");
                    yc0Var.onError(th);
                    return;
                }
                yc0Var.onNext(next);
                if (this.cancelled) {
                    return;
                }
                if (!it.hasNext()) {
                    if (this.cancelled) {
                        return;
                    }
                    yc0Var.onComplete();
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x004d, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromIterable.BaseRangeSubscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            Iterator<? extends T> it = this.it;
            yc0<? super T> yc0Var = this.downstream;
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
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.cancelled) {
                                return;
                            }
                            if (next == null) {
                                th = new NullPointerException("Iterator.next() returned a null value");
                                break loop0;
                            }
                            yc0Var.onNext(next);
                            if (this.cancelled) {
                                return;
                            }
                            if (!it.hasNext()) {
                                if (this.cancelled) {
                                    return;
                                }
                                yc0Var.onComplete();
                                return;
                            }
                            j2++;
                        } catch (Throwable th) {
                            th = th;
                            Exceptions.throwIfFatal(th);
                        }
                    }
                }
            } while (j != 0);
            return;
            yc0Var.onError(th);
        }
    }

    public FlowableFromIterable(Iterable<? extends T> iterable) {
        this.source = iterable;
    }

    public static <T> void subscribe(yc0<? super T> yc0Var, Iterator<? extends T> it) {
        try {
            if (it.hasNext()) {
                yc0Var.onSubscribe(yc0Var instanceof ConditionalSubscriber ? new IteratorConditionalSubscription((ConditionalSubscriber) yc0Var, it) : new IteratorSubscription(yc0Var, it));
            } else {
                EmptySubscription.complete(yc0Var);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, yc0Var);
        }
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super T> yc0Var) {
        try {
            subscribe(yc0Var, this.source.iterator());
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, yc0Var);
        }
    }
}
