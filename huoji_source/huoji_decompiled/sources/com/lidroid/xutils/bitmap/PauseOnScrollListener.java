package com.lidroid.xutils.bitmap;

import android.widget.AbsListView;
import com.lidroid.xutils.task.TaskHandler;

/* JADX INFO: loaded from: classes2.dex */
public class PauseOnScrollListener implements AbsListView.OnScrollListener {
    private final AbsListView.OnScrollListener externalListener;
    private final boolean pauseOnFling;
    private final boolean pauseOnScroll;
    private TaskHandler taskHandler;

    public PauseOnScrollListener(TaskHandler taskHandler, boolean z, boolean z3) {
        this(taskHandler, z, z3, null);
    }

    public PauseOnScrollListener(TaskHandler taskHandler, boolean z, boolean z3, AbsListView.OnScrollListener onScrollListener) {
        this.taskHandler = taskHandler;
        this.pauseOnScroll = z;
        this.pauseOnFling = z3;
        this.externalListener = onScrollListener;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AbsListView.OnScrollListener onScrollListener = this.externalListener;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i, i2, i3);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0) {
            this.taskHandler.resume();
        } else if (i == 1 ? this.pauseOnScroll : !(i != 2 || !this.pauseOnFling)) {
            this.taskHandler.pause();
        }
        AbsListView.OnScrollListener onScrollListener = this.externalListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i);
        }
    }
}
