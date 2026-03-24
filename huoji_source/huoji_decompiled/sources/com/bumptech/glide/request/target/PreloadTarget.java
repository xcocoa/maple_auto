package com.bumptech.glide.request.target;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import z2.o0;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public final class PreloadTarget<Z> extends SimpleTarget<Z> {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.request.target.PreloadTarget.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((PreloadTarget) message.obj).clear();
            return true;
        }
    });
    private static final int MESSAGE_CLEAR = 1;
    private final o0 requestManager;

    private PreloadTarget(o0 o0Var, int i, int i2) {
        super(i, i2);
        this.requestManager = o0Var;
    }

    public static <Z> PreloadTarget<Z> obtain(o0 o0Var, int i, int i2) {
        return new PreloadTarget<>(o0Var, i, i2);
    }

    public void clear() {
        this.requestManager.OooOOo(this);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onResourceReady(@NonNull Z z, @Nullable x1<? super Z> x1Var) {
        HANDLER.obtainMessage(1, this).sendToTarget();
    }
}
