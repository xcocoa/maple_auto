package z2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.legacy.widget.Space;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class tl {
    public static final int OooOo = 2;
    private static final int OooOo0 = 167;
    private static final int OooOo00 = 217;
    public static final int OooOo0O = 0;
    public static final int OooOo0o = 1;
    private static final int OooOoO = 1;
    private static final int OooOoO0 = 0;
    private static final int OooOoOO = 2;
    private int OooO;
    private final Context OooO00o;
    private final TextInputLayout OooO0O0;
    private LinearLayout OooO0OO;
    private int OooO0Oo;
    private int OooO0o;
    private FrameLayout OooO0o0;

    @Nullable
    private Animator OooO0oO;
    private final float OooO0oo;
    private int OooOO0;
    private CharSequence OooOO0O;
    private boolean OooOO0o;
    private int OooOOO;
    private TextView OooOOO0;
    private CharSequence OooOOOO;
    private boolean OooOOOo;
    private int OooOOo;
    private TextView OooOOo0;
    private Typeface OooOOoo;

    public class OooO00o extends AnimatorListenerAdapter {
        public final /* synthetic */ int OooO00o;
        public final /* synthetic */ TextView OooO0O0;
        public final /* synthetic */ int OooO0OO;
        public final /* synthetic */ TextView OooO0Oo;

        public OooO00o(int i, TextView textView, int i2, TextView textView2) {
            this.OooO00o = i;
            this.OooO0O0 = textView;
            this.OooO0OO = i2;
            this.OooO0Oo = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            tl.this.OooO = this.OooO00o;
            tl.this.OooO0oO = null;
            TextView textView = this.OooO0O0;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.OooO0OO != 1 || tl.this.OooOOO0 == null) {
                    return;
                }
                tl.this.OooOOO0.setText((CharSequence) null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.OooO0Oo;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public tl(TextInputLayout textInputLayout) {
        this.OooO00o = textInputLayout.getContext();
        this.OooO0O0 = textInputLayout;
        this.OooO0oo = r0.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    private ObjectAnimator OooO(TextView textView, boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(167L);
        objectAnimatorOfFloat.setInterpolator(ej.OooO00o);
        return objectAnimatorOfFloat;
    }

    private boolean OooO0o() {
        return (this.OooO0OO == null || this.OooO0O0.getEditText() == null) ? false : true;
    }

    private void OooO0oo(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            list.add(OooO(textView, i3 == i));
            if (i3 == i) {
                list.add(OooOO0(textView));
            }
        }
    }

    private ObjectAnimator OooOO0(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.OooO0oo, 0.0f);
        objectAnimatorOfFloat.setDuration(217L);
        objectAnimatorOfFloat.setInterpolator(ej.OooO0Oo);
        return objectAnimatorOfFloat;
    }

    @Nullable
    private TextView OooOOO0(int i) {
        if (i == 1) {
            return this.OooOOO0;
        }
        if (i != 2) {
            return null;
        }
        return this.OooOOo0;
    }

    private boolean OooOo(int i) {
        return (i != 1 || this.OooOOO0 == null || TextUtils.isEmpty(this.OooOO0O)) ? false : true;
    }

    private boolean OooOoO0(int i) {
        return (i != 2 || this.OooOOo0 == null || TextUtils.isEmpty(this.OooOOOO)) ? false : true;
    }

    private void OooOooO(int i, int i2) {
        TextView textViewOooOOO0;
        TextView textViewOooOOO02;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (textViewOooOOO02 = OooOOO0(i2)) != null) {
            textViewOooOOO02.setVisibility(0);
            textViewOooOOO02.setAlpha(1.0f);
        }
        if (i != 0 && (textViewOooOOO0 = OooOOO0(i)) != null) {
            textViewOooOOO0.setVisibility(4);
            if (i == 1) {
                textViewOooOOO0.setText((CharSequence) null);
            }
        }
        this.OooO = i2;
    }

    private void Oooo0OO(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void Oooo0o(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean Oooo0oO(TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.OooO0O0) && this.OooO0O0.isEnabled() && !(this.OooOO0 == this.OooO && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void OoooO00(int i, int i2, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.OooO0oO = animatorSet;
            ArrayList arrayList = new ArrayList();
            OooO0oo(arrayList, this.OooOOOo, this.OooOOo0, 2, i, i2);
            OooO0oo(arrayList, this.OooOO0o, this.OooOOO0, 1, i, i2);
            fj.OooO00o(animatorSet, arrayList);
            animatorSet.addListener(new OooO00o(i2, OooOOO0(i), i, OooOOO0(i2)));
            animatorSet.start();
        } else {
            OooOooO(i, i2);
        }
        this.OooO0O0.Oooo0O0();
        this.OooO0O0.Oooo0o(z);
        this.OooO0O0.OoooO00();
    }

    public void OooO0Oo(TextView textView, int i) {
        if (this.OooO0OO == null && this.OooO0o0 == null) {
            LinearLayout linearLayout = new LinearLayout(this.OooO00o);
            this.OooO0OO = linearLayout;
            linearLayout.setOrientation(0);
            this.OooO0O0.addView(this.OooO0OO, -1, -2);
            FrameLayout frameLayout = new FrameLayout(this.OooO00o);
            this.OooO0o0 = frameLayout;
            this.OooO0OO.addView(frameLayout, -1, new FrameLayout.LayoutParams(-2, -2));
            this.OooO0OO.addView(new Space(this.OooO00o), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.OooO0O0.getEditText() != null) {
                OooO0o0();
            }
        }
        if (OooOoO(i)) {
            this.OooO0o0.setVisibility(0);
            this.OooO0o0.addView(textView);
            this.OooO0o++;
        } else {
            this.OooO0OO.addView(textView, i);
        }
        this.OooO0OO.setVisibility(0);
        this.OooO0Oo++;
    }

    public void OooO0o0() {
        if (OooO0o()) {
            ViewCompat.setPaddingRelative(this.OooO0OO, ViewCompat.getPaddingStart(this.OooO0O0.getEditText()), 0, ViewCompat.getPaddingEnd(this.OooO0O0.getEditText()), 0);
        }
    }

    public void OooO0oO() {
        Animator animator = this.OooO0oO;
        if (animator != null) {
            animator.cancel();
        }
    }

    public boolean OooOO0O() {
        return OooOo(this.OooO);
    }

    public boolean OooOO0o() {
        return OooOo(this.OooOO0);
    }

    public CharSequence OooOOO() {
        return this.OooOO0O;
    }

    @ColorInt
    public int OooOOOO() {
        TextView textView = this.OooOOO0;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    public ColorStateList OooOOOo() {
        TextView textView = this.OooOOO0;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    @Nullable
    public ColorStateList OooOOo() {
        TextView textView = this.OooOOo0;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    public CharSequence OooOOo0() {
        return this.OooOOOO;
    }

    @ColorInt
    public int OooOOoo() {
        TextView textView = this.OooOOo0;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public boolean OooOo0() {
        return OooOoO0(this.OooOO0);
    }

    public boolean OooOo00() {
        return OooOoO0(this.OooO);
    }

    public void OooOo0O() {
        this.OooOO0O = null;
        OooO0oO();
        if (this.OooO == 1) {
            this.OooOO0 = (!this.OooOOOo || TextUtils.isEmpty(this.OooOOOO)) ? 0 : 2;
        }
        OoooO00(this.OooO, this.OooOO0, Oooo0oO(this.OooOOO0, null));
    }

    public void OooOo0o() {
        OooO0oO();
        int i = this.OooO;
        if (i == 2) {
            this.OooOO0 = 0;
        }
        OoooO00(i, this.OooOO0, Oooo0oO(this.OooOOo0, null));
    }

    public boolean OooOoO(int i) {
        return i == 0 || i == 1;
    }

    public boolean OooOoOO() {
        return this.OooOO0o;
    }

    public void OooOoo(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.OooO0OO == null) {
            return;
        }
        if (!OooOoO(i) || (frameLayout = this.OooO0o0) == null) {
            this.OooO0OO.removeView(textView);
        } else {
            int i2 = this.OooO0o - 1;
            this.OooO0o = i2;
            Oooo0o(frameLayout, i2);
            this.OooO0o0.removeView(textView);
        }
        int i3 = this.OooO0Oo - 1;
        this.OooO0Oo = i3;
        Oooo0o(this.OooO0OO, i3);
    }

    public boolean OooOoo0() {
        return this.OooOOOo;
    }

    public void OooOooo(boolean z) {
        if (this.OooOO0o == z) {
            return;
        }
        OooO0oO();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.OooO00o);
            this.OooOOO0 = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            Typeface typeface = this.OooOOoo;
            if (typeface != null) {
                this.OooOOO0.setTypeface(typeface);
            }
            Oooo000(this.OooOOO);
            this.OooOOO0.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.OooOOO0, 1);
            OooO0Oo(this.OooOOO0, 0);
        } else {
            OooOo0O();
            OooOoo(this.OooOOO0, 0);
            this.OooOOO0 = null;
            this.OooO0O0.Oooo0O0();
            this.OooO0O0.OoooO00();
        }
        this.OooOO0o = z;
    }

    public void Oooo(CharSequence charSequence) {
        OooO0oO();
        this.OooOOOO = charSequence;
        this.OooOOo0.setText(charSequence);
        int i = this.OooO;
        if (i != 2) {
            this.OooOO0 = 2;
        }
        OoooO00(i, this.OooOO0, Oooo0oO(this.OooOOo0, charSequence));
    }

    public void Oooo0(boolean z) {
        if (this.OooOOOo == z) {
            return;
        }
        OooO0oO();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.OooO00o);
            this.OooOOo0 = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            Typeface typeface = this.OooOOoo;
            if (typeface != null) {
                this.OooOOo0.setTypeface(typeface);
            }
            this.OooOOo0.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.OooOOo0, 1);
            Oooo00o(this.OooOOo);
            OooO0Oo(this.OooOOo0, 1);
        } else {
            OooOo0o();
            OooOoo(this.OooOOo0, 1);
            this.OooOOo0 = null;
            this.OooO0O0.Oooo0O0();
            this.OooO0O0.OoooO00();
        }
        this.OooOOOo = z;
    }

    public void Oooo000(@StyleRes int i) {
        this.OooOOO = i;
        TextView textView = this.OooOOO0;
        if (textView != null) {
            this.OooO0O0.Oooo00O(textView, i);
        }
    }

    public void Oooo00O(@Nullable ColorStateList colorStateList) {
        TextView textView = this.OooOOO0;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void Oooo00o(@StyleRes int i) {
        this.OooOOo = i;
        TextView textView = this.OooOOo0;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    public void Oooo0O0(@Nullable ColorStateList colorStateList) {
        TextView textView = this.OooOOo0;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void Oooo0o0(Typeface typeface) {
        if (typeface != this.OooOOoo) {
            this.OooOOoo = typeface;
            Oooo0OO(this.OooOOO0, typeface);
            Oooo0OO(this.OooOOo0, typeface);
        }
    }

    public void Oooo0oo(CharSequence charSequence) {
        OooO0oO();
        this.OooOO0O = charSequence;
        this.OooOOO0.setText(charSequence);
        int i = this.OooO;
        if (i != 1) {
            this.OooOO0 = 1;
        }
        OoooO00(i, this.OooOO0, Oooo0oO(this.OooOOO0, charSequence));
    }
}
