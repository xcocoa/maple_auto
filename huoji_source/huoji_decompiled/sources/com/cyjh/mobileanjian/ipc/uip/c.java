package com.cyjh.mobileanjian.ipc.uip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TableLayout;
import com.cyjh.mqsdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends LinearLayout implements RadioGroup.OnCheckedChangeListener {
    private static final int Oooooo = 32;
    public static final int[] OoooooO = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};
    public RadioGroup OoooOoO;
    private FrameLayout OoooOoo;
    public List<ScrollView> Ooooo00;
    public int Ooooo0o;
    public LinearLayout OooooO0;
    public ScrollView OooooOO;
    public int OooooOo;
    private int Oooooo0;

    public class OooO00o implements View.OnTouchListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            view.requestFocusFromTouch();
            return false;
        }
    }

    public c(Context context) {
        this(context, (byte) 0);
    }

    private c(Context context, byte b) {
        this(context, (char) 0);
    }

    private c(Context context, char c) {
        super(context, null, 0);
        this.OooooOo = 0;
        this.Ooooo0o = (int) TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setOrientation(0);
        LinearLayout linearLayout = new LinearLayout(context);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -1);
        layoutParams.weight = 7.5f;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(1);
        ScrollView scrollView = new ScrollView(context);
        scrollView.setScrollbarFadingEnabled(false);
        RadioGroup radioGroup = new RadioGroup(context);
        this.OoooOoO = radioGroup;
        radioGroup.setOrientation(1);
        RadioGroup radioGroup2 = this.OoooOoO;
        int i = this.Ooooo0o;
        radioGroup2.setPadding(i, 0, 0, -i);
        scrollView.addView(this.OoooOoO);
        linearLayout.addView(scrollView);
        addView(linearLayout);
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()), -1));
        view.setBackgroundColor(-16777216);
        addView(view);
        this.OoooOoo = new FrameLayout(context);
        TableLayout.LayoutParams layoutParams2 = new TableLayout.LayoutParams(0, -1);
        layoutParams2.weight = 2.5f;
        this.OoooOoo.setLayoutParams(layoutParams2);
        FrameLayout frameLayout = this.OoooOoo;
        int i2 = this.Ooooo0o;
        frameLayout.setPadding(i2, 0, i2, 0);
        addView(this.OoooOoo);
        this.Ooooo00 = new ArrayList(32);
        this.OoooOoO.setOnCheckedChangeListener(this);
    }

    private void OooO00o() {
        this.Ooooo00.add(this.OooooOO);
        this.OooooOo++;
    }

    private void OooO0OO(String str) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(OoooooO[this.OooooOo]);
        radioButton.setPadding(0, 0, 0, this.Ooooo0o);
        radioButton.setButtonDrawable(new BitmapDrawable((Bitmap) null));
        radioButton.setTextColor(getResources().getColorStateList(R.color.selector_tab));
        radioButton.setText(str);
        radioButton.setLines(1);
        radioButton.setEllipsize(TextUtils.TruncateAt.END);
        this.OoooOoO.addView(radioButton);
        ScrollView scrollView = new ScrollView(getContext());
        this.OooooOO = scrollView;
        scrollView.setDescendantFocusability(131072);
        this.OooooOO.setFocusable(true);
        this.OooooOO.setFocusableInTouchMode(true);
        this.OooooOO.setOnTouchListener(new OooO00o());
        this.OooooOO.setTag(str);
        this.OooooOO.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.OooooO0 = linearLayout;
        this.OooooOO.addView(linearLayout);
    }

    private LinearLayout OooO0o0() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        return linearLayout;
    }

    public final void OooO0O0(View view) {
        this.OooooO0.addView(view);
    }

    public final void OooO0Oo(List<ScrollView> list) {
        this.Ooooo00 = list;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ScrollView scrollView = list.get(i);
            RadioButton radioButton = new RadioButton(getContext());
            radioButton.setId(OoooooO[i]);
            radioButton.setPadding(0, 0, 0, this.Ooooo0o);
            radioButton.setButtonDrawable(new BitmapDrawable((Bitmap) null));
            radioButton.setTextColor(getResources().getColorStateList(R.color.selector_tab));
            radioButton.setText((String) scrollView.getTag());
            radioButton.setLines(1);
            radioButton.setEllipsize(TextUtils.TruncateAt.END);
            this.OoooOoO.addView(radioButton);
        }
    }

    public final int getCurrentItem() {
        return this.Oooooo0;
    }

    public final List<ScrollView> getScrollViewList() {
        return this.Ooooo00;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        setSelectTab(i);
    }

    public final void setSelectTab(int i) {
        if (this.Ooooo00.size() == 0) {
            return;
        }
        if (i < 0 || i >= 32) {
            i = 0;
        }
        this.Oooooo0 = i;
        this.OoooOoO.check(i);
        this.OoooOoo.removeAllViews();
        this.OoooOoo.addView(this.Ooooo00.get(i));
    }
}
