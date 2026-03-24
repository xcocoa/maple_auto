package z2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RSIllegalArgumentException;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;
import android.widget.Toast;
import razerdp.basepopup.BasePopupWindow;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public class ef0 {
    private static final String OooO00o = "BlurHelper";
    private static int OooO0O0;
    private static long OooO0OO;

    public static class OooO00o implements Runnable {
        public final /* synthetic */ Context OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooO00o(Context context, String str) {
            this.OoooOoO = context;
            this.OoooOoo = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ef0.OooOO0o(this.OoooOoO, this.OoooOoo);
        }
    }

    public static float OooO(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    public static Bitmap OooO0O0(Context context, Bitmap bitmap, int i, int i2, float f) {
        OooO0OO = System.currentTimeMillis();
        if (OooOO0()) {
            PopupLog.OooO(OooO00o, "脚本模糊");
            return OooOO0O(context, bitmap, i, i2, f);
        }
        PopupLog.OooO(OooO00o, "快速模糊");
        return OooO0o0(context, bitmap, i, i2, f);
    }

    public static Bitmap OooO0OO(Context context, View view, float f, float f2) {
        return OooO0Oo(context, view, f, f2, true);
    }

    public static Bitmap OooO0Oo(Context context, View view, float f, float f2, boolean z) {
        return OooO0O0(context, OooO0oO(view, f, z), view.getWidth(), view.getHeight(), f2);
    }

    private static int OooO0o(Context context) {
        int identifier;
        if (context != null && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", g6.OooO0O0)) > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static Bitmap OooO0o0(Context context, Bitmap bitmap, int i, int i2, float f) {
        Bitmap bitmapOooO00o;
        if (bitmap == null || bitmap.isRecycled() || (bitmapOooO00o = ff0.OooO00o(bitmap, (int) OooO(f, 0.0f, 20.0f), false)) == null || bitmapOooO00o.isRecycled()) {
            return null;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapOooO00o, i, i2, true);
        long jCurrentTimeMillis = System.currentTimeMillis() - OooO0OO;
        if (BasePopupWindow.o00o0O) {
            OooOO0o(context, "模糊用时：【" + jCurrentTimeMillis + "ms】");
        }
        PopupLog.OooO(OooO00o, "模糊用时：【" + jCurrentTimeMillis + "ms】");
        return bitmapCreateScaledBitmap;
    }

    public static Bitmap OooO0oO(View view, float f, boolean z) {
        if (view == null || view.getWidth() <= 0 || view.getHeight() <= 0) {
            PopupLog.OooO0OO("getViewBitmap  >>  宽或者高为空", new Object[0]);
            return null;
        }
        if (OooO0O0 <= 0) {
            OooO0O0 = OooO0o(view.getContext());
        }
        PopupLog.OooO0oo("模糊原始图像分辨率 [" + view.getWidth() + " x " + view.getHeight() + "]");
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (view.getWidth() * f), (int) (view.getHeight() * f), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Matrix matrix = new Matrix();
            matrix.preScale(f, f);
            canvas.setMatrix(matrix);
            Drawable background = view.getBackground();
            if (background == null) {
                canvas.drawColor(Color.parseColor("#FAFAFA"));
            } else {
                background.draw(canvas);
            }
            if (z && OooO0O0 > 0 && Build.VERSION.SDK_INT >= 21 && (view.getContext() instanceof Activity)) {
                int statusBarColor = ((Activity) view.getContext()).getWindow().getStatusBarColor();
                Paint paint = new Paint(1);
                paint.setColor(statusBarColor);
                canvas.drawRect(new Rect(0, 0, view.getWidth(), OooO0O0), paint);
            }
            view.draw(canvas);
            PopupLog.OooO0oo("模糊缩放图像分辨率 [" + bitmapCreateBitmap.getWidth() + " x " + bitmapCreateBitmap.getHeight() + "]");
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError unused) {
            System.gc();
            return null;
        }
    }

    public static Bitmap OooO0oo(View view, boolean z) {
        return OooO0oO(view, 1.0f, z);
    }

    public static boolean OooOO0() {
        return Build.VERSION.SDK_INT > 17;
    }

    @TargetApi(17)
    public static Bitmap OooOO0O(Context context, Bitmap bitmap, int i, int i2, float f) {
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = null;
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        RenderScript renderScriptCreate = RenderScript.create(context.getApplicationContext());
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
        Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
        try {
            scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, allocationCreateFromBitmap.getElement());
        } catch (RSIllegalArgumentException e) {
            if (e.getMessage().contains("Unsuported element type")) {
                scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            }
        }
        if (scriptIntrinsicBlurCreate == null) {
            PopupLog.OooO0OO(OooO00o, "脚本模糊失败，转fastBlur");
            return OooO0o0(context, bitmap, i, i2, f);
        }
        scriptIntrinsicBlurCreate.setRadius(OooO(f, 0.0f, 20.0f));
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
        allocationCreateTyped.copyTo(bitmap);
        renderScriptCreate.destroy();
        allocationCreateFromBitmap.destroy();
        allocationCreateTyped.destroy();
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        long jCurrentTimeMillis = System.currentTimeMillis() - OooO0OO;
        if (BasePopupWindow.o00o0O) {
            OooOO0o(context, "模糊用时：【" + jCurrentTimeMillis + "ms】");
        }
        PopupLog.OooO(OooO00o, "模糊用时：【" + jCurrentTimeMillis + "ms】");
        return bitmapCreateScaledBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void OooOO0o(Context context, String str) {
        if (Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper()) {
            Toast.makeText(context.getApplicationContext(), str, 0).show();
        } else if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(new OooO00o(context, str));
        }
    }
}
