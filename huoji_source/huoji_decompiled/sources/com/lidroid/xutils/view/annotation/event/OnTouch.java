package com.lidroid.xutils.view.annotation.event;

import android.view.View;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnTouchListener", listenerType = View.OnTouchListener.class, methodName = "onTouch")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnTouch {
    int[] parentId() default {0};

    int[] value();
}
