package com.lidroid.xutils.view.annotation.event;

import android.widget.AdapterView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnItemSelectedListener", listenerType = AdapterView.OnItemSelectedListener.class, methodName = "onItemSelected")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnItemSelected {
    int[] parentId() default {0};

    int[] value();
}
