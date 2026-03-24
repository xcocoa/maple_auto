package z2;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mqsdk.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class af {
    private static int OooOo = 0;
    private static final String OooOo0 = "first_row_tag";
    private static final int OooOo00 = 4096;
    private static final String OooOo0O = "row_mark";
    private static final int OooOo0o = 256;
    private WindowManager OooO00o;
    private WindowManager.LayoutParams OooO0O0;
    private ExToast OooO0OO;
    private Context OooO0Oo;
    public View.OnClickListener OooO0o;
    private LinearLayout OooO0o0;
    public View.OnClickListener OooO0oO;
    private String OooO0oo;
    private LinearLayout OooOOO;
    private xe OooOOO0;
    private LinearLayout OooOOOO;
    private TextView OooOOOo;
    private Set<String> OooO = new HashSet();
    private Set<String> OooOO0 = new HashSet();
    private HashMap<String, String> OooOO0O = new HashMap<>();
    private HashMap<String, String> OooOO0o = new HashMap<>();
    public boolean OooOOo0 = false;
    private ArrayList<SlidingTabLayout> OooOOo = new ArrayList<>();
    private Handler OooOOoo = new OooO0OO();

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (af.this.OooO0o != null) {
                af.this.OooO0o.onClick(view);
            }
        }
    }

    public class OooO0O0 implements View.OnClickListener {
        public OooO0O0() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (af.this.OooO0oO != null) {
                af.this.OooO0oO.onClick(view);
            }
        }
    }

    public class OooO0OO extends Handler {
        public OooO0OO() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 256) {
                return;
            }
            af.this.OooO0o0.invalidate();
        }
    }

    public class OooO0o implements ViewPager.OnPageChangeListener {
        public final /* synthetic */ SlidingTabLayout OoooOoO;

        public OooO0o(SlidingTabLayout slidingTabLayout) {
            this.OoooOoO = slidingTabLayout;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageSelected(int i) {
            this.OoooOoO.setFocusable(true);
            this.OoooOoO.setFocusableInTouchMode(true);
            this.OoooOoO.getViewPager().requestFocus();
        }
    }

    public af(Context context, String str, int i, int i2) {
        this.OooO0oo = null;
        this.OooO0Oo = context;
        this.OooOOO0 = xe.OooOO0o(context);
        this.OooO00o = (WindowManager) this.OooO0Oo.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.OooO0O0 = layoutParams;
        int i3 = Build.VERSION.SDK_INT;
        layoutParams.type = i3 >= 26 ? 2038 : (i3 < 19 || i3 >= 24) ? 2002 : 2005;
        layoutParams.format = 1;
        layoutParams.gravity = 16;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.alpha = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -1;
        DisplayMetrics displayMetrics = this.OooO0Oo.getResources().getDisplayMetrics();
        if (OooOOo0(40) + i >= displayMetrics.widthPixels) {
            i = -1;
        } else if (i < -2 || (i >= 0 && i < OooOOo0(200))) {
            i = OooOOo0(200);
        }
        if (OooOOo0(40) + i2 >= displayMetrics.heightPixels) {
            i2 = -2;
        } else if (i2 < -2 || (i2 >= 0 && i2 < OooOOo0(200))) {
            i2 = OooOOo0(200);
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.OooO0Oo);
        this.OooOOOO = (LinearLayout) layoutInflaterFrom.inflate(R.layout.layout_ui_show, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) layoutInflaterFrom.inflate(R.layout.layout_display, (ViewGroup) null);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        this.OooOOOO.setGravity(17);
        this.OooOOOO.addView(linearLayout);
        this.OooOOOo = (TextView) this.OooOOOO.findViewById(R.id.title);
        this.OooO0o0 = (LinearLayout) this.OooOOOO.findViewById(R.id.layout_user);
        this.OooOOOO.findViewById(R.id.exit).setOnClickListener(new OooO00o());
        this.OooOOOO.findViewById(R.id.next).setOnClickListener(new OooO0O0());
        this.OooO0oo = str;
        OooO0oo(str);
        OooOO0(OooOo0O, str, -1, -2);
    }

    private void OooO0Oo(int i, int i2) {
        DisplayMetrics displayMetrics = this.OooO0Oo.getResources().getDisplayMetrics();
        if (OooOOo0(40) + i >= displayMetrics.widthPixels) {
            i = -1;
        } else if (i < -2 || (i >= 0 && i < OooOOo0(200))) {
            i = OooOOo0(200);
        }
        if (OooOOo0(40) + i2 >= displayMetrics.heightPixels) {
            i2 = -2;
        } else if (i2 < -2 || (i2 >= 0 && i2 < OooOOo0(200))) {
            i2 = OooOOo0(200);
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.OooO0Oo);
        this.OooOOOO = (LinearLayout) layoutInflaterFrom.inflate(R.layout.layout_ui_show, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) layoutInflaterFrom.inflate(R.layout.layout_display, (ViewGroup) null);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        this.OooOOOO.setGravity(17);
        this.OooOOOO.addView(linearLayout);
        this.OooOOOo = (TextView) this.OooOOOO.findViewById(R.id.title);
        this.OooO0o0 = (LinearLayout) this.OooOOOO.findViewById(R.id.layout_user);
        this.OooOOOO.findViewById(R.id.exit).setOnClickListener(new OooO00o());
        this.OooOOOO.findViewById(R.id.next).setOnClickListener(new OooO0O0());
    }

    private void OooO0o(View.OnClickListener onClickListener) {
        this.OooO0o = onClickListener;
    }

    private void OooOOOo(View.OnClickListener onClickListener) {
        this.OooO0oO = onClickListener;
    }

    private int OooOOo0(int i) {
        return (int) (i * (this.OooO0Oo.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    private boolean OooOo() {
        return this.OooOOo0;
    }

    private void OooOo00(String str) {
        this.OooO0oo = str;
        OooO0oo(str);
    }

    private String OooOo0O() {
        return this.OooO0oo;
    }

    private void OooOo0o() {
        this.OooO00o = (WindowManager) this.OooO0Oo.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.OooO0O0 = layoutParams;
        int i = Build.VERSION.SDK_INT;
        layoutParams.type = i >= 26 ? 2038 : (i < 19 || i >= 24) ? 2002 : 2005;
        layoutParams.format = 1;
        layoutParams.gravity = 16;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.alpha = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -1;
    }

    private static String OooOoO0() {
        StringBuilder sb = new StringBuilder("first_row_");
        int i = OooOo;
        OooOo = i + 1;
        sb.append(i);
        return sb.toString();
    }

    public final void OooO(String str, int i) {
        this.OooOO0.add(str);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.OooO0Oo).inflate(R.layout.ui_show_sliding_layout, (ViewGroup) null);
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) linearLayout.findViewById(R.id.slidingTabLayout);
        slidingTabLayout.setTag(str);
        slidingTabLayout.setDistributeEvenly(true);
        slidingTabLayout.setSelectedIndicatorColors(this.OooO0Oo.getResources().getColor(R.color.ui_show_blue));
        slidingTabLayout.setBackgroundResource(R.drawable.bg_tab_host);
        slidingTabLayout.setOnPageChangeListener(new OooO0o(slidingTabLayout));
        if (i == -2) {
            i = OooOOo0(200);
        }
        ViewPager viewPager = (ViewPager) linearLayout.findViewById(R.id.viewPager);
        viewPager.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        viewPager.setAdapter(new bf(new ArrayList(), new ArrayList()));
        slidingTabLayout.setViewPager(viewPager);
        this.OooO0o0.addView(linearLayout);
        this.OooOOo.add(slidingTabLayout);
    }

    public final String OooO0O0() {
        return this.OooOOOo.getText().toString();
    }

    public final void OooO0OO(int i) {
        this.OooOOOo.setTextColor(i);
    }

    public final void OooO0o0(Typeface typeface, int i) {
        this.OooOOOo.setTypeface(typeface);
        this.OooOOOo.setTextSize(2, i);
    }

    public final void OooO0oO(View view, String str) {
        new StringBuilder("row tag: ").append(this.OooOO0O.get(str));
        if (str.equals(this.OooO0oo)) {
            this.OooOOO.addView(view);
        } else if (this.OooO.contains(str)) {
            ((bf) ((SlidingTabLayout) this.OooO0o0.findViewWithTag(this.OooOO0o.get(str))).getViewPager().getAdapter()).OooO0OO(view, str, this.OooOO0O.get(str));
        }
    }

    public final void OooO0oo(String str) {
        this.OooOOOo.setText(str);
    }

    public final void OooOO0(String str, String str2, int i, int i2) {
        if (str2.equals(this.OooO0oo)) {
            LinearLayout linearLayoutOooOo0o = this.OooOOO0.OooOo0o(OooOo0O, i, i2);
            this.OooOOO = linearLayoutOooOo0o;
            this.OooO0o0.addView(linearLayoutOooOo0o);
            this.OooOO0O.put(str2, str);
            return;
        }
        if (this.OooO.contains(str2)) {
            ((bf) ((SlidingTabLayout) this.OooO0o0.findViewWithTag(this.OooOO0o.get(str2))).getViewPager().getAdapter()).OooO0o0(str, str2, i, i2);
            this.OooOO0O.put(str2, str);
        }
    }

    public final boolean OooOO0O(int i, String str, String str2, String str3) {
        if (!this.OooOO0.contains(str2)) {
            return false;
        }
        String strOooOoO0 = OooOoO0();
        this.OooO.add(str);
        this.OooOO0O.put(str, strOooOoO0);
        this.OooOO0o.put(str, str2);
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) this.OooO0o0.findViewWithTag(str2);
        LinearLayout linearLayoutOooO0oO = this.OooOOO0.OooO0oO(i, str);
        linearLayoutOooO0oO.setId(i);
        LinearLayout linearLayoutOooOo0o = this.OooOOO0.OooOo0o(strOooOoO0, -1, -2);
        this.OooOOO = linearLayoutOooOo0o;
        linearLayoutOooO0oO.addView(linearLayoutOooOo0o);
        slidingTabLayout.OooO0o(linearLayoutOooO0oO, str3);
        return true;
    }

    public final void OooOOO() {
        this.OooOOoo.sendEmptyMessageDelayed(256, 10L);
    }

    public final View OooOOO0(String str) {
        View viewFindViewWithTag = this.OooO0o0.findViewWithTag(str);
        if (viewFindViewWithTag == null) {
            Iterator<SlidingTabLayout> it = this.OooOOo.iterator();
            while (it.hasNext() && (viewFindViewWithTag = ((bf) it.next().getViewPager().getAdapter()).OooO0O0(str)) == null) {
            }
        }
        return viewFindViewWithTag;
    }

    public final void OooOOOO(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadii(new float[]{OooOOo0(4), OooOOo0(4), OooOOo0(4), OooOOo0(4), 0.0f, 0.0f, 0.0f, 0.0f});
        this.OooOOOo.setBackground(gradientDrawable);
    }

    public final void OooOOoo() {
        this.OooOOo0 = true;
        this.OooO00o.addView(this.OooOOOO, this.OooO0O0);
    }

    public final void OooOo0() {
        this.OooOOo0 = false;
        this.OooO00o.removeView(this.OooOOOO);
    }
}
