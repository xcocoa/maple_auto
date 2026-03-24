package io.reactivex.internal.operators.flowable;

import android.R;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import z2.xc0;
import z2.yc0;
import z2.zc0;

/* JADX INFO: loaded from: classes2.dex */
public final class FlowableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractFlowableWithUpstream<TLeft, R> {
    public final Function<? super TLeft, ? extends xc0<TLeftEnd>> leftEnd;
    public final xc0<? extends TRight> other;
    public final BiFunction<? super TLeft, ? super TRight, ? extends R> resultSelector;
    public final Function<? super TRight, ? extends xc0<TRightEnd>> rightEnd;

    public static final class JoinSubscription<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements zc0, FlowableGroupJoin.JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;
        public volatile boolean cancelled;
        public final yc0<? super R> downstream;
        public final Function<? super TLeft, ? extends xc0<TLeftEnd>> leftEnd;
        public int leftIndex;
        public final BiFunction<? super TLeft, ? super TRight, ? extends R> resultSelector;
        public final Function<? super TRight, ? extends xc0<TRightEnd>> rightEnd;
        public int rightIndex;
        public static final Integer LEFT_VALUE = 1;
        public static final Integer RIGHT_VALUE = 2;
        public static final Integer LEFT_CLOSE = 3;
        public static final Integer RIGHT_CLOSE = 4;
        public final AtomicLong requested = new AtomicLong();
        public final CompositeDisposable disposables = new CompositeDisposable();
        public final SpscLinkedArrayQueue<Object> queue = new SpscLinkedArrayQueue<>(Flowable.bufferSize());
        public final Map<Integer, TLeft> lefts = new LinkedHashMap();
        public final Map<Integer, TRight> rights = new LinkedHashMap();
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicInteger active = new AtomicInteger(2);

        public JoinSubscription(yc0<? super R> yc0Var, Function<? super TLeft, ? extends xc0<TLeftEnd>> function, Function<? super TRight, ? extends xc0<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
            this.downstream = yc0Var;
            this.leftEnd = function;
            this.rightEnd = function2;
            this.resultSelector = biFunction;
        }

