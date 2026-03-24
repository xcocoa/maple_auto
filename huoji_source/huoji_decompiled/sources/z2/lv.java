package z2;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public final class lv implements Camera.PreviewCallback {
    private static final String OooO0o0 = lv.class.getSimpleName();
    private final iv OooO00o;
    private final boolean OooO0O0;
    private Handler OooO0OO;
    private int OooO0Oo;

    public lv(iv ivVar, boolean z) {
        this.OooO00o = ivVar;
        this.OooO0O0 = z;
    }

    public void OooO00o(Handler handler, int i) {
        this.OooO0OO = handler;
        this.OooO0Oo = i;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Point pointOooO0OO = this.OooO00o.OooO0OO();
        if (!this.OooO0O0) {
            camera.setPreviewCallback(null);
        }
        Handler handler = this.OooO0OO;
        if (handler != null) {
            handler.obtainMessage(this.OooO0Oo, pointOooO0OO.x, pointOooO0OO.y, bArr).sendToTarget();
            this.OooO0OO = null;
        }
    }
}
