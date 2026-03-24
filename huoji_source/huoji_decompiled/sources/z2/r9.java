package z2;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.ac.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class r9 extends FragmentPagerAdapter {
    private ArrayList<Fragment> OooO00o;
    private String[] OooO0O0;
    private Context OooO0OO;

    public r9(Context context, FragmentManager fragmentManager, ArrayList<Fragment> arrayList) {
        super(fragmentManager);
        this.OooO0OO = context;
        this.OooO00o = arrayList;
        this.OooO0O0 = context.getResources().getStringArray(R.array.array_pagetitles_name);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.OooO00o.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.OooO00o.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.OooO0O0[i];
    }
}
