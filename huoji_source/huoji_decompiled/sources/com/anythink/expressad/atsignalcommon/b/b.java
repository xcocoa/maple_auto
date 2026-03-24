package com.anythink.expressad.atsignalcommon.b;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes.dex */
public class b {

    public interface a {
    }

    /* JADX INFO: renamed from: com.anythink.expressad.atsignalcommon.b.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0102b<T> implements InvocationHandler {
        private T a;

        private T a() {
            return this.a;
        }

        public final void a(T t) {
            this.a = t;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return method.invoke(this.a, objArr);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                throw e3.getTargetException();
            }
        }
    }

    private b() {
    }

    public static <T> T a(Object obj, AbstractC0102b<T> abstractC0102b, Class<?>... clsArr) {
        abstractC0102b.a(obj);
        return (T) Proxy.newProxyInstance(b.class.getClassLoader(), clsArr, abstractC0102b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T a(Object obj, Class<T> cls, AbstractC0102b<T> abstractC0102b) {
        if (obj instanceof a) {
            return obj;
        }
        abstractC0102b.a(obj);
        return (T) Proxy.newProxyInstance(b.class.getClassLoader(), new Class[]{cls, a.class}, abstractC0102b);
    }
}
