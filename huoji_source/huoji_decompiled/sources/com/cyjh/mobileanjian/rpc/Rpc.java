package com.cyjh.mobileanjian.rpc;

import com.cyjh.mobileanjian.ipc.rpc.Invocator;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mobileanjian.ipc.utils.m;
import java.util.ArrayList;
import java.util.List;
import z2.ff;
import z2.uf;

/* JADX INFO: loaded from: classes2.dex */
public class Rpc {

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Ipc.FundType.values().length];
            OooO00o = iArr;
            try {
                iArr[Ipc.FundType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Ipc.FundType.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Ipc.FundType.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Ipc.FundType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[Ipc.FundType.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[Ipc.FundType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static boolean AsynCall(String str, String str2, String str3, String[] strArr, String[] strArr2) {
        if (uf.OooO00o(str) || uf.OooO00o(str2) || uf.OooO00o(str3) || checkArgs(strArr, strArr2) == -1) {
            return false;
        }
        new StringBuilder("retObj = ").append(Invocator.invoke(str, str2, str3, arrayToList(strArr), arrayToList(strArr2), 0));
        StringBuilder sb = new StringBuilder("已经调用了AsynCall ");
        sb.append(str);
        sb.append(".");
        sb.append(str3);
        return true;
    }

    public static int SimpleCallReturnInt(String str, String str2, String str3) {
        return ((Integer) SynCall(str, str2, str3, null, null, "int")).intValue();
    }

    public static String SimpleCallReturnString(String str, String str2, String str3) {
        return (String) SynCall(str, str2, str3, null, null, "String");
    }

    public static boolean SimpleCallStringParam(boolean z, String str, String str2, String str3, String str4) {
        return z ? SynCall(str, str2, str3, new String[]{"String"}, new String[]{str4}) : AsynCall(str, str2, str3, new String[]{"String"}, new String[]{str4});
    }

    public static boolean SimpleCallStringStringParam(boolean z, String str, String str2, String str3, String str4, String str5) {
        return z ? SynCall(str, str2, str3, new String[]{"String", "String"}, new String[]{str4, str5}) : AsynCall(str, str2, str3, new String[]{"String", "String"}, new String[]{str4, str5});
    }

    public static String SimpleCallStringStringParamReturnString(String str, String str2, String str3, String str4, String str5) {
        String[] strArr;
        String[] strArr2;
        if (str4 == null) {
            return "Use SimpleCallReturnString instead.";
        }
        if (str5 == null) {
            strArr2 = new String[]{String.class.getSimpleName()};
            strArr = new String[]{str4};
        } else {
            strArr = new String[]{str4, str5};
            strArr2 = new String[]{String.class.getSimpleName(), String.class.getSimpleName()};
        }
        return (String) SynCall(str, str2, str3, strArr2, strArr, "String");
    }

    public static Object SynCall(String str, String str2, String str3, String[] strArr, String[] strArr2, String str4) {
        int iCheckArgs;
        List<String> list;
        List<String> listArrayToList;
        Boolean bool = Boolean.FALSE;
        if (uf.OooO00o(str) || uf.OooO00o(str2) || uf.OooO00o(str3) || (iCheckArgs = checkArgs(strArr, strArr2)) == -1 || m.OooO00o(str4) == null) {
            return bool;
        }
        if (iCheckArgs == 0) {
            List<String> listArrayToList2 = arrayToList(strArr);
            listArrayToList = arrayToList(strArr2);
            list = listArrayToList2;
        } else {
            list = null;
            listArrayToList = null;
        }
        Object objInvoke = Invocator.invoke(str, str2, str3, list, listArrayToList, 0);
        new StringBuilder("retObj = ").append(objInvoke);
        try {
            switch (OooO00o.OooO00o[m.OooO00o(str4).ordinal()]) {
                case 1:
                    return (Boolean) objInvoke;
                case 2:
                    return (Integer) objInvoke;
                case 3:
                    return (Long) objInvoke;
                case 4:
                    return (Float) objInvoke;
                case 5:
                    return (Double) objInvoke;
                case 6:
                    return objInvoke == null ? "" : (String) objInvoke;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return Boolean.TRUE;
    }

    public static boolean SynCall(String str, String str2, String str3, String[] strArr, String[] strArr2) {
        SynCall(str, str2, str3, strArr, strArr2, "void");
        return true;
    }

    private static List<String> arrayToList(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private static int checkArgs(String[] strArr, String[] strArr2) {
        if (ff.OooO00o(strArr) && ff.OooO00o(strArr2)) {
            return 1;
        }
        return (ff.OooO00o(strArr) || ff.OooO00o(strArr2) || ff.OooO0O0(strArr) || ff.OooO0O0(strArr2) || strArr.length != strArr2.length) ? -1 : 0;
    }
}
