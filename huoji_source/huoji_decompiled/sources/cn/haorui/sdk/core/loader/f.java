package cn.haorui.sdk.core.loader;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import cn.haorui.sdk.core.AdSdk;
import com.umeng.commonsdk.proguard.v;

/* JADX INFO: loaded from: classes.dex */
public class f implements Runnable {
    public final /* synthetic */ g a;

    public f(g gVar) {
        this.a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Sensor defaultSensor;
        if (this.a.e != null || AdSdk.getContext() == null) {
            return;
        }
        this.a.e = (SensorManager) AdSdk.getContext().getSystemService(v.W);
        g gVar = this.a;
        int i = gVar.b;
        SensorManager sensorManager = gVar.e;
        if (i == 2) {
            defaultSensor = sensorManager.getDefaultSensor(4);
        } else {
            Sensor defaultSensor2 = sensorManager.getDefaultSensor(9);
            g gVar2 = this.a;
            gVar2.e.registerListener(gVar2.s, defaultSensor2, 1);
            defaultSensor = this.a.e.getDefaultSensor(1);
        }
        g gVar3 = this.a;
        gVar3.e.registerListener(gVar3.s, defaultSensor, 2);
    }
}
