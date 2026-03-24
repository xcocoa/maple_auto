package z2;

import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import com.cyjh.elfin.base.AppContext;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class t7 implements Camera.PreviewCallback {
    private static t7 OooO = null;
    private static final String OooO0oo = "CameraInterface";
    private Camera OooO00o;
    private Camera.Parameters OooO0O0;
    private Camera.PreviewCallback OooO0o0;
    private boolean OooO0OO = false;
    public Camera.AutoFocusCallback OooO0o = new OooO00o();
    private Runnable OooO0oO = new OooO0O0();
    private Handler OooO0Oo = new Handler();

    public class OooO00o implements Camera.AutoFocusCallback {
        public OooO00o() {
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            t7.this.OooO0Oo.postDelayed(t7.this.OooO0oO, 1000L);
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (t7.this.OooO0OO) {
                t7.this.OooO00o.autoFocus(t7.this.OooO0o);
            }
        }
    }

    public interface OooO0OO {
        void OooO00o();
    }

    private t7() {
    }

    public static synchronized t7 OooO() {
        if (OooO == null) {
            OooO = new t7();
        }
        return OooO;
    }

    public void OooO0o(OooO0OO oooO0OO) {
        this.OooO00o = Camera.open();
        oooO0OO.OooO00o();
    }

    public void OooO0o0() {
        try {
            this.OooO00o = Camera.open();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0oO(SurfaceHolder surfaceHolder) {
        int i;
        Camera.Size size;
        int i2;
        if (this.OooO0OO) {
            this.OooO00o.stopPreview();
            return;
        }
        Camera camera = this.OooO00o;
        if (camera != null) {
            try {
                this.OooO0O0 = camera.getParameters();
            } catch (Exception e) {
                e.printStackTrace();
            }
            Camera.Parameters parameters = this.OooO0O0;
            if (parameters == null) {
                c5.OooO0OO(AppContext.OooO00o(), "请检查相机是否可用或权限是否被禁用");
                return;
            }
            parameters.setPictureFormat(256);
            s7.OooO0O0().OooO0o(this.OooO0O0);
            s7.OooO0O0().OooO0oO(this.OooO0O0);
            int iOooO0OO = u7.OooO0OO(AppContext.OooO00o());
            int iOooO0o0 = u7.OooO0o0(AppContext.OooO00o());
            List<Camera.Size> supportedPreviewSizes = this.OooO0O0.getSupportedPreviewSizes();
            if (supportedPreviewSizes != null) {
                try {
                    if (supportedPreviewSizes.isEmpty()) {
                        return;
                    }
                    int i3 = 0;
                    if (supportedPreviewSizes.size() == 1) {
                        size = supportedPreviewSizes.get(0);
                        i3 = size.width;
                    } else {
                        if (supportedPreviewSizes.size() > 1) {
                            Camera.Size sizeOooO0Oo = s7.OooO0O0().OooO0Oo(supportedPreviewSizes, (iOooO0OO * 1.0f) / iOooO0o0, iOooO0o0);
                            i3 = sizeOooO0Oo.width;
                            int i4 = sizeOooO0Oo.height;
                            Iterator<Camera.Size> it = supportedPreviewSizes.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                Camera.Size next = it.next();
                                int i5 = next.width;
                                if (i5 >= iOooO0OO && (i2 = next.height) >= iOooO0o0) {
                                    i4 = i2;
                                    i3 = i5;
                                    break;
                                }
                            }
                            if (i3 != 0 && i4 != 0) {
                                i = i4;
                            }
                            size = supportedPreviewSizes.get(supportedPreviewSizes.size() - 1);
                            i3 = size.width;
                        } else {
                            i = 0;
                        }
                        String str = "PreviewWidth:" + i3;
                        String str2 = "PreviewHeight:" + i;
                        this.OooO0O0.setPreviewSize(i3, i);
                        this.OooO00o.setDisplayOrientation(90);
                        this.OooO00o.setParameters(this.OooO0O0);
                    }
                    i = size.height;
                    String str3 = "PreviewWidth:" + i3;
                    String str22 = "PreviewHeight:" + i;
                    this.OooO0O0.setPreviewSize(i3, i);
                    this.OooO00o.setDisplayOrientation(90);
                    this.OooO00o.setParameters(this.OooO0O0);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                try {
                    this.OooO00o.setPreviewDisplay(surfaceHolder);
                    this.OooO00o.setPreviewCallback(this);
                    this.OooO00o.startPreview();
                    this.OooO00o.autoFocus(this.OooO0o);
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                this.OooO0OO = true;
                this.OooO0O0 = this.OooO00o.getParameters();
            }
        }
    }

    public void OooO0oo() {
        try {
            Camera camera = this.OooO00o;
            if (camera != null) {
                camera.setPreviewCallback(null);
                this.OooO00o.stopPreview();
                this.OooO0OO = false;
                this.OooO00o.release();
                this.OooO00o = null;
                this.OooO0Oo.removeCallbacks(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooOO0() {
        Camera camera = this.OooO00o;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            this.OooO0O0 = parameters;
            parameters.setFlashMode("off");
            this.OooO00o.setParameters(this.OooO0O0);
        }
    }

    public void OooOO0O() {
        Log.e("zzz", "openLight1");
        if (this.OooO00o != null) {
            Log.e("zzz", "openLight2");
            Camera.Parameters parameters = this.OooO00o.getParameters();
            this.OooO0O0 = parameters;
            parameters.setFlashMode("torch");
            this.OooO00o.setParameters(this.OooO0O0);
        }
    }

    public void OooOO0o(Camera.PreviewCallback previewCallback) {
        this.OooO0o0 = previewCallback;
    }

    public void OooOOO0() {
        Camera camera = this.OooO00o;
        if (camera != null) {
            camera.stopPreview();
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Camera.PreviewCallback previewCallback = this.OooO0o0;
        if (previewCallback != null) {
            previewCallback.onPreviewFrame(bArr, camera);
        }
    }
}
