package com.cyjh.mobileanjian.screencap;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.WindowManager;
import java.nio.ByteBuffer;
import z2.mg;
import z2.zf;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(21)
public final class ScreenShoterV3 {
    private static final String OooOOo = "ScreenShoterV3";
    private ScreenShotImage OooO;
    private Context OooO00o;
    private MediaProjection OooO0O0;
    private Object OooO0OO;
    private HandlerThread OooO0Oo;
    private Intent OooO0o;
    private Handler OooO0o0;
    private ImageReader OooO0oO;
    private VirtualDisplay OooO0oo;
    private Bitmap OooOO0;
    private int OooOO0O;
    private int OooOO0o;
    private int OooOOO;
    private int OooOOO0;
    private boolean OooOOOO;
    private boolean OooOOOo;
    private volatile boolean OooOOo0;

    public class OooO00o implements ImageReader.OnImageAvailableListener {
        public OooO00o() {
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public final void onImageAvailable(ImageReader imageReader) {
            if (ScreenShoterV3.this.OooOOOO) {
                Image imageAcquireLatestImage = ScreenShoterV3.this.OooO0oO.acquireLatestImage();
                if (imageAcquireLatestImage == null) {
                    ScreenShoterV3.this.OooOOo0 = false;
                    return;
                }
                ScreenShoterV3 screenShoterV3 = ScreenShoterV3.this;
                screenShoterV3.OooO = screenShoterV3.OooOO0O(imageAcquireLatestImage);
                ScreenShoterV3.this.OooOO0 = ScreenShoterV3.OooO0O0(imageAcquireLatestImage);
                ScreenShoterV3.this.OooOOo0 = true;
                ScreenShoterV3.OooOOO(ScreenShoterV3.this);
                if (ScreenShoterV3.this.OooO0oO != null) {
                    ScreenShoterV3.this.OooO0oO.setOnImageAvailableListener(null, null);
                }
            }
        }
    }

    public static class OooO0O0 {
        private static final ScreenShoterV3 OooO00o = new ScreenShoterV3(0);

        private OooO0O0() {
        }
    }

    private ScreenShoterV3() {
        this.OooO0OO = new Object();
        this.OooOOOO = false;
        this.OooOOOo = false;
        this.OooOOo0 = false;
    }

    public /* synthetic */ ScreenShoterV3(byte b) {
        this();
    }

    private Bitmap OooO00o(int i, int i2) throws IllegalStateException {
        Image imageAcquireLatestImage = this.OooO0oO.acquireLatestImage();
        if (imageAcquireLatestImage == null) {
            return this.OooOO0;
        }
        Bitmap bitmapOooO0OO = OooO0OO(imageAcquireLatestImage, i, i2);
        this.OooOO0 = bitmapOooO0OO;
        return bitmapOooO0OO;
    }

    public static /* synthetic */ Bitmap OooO0O0(Image image) {
        return OooO0OO(image, 0, 0);
    }

