package io.reactivex.internal.subscribers;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class QueueDrainSubscriberPad3 extends QueueDrainSubscriberPad2 {
    public final AtomicLong requested = new AtomicLong();
}
