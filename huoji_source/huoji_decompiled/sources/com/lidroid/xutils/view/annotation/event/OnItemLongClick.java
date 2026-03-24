package com.lidroid.xutils.view.annotation.event;

import android.widget.AdapterView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnItemLongClickListener", listenerType = AdapterView.OnItemLongClickListener.class, methodName = "onItemLongClick")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnItemLongClick {
    int[] parentId() default {0};

    int[] value();
}