    private static Bitmap OooO0OO(Image image, int i, int i2) {
        Bitmap bitmap;
        try {
            int width = image.getWidth();
            int height = image.getHeight();
            Image.Plane[] planes = image.getPlanes();
            ByteBuffer buffer = planes[0].getBuffer();
            int pixelStride = planes[0].getPixelStride();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((planes[0].getRowStride() - (pixelStride * width)) / pixelStride) + width, height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.copyPixelsFromBuffer(buffer);
            if (width <= height || bitmapCreateBitmap == null) {
                bitmap = bitmapCreateBitmap;
            } else {
                Matrix matrix = new Matrix();
                matrix.setRotate(90.0f, bitmapCreateBitmap.getWidth() / 2, bitmapCreateBitmap.getHeight() / 2);
                float height2 = bitmapCreateBitmap.getHeight();
                float[] fArr = new float[9];
                matrix.getValues(fArr);
                matrix.postTranslate(height2 - fArr[2], 0.0f - fArr[5]);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap.getHeight(), bitmapCreateBitmap.getWidth(), Bitmap.Config.ARGB_8888);
                new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCreateBitmap, matrix, new Paint());
                bitmapCreateBitmap.recycle();
                bitmap = bitmapCreateBitmap2;
            }
            if (i != 0 || i2 != 0) {
                int width2 = bitmap.getWidth();
                int height3 = bitmap.getHeight();
                Log.e(OooOOo, "load bitmap1 info return  1 width=" + width2 + " height = " + height3);
                Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(bitmap, 0, i2, width2 + 0, height3 - (i2 * 2), (Matrix) null, false);
                bitmap.recycle();
                bitmap = bitmapCreateBitmap3;
            }
            Log.e(OooOOo, "load bitmap info return  2 width=" + bitmap.getWidth() + " height = " + bitmap.getHeight());
            if (image != null) {
                image.close();
            }
            return bitmap;
        } catch (Exception unused) {
            if (image == null) {
                return null;
            }
            image.close();
            return null;
        } catch (Throwable th) {
            if (image != null) {
                image.close();
            }
            throw th;
        }
    }

    private ScreenShotImage OooO0o0() throws IllegalStateException {
        Image imageAcquireLatestImage = this.OooO0oO.acquireLatestImage();
        if (imageAcquireLatestImage == null) {
            return this.OooO;
        }
        ScreenShotImage screenShotImageOooOO0O = OooOO0O(imageAcquireLatestImage);
        this.OooO = screenShotImageOooOO0O;
        return screenShotImageOooOO0O;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScreenShotImage OooOO0O(Image image) {
        try {
            ScreenShotImage screenShotImage = new ScreenShotImage();
            int width = image.getWidth();
            int height = image.getHeight();
            Image.Plane[] planes = image.getPlanes();
            ByteBuffer buffer = planes[0].getBuffer();
            int rowStride = planes[0].getRowStride();
            int pixelStride = planes[0].getPixelStride();
            byte[] bArr = new byte[buffer.capacity()];
            buffer.get(bArr);
            screenShotImage.width = width;
            screenShotImage.height = height;
            screenShotImage.rotation = this.OooOOO;
            screenShotImage.rowStride = rowStride;
            screenShotImage.pixelStride = pixelStride;
            screenShotImage.data = bArr;
            if (image != null) {
                image.close();
            }
            return screenShotImage;
        } catch (Exception unused) {
            if (image == null) {
                return null;
            }
            image.close();
            return null;
        } catch (Throwable th) {
            if (image != null) {
                image.close();
            }
            throw th;
        }
    }

    private synchronized void OooOO0o() {
        recycler();
        updateScreenSize();
        MediaProjectionManager mediaProjectionManager = (MediaProjectionManager) this.OooO00o.getSystemService("media_projection");
        if (this.OooO0O0 == null && mediaProjectionManager != null) {
            this.OooO0O0 = mediaProjectionManager.getMediaProjection(-1, this.OooO0o);
        }
        HandlerThread handlerThread = new HandlerThread("imageReaderHandler");
        this.OooO0Oo = handlerThread;
        handlerThread.start();
        this.OooO0o0 = new Handler(this.OooO0Oo.getLooper());
        String str = mg.OooO00o("getprop phone.id").OooO0O0;
        this.OooO0oO = (str == null || str.length() <= 0) ? ImageReader.newInstance(this.OooOO0O, this.OooOO0o, 1, 3) : ImageReader.newInstance(this.OooOO0O, this.OooOO0o, 2, 3);
        this.OooO0oo = this.OooO0O0.createVirtualDisplay("screen-mirror", this.OooOO0O, this.OooOO0o, this.OooOOO0, 16, this.OooO0oO.getSurface(), null, null);
        this.OooOOOO = true;
        ImageReader imageReader = this.OooO0oO;
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new OooO00o(), this.OooO0o0);
        }
    }

    public static /* synthetic */ boolean OooOOO(ScreenShoterV3 screenShoterV3) {
        screenShoterV3.OooOOOO = false;
        return false;
    }

    private boolean OooOOO0() {
        return this.OooOOo0;
    }

    public static synchronized ScreenShoterV3 getInstance() {
        return OooO0O0.OooO00o;
    }

    public final void init(Context context, Intent intent) {
        if (this.OooOOOo) {
            return;
        }
        this.OooOOOo = true;
        this.OooO00o = context.getApplicationContext();
        this.OooO0o = intent;
        this.OooOOO0 = Resources.getSystem().getDisplayMetrics().densityDpi;
    }

    public final void init(Context context, Intent intent, MediaProjection mediaProjection) {
        if (this.OooOOOo) {
            return;
        }
        this.OooOOOo = true;
        this.OooO00o = context.getApplicationContext();
        this.OooO0o = intent;
        this.OooOOO0 = Resources.getSystem().getDisplayMetrics().densityDpi;
        this.OooO0O0 = mediaProjection;
    }

    public final boolean isInited() {
        return this.OooOOOo;
    }

    public final ScreenShotImage obtainScreenShotImage() {
        ScreenShotImage screenShotImageOooO0o0;
        if (this.OooOOo0) {
            try {
                return OooO0o0();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
        synchronized (this.OooO0OO) {
            OooOO0o();
            int i = 0;
            while (!this.OooOOo0 && (i = i + 1) < 50) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            screenShotImageOooO0o0 = OooO0o0();
        }
        return screenShotImageOooO0o0;
    }

    public final Bitmap obtainScreenShotImageReturnBitmap(int i, int i2) {
        Bitmap bitmapOooO00o;
        if (this.OooOOo0) {
            try {
                return OooO00o(i, i2);
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
        synchronized (this.OooO0OO) {
            OooOO0o();
            int i3 = 0;
            while (!this.OooOOo0 && (i3 = i3 + 1) < 50) {
                try {
                    Thread.sleep(20L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            bitmapOooO00o = OooO00o(i, i2);
        }
        return bitmapOooO00o;
    }

    public final void recycler() {
        this.OooOOo0 = false;
        this.OooOOOO = false;
        this.OooOO0o = 0;
        this.OooOO0O = 0;
        this.OooOOO = 0;
        synchronized (this.OooO0OO) {
            HandlerThread handlerThread = this.OooO0Oo;
            if (handlerThread != null) {
                handlerThread.quit();
                this.OooO0Oo = null;
            }
            Handler handler = this.OooO0o0;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.OooO0o0 = null;
            }
            MediaProjection mediaProjection = this.OooO0O0;
            if (mediaProjection != null) {
                mediaProjection.stop();
                this.OooO0O0 = null;
            }
            VirtualDisplay virtualDisplay = this.OooO0oo;
            if (virtualDisplay != null) {
                virtualDisplay.release();
                this.OooO0oo = null;
            }
            ImageReader imageReader = this.OooO0oO;
            if (imageReader != null) {
                imageReader.close();
                this.OooO0oO = null;
            }
        }
    }

    public final void updateScreenSize() {
        WindowManager windowManager;
        if (this.OooOOOo) {
            int rotation = 0;
            this.OooOOo0 = false;
            int[] iArrOooO00o = zf.OooO00o(this.OooO00o);
            int i = iArrOooO00o[0];
            int i2 = iArrOooO00o[1];
            Context context = this.OooO00o;
            if (context != null && (windowManager = (WindowManager) context.getSystemService("window")) != null) {
                rotation = windowManager.getDefaultDisplay().getRotation();
            }
            this.OooOOO = rotation;
            if (this.OooOO0O == i && this.OooOO0o == i2) {
                return;
            }
            this.OooOO0O = i;
            this.OooOO0o = i2;
        }
    }
}
