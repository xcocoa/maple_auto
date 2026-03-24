package com.lidroid.xutils.bitmap.callback;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface BitmapSetter<T extends View> {
    Drawable getDrawable(T t);

    void setBitmap(T t, Bitmap bitmap);

    void setDrawable(T t, Drawable drawable);
}
