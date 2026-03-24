package z2;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RawRes;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import pl.droidsonroids.gif.R;

/* JADX INFO: loaded from: classes2.dex */
public final class kd0 {
    public static final String OooO00o = "http://schemas.android.com/apk/res/android";
    public static final List<String> OooO0O0 = Arrays.asList("raw", com.anythink.expressad.foundation.h.i.c, "mipmap");

    public static class OooO00o extends OooO0O0 {
        public final int OooO0OO;
        public final int OooO0Oo;

        public OooO00o() {
            this.OooO0OO = 0;
            this.OooO0Oo = 0;
        }

        public OooO00o(ImageView imageView, AttributeSet attributeSet, int i, int i2) {
            super(imageView, attributeSet, i, i2);
            this.OooO0OO = OooO00o(imageView, attributeSet, true);
            this.OooO0Oo = OooO00o(imageView, attributeSet, false);
        }

        private static int OooO00o(ImageView imageView, AttributeSet attributeSet, boolean z) {
            int attributeResourceValue = attributeSet.getAttributeResourceValue(kd0.OooO00o, z ? "src" : "background", 0);
            if (attributeResourceValue > 0) {
                if (kd0.OooO0O0.contains(imageView.getResources().getResourceTypeName(attributeResourceValue)) && !kd0.OooO0o0(imageView, z, attributeResourceValue)) {
                    return attributeResourceValue;
                }
            }
            return 0;
        }
    }

    public static class OooO0O0 {
        public boolean OooO00o;
        public final int OooO0O0;

        public OooO0O0() {
            this.OooO00o = false;
            this.OooO0O0 = -1;
        }

        public OooO0O0(View view, AttributeSet attributeSet, int i, int i2) {
            TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.GifView, i, i2);
            this.OooO00o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.GifView_freezesAnimation, false);
            this.OooO0O0 = typedArrayObtainStyledAttributes.getInt(R.styleable.GifView_loopCount, -1);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private kd0() {
    }

    public static void OooO00o(int i, Drawable drawable) {
        if (drawable instanceof ed0) {
            ((ed0) drawable).Oooo000(i);
        }
    }

    public static float OooO0O0(@NonNull Resources resources, @DrawableRes @RawRes int i) {
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.density;
        if (i2 == 0) {
            i2 = 160;
        } else if (i2 == 65535) {
            i2 = 0;
        }
        int i3 = resources.getDisplayMetrics().densityDpi;
        if (i2 <= 0 || i3 <= 0) {
            return 1.0f;
        }
        return i3 / i2;
    }

    public static OooO00o OooO0OO(ImageView imageView, AttributeSet attributeSet, int i, int i2) {
        if (attributeSet == null || imageView.isInEditMode()) {
            return new OooO00o();
        }
        OooO00o oooO00o = new OooO00o(imageView, attributeSet, i, i2);
        int i3 = oooO00o.OooO0O0;
        if (i3 >= 0) {
            OooO00o(i3, imageView.getDrawable());
            OooO00o(i3, imageView.getBackground());
        }
        return oooO00o;
    }

    public static boolean OooO0Oo(ImageView imageView, Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            imageView.setImageDrawable(new ed0(imageView.getContext().getContentResolver(), uri));
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean OooO0o0(ImageView imageView, boolean z, int i) {
        Resources resources = imageView.getResources();
        if (resources != null) {
            try {
                if (!OooO0O0.contains(resources.getResourceTypeName(i))) {
                    return false;
                }
                ed0 ed0Var = new ed0(resources, i);
                if (z) {
                    imageView.setImageDrawable(ed0Var);
                    return true;
                }
                imageView.setBackground(ed0Var);
                return true;
            } catch (Resources.NotFoundException | IOException unused) {
            }
        }
        return false;
    }
}