        @Override // z2.zc0
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void cancelAll() {
            this.disposables.dispose();
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00fe A[PHI: r13
          0x00fe: PHI (r13v3 long) = (r13v1 long), (r13v5 long) binds: [B:79:0x0198, B:52:0x00fc] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber;
            Map map;
            long j;
            if (getAndIncrement() != 0) {
                return;
            }
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.queue;
            yc0<? super R> yc0Var = this.downstream;
            boolean z = true;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (this.error.get() != null) {
                    spscLinkedArrayQueue.clear();
                    cancelAll();
                    errorAll(yc0Var);
                    return;
                }
                boolean z3 = this.active.get() == 0;
                Integer num = (Integer) spscLinkedArrayQueue.poll();
                boolean z4 = num == null;
                if (z3 && z4) {
                    this.lefts.clear();
                    this.rights.clear();
                    this.disposables.dispose();
                    yc0Var.onComplete();
                    return;
                }
                if (z4) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    Object objPoll = spscLinkedArrayQueue.poll();
                    if (num == LEFT_VALUE) {
                        int i = this.leftIndex;
                        this.leftIndex = i + 1;
                        this.lefts.put(Integer.valueOf(i), (TLeft) objPoll);
                        try {
                            xc0 xc0Var = (xc0) ObjectHelper.requireNonNull(this.leftEnd.apply(objPoll), "The leftEnd returned a null Publisher");
                            FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber2 = new FlowableGroupJoin.LeftRightEndSubscriber(this, z, i);
                            this.disposables.add(leftRightEndSubscriber2);
                            xc0Var.subscribe(leftRightEndSubscriber2);
                            if (this.error.get() != null) {
                                spscLinkedArrayQueue.clear();
                                cancelAll();
                                errorAll(yc0Var);
                                return;
                            }
                            long j2 = this.requested.get();
                            Iterator<TRight> it = this.rights.values().iterator();
                            j = 0;
                            while (it.hasNext()) {
                                try {
                                    R.color colorVar = (Object) ObjectHelper.requireNonNull(this.resultSelector.apply(objPoll, it.next()), "The resultSelector returned a null value");
                                    if (j == j2) {
                                        ExceptionHelper.addThrowable(this.error, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        spscLinkedArrayQueue.clear();
                                        cancelAll();
                                        errorAll(yc0Var);
                                        return;
                                    }
                                    yc0Var.onNext(colorVar);
                                    j++;
                                } catch (Throwable th) {
                                    fail(th, yc0Var, spscLinkedArrayQueue);
                                    return;
                                }
                            }
                            if (j != 0) {
                                BackpressureHelper.produced(this.requested, j);
                            }
                            z = true;
                        } catch (Throwable th2) {
                            fail(th2, yc0Var, spscLinkedArrayQueue);
                            return;
                        }
                    } else {
                        if (num == RIGHT_VALUE) {
                            int i2 = this.rightIndex;
                            this.rightIndex = i2 + 1;
                            this.rights.put(Integer.valueOf(i2), (TRight) objPoll);
                            try {
                                xc0 xc0Var2 = (xc0) ObjectHelper.requireNonNull(this.rightEnd.apply(objPoll), "The rightEnd returned a null Publisher");
                                FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber3 = new FlowableGroupJoin.LeftRightEndSubscriber(this, false, i2);
                                this.disposables.add(leftRightEndSubscriber3);
                                xc0Var2.subscribe(leftRightEndSubscriber3);
                                if (this.error.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    cancelAll();
                                    errorAll(yc0Var);
                                    return;
                                }
                                long j3 = this.requested.get();
                                Iterator<TLeft> it2 = this.lefts.values().iterator();
                                j = 0;
                                while (it2.hasNext()) {
                                    try {
                                        R.color colorVar2 = (Object) ObjectHelper.requireNonNull(this.resultSelector.apply(it2.next(), objPoll), "The resultSelector returned a null value");
                                        if (j == j3) {
                                            ExceptionHelper.addThrowable(this.error, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                            spscLinkedArrayQueue.clear();
                                            cancelAll();
                                            errorAll(yc0Var);
                                            return;
                                        }
                                        yc0Var.onNext(colorVar2);
                                        j++;
                                    } catch (Throwable th3) {
                                        fail(th3, yc0Var, spscLinkedArrayQueue);
                                        return;
                                    }
                                }
                                if (j != 0) {
                                }
                            } catch (Throwable th4) {
                                fail(th4, yc0Var, spscLinkedArrayQueue);
                                return;
                            }
                        } else {
                            if (num == LEFT_CLOSE) {
                                leftRightEndSubscriber = (FlowableGroupJoin.LeftRightEndSubscriber) objPoll;
                                map = this.lefts;
                            } else if (num == RIGHT_CLOSE) {
                                leftRightEndSubscriber = (FlowableGroupJoin.LeftRightEndSubscriber) objPoll;
                                map = this.rights;
                            }
                            map.remove(Integer.valueOf(leftRightEndSubscriber.index));
                            this.disposables.remove(leftRightEndSubscriber);
                        }
                        z = true;
                    }
                }
            }
            spscLinkedArrayQueue.clear();
        }

        public void errorAll(yc0<?> yc0Var) {
            Throwable thTerminate = ExceptionHelper.terminate(this.error);
            this.lefts.clear();
            this.rights.clear();
            yc0Var.onError(thTerminate);
        }

        public void fail(Throwable th, yc0<?> yc0Var, SimpleQueue<?> simpleQueue) {
            Exceptions.throwIfFatal(th);
            ExceptionHelper.addThrowable(this.error, th);
            simpleQueue.clear();
            cancelAll();
            errorAll(yc0Var);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerClose(boolean z, FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber) {
            synchronized (this) {
                this.queue.offer(z ? LEFT_CLOSE : RIGHT_CLOSE, leftRightEndSubscriber);
            }
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerCloseError(Throwable th) {
            if (ExceptionHelper.addThrowable(this.error, th)) {
                drain();
            } else {
                RxJavaPlugins.onError(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerComplete(FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber) {
            this.disposables.delete(leftRightSubscriber);
            this.active.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerError(Throwable th) {
            if (!ExceptionHelper.addThrowable(this.error, th)) {
                RxJavaPlugins.onError(th);
            } else {
                this.active.decrementAndGet();
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerValue(boolean z, Object obj) {
            synchronized (this) {
                this.queue.offer(z ? LEFT_VALUE : RIGHT_VALUE, obj);
            }
            drain();
        }

        @Override // z2.zc0
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
            }
        }
    }

    public FlowableJoin(Flowable<TLeft> flowable, xc0<? extends TRight> xc0Var, Function<? super TLeft, ? extends xc0<TLeftEnd>> function, Function<? super TRight, ? extends xc0<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
        super(flowable);
        this.other = xc0Var;
        this.leftEnd = function;
        this.rightEnd = function2;
        this.resultSelector = biFunction;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // io.reactivex.Flowable
    public void subscribeActual(yc0<? super R> yc0Var) {
        JoinSubscription joinSubscription = new JoinSubscription(yc0Var, this.leftEnd, this.rightEnd, this.resultSelector);
        yc0Var.onSubscribe(joinSubscription);
        FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber = new FlowableGroupJoin.LeftRightSubscriber(joinSubscription, true);
        joinSubscription.disposables.add(leftRightSubscriber);
        FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber2 = new FlowableGroupJoin.LeftRightSubscriber(joinSubscription, false);
        joinSubscription.disposables.add(leftRightSubscriber2);
        this.source.subscribe((FlowableSubscriber) leftRightSubscriber);
        this.other.subscribe(leftRightSubscriber2);
    }
}
