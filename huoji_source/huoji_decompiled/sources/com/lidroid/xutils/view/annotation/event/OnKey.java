package com.lidroid.xutils.view.annotation.event;

import android.view.View;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnKeyListener", listenerType = View.OnKeyListener.class, methodName = "onKey")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnKey {
    int[] parentId() default {0};

    int[] value();
}
