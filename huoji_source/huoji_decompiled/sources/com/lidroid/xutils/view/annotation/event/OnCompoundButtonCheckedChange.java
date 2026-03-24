package com.lidroid.xutils.view.annotation.event;

import android.widget.CompoundButton;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnCheckedChangeListener", listenerType = CompoundButton.OnCheckedChangeListener.class, methodName = "onCheckedChanged")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnCompoundButtonCheckedChange {
    int[] parentId() default {0};

    int[] value();
}
