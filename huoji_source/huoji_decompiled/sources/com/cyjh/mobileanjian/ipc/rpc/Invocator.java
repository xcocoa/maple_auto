package com.cyjh.mobileanjian.ipc.rpc;

import com.cyjh.mobileanjian.ipc.utils.r;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import z2.sf;

/* JADX INFO: loaded from: classes.dex */
public class Invocator {
    public static final String TAG = "Invocator";

    public static int invoke(String str, String str2, String str3, List<String> list, List<String> list2) {
        StringBuilder sb = new StringBuilder("want method: ");
        sb.append(str);
        sb.append(".");
        sb.append(str2);
        sb.append(".");
        sb.append(str3);
        new StringBuilder("types: ").append(list);
        new StringBuilder("value: ").append(list2);
        if (list == null && list2 != null) {
            return 6;
        }
        if (list != null && list2 == null) {
            return 6;
        }
        if (list != null && list2 != null && list.size() != list2.size()) {
            return 6;
        }
        Class<?>[] clsArr = null;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int size = list.size();
                    Class<?>[] clsArr2 = new Class[size];
                    for (int i = 0; i < size; i++) {
                        clsArr2[i] = sf.OooOO0.OooO0O0(list.get(i));
                    }
                    clsArr = clsArr2;
                }
            } catch (ClassNotFoundException unused) {
                return 1;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return 3;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return 4;
            } catch (NoSuchMethodException unused2) {
                return 2;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return 5;
            }
        }
        Class<?> cls = Class.forName(str + "." + str2);
        Method declaredMethod = cls.getDeclaredMethod(str3, clsArr);
        new StringBuilder("Get method: ").append(declaredMethod);
        Object[] objArrOooO0OO = r.OooO0OO(list, list2);
        if (clsArr != null && objArrOooO0OO == null) {
            return 7;
        }
        declaredMethod.invoke(cls, objArrOooO0OO);
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object invoke(String str, String str2, String str3, List<String> list, List<String> list2, int i) {
        Class<?>[] clsArr;
        StringBuilder sb = new StringBuilder("want method: ");
        sb.append(str);
        sb.append(".");
        sb.append(str2);
        sb.append(".");
        sb.append(str3);
        new StringBuilder("types: ").append(list);
        new StringBuilder("value: ").append(list2);
        if ((list == null && list2 != null) || ((list != null && list2 == null) || (list != null && list2 != null && list.size() != list2.size()))) {
            return null;
        }
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int size = list.size();
                    clsArr = new Class[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        clsArr[i2] = sf.OooOO0.OooO0O0(list.get(i2));
                    }
                } else {
                    clsArr = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
                return null;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return null;
            }
        }
        Class<?> cls = Class.forName(str + "." + str2);
        Method declaredMethod = cls.getDeclaredMethod(str3, clsArr);
        new StringBuilder("Get method: ").append(declaredMethod);
        Object[] objArrOooO0OO = r.OooO0OO(list, list2);
        if (clsArr != null && objArrOooO0OO == null) {
            return null;
        }
        Object objInvoke = declaredMethod.invoke(cls, objArrOooO0OO);
        new StringBuilder("result: ").append(objInvoke);
        return objInvoke;
    }

    public static boolean isListEmpty(List list) {
        return list == null || list.size() == 0;
    }
}
