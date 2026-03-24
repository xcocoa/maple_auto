package com.lidroid.xutils.view;

import android.view.View;
import com.lidroid.xutils.util.DoubleKeyValueMap;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.view.annotation.event.EventBase;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class EventListenerManager {
    private static final DoubleKeyValueMap<ViewInjectInfo, Class<?>, Object> listenerCache = new DoubleKeyValueMap<>();

    public static class DynamicHandler implements InvocationHandler {
        private WeakReference<Object> handlerRef;
        private final HashMap<String, Method> methodMap = new HashMap<>(1);

        public DynamicHandler(Object obj) {
            this.handlerRef = new WeakReference<>(obj);
        }

        public void addMethod(String str, Method method) {
            this.methodMap.put(str, method);
        }

        public Object getHandler() {
            return this.handlerRef.get();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2 = this.handlerRef.get();
            if (obj2 == null) {
                return null;
            }
            Method method2 = this.methodMap.get(method.getName());
            if (method2 != null) {
                return method2.invoke(obj2, objArr);
            }
            return null;
        }

        public void setHandler(Object obj) {
            this.handlerRef = new WeakReference<>(obj);
        }
    }

    private EventListenerManager() {
    }

    public static void addEventMethod(ViewFinder viewFinder, ViewInjectInfo viewInjectInfo, Annotation annotation, Object obj, Method method) {
        boolean zEquals;
        try {
            View viewFindViewByInfo = viewFinder.findViewByInfo(viewInjectInfo);
            if (viewFindViewByInfo != null) {
                EventBase eventBase = (EventBase) annotation.annotationType().getAnnotation(EventBase.class);
                Class<?> clsListenerType = eventBase.listenerType();
                String strListenerSetter = eventBase.listenerSetter();
                String strMethodName = eventBase.methodName();
                DoubleKeyValueMap<ViewInjectInfo, Class<?>, Object> doubleKeyValueMap = listenerCache;
                Object objNewProxyInstance = doubleKeyValueMap.get(viewInjectInfo, clsListenerType);
                if (objNewProxyInstance != null) {
                    DynamicHandler dynamicHandler = (DynamicHandler) Proxy.getInvocationHandler(objNewProxyInstance);
                    zEquals = obj.equals(dynamicHandler.getHandler());
                    if (zEquals) {
                        dynamicHandler.addMethod(strMethodName, method);
                    }
                } else {
                    zEquals = false;
                }
                if (!zEquals) {
                    DynamicHandler dynamicHandler2 = new DynamicHandler(obj);
                    dynamicHandler2.addMethod(strMethodName, method);
                    objNewProxyInstance = Proxy.newProxyInstance(clsListenerType.getClassLoader(), new Class[]{clsListenerType}, dynamicHandler2);
                    doubleKeyValueMap.put(viewInjectInfo, clsListenerType, objNewProxyInstance);
                }
                viewFindViewByInfo.getClass().getMethod(strListenerSetter, clsListenerType).invoke(viewFindViewByInfo, objNewProxyInstance);
            }
        } catch (Throwable th) {
            LogUtils.e(th.getMessage(), th);
        }
    }
}
