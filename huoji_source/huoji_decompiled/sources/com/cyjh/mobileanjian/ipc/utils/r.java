package com.cyjh.mobileanjian.ipc.utils;

import java.util.HashMap;
import java.util.List;
import z2.sf;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    public static final HashMap<String, Class> OooO00o = new HashMap<String, Class>() { // from class: com.cyjh.mobileanjian.ipc.utils.r.1
        {
            put("boolean", Boolean.TYPE);
            put("int", Integer.TYPE);
            put("long", Long.TYPE);
            put("String", String.class);
        }
    };

    private static Object OooO00o(Class cls, String str) {
        try {
            switch (sf.OooOO0.OooO0OO.get(cls).intValue()) {
                case 2:
                    break;
                case 3:
                    Byte.parseByte(str);
                    break;
                case 7:
                    Double.parseDouble(str);
                    break;
                case 9:
                    if (str == null) {
                        str = "";
                    }
                    break;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    private static Object OooO0O0(String str, String str2) {
        switch (sf.OooOO0.OooO0O0.get(str).intValue()) {
            case 1:
                return Boolean.valueOf(Boolean.parseBoolean(str2));
            case 2:
                if (str2.length() > 0) {
                    return Character.valueOf(str2.charAt(0));
                }
                break;
            case 3:
                Byte.parseByte(str2);
                break;
            case 4:
                return Integer.valueOf(Integer.parseInt(str2));
            case 5:
                return Long.valueOf(Long.parseLong(str2));
            case 6:
                return Float.valueOf(Float.parseFloat(str2));
            case 7:
                Double.parseDouble(str2);
                break;
            case 9:
                return str2;
        }
        return null;
    }

    public static Object[] OooO0OO(List<String> list, List<String> list2) {
        if (list == null || list.size() == 0) {
            return null;
        }
        int size = list.size();
        Object[] objArr = new Object[size];
        for (int i = 0; i < size; i++) {
            Object objOooO0O0 = OooO0O0(list.get(i), list2.get(i));
            objArr[i] = objOooO0O0;
            if (objOooO0O0 == null) {
                return null;
            }
        }
        return objArr;
    }

    private static Object[] OooO0Oo(Class[] clsArr, String[] strArr) {
        if (clsArr == null || clsArr.length == 0) {
            return null;
        }
        Object[] objArr = new Object[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            Object objOooO00o = OooO00o(clsArr[i], strArr[i]);
            objArr[i] = objOooO00o;
            if (objOooO00o == null) {
                return null;
            }
        }
        return objArr;
    }

    private static Object[] OooO0o0(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        Object[] objArr = new Object[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            Object objOooO0O0 = OooO0O0(strArr[i], strArr2[i]);
            objArr[i] = objOooO0O0;
            if (objOooO0O0 == null) {
                return null;
            }
        }
        return objArr;
    }
}
