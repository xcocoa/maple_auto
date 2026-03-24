package com.lidroid.xutils.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.task.Priority;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapDisplayConfig {
    private Animation animation;
    private BitmapFactory bitmapFactory;
    private BitmapSize bitmapMaxSize;
    private Drawable loadFailedDrawable;
    private Drawable loadingDrawable;
    private Priority priority;
    private boolean autoRotation = false;
    private boolean showOriginal = false;
    private Bitmap.Config bitmapConfig = Bitmap.Config.RGB_565;

    public BitmapDisplayConfig cloneNew() {
        BitmapDisplayConfig bitmapDisplayConfig = new BitmapDisplayConfig();
        bitmapDisplayConfig.bitmapMaxSize = this.bitmapMaxSize;
        bitmapDisplayConfig.animation = this.animation;
        bitmapDisplayConfig.loadingDrawable = this.loadingDrawable;
        bitmapDisplayConfig.loadFailedDrawable = this.loadFailedDrawable;
        bitmapDisplayConfig.autoRotation = this.autoRotation;
        bitmapDisplayConfig.showOriginal = this.showOriginal;
        bitmapDisplayConfig.bitmapConfig = this.bitmapConfig;
        bitmapDisplayConfig.bitmapFactory = this.bitmapFactory;
        bitmapDisplayConfig.priority = this.priority;
        return bitmapDisplayConfig;
    }

    public Animation getAnimation() {
        return this.animation;
    }

    public Bitmap.Config getBitmapConfig() {
        return this.bitmapConfig;
    }

    public BitmapFactory getBitmapFactory() {
        return this.bitmapFactory;
    }

    public BitmapSize getBitmapMaxSize() {
        BitmapSize bitmapSize = this.bitmapMaxSize;
        return bitmapSize == null ? BitmapSize.ZERO : bitmapSize;
    }

    public Drawable getLoadFailedDrawable() {
        return this.loadFailedDrawable;
    }

    public Drawable getLoadingDrawable() {
        return this.loadingDrawable;
    }

    public Priority getPriority() {
        return this.priority;
    }

    public boolean isAutoRotation() {
        return this.autoRotation;
    }

    public boolean isShowOriginal() {
        return this.showOriginal;
    }

    public void setAnimation(Animation animation) {
        this.animation = animation;
    }

    public void setAutoRotation(boolean z) {
        this.autoRotation = z;
    }

    public void setBitmapConfig(Bitmap.Config config) {
        this.bitmapConfig = config;
    }

    public void setBitmapFactory(BitmapFactory bitmapFactory) {
        this.bitmapFactory = bitmapFactory;
    }

    public void setBitmapMaxSize(BitmapSize bitmapSize) {
        this.bitmapMaxSize = bitmapSize;
    }

    public void setLoadFailedDrawable(Drawable drawable) {
        this.loadFailedDrawable = drawable;
    }

    public void setLoadingDrawable(Drawable drawable) {
        this.loadingDrawable = drawable;
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }

    public void setShowOriginal(boolean z) {
        this.showOriginal = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(String.valueOf(isShowOriginal() ? "" : this.bitmapMaxSize.toString()));
        BitmapFactory bitmapFactory = this.bitmapFactory;
        sb.append(bitmapFactory != null ? bitmapFactory.getClass().getName() : "");
        return sb.toString();
    }
}
