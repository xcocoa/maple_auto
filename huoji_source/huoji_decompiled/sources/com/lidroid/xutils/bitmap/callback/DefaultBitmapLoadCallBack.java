package com.lidroid.xutils.bitmap.callback;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultBitmapLoadCallBack<T extends View> extends BitmapLoadCallBack<T> {
    private void animationDisplay(T t, Animation animation) {
        try {
            Method declaredMethod = Animation.class.getDeclaredMethod("clone", new Class[0]);
            declaredMethod.setAccessible(true);
            t.startAnimation((Animation) declaredMethod.invoke(animation, new Object[0]));
        } catch (Throwable unused) {
            t.startAnimation(animation);
        }
    }

    @Override // com.lidroid.xutils.bitmap.callback.BitmapLoadCallBack
    public void onLoadCompleted(T t, String str, Bitmap bitmap, BitmapDisplayConfig bitmapDisplayConfig, BitmapLoadFrom bitmapLoadFrom) {
        setBitmap(t, bitmap);
        Animation animation = bitmapDisplayConfig.getAnimation();
        if (animation != null) {
            animationDisplay(t, animation);
        }
    }

    @Override // com.lidroid.xutils.bitmap.callback.BitmapLoadCallBack
    public void onLoadFailed(T t, String str, Drawable drawable) {
        setDrawable(t, drawable);
    }
}
