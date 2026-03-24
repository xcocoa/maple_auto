package com.cyjh.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import com.cyjh.common.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PassWordLayout extends LinearLayout {
    private int OoooOoO;
    private int OoooOoo;
    private List<String> Ooooo00;
    private OooO Ooooo0o;
    private Context OooooO0;
    private boolean OooooOO;
    private int OooooOo;
    private int Oooooo;
    private int Oooooo0;
    private int OoooooO;
    private int Ooooooo;
    private int o00O0O;
    private int o00Oo0;
    private int o00Ooo;
    private int o00o0O;
    private int o0OoOo0;
    private int ooOO;

    public interface OooO {
        void OooO00o();

        void OooO0O0(String str);

        void OooO0OO(String str);
    }

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PassWordLayout.this.setFocusable(true);
            PassWordLayout.this.setFocusableInTouchMode(true);
            PassWordLayout.this.requestFocus();
            ((InputMethodManager) PassWordLayout.this.getContext().getSystemService("input_method")).showSoftInput(PassWordLayout.this, 1);
        }
    }

    public class OooO0O0 implements View.OnFocusChangeListener {
        public OooO0O0() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            PassWordLayout passWordLayout = PassWordLayout.this;
            if (z) {
                PassWordView passWordView = (PassWordView) passWordLayout.getChildAt(passWordLayout.OoooOoo);
                if (passWordView != null) {
                    passWordView.setmIsShowRemindLine(PassWordLayout.this.OooooOO);
                    passWordView.OooO0oO();
                    return;
                }
                return;
            }
            PassWordView passWordView2 = (PassWordView) passWordLayout.getChildAt(passWordLayout.OoooOoo);
            if (passWordView2 != null) {
                passWordView2.setmIsShowRemindLine(false);
                passWordView2.OooO0oo(false);
            }
        }
    }

    public class OooO0OO implements View.OnKeyListener {
        public OooO0OO() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0 || keyEvent.isShiftPressed()) {
                return false;
            }
            if (i < 7 || i > 16) {
                if (i == 67) {
                    PassWordLayout.this.OooO0oo();
                    return true;
                }
                ((InputMethodManager) PassWordLayout.this.OooooO0.getSystemService("input_method")).hideSoftInputFromWindow(PassWordLayout.this.getWindowToken(), 2);
                return true;
            }
            PassWordLayout.this.OooO0o0((i - 7) + "");
            return true;
        }
    }

    public class OooO0o extends BaseInputConnection {
        public OooO0o(View view, boolean z) {
            super(view, z);
        }

        @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
        public boolean commitText(CharSequence charSequence, int i) {
            return super.commitText(charSequence, i);
        }

        @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
        public boolean deleteSurroundingText(int i, int i2) {
            return (i == 1 && i2 == 0) ? sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67)) : super.deleteSurroundingText(i, i2);
        }

        @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
        public boolean sendKeyEvent(KeyEvent keyEvent) {
            return super.sendKeyEvent(keyEvent);
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public List<String> saveString;

        public class OooO00o implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            parcel.readStringList(this.saveString);
        }

        public /* synthetic */ SavedState(Parcel parcel, OooO00o oooO00o) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeList(this.saveString);
        }
    }

    public PassWordLayout(Context context) {
        this(context, null);
    }

    public PassWordLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PassWordLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = 6;
        this.OoooOoo = 0;
        OooO0o(context, attributeSet);
    }

    private void OooO0Oo(Context context) {
        for (int i = 0; i < this.OoooOoO; i++) {
            PassWordView passWordView = new PassWordView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.ooOO, this.o00O0O);
            if (i > 0) {
                layoutParams.leftMargin = this.o0OoOo0;
            }
            passWordView.setInputStateColor(this.OooooOo);
            passWordView.setNoinputColor(this.Oooooo0);
            passWordView.setInputStateTextColor(this.OoooooO);
            passWordView.setRemindLineColor(this.Oooooo);
            passWordView.setmBoxDrawType(this.Ooooooo);
            passWordView.setmShowPassType(this.o00Oo0);
            passWordView.setmDrawTxtSize(this.o00Ooo);
            passWordView.setmDrawBoxLineSize(this.o00o0O);
            passWordView.setmIsShowRemindLine(this.OooooOO);
            addView(passWordView, layoutParams);
        }
    }

    private void OooO0o(Context context, AttributeSet attributeSet) {
        this.OooooO0 = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PassWordLayoutStyle);
        int i = R.styleable.PassWordLayoutStyle_box_input_color;
        int i2 = R.color.pass_view_rect_input;
        this.OooooOo = typedArrayObtainStyledAttributes.getResourceId(i, i2);
        this.Oooooo0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PassWordLayoutStyle_box_no_input_color, R.color.regi_line_color);
        this.Oooooo = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PassWordLayoutStyle_input_line_color, i2);
        this.OoooooO = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PassWordLayoutStyle_text_input_color, i2);
        this.Ooooooo = typedArrayObtainStyledAttributes.getInt(R.styleable.PassWordLayoutStyle_box_draw_type, 0);
        this.o0OoOo0 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PassWordLayoutStyle_interval_width, 4);
        this.OoooOoO = typedArrayObtainStyledAttributes.getInt(R.styleable.PassWordLayoutStyle_pass_leng, 6);
        this.ooOO = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PassWordLayoutStyle_item_width, 40);
        this.o00O0O = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PassWordLayoutStyle_item_height, 40);
        this.o00Oo0 = typedArrayObtainStyledAttributes.getInt(R.styleable.PassWordLayoutStyle_pass_inputed_type, 0);
        this.o00Ooo = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PassWordLayoutStyle_draw_txt_size, 18);
        this.o00o0O = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PassWordLayoutStyle_draw_box_line_size, 4);
        this.OooooOO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PassWordLayoutStyle_is_show_input_line, true);
        typedArrayObtainStyledAttributes.recycle();
        this.Ooooo00 = new ArrayList();
        setOrientation(0);
        setGravity(17);
        setOnClickListener(new OooO00o());
        setOnKeyListener(new OooO0OO());
        setOnFocusChangeListener(new OooO0O0());
    }

    private void OooOO0() {
        PassWordView passWordView;
        int i = this.OoooOoo;
        if (i > 0) {
            OooO(i, false, "");
            int i2 = this.OoooOoo - 1;
            this.OoooOoo = i2;
            passWordView = (PassWordView) getChildAt(i2);
            if (passWordView == null) {
                return;
            }
        } else if (i != 0 || (passWordView = (PassWordView) getChildAt(i)) == null) {
            return;
        }
        passWordView.setmPassText("");
        passWordView.OooO0oO();
    }

    private void setNextInput(String str) {
        int i = this.OoooOoo;
        if (i < this.OoooOoO) {
            OooO(i, true, str);
            int i2 = this.OoooOoo + 1;
            this.OoooOoo = i2;
            PassWordView passWordView = (PassWordView) getChildAt(i2);
            if (passWordView != null) {
                passWordView.setmPassText(str + "");
                passWordView.OooO0oO();
            }
        }
    }

    public void OooO(int i, boolean z, String str) {
        PassWordView passWordView;
        if (i >= 0 && (passWordView = (PassWordView) getChildAt(i)) != null) {
            passWordView.setmPassText(str);
            passWordView.OooO0oo(z);
        }
    }

    public void OooO0o0(String str) {
        List<String> list = this.Ooooo00;
        if (list != null && list.size() < this.OoooOoO) {
            this.Ooooo00.add(str + "");
            setNextInput(str);
        }
        if (this.Ooooo0o != null) {
            if (this.Ooooo00.size() < this.OoooOoO) {
                this.Ooooo0o.OooO0OO(getPassString());
            } else {
                this.Ooooo0o.OooO0O0(getPassString());
            }
        }
    }

    public void OooO0oO() {
        PassWordView passWordView;
        List<String> list = this.Ooooo00;
        if (list != null) {
            for (int size = list.size(); size >= 0; size--) {
                if (size > 0) {
                    OooO(size, false, "");
                } else if (size == 0 && (passWordView = (PassWordView) getChildAt(size)) != null) {
                    passWordView.setmPassText("");
                    passWordView.OooO0oO();
                }
            }
            this.Ooooo00.clear();
            this.OoooOoo = 0;
        }
        OooO oooO = this.Ooooo0o;
        if (oooO != null) {
            oooO.OooO00o();
        }
    }

    public void OooO0oo() {
        List<String> list = this.Ooooo00;
        if (list != null && list.size() > 0) {
            this.Ooooo00.remove(r0.size() - 1);
            OooOO0();
        }
        if (this.Ooooo0o != null) {
            if (this.Ooooo00.size() > 0) {
                this.Ooooo0o.OooO0OO(getPassString());
            } else {
                this.Ooooo0o.OooO00o();
            }
        }
    }

    public String getPassString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = this.Ooooo00.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.inputType = 2;
        editorInfo.imeOptions = 268435456;
        return new OooO0o(this, false);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getChildCount() == 0) {
            int i3 = this.OoooOoO;
            if ((this.ooOO * i3) + ((i3 - 1) * this.o0OoOo0) > getMeasuredWidth()) {
                int measuredWidth = getMeasuredWidth();
                int i4 = this.OoooOoO;
                int i5 = (measuredWidth - ((i4 - 1) * this.o0OoOo0)) / i4;
                this.ooOO = i5;
                this.o00O0O = i5;
            }
            OooO0Oo(getContext());
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        List<String> list = savedState.saveString;
        this.Ooooo00 = list;
        this.OoooOoo = list.size();
        if (this.Ooooo00.isEmpty()) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            PassWordView passWordView = (PassWordView) getChildAt(i);
            if (i > this.Ooooo00.size() - 1) {
                if (passWordView != null) {
                    passWordView.setmIsShowRemindLine(false);
                    passWordView.OooO0oo(false);
                    return;
                }
                return;
            }
            if (passWordView != null) {
                passWordView.setmPassText(this.Ooooo00.get(i));
                passWordView.OooO0oo(true);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.saveString = this.Ooooo00;
        return savedState;
    }

    public void setPwdChangeListener(OooO oooO) {
        this.Ooooo0o = oooO;
    }
}
