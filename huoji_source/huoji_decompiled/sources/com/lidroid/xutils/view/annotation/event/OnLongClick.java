package com.lidroid.xutils.view.annotation.event;

import android.view.View;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnLongClickListener", listenerType = View.OnLongClickListener.class, methodName = "onLongClick")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnLongClick {
    int[] parentId() default {0};

    int[] value();
}
