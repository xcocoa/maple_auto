package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.anythink.expressad.foundation.h.i;
import java.io.IOException;
import java.lang.ref.WeakReference;
import z2.cd0;
import z2.kd0;
import z2.ld0;
import z2.pd0;

/* JADX INFO: loaded from: classes2.dex */
public class GifTextureView extends TextureView {
    private static final ImageView.ScaleType[] OooooOo = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    private ImageView.ScaleType OoooOoO;
    private final Matrix OoooOoo;
    private ld0 Ooooo00;
    private OooO0OO Ooooo0o;
    private float OooooO0;
    private kd0.OooO0O0 OooooOO;

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            OooO00o = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                OooO00o[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public interface OooO0O0 {
        void OooO00o(Canvas canvas);
    }

    public static class OooO0OO extends Thread implements TextureView.SurfaceTextureListener {
        public final cd0 OoooOoO;
        private GifInfoHandle OoooOoo;
        private IOException Ooooo00;
        public long[] Ooooo0o;
        private final WeakReference<GifTextureView> OooooO0;

        public class OooO00o implements Runnable {
            public final /* synthetic */ GifTextureView OoooOoO;

            public OooO00o(GifTextureView gifTextureView) {
                this.OoooOoO = gifTextureView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.OoooOoO.OooO(OooO0OO.this.OoooOoo);
            }
        }

        public OooO0OO(GifTextureView gifTextureView) {
            super("GifRenderThread");
            this.OoooOoO = new cd0();
            this.OoooOoo = new GifInfoHandle();
            this.OooooO0 = new WeakReference<>(gifTextureView);
        }

        public void OooO0OO(@NonNull GifTextureView gifTextureView, @Nullable OooO0O0 oooO0O0) {
            this.OoooOoO.OooO0O0();
            gifTextureView.setSuperSurfaceTextureListener(oooO0O0 != null ? new pd0(oooO0O0) : null);
            this.OoooOoo.OooOoO();
            interrupt();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            GifTextureView gifTextureView = this.OooooO0.get();
            if (gifTextureView != null) {
                gifTextureView.OooO(this.OoooOoo);
            }
            this.OoooOoO.OooO0OO();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.OoooOoO.OooO0O0();
            this.OoooOoo.OooOoO();
            interrupt();
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                GifTextureView gifTextureView = this.OooooO0.get();
                if (gifTextureView == null) {
                    return;
                }
                GifInfoHandle gifInfoHandleOooO0OO = gifTextureView.Ooooo00.OooO0OO();
                this.OoooOoo = gifInfoHandleOooO0OO;
                gifInfoHandleOooO0OO.Oooo0OO((char) 1, gifTextureView.isOpaque());
                if (gifTextureView.OooooOO.OooO0O0 >= 0) {
                    this.OoooOoo.Oooo0O0(gifTextureView.OooooOO.OooO0O0);
                }
                GifTextureView gifTextureView2 = this.OooooO0.get();
                if (gifTextureView2 == null) {
                    this.OoooOoo.OooOoOO();
                    return;
                }
                gifTextureView2.setSuperSurfaceTextureListener(this);
                boolean zIsAvailable = gifTextureView2.isAvailable();
                this.OoooOoO.OooO0Oo(zIsAvailable);
                if (zIsAvailable) {
                    gifTextureView2.post(new OooO00o(gifTextureView2));
                }
                this.OoooOoo.Oooo0o0(gifTextureView2.OooooO0);
                while (!isInterrupted()) {
                    try {
                        this.OoooOoO.OooO00o();
                        GifTextureView gifTextureView3 = this.OooooO0.get();
                        if (gifTextureView3 == null) {
                            break;
                        }
                        SurfaceTexture surfaceTexture = gifTextureView3.getSurfaceTexture();
                        if (surfaceTexture != null) {
                            Surface surface = new Surface(surfaceTexture);
                            try {
                                this.OoooOoo.OooO00o(surface, this.Ooooo0o);
                            } finally {
                                surface.release();
                            }
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.OoooOoo.OooOoOO();
                this.OoooOoo = new GifInfoHandle();
            } catch (IOException e) {
                this.Ooooo00 = e;
            }
        }
    }

    public GifTextureView(Context context) {
        super(context);
        this.OoooOoO = ImageView.ScaleType.FIT_CENTER;
        this.OoooOoo = new Matrix();
        this.OooooO0 = 1.0f;
        OooO0oO(null, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoO = ImageView.ScaleType.FIT_CENTER;
        this.OoooOoo = new Matrix();
        this.OooooO0 = 1.0f;
        OooO0oO(attributeSet, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = ImageView.ScaleType.FIT_CENTER;
        this.OoooOoo = new Matrix();
        this.OooooO0 = 1.0f;
        OooO0oO(attributeSet, i, 0);
    }

    @RequiresApi(21)
    public GifTextureView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.OoooOoO = ImageView.ScaleType.FIT_CENTER;
        this.OoooOoo = new Matrix();
        this.OooooO0 = 1.0f;
        OooO0oO(attributeSet, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void OooO(GifInfoHandle gifInfoHandle) {
        Matrix.ScaleToFit scaleToFit;
        Matrix matrix = new Matrix();
        float width = getWidth();
        float height = getHeight();
        float fOooOOo0 = gifInfoHandle.OooOOo0() / width;
        float fOooO = gifInfoHandle.OooO() / height;
        RectF rectF = new RectF(0.0f, 0.0f, gifInfoHandle.OooOOo0(), gifInfoHandle.OooO());
        RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
        float fMin = 1.0f;
        switch (OooO00o.OooO00o[this.OoooOoO.ordinal()]) {
            case 1:
                matrix.setScale(fOooOOo0, fOooO, width / 2.0f, height / 2.0f);
                super.setTransform(matrix);
                break;
            case 2:
                fMin = 1.0f / Math.min(fOooOOo0, fOooO);
                matrix.setScale(fOooOOo0 * fMin, fMin * fOooO, width / 2.0f, height / 2.0f);
                super.setTransform(matrix);
                break;
            case 3:
                if (gifInfoHandle.OooOOo0() > width || gifInfoHandle.OooO() > height) {
                    fMin = Math.min(1.0f / fOooOOo0, 1.0f / fOooO);
                }
                matrix.setScale(fOooOOo0 * fMin, fMin * fOooO, width / 2.0f, height / 2.0f);
                super.setTransform(matrix);
                break;
            case 4:
                scaleToFit = Matrix.ScaleToFit.CENTER;
                matrix.setRectToRect(rectF, rectF2, scaleToFit);
                matrix.preScale(fOooOOo0, fOooO);
                super.setTransform(matrix);
                break;
            case 5:
                scaleToFit = Matrix.ScaleToFit.END;
                matrix.setRectToRect(rectF, rectF2, scaleToFit);
                matrix.preScale(fOooOOo0, fOooO);
                super.setTransform(matrix);
                break;
            case 6:
                scaleToFit = Matrix.ScaleToFit.START;
                matrix.setRectToRect(rectF, rectF2, scaleToFit);
                matrix.preScale(fOooOOo0, fOooO);
                super.setTransform(matrix);
                break;
            case 7:
                break;
            case 8:
                matrix.set(this.OoooOoo);
                matrix.preScale(fOooOOo0, fOooO);
                super.setTransform(matrix);
                break;
            default:
                super.setTransform(matrix);
                break;
        }
    }

    private static ld0 OooO0o(TypedArray typedArray) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(R.styleable.GifTextureView_gifSource, typedValue)) {
            return null;
        }
        if (typedValue.resourceId != 0) {
            String resourceTypeName = typedArray.getResources().getResourceTypeName(typedValue.resourceId);
            if (kd0.OooO0O0.contains(resourceTypeName)) {
                return new ld0.OooOOO(typedArray.getResources(), typedValue.resourceId);
            }
            if (!i.g.equals(resourceTypeName)) {
                throw new IllegalArgumentException("Expected string, drawable, mipmap or raw resource type. '" + resourceTypeName + "' is not supported");
            }
        }
        return new ld0.OooO0OO(typedArray.getResources().getAssets(), typedValue.string.toString());
    }

    private void OooO0oO(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            int attributeIntValue = attributeSet.getAttributeIntValue(kd0.OooO00o, "scaleType", -1);
            if (attributeIntValue >= 0) {
                ImageView.ScaleType[] scaleTypeArr = OooooOo;
                if (attributeIntValue < scaleTypeArr.length) {
                    this.OoooOoO = scaleTypeArr[attributeIntValue];
                }
            }
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.GifTextureView, i, i2);
            this.Ooooo00 = OooO0o(typedArrayObtainStyledAttributes);
            super.setOpaque(typedArrayObtainStyledAttributes.getBoolean(R.styleable.GifTextureView_isOpaque, false));
            typedArrayObtainStyledAttributes.recycle();
            this.OooooOO = new kd0.OooO0O0(this, attributeSet, i, i2);
        } else {
            super.setOpaque(false);
            this.OooooOO = new kd0.OooO0O0();
        }
        if (isInEditMode()) {
            return;
        }
        OooO0OO oooO0OO = new OooO0OO(this);
        this.Ooooo0o = oooO0OO;
        if (this.Ooooo00 != null) {
            oooO0OO.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuperSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        super.setSurfaceTextureListener(surfaceTextureListener);
    }

    public synchronized void OooO0oo(@Nullable ld0 ld0Var, @Nullable OooO0O0 oooO0O0) {
        this.Ooooo0o.OooO0OO(this, oooO0O0);
        try {
            this.Ooooo0o.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.Ooooo00 = ld0Var;
        OooO0OO oooO0OO = new OooO0OO(this);
        this.Ooooo0o = oooO0OO;
        if (ld0Var != null) {
            oooO0OO.start();
        }
    }

    @Nullable
    public IOException getIOException() {
        return this.Ooooo0o.Ooooo00 != null ? this.Ooooo0o.Ooooo00 : GifIOException.fromCode(this.Ooooo0o.OoooOoo.OooOO0o());
    }

    public ImageView.ScaleType getScaleType() {
        return this.OoooOoO;
    }

    @Override // android.view.TextureView
    public TextureView.SurfaceTextureListener getSurfaceTextureListener() {
        return null;
    }

    @Override // android.view.TextureView
    public Matrix getTransform(Matrix matrix) {
        if (matrix == null) {
            matrix = new Matrix();
        }
        matrix.set(this.OoooOoo);
        return matrix;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.Ooooo0o.OooO0OO(this, null);
        super.onDetachedFromWindow();
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        this.Ooooo0o.Ooooo0o = gifViewSavedState.mStates[0];
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        OooO0OO oooO0OO = this.Ooooo0o;
        oooO0OO.Ooooo0o = oooO0OO.OoooOoo.OooOOOO();
        return new GifViewSavedState(super.onSaveInstanceState(), this.OooooOO.OooO00o ? this.Ooooo0o.Ooooo0o : null);
    }

    public void setFreezesAnimation(boolean z) {
        this.OooooOO.OooO00o = z;
    }

    public void setImageMatrix(Matrix matrix) {
        setTransform(matrix);
    }

    public synchronized void setInputSource(@Nullable ld0 ld0Var) {
        OooO0oo(ld0Var, null);
    }

    @Override // android.view.TextureView
    public void setOpaque(boolean z) {
        if (z != isOpaque()) {
            super.setOpaque(z);
            setInputSource(this.Ooooo00);
        }
    }

    public void setScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.OoooOoO = scaleType;
        OooO(this.Ooooo0o.OoooOoo);
    }

    public void setSpeed(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.OooooO0 = f;
        this.Ooooo0o.OoooOoo.Oooo0o0(f);
    }

    @Override // android.view.TextureView
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
    }

    @Override // android.view.TextureView
    public void setTransform(Matrix matrix) {
        this.OoooOoo.set(matrix);
        OooO(this.Ooooo0o.OoooOoo);
    }
}
