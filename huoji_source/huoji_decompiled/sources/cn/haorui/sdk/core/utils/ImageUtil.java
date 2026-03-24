package cn.haorui.sdk.core.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.Log;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public class ImageUtil {
    private static final String TAG = "ImageUtil";

    public static Bitmap rsBlur(Context context, Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        try {
            Bitmap.Config config = bitmap.getConfig();
            Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
            if (config != config2) {
                bitmap = bitmap.copy(config2, true);
            }
            RenderScript renderScriptCreate = RenderScript.create(context);
            Log.i(TAG, "scale size:" + bitmap.getWidth() + Marker.ANY_MARKER + bitmap.getHeight());
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.setRadius((float) i);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmap);
            renderScriptCreate.destroy();
            return bitmap;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
