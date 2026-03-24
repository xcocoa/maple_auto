package z2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class cl {
    private static final String OooOOOo = "TextAppearance";
    private static final int OooOOo = 2;
    private static final int OooOOo0 = 1;
    private static final int OooOOoo = 3;

    @Nullable
    public final ColorStateList OooO;
    public final float OooO00o;

    @Nullable
    public final ColorStateList OooO0O0;

    @Nullable
    public final ColorStateList OooO0OO;

    @Nullable
    public final ColorStateList OooO0Oo;
    public final int OooO0o;
    public final int OooO0o0;

    @Nullable
    public final String OooO0oO;
    public final boolean OooO0oo;
    public final float OooOO0;
    public final float OooOO0O;
    public final float OooOO0o;
    private boolean OooOOO = false;

    @FontRes
    private final int OooOOO0;

    @Nullable
    private Typeface OooOOOO;

    public class OooO00o extends ResourcesCompat.FontCallback {
        public final /* synthetic */ TextPaint OooO00o;
        public final /* synthetic */ ResourcesCompat.FontCallback OooO0O0;

        public OooO00o(TextPaint textPaint, ResourcesCompat.FontCallback fontCallback) {
            this.OooO00o = textPaint;
            this.OooO0O0 = fontCallback;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
            cl.this.OooO0Oo();
            cl.this.OooOOO = true;
            this.OooO0O0.onFontRetrievalFailed(i);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            cl clVar = cl.this;
            clVar.OooOOOO = Typeface.create(typeface, clVar.OooO0o0);
            cl.this.OooO(this.OooO00o, typeface);
            cl.this.OooOOO = true;
            this.OooO0O0.onFontRetrieved(typeface);
        }
    }

    public cl(Context context, @StyleRes int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.TextAppearance);
        this.OooO00o = typedArrayObtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f);
        this.OooO0O0 = bl.OooO00o(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColor);
        this.OooO0OO = bl.OooO00o(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        this.OooO0Oo = bl.OooO00o(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.OooO0o0 = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.OooO0o = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int iOooO0OO = bl.OooO0OO(typedArrayObtainStyledAttributes, R.styleable.TextAppearance_fontFamily, R.styleable.TextAppearance_android_fontFamily);
        this.OooOOO0 = typedArrayObtainStyledAttributes.getResourceId(iOooO0OO, 0);
        this.OooO0oO = typedArrayObtainStyledAttributes.getString(iOooO0OO);
        this.OooO0oo = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.OooO = bl.OooO00o(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.OooOO0 = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.OooOO0O = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.OooOO0o = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0Oo() {
        if (this.OooOOOO == null) {
            this.OooOOOO = Typeface.create(this.OooO0oO, this.OooO0o0);
        }
        if (this.OooOOOO == null) {
            int i = this.OooO0o;
            this.OooOOOO = i != 1 ? i != 2 ? i != 3 ? Typeface.DEFAULT : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            Typeface typeface = this.OooOOOO;
            if (typeface != null) {
                this.OooOOOO = Typeface.create(typeface, this.OooO0o0);
            }
        }
    }

    public void OooO(@NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.OooO0o0;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.OooO00o);
    }

    public void OooO0o(Context context, TextPaint textPaint, @NonNull ResourcesCompat.FontCallback fontCallback) {
        if (!this.OooOOO) {
            OooO0Oo();
            if (!context.isRestricted()) {
                try {
                    ResourcesCompat.getFont(context, this.OooOOO0, new OooO00o(textPaint, fontCallback), null);
                    return;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                    return;
                } catch (Exception e) {
                    Log.d(OooOOOo, "Error loading font " + this.OooO0oO, e);
                    return;
                }
            }
            this.OooOOO = true;
        }
        OooO(textPaint, this.OooOOOO);
    }

    @NonNull
    @VisibleForTesting
    public Typeface OooO0o0(Context context) {
        if (this.OooOOO) {
            return this.OooOOOO;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.OooOOO0);
                this.OooOOOO = font;
                if (font != null) {
                    this.OooOOOO = Typeface.create(font, this.OooO0o0);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d(OooOOOo, "Error loading font " + this.OooO0oO, e);
            }
        }
        OooO0Oo();
        this.OooOOO = true;
        return this.OooOOOO;
    }

    public void OooO0oO(Context context, TextPaint textPaint, ResourcesCompat.FontCallback fontCallback) {
        OooO0oo(context, textPaint, fontCallback);
        ColorStateList colorStateList = this.OooO0O0;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.OooOO0o;
        float f2 = this.OooOO0;
        float f3 = this.OooOO0O;
        ColorStateList colorStateList2 = this.OooO;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void OooO0oo(Context context, TextPaint textPaint, @Nullable ResourcesCompat.FontCallback fontCallback) {
        Typeface typefaceOooO0o0;
        if (dl.OooO0O0()) {
            typefaceOooO0o0 = OooO0o0(context);
        } else {
            OooO0o(context, textPaint, fontCallback);
            if (this.OooOOO) {
                return;
            } else {
                typefaceOooO0o0 = this.OooOOOO;
            }
        }
        OooO(textPaint, typefaceOooO0o0);
    }
}
