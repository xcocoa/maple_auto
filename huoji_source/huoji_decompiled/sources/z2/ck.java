package z2;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class ck extends Drawable implements TintAwareDrawable, Drawable.Callback {
    private static final int[] o0000o = {R.attr.state_enabled};
    private static final boolean o0000o0o = false;
    private static final String o0000oO0 = "http://schemas.android.com/apk/res-auto";

    @Nullable
    private ColorStateList OoooOoO;
    private float OoooOoo;
    private float Ooooo00;

    @Nullable
    private ColorStateList Ooooo0o;
    private float OooooO0;

    @Nullable
    private ColorStateList OooooOO;

    @Nullable
    private CharSequence OooooOo;

    @Nullable
    private cl Oooooo;

    @Nullable
    private CharSequence Oooooo0;
    private final ResourcesCompat.FontCallback OoooooO = new OooO00o();
    private boolean Ooooooo;

    @ColorInt
    private int o0000;
    private final TextPaint o00000;
    private float o000000;
    private float o000000O;
    private final Context o000000o;

    @Nullable
    private final Paint o00000O;
    private final Paint o00000O0;
    private final Paint.FontMetrics o00000OO;
    private final RectF o00000Oo;
    private final PointF o00000o0;

    @ColorInt
    private int o00000oO;

    @ColorInt
    private int o00000oo;

    @Nullable
    private PorterDuff.Mode o0000O;

    @Nullable
    private ColorFilter o0000O0;
    private boolean o0000O00;

    @Nullable
    private PorterDuffColorFilter o0000O0O;
    private boolean o0000OO;
    private int[] o0000OO0;

    @Nullable
    private ColorStateList o0000OOO;
    private WeakReference<OooO0O0> o0000OOo;
    private float o0000Oo;
    private boolean o0000Oo0;
    private TextUtils.TruncateAt o0000OoO;

    @ColorInt
    private int o0000Ooo;
    private boolean o0000o0;
    private int o0000o0O;
    private int o0000oO;

    @ColorInt
    private int o0000oo;

    @Nullable
    private ColorStateList o000OO;
    private float o000OOo;
    private float o00O0O;
    private boolean o00Oo0;

    @Nullable
    private Drawable o00Ooo;

    @Nullable
    private ColorStateList o00o0O;
    private boolean o00oO0O;
    private boolean o00oO0o;
    private float o00ooo;
    private float o0O0O00;
    private float o0OO00O;
    private float o0OOO0o;
    private float o0Oo0oo;

    @Nullable
    private Drawable o0OoOo0;

    @Nullable
    private Drawable o0ooOO0;

    @Nullable
    private lj o0ooOOo;

    @Nullable
    private lj o0ooOoO;

    @Nullable
    private CharSequence oo000o;
    private float oo0o0Oo;

    @Nullable
    private ColorStateList ooOO;

    public class OooO00o extends ResourcesCompat.FontCallback {
        public OooO00o() {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            ck.this.o0000Oo0 = true;
            ck.this.o00oO0o();
            ck.this.invalidateSelf();
        }
    }

    public interface OooO0O0 {
        void OooO00o();
    }

    private ck(Context context) {
        TextPaint textPaint = new TextPaint(1);
        this.o00000 = textPaint;
        this.o00000O0 = new Paint(1);
        this.o00000OO = new Paint.FontMetrics();
        this.o00000Oo = new RectF();
        this.o00000o0 = new PointF();
        this.o0000oO = 255;
        this.o0000O = PorterDuff.Mode.SRC_IN;
        this.o0000OOo = new WeakReference<>(null);
        this.o0000Oo0 = true;
        this.o000000o = context;
        this.OooooOo = "";
        textPaint.density = context.getResources().getDisplayMetrics().density;
        this.o00000O = null;
        int[] iArr = o0000o;
        setState(iArr);
        o0000oo0(iArr);
        this.o0000o0 = true;
    }

    private void OooO(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.Oooooo0 != null) {
            float fOooO0Oo = this.o0OOO0o + OooO0Oo() + this.oo0o0Oo;
            float fOooO0oo = this.o000000O + OooO0oo() + this.o0O0O00;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + fOooO0Oo;
                rectF.right = rect.right - fOooO0oo;
            } else {
                rectF.left = rect.left + fOooO0oo;
                rectF.right = rect.right - fOooO0Oo;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void OooO0O0(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.o00Ooo) {
                if (drawable.isStateful()) {
                    drawable.setState(Oooo0oo());
                }
                DrawableCompat.setTintList(drawable, this.o00o0O);
            } else if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    private void OooO0OO(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (o000OoOo() || o000OoOO()) {
            float f = this.o0OOO0o + this.o0Oo0oo;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + this.o00O0O;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - this.o00O0O;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.o00O0O;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    private void OooO0o(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (o000Ooo0()) {
            float f = this.o000000O + this.o000000;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.o00ooo;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.o00ooo;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.o00ooo;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    private void OooO0o0(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (o000Ooo0()) {
            float f = this.o000000O + this.o000000 + this.o00ooo + this.o000OOo + this.o0O0O00;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    private void OooO0oO(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (o000Ooo0()) {
            float f = this.o000000O + this.o000000 + this.o00ooo + this.o000OOo + this.o0O0O00;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private float OooO0oo() {
        if (o000Ooo0()) {
            return this.o000OOo + this.o00ooo + this.o000000;
        }
        return 0.0f;
    }

    private float OooOO0() {
        this.o00000.getFontMetrics(this.o00000OO);
        Paint.FontMetrics fontMetrics = this.o00000OO;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float OooOO0o(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.o00000.measureText(charSequence, 0, charSequence.length());
    }

    public static ck OooOOO(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        ck ckVar = new ck(context);
        ckVar.oo000o(attributeSet, i, i2);
        return ckVar;
    }

    private boolean OooOOO0() {
        return this.o00oO0O && this.o0ooOO0 != null && this.o00oO0o;
    }

    public static ck OooOOOO(Context context, @XmlRes int i) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            if (!TextUtils.equals(xml.getName(), "chip")) {
                throw new XmlPullParserException("Must have a <chip> start tag");
            }
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            int styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
            if (styleAttribute == 0) {
                styleAttribute = com.google.android.material.R.style.Widget_MaterialComponents_Chip_Entry;
            }
            return OooOOO(context, attributeSetAsAttributeSet, com.google.android.material.R.attr.chipStandaloneStyle, styleAttribute);
        } catch (IOException | XmlPullParserException e) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load chip resource ID #0x" + Integer.toHexString(i));
            notFoundException.initCause(e);
            throw notFoundException;
        }
    }

    private void OooOOOo(@NonNull Canvas canvas, Rect rect) {
        if (o000OoOO()) {
            OooO0OO(rect, this.o00000Oo);
            RectF rectF = this.o00000Oo;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.o0ooOO0.setBounds(0, 0, (int) this.o00000Oo.width(), (int) this.o00000Oo.height());
            this.o0ooOO0.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private void OooOOo(@NonNull Canvas canvas, Rect rect) {
        if (o000OoOo()) {
            OooO0OO(rect, this.o00000Oo);
            RectF rectF = this.o00000Oo;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.o0OoOo0.setBounds(0, 0, (int) this.o00000Oo.width(), (int) this.o00000Oo.height());
            this.o0OoOo0.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private void OooOOo0(@NonNull Canvas canvas, Rect rect) {
        this.o00000O0.setColor(this.o0000Ooo);
        this.o00000O0.setStyle(Paint.Style.FILL);
        this.o00000O0.setColorFilter(OooooO0());
        this.o00000Oo.set(rect);
        RectF rectF = this.o00000Oo;
        float f = this.Ooooo00;
        canvas.drawRoundRect(rectF, f, f, this.o00000O0);
    }

    private void OooOOoo(@NonNull Canvas canvas, Rect rect) {
        if (this.OooooO0 > 0.0f) {
            this.o00000O0.setColor(this.o00000oO);
            this.o00000O0.setStyle(Paint.Style.STROKE);
            this.o00000O0.setColorFilter(OooooO0());
            RectF rectF = this.o00000Oo;
            float f = rect.left;
            float f2 = this.OooooO0;
            rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
            float f3 = this.Ooooo00 - (this.OooooO0 / 2.0f);
            canvas.drawRoundRect(this.o00000Oo, f3, f3, this.o00000O0);
        }
    }

    private void OooOo0(@NonNull Canvas canvas, Rect rect) {
        this.o00000O0.setColor(this.o00000oo);
        this.o00000O0.setStyle(Paint.Style.FILL);
        this.o00000Oo.set(rect);
        RectF rectF = this.o00000Oo;
        float f = this.Ooooo00;
        canvas.drawRoundRect(rectF, f, f, this.o00000O0);
    }

    private void OooOo00(@NonNull Canvas canvas, Rect rect) {
        if (o000Ooo0()) {
            OooO0o(rect, this.o00000Oo);
            RectF rectF = this.o00000Oo;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.o00Ooo.setBounds(0, 0, (int) this.o00000Oo.width(), (int) this.o00000Oo.height());
            this.o00Ooo.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private void OooOo0O(@NonNull Canvas canvas, Rect rect) {
        Paint paint = this.o00000O;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.o00000O);
            if (o000OoOo() || o000OoOO()) {
                OooO0OO(rect, this.o00000Oo);
                canvas.drawRect(this.o00000Oo, this.o00000O);
            }
            if (this.Oooooo0 != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.o00000O);
            }
            if (o000Ooo0()) {
                OooO0o(rect, this.o00000Oo);
                canvas.drawRect(this.o00000Oo, this.o00000O);
            }
            this.o00000O.setColor(ColorUtils.setAlphaComponent(-65536, 127));
            OooO0o0(rect, this.o00000Oo);
            canvas.drawRect(this.o00000Oo, this.o00000O);
            this.o00000O.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            OooO0oO(rect, this.o00000Oo);
            canvas.drawRect(this.o00000Oo, this.o00000O);
        }
    }

    private void OooOo0o(@NonNull Canvas canvas, Rect rect) {
        if (this.Oooooo0 != null) {
            Paint.Align alignOooOO0O = OooOO0O(rect, this.o00000o0);
            OooO(rect, this.o00000Oo);
            if (this.Oooooo != null) {
                this.o00000.drawableState = getState();
                this.Oooooo.OooO0oO(this.o000000o, this.o00000, this.OoooooO);
            }
            this.o00000.setTextAlign(alignOooOO0O);
            int iSave = 0;
            boolean z = Math.round(Ooooo0o()) > Math.round(this.o00000Oo.width());
            if (z) {
                iSave = canvas.save();
                canvas.clipRect(this.o00000Oo);
            }
            CharSequence charSequenceEllipsize = this.Oooooo0;
            if (z && this.o0000OoO != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.o00000, this.o00000Oo.width(), this.o0000OoO);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.o00000o0;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.o00000);
            if (z) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private float Ooooo0o() {
        if (!this.o0000Oo0) {
            return this.o0000Oo;
        }
        float fOooOO0o = OooOO0o(this.Oooooo0);
        this.o0000Oo = fOooOO0o;
        this.o0000Oo0 = false;
        return fOooOO0o;
    }

    @Nullable
    private ColorFilter OooooO0() {
        ColorFilter colorFilter = this.o0000O0;
        return colorFilter != null ? colorFilter : this.o0000O0O;
    }

    private static boolean OooooOo(@Nullable int[] iArr, @AttrRes int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private boolean o000OoOO() {
        return this.o00oO0O && this.o0ooOO0 != null && this.o0000O00;
    }

    private boolean o000OoOo() {
        return this.Ooooooo && this.o0OoOo0 != null;
    }

    private boolean o000Ooo0() {
        return this.o00Oo0 && this.o00Ooo != null;
    }

    private void o000OooO(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void o000Oooo() {
        this.o0000OOO = this.o0000OO ? el.OooO00o(this.OooooOO) : null;
    }

    private static boolean o00Ooo(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private static boolean o00o0O(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private boolean o00oO0O(int[] iArr, int[] iArr2) {
        boolean z;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.OoooOoO;
        int colorForState = colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.o0000Ooo) : 0;
        boolean state = true;
        if (this.o0000Ooo != colorForState) {
            this.o0000Ooo = colorForState;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.Ooooo0o;
        int colorForState2 = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.o00000oO) : 0;
        if (this.o00000oO != colorForState2) {
            this.o00000oO = colorForState2;
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.o0000OOO;
        int colorForState3 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.o00000oo) : 0;
        if (this.o00000oo != colorForState3) {
            this.o00000oo = colorForState3;
            if (this.o0000OO) {
                zOnStateChange = true;
            }
        }
        cl clVar = this.Oooooo;
        int colorForState4 = (clVar == null || (colorStateList = clVar.OooO0O0) == null) ? 0 : colorStateList.getColorForState(iArr, this.o0000);
        if (this.o0000 != colorForState4) {
            this.o0000 = colorForState4;
            zOnStateChange = true;
        }
        boolean z3 = OooooOo(getState(), R.attr.state_checked) && this.o00oO0o;
        if (this.o0000O00 == z3 || this.o0ooOO0 == null) {
            z = false;
        } else {
            float fOooO0Oo = OooO0Oo();
            this.o0000O00 = z3;
            if (fOooO0Oo != OooO0Oo()) {
                zOnStateChange = true;
                z = true;
            } else {
                zOnStateChange = true;
                z = false;
            }
        }
        ColorStateList colorStateList5 = this.o000OO;
        int colorForState5 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.o0000oo) : 0;
        if (this.o0000oo != colorForState5) {
            this.o0000oo = colorForState5;
            this.o0000O0O = gk.OooO00o(this, this.o000OO, this.o0000O);
        } else {
            state = zOnStateChange;
        }
        if (o00o0O(this.o0OoOo0)) {
            state |= this.o0OoOo0.setState(iArr);
        }
        if (o00o0O(this.o0ooOO0)) {
            state |= this.o0ooOO0.setState(iArr);
        }
        if (o00o0O(this.o00Ooo)) {
            state |= this.o00Ooo.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z) {
            o00oO0o();
        }
        return state;
    }

    private static boolean o00ooo(@Nullable cl clVar) {
        ColorStateList colorStateList;
        return (clVar == null || (colorStateList = clVar.OooO0O0) == null || !colorStateList.isStateful()) ? false : true;
    }

    private void oo000o(AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TextUtils.TruncateAt truncateAt;
        TypedArray typedArrayOooOO0 = xk.OooOO0(this.o000000o, attributeSet, com.google.android.material.R.styleable.Chip, i, i2, new int[0]);
        o000OOo(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_chipBackgroundColor));
        o0000oO(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipMinHeight, 0.0f));
        o000000O(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipCornerRadius, 0.0f));
        o0000O(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_chipStrokeColor));
        o0000OO(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipStrokeWidth, 0.0f));
        o000O0O0(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_rippleColor));
        o000OO00(typedArrayOooOO0.getText(com.google.android.material.R.styleable.Chip_android_text));
        o0OoO0o(bl.OooO0Oo(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_android_textAppearance));
        int i3 = typedArrayOooOO0.getInt(com.google.android.material.R.styleable.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            truncateAt = TextUtils.TruncateAt.START;
        } else {
            if (i3 != 2) {
                if (i3 == 3) {
                    truncateAt = TextUtils.TruncateAt.END;
                }
                o0000oo(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_chipIconVisible, false));
                if (attributeSet != null && attributeSet.getAttributeValue(o0000oO0, "chipIconEnabled") != null && attributeSet.getAttributeValue(o0000oO0, "chipIconVisible") == null) {
                    o0000oo(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_chipIconEnabled, false));
                }
                o00000O(bl.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_chipIcon));
                o00000oo(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_chipIconTint));
                o0000Ooo(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipIconSize, 0.0f));
                o000OoO(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_closeIconVisible, false));
                if (attributeSet != null && attributeSet.getAttributeValue(o0000oO0, "closeIconEnabled") != null && attributeSet.getAttributeValue(o0000oO0, "closeIconVisible") == null) {
                    o000OoO(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_closeIconEnabled, false));
                }
                o0000OOo(bl.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_closeIcon));
                o0000ooO(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_closeIconTint));
                o0000o(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_closeIconSize, 0.0f));
                o0ooOO0(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_android_checkable, false));
                o0O0O00(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconVisible, false));
                if (attributeSet != null && attributeSet.getAttributeValue(o0000oO0, "checkedIconEnabled") != null && attributeSet.getAttributeValue(o0000oO0, "checkedIconVisible") == null) {
                    o0O0O00(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconEnabled, false));
                }
                o0ooOoO(bl.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_checkedIcon));
                o000O0oo(lj.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_showMotionSpec));
                o000O0O(lj.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_hideMotionSpec));
                o0000O0O(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipStartPadding, 0.0f));
                o000O0(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_iconStartPadding, 0.0f));
                o000O00(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_iconEndPadding, 0.0f));
                o000Oo00(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_textStartPadding, 0.0f));
                o000OOO(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_textEndPadding, 0.0f));
                o0000oOO(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_closeIconStartPadding, 0.0f));
                o0000o0(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_closeIconEndPadding, 0.0f));
                o00000(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipEndPadding, 0.0f));
                o000OO0O(typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
                typedArrayOooOO0.recycle();
            }
            truncateAt = TextUtils.TruncateAt.MIDDLE;
        }
        o000Ooo(truncateAt);
        o0000oo(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null) {
            o0000oo(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_chipIconEnabled, false));
        }
        o00000O(bl.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_chipIcon));
        o00000oo(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_chipIconTint));
        o0000Ooo(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipIconSize, 0.0f));
        o000OoO(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null) {
            o000OoO(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_closeIconEnabled, false));
        }
        o0000OOo(bl.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_closeIcon));
        o0000ooO(bl.OooO00o(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_closeIconTint));
        o0000o(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_closeIconSize, 0.0f));
        o0ooOO0(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_android_checkable, false));
        o0O0O00(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null) {
            o0O0O00(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconEnabled, false));
        }
        o0ooOoO(bl.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_checkedIcon));
        o000O0oo(lj.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_showMotionSpec));
        o000O0O(lj.OooO0O0(this.o000000o, typedArrayOooOO0, com.google.android.material.R.styleable.Chip_hideMotionSpec));
        o0000O0O(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipStartPadding, 0.0f));
        o000O0(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_iconStartPadding, 0.0f));
        o000O00(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_iconEndPadding, 0.0f));
        o000Oo00(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_textStartPadding, 0.0f));
        o000OOO(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_textEndPadding, 0.0f));
        o0000oOO(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_closeIconStartPadding, 0.0f));
        o0000o0(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_closeIconEndPadding, 0.0f));
        o00000(typedArrayOooOO0.getDimension(com.google.android.material.R.styleable.Chip_chipEndPadding, 0.0f));
        o000OO0O(typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayOooOO0.recycle();
    }

    public float OooO0Oo() {
        if (o000OoOo() || o000OoOO()) {
            return this.o0Oo0oo + this.o00O0O + this.o0OO00O;
        }
        return 0.0f;
    }

    public Paint.Align OooOO0O(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.Oooooo0 != null) {
            float fOooO0Oo = this.o0OOO0o + OooO0Oo() + this.oo0o0Oo;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + fOooO0Oo;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fOooO0Oo;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - OooOO0();
        }
        return align;
    }

    @Nullable
    public Drawable OooOo() {
        return this.o0ooOO0;
    }

    public float OooOoO() {
        return this.Ooooo00;
    }

    @Nullable
    public ColorStateList OooOoO0() {
        return this.OoooOoO;
    }

    public float OooOoOO() {
        return this.o000000O;
    }

    public float OooOoo() {
        return this.o00O0O;
    }

    @Nullable
    public Drawable OooOoo0() {
        Drawable drawable = this.o0OoOo0;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Nullable
    public ColorStateList OooOooO() {
        return this.ooOO;
    }

    public float OooOooo() {
        return this.OoooOoo;
    }

    @Nullable
    public ColorStateList Oooo() {
        return this.o00o0O;
    }

    public void Oooo0(RectF rectF) {
        OooO0o0(getBounds(), rectF);
    }

    public float Oooo000() {
        return this.o0OOO0o;
    }

    @Nullable
    public ColorStateList Oooo00O() {
        return this.Ooooo0o;
    }

    public float Oooo00o() {
        return this.OooooO0;
    }

    @Nullable
    public Drawable Oooo0O0() {
        Drawable drawable = this.o00Ooo;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Nullable
    public CharSequence Oooo0OO() {
        return this.oo000o;
    }

    public float Oooo0o() {
        return this.o00ooo;
    }

    public float Oooo0o0() {
        return this.o000000;
    }

    public float Oooo0oO() {
        return this.o000OOo;
    }

    @NonNull
    public int[] Oooo0oo() {
        return this.o0000OO0;
    }

    public float OoooO() {
        return this.o0OO00O;
    }

    public TextUtils.TruncateAt OoooO0() {
        return this.o0000OoO;
    }

    public void OoooO00(RectF rectF) {
        OooO0oO(getBounds(), rectF);
    }

    @Nullable
    public lj OoooO0O() {
        return this.o0ooOoO;
    }

    public float OoooOO0() {
        return this.o0Oo0oo;
    }

    @Nullable
    public ColorStateList OoooOOO() {
        return this.OooooOO;
    }

    @Nullable
    public lj OoooOOo() {
        return this.o0ooOOo;
    }

    @NonNull
    public CharSequence OoooOo0() {
        return this.OooooOo;
    }

    @Nullable
    public cl OoooOoO() {
        return this.Oooooo;
    }

    public float OoooOoo() {
        return this.o0O0O00;
    }

    public float Ooooo00() {
        return this.oo0o0Oo;
    }

    public boolean OooooOO() {
        return this.o0000OO;
    }

    @Deprecated
    public boolean Oooooo() {
        return OoooooO();
    }

    public boolean Oooooo0() {
        return this.o00oO0o;
    }

    public boolean OoooooO() {
        return this.o00oO0O;
    }

    @Deprecated
    public boolean Ooooooo() {
        return o0OoOo0();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = this.o0000oO;
        int iOooO00o = i < 255 ? ak.OooO00o(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        OooOOo0(canvas, bounds);
        OooOOoo(canvas, bounds);
        OooOo0(canvas, bounds);
        OooOOo(canvas, bounds);
        OooOOOo(canvas, bounds);
        if (this.o0000o0) {
            OooOo0o(canvas, bounds);
        }
        OooOo00(canvas, bounds);
        OooOo0O(canvas, bounds);
        if (this.o0000oO < 255) {
            canvas.restoreToCount(iOooO00o);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.o0000oO;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.o0000O0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.OoooOoo;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.o0OOO0o + OooO0Oo() + this.oo0o0Oo + Ooooo0o() + this.o0O0O00 + OooO0oo() + this.o000000O), this.o0000o0O);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.Ooooo00);
        } else {
            outline.setRoundRect(bounds, this.Ooooo00);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return o00Ooo(this.OoooOoO) || o00Ooo(this.Ooooo0o) || (this.o0000OO && o00Ooo(this.o0000OOO)) || o00ooo(this.Oooooo) || OooOOO0() || o00o0O(this.o0OoOo0) || o00o0O(this.o0ooOO0) || o00Ooo(this.o000OO);
    }

    public void o000(@ColorRes int i) {
        o0000ooO(AppCompatResources.getColorStateList(this.o000000o, i));
    }

    public void o0000(@ColorRes int i) {
        o00000oo(AppCompatResources.getColorStateList(this.o000000o, i));
    }

    public void o00000(float f) {
        if (this.o000000O != f) {
            this.o000000O = f;
            invalidateSelf();
            o00oO0o();
        }
    }

    public void o000000(@ColorRes int i) {
        o000OOo(AppCompatResources.getColorStateList(this.o000000o, i));
    }

    public void o000000O(float f) {
        if (this.Ooooo00 != f) {
            this.Ooooo00 = f;
            invalidateSelf();
        }
    }

    public void o000000o(@DimenRes int i) {
        o000000O(this.o000000o.getResources().getDimension(i));
    }

    public void o00000O(@Nullable Drawable drawable) {
        Drawable drawableOooOoo0 = OooOoo0();
        if (drawableOooOoo0 != drawable) {
            float fOooO0Oo = OooO0Oo();
            this.o0OoOo0 = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fOooO0Oo2 = OooO0Oo();
            o000OooO(drawableOooOoo0);
            if (o000OoOo()) {
                OooO0O0(this.o0OoOo0);
            }
            invalidateSelf();
            if (fOooO0Oo != fOooO0Oo2) {
                o00oO0o();
            }
        }
    }

    public void o00000O0(@DimenRes int i) {
        o00000(this.o000000o.getResources().getDimension(i));
    }

    @Deprecated
    public void o00000OO(boolean z) {
        o0000oo(z);
    }

    @Deprecated
    public void o00000Oo(@BoolRes int i) {
        o0000O00(i);
    }

    public void o00000o0(@DrawableRes int i) {
        o00000O(AppCompatResources.getDrawable(this.o000000o, i));
    }

    public void o00000oO(@DimenRes int i) {
        o0000Ooo(this.o000000o.getResources().getDimension(i));
    }

    public void o00000oo(@Nullable ColorStateList colorStateList) {
        if (this.ooOO != colorStateList) {
            this.ooOO = colorStateList;
            if (o000OoOo()) {
                DrawableCompat.setTintList(this.o0OoOo0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void o0000O(@Nullable ColorStateList colorStateList) {
        if (this.Ooooo0o != colorStateList) {
            this.Ooooo0o = colorStateList;
            onStateChange(getState());
        }
    }

    public void o0000O0(@DimenRes int i) {
        o0000oO(this.o000000o.getResources().getDimension(i));
    }

    public void o0000O00(@BoolRes int i) {
        o0000oo(this.o000000o.getResources().getBoolean(i));
    }

    public void o0000O0O(float f) {
        if (this.o0OOO0o != f) {
            this.o0OOO0o = f;
            invalidateSelf();
            o00oO0o();
        }
    }

    public void o0000OO(float f) {
        if (this.OooooO0 != f) {
            this.OooooO0 = f;
            this.o00000O0.setStrokeWidth(f);
            invalidateSelf();
        }
    }

    public void o0000OO0(@ColorRes int i) {
        o0000O(AppCompatResources.getColorStateList(this.o000000o, i));
    }

    public void o0000OOO(@DimenRes int i) {
        o0000OO(this.o000000o.getResources().getDimension(i));
    }

    public void o0000OOo(@Nullable Drawable drawable) {
        Drawable drawableOooo0O0 = Oooo0O0();
        if (drawableOooo0O0 != drawable) {
            float fOooO0oo = OooO0oo();
            this.o00Ooo = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fOooO0oo2 = OooO0oo();
            o000OooO(drawableOooo0O0);
            if (o000Ooo0()) {
                OooO0O0(this.o00Ooo);
            }
            invalidateSelf();
            if (fOooO0oo != fOooO0oo2) {
                o00oO0o();
            }
        }
    }

    @Deprecated
    public void o0000Oo(boolean z) {
        o000OoO(z);
    }

    public void o0000Oo0(@Nullable CharSequence charSequence) {
        if (this.oo000o != charSequence) {
            this.oo000o = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    @Deprecated
    public void o0000OoO(@BoolRes int i) {
        o000O000(i);
    }

    public void o0000Ooo(float f) {
        if (this.o00O0O != f) {
            float fOooO0Oo = OooO0Oo();
            this.o00O0O = f;
            float fOooO0Oo2 = OooO0Oo();
            invalidateSelf();
            if (fOooO0Oo != fOooO0Oo2) {
                o00oO0o();
            }
        }
    }

    public void o0000o(float f) {
        if (this.o00ooo != f) {
            this.o00ooo = f;
            invalidateSelf();
            if (o000Ooo0()) {
                o00oO0o();
            }
        }
    }

    public void o0000o0(float f) {
        if (this.o000000 != f) {
            this.o000000 = f;
            invalidateSelf();
            if (o000Ooo0()) {
                o00oO0o();
            }
        }
    }

    public void o0000o0O(@DimenRes int i) {
        o0000o0(this.o000000o.getResources().getDimension(i));
    }

    public void o0000o0o(@DrawableRes int i) {
        o0000OOo(AppCompatResources.getDrawable(this.o000000o, i));
    }

    public void o0000oO(float f) {
        if (this.OoooOoo != f) {
            this.OoooOoo = f;
            invalidateSelf();
            o00oO0o();
        }
    }

    public void o0000oO0(@DimenRes int i) {
        o0000o(this.o000000o.getResources().getDimension(i));
    }

    public void o0000oOO(float f) {
        if (this.o000OOo != f) {
            this.o000OOo = f;
            invalidateSelf();
            if (o000Ooo0()) {
                o00oO0o();
            }
        }
    }

    public void o0000oOo(@DimenRes int i) {
        o0000oOO(this.o000000o.getResources().getDimension(i));
    }

    public void o0000oo(boolean z) {
        if (this.Ooooooo != z) {
            boolean zO000OoOo = o000OoOo();
            this.Ooooooo = z;
            boolean zO000OoOo2 = o000OoOo();
            if (zO000OoOo != zO000OoOo2) {
                if (zO000OoOo2) {
                    OooO0O0(this.o0OoOo0);
                } else {
                    o000OooO(this.o0OoOo0);
                }
                invalidateSelf();
                o00oO0o();
            }
        }
    }

    public boolean o0000oo0(@NonNull int[] iArr) {
        if (Arrays.equals(this.o0000OO0, iArr)) {
            return false;
        }
        this.o0000OO0 = iArr;
        if (o000Ooo0()) {
            return o00oO0O(getState(), iArr);
        }
        return false;
    }

    public void o0000ooO(@Nullable ColorStateList colorStateList) {
        if (this.o00o0O != colorStateList) {
            this.o00o0O = colorStateList;
            if (o000Ooo0()) {
                DrawableCompat.setTintList(this.o00Ooo, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void o000O(@AnimatorRes int i) {
        o000O0oo(lj.OooO0OO(this.o000000o, i));
    }

    public void o000O0(float f) {
        if (this.o0Oo0oo != f) {
            float fOooO0Oo = OooO0Oo();
            this.o0Oo0oo = f;
            float fOooO0Oo2 = OooO0Oo();
            invalidateSelf();
            if (fOooO0Oo != fOooO0Oo2) {
                o00oO0o();
            }
        }
    }

    public void o000O00(float f) {
        if (this.o0OO00O != f) {
            float fOooO0Oo = OooO0Oo();
            this.o0OO00O = f;
            float fOooO0Oo2 = OooO0Oo();
            invalidateSelf();
            if (fOooO0Oo != fOooO0Oo2) {
                o00oO0o();
            }
        }
    }

    public void o000O000(@BoolRes int i) {
        o000OoO(this.o000000o.getResources().getBoolean(i));
    }

    public void o000O00O(@DimenRes int i) {
        o000O00(this.o000000o.getResources().getDimension(i));
    }

    public void o000O0O(@Nullable lj ljVar) {
        this.o0ooOoO = ljVar;
    }

    public void o000O0O0(@Nullable ColorStateList colorStateList) {
        if (this.OooooOO != colorStateList) {
            this.OooooOO = colorStateList;
            o000Oooo();
            onStateChange(getState());
        }
    }

    public void o000O0Oo(@DimenRes int i) {
        o000O0(this.o000000o.getResources().getDimension(i));
    }

    public void o000O0o(@Nullable OooO0O0 oooO0O0) {
        this.o0000OOo = new WeakReference<>(oooO0O0);
    }

    public void o000O0o0(@ColorRes int i) {
        o000O0O0(AppCompatResources.getColorStateList(this.o000000o, i));
    }

    public void o000O0oO(boolean z) {
        this.o0000o0 = z;
    }

    public void o000O0oo(@Nullable lj ljVar) {
        this.o0ooOOo = ljVar;
    }

    public void o000OO(@DimenRes int i) {
        o0000O0O(this.o000000o.getResources().getDimension(i));
    }

    public void o000OO00(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (this.OooooOo != charSequence) {
            this.OooooOo = charSequence;
            this.Oooooo0 = BidiFormatter.getInstance().unicodeWrap(charSequence);
            this.o0000Oo0 = true;
            invalidateSelf();
            o00oO0o();
        }
    }

    public void o000OO0O(@Px int i) {
        this.o0000o0O = i;
    }

    public void o000OO0o(@StyleRes int i) {
        o0OoO0o(new cl(this.o000000o, i));
    }

    public void o000OOO(float f) {
        if (this.o0O0O00 != f) {
            this.o0O0O00 = f;
            invalidateSelf();
            o00oO0o();
        }
    }

    public void o000OOo(@Nullable ColorStateList colorStateList) {
        if (this.OoooOoO != colorStateList) {
            this.OoooOoO = colorStateList;
            onStateChange(getState());
        }
    }

    public void o000OOo0(@DimenRes int i) {
        o000OOO(this.o000000o.getResources().getDimension(i));
    }

    public void o000OOoO(@StringRes int i) {
        o000OO00(this.o000000o.getResources().getString(i));
    }

    public boolean o000Oo() {
        return this.o0000o0;
    }

    public void o000Oo0(@AnimatorRes int i) {
        o000O0O(lj.OooO0OO(this.o000000o, i));
    }

    public void o000Oo00(float f) {
        if (this.oo0o0Oo != f) {
            this.oo0o0Oo = f;
            invalidateSelf();
            o00oO0o();
        }
    }

    public void o000Oo0O(@DimenRes int i) {
        o000Oo00(this.o000000o.getResources().getDimension(i));
    }

    public void o000Oo0o(boolean z) {
        if (this.o0000OO != z) {
            this.o0000OO = z;
            o000Oooo();
            onStateChange(getState());
        }
    }

    public void o000OoO(boolean z) {
        if (this.o00Oo0 != z) {
            boolean zO000Ooo0 = o000Ooo0();
            this.o00Oo0 = z;
            boolean zO000Ooo02 = o000Ooo0();
            if (zO000Ooo0 != zO000Ooo02) {
                if (zO000Ooo02) {
                    OooO0O0(this.o00Ooo);
                } else {
                    o000OooO(this.o00Ooo);
                }
                invalidateSelf();
                o00oO0o();
            }
        }
    }

    public void o000Ooo(@Nullable TextUtils.TruncateAt truncateAt) {
        this.o0000OoO = truncateAt;
    }

    @Px
    public int o000oOoO() {
        return this.o0000o0O;
    }

    public boolean o00O0O() {
        return o00o0O(this.o00Ooo);
    }

    public boolean o00Oo0() {
        return this.o00Oo0;
    }

    public void o00oO0o() {
        OooO0O0 oooO0O0 = this.o0000OOo.get();
        if (oooO0O0 != null) {
            oooO0O0.OooO00o();
        }
    }

    public void o0O0O00(boolean z) {
        if (this.o00oO0O != z) {
            boolean zO000OoOO = o000OoOO();
            this.o00oO0O = z;
            boolean zO000OoOO2 = o000OoOO();
            if (zO000OoOO != zO000OoOO2) {
                if (zO000OoOO2) {
                    OooO0O0(this.o0ooOO0);
                } else {
                    o000OooO(this.o0ooOO0);
                }
                invalidateSelf();
                o00oO0o();
            }
        }
    }

    public void o0OO00O(@DrawableRes int i) {
        o0ooOoO(AppCompatResources.getDrawable(this.o000000o, i));
    }

    @Deprecated
    public void o0OOO0o(boolean z) {
        o0O0O00(z);
    }

    @Deprecated
    public void o0Oo0oo(@BoolRes int i) {
        o0O0O00(this.o000000o.getResources().getBoolean(i));
    }

    public void o0OoO0o(@Nullable cl clVar) {
        if (this.Oooooo != clVar) {
            this.Oooooo = clVar;
            if (clVar != null) {
                clVar.OooO0oo(this.o000000o, this.o00000, this.OoooooO);
                this.o0000Oo0 = true;
            }
            onStateChange(getState());
            o00oO0o();
        }
    }

    public boolean o0OoOo0() {
        return this.Ooooooo;
    }

    public void o0ooOO0(boolean z) {
        if (this.o00oO0o != z) {
            this.o00oO0o = z;
            float fOooO0Oo = OooO0Oo();
            if (!z && this.o0000O00) {
                this.o0000O00 = false;
            }
            float fOooO0Oo2 = OooO0Oo();
            invalidateSelf();
            if (fOooO0Oo != fOooO0Oo2) {
                o00oO0o();
            }
        }
    }

    public void o0ooOOo(@BoolRes int i) {
        o0ooOO0(this.o000000o.getResources().getBoolean(i));
    }

    public void o0ooOoO(@Nullable Drawable drawable) {
        if (this.o0ooOO0 != drawable) {
            float fOooO0Oo = OooO0Oo();
            this.o0ooOO0 = drawable;
            float fOooO0Oo2 = OooO0Oo();
            o000OooO(this.o0ooOO0);
            OooO0O0(this.o0ooOO0);
            invalidateSelf();
            if (fOooO0Oo != fOooO0Oo2) {
                o00oO0o();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(23)
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (o000OoOo()) {
            zOnLayoutDirectionChanged |= this.o0OoOo0.setLayoutDirection(i);
        }
        if (o000OoOO()) {
            zOnLayoutDirectionChanged |= this.o0ooOO0.setLayoutDirection(i);
        }
        if (o000Ooo0()) {
            zOnLayoutDirectionChanged |= this.o00Ooo.setLayoutDirection(i);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean zOnLevelChange = super.onLevelChange(i);
        if (o000OoOo()) {
            zOnLevelChange |= this.o0OoOo0.setLevel(i);
        }
        if (o000OoOO()) {
            zOnLevelChange |= this.o0ooOO0.setLevel(i);
        }
        if (o000Ooo0()) {
            zOnLevelChange |= this.o00Ooo.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return o00oO0O(iArr, Oooo0oo());
    }

    public void oo0o0Oo(@BoolRes int i) {
        o0O0O00(this.o000000o.getResources().getBoolean(i));
    }

    @Deprecated
    public boolean ooOO() {
        return o00Oo0();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.o0000oO != i) {
            this.o0000oO = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.o0000O0 != colorFilter) {
            this.o0000O0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.o000OO != colorStateList) {
            this.o000OO = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.o0000O != mode) {
            this.o0000O = mode;
            this.o0000O0O = gk.OooO00o(this, this.o000OO, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z3) {
        boolean visible = super.setVisible(z, z3);
        if (o000OoOo()) {
            visible |= this.o0OoOo0.setVisible(z, z3);
        }
        if (o000OoOO()) {
            visible |= this.o0ooOO0.setVisible(z, z3);
        }
        if (o000Ooo0()) {
            visible |= this.o00Ooo.setVisible(z, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
