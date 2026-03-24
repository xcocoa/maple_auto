package com.lidroid.xutils.bitmap.callback;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BitmapLoadCallBack<T extends View> {
    private BitmapSetter<T> bitmapSetter;

    public Drawable getDrawable(T t) {
        BitmapSetter<T> bitmapSetter = this.bitmapSetter;
        return bitmapSetter != null ? bitmapSetter.getDrawable(t) : t instanceof ImageView ? ((ImageView) t).getDrawable() : t.getBackground();
    }

    public abstract void onLoadCompleted(T t, String str, Bitmap bitmap, BitmapDisplayConfig bitmapDisplayConfig, BitmapLoadFrom bitmapLoadFrom);

    public abstract void onLoadFailed(T t, String str, Drawable drawable);

    public void onLoadStarted(T t, String str, BitmapDisplayConfig bitmapDisplayConfig) {
    }

    public void onLoading(T t, String str, BitmapDisplayConfig bitmapDisplayConfig, long j, long j2) {
    }

    public void onPreLoad(T t, String str, BitmapDisplayConfig bitmapDisplayConfig) {
    }

    public void setBitmap(T t, Bitmap bitmap) {
        BitmapSetter<T> bitmapSetter = this.bitmapSetter;
        if (bitmapSetter != null) {
            bitmapSetter.setBitmap(t, bitmap);
        } else if (t instanceof ImageView) {
            ((ImageView) t).setImageBitmap(bitmap);
        } else {
            t.setBackgroundDrawable(new BitmapDrawable(t.getResources(), bitmap));
        }
    }

    public void setBitmapSetter(BitmapSetter<T> bitmapSetter) {
        this.bitmapSetter = bitmapSetter;
    }

    public void setDrawable(T t, Drawable drawable) {
        BitmapSetter<T> bitmapSetter = this.bitmapSetter;
        if (bitmapSetter != null) {
            bitmapSetter.setDrawable(t, drawable);
        } else if (t instanceof ImageView) {
            ((ImageView) t).setImageDrawable(drawable);
        } else {
            t.setBackgroundDrawable(drawable);
        }
    }
}
