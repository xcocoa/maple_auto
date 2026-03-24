package com.lidroid.xutils.view.annotation.event;

import android.widget.SeekBar;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnSeekBarChangeListener", listenerType = SeekBar.OnSeekBarChangeListener.class, methodName = "onProgressChanged")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnProgressChanged {
    int[] parentId() default {0};

    int[] value();
}
