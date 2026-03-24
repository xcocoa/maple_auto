package z2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class o00O00OO extends BitmapDrawable {
    private float OooO00o;
    private WeakReference<ImageView> OooO0O0;
    private boolean OooO0OO;
    private Matrix OooO0Oo;
    private float OooO0o;
    private int OooO0o0;

    public o00O00OO(Resources resources, Bitmap bitmap, ImageView imageView, float f, float f2) {
        super(resources, bitmap);
        this.OooO0O0 = new WeakReference<>(imageView);
        this.OooO00o = f;
        this.OooO0o = f2;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(new Matrix());
        OooO00o(imageView, bitmap, false);
    }

    private void OooO00o(ImageView imageView, Bitmap bitmap, boolean z) {
        int iOooO0Oo = OooO0Oo(imageView);
        if (iOooO0Oo <= 0) {
            return;
        }
        int iOooO0o = OooO0o(bitmap.getWidth(), bitmap.getHeight(), iOooO0Oo) + imageView.getPaddingTop() + imageView.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (iOooO0o != layoutParams.height) {
            layoutParams.height = iOooO0o;
            imageView.setLayoutParams(layoutParams);
        }
        if (z) {
            this.OooO0OO = true;
        }
    }

    private void OooO0O0(Canvas canvas, ImageView imageView, Bitmap bitmap) {
        Matrix matrixOooO0OO = OooO0OO(imageView, bitmap);
        if (matrixOooO0OO != null) {
            int paddingTop = imageView.getPaddingTop() + imageView.getPaddingBottom();
            int paddingLeft = imageView.getPaddingLeft() + imageView.getPaddingRight();
            if (paddingTop > 0 || paddingLeft > 0) {
                canvas.clipRect(0, 0, imageView.getWidth() - paddingLeft, imageView.getHeight() - paddingTop);
            }
            canvas.drawBitmap(bitmap, matrixOooO0OO, getPaint());
        }
        if (this.OooO0OO) {
            return;
        }
        OooO00o(imageView, bitmap, true);
    }

    private Matrix OooO0OO(ImageView imageView, Bitmap bitmap) {
        float f;
        float f2;
        int width = bitmap.getWidth();
        Matrix matrix = this.OooO0Oo;
        if (matrix != null && width == this.OooO0o0) {
            return matrix;
        }
        int height = bitmap.getHeight();
        int iOooO0Oo = OooO0Oo(imageView);
        int iOooO0o = OooO0o(width, height, iOooO0Oo);
        if (width <= 0 || height <= 0 || iOooO0Oo <= 0 || iOooO0o <= 0) {
            return null;
        }
        if (this.OooO0Oo == null || width != this.OooO0o0) {
            this.OooO0Oo = new Matrix();
            float f3 = 0.0f;
            if (width * iOooO0o >= iOooO0Oo * height) {
                f = iOooO0o / height;
                f3 = (iOooO0Oo - (width * f)) * 0.5f;
                f2 = 0.0f;
            } else {
                float f4 = iOooO0Oo / width;
                float fOooO0o0 = (iOooO0o - (height * f4)) * OooO0o0(width, height);
                f = f4;
                f2 = fOooO0o0;
            }
            this.OooO0Oo.setScale(f, f);
            this.OooO0Oo.postTranslate(f3, f2);
            this.OooO0o0 = width;
        }
        return this.OooO0Oo;
    }

    private int OooO0Oo(ImageView imageView) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int width = layoutParams != null ? layoutParams.width : 0;
        if (width <= 0) {
            width = imageView.getWidth();
        }
        return width > 0 ? (width - imageView.getPaddingLeft()) - imageView.getPaddingRight() : width;
    }

    private int OooO0o(int i, int i2, int i3) {
        float f = this.OooO00o;
        if (f == Float.MAX_VALUE) {
            f = i2 / i;
        }
        return (int) (i3 * f);
    }

    private float OooO0o0(int i, int i2) {
        float f = this.OooO0o;
        return f != Float.MAX_VALUE ? (1.0f - f) / 2.0f : ((1.5f - Math.max(1.0f, Math.min(1.5f, i2 / i))) / 2.0f) + 0.25f;
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        WeakReference<ImageView> weakReference = this.OooO0O0;
        ImageView imageView = weakReference != null ? weakReference.get() : null;
        if (this.OooO00o == 0.0f || imageView == null) {
            super.draw(canvas);
        } else {
            OooO0O0(canvas, imageView, getBitmap());
        }
    }
}
