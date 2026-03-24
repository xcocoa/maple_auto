package com.lidroid.xutils.task;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class PriorityExecutor implements Executor {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE = 256;
    private static final ThreadFactory sThreadFactory = new ThreadFactory() { // from class: com.lidroid.xutils.task.PriorityExecutor.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "PriorityExecutor #" + this.mCount.getAndIncrement());
        }
    };
    private final BlockingQueue<Runnable> mPoolWorkQueue;
    private final ThreadPoolExecutor mThreadPoolExecutor;

    public PriorityExecutor() {
        this(5);
    }

    public PriorityExecutor(int i) {
        PriorityObjectBlockingQueue priorityObjectBlockingQueue = new PriorityObjectBlockingQueue();
        this.mPoolWorkQueue = priorityObjectBlockingQueue;
        this.mThreadPoolExecutor = new ThreadPoolExecutor(i, 256, 1L, TimeUnit.SECONDS, priorityObjectBlockingQueue, sThreadFactory);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.mThreadPoolExecutor.execute(runnable);
    }

    public int getPoolSize() {
        return this.mThreadPoolExecutor.getCorePoolSize();
    }

    public boolean isBusy() {
        return this.mThreadPoolExecutor.getActiveCount() >= this.mThreadPoolExecutor.getCorePoolSize();
    }

    public void setPoolSize(int i) {
        if (i > 0) {
            this.mThreadPoolExecutor.setCorePoolSize(i);
        }
    }
}
