package com.lidroid.xutils;

import android.app.Activity;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.View;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.view.EventListenerManager;
import com.lidroid.xutils.view.ResLoader;
import com.lidroid.xutils.view.ViewFinder;
import com.lidroid.xutils.view.ViewInjectInfo;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.PreferenceInject;
import com.lidroid.xutils.view.annotation.ResInject;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.EventBase;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class ViewUtils {
    private ViewUtils() {
    }

    public static void inject(Activity activity) {
        injectObject(activity, new ViewFinder(activity));
    }

    public static void inject(PreferenceActivity preferenceActivity) {
        injectObject(preferenceActivity, new ViewFinder(preferenceActivity));
    }

    public static void inject(View view) {
        injectObject(view, new ViewFinder(view));
    }

    public static void inject(Object obj, Activity activity) {
        injectObject(obj, new ViewFinder(activity));
    }

    public static void inject(Object obj, PreferenceActivity preferenceActivity) {
        injectObject(obj, new ViewFinder(preferenceActivity));
    }

    public static void inject(Object obj, PreferenceGroup preferenceGroup) {
        injectObject(obj, new ViewFinder(preferenceGroup));
    }

    public static void inject(Object obj, View view) {
        injectObject(obj, new ViewFinder(view));
    }

    private static void injectObject(Object obj, ViewFinder viewFinder) {
        Method[] methodArr;
        Method declaredMethod;
        Preference preferenceFindPreference;
        Class<?> cls = obj.getClass();
        ContentView contentView = (ContentView) cls.getAnnotation(ContentView.class);
        boolean z = true;
        int i = 0;
        if (contentView != null) {
            try {
                cls.getMethod("setContentView", Integer.TYPE).invoke(obj, Integer.valueOf(contentView.value()));
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
            }
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                ViewInject viewInject = (ViewInject) field.getAnnotation(ViewInject.class);
                if (viewInject != null) {
                    try {
                        View viewFindViewById = viewFinder.findViewById(viewInject.value(), viewInject.parentId());
                        if (viewFindViewById != null) {
                            field.setAccessible(true);
                            field.set(obj, viewFindViewById);
                        }
                    } catch (Throwable th2) {
                        LogUtils.e(th2.getMessage(), th2);
                    }
                } else {
                    ResInject resInject = (ResInject) field.getAnnotation(ResInject.class);
                    if (resInject != null) {
                        Object objLoadRes = ResLoader.loadRes(resInject.type(), viewFinder.getContext(), resInject.id());
                        if (objLoadRes != null) {
                            field.setAccessible(true);
                            field.set(obj, objLoadRes);
                        }
                    } else {
                        PreferenceInject preferenceInject = (PreferenceInject) field.getAnnotation(PreferenceInject.class);
                        if (preferenceInject != null && (preferenceFindPreference = viewFinder.findPreference(preferenceInject.value())) != null) {
                            field.setAccessible(true);
                            field.set(obj, preferenceFindPreference);
                        }
                    }
                }
            }
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (declaredMethods == null || declaredMethods.length <= 0) {
            return;
        }
        int length = declaredMethods.length;
        int i2 = 0;
        while (i2 < length) {
            Method method = declaredMethods[i2];
            Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
            if (declaredAnnotations != null && declaredAnnotations.length > 0) {
                int length2 = declaredAnnotations.length;
                int i3 = 0;
                while (i3 < length2) {
                    Annotation annotation = declaredAnnotations[i3];
                    Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
                    if (clsAnnotationType.getAnnotation(EventBase.class) != null) {
                        method.setAccessible(z);
                        try {
                            Method declaredMethod2 = clsAnnotationType.getDeclaredMethod("value", new Class[i]);
                            Object objInvoke = null;
                            try {
                                declaredMethod = clsAnnotationType.getDeclaredMethod("parentId", new Class[i]);
                            } catch (Throwable unused) {
                                declaredMethod = null;
                            }
                            Object objInvoke2 = declaredMethod2.invoke(annotation, new Object[i]);
                            if (declaredMethod != null) {
                                objInvoke = declaredMethod.invoke(annotation, new Object[i]);
                            }
                            int length3 = objInvoke == null ? 0 : Array.getLength(objInvoke);
                            int length4 = Array.getLength(objInvoke2);
                            int i4 = 0;
                            while (i4 < length4) {
                                ViewInjectInfo viewInjectInfo = new ViewInjectInfo();
                                methodArr = declaredMethods;
                                try {
                                    viewInjectInfo.value = Array.get(objInvoke2, i4);
                                    viewInjectInfo.parentId = length3 > i4 ? ((Integer) Array.get(objInvoke, i4)).intValue() : 0;
                                    EventListenerManager.addEventMethod(viewFinder, viewInjectInfo, annotation, obj, method);
                                    i4++;
                                    declaredMethods = methodArr;
                                } catch (Throwable th3) {
                                    th = th3;
                                    LogUtils.e(th.getMessage(), th);
                                    i3++;
                                    declaredMethods = methodArr;
                                    z = true;
                                    i = 0;
                                }
                            }
                            methodArr = declaredMethods;
                        } catch (Throwable th4) {
                            th = th4;
                            methodArr = declaredMethods;
                        }
                    } else {
                        methodArr = declaredMethods;
                    }
                    i3++;
                    declaredMethods = methodArr;
                    z = true;
                    i = 0;
                }
            }
            i2++;
            declaredMethods = declaredMethods;
            z = true;
            i = 0;
        }
    }
}
