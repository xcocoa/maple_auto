package z2;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

/* JADX INFO: loaded from: classes.dex */
public class x6 implements SensorEventListener {
    private static final int OooO = 3000;
    private static final int OooOO0 = 100;
    private SensorManager OooO00o;
    private Sensor OooO0O0;
    private OooO00o OooO0OO;
    private Context OooO0Oo;
    private float OooO0o;
    private float OooO0o0;
    private float OooO0oO;
    private long OooO0oo;

    public interface OooO00o {
        void onShake();
    }

    public x6(Context context) {
        this.OooO0Oo = context;
        OooO0O0();
    }

    public void OooO00o(OooO00o oooO00o) {
        this.OooO0OO = oooO00o;
    }

    public void OooO0O0() {
        SensorManager sensorManager = (SensorManager) this.OooO0Oo.getSystemService(com.umeng.commonsdk.proguard.v.W);
        this.OooO00o = sensorManager;
        if (sensorManager != null) {
            this.OooO0O0 = sensorManager.getDefaultSensor(1);
        }
        Sensor sensor = this.OooO0O0;
        if (sensor != null) {
            this.OooO00o.registerListener(this, sensor, 1);
        }
    }

    public void OooO0OO() {
        this.OooO00o.unregisterListener(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.OooO0oo;
        if (j < 100) {
            return;
        }
        this.OooO0oo = jCurrentTimeMillis;
        float[] fArr = sensorEvent.values;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = f - this.OooO0o0;
        float f5 = f2 - this.OooO0o;
        float f6 = f3 - this.OooO0oO;
        this.OooO0o0 = f;
        this.OooO0o = f2;
        this.OooO0oO = f3;
        if ((Math.sqrt(((f4 * f4) + (f5 * f5)) + (f6 * f6)) / j) * 10000.0d >= 3000.0d) {
            this.OooO0OO.onShake();
        }
    }
}
