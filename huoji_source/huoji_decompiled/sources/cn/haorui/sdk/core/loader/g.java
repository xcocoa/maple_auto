package cn.haorui.sdk.core.loader;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.platform.hr.splash.ShakeBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static double z = 20.0d;
    public int a;
    public SensorManager e;
    public float g;
    public String k;
    public long l;
    public HRAdInfo.DClickData m;
    public int n;
    public double o;
    public boolean p;
    public int r;
    public int b = 1;
    public int c = 1;
    public long d = 500;
    public boolean f = false;
    public float[] h = new float[3];
    public List<ShakeBean> i = new ArrayList();
    public int j = 0;
    public long q = 0;
    public SensorEventListener s = new a();
    public float t = 0.0f;
    public float u = 0.0f;
    public float v = 0.0f;
    public float w = 0.0f;
    public float x = 0.0f;
    public float y = 0.0f;

    public class a implements SensorEventListener {
        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                if (sensorEvent.sensor.getType() == 4) {
                    g gVar = g.this;
                    gVar.getClass();
                    float f = gVar.g;
                    if (f != 0.0f && gVar.f) {
                        float f2 = (sensorEvent.timestamp - f) * 1.0E-9f;
                        float[] fArr = gVar.h;
                        float f3 = fArr[0];
                        float[] fArr2 = sensorEvent.values;
                        fArr[0] = f3 + (fArr2[0] * f2);
                        fArr[1] = fArr[1] + (fArr2[1] * f2);
                        fArr[2] = fArr[2] + (fArr2[2] * f2);
                        float degrees = (float) Math.toDegrees(fArr[0]);
                        float degrees2 = (float) Math.toDegrees(gVar.h[1]);
                        float degrees3 = (float) Math.toDegrees(gVar.h[2]);
                        if (Math.abs(degrees) >= g.z || Math.abs(degrees2) >= g.z || Math.abs(degrees3) >= g.z) {
                            gVar.e();
                        } else if (gVar.f() && (Math.abs(degrees) >= gVar.o || Math.abs(degrees2) >= gVar.o || Math.abs(degrees3) >= gVar.o)) {
                            gVar.c();
                            gVar.e();
                        }
                    }
                    gVar.g = sensorEvent.timestamp;
                    return;
                }
                g gVar2 = g.this;
                gVar2.getClass();
                if (gVar2.f) {
                    int type = sensorEvent.sensor.getType();
                    if (type != 1) {
                        if (type != 9) {
                            return;
                        }
                        float[] fArr3 = sensorEvent.values;
                        gVar2.w = fArr3[0];
                        gVar2.x = fArr3[1];
                        gVar2.y = fArr3[2];
                        return;
                    }
                    float[] fArr4 = sensorEvent.values;
                    float f4 = fArr4[0];
                    gVar2.t = f4;
                    float f5 = fArr4[1];
                    gVar2.u = f5;
                    float f6 = fArr4[2];
                    gVar2.v = f6;
                    float f7 = f4 - gVar2.w;
                    float f8 = f5 - gVar2.x;
                    float f9 = f6 - gVar2.y;
                    double dSqrt = Math.sqrt((f7 * f7) + (f8 * f8) + (f9 * f9));
                    if (gVar2.w == 0.0f && gVar2.x == 0.0f && gVar2.y == 0.0f) {
                        dSqrt -= 9.8d;
                    }
                    if (gVar2.t == 0.0f && gVar2.u == 0.0f && gVar2.v == 0.0f) {
                        dSqrt -= 9.8d;
                    }
                    double dAtan = (dSqrt * 100.0d) / 30.0d;
                    if (80.0d < dAtan) {
                        dAtan = (((Math.atan((dAtan - 80.0d) / 30.0d) * 20.0d) * 2.0d) / 3.141592653589793d) + 80.0d;
                    }
                    if (dAtan >= gVar2.a) {
                        int i = gVar2.j + 1;
                        gVar2.j = i;
                        if (i < gVar2.c) {
                            return;
                        }
                    } else {
                        if (!gVar2.f() || dAtan < gVar2.n) {
                            return;
                        }
                        gVar2.c();
                        int i2 = gVar2.j + 1;
                        gVar2.j = i2;
                        if (i2 < gVar2.c) {
                            return;
                        }
                    }
                    gVar2.d();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class b implements Comparator<ShakeBean> {
        public b(g gVar) {
        }

        @Override // java.util.Comparator
        public int compare(ShakeBean shakeBean, ShakeBean shakeBean2) {
            return shakeBean2.getEcpm() - shakeBean.getEcpm();
        }
    }

    public static class c {
        public static g a = new g();
    }

    public interface d {
        void onShake();
    }

    public void a() {
        LogUtil.d("ShakeUtil", "destroy");
        this.f = false;
        this.g = 0.0f;
        SensorManager sensorManager = this.e;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.s);
            this.e = null;
        }
        List<ShakeBean> list = this.i;
        if (list != null) {
            list.clear();
        }
    }

    public void a(int i) {
        List<ShakeBean> list = this.i;
        if (list == null || list.size() == 0) {
            a();
            return;
        }
        Iterator<ShakeBean> it = this.i.iterator();
        while (it.hasNext()) {
            if (i == it.next().getShakeId()) {
                it.remove();
            }
        }
        List<ShakeBean> list2 = this.i;
        if (list2 == null || list2.size() <= 0) {
            a();
        } else {
            Collections.sort(this.i, new b(this));
            this.i.get(0).setStatus(ShakeBean.SHAKE_STATUS_USEABLE);
        }
    }

    public void a(int i, int i2, long j, int i3, int i4, int i5, d dVar) {
        HRAdInfo.DClickData dClickData;
        this.a = i;
        this.d = j;
        this.c = i3;
        this.p = false;
        this.b = i2;
        ShakeBean shakeBean = new ShakeBean();
        shakeBean.setStatus(ShakeBean.SHAKE_STATUS_USEABLE);
        List<ShakeBean> list = this.i;
        if (list != null && list.size() > 0) {
            Iterator<ShakeBean> it = this.i.iterator();
            while (it.hasNext()) {
                if (it.next().getEcpm() > i5) {
                    shakeBean.setStatus(ShakeBean.SHAKE_STATUS_WAIT);
                }
            }
        }
        float[] fArr = this.h;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        this.g = 0.0f;
        this.t = 0.0f;
        this.u = 0.0f;
        this.v = 0.0f;
        this.w = 0.0f;
        this.x = 0.0f;
        this.y = 0.0f;
        shakeBean.setShakeId(i4);
        shakeBean.setEcpm(i5);
        shakeBean.setListener(dVar);
        shakeBean.setSensitivity_index(i);
        shakeBean.setTouch_type(this.b);
        shakeBean.setIsShowing(true);
        this.i.add(shakeBean);
        if (i < 1 || i > 100) {
            this.a = 50;
            z = 20.0d;
        } else {
            double d2 = (((double) i) * 90.0d) / 100.0d;
            z = d2;
            if (d2 < 2.0d) {
                z = 2.0d;
            }
        }
        try {
            RecordUtil.RecordClick recordClick = RecordUtil.recordClickMap.get(this.k + this.l);
            if ((recordClick == null || !recordClick.isClicked()) && (dClickData = this.m) != null) {
                int power = dClickData.getPower();
                int ptime = this.m.getPtime();
                if (ptime <= 0 || power >= this.a) {
                    return;
                }
                this.r = ptime;
                this.p = true;
                this.q = AdSdk.getSharedPreferences().getLong(RecordUtil.LAST_DYNAMIC_TIME, 0L);
                if (power < 1 || power > 100) {
                    return;
                }
                this.n = power;
                double d3 = (((double) power) * 45.0d) / 100.0d;
                this.o = d3;
                if (d3 < 2.0d) {
                    this.o = 2.0d;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(int i, boolean z3) {
        List<ShakeBean> list = this.i;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ShakeBean shakeBean : this.i) {
            if (i == shakeBean.getShakeId()) {
                shakeBean.setIsShowing(z3);
            }
        }
    }

    public void a(String str, long j, HRAdInfo.DClickData dClickData) {
        this.k = str;
        this.l = j;
        this.m = dClickData;
    }

    public void a(boolean z3) {
        this.f = z3;
        try {
            new Handler().postDelayed(new f(this), this.d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int b() {
        return (int) (((Math.random() * 9.0d) + 1.0d) * 1.0E7d);
    }

    public final void c() {
        RecordUtil.RecordClick recordClick = RecordUtil.recordClickMap.get(this.k + this.l);
        if (recordClick != null) {
            if (!recordClick.isClicked()) {
            }
            RecordUtil.recordClickMap.put(this.k + this.l, recordClick);
        }
        recordClick = new RecordUtil.RecordClick();
        recordClick.setDynamicClick(true);
        RecordUtil.saveAction(this.k, 5);
        RecordUtil.saveAction(this.k, 7);
        RecordUtil.recordClickMap.put(this.k + this.l, recordClick);
    }

    public final void d() {
        this.f = false;
        this.t = 0.0f;
        this.u = 0.0f;
        this.v = 0.0f;
        this.w = 0.0f;
        this.x = 0.0f;
        this.y = 0.0f;
        List<ShakeBean> list = this.i;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (ShakeBean shakeBean : this.i) {
            if (shakeBean.getIsShowing() && shakeBean.getStatus() == ShakeBean.SHAKE_STATUS_USEABLE && shakeBean.getListener() != null) {
                shakeBean.getListener().onShake();
                this.i.remove(shakeBean);
                return;
            }
        }
    }

    public final void e() {
        this.f = false;
        float[] fArr = this.h;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        List<ShakeBean> list = this.i;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (ShakeBean shakeBean : this.i) {
            if (shakeBean.getIsShowing() && shakeBean.getStatus() == ShakeBean.SHAKE_STATUS_USEABLE && shakeBean.getListener() != null) {
                shakeBean.getListener().onShake();
                this.i.remove(shakeBean);
                return;
            }
        }
    }

    public final boolean f() {
        return this.p && System.currentTimeMillis() - this.q > ((long) (this.r * 1000));
    }
}
