package com.lidroid.xutils.view.annotation.event;

import android.widget.TabHost;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnTabChangeListener", listenerType = TabHost.OnTabChangeListener.class, methodName = "onTabChange")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnTabChange {
    int[] parentId() default {0};

    int[] value();
}
