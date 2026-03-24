package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.basead.a.e;
import com.umeng.commonsdk.amap.b;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.a;
import com.umeng.commonsdk.statistics.c;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class UMConfigure {
    public static final int DEVICE_TYPE_BOX = 2;
    public static final int DEVICE_TYPE_PHONE = 1;
    private static final String KEY_FILE_NAME_APPKEY = "APPKEY";
    private static final String KEY_FILE_NAME_LOG = "LOG";
    private static final String KEY_METHOD_NAME_PUSH_SETCHANNEL = "setMessageChannel";
    private static final String KEY_METHOD_NAME_PUSH_SET_SECRET = "setSecret";
    private static final String KEY_METHOD_NAME_SETAPPKEY = "setAppkey";
    private static final String KEY_METHOD_NAME_SETCHANNEL = "setChannel";
    private static final String KEY_METHOD_NAME_SETDEBUGMODE = "setDebugMode";
    private static final String TAG = "UMConfigure";
    private static boolean debugLog;
    private static b readUMAmapTimer;
    private static b writeUMAmapTimer;

    private static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            if (debugLog) {
                Log.e(TAG, "getClass e is " + e.toString());
            }
            return null;
        }
    }

    private static Object getDecInstanceObject(Class<?> cls) {
        Constructor<?> declaredConstructor;
        String string;
        StringBuilder sb;
        String string2;
        if (cls == null) {
            return null;
        }
        try {
            declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        } catch (NoSuchMethodException e) {
            if (debugLog) {
                Log.e(TAG, "getDecInstanceObject e is " + e.toString());
            }
            declaredConstructor = null;
        }
        if (declaredConstructor != null) {
            declaredConstructor.setAccessible(true);
            try {
                return declaredConstructor.newInstance(new Object[0]);
            } catch (IllegalAccessException e2) {
                if (!debugLog) {
                    return null;
                }
                sb = new StringBuilder();
                sb.append("getDecInstanceObject e is ");
                string2 = e2.toString();
                sb.append(string2);
                string = sb.toString();
                Log.e(TAG, string);
                return null;
            } catch (IllegalArgumentException e3) {
                if (!debugLog) {
                    return null;
                }
                sb = new StringBuilder();
                sb.append("getDecInstanceObject e is ");
                string2 = e3.toString();
                sb.append(string2);
                string = sb.toString();
                Log.e(TAG, string);
                return null;
            } catch (InstantiationException e4) {
                if (!debugLog) {
                    return null;
                }
                sb = new StringBuilder();
                sb.append("getDecInstanceObject e is ");
                string2 = e4.toString();
                sb.append(string2);
                string = sb.toString();
                Log.e(TAG, string);
                return null;
            } catch (InvocationTargetException e5) {
                if (!debugLog) {
                    return null;
                }
                sb = new StringBuilder();
                sb.append("getDecInstanceObject e is ");
                string2 = e5.toString();
                sb.append(string2);
                string = sb.toString();
                Log.e(TAG, string);
                return null;
            }
        }
        if (!debugLog) {
            return null;
        }
        string = "getDecInstanceObject constructor is  null";
        Log.e(TAG, string);
        return null;
    }

    private static Method getDecMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        String str2;
        Method declaredMethod = null;
        if (cls != null) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                if (debugLog) {
                    Log.e(TAG, "getDecMethod e is " + e.toString());
                }
            }
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
            } else if (debugLog) {
                str2 = "getDecMethod met is null";
                Log.e(TAG, str2);
            }
        } else if (debugLog) {
            str2 = "getDecMethod className is null";
            Log.e(TAG, str2);
        }
        return declaredMethod;
    }

    private Object getInstanceObject(Class<?> cls) {
        StringBuilder sb;
        String string;
        String string2;
        if (cls != null) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                if (debugLog) {
                    sb = new StringBuilder();
                    sb.append("getInstanceObject e is ");
                    string = e.toString();
                    sb.append(string);
                    string2 = sb.toString();
                    Log.e(TAG, string2);
                }
            } catch (InstantiationException e2) {
                if (debugLog) {
                    sb = new StringBuilder();
                    sb.append("getInstanceObject e is ");
                    string = e2.toString();
                    sb.append(string);
                    string2 = sb.toString();
                    Log.e(TAG, string2);
                }
            }
        } else if (debugLog) {
            string2 = "getInstanceObject cla is null";
            Log.e(TAG, string2);
        }
        return null;
    }

    public static String getUMIDString(Context context) {
        if (context != null) {
            return UMUtils.getUMId(context.getApplicationContext());
        }
        return null;
    }

    public static void init(Context context, int i, String str) {
        init(context, null, null, i, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void init(Context context, String str, String str2, int i, String str3) {
        String str4;
        String str5;
        StringBuilder sb;
        String str6;
        Method declaredMethod;
        Method declaredMethod2;
        Method declaredMethod3;
        Method declaredMethod4;
        Method declaredMethod5;
        Method declaredMethod6;
        Object objInvoke;
        Method declaredMethod7;
        Method declaredMethod8;
        try {
            try {
                if (context == null) {
                    if (debugLog) {
                        Log.e(TAG, "context is null !!!");
                        return;
                    }
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                String appkeyByXML = TextUtils.isEmpty(str) ? UMUtils.getAppkeyByXML(applicationContext) : str;
                String channelByXML = TextUtils.isEmpty(str2) ? UMUtils.getChannelByXML(applicationContext) : str2;
                if (TextUtils.isEmpty(channelByXML)) {
                    channelByXML = "Unknown";
                }
                String str7 = channelByXML;
                UMUtils.setChannel(applicationContext, str7);
                if (debugLog) {
                    Log.i(TAG, "channel is " + str7);
                }
                saveSDKComponent();
                try {
                    Class<?> cls = Class.forName("com.umeng.message.PushAgent");
                    if (cls != null) {
                        Method declaredMethod9 = cls.getDeclaredMethod("getInstance", Context.class);
                        if (declaredMethod9 != null) {
                            str4 = "init e is ";
                            try {
                                try {
                                    Object objInvoke2 = declaredMethod9.invoke(cls, applicationContext);
                                    if (objInvoke2 != null && (declaredMethod8 = cls.getDeclaredMethod(KEY_METHOD_NAME_SETAPPKEY, String.class)) != null) {
                                        declaredMethod8.setAccessible(true);
                                        declaredMethod8.invoke(objInvoke2, appkeyByXML);
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    try {
                                        if (debugLog) {
                                            Log.e(TAG, "e is " + e);
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        str5 = str4;
                                        if (debugLog) {
                                            sb = new StringBuilder();
                                            sb.append(str5);
                                            sb.append(e);
                                            Log.e(TAG, sb.toString());
                                            return;
                                        }
                                        return;
                                    }
                                }
                            } catch (Throwable th) {
                                e = th;
                                if (debugLog) {
                                    sb = new StringBuilder();
                                    str5 = str4;
                                    sb.append(str5);
                                    sb.append(e);
                                    Log.e(TAG, sb.toString());
                                    return;
                                }
                                return;
                            }
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    str4 = "init e is ";
                }
                try {
                    Class<?> cls2 = Class.forName("com.umeng.message.PushAgent");
                    if (cls2 != null && (declaredMethod6 = cls2.getDeclaredMethod("getInstance", Context.class)) != null && (objInvoke = declaredMethod6.invoke(cls2, applicationContext)) != null && (declaredMethod7 = cls2.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SETCHANNEL, String.class)) != null) {
                        declaredMethod7.setAccessible(true);
                        declaredMethod7.invoke(objInvoke, str7);
                    }
                } catch (Exception e4) {
                    if (debugLog) {
                        Log.e(TAG, "e is " + e4);
                    }
                }
                try {
                    Class<?> cls3 = getClass("com.umeng.socialize.UMShareAPI");
                    setFile(cls3, KEY_FILE_NAME_APPKEY, appkeyByXML);
                    if (cls3 != null && (declaredMethod5 = cls3.getDeclaredMethod("init", Context.class, String.class)) != null) {
                        declaredMethod5.setAccessible(true);
                        declaredMethod5.invoke(cls3, applicationContext, appkeyByXML);
                    }
                } catch (Throwable th2) {
                    if (debugLog) {
                        Log.e(TAG, "e is " + th2);
                    }
                }
                if (TextUtils.isEmpty(appkeyByXML)) {
                    if (debugLog) {
                        Log.e(TAG, "appkey is null !!!");
                        return;
                    }
                    return;
                }
                UMUtils.setAppkey(applicationContext, appkeyByXML);
                String lastAppkey = UMUtils.getLastAppkey(applicationContext);
                if (!TextUtils.isEmpty(appkeyByXML) && !appkeyByXML.equals(lastAppkey)) {
                    if (!TextUtils.isEmpty(lastAppkey) && debugLog) {
                        Log.i(TAG, "appkey is change !!!");
                    }
                    UMUtils.setLastAppkey(applicationContext, appkeyByXML);
                }
                if (debugLog) {
                    Log.i(TAG, "current appkey is " + appkeyByXML + ", last appkey is " + lastAppkey);
                }
                com.umeng.commonsdk.statistics.b.a(i);
                if (!TextUtils.isEmpty(str3)) {
                    if (debugLog) {
                        Log.i(TAG, "push secret is " + str3);
                    }
                    try {
                        Class<?> cls4 = Class.forName("com.umeng.message.PushAgent");
                        if (cls4 != null && (declaredMethod = cls4.getDeclaredMethod("getInstance", Context.class)) != null) {
                            declaredMethod.setAccessible(true);
                            Object objInvoke3 = declaredMethod.invoke(cls4, applicationContext);
                            if (objInvoke3 != null && (declaredMethod2 = cls4.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SET_SECRET, String.class)) != null) {
                                declaredMethod2.setAccessible(true);
                                declaredMethod2.invoke(objInvoke3, str3);
                            }
                        }
                    } catch (Throwable th3) {
                        if (debugLog) {
                            str6 = "push secret e is " + th3;
                            Log.e(TAG, str6);
                        }
                    }
                } else if (debugLog) {
                    str6 = "push secret 非法 ！！！";
                    Log.e(TAG, str6);
                }
                try {
                    Class<?> cls5 = Class.forName("com.umeng.error.UMError");
                    if (cls5 != null && (declaredMethod4 = cls5.getDeclaredMethod("init", Context.class)) != null) {
                        declaredMethod4.setAccessible(true);
                        declaredMethod4.invoke(cls5, applicationContext);
                    }
                } catch (Throwable th4) {
                    if (debugLog) {
                        Log.e(TAG, "crash e is " + th4);
                    }
                }
                try {
                    Class<?> cls6 = Class.forName("com.umeng.commonsdk.UMConfigureImpl");
                    if (cls6 == null || (declaredMethod3 = cls6.getDeclaredMethod("init", Context.class)) == null) {
                        return;
                    }
                    declaredMethod3.setAccessible(true);
                    declaredMethod3.invoke(cls6, applicationContext);
                } catch (Throwable th5) {
                    if (debugLog) {
                        Log.e(TAG, "crash e is " + th5);
                    }
                }
            } catch (Exception e5) {
                e = e5;
                str5 = "init e is ";
            }
        } catch (Throwable th6) {
            e = th6;
            str4 = "init e is ";
        }
    }

    private static void invoke(Method method, Object obj, Object[] objArr) {
        StringBuilder sb;
        String string;
        if (method == null || obj == null) {
            return;
        }
        try {
            method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            if (debugLog) {
                sb = new StringBuilder();
                sb.append("invoke e is ");
                string = e.toString();
                sb.append(string);
                Log.e(TAG, sb.toString());
            }
        } catch (IllegalArgumentException e2) {
            if (debugLog) {
                sb = new StringBuilder();
                sb.append("invoke e is ");
                string = e2.toString();
                sb.append(string);
                Log.e(TAG, sb.toString());
            }
        } catch (InvocationTargetException e3) {
            if (debugLog) {
                sb = new StringBuilder();
                sb.append("invoke e is ");
                string = e3.toString();
                sb.append(string);
                Log.e(TAG, sb.toString());
            }
        }
    }

    private static void invoke(Method method, Object[] objArr) {
        StringBuilder sb;
        String string;
        if (method != null) {
            try {
                method.invoke(null, objArr);
            } catch (IllegalAccessException e) {
                if (debugLog) {
                    sb = new StringBuilder();
                    sb.append("invoke e is ");
                    string = e.toString();
                    sb.append(string);
                    Log.e(TAG, sb.toString());
                }
            } catch (IllegalArgumentException e2) {
                if (debugLog) {
                    sb = new StringBuilder();
                    sb.append("invoke e is ");
                    string = e2.toString();
                    sb.append(string);
                    Log.e(TAG, sb.toString());
                }
            } catch (InvocationTargetException e3) {
                if (debugLog) {
                    sb = new StringBuilder();
                    sb.append("invoke e is ");
                    string = e3.toString();
                    sb.append(string);
                    Log.e(TAG, sb.toString());
                }
            }
        }
    }

    private static void saveSDKComponent() {
        StringBuffer stringBuffer = new StringBuffer();
        if (getClass("com.umeng.analytics.MobclickAgent") != null) {
            stringBuffer.append("a");
        }
        if (getClass("com.umeng.message.PushAgent") != null) {
            stringBuffer.append("p");
        }
        if (getClass("com.umeng.socialize.UMShareAPI") != null) {
            stringBuffer.append(v.al);
        }
        if (getClass("com.umeng.error.UMError") != null) {
            stringBuffer.append(e.a);
        }
        if (getClass("com.umeng.commonsdk.UMConfigureImpl") != null) {
            stringBuffer.append("i");
        }
        if (getClass("com.umeng.commonsdk.amap.UMAmapConfig") != null) {
            stringBuffer.append("o");
        }
        if (TextUtils.isEmpty(stringBuffer)) {
            return;
        }
        c.a = stringBuffer.toString();
        UMSLEnvelopeBuild.module = stringBuffer.toString();
    }

    private static void setCheckDevice(boolean z) {
        com.umeng.commonsdk.statistics.b.d = z;
    }

    public static void setEncryptEnabled(boolean z) {
        c.a(z);
        UMSLEnvelopeBuild.setEncryptEnabled(z);
    }

    private static void setFile(Class<?> cls, String str, String str2) {
        if (cls != null) {
            try {
                Field field = cls.getField(str);
                field.set(str, str2);
                if (debugLog) {
                    Log.i(TAG, "setFile value is " + field.get(str).toString());
                }
            } catch (Exception e) {
                if (debugLog) {
                    Log.e(TAG, "setFile e is " + e.toString());
                }
            }
        }
    }

    private static void setFile(Class<?> cls, String str, boolean z) {
        if (cls != null) {
            try {
                Field field = cls.getField(str);
                field.set(str, Boolean.valueOf(z));
                if (debugLog) {
                    Log.i(TAG, "setFile value is " + field.get(str).toString());
                }
            } catch (Exception e) {
                if (debugLog) {
                    Log.e(TAG, "setFile e is " + e.toString());
                }
            }
        }
    }

    private static void setLatencyWindow(long j) {
        a.a = ((int) j) * 1000;
    }

    public static void setLogEnabled(boolean z) {
        StringBuilder sb;
        try {
            debugLog = z;
            if (z) {
                Log.i(TAG, "common sdk version is 1.3.2");
            }
            MLog.DEBUG = z;
            Class<?> cls = getClass("com.umeng.message.PushAgent");
            invoke(getDecMethod(cls, KEY_METHOD_NAME_SETDEBUGMODE, new Class[]{Boolean.TYPE}), getDecInstanceObject(cls), new Object[]{Boolean.valueOf(z)});
            setFile(getClass("com.umeng.socialize.Config"), "DEBUG", z);
        } catch (Exception e) {
            e = e;
            if (debugLog) {
                sb = new StringBuilder();
                sb.append("set log enabled e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
        } catch (Throwable th) {
            e = th;
            if (debugLog) {
                sb = new StringBuilder();
                sb.append("set log enabled e is ");
                sb.append(e);
                Log.e(TAG, sb.toString());
            }
        }
    }
}
