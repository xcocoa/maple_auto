package z2;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class bf extends PagerAdapter {
    public List<LinearLayout> OooO00o;
    public List<String> OooO0O0;

    public bf(List<LinearLayout> list, List<String> list2) {
        this.OooO00o = list;
        this.OooO0O0 = list2;
    }

    private View OooO00o(int i) {
        return this.OooO00o.get(i);
    }

    private void OooO0Oo(LinearLayout linearLayout, String str) {
        this.OooO00o.add(linearLayout);
        this.OooO0O0.add(str);
        notifyDataSetChanged();
    }

    public final View OooO0O0(String str) {
        Iterator<LinearLayout> it = this.OooO00o.iterator();
        View viewFindViewWithTag = null;
        while (it.hasNext() && (viewFindViewWithTag = it.next().findViewWithTag(str)) == null) {
        }
        return viewFindViewWithTag;
    }

    public final void OooO0OO(View view, String str, String str2) {
        for (LinearLayout linearLayout : this.OooO00o) {
            if (linearLayout.getTag().equals(str)) {
                ((LinearLayout) linearLayout.findViewWithTag(str2)).addView(view);
            }
        }
    }

    public final void OooO0o0(String str, String str2, int i, int i2) {
        for (LinearLayout linearLayout : this.OooO00o) {
            if (linearLayout.getTag().equals(str2)) {
                linearLayout.addView(xe.OooOO0o(linearLayout.getContext()).OooOo0o(str, i, i2));
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView(this.OooO00o.get(i));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.OooO00o.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final CharSequence getPageTitle(int i) {
        return this.OooO0O0.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = this.OooO00o.get(i);
        viewGroup.addView(linearLayout);
        return linearLayout;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
