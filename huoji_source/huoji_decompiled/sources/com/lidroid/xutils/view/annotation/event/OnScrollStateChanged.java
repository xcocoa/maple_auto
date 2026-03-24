package com.lidroid.xutils.view.annotation.event;

import android.widget.AbsListView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnScrollListener", listenerType = AbsListView.OnScrollListener.class, methodName = "onScrollStateChanged")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnScrollStateChanged {
    int[] parentId() default {0};

    int[] value();
}
