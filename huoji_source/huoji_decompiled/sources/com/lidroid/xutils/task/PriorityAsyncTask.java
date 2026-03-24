package com.lidroid.xutils.task;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.lidroid.xutils.util.LogUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PriorityAsyncTask<Params, Progress, Result> implements TaskHandler {
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    private final FutureTask<Result> mFuture;
    private final WorkerRunnable<Params, Result> mWorker;
    private Priority priority;
    private static final InternalHandler sHandler = new InternalHandler(null);
    public static final Executor sDefaultExecutor = new PriorityExecutor();
    private volatile boolean mExecuteInvoked = false;
    private final AtomicBoolean mCancelled = new AtomicBoolean();
    private final AtomicBoolean mTaskInvoked = new AtomicBoolean();

    public static class AsyncTaskResult<Data> {
        public final Data[] mData;
        public final PriorityAsyncTask mTask;

        public AsyncTaskResult(PriorityAsyncTask priorityAsyncTask, Data... dataArr) {
            this.mTask = priorityAsyncTask;
            this.mData = dataArr;
        }
    }

    public static class InternalHandler extends Handler {
        private InternalHandler() {
            super(Looper.getMainLooper());
        }

        public /* synthetic */ InternalHandler(InternalHandler internalHandler) {
            this();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            int i = message.what;
            if (i == 1) {
                asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
            } else {
                if (i != 2) {
                    return;
                }
                asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
            }
        }
    }

    public static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        public Params[] mParams;

        private WorkerRunnable() {
        }

        public /* synthetic */ WorkerRunnable(WorkerRunnable workerRunnable) {
            this();
        }
    }

    public PriorityAsyncTask() {
        WorkerRunnable<Params, Result> workerRunnable = new WorkerRunnable<Params, Result>() { // from class: com.lidroid.xutils.task.PriorityAsyncTask.1
            @Override // java.util.concurrent.Callable
            public Result call() throws Exception {
                PriorityAsyncTask.this.mTaskInvoked.set(true);
                Process.setThreadPriority(10);
                PriorityAsyncTask priorityAsyncTask = PriorityAsyncTask.this;
                return (Result) priorityAsyncTask.postResult(priorityAsyncTask.doInBackground(this.mParams));
            }
        };
        this.mWorker = workerRunnable;
        this.mFuture = new FutureTask<Result>(workerRunnable) { // from class: com.lidroid.xutils.task.PriorityAsyncTask.2
            @Override // java.util.concurrent.FutureTask
            public void done() {
                try {
                    PriorityAsyncTask.this.postResultIfNotInvoked(get());
                } catch (InterruptedException e) {
                    LogUtils.d(e.getMessage());
                } catch (CancellationException unused) {
                    PriorityAsyncTask.this.postResultIfNotInvoked(null);
                } catch (ExecutionException e2) {
                    throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
                }
            }
        };
    }

    public static void execute(Runnable runnable) {
        execute(runnable, Priority.DEFAULT);
    }

    public static void execute(Runnable runnable, Priority priority) {
        sDefaultExecutor.execute(new PriorityRunnable(priority, runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Result postResult(Result result) {
        sHandler.obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postResultIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(result);
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void cancel() {
        cancel(true);
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    public abstract Result doInBackground(Params... paramsArr);

    public final PriorityAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    public final PriorityAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.mExecuteInvoked) {
            throw new IllegalStateException("Cannot execute task: the task is already executed.");
        }
        this.mExecuteInvoked = true;
        onPreExecute();
        this.mWorker.mParams = paramsArr;
        executor.execute(new PriorityRunnable(this.priority, this.mFuture));
        return this;
    }

    public final Result get() throws ExecutionException, InterruptedException {
        return this.mFuture.get();
    }

    public final Result get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.mFuture.get(j, timeUnit);
    }

    public Priority getPriority() {
        return this.priority;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean isPaused() {
        return false;
    }

    public void onCancelled() {
    }

    public void onCancelled(Result result) {
        onCancelled();
    }

    public void onPostExecute(Result result) {
    }

    public void onPreExecute() {
    }

    public void onProgressUpdate(Progress... progressArr) {
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void pause() {
    }

    public final void publishProgress(Progress... progressArr) {
        if (isCancelled()) {
            return;
        }
        sHandler.obtainMessage(2, new AsyncTaskResult(this, progressArr)).sendToTarget();
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public void resume() {
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportCancel() {
        return true;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportPause() {
        return false;
    }

    @Override // com.lidroid.xutils.task.TaskHandler
    public boolean supportResume() {
        return false;
    }
}
