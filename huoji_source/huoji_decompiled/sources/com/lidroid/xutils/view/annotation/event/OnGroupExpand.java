package com.lidroid.xutils.view.annotation.event;

import android.widget.ExpandableListView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnGroupExpandListener", listenerType = ExpandableListView.OnGroupExpandListener.class, methodName = "onGroupExpand")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnGroupExpand {
    int[] parentId() default {0};

    int[] value();
}
