package com.octopus.ad.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.widget.ShakeView;
import com.umeng.commonsdk.proguard.v;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    private static SensorManager b;
    public ShakeView a;
    private Context c;
    private double d;
    private double e;
    private double f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k = 0;
    private int l = 0;
    private float m = -100.0f;
    private float n = -100.0f;
    private float o = -100.0f;
    private int p = 0;
    private a q = null;
    private boolean r = false;
    private int s = 200;
    private final SensorEventListener t = new SensorEventListener() { // from class: com.octopus.ad.utils.j.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float f;
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            if (j.this.m == -100.0f) {
                j.this.m = f2;
            }
            if (j.this.n == -100.0f) {
                j.this.n = f3;
            }
            if (j.this.o == -100.0f) {
                j.this.o = f4;
            }
            com.octopus.ad.utils.b.f.b("ShakeUtil", "x = " + f2 + ",initialX = " + j.this.m + ",y = " + f3 + ",initialY = " + j.this.n + ",z = " + f4 + ",initialZ = " + j.this.o);
            double dAbs = ((double) Math.abs(f2 - j.this.m)) / 9.8d;
            double dAbs2 = ((double) Math.abs(f3 - j.this.n)) / 9.8d;
            double dAbs3 = ((double) Math.abs(f4 - j.this.o)) / 9.8d;
            StringBuilder sb = new StringBuilder();
            sb.append("rotateX = ");
            sb.append(dAbs);
            sb.append(",rotateY = ");
            sb.append(dAbs2);
            sb.append(",rotateZ = ");
            sb.append(dAbs3);
            sb.append(",rotateAmplitude = ");
            sb.append(j.this.f);
            com.octopus.ad.utils.b.f.b("ShakeUtil", sb.toString());
            if (dAbs > j.this.f) {
                j.e(j.this);
                j.this.m = f2;
            }
            if (dAbs2 > j.this.f) {
                j.e(j.this);
                f = f3;
                j.this.n = f;
            } else {
                f = f3;
            }
            if (dAbs3 > j.this.f) {
                j.e(j.this);
                j.this.o = f4;
            }
            j jVar = j.this;
            if (jVar.a(f2, f, f4, jVar.d)) {
                j.this.p = 1;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mShakeState = ");
            sb2.append(j.this.p);
            sb2.append(",isShakeStart = ");
            j jVar2 = j.this;
            float f5 = f;
            sb2.append(jVar2.a(f2, f5, f4, jVar2.d));
            sb2.append(",isShakeEnd = ");
            j jVar3 = j.this;
            sb2.append(jVar3.b(f2, f5, f4, jVar3.e));
            com.octopus.ad.utils.b.f.b("ShakeUtil", sb2.toString());
            if (j.this.p == 1) {
                j jVar4 = j.this;
                if (jVar4.b(f2, f, f4, jVar4.e)) {
                    j.this.p = 2;
                    j.i(j.this);
                }
            }
            com.octopus.ad.utils.b.f.b("ShakeUtil", "mShakeCount = " + j.this.k + ",dstShakeCount = " + j.this.g + ",mRotateCount = " + j.this.l + ",dstRotateCount = " + j.this.h);
            if ((j.this.g <= 0 || j.this.k < j.this.g) && (j.this.h <= 0 || j.this.l < j.this.h)) {
                return;
            }
            j.this.a();
        }
    };

    public interface a {
        void a();
    }

    public j(Context context) {
        this.c = context;
        b = (SensorManager) context.getApplicationContext().getSystemService(v.W);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(float f, float f2, float f3, double d) {
        return Math.sqrt((Math.pow(((double) f) / 9.8d, 2.0d) + Math.pow(((double) f2) / 9.8d, 2.0d)) + Math.pow(((double) f3) / 9.8d, 2.0d)) > d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(float f, float f2, float f3, double d) {
        return Math.sqrt((Math.pow(((double) f) / 9.8d, 2.0d) + Math.pow(((double) f2) / 9.8d, 2.0d)) + Math.pow(((double) f3) / 9.8d, 2.0d)) > d;
    }

    public static /* synthetic */ int e(j jVar) {
        int i = jVar.l;
        jVar.l = i + 1;
        return i;
    }

    public static Pair<Integer, Boolean> e(int i) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        return iRandom <= i ? new Pair<>(Integer.valueOf(iRandom), Boolean.TRUE) : new Pair<>(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    private void e() {
        if (((Boolean) e(this.j).second).booleanValue()) {
            c.a(new Runnable() { // from class: com.octopus.ad.utils.j.2
                @Override // java.lang.Runnable
                public void run() {
                    j.this.a();
                }
            }, this.i + (((Integer) r0.first).intValue() * 10));
        }
    }

    public static /* synthetic */ int i(j jVar) {
        int i = jVar.k;
        jVar.k = i + 1;
        return i;
    }

    public View a(int i, int i2) {
        int i3;
        com.octopus.ad.utils.b.f.a("OctopusAd", "enter getShakeView");
        if (this.c == null) {
            return null;
        }
        if (this.h == 0 && this.g == 0 && this.j == 0) {
            return null;
        }
        this.a = new ShakeView(this.c);
        TextUtils.isEmpty("50%");
        String str = TextUtils.isEmpty("70%") ? "50%" : "70%";
        String str2 = !TextUtils.isEmpty("140") ? "140" : "180";
        String str3 = TextUtils.isEmpty("140") ? "180" : "140";
        float screenWidthDp = ViewUtil.getScreenWidthDp(this.c);
        int i4 = "50%".endsWith("%") ? (Integer.parseInt("50%".substring(0, "50%".indexOf("%"))) * i) / 100 : Integer.parseInt("50%");
        int i5 = str.endsWith("%") ? (Integer.parseInt(str.substring(0, str.indexOf("%"))) * i2) / 100 : Integer.parseInt(str);
        int i6 = 400;
        if (str2.endsWith("%")) {
            int i7 = Integer.parseInt(str2.substring(0, str2.indexOf("%")));
            if (screenWidthDp >= 400.0f) {
                i3 = (i7 * 400) / 100;
                i6 = i3;
            } else {
                i6 = (((int) screenWidthDp) * i7) / 100;
            }
        } else {
            i3 = Integer.parseInt(str2);
            if (i3 < 400) {
                i6 = i3;
            }
        }
        int i8 = str3.endsWith("%") ? (Integer.parseInt(str3.substring(0, str3.indexOf("%"))) * i6) / 100 : Integer.parseInt(str3);
        int iDip2px = ViewUtil.dip2px(this.c, i6);
        int iDip2px2 = ViewUtil.dip2px(this.c, i8);
        int iDip2px3 = ViewUtil.dip2px(this.c, i4);
        int iDip2px4 = ViewUtil.dip2px(this.c, i5);
        com.octopus.ad.utils.b.f.a("OctopusAd", "widthInt = " + iDip2px + ",heightInt = " + iDip2px2);
        if (iDip2px == 0) {
            iDip2px = 180;
        }
        if (iDip2px2 == 0) {
            iDip2px2 = iDip2px;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iDip2px, iDip2px2);
        com.octopus.ad.utils.b.f.a("OctopusAd", "centerYInt = " + iDip2px4 + ",centerXInt = " + iDip2px3 + ",adWidthDp = " + i + ",adHeightDp = " + i2);
        if (iDip2px4 == 0) {
            iDip2px4 = ViewUtil.dip2px(this.c, i2) / 2;
        }
        if (iDip2px3 == 0) {
            iDip2px3 = ViewUtil.dip2px(this.c, i) / 2;
        }
        marginLayoutParams.topMargin = iDip2px4 - (iDip2px2 / 2);
        marginLayoutParams.leftMargin = iDip2px3 - (iDip2px / 2);
        this.a.setLayoutParams(marginLayoutParams);
        com.octopus.ad.utils.b.f.a("OctopusAd", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iDip2px + ",heightInt = " + iDip2px2);
        this.a.startShake();
        b();
        return this.a;
    }

    public void a() {
        StringBuilder sb = new StringBuilder();
        sb.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb.append(this.q != null);
        sb.append(",!isCallBack = ");
        sb.append(!this.r);
        com.octopus.ad.utils.b.f.a("OctopusAd", sb.toString());
        if (this.q == null || this.r) {
            return;
        }
        com.octopus.ad.utils.b.f.a("OctopusAd", "callback onShakeHappened()");
        this.q.a();
        this.r = true;
        ShakeView shakeView = this.a;
        if (shakeView != null) {
            shakeView.stopShake();
            c();
        }
    }

    public void a(double d) {
        a(1);
        b(d);
        c(d);
        d(0.0d);
        d(0);
        b(1000);
        c(0);
        f(0);
    }

    public void a(int i) {
        this.g = i;
    }

    public void a(a aVar) {
        this.q = aVar;
    }

    public void b() {
        SensorManager sensorManager = b;
        if (sensorManager != null) {
            sensorManager.registerListener(this.t, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    public void b(double d) {
        this.d = d;
    }

    public void b(int i) {
        this.i = i;
    }

    public void c() {
        com.octopus.ad.utils.b.f.a("OctopusAd", "enter unRegisterShakeListenerAndSetDefault");
        SensorManager sensorManager = b;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.t);
        }
        d();
        ShakeView shakeView = this.a;
        if (shakeView != null) {
            shakeView.stopShake();
        }
    }

    public void c(double d) {
        this.e = d;
    }

    public void c(int i) {
        this.j = i;
        e();
    }

    public void d() {
        this.r = false;
        this.k = 0;
        this.l = 0;
        this.m = -100.0f;
        this.n = -100.0f;
        this.o = -100.0f;
        this.p = 0;
        this.q = null;
        this.c = null;
        this.a = null;
        this.s = 200;
    }

    public void d(double d) {
        this.f = d;
    }

    public void d(int i) {
        this.h = i;
    }

    public void f(int i) {
        this.s = i;
    }
}
