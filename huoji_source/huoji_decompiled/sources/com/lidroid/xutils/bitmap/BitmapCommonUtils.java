package com.lidroid.xutils.bitmap;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapCommonUtils {
    private static BitmapSize screenSize;

    private BitmapCommonUtils() {
    }

    private static int getImageViewFieldValue(Object obj, String str) {
        if (obj instanceof ImageView) {
            try {
                Field declaredField = ImageView.class.getDeclaredField(str);
                declaredField.setAccessible(true);
                int iIntValue = ((Integer) declaredField.get(obj)).intValue();
                if (iIntValue > 0 && iIntValue < Integer.MAX_VALUE) {
                    return iIntValue;
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static BitmapSize getScreenSize(Context context) {
        if (screenSize == null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            screenSize = new BitmapSize(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        return screenSize;
    }

    public static BitmapSize optimizeMaxSizeByView(View view, int i, int i2) {
        if (i > 0 && i2 > 0) {
            return new BitmapSize(i, i2);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            int i3 = layoutParams.width;
            if (i3 > 0) {
                i = i3;
            } else if (i3 != -2) {
                i = view.getWidth();
            }
            int i4 = layoutParams.height;
            if (i4 > 0) {
                i2 = i4;
            } else if (i4 != -2) {
                i2 = view.getHeight();
            }
        }
        if (i <= 0) {
            i = getImageViewFieldValue(view, "mMaxWidth");
        }
        if (i2 <= 0) {
            i2 = getImageViewFieldValue(view, "mMaxHeight");
        }
        BitmapSize screenSize2 = getScreenSize(view.getContext());
        if (i <= 0) {
            i = screenSize2.getWidth();
        }
        if (i2 <= 0) {
            i2 = screenSize2.getHeight();
        }
        return new BitmapSize(i, i2);
    }
}
