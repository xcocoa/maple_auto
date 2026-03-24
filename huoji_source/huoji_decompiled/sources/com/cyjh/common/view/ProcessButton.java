package com.cyjh.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import com.cyjh.common.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class ProcessButton extends FlatButton {
    private int Ooooo0o;
    private int OooooO0;
    private int OooooOO;
    private GradientDrawable OooooOo;
    private GradientDrawable Oooooo;
    private GradientDrawable Oooooo0;
    private CharSequence OoooooO;
    private CharSequence Ooooooo;
    private CharSequence o0OoOo0;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        private int mProgress;

        public class OooO00o implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mProgress = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mProgress);
        }
    }

    public ProcessButton(Context context) {
        super(context);
        OooO0oO(context, null);
    }

    public ProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO0oO(context, attributeSet);
    }

    public ProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO0oO(context, attributeSet);
    }

    private void OooO0oO(Context context, AttributeSet attributeSet) {
        this.OooooOO = 0;
        this.OooooO0 = 100;
        GradientDrawable gradientDrawable = (GradientDrawable) OooO0o0(R.drawable.rect_progress).mutate();
        this.OooooOo = gradientDrawable;
        gradientDrawable.setCornerRadius(getCornerRadius());
        GradientDrawable gradientDrawable2 = (GradientDrawable) OooO0o0(R.drawable.rect_complete).mutate();
        this.Oooooo0 = gradientDrawable2;
        gradientDrawable2.setCornerRadius(getCornerRadius());
        GradientDrawable gradientDrawable3 = (GradientDrawable) OooO0o0(R.drawable.rect_error).mutate();
        this.Oooooo = gradientDrawable3;
        gradientDrawable3.setCornerRadius(getCornerRadius());
        if (attributeSet != null) {
            OooO0oo(context, attributeSet);
        }
    }

    private void OooO0oo(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayOooO0o = OooO0o(context, attributeSet, R.styleable.ProcessButton);
        if (typedArrayOooO0o == null) {
            return;
        }
        try {
            this.OoooooO = typedArrayOooO0o.getString(R.styleable.ProcessButton_pb_textProgress);
            this.Ooooooo = typedArrayOooO0o.getString(R.styleable.ProcessButton_pb_textComplete);
            this.o0OoOo0 = typedArrayOooO0o.getString(R.styleable.ProcessButton_pb_textError);
            this.OooooOo.setColor(typedArrayOooO0o.getColor(R.styleable.ProcessButton_pb_colorProgress, OooO0OO(R.color.purple_progress)));
            this.Oooooo0.setColor(typedArrayOooO0o.getColor(R.styleable.ProcessButton_pb_colorComplete, OooO0OO(R.color.green_complete)));
            this.Oooooo.setColor(typedArrayOooO0o.getColor(R.styleable.ProcessButton_pb_colorError, OooO0OO(R.color.red_error)));
        } finally {
            typedArrayOooO0o.recycle();
        }
    }

    public abstract void OooO(Canvas canvas);

    public void OooOO0() {
        if (getCompleteText() != null) {
            setText(getCompleteText());
        }
        setBackgroundCompat(getCompleteDrawable());
    }

    public void OooOO0O() {
        if (getErrorText() != null) {
            setText(getErrorText());
        }
        setBackgroundCompat(getErrorDrawable());
    }

    public void OooOO0o() {
        if (getNormalText() != null) {
            setText(getNormalText());
        }
        setBackgroundCompat(getNormalDrawable());
    }

    public void OooOOO0() {
        if (getLoadingText() != null) {
            setText(getLoadingText());
        }
        setBackgroundCompat(getNormalDrawable());
    }

    public GradientDrawable getCompleteDrawable() {
        return this.Oooooo0;
    }

    public CharSequence getCompleteText() {
        return this.Ooooooo;
    }

    public GradientDrawable getErrorDrawable() {
        return this.Oooooo;
    }

    public CharSequence getErrorText() {
        return this.o0OoOo0;
    }

    public CharSequence getLoadingText() {
        return this.OoooooO;
    }

    public int getMaxProgress() {
        return this.OooooO0;
    }

    public int getMinProgress() {
        return this.OooooOO;
    }

    public int getProgress() {
        return this.Ooooo0o;
    }

    public GradientDrawable getProgressDrawable() {
        return this.OooooOo;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i = this.Ooooo0o;
        if (i > this.OooooOO && i < this.OooooO0) {
            OooO(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.Ooooo0o = savedState.mProgress;
        super.onRestoreInstanceState(savedState.getSuperState());
        setProgress(this.Ooooo0o);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mProgress = this.Ooooo0o;
        return savedState;
    }

    public void setCompleteDrawable(GradientDrawable gradientDrawable) {
        this.Oooooo0 = gradientDrawable;
    }

    public void setCompleteText(CharSequence charSequence) {
        this.Ooooooo = charSequence;
    }

    public void setErrorDrawable(GradientDrawable gradientDrawable) {
        this.Oooooo = gradientDrawable;
    }

    public void setErrorText(CharSequence charSequence) {
        this.o0OoOo0 = charSequence;
    }

    public void setLoadingText(CharSequence charSequence) {
        this.OoooooO = charSequence;
    }

    public void setProgress(int i) {
        this.Ooooo0o = i;
        int i2 = this.OooooOO;
        if (i == i2) {
            OooOO0o();
        } else if (i == this.OooooO0) {
            OooOO0();
        } else if (i < i2) {
            OooOO0O();
        } else {
            OooOOO0();
        }
        invalidate();
    }

    public void setProgressDrawable(GradientDrawable gradientDrawable) {
        this.OooooOo = gradientDrawable;
    }
}
