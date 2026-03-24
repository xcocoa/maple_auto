package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import z2.l1;
import z2.p0;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public interface Target<R> extends p0 {
    public static final int SIZE_ORIGINAL = Integer.MIN_VALUE;

    @Nullable
    l1 getRequest();

    void getSize(@NonNull SizeReadyCallback sizeReadyCallback);

    void onLoadCleared(@Nullable Drawable drawable);

    void onLoadFailed(@Nullable Drawable drawable);

    void onLoadStarted(@Nullable Drawable drawable);

    void onResourceReady(@NonNull R r, @Nullable x1<? super R> x1Var);

    void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback);

    void setRequest(@Nullable l1 l1Var);
}
