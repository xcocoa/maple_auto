package z2;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class q8 {
    private OooO0O0 OooO00o;

    public interface OooO0O0 {
        void OooO00o(String str);
    }

    public class OooO0OO implements SensorEventListener {
        public SensorManager OooO00o;

        public OooO0OO(SensorManager sensorManager) {
            this.OooO00o = sensorManager;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            this.OooO00o.unregisterListener(this);
            this.OooO00o = null;
        }
    }

    public static class OooO0o {
        private static final q8 OooO00o = new q8();

        private OooO0o() {
        }
    }

    private q8() {
    }

    public static final q8 OooO0OO() {
        return OooO0o.OooO00o;
    }

    private static String OooO0Oo(BufferedInputStream bufferedInputStream) {
        int i;
        if (bufferedInputStream == null) {
            return "";
        }
        byte[] bArr = new byte[512];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                i = bufferedInputStream.read(bArr);
                if (i > 0) {
                    sb.append(new String(bArr, 0, i));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (i >= 512);
        return sb.toString();
    }

    private boolean OooO0o0(Context context, int i) {
        SensorManager sensorManager;
        Sensor defaultSensor;
        if (context == null || (sensorManager = (SensorManager) context.getSystemService(com.umeng.commonsdk.proguard.v.W)) == null || (defaultSensor = sensorManager.getDefaultSensor(i)) == null) {
            return false;
        }
        sensorManager.registerListener(new OooO0OO(sensorManager), defaultSensor, 3);
        return true;
    }

    public String OooO() {
        return OooO00o("cat /proc/cpuinfo");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String OooO00o(String str) throws Throwable {
        Process processExec;
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        ?? r3;
        BufferedInputStream bufferedInputStream2;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            processExec = Runtime.getRuntime().exec("sh");
        } catch (Exception unused) {
            processExec = null;
            bufferedOutputStream = null;
        } catch (Throwable th) {
            th = th;
            processExec = null;
            bufferedInputStream = null;
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(processExec.getOutputStream());
            try {
                bufferedInputStream2 = new BufferedInputStream(processExec.getInputStream());
                try {
                    bufferedOutputStream.write(str.getBytes());
                    bufferedOutputStream.write(10);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    processExec.waitFor();
                    String strOooO0Oo = OooO0Oo(bufferedInputStream2);
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    if (processExec != null) {
                        processExec.destroy();
                    }
                    return strOooO0Oo;
                } catch (Exception unused2) {
                    r3 = bufferedInputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (r3 != 0) {
                        try {
                            r3.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (processExec != null) {
                        processExec.destroy();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream2 = bufferedOutputStream;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedOutputStream2 != null) {
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    if (processExec == null) {
                        throw th;
                    }
                    processExec.destroy();
                    throw th;
                }
            } catch (Exception unused3) {
                r3 = 0;
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream2 = null;
            }
        } catch (Exception unused4) {
            bufferedOutputStream = null;
            r3 = bufferedOutputStream;
            if (bufferedOutputStream != null) {
            }
            if (r3 != 0) {
            }
            if (processExec != null) {
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }

    public String OooO0O0(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean OooO0o(Context context) {
        return OooO0o0(context, 4);
    }

    public boolean OooO0oO(Context context) {
        return OooO0o0(context, 5);
    }

    @Deprecated
    public String OooO0oo() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("-\n");
        stringBuffer.append("BOARD-");
        stringBuffer.append(Build.BOARD);
        stringBuffer.append("\nBOOTLOADER-");
        stringBuffer.append(Build.BOOTLOADER);
        stringBuffer.append("\nBRAND-");
        stringBuffer.append(Build.BRAND);
        stringBuffer.append("\nDEVICE-");
        stringBuffer.append(Build.DEVICE);
        stringBuffer.append("\nHARDWARE-");
        stringBuffer.append(Build.HARDWARE);
        stringBuffer.append("\nMODEL-");
        stringBuffer.append(Build.MODEL);
        stringBuffer.append("\nPRODUCT-");
        stringBuffer.append(Build.PRODUCT);
        return stringBuffer.toString();
    }

    public boolean OooOO0() {
        return OooOO0O(null);
    }

    public boolean OooOO0O(OooO0O0 oooO0O0) throws Throwable {
        this.OooO00o = oooO0O0;
        String strOooO0O0 = OooO0O0("gsm.version.baseband");
        int i = TextUtils.isEmpty(strOooO0O0) | (strOooO0O0 != null && strOooO0O0.contains("1.0.0.0")) ? 1 : 0;
        String strOooO0O02 = OooO0O0("ro.build.flavor");
        if (TextUtils.isEmpty(strOooO0O02) || (strOooO0O02.contains("vbox") | strOooO0O02.contains("sdk_gphone"))) {
            i++;
        }
        String strOooO0O03 = OooO0O0("ro.product.board");
        if (TextUtils.isEmpty(strOooO0O03) || (strOooO0O03.contains(g6.OooO0O0) | strOooO0O03.contains("goldfish"))) {
            i++;
        }
        String strOooO0O04 = OooO0O0("ro.board.platform");
        if (TextUtils.isEmpty(strOooO0O04) || strOooO0O04.contains(g6.OooO0O0)) {
            i++;
        }
        if (!TextUtils.isEmpty(strOooO0O03) && !TextUtils.isEmpty(strOooO0O04) && !strOooO0O03.equals(strOooO0O04)) {
            i++;
        }
        String strOooO00o = OooO00o("cat /proc/self/cgroup");
        if (TextUtils.isEmpty(strOooO00o)) {
            i++;
        }
        if (this.OooO00o != null) {
            StringBuffer stringBuffer = new StringBuffer("ceshi start|");
            stringBuffer.append(strOooO0O0);
            stringBuffer.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer.append(strOooO0O02);
            stringBuffer.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer.append(strOooO0O03);
            stringBuffer.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer.append(strOooO0O04);
            stringBuffer.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer.append(strOooO00o);
            stringBuffer.append("|end");
            this.OooO00o.OooO00o(stringBuffer.toString());
            this.OooO00o = null;
        }
        return i > 2;
    }

    public boolean OooOO0o() throws Throwable {
        String strOooO00o = OooO00o("cat /proc/self/cgroup");
        return strOooO00o == null || strOooO00o.length() == 0;
    }
}
