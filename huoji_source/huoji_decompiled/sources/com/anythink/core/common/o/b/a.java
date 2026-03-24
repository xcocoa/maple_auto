package com.anythink.core.common.o.b;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String a = "TaskBusinessThreads";
    private final ExecutorService b;
    private final ExecutorService c;
    private final ExecutorService d;
    private volatile ExecutorService e;
    private volatile ExecutorService f;
    private final ConcurrentHashMap<String, Handler> g = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.anythink.core.common.o.b.a$a, reason: collision with other inner class name */
    public class RejectedExecutionHandlerC0090a implements RejectedExecutionHandler {
        private RejectedExecutionHandlerC0090a() {
        }

        public /* synthetic */ RejectedExecutionHandlerC0090a(a aVar, byte b) {
            this();
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            new StringBuilder("rejectedExecution() >>> called. executor: ").append(threadPoolExecutor);
            a.this.b.execute(runnable);
        }
    }

    public a() {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.b = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30L, timeUnit, new SynchronousQueue(), new c());
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int i = iAvailableProcessors + 1;
        int i2 = iAvailableProcessors * 2;
        StringBuilder sb = new StringBuilder("create limit thread pool: corePoolSize = ");
        sb.append(i);
        sb.append(" maxPoolSize = ");
        sb.append(i2);
        byte b = 0;
        this.c = new ThreadPoolExecutor(i, i2, 60L, timeUnit, new LinkedBlockingQueue(100), new c(), new RejectedExecutionHandlerC0090a(this, b));
        this.d = new ThreadPoolExecutor(0, 5, 60L, timeUnit, new LinkedBlockingQueue(), new c(), new RejectedExecutionHandlerC0090a(this, b));
    }

    private Handler a(String str) {
        return b(str);
    }

    private static void a() {
    }

    private void a(d dVar, String str) {
        Handler handlerB = b(str);
        if (handlerB != null) {
            handlerB.post(dVar);
        }
    }

    private Handler b(String str) {
        Handler handler = this.g.get(str);
        if (handler == null) {
            synchronized (a.class) {
                try {
                    HandlerThread handlerThread = new HandlerThread(str);
                    handlerThread.setPriority(5);
                    handlerThread.start();
                    StringBuilder sb = new StringBuilder("create handler thread: curThreadId = ");
                    sb.append(Thread.currentThread().getId());
                    sb.append(" curThreadName = ");
                    sb.append(Thread.currentThread().getName());
                    Handler handler2 = new Handler(handlerThread.getLooper());
                    try {
                        this.g.put(str, handler2);
                        handler = handler2;
                    } catch (Throwable th) {
                        th = th;
                        handler = handler2;
                        new StringBuilder("getHandler failed: ").append(th.getMessage());
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return handler;
    }

    public static String b(int i) {
        String strConcat = "default_thread_".concat(String.valueOf(i));
        switch (i) {
            case 1:
                strConcat = "single_pool";
                break;
            case 2:
                strConcat = "normal_pool";
                break;
            case 3:
                strConcat = "handler_tcp_log";
                break;
            case 4:
                strConcat = "image_poll";
                break;
            case 5:
                strConcat = "single_pool_preload_task";
                break;
            case 6:
                strConcat = "normal_pool_network_request";
                break;
            case 7:
                strConcat = "limit_pool_sdk_init";
                break;
            case 8:
                strConcat = "handler_agent_event";
                break;
            case 9:
                strConcat = "handler_agent_tk";
                break;
            case 10:
                strConcat = "normal_pool_http_request";
                break;
            case 11:
                strConcat = "handler_placement_statistics";
                break;
            case 12:
                strConcat = "handler_timeout";
                break;
            case 13:
                strConcat = "limit_pool_on_sub_thread";
                break;
            case 14:
                strConcat = "handler_application_lifecycle";
                break;
            case 15:
                strConcat = "handler_shared_placement";
                break;
            case 16:
                strConcat = "single_pool_save_request_failed_info";
                break;
        }
        return String.format("%s_type_%s", "anythink", strConcat);
    }

    private static void b() {
    }

    public final Handler a(int i) {
        return b(b(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(d dVar, int i) {
        ExecutorService executorService;
        String strB = b(i);
        dVar.a(strB);
        if (i == 1) {
            if (this.e == null) {
                synchronized (a.class) {
                    if (this.e == null) {
                        this.e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c());
                    }
                }
            }
            executorService = this.e;
        } else if (i == 13) {
            executorService = this.c;
        } else {
            if (i != 16) {
                if (i != 3) {
                    if (i == 4) {
                        executorService = this.d;
                    } else if (i != 5) {
                        if (i != 7) {
                            if (i != 8) {
                                executorService = this.b;
                            }
                        }
                    }
                }
                Handler handlerB = b(strB);
                if (handlerB != null) {
                    handlerB.post(dVar);
                    return;
                }
                return;
            }
            if (this.f == null) {
                synchronized (a.class) {
                    if (this.f == null) {
                        this.f = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c());
                    }
                }
            }
            executorService = this.f;
        }
        executorService.execute(dVar);
    }
}
