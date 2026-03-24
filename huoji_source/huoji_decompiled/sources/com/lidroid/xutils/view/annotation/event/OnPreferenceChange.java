package com.lidroid.xutils.view.annotation.event;

import android.preference.Preference;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Target({ElementType.METHOD})
@EventBase(listenerSetter = "setOnPreferenceChangeListener", listenerType = Preference.OnPreferenceChangeListener.class, methodName = "onPreferenceChange")
@Retention(RetentionPolicy.RUNTIME)
public @interface OnPreferenceChange {
    String[] value();
}
