package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.p7;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    private static final String a = "info";
    private static final String b = "stat";
    private static boolean c = false;
    private static HandlerThread d = null;
    private static Context e = null;
    private static int f = 0;
    private static int g = 0;
    private static int h = 0;
    private static int i = 1;
    private static long j = 0;
    private static long k = 0;
    private static final int l = 40;
    private static final int m = 50000;
    private static SensorManager n;
    private static ArrayList<float[]> o = new ArrayList<>();
    private static SensorEventListener p = new SensorEventListener() { // from class: com.umeng.commonsdk.proguard.r.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (r.g < 15) {
                r.c();
                return;
            }
            if (r.f < 20) {
                r.e();
                r.o.add(sensorEvent.values);
            }
            if (r.f == 20) {
                r.e();
                if (r.i == 1) {
                    long unused = r.j = System.currentTimeMillis();
                }
                if (r.i == 2) {
                    long unused2 = r.k = System.currentTimeMillis();
                }
                r.h();
                r.l();
            }
        }
    };

    public static class a {
        public int a;
        public int b;
        public long c;
    }

    public static List<Sensor> a(Context context) {
        if (context == null) {
            return null;
        }
        return ((SensorManager) context.getSystemService(v.W)).getSensorList(-1);
    }

    public static synchronized boolean a() {
        return c;
    }

    public static void b(Context context) {
        if (context == null || a()) {
            return;
        }
        c = true;
        e = context.getApplicationContext();
        String strA = com.umeng.commonsdk.framework.b.a(context);
        String packageName = context.getPackageName();
        if (strA == null || !strA.equals(packageName)) {
            return;
        }
        SensorManager sensorManager = (SensorManager) context.getSystemService(v.W);
        n = sensorManager;
        final Sensor defaultSensor = sensorManager.getDefaultSensor(4);
        final Sensor defaultSensor2 = n.getDefaultSensor(1);
        if (defaultSensor != null) {
            h = 4;
            n.registerListener(p, defaultSensor, 50000);
        } else if (defaultSensor2 != null) {
            h = 1;
            n.registerListener(p, defaultSensor2, 50000);
        }
        int iNextInt = (new Random().nextInt(3) * 1000) + p7.OooO0OO;
        HandlerThread handlerThread = new HandlerThread("sensor_thread");
        d = handlerThread;
        handlerThread.start();
        new Handler(d.getLooper()).postDelayed(new Runnable() { // from class: com.umeng.commonsdk.proguard.r.2
            @Override // java.lang.Runnable
            public void run() {
                SensorManager sensorManager2;
                SensorEventListener sensorEventListener;
                Sensor sensor;
                int unused = r.f = 0;
                if (defaultSensor != null) {
                    sensorManager2 = r.n;
                    sensorEventListener = r.p;
                    sensor = defaultSensor;
                } else {
                    if (defaultSensor2 == null) {
                        return;
                    }
                    sensorManager2 = r.n;
                    sensorEventListener = r.p;
                    sensor = defaultSensor2;
                }
                sensorManager2.registerListener(sensorEventListener, sensor, 50000);
            }
        }, iNextInt);
    }

    public static /* synthetic */ int c() {
        int i2 = g;
        g = i2 + 1;
        return i2;
    }

    public static JSONArray c(Context context) {
        String string;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
        if (sharedPreferences == null || (string = sharedPreferences.getString(b, null)) == null) {
            return null;
        }
        try {
            return new JSONArray(string);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void d(Context context) {
        if (context == null) {
            return;
        }
        context.getApplicationContext().getSharedPreferences(a, 0).edit().remove(b).commit();
    }

    public static /* synthetic */ int e() {
        int i2 = f;
        f = i2 + 1;
        return i2;
    }

    public static List<a> e(Context context) {
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.CAMERA")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                for (String str : cameraManager.getCameraIdList()) {
                    Size size = (Size) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
                    if (size != null) {
                        a aVar = new a();
                        aVar.a = size.getWidth();
                        aVar.b = size.getHeight();
                        aVar.c = System.currentTimeMillis();
                        arrayList.add(aVar);
                    }
                }
            }
        } catch (Exception unused) {
            com.umeng.commonsdk.statistics.common.e.c("camera access exception");
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0073 A[Catch: Exception -> 0x0095, TRY_ENTER, TryCatch #0 {Exception -> 0x0095, blocks: (B:4:0x0003, B:7:0x000d, B:12:0x0024, B:13:0x005f, B:16:0x0066, B:22:0x0073, B:23:0x0075, B:25:0x007c, B:24:0x0079), top: B:30:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079 A[Catch: Exception -> 0x0095, TryCatch #0 {Exception -> 0x0095, blocks: (B:4:0x0003, B:7:0x000d, B:12:0x0024, B:13:0x005f, B:16:0x0066, B:22:0x0073, B:23:0x0075, B:25:0x007c, B:24:0x0079), top: B:30:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void f(Context context) {
        int i2;
        String str;
        if (context == null) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            int i3 = 0;
            while (i3 < 2) {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray2 = new JSONArray();
                int i4 = 20;
                if (i3 == 1) {
                    i2 = 40;
                } else {
                    i4 = 0;
                    i2 = 20;
                }
                while (i4 < i2) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", o.get(i4)[0]);
                    jSONObject2.put("y", o.get(i4)[1]);
                    jSONObject2.put("z", o.get(i4)[2]);
                    jSONArray2.put(jSONObject2);
                    i4++;
                }
                int i5 = h;
                if (i5 != 4) {
                    str = i5 == 1 ? "a" : "g";
                    jSONObject.put("ts", i3 != 0 ? j : k);
                    jSONArray.put(jSONObject);
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.proguard.a.l, b.a(context).a(), jSONArray.toString());
                    i3++;
                }
                jSONObject.put(str, jSONArray2);
                jSONObject.put("ts", i3 != 0 ? j : k);
                jSONArray.put(jSONObject);
                UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.proguard.a.l, b.a(context).a(), jSONArray.toString());
                i3++;
            }
        } catch (Exception e2) {
            e.a(context, e2);
        }
    }

    public static /* synthetic */ int h() {
        int i2 = i;
        i = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        SensorManager sensorManager = n;
        if (sensorManager != null) {
            sensorManager.unregisterListener(p);
        }
        if (o.size() == 40) {
            f(e);
            ArrayList<float[]> arrayList = o;
            if (arrayList != null) {
                arrayList.clear();
            }
            HandlerThread handlerThread = d;
            if (handlerThread != null) {
                handlerThread.quit();
                d = null;
            }
            e = null;
            c = false;
        }
    }
}
