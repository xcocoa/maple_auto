package io.reactivex.internal.util;

import z2.yc0;

/* JADX INFO: loaded from: classes2.dex */
public interface QueueDrain<T, U> {
    boolean accept(yc0<? super U> yc0Var, T t);

    boolean cancelled();

    boolean done();

    boolean enter();

    Throwable error();

    int leave(int i);

    long produced(long j);

    long requested();
}
