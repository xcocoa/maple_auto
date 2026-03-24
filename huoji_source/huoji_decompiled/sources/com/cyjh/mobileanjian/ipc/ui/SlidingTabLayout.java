package com.cyjh.mobileanjian.ipc.ui;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import z2.bf;
import z2.ue;

/* JADX INFO: loaded from: classes2.dex */
public class SlidingTabLayout extends HorizontalScrollView {
    private static final int Oooooo = 24;
    private static final int OoooooO = 4;
    private static final int Ooooooo = 12;
    private int OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private boolean Ooooo0o;
    private ViewPager OooooO0;
    private SparseArray<String> OooooOO;
    private ViewPager.OnPageChangeListener OooooOo;
    private final ue Oooooo0;

    public class OooO0O0 implements ViewPager.OnPageChangeListener {
        private int OoooOoO;

        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(SlidingTabLayout slidingTabLayout, byte b) {
            this();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrollStateChanged(int i) {
            this.OoooOoO = i;
            if (SlidingTabLayout.this.OooooOo != null) {
                SlidingTabLayout.this.OooooOo.onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrolled(int i, float f, int i2) {
            int childCount = SlidingTabLayout.this.Oooooo0.getChildCount();
            if (childCount == 0 || i < 0 || i >= childCount) {
                return;
            }
            SlidingTabLayout.this.Oooooo0.OooO0OO(i, f);
            SlidingTabLayout.this.OooO(i, SlidingTabLayout.this.Oooooo0.getChildAt(i) != null ? (int) (r0.getWidth() * f) : 0);
            if (SlidingTabLayout.this.OooooOo != null) {
                SlidingTabLayout.this.OooooOo.onPageScrolled(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageSelected(int i) {
            if (this.OoooOoO == 0) {
                SlidingTabLayout.this.Oooooo0.OooO0OO(i, 0.0f);
                SlidingTabLayout.this.OooO(i, 0);
            }
            int i2 = 0;
            while (i2 < SlidingTabLayout.this.Oooooo0.getChildCount()) {
                SlidingTabLayout.this.Oooooo0.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            if (SlidingTabLayout.this.OooooOo != null) {
                SlidingTabLayout.this.OooooOo.onPageSelected(i);
            }
        }
    }

    public class OooO0OO implements View.OnClickListener {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(SlidingTabLayout slidingTabLayout, byte b) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            for (int i = 0; i < SlidingTabLayout.this.Oooooo0.getChildCount(); i++) {
                if (view == SlidingTabLayout.this.Oooooo0.getChildAt(i)) {
                    SlidingTabLayout.this.OooooO0.setCurrentItem(i);
                    return;
                }
            }
        }
    }

    public interface OooO0o {
        int a(int i);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OooooOO = new SparseArray<>();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.OoooOoO = (int) (getResources().getDisplayMetrics().density * 24.0f);
        ue ueVar = new ue(context);
        this.Oooooo0 = ueVar;
        addView(ueVar, -1, -2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO(int i, int i2) {
        View childAt;
        int childCount = this.Oooooo0.getChildCount();
        if (childCount == 0 || i < 0 || i >= childCount || (childAt = this.Oooooo0.getChildAt(i)) == null) {
            return;
        }
        int left = childAt.getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left -= this.OoooOoO;
        }
        scrollTo(left, 0);
    }

    private TextView OooO00o(Context context) {
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        textView.setAllCaps(true);
        int i = (int) (getResources().getDisplayMetrics().density * 4.0f);
        textView.setPadding(i, i, i, i);
        textView.setSingleLine(true);
        return textView;
    }

    private void OooO0OO() {
        View viewInflate;
        TextView textView;
        PagerAdapter adapter = this.OooooO0.getAdapter();
        OooO0OO oooO0OO = new OooO0OO(this, (byte) 0);
        for (int i = 0; i < adapter.getCount(); i++) {
            if (this.OoooOoo != 0) {
                viewInflate = LayoutInflater.from(getContext()).inflate(this.OoooOoo, (ViewGroup) this.Oooooo0, false);
                textView = (TextView) viewInflate.findViewById(this.Ooooo00);
            } else {
                viewInflate = null;
                textView = null;
            }
            if (viewInflate == null) {
                TextView textView2 = new TextView(getContext());
                textView2.setGravity(17);
                textView2.setTextSize(2, 12.0f);
                textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                TypedValue typedValue = new TypedValue();
                getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
                textView2.setBackgroundResource(typedValue.resourceId);
                textView2.setAllCaps(true);
                int i2 = (int) (getResources().getDisplayMetrics().density * 4.0f);
                textView2.setPadding(i2, i2, i2, i2);
                textView2.setSingleLine(true);
                viewInflate = textView2;
            }
            if (textView == null && TextView.class.isInstance(viewInflate)) {
                textView = (TextView) viewInflate;
            }
            if (this.Ooooo0o) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewInflate.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setTextColor(getResources().getColorStateList(com.cyjh.mqsdk.R.color.selector_tab));
            textView.setTextSize(2, 14.0f);
            textView.setText(adapter.getPageTitle(i));
            textView.setAllCaps(false);
            viewInflate.setOnClickListener(oooO0OO);
            String str = this.OooooOO.get(i, null);
            if (str != null) {
                viewInflate.setContentDescription(str);
            }
            this.Oooooo0.addView(viewInflate);
            if (i == this.OooooO0.getCurrentItem()) {
                viewInflate.setSelected(true);
            }
        }
    }

    private void OooO0Oo(int i, int i2) {
        this.OoooOoo = i;
        this.Ooooo00 = i2;
    }

    private void OooO0o0(int i, String str) {
        this.OooooOO.put(i, str);
    }

    public final void OooO0o(LinearLayout linearLayout, String str) {
        bf bfVar = (bf) this.OooooO0.getAdapter();
        bfVar.OooO00o.add(linearLayout);
        bfVar.OooO0O0.add(str);
        bfVar.notifyDataSetChanged();
        this.OooooO0.setAdapter(bfVar);
        setViewPager(this.OooooO0);
    }

    public ViewPager getViewPager() {
        return this.OooooO0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.OooooO0;
        if (viewPager != null) {
            OooO(viewPager.getCurrentItem(), 0);
        }
    }

    public void setCustomTabColorizer(OooO0o oooO0o) {
        ue ueVar = this.Oooooo0;
        ueVar.OooooOo = oooO0o;
        ueVar.invalidate();
    }

    public void setDistributeEvenly(boolean z) {
        this.Ooooo0o = z;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.OooooOo = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        ue ueVar = this.Oooooo0;
        ueVar.OooooOo = null;
        ueVar.Oooooo0.OooO00o = iArr;
        ueVar.invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        View viewInflate;
        TextView textView;
        this.Oooooo0.removeAllViews();
        this.OooooO0 = viewPager;
        if (viewPager != null) {
            byte b = 0;
            viewPager.setOnPageChangeListener(new OooO0O0(this, b));
            PagerAdapter adapter = this.OooooO0.getAdapter();
            OooO0OO oooO0OO = new OooO0OO(this, b);
            for (int i = 0; i < adapter.getCount(); i++) {
                if (this.OoooOoo != 0) {
                    viewInflate = LayoutInflater.from(getContext()).inflate(this.OoooOoo, (ViewGroup) this.Oooooo0, false);
                    textView = (TextView) viewInflate.findViewById(this.Ooooo00);
                } else {
                    viewInflate = null;
                    textView = null;
                }
                if (viewInflate == null) {
                    TextView textView2 = new TextView(getContext());
                    textView2.setGravity(17);
                    textView2.setTextSize(2, 12.0f);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    TypedValue typedValue = new TypedValue();
                    getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
                    textView2.setBackgroundResource(typedValue.resourceId);
                    textView2.setAllCaps(true);
                    int i2 = (int) (getResources().getDisplayMetrics().density * 4.0f);
                    textView2.setPadding(i2, i2, i2, i2);
                    textView2.setSingleLine(true);
                    viewInflate = textView2;
                }
                if (textView == null && TextView.class.isInstance(viewInflate)) {
                    textView = (TextView) viewInflate;
                }
                if (this.Ooooo0o) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewInflate.getLayoutParams();
                    layoutParams.width = 0;
                    layoutParams.weight = 1.0f;
                }
                textView.setTextColor(getResources().getColorStateList(com.cyjh.mqsdk.R.color.selector_tab));
                textView.setTextSize(2, 14.0f);
                textView.setText(adapter.getPageTitle(i));
                textView.setAllCaps(false);
                viewInflate.setOnClickListener(oooO0OO);
                String str = this.OooooOO.get(i, null);
                if (str != null) {
                    viewInflate.setContentDescription(str);
                }
                this.Oooooo0.addView(viewInflate);
                if (i == this.OooooO0.getCurrentItem()) {
                    viewInflate.setSelected(true);
                }
            }
        }
    }
}
