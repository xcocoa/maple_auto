package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import z2.l1;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class BaseTarget<Z> implements Target<Z> {
    private l1 request;

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public l1 getRequest() {
        return this.request;
    }

    @Override // z2.p0
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // z2.p0
    public void onStart() {
    }

    @Override // z2.p0
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void setRequest(@Nullable l1 l1Var) {
        this.request = l1Var;
    }
}
