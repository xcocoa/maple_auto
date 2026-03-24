package z2;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import androidx.viewpager.widget.PagerAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class df extends PagerAdapter {
    private List<ScrollView> OooO00o;
    private List<String> OooO0O0;

    public df(List<ScrollView> list, List<String> list2) {
        this.OooO00o = list;
        this.OooO0O0 = list2;
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
        ScrollView scrollView = this.OooO00o.get(i);
        viewGroup.addView(scrollView);
        return scrollView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
