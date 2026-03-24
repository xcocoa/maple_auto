package com.cyjh.elfin.ui.view.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.ac.R;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.ab;
import z2.me;
import z2.ya;
import z2.za;

/* JADX INFO: loaded from: classes.dex */
public class TabPageIndicator extends HorizontalScrollView implements ab {
    private static final CharSequence Oooooo;
    private Runnable OoooOoO;
    private final View.OnClickListener OoooOoo;
    private final za Ooooo00;
    private ViewPager Ooooo0o;
    private ViewPager.OnPageChangeListener OooooO0;
    private int OooooOO;
    private int OooooOo;
    private OooO0OO Oooooo0;

    public class OooO00o implements View.OnClickListener {
        public final TabPageIndicator OoooOoO;

        public OooO00o(TabPageIndicator tabPageIndicator) {
            this.OoooOoO = tabPageIndicator;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OooO0o oooO0o = null;
            String str = "ۥۖۛۚۥۨۨۢ۫ۡ۬ۚۖۨۢۗۘ۫ۙۚۤۙۘۤۧۥۘۚۦۨۘۥۡ۠ۤۜۘۜ۟ۙ۠ۛۡۘۜۦ۠۟۟ۙ";
            int iOooO0O0 = 0;
            int currentItem = 0;
            while (true) {
                switch ((((str.hashCode() ^ 316) ^ 510) ^ 942) ^ (-122531721)) {
                    case -865382047:
                        iOooO0O0 = oooO0o.OooO0O0();
                        str = "ۧۚۖۥ۠ۥۘۥۧ۬۟۬ۖ۟۫ۢۦۡۜۘۡۤۥۘ۬ۦۥۘۢۙۛۦۡۙ۠ۥ۠ۙۜۧۤۢۡۖۛۤۗۙۡۘۚۖۖۘ";
                        continue;
                    case -730641305:
                        str = "ۧۘۢۚۘۛۘ۟ۛۗۡۨۘۗۦۨۘ۟ۜ۠ۢۙۘۘۢۧۖۦۡۖ۫ۡۖۘۖ۬ۧۙۢۙ";
                        currentItem = TabPageIndicator.OooO0OO(this.OoooOoO).getCurrentItem();
                        continue;
                    case -381243733:
                        String str2 = "ۚۤۢۤۧۨۘۗۛۢ۠۠ۖۘۨۦ۠ۡۦۤۜۘۖۙۤۨۜۨۖۨ۫ۤۘۘۗ۠ۨۢۜ۬ۛ۠ۦۤۧ۟ۥ۬ۥۘۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1889084976) {
                                case -2092331057:
                                    str2 = "ۡۙۘۜۜۜۖۚۚۡۜۤۢۥۤۥۛۜۘ۫ۖۨ۠ۢۨۧۙۦ۫ۖ۫۫ۥ۠ۡۢۧ۬۟ۥۘۦۢۢۨۤۙۧۧۤ";
                                    break;
                                case -171012386:
                                    str = "ۡۜۖۢۥۥۡۦۢ۬ۗۨۧۤۙ۫ۙۨۦۦۜ۫ۚۡۡۚ۟۬۫ۗ۫۬ۥۘۙ۬ۤۜۡۜۛۗ۠ۙۖۖۧۥۡ۠۟ۙ";
                                    break;
                                case 1127169297:
                                    break;
                                case 2063974036:
                                    String str3 = "ۜۘۦۘۘ۬ۤۙۨۖۘۦ۟۟۠۬۠ۙ۟ۚ۠ۖۡ۫ۙۧۛ۫ۚۦ۟ۥۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-2119503154)) {
                                            case -988182437:
                                                str3 = currentItem == iOooO0O0 ? "ۘ۠ۘۚ۬۬ۧۢ۫۬ۤۜۘۦۤۛۧۖۦۜۘ۠ۡۘۖ۠ۜۘ۫ۛۦۢۦۜۘۜۢۜۘۗ۫۫ۙ۟ۡۤ۟ۜۘۚۜۤۜ۫ۗ۬ۘ۠" : "ۘۤۘۘۛۧۗۡۨۗ۫۫ۙۖۜۨۚ۠ۧۗۖۙۥۘۙۚۥۘۧۚۖۘۚۖۛۨۜۦۘ";
                                                break;
                                            case 145178502:
                                                str3 = "۬ۘ۫ۡۢ۠ۚۙ۟ۛۚۡۤۛ۠۫ۡۦۢ۠ۨۘۥۨۡ۬ۗۡۖۚۖۗ۠ۛۚ۫۠ۨۛۚۚۧۨۘۤۢۗۜ۟ۡۘ";
                                                break;
                                            case 147200769:
                                                str2 = "ۗۤۨۘ۟ۜۥۜ۠ۦۗ۟ۖۥۥۦۘۗۖۥۘۖۥ۟ۦۙۦۘۙ۫ۘۘۨۤۖۦۗۧۖۧۘ";
                                                break;
                                            case 301219032:
                                                str2 = "۟ۡۖۛۢۦۘۤۦۘۘۜ۫ۧ۫ۗۡ۬ۖۨۘ۫ۖۥۘۘۜۨۘۘ۫۫۬ۦۨ۫۟۬۬ۦۥ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -137913027:
                        str = "ۜۢۥۘۧ۠ۢ۠۠۫۠ۛۘۘۥ۟ۚۦۛ۟ۡۦۨۘۛۚۢۖۜۧۦۥۧ";
                        continue;
                    case -67412071:
                        str = "ۛۜۡۘ۫ۤ۠۠۠ۖۢۛۘۘ۬۟ۢۧۤۗۥۚۦۘۦۢۢۡ۠ۖۥۘۘۙۢۜۨۜ۟ۢۛۨۡۦۖ";
                        oooO0o = (OooO0o) view;
                        continue;
                    case 269551170:
                        return;
                    case 510688232:
                        String str4 = "۟ۡۚۖۗۡۘ۠۟۠ۦۗۖۘۘۢۢۤۖۧۘۤۡۤۜۥۘۧۖۙۗۧۡۘۖ۠ۚۧۨۤۗ۟ۛۚ۬ۚ۫ۙۖۘۢۙۗۘۨۛۡۗۦۘ";
                        while (true) {
                            switch (str4.hashCode() ^ (-1663903769)) {
                                case -1725798772:
                                    str4 = "ۗ۟ۦۗۘۜۘۘۨۘۘۗۚۡۜۧ۬ۢ۬ۡۘۖۥۘۘۧۚۡۘۦۘۖۦۚۤ";
                                    break;
                                case -1415729190:
                                    String str5 = "ۡ۬ۚ۫۬۬ۡۙۗۦۗۗۦۙۚ۫ۡۨۘۘۦۨۘۗۙ۠ۜۧۨۘۡۦۥۨۚۖۢۗۦۖۘۨ۫ۧۙۜۚ۟ۚۨ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 1348038815) {
                                            case -2051621628:
                                                str4 = "۟ۜۨ۟ۥ۟۬ۖۜۛۡۥۘۖۧ۬ۙۘۥ۫۫۠ۥۨۘۘۧ۫ۘۘۖۨۚ۠ۙۦۜۤۧ۠ۛ۟ۜۙۘۥۤۗۚۦ۬ۡۖ۟۫ۦ";
                                                break;
                                            case -1430653469:
                                                str5 = TabPageIndicator.OooO0Oo(this.OoooOoO) != null ? "ۚۙۧۛۗۖۦۚۗۥۛۧۨۤۜۘۧۤۨۘۛ۬۟ۖ۠۬ۤۧۦ۟ۨۦۛ۠ۨ۫ۘۜۘ" : "ۥ۫۬۫ۜ۠ۛۡۥۘۦۘ۠۬ۘ۬ۛۨۛۢۧۨۧۦ۟ۛۖۘۡۢۖۚۘۘ۠۠ۖۗۥۧۘۦۢۘۘۧۢۙۜۧۘۘ۟ۧۧۨۦۡ";
                                                break;
                                            case -854452648:
                                                str4 = "ۦۥۛۜۙۦۘۡۨۖۘ۫ۥۜۘۢ۟ۨۨۖۜۨ۠ۛۡۚۙۘۧۜ۬ۧ۟ۧۡۡۧۘۡۧۧۖۚۡۘ۠۠ۦۧۨۗ";
                                                break;
                                            case -76677722:
                                                str5 = "ۛۤۡۘۜۖۥۥۘۜۘۗۙۦۘۙۚ۫۬ۜۘۛۧۚۚۧ۬ۢۚۚۖۜۨۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case -901202286:
                                    break;
                                case 1482276243:
                                    str = "ۛۨۥۘۖۛ۫۬۟ۖۘۥۡۦۘۡۢۖۘۚۦ۟ۨ۫ۘ۟ۦۧۛۛۖۘۤ۬۬ۥۜۙ۟ۛۛۢ۫ۡۘۨۙۖ";
                                    break;
                            }
                        }
                        break;
                    case 867695854:
                        str = "ۙ۠ۘۘۨۚۙۚۤۢۡ۟ۡۘ۟ۗۤ۠۟ۥۘۚۜۢ۠ۥۙۗۘۘۘ۬۫ۧ";
                        continue;
                    case 1313966275:
                        TabPageIndicator.OooO0Oo(this.OoooOoO).OooO00o(iOooO0O0);
                        str = "۠۟ۖۘۚۖۜۘ۬ۥۤۗۚۥۢۡۗۦ۫ۘۘۙۦۦۘۘۗ۠ۥۛۧۢۧ۬ۡۘۚ۠ۙۨۡۡۘۚۚۚ";
                        continue;
                    case 1560651085:
                        TabPageIndicator.OooO0OO(this.OoooOoO).setCurrentItem(iOooO0O0);
                        str = "ۚۘۡۘۙۦۧۘۢۚۚۧ۟ۙۖ۠۟ۡۡ۬ۜۙۦۘۛۧۘۘۥۡۨ۬ۘ۬۠ۦۥۧۨۦۘ۟ۢۖۢ۟۬ۢ۠ۤۦۥۢۘ۟ۛۨۥۦۘ";
                        continue;
                }
                str = "۠۟ۖۘۚۖۜۘ۬ۥۤۗۚۥۢۡۗۦ۫ۘۘۙۦۦۘۘۗ۠ۥۛۧۢۧ۬ۡۘۚ۠ۙۨۡۡۘۚۚۚ";
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final View OoooOoO;
        public final TabPageIndicator OoooOoo;

        public OooO0O0(TabPageIndicator tabPageIndicator, View view) {
            this.OoooOoo = tabPageIndicator;
            this.OoooOoO = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۢۢۛۗ۠ۘۘ۠ۧۜۢۥۚۧۙ۫ۢۤۥ۟ۚۡۘۦۛۢۗۛۜۘ۬ۗۙ۠ۜۘۧۜۨۘۢۜۛۧۡۦۘۥۤۦۘ۬";
            int width = 0;
            int left = 0;
            while (true) {
                switch ((((str.hashCode() ^ 7) ^ 997) ^ 439) ^ 487460375) {
                    case -2059836854:
                        left = this.OoooOoO.getLeft();
                        str = "ۡۦۚۤۘۦۥۧۡۢۨۧۡ۬ۘ۫۠ۘۜۧۘۖۛۖۘۛۚۧ۠ۤۥۘۥۘ۬ۢ۫";
                        break;
                    case -2030356372:
                        TabPageIndicator.OooO0o0(this.OoooOoo, null);
                        str = "ۗ۟ۖۢۢ۟ۡ۟۟ۢۨۤ۟ۥ۫ۡۥۗ۟ۚۖۘۧ۬ۧۖۡۨۘۤۥۥۙۦ۫ۦۢۡۘ۫ۧۦۘ۫ۚۜ";
                        break;
                    case -1861917760:
                        width = (this.OoooOoo.getWidth() - this.OoooOoO.getWidth()) / 2;
                        str = "۬ۚۤۤۨۨۡۙۙۗۤۚۛۛۗۛۧۢۢۙ۫ۘۧۘ۟۠ۧۜۦۢۧۘ۠ۖۙۢۦۜۨۘۦۨۚۦ۟ۦۘۙۨ۟";
                        break;
                    case -86562900:
                        return;
                    case 166264558:
                        str = "ۨۨۥۘ۫۫ۦۘ۠ۦ۟ۘۙۘۘۗۥۘۘۦۜۖۥۡۖۗ۟ۜۘۚۗۥۘۡۛ۫ۢۚۛۧۤۨ";
                        break;
                    case 2030667329:
                        this.OoooOoo.smoothScrollTo(left - width, 0);
                        str = "ۖۜۖۨۛ۬ۥۡ۠ۢۗۡۘ۟۬ۥۘۧۗۚۧۗۡۘۜۢۡۘۢۙۨۘ";
                        break;
                }
            }
        }
    }

    public interface OooO0OO {
        void OooO00o(int i);
    }

    public class OooO0o extends TextView {
        private int OoooOoO;
        public final TabPageIndicator OoooOoo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0o(TabPageIndicator tabPageIndicator, Context context) {
            super(context, null, R.attr.vpiTabPageIndicatorStyle);
            this.OoooOoo = tabPageIndicator;
        }

        public static /* synthetic */ int OooO00o(OooO0o oooO0o, int i) {
            String str = "۠۟ۦۖۚۛۡۚۙۘۘۧۡ۫ۜۘۗ۟۠ۨۜۡۘۧ۬ۗ۠ۦۡۛۡ۟ۥۖۗ۫۬۠ۤۦۘۚۚۜۘۦۦۦۜۤۥۘۖۖۚۤۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE) ^ 57) ^ 548) ^ 801696908) {
                    case -929958013:
                        return i;
                    case 41905404:
                        str = "ۙ۠۟ۘۘ۬ۚۘ۬ۨ۬ۥۘۜۥۗ۠ۗۙۢۘ۫ۘۥۨۤۛ۠ۥۖۧۘۡۦۨۧۛۚ۫۠ۛۤۥۨ";
                        break;
                    case 297819394:
                        str = "۟۫۬ۘ۠ۨۘ۠ۨۨۘۥۚۜۘۚۘۡۤۚۧ۠ۖۜۥۛۙۧۚۗۜۘۨۧۧۜۘۖۘۢۢۥۘۛ۫ۛۘۖۦۘۡۡۘ";
                        break;
                    case 738115514:
                        oooO0o.OoooOoO = i;
                        str = "ۚۥۡۘۥ۬ۡۘۗ۫ۦۘۤۖۦۢۡۡۘۢۘۡ۟ۦۘۤۗۖۘۦ۠ۨ۟ۙۘۘ۠ۘۗۗۢۜۘ";
                        break;
                }
            }
        }

        public int OooO0O0() {
            String str = "۟ۧ۟۟ۖۧۘۤۤۥۡۖۘۢۘۧۘۜۢ۟ۤۗۖۛ۬۠۟۟ۛۘ۬ۘۘ۫ۡۘۘ۫ۛۘۘۙۥۧ۟۬ۦۘ۫ۨۜۗۘ۫ۙۗ۠ۢۥۘ";
            while (true) {
                switch ((((str.hashCode() ^ 656) ^ 859) ^ 562) ^ 1101467285) {
                    case -1220727544:
                        str = "ۥۘۙ۬ۗۦۛۤۦۘۥۜۡۘۛۦۜۜ۫ۗۜۤۜ۫ۦۧۥۨۘۢۛۨ";
                        break;
                    case 145095115:
                        return this.OoooOoO;
                }
            }
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int i, int i2) {
            String str = "ۢۘۙۥۜ۬ۦ۫ۧۥۚۢۙۨۖۘۚ۠ۖۡ۠ۨۢۜۚۤۚۗۢۨۜۘۚ۫ۖۥ۟۠";
            while (true) {
                switch ((((str.hashCode() ^ 16) ^ 687) ^ 713) ^ (-1358226767)) {
                    case -1628674334:
                        super.onMeasure(i, i2);
                        str = "ۨۡۛۤۘۚۛۜۜۘۙۙۘ۠ۨۗ۫ۚۚۖۢۥۘۦۜۘۛۤۨ۬ۜۦ۠ۡۧ۬ۚ۠ۚۦۦۡۚۥۖ۟۫۫ۗ۠";
                        continue;
                    case -1397234516:
                        str = "ۙۡۘۗ۟ۘ۟ۖۥۘۦ۟ۨۘۘۛۥ۬ۦۧۘۘ۫ۨۘۥۜۛۡۚۦۘۡۖۘۚۜۖۡۜۤۨۚۨۘۢۗۥۘ۠۫۠ۨۤ";
                        continue;
                    case 478433670:
                        str = "ۤۢۘۗۖۧۥۡۢ۠ۚۥۘ۫ۡ۬۟۬ۖۜۥۘۖ۠ۖۘ۟ۨۖۘۗۨۘ";
                        continue;
                    case 911406348:
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.OooO0o(this.OoooOoo), 1073741824), i2);
                        str = "ۡۜۘۘۡۙۥۘۗۧۧۖۨۛۦۖۗۧۖۨۨ۟۫۟ۛۥۘۡۘۡۖۗۤۢۘۦۤۤۜۤ۫ۡۘ۫ۧۡۘ۫ۚۖۢۖۘ";
                        continue;
                    case 983221086:
                        str = "ۨۚۖۧۥۤۜ۠۠۫ۦ۟ۘۦۧۜۙۖۘۚۚۨۦۢۡۘۗۡۘ۠ۚۗۜۛ۬ۤۡۡۘ";
                        continue;
                    case 1369972683:
                        return;
                    case 1581569376:
                        String str2 = "ۨۜۧۚۖۖۘ۬ۖۡۙۡۗۚ۬۫ۜۙۦۘۗۤۨۤۙۚ۟ۨۡ۟۠۟";
                        while (true) {
                            switch (str2.hashCode() ^ (-684435488)) {
                                case -1756497074:
                                    str = "ۡۘۤۛۜۥۘۙ۟ۚۡۖ۠ۗۦۘۙ۟ۨۤ۬ۜۘۡۨ۫ۗۡ۟ۥۙۘۛۦ۟ۨۡۜۘ";
                                    break;
                                case 175763892:
                                    break;
                                case 1059716025:
                                    str2 = "ۧۢ۠ۜۙۜۢ۟ۜۚۚۨ۬ۛۢۙۖۘ۬ۛۡۛۨۦۧۥ۠ۚۗ۫۠ۥۖۘۙۖ۫ۙ۬ۦۘۧ۬۠۫ۖۡۘۚۢۥ";
                                    break;
                                case 1223165455:
                                    String str3 = "ۢۡ۠ۢۖۥۘ۬ۘۡۢۘۜۘۘۥۜۖۥۥۜۙۧۢۘۜۨ۬ۜۘۛۘۦۘۚۥۖۘ۟۫ۡۧ۟ۢۥۚۙۖۖۡۤۛۖۖۨۦۘۜۙۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-1539391170)) {
                                            case -916952746:
                                                str3 = "ۜ۬ۙ۟ۜۦ۠۬ۨۘۤۥ۫ۚۗ۟ۨۘۖۘۜ۠ۘۘۧۖۦ۫ۨ۬ۥۜۦۘۡ۠ۖۘ۟۠";
                                                break;
                                            case 629299443:
                                                str2 = "ۚۡ۠ۡۧۘ۠ۤۥۘ۫ۡۖۧۚۙۖ۟۠ۡۜۥۘۚۛۘۘ۠ۤۘۘۖ۫ۨۘ";
                                                break;
                                            case 1498509430:
                                                str3 = getMeasuredWidth() > TabPageIndicator.OooO0o(this.OoooOoo) ? "ۗۤۖۘۘۘۘ۬ۥۦۜ۫ۨۤۨۥۘۗۛۤۛۜۙۤۜۙۡۖۧۤ۠ۤۡۧۗۜۡۘۛۘۚۘۛۙۜۧۙۜۤۚۥۚۡ۫ۡۘ" : "ۤۡۖۘۤۢۚۨۦۨۡۧۦۘۗۡۛ۬ۗۨۙۙ۠ۙۜۥۡۖۛۤۖ۬ۗۡۘۗۘۚۜۘۨۘ۬۬ۧ۫ۛۘۥ۠۟";
                                                break;
                                            case 1993674235:
                                                str2 = "ۖۜ۬ۜۨۦۥۘۧۗۖۛۡۚۜۘ۠۟۟۬ۘۡۘۘ۬ۗ۫۬۟ۜۡۘۢۚۧۥۨۤۦ۬ۖۘۜ۬ۤ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case 1827056240:
                        String str4 = "ۥۡۘۤۙۡۦۚ۠ۚۨۨۘۧۨۧۗۘۙ۟ۗۜ۫۠ۦۛۖۨۘۦۦۗ۠ۥۘۖۖ۬۠ۨۦۦۗۥۘ";
                        while (true) {
                            switch (str4.hashCode() ^ 1440794010) {
                                case -2100036268:
                                    str = "ۘۨ۠۫ۢۡۜۖۛ۬ۡ۠ۜۜۙۖۜۥۙۧۦۘۦۜۧۘۛۖۡۘۙۖ۫۫ۤۧۗۛۨۘ۫ۘۤۥۗۙ";
                                    break;
                                case -1396640084:
                                    String str5 = "ۥ۬ۨۘۙ۟ۥۗۜۘۨۚۥۗ۫ۤۧۨۡۘ۫ۜۛۢ۟ۛۨ۫ۦۧۨۤ۠ۤۗۙۤۥ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 1404518699) {
                                            case -2131207088:
                                                str4 = "ۛۢۙۚۜۘ۠۟ۨۨ۠ۡۘ۬۠ۖۖ۬ۘۢۡ۠۟ۤۛۡۛۦۛ۠۟ۢ۬ۜ۬ۡۦۘۤۚۡ۟ۚ۟";
                                                break;
                                            case -1704241287:
                                                str4 = "ۗ۟ۧۡۜۡۨۙۖۛۜۘ۠ۡ۫ۜۨۗۗۖۘ۟۠ۧۦۖۡۘۙۤۨ۠ۦۦۧ۟۟ۛۡۙۖۜۘۙۤۖۖۚ۠۠ۡۧۗۜۡۘ";
                                                break;
                                            case -1430629520:
                                                str5 = TabPageIndicator.OooO0o(this.OoooOoo) > 0 ? "ۥ۠ۘۢۡۥۘۚۗۢۛۥ۠۫۬ۜۛۖ۠ۜۘۢ۫ۤۜۤۡۚۙۖ" : "۠۠ۘۤۢ۫۬ۙۡۢۜۖۘۙۗۧۖۦۚۘۧۖۛۘ۫ۜۜۜۘ۠۟ۜ۠۫ۖۘ۫ۙۖۘۦۨۗ۫ۘۡۘۘ۠۬۫۫ۦۘۙۡۘۘۛۚۜۘ";
                                                break;
                                            case -1119120584:
                                                str5 = "ۗۖۧۘۛۘۘ۫ۖۥۘۥۨۦۚ۫۫ۡۗۛۨۗۦۛ۬ۢۙۗۢۡ۫ۨۘۗۨۘۧۙۘۘۙۚۜۘ۟ۤۢۢۦ۟ۜۙ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1202262810:
                                    str4 = "۠ۙۘ۠ۚۥ۟ۙۖۢۖ۬۟ۧ۟ۢۗ۟۠ۘۘۜۧۘۙۤۧ۟۬۬۟ۡۘ۟۬ۖۘۚۡۨ۟ۙۡۘۧ۠ۨۘ۠ۖۥ";
                                    break;
                                case 55568289:
                                    break;
                            }
                        }
                        break;
                }
                str = "ۡۜۘۘۡۙۥۘۗۧۧۖۨۛۦۖۗۧۖۨۨ۟۫۟ۛۥۘۡۘۡۖۗۤۢۘۦۤۤۜۤ۫ۡۘ۫ۧۡۘ۫ۚۖۢۖۘ";
            }
        }
    }

    static {
        String str = "ۙۘۚۙۥ۫۬ۚۘۚۨۜۘۢۤۘۗۚۦۘ۟ۗۥۦۡۨۘۘ۫ۡۘۖۜۨۜۗۖۥ۫ۛ";
        while (true) {
            switch ((((str.hashCode() ^ 547) ^ 143) ^ 655) ^ 208606641) {
                case -2119835001:
                    Oooooo = "";
                    str = "ۙۦۨ۬ۥۘۡۢۥۘۨ۬۟ۡۥ۟ۙ۟ۨ۫ۦۡ۟ۙۚۤۖۘۢۥ۬";
                    break;
                case -1985499371:
                    return;
            }
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoo = new OooO00o(this);
        setHorizontalScrollBarEnabled(false);
        za zaVar = new za(context, R.attr.vpiTabPageIndicatorStyle);
        this.Ooooo00 = zaVar;
        addView(zaVar, new ViewGroup.LayoutParams(-2, -1));
    }

    public static /* synthetic */ ViewPager OooO0OO(TabPageIndicator tabPageIndicator) {
        String str = "ۚۗۚۖۘۡۘۡۥۧۘۡۘۥ۫۫۫ۚۙۧۖۡۘۤۖۨۘۚ۬ۘۘۖۧۥ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_VIEW_VALUE) ^ 374) ^ 675) ^ 1718748692) {
                case -1304644854:
                    str = "ۨ۬ۥۘ۠ۙۡۘۙۤ۟ۢۤۤ۫ۧ۫ۜۡۘۙۤۙۥۧۥۘۜۦۘۘۥۛۚ۫۠ۦۘۛۦۖۘۥۗۛۗۢۜۘ";
                    break;
                case -606848779:
                    return tabPageIndicator.Ooooo0o;
            }
        }
    }

    public static /* synthetic */ OooO0OO OooO0Oo(TabPageIndicator tabPageIndicator) {
        String str = "ۜ۬ۖۙ۫ۖۘۙ۟ۡۡۨ۬ۙۗۦۜۙۛۢ۟ۨۘۛۙۦۘ۬ۤۤ۠ۛۤۙۤۦ۟ۖۗۧۘۙ۬۫ۦ";
        while (true) {
            switch ((((str.hashCode() ^ 537) ^ 27) ^ 138) ^ 648632538) {
                case 1164294935:
                    return tabPageIndicator.Oooooo0;
                case 2118863626:
                    str = "ۦ۟۫ۗ۬ۡ۠ۤۜ۫ۡۥ۫ۥۚۢ۫ۙۗۛۢۙۡۦۦۦۤۗۙ";
                    break;
            }
        }
    }

    public static /* synthetic */ int OooO0o(TabPageIndicator tabPageIndicator) {
        String str = "ۚۧۖۦۘۢۙ۫ۧ۫ۨۘۘۦۗۤۜۥۦۘۚ۬ۡۚۤۦۘۨ۟ۗۜۢۗۖۢۘۥۖۥۘۗ۬ۛۘۘۖۧۛۘۚۦۘ۫ۗۨۘۛ۬۫";
        while (true) {
            switch ((((str.hashCode() ^ a.aU) ^ 316) ^ UiMessage.CommandToUi.Command_Type.GET_TITLE_BACKCOLOR_VALUE) ^ (-1537229169)) {
                case -1815828543:
                    return tabPageIndicator.OooooOO;
                case -961603883:
                    str = "ۧۗۖۢۥۨۢۤۨۘۤۦۙ۠۬ۦۛ۠ۢۙۡۢۤۜۘۧۙۦۙۧۘ۬ۜۛۙۛۥۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ Runnable OooO0o0(TabPageIndicator tabPageIndicator, Runnable runnable) {
        String str = "۟۟ۚۚۢۘۘۦۡۘۘۡۡۧۢۘ۠ۗ۬۬ۙ۬ۛۨ۟ۥۙۡۧ۬ۖۘۧۚ۫۬ۘۡۦۜۤ۫ۖ۟";
        while (true) {
            switch ((((str.hashCode() ^ 384) ^ 595) ^ 952) ^ (-318315321)) {
                case -2106737558:
                    tabPageIndicator.OoooOoO = runnable;
                    str = "ۧۜۢۘۛۜۨۚۦۘۢۗ۟ۚ۠ۖ۬ۘۥۖۤۙۘ۟ۧۖۜۘۡ۫۠ۡۦۥ۫ۚۜۖ۫ۖ۠۫۬ۜۤ۫۠ۨۘ";
                    break;
                case -1851159783:
                    str = "۬ۖۡ۟ۢۧۙۙۜۘۨۗۡ۠ۛۢۢۚۥ۫ۢۚۙۤۨۥۚۧۡۡۦۘۨۗ۠ۜۦۖ۟ۨۛۤ۠۬۫ۜ۟۠ۛۛ";
                    break;
                case -207251174:
                    return runnable;
                case 1529495683:
                    str = "ۙۢۨۘۧ۠ۚۜۦۘۡۜۨۢۧۨۘۙۚۦۧۘۜۘۜۥۘۤ۟ۖۨۘۖۡۥۛۚۘ۠۠ۧ۫ۖۗۛۛۨ۫ۚۘۨ۫۟ۥ۫۬ۖ";
                    break;
            }
        }
    }

    private void OooO0oO(int i, CharSequence charSequence, int i2) {
        OooO0o oooO0o = null;
        String str = "ۧۗۙۚ۟۠ۤۥۙۛۘۢۘۦۘ۫۠۠ۢ۠ۦۜۥۡۡۧۡۥۖۡۤۛۚ۠۠ۢۖۘۨ۬ۚۥۤۨۘۡۢۙ";
        while (true) {
            switch ((((str.hashCode() ^ 42) ^ 438) ^ 492) ^ 1659585367) {
                case -1918135670:
                    str = "ۜۦۘۡۦ۫۫ۛۥۘۛۖۧۘۤۡۢۙۢۧ۟ۚۡۘۖ۬ۢۥۜۢۤ۟ۘ";
                    break;
                case -1904907362:
                    oooO0o.setText(charSequence);
                    str = "۬ۜۥۘ۫ۦۧۦۨۢ۟ۨۡۘۢۖۥۘۦۘۖۗ۟ۦۨ۟ۦۙ۟ۚ۬ۛۘۘ۟ۜۗۢۘۚۚۡ۬ۚ۬ۤۚۖۘۘۥ۫";
                    break;
                case -1248347006:
                    return;
                case -939259828:
                    this.Ooooo00.addView(oooO0o, new LinearLayout.LayoutParams(0, -1, 1.0f));
                    str = "ۨۦۙۗ۠۫ۨۛ۬ۚۜۙ۬۬ۧ۫ۙۢ۟ۘۜۧۘۖۨۘۚۡۨۢۗۚۤ۫۠ۤۙۘۧۘۡۙ۠";
                    break;
                case -922216194:
                    str = "ۖۤ۠ۡۖۗۢۘۨۧۦ۬ۦۗۢۗۨۨۘۙۘۥۙۘۥۛۗۧۢۦۤۗۘ۬ۗ۬ۚ۠ۛۤۚ۟ۘۘۤۢۡۘۜ۟ۨۘ";
                    break;
                case -338351541:
                    str = "ۢۘۢۛۡۜۥ۫ۙۚۛۘۘۨۥ۬ۤۥۘۛۚۦۘۧۢۡۘۥۤۖۘۜۥۥۘۢۜ۠۠ۧۦۘ";
                    break;
                case -253810125:
                    oooO0o.setOnClickListener(this.OoooOoo);
                    str = "ۙۡۧۚۧۥۘۗۧۥۘۧۙۘۘۨ۟ۡۡ۬۟ۚۙۨۘۗۙۢۡۚۜۘۗۘۦۡۘۗۢۚ۬ۜۛ۟ۗۛ۬ۨۡۦۘۚۤۧ";
                    break;
                case 23710192:
                    OooO0o.OooO00o(oooO0o, i);
                    str = "ۨۤۥۤۖۦۘۨۢ۬ۨۧۘۜۤ۬ۡۤۨ۬ۗۥۚۜۘۧۖۜۡۚ۟ۘۗ۠ۥۧۡۡ۟ۡۖ۟ۦۘۖ۬ۙ۬ۜۥۘ";
                    break;
                case 51033463:
                    oooO0o.setFocusable(true);
                    str = "ۢۨۘۤۖ۫ۢۥۖۘۡۡۡۘۖۢۥۜ۫۠ۜۙۨۖ۟ۤ۬ۨۘۢۥۘۘ";
                    break;
                case 163060994:
                    String str2 = "ۛۘۤۨۖ۬ۜۘۧۘۖۦۧۗۡۛۦۧۘۖۦۢۙۨۧۤۙۨۘۗۘۜۘۖۧۤۘ۠ۦۘ۟ۦۥۘ۟ۦۨۤ۟ۡ۟ۗ۠ۚ۠۠۫۟ۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1797931435) {
                            case -1914306717:
                                str = "ۜۖۤۨۗۡۜۥۧۘۧۤۙۚۢۧۦۢۚۛ۬۫ۘۧۖۘۤ۫۫ۘۖۢۛۖۙۡۤۤ۬ۘۡ۠ۗۢۢۚۢۖۢۘۘۤ۫ۢۚۦۧ";
                                continue;
                            case 887735736:
                                str = "۬۟ۙۥۨۦۘۙۖۜۜۧۘۛ۫ۡۗۨۘۘۖۖۖۜۚ۠ۜۤۗۤۧ۟ۡ۫ۡۘۛۢۨۘ";
                                continue;
                            case 1371098619:
                                str2 = "۫۫ۖۚ۫ۛۚۢۚۚ۠ۗۧۨۦۛ۫ۧۧ۟ۢۧۢۡ۟ۥۜۤۢ";
                                break;
                            case 2044167523:
                                String str3 = "۬ۤ۬ۧۘۜ۬ۙۧۢ۫ۧ۟ۨۤۙۡۢۦۡۘۥۘۨۗۡۗۥۧ۠ۙۜ۫ۧۜۦۘۢۚۤ۠ۙ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1163145319)) {
                                        case -958140578:
                                            str3 = i2 != 0 ? "۟ۜۧۘۨۨۜۨۧۡۘ۫ۡۖۘۨ۠ۗ۫ۗۜۘۜ۫ۡۥۢۢۚ۟ۦۜ۬ۨۘ" : "۬ۗۧۜۜ۫۫ۡۧۨۘۦۨۧۨ۟ۥۙۖۙ۬۫ۛ۟۠ۖۛۦۤۚۡۤۢۙۥۚۘۚ۠ۧۤۢ";
                                            break;
                                        case -435288504:
                                            str2 = "ۢۚۖ۫ۤۨۤۗۜ۠ۖۥ۫ۗۜۢۛۛۧ۬ۦۘۥۜۚۨ۫ۡۘۖ۬ۛ";
                                            break;
                                        case 366136282:
                                            str3 = "ۡۢ۬ۘۡۡۘ۬ۧۦۘۦۙۚۜۦۙۢۦۜ۟ۨۢ۟ۚۜۧۜۤ۠ۙۧۤۙۦۘ۠ۧ۟ۚۢۚۖۗۙۨۘۡ۟";
                                            break;
                                        case 1447851839:
                                            str2 = "ۙۡۦۘۛۥ۬۠ۦۢۗ۫۬ۛۜۖۖ۬ۛۦۥۖۘۥ۫ۥ۬۠ۨۡۧ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 723982349:
                    oooO0o.setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
                    str = "ۜۖۤۨۗۡۜۥۧۘۧۤۙۚۢۧۦۢۚۛ۬۫ۘۧۖۘۤ۫۫ۘۖۢۛۖۙۡۤۤ۬ۘۡ۠ۗۢۢۚۢۖۢۘۘۤ۫ۢۚۦۧ";
                    break;
                case 1328121927:
                    str = "ۤۗۥۘۥۦۦۘ۠ۡۖۘۥۦۨۜۥۢۙۦۛ۫ۦۙۧ۟ۘۧۖۦۘ۬ۖۡۡۢۦۘۜۜۦۘۚۗۦۨۨۡۘۙ۟ۧۛ۬ۗ";
                    break;
                case 2141244171:
                    oooO0o = new OooO0o(this, getContext());
                    str = "ۨۛ۟ۢۙۧ۬ۜۤۢ۟ۡۘ۬۠ۖۥۙۦۦۤۜۘۡ۬ۥۘ۠ۡۛۥۖۚۗۜ۟ۖ";
                    break;
            }
        }
    }

    private void OooO0oo(int i) {
        String str = "۬ۡۛۙۧۖۙ۬ۦ۫۬ۙۨ۫ۤۜۡۡۚۘ۫۫ۡۥ۫ۜۡۥ۬ۥۨۘۧۨۦۖۥۡۘۧۥۦۧۚۖۘۜۥۡۘ۬ۦ۟۟";
        OooO0O0 oooO0O0 = null;
        Runnable runnable = null;
        View childAt = null;
        while (true) {
            switch ((((str.hashCode() ^ 187) ^ 198) ^ 41) ^ 2098437798) {
                case -2021150839:
                    str = "ۙۤۘۡۧۡۚ۫ۡۘۨۙۨ۠ۡۚ۠ۥۤۗۜ۫ۤۥۧۚ۟ۨۖۡۨۘ";
                    break;
                case -1737207268:
                    str = "ۦ۟ۧۤۚۡۘۡۥۚ۬۠ۙۙۤۧۧۨۘ۟ۖۧ۬ۤۚۨۥۘۖۧۛۤۛۖۧۨۘۤۤۧ۬ۗۡ۬ۥ۠ۚ۠ۛ";
                    break;
                case -1724624627:
                    oooO0O0 = new OooO0O0(this, childAt);
                    str = "ۨۖۥۘۧ۫ۥۘۨۚۡۘۤۖ۬ۨۛ۠ۘۚۗۚۙۡۘۨ۠ۢۦۦۧۘۗۥۨۖ۠ۡۢۙۡۘ۠۟۬ۖۗۘۘ";
                    break;
                case -681365875:
                    this.OoooOoO = oooO0O0;
                    str = "ۧ۟ۜۘ۠ۧۚ۠ۛۥۘۨۚۦۘۢۥۗ۠ۜۜۨۜۘ۫۫۟ۘۚۤۚ۠";
                    break;
                case -601865246:
                    post(oooO0O0);
                    str = "ۨۖۖۥۨۡۘۛ۬ۧ۟ۗۥۤۡۘۗۙۘۥۗۘۘ۠ۜۥۦۢۨ۫ۡۘۚ۠۟ۡۧۘۨۧۘۘۧۛۤ";
                    break;
                case -38252787:
                    return;
                case 873543609:
                    String str2 = "ۗۚ۬ۘۥۚۘۚۤۦۚۥۘۗ۟ۦۘۦۘۧ۫ۘۜۗ۟ۘۘۧۦۜۘ۫ۡۜ";
                    while (true) {
                        switch (str2.hashCode() ^ 388418828) {
                            case -2001519730:
                                str = "۬ۦۖ۬ۦۨۘ۟ۘ۟ۨۨۙۙۚ۠ۙۧۥۘ۬ۦۢۦۡۧۘۘۧۦۜۜۧۘۧۜۗۨۘ۠ۨۙۜۘۙ۠ۤۤۜۚۛۗۤۚ۬ۖۘ۫ۢۛ";
                                continue;
                            case -1252609471:
                                str2 = "ۙۧۢ۠۟ۙۚۨ۬ۨ۬ۖۘۚۗۜۘۘۗۨۨۤۡۘۛۜۘۨۢۥۗ۠";
                                break;
                            case -1192711354:
                                String str3 = "ۦۜۧۚۤ۫ۛۙۥۨۧۡ۟ۢۤۦۘۚۚۧۧۦۧۘۡۢۗۨۗۗۡ۬ۥۘۡ۫ۛۘۘۖ۬ۘۘۘۛۧۨۢ۫۠";
                                while (true) {
                                    switch (str3.hashCode() ^ 253250525) {
                                        case -1585447114:
                                            str3 = runnable != null ? "ۙ۠ۤۢ۟ۢ۟ۧۦۚۨ۟ۤۛ۟ۗ۟ۥۢۛۘۘۘۚۥۘ۫ۗۜ۠ۢ۫" : "ۙۘ۬ۥ۬ۤۖۛۘۘۦۢۨۛۢۜۘۘۗ۟ۘۘۤۛۚۛ۟۟ۜۘۘۢۖۡۘ۫ۦۘۗۙۙۛۖۡۘ";
                                            break;
                                        case 646400712:
                                            str2 = "۠ۨۦۘۛۛ۠ۢۦۨۘ۬ۧۘۙ۬ۥ۫ۤ۠ۦۛۖۘۙ۬ۨۤ۫ۦۡ۟ۧۦۛۢ۬ۚۘ۠ۚۤۡۗۖۜۨ۬ۜ";
                                            break;
                                        case 1105820522:
                                            str3 = "۟ۖۨۡ۠۬ۘۦۖۘۥ۠ۨۘۘ۬۠ۙۦۖۨۦۤ۬ۢ۠۟۬۟ۘ۫ۘۘ";
                                            break;
                                        case 1115878000:
                                            str2 = "ۖۥۨۘۦ۫ۧ۫۠ۡۢۗۢۡۢۖۥۦۤۥۖۨۦۜۦۘ۫۫ۨۘ۠ۥۘۤۜ۠ۡ۫ۧۜۦۡۘۡۨ۠";
                                            break;
                                    }
                                }
                                break;
                            case 398392851:
                                str = "ۙۙۜۦ۠ۙۨ۬۬ۦۘۘۛۚۨۘۥۢۛ۬ۜۥۘۜۜۧۖۥۜ۫ۜۧ";
                                continue;
                        }
                    }
                    break;
                case 1515542021:
                    str = "ۖۥ۫ۤۖۘۗۢۖۘۗۨۡۘ۬ۧ۟ۨۘۖۘۨۦۡۘ۬۬ۛۡۨ۟ۡ۫ۨۜۢۦۘ۬ۖۖۘ";
                    childAt = this.Ooooo00.getChildAt(i);
                    break;
                case 1975938283:
                    str = "ۨۗۦۤۧۦۘۢۚ۫ۖۜۥۘۦۨ۟ۘۨۛۗ۠ۘۦۙۡۦۦۜ۟ۦۖۦۦۡۢۙۨۘۧۙۦۗۖ";
                    runnable = this.OoooOoO;
                    break;
                case 2117444849:
                    removeCallbacks(runnable);
                    str = "ۙۙۜۦ۠ۙۨ۬۬ۦۘۘۛۚۨۘۥۢۛ۬ۜۥۘۜۜۧۖۥۜ۫ۜۧ";
                    break;
            }
        }
    }

    @Override // z2.ab
    public void OooO00o() {
        PagerAdapter adapter = null;
        ya yaVar = null;
        ya yaVar2 = null;
        ya yaVar3 = null;
        int count = 0;
        int i = 0;
        CharSequence pageTitle = null;
        CharSequence charSequence = null;
        CharSequence charSequence2 = null;
        int iOooO00o = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        String str = "ۛ۫ۨۘۥۙ۬ۢۡۜۤۥۘۗۥۡۛۜۚۚۖۙ۟ۥۦۘۡۖۖۘۜۗۡ";
        while (true) {
            switch ((((str.hashCode() ^ 328) ^ 76) ^ 667) ^ 164411440) {
                case -1548278201:
                    OooO0oO(i5, charSequence2, i3);
                    str = "ۦۦۘۢۛۙ۫ۛ۠۟ۥۗۙۨۧۚ۫ۦۛۛۦۧۢۢۜۦۜۛۡۘۗۡۖ۫ۤۘۘۢۤۢۚ۟۬ۨۥ۫ۖ۠ۗ";
                    break;
                case -1441495585:
                    pageTitle = adapter.getPageTitle(i5);
                    str = "ۤۧ۫ۥۗۖۘ۫ۗۧ۟۬ۖۨۜۘۡۖۦۢۗۚۡۗۗۚۥۧۚۖۘۦۨۡۛ۫ۘۘۡ۬ۘۙۨۥۡۨۨ۟ۙ۟ۚۨ۠ۚۦۦۘ";
                    break;
                case -1361061893:
                    str = "ۘۚ۬۟ۜۧۜ۬ۜۘۚ۬ۥۗۢۦۦۜۦ۟۬۬ۗۢۥ۠ۦۥ۟ۥۘۛۙۛ۬ۦ۬ۦۚۨۘۡۚۡۘۨ۠۬ۚۥۜۘ";
                    i3 = i2;
                    break;
                case -1255884739:
                    str = "۬ۚۖۘۢۘۦۘۙۙۧۘۙۡۖۤۚۨۡۖۘۗۤۖۤۢۥۘۨ۟۟ۗۤۖۘ";
                    break;
                case -1226555817:
                    iOooO00o = yaVar3.OooO00o(i5);
                    str = "ۘۖۥ۟ۡۡ۫ۡۡ۬ۖۘۘۜۖۦ۫۠ۥۘۜ۬ۤ۠ۨۜۚۤۘۘۧ۟۫۫۬۬ۖۤۧ";
                    break;
                case -1154291221:
                    str = "ۚۖۥۢۢۖۢۧ۫۟ۤۜۘ۬ۥۢ۟ۜۦۜ۬ۚۡۙۖۘۜۧ۫۟ۨۡۙۗۨۘۚۡۡۛۥۥۘۙۜۜۘۡۗۚۧۨ۬";
                    charSequence2 = charSequence;
                    break;
                case -1033527527:
                    str = "ۦ۬ۥۘۚۜۗ۫ۧۤۦۦۥ۫ۤۨۜۤ۬۬ۤۤۢۢۚۛۨ۫ۤۙۦۖ۟ۨ۠ۡ۬ۤۘۖ۫ۧۨۘۘۙۢ";
                    yaVar3 = yaVar2;
                    break;
                case -885165516:
                    str = "۬ۚۖۘۢۘۦۘۙۙۧۘۙۡۖۤۚۨۡۖۘۗۤۖۤۢۥۘۨ۟۟ۗۤۖۘ";
                    i5 = i;
                    break;
                case -801203544:
                    str = "ۜ۬ۘۨۘۜۘ۠ۚۛۡۜۦ۫ۛۦۘۖۤۜۦۖۡۘۛۛ۫ۨۙۖۘ۠۫۫";
                    charSequence2 = pageTitle;
                    break;
                case -404513873:
                    str = "ۥ۫ۙۘۚۚۛۛۤۥۘ۫۟۟ۚۤۢۜۜۨۨۨۧۢۡۨۘۘۤۜۘۚ۬ۘ۫ۖۨۙۡ۫ۤۨۜ";
                    i3 = iOooO00o;
                    break;
                case -398895344:
                    str = "ۡۥۥۘۙۢۚۙ۠ۜۘۙۧۨ۠ۧۖۖ۟ۨۘ۟ۤۢۚۢۨۘۛۡۡۘۖ۠۠ۗۛۗۖ";
                    i5 = i4;
                    break;
                case -396818823:
                    this.Ooooo00.removeAllViews();
                    str = "ۨ۟ۡۘۖۜۜۖۘۡۘۦ۬ۦۘۖ۠ۖ۫۠ۢ۟ۗۜۘۛۜۜۘۡۨۦۗۗۧ۫ۛۙۢ۬ۖۤۦۙۚ۫ۚۙۘۡۧۜۘۚۡ۠ۙ۫ۜ";
                    break;
                case -358173764:
                    String str2 = "ۦۨۖۢۖۡۙۡۦۦۜۨۜۨۦۧ۟ۧۨۤۙ۟ۘۜۜۜۘۘۨۖۥۨۢۖۘۧۦۢۥۨۖۧۛۡ";
                    while (true) {
                        switch (str2.hashCode() ^ 872914102) {
                            case -1367446798:
                                str = "ۘۙۥۘ۠ۨۥۘۖۘۢ۫ۥۦۢۜۚۦۥۜۨۥۜۘۦۛۧۦۖۦۘ۬ۚۡ";
                                continue;
                            case 53479651:
                                str2 = "ۙۖۢ۟ۘۦۘۙۚۦ۟ۘۧۘۗۖۤۜۛۜ۬ۙۗ۠ۧۥ۠ۡۛ۟ۧۛ";
                                break;
                            case 448450596:
                                String str3 = "ۗۘۥۖۦ۫ۛۦۢۗۘۜۘۘۗۤۖ۫ۙۚ۠ۜۘۧۗۜۙۨۖۘ۬ۦۨ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1686742763) {
                                        case -699595188:
                                            str3 = "ۘ۟ۗۦ۬۟۠ۥۥۘۙۖۨۘۙۖۘ۠۠ۗۢۛۥۗۢۖۘۦۨۨۘ۬ۥۡۘۗۧۡۘ۠ۥۧۘۗ۫ۛۤۦۦ";
                                            break;
                                        case -633057741:
                                            str2 = "ۚۦ۟ۧۚ۬ۧۘۙۨۧۘۡۗۡۥ۠ۛ۟ۦۜۥۖ۫ۘۨۢ۫ۡۧۘۛ۠ۖۦۗ۫";
                                            break;
                                        case 67288772:
                                            str3 = i5 < count ? "ۚ۫۟۠ۙۖۘۥۤۥۧۢ۠ۥۢۜۘۧ۫۟۫ۛۨ۠۫ۦۘ۬ۥۜۗۛ۟۟ۛۤ۫ۛۦۘۧۜۙۨۢۗۧۙۘۜۥۧۘۢۜۨۘ۟۬" : "ۨۚۡۛۖۙۨۧۛ۟ۖۦۢۘ۠۟ۗۚۢ۠ۘۘۧۗۗۢۖۘ۟ۨۨ۟ۥۢۙۨۘۢۖۜ۫ۨۛ۫ۗۦۘۘ۟ۦۘۗۗۨۦۚ";
                                            break;
                                        case 904126176:
                                            str2 = "ۧ۬ۢۚۚۦۘۡۥۜۘ۬ۘۖۘۧۗۥۢۧۚۦ۟ۘۘۙ۫ۨۘ۫ۚۚۨۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1529911111:
                                str = "ۙۗۨۘۛۦۦۤ۟ۖۗۛۙ۫۫ۘۘۢۜۘۢۡۗۜۥۥۙۚۛۢۗۥۘۖۖۨۘۖۦۨۤۢۚۧۗ";
                                continue;
                        }
                    }
                    break;
                case -348281791:
                    count = adapter.getCount();
                    str = "ۙۦۖۘۖ۠ۨۚۙۙ۫ۦۘۖ۠ۨۖۖۖۘۚۨۜ۟ۥۚۗ۬۟۫ۧۦ۬۠۬۟ۨۥۢۨۘۚۡ۠۫ۥۡۘۤۛ۬";
                    break;
                case -346930285:
                    str = "ۦ۬ۥۘۚۜۗ۫ۧۤۦۦۥ۫ۤۨۜۤ۬۬ۤۤۢۢۚۛۨ۫ۤۙۦۖ۟ۨ۠ۡ۬ۤۘۖ۫ۧۨۘۘۙۢ";
                    break;
                case 49227769:
                    this.OooooOo = count - 1;
                    str = "ۢ۠ۦۥ۬ۘۘ۬ۡۜۘۤ۬ۤ۬ۦۡۖ۬ۖۘ۫ۛۦۘۢ۠ۡۗۛ۠ۨۨۘۤۗۖۦۙۨۦۥۦۥۚۧۧۥۘۜۡۦۘۡۖۛۡۗۖ";
                    break;
                case 71007257:
                    charSequence = Oooooo;
                    str = "ۥۦۜۘۗۚۚۧۥۖۘ۬ۧۥۘ۬ۡۛ۠ۢۦۗۚ۫ۡۧۥۘۗ۠ۢۚ۠";
                    break;
                case 123890421:
                    adapter = this.Ooooo0o.getAdapter();
                    str = "ۢۡۥۘۦۘۦۡۡۨ۫ۨۜۢۖۘۨۥۦۘۤۨۧۛۖۘۖۧۨ۫ۗۖۘۙۥ۟ۚ۬ۧ۟ۦۦۘۖۖۢۚۚۥۘۥۜۖۘ";
                    break;
                case 197588414:
                    str = "ۤ۟ۢۧۡ۬ۙۧۖۘ۠ۡۚۧۜۘۛۙ۠۟ۛۘۙ۫ۖۘۧۥ۟ۧۤۙ";
                    yaVar = (ya) adapter;
                    break;
                case 280234237:
                    str = "۫۟ۘۙ۬ۡ۬ۜۧۘۡۘۖۘۙۦ۫ۘۛۖۘۜۢۡۘ۠۬ۦۡۨۦۚۨۜ۠ۘۨ۟ۛۦۘۖۨۗۖۖۖۘ";
                    break;
                case 529374316:
                    i2 = 0;
                    str = "ۗ۫ۢۚۙ۟ۙۡۥ۬۬ۘۚۙۘۘۘ۟ۡۘۢۗ۠ۜۗ۟ۘۜ۟۬ۦۖۘۦ۫ۤ۠ۨۥۘۖۛۛ۟ۢۧ";
                    break;
                case 563705773:
                    String str4 = "۟ۡۢۡۗۗۡۡ۬ۙۛۜۘۚۥۤۗۨۖۖۦۜۘ۫۬ۦۤۥۧۘۖ۫ۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-770350317)) {
                            case -1038438378:
                                str = "ۢۗۚ۠ۢۚۛۨ۫۠۠ۤۡۧۥ۠ۖۘۚ۫۬ۦ۬ۙ۬ۡۚۘۘ۟ۜۦۘ۟ۦۖۘۛۡۗۛۨۡۘ";
                                continue;
                            case 783581662:
                                String str5 = "ۢۦۘۘۗ۬ۛۢۡۘ۫۠ۘۘ۬ۖۥۛ۬ۡۨۦ۟۟ۗۖۘۡۨۙۚۖۥۘۨۛۘۘۗ۬ۦ۬ۖۦ۫ۤۘ۟ۙۨۡۖ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1360312557)) {
                                        case -1864200921:
                                            str5 = "ۧۦۙۧۧۖۦۗ۟ۦۛۨۤ۫ۜۚۧۛ۠ۜۡۛۧۥۘ۟ۡۙۢۙ";
                                            break;
                                        case -1104110342:
                                            str5 = adapter instanceof ya ? "ۛۨۨ۠ۤۡ۬۟ۘۛۘۤۘۧۨۘۜۥ۫ۤۤ۠ۛۙۚۗۢ۟ۧۨۡۘۦۘۥۘ۠ۛۧۛۚۥ۠ۤۘۘ" : "ۘۙۖ۫ۘۖۘۨ۫ۥۘۨ۬ۢۘۥۙۛۦۘۢۨۜۘۢ۫۟ۡۦۜۘۙۛۡۘۢۗۜۢۦ۠";
                                            break;
                                        case 918383383:
                                            str4 = "ۥۢۦۘۘ۠ۘۘۜۧۡ۫ۦۥۘ۠ۡۘ۟۟ۜۢۙ۟ۛۖۦۛۗۤۙۚۨۘ۬ۤۦۗۡ۬";
                                            break;
                                        case 1680082669:
                                            str4 = "ۛ۟ۡۘۦۚۦۗ۠ۢ۫ۙ۟ۢۧۨۨ۠ۜۘ۠ۤۡۗ۠ۜۘۚۡۧۘۦ۠ۖۘۚۜۘۧۤۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 994671457:
                                str = "ۥۘۨۢۚۜۘۖۤۡۘۖۢۘۘۙۦۜ۠ۙ۫ۜۙۦۘۦ۟ۦۗۤۤۖۦ۠ۗ۬ۙۘۥ۫۠ۜ۟۠ۢۢ";
                                continue;
                            case 1883693835:
                                str4 = "۠ۖۘۡ۬۠۫ۜۘۘۨ۟ۨ۟ۦۨۘۚۡۗۛۙۡۘۛۗۥۘۡۢۦۦ۬ۗ۠ۙۨۙۘۘۘ";
                                break;
                        }
                    }
                    break;
                case 568984216:
                    String str6 = "ۦۚۤۧ۫ۤۧۨۘۘ۫ۖۚۜۤ۬۠ۗۤۤۛۥۛۡۡۘۡۧ۬ۚۚۧۥۜۘۨۥۡۦ۫۟ۨۨۖۘ۫ۨۘۙ۠ۨ";
                    while (true) {
                        switch (str6.hashCode() ^ (-502267827)) {
                            case -2069082409:
                                String str7 = "ۤۜۖۘۡ۟ۛۤۚ۫ۗۧۚ۠۬ۖۘۜۘۖۨ۫ۙۛ۠ۜۦۘۢۧۦۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-758506424)) {
                                        case -653105418:
                                            str7 = pageTitle == null ? "ۚۦۧۘۤ۬ۖۘۜ۫ۖۘ۫ۨۡۧۘۘۙۚۖۘۢۨۨۤۗ۠ۙۢۦ۫ۧۘۥۤۨۘۦ۬ۖۘۖۗۖۘۙۨۦۘۡ۫ۗۚ۠ۤۨۡۡۘۚ۠ۦ" : "ۤۡۨۘۚ۬ۥۘۙ۟ۦۘۥۘۘۘۜۙۥۘۨ۠ۦۢۢۙۦ۬ۙۚۨ۟ۗ";
                                            break;
                                        case -130248844:
                                            str7 = "۫ۧۥۘۜۥۤۙۘۜۢۛ۬۠ۡۡۘۨۨۢۡۘۥۘۘ۬ۥۘ۫ۦ۠۫ۨۧۙ۬۠ۥۦۥۘ۠ۧۤۨۖۥ";
                                            break;
                                        case 1193353621:
                                            str6 = "ۜۚۙ۫ۜۥۘۙ۬ۨۤۢۡۨۡۖۤۙ۟ۗۧۥۘۜۛۗۙۜۖۘۚۘۘۘ";
                                            break;
                                        case 1957463049:
                                            str6 = "ۢ۬ۨۘۤۧ۟ۡۘۨۧ۟ۖۢۖۙۘ۫ۡۨ۠ۡ۫ۥۗۚۖۘۤۖۡۘۜۢۡۘۦۢۙ";
                                            break;
                                    }
                                }
                                break;
                            case -466218198:
                                str = "ۚۖۥۢۢۖۢۧ۫۟ۤۜۘ۬ۥۢ۟ۜۦۜ۬ۚۡۙۖۘۜۧ۫۟ۨۡۙۗۨۘۚۡۡۛۥۥۘۙۜۜۘۡۗۚۧۨ۬";
                                continue;
                            case -106596205:
                                str6 = "ۚ۟ۦۘۦۛۜۘۚۦۖۘۘۘ۫ۜۘۥۘۘۧ۬ۢۙۖۘ۠ۨۨۚۛ۟ۖ۟ۨ۬۬ۙ۠ۚۜۗۨۘۨ۟ۢ۫ۦۗۦۜ";
                                break;
                            case 924851995:
                                str = "ۚۢۤۜ۠۬ۚۧۡۙ۠ۖۜۢۜۘۗۖۜۙۤۦۦۘۦۘ۠ۜۘۢ۠ۡۘ۟ۜۖ۫۫ۨۘ۟ۤۡۤۡ";
                                continue;
                        }
                    }
                    break;
                case 677070241:
                    str = "ۘۙۜۛۡۜ۠ۨۧۗ۬ۘۖ۬ۗۖۧۙۧۛۘۨۘۧۗۙ۫۟۫";
                    yaVar3 = yaVar;
                    break;
                case 723005102:
                    str = "ۘۚ۬۟ۜۧۜ۬ۜۘۚ۬ۥۗۢۦۦۜۦ۟۬۬ۗۢۥ۠ۦۥ۟ۥۘۛۙۛ۬ۦ۬ۦۚۨۘۡۚۡۘۨ۠۬ۚۥۜۘ";
                    break;
                case 969654747:
                    setCurrentItem(this.OooooOo);
                    str = "ۜۧۘۘۧۘۜۘۘۢۜۘۘۨۛ۠ۨۥۘۜۨۢۗۨۗۘۗۛۗۛۨۘۥۦۖۨۛ۬۬ۡۧۥۨۤۛۨۥۘ۟ۢۘۙۨ";
                    break;
                case 1091629994:
                    i = 0;
                    str = "ۨۤۚۛۖۦۘۛۚۘۥۨۨۘۘۥۘۘۦۘۗۜۗۤۜ۟ۧۥۘۜۨۡۛۧۧۨۨۨۘ";
                    break;
                case 1557004516:
                    String str8 = "ۚۤۛۢۢ۟۠۟ۡۖۡۨ۬ۤۦ۠ۚۡ۠ۚۨۥۚۡ۟ۜۤ۫۬ۨۘ۠ۚۛۤۦۘ۫ۡۘۡ۫ۛۢۚۘۥۚۖ";
                    while (true) {
                        switch (str8.hashCode() ^ 161636607) {
                            case -474805840:
                                str = "۟ۜۘۙۜۢۗۘۗۡ۬ۜۡۚۚۜۡۧۘۢۜۥۘۚۚۦۘۡۚۜۤۙۘۛۨ۬ۙۢۚۦۜۘۗ۟۫ۢۘ۠ۜ۠ۚ";
                                continue;
                            case 1049328879:
                                str = "ۢ۠ۦۥ۬ۘۘ۬ۡۜۘۤ۬ۤ۬ۦۡۖ۬ۖۘ۫ۛۦۘۢ۠ۡۗۛ۠ۨۨۘۤۗۖۦۙۨۦۥۦۥۚۧۧۥۘۜۡۦۘۡۖۛۡۗۖ";
                                continue;
                            case 1352278498:
                                String str9 = "ۧ۬ۥۘۤۤۨۘۧۨۢ۟ۙۥۘۦ۠ۚۚۜۡۥۡۡۘ۬ۖ۬ۗۗۜۘ۠ۧۡۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ 1431926485) {
                                        case -2097868623:
                                            str9 = this.OooooOo > count ? "ۚۘۘ۬ۤۢۖ۫ۚۡۘ۬ۢۢ۠ۛ۬ۗ۫ۨۘ۠ۤۨۘۨۛۥۘۤۥۘۘۜۛۘ۬ۘۨۖۜۢۜ۫۟۫ۘۚۤ۟ۛ" : "ۜۙۧۖۨۖۗ۫ۛۘ۬ۨۘ۬ۖۡۘۖۛۥۘ۫ۜۘۘۛۛۘۘ۫۟ۡۘۥۖۨۘۢۧۘۘۡۢۥۘۚ۠ۜۨۥۖۚۖۧۘۤ۠۠";
                                            break;
                                        case -2049931057:
                                            str9 = "ۥۥۜۢۚ۟ۨۙۡ۟۠۠ۢۨۧۨۥ۠ۧ۬۬ۤۨۚ۫ۜۖ۠ۖۖۘۙ۟ۜۘۡۡۧۘۥۦۛ۠ۛۡۘۥۢۢ۬۠۫ۨ۫ۜۘۢۘۡۘ";
                                            break;
                                        case -1882238320:
                                            str8 = "ۦۘۦۖۛۧۧۤۢۗ۠ۖۘۦ۟ۥۚۘۦ۟ۖۜۘۙۘۜۖۙۚۘۤۤۥۡۨۤۛۘۘ";
                                            break;
                                        case -1425090239:
                                            str8 = "ۦۧۘۥۙ۬۫ۘۢۜۜۦ۫ۡۜۢۡۧ۬۬ۤۛۥ۬۟ۘۢۡۥۦۘۙۘۚۦ۬ۜۘۤ۬ۢ۟ۛۢۖۧۙۖۡۨۘ۟۠۫۠۫ۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1962719721:
                                str8 = "ۨۥۛۧۙۡ۠ۤ۫ۡ۠ۡۘۘۚ۬۟ۗ۠ۡۗۢۙۚ۟۟۫ۨۘۜۛۛۙۖۗۙۛۡۘ";
                                break;
                        }
                    }
                    break;
                case 1575222764:
                    return;
                case 1767017218:
                    String str10 = "ۖ۠۟۠ۖۜۦۘۚ۫ۧۤۙۛۚۜۘۘۛ۟۫ۧ۟ۘۖۚۢ۬ۜۧۙۖۖ۬ۨۗۜ۠۠۬ۥۘۨۗۚۢۗۗۛۛۛۦۡۘۘ";
                    while (true) {
                        switch (str10.hashCode() ^ 53570555) {
                            case -734344486:
                                str = "ۤۛ۟ۙ۠ۘ۟ۘۨۖ۟ۨۘۖۖ۟ۛۚۦۘۨۦۤۖۧۡۘۜۜ۠ۙۥۧ";
                                continue;
                            case 19766952:
                                String str11 = "ۥۤۨۘۧۢۛۘۖۡۘۤ۫ۖۘۦۛۜۜۤۨ۬۠ۥۘۜۗ۟ۢۛۨ۫ۜۢۗۖۜۘۗۘۦ";
                                while (true) {
                                    switch (str11.hashCode() ^ 1327454423) {
                                        case -981170934:
                                            str10 = "ۦۦۡ۠ۚ۟۟ۢۜۘۥۙۘۤۡۧۘۨ۠ۖۘۙ۠ۨۘ۬۟۠ۧۚ۠۬ۚۖۨۚ۫۠ۖۖۘ";
                                            break;
                                        case -522042716:
                                            str11 = yaVar3 != null ? "ۤ۬ۖۗۢۦۛۘۦۢۙۡۘۤ۬ۖۘۥۡۚۧ۠ۜۦ۟۬ۢۦۗۚ۟ۥۘۨۦۖۘ۠ۥ۠۠ۖۤۗۡۨۘۘۛۨۥۤۛ" : "ۖۚۜۗۧۥۘۚۥۜۘ۬ۥۧۘۢ۬ۖۛۧ۫ۗۤۧۡۖ۬ۧ۫ۡۘ۟ۧۛۥ۟ۖ۫۟ۡۘۢۜۜۘۚۛ۟";
                                            break;
                                        case 521606140:
                                            str10 = "ۢ۫ۨۙۡۧ۟ۦۗۤۥۛۘ۟۫ۘۛۛۥۤۦۥۜۘ۟ۤ۟۠ۖ۟";
                                            break;
                                        case 1995425154:
                                            str11 = "ۨۘ۬ۚۛۙۗۖۜۘۛ۠ۖۘۦۧۤۡۚۗ۬۟ۗ۫ۥۚ۠ۧۨۨ۠۟۠ۜۧۘۚۚۛۤۤۨ۠۟ۛۙۜۘۖ۟ۢ";
                                            break;
                                    }
                                }
                                break;
                            case 163221298:
                                str = "ۤۖۖۙۛۡۗ۫ۘۘۙۙۦۦ۬ۨۡۜۧۘۖۨۘۗۥ۬ۜ۫۟ۤۦۦ";
                                continue;
                            case 249760860:
                                str10 = "ۖۤۥۛ۬ۚۨۦۛۖ۟ۢ۫ۢۦۘۚۥۖۘ۫ۤۡۘۢ۟ۜۤ۫۠ۡۥۖ۫۬ۨ۫ۡۘۗۨۙۜ۟ۧ۠ۚ۟ۤۖۘۙۘۘۚۧ۫";
                                break;
                        }
                    }
                    break;
                case 1834390262:
                    requestLayout();
                    str = "ۦۢۜۙ۠ۜۘۤۥ۬۟ۗۥۦۨۜۘ۬ۗۡۘۗۖۦۘ۠۠ۚ۬ۛۨۘۖۨۘۨۙۖۘۚۚۛۦ۠ۥۤ۟ۖۘ";
                    break;
                case 1885401099:
                    i4 = i5 + 1;
                    str = "۟ۦ۬ۢ۫ۘۘۡۗۘۘۚ۟ۢۙ۬۫ۘ۠ۧ۬ۙۡ۠ۦۡ۟ۤۥۘۘۘ";
                    break;
                case 1911396387:
                    yaVar2 = null;
                    str = "ۜۧۥۜ۠ۤۨ۟ۛۙ۫ۡۘۛۢۚۖۤۚۧۨۗۖۢۜۜۨۧۧۧۡۥۢ۬ۦۘۧۦۨۚۧۤۤ۠۠ۨۘۦۥۚ";
                    break;
            }
        }
    }

    @Override // z2.ab
    public void OooO0O0(ViewPager viewPager, int i) {
        String str = "ۢ۟ۡۘۖۨۘۘ۫ۥۖۘۚۢ۠۬ۘۡۘ۠ۢۘ۠ۛۗۨۢ۟ۧ۬ۨۘۨ۫ۨ";
        while (true) {
            switch ((((str.hashCode() ^ 957) ^ 250) ^ 545) ^ 2098581806) {
                case -1318476901:
                    str = "ۗۡۛۦۘۦۦۗۦۘۡۛۗۧۡۘۡۢۙۦۘۧۘۗ۬ۥۘۦۨۨۘۜۤۤ";
                    break;
                case -1027420356:
                    setViewPager(viewPager);
                    str = "ۥ۬ۥۘۖۘۜۘۖ۟ۜ۫ۛۘۖۨۖۡۖۧ۫ۜۦۘۗۗۘۘۦ۬ۜۘۦ۟ۦۙۡۡۚۚ۠ۘۜۧۘۛۨۤۡۢۨۥۦۘۢۜ۟۟ۗ۟";
                    break;
                case 138742182:
                    return;
                case 828820520:
                    setCurrentItem(i);
                    str = "ۚ۫ۤ۫ۧۖۦ۫ۨۘۜۚۜۘۥ۬ۚ۬ۜۢۡ۠۠ۛۨۛۡۖ۠ۤۜۘۘۦۡۧۘ۠ۦۡ";
                    break;
                case 1136848710:
                    str = "ۦۜ۟ۧۚۡۘ۫ۚۚۨ۠ۦۢۖۘۦ۫ۜۘۚۚۦۘ۬ۘ۠ۜۚۜ۟";
                    break;
                case 1667016898:
                    str = "ۗۦۦۘۡ۟ۤۘۜۦۛۥۡۘۧۜۨۘۥۖۘۘۢۗۜۦۘۘۥۜۘۘ۠ۢۢ۠ۥ۫ۛۥۤ۟ۖۤۡۙۘۚۛۡۥۧۘ";
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        Runnable runnable = null;
        String str = "ۡۤۗۧۧۖ۠ۢۜ۠ۢۢۡۗۘۙۦۚۜۤ۬ۗۦۧۡۤۖۘۡۤ۠ۘۚۧۤ۫ۢۙۤۦۘۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 753) ^ 839) ^ me.o0000oo) ^ (-1261692154)) {
                case -2108828906:
                    str = "ۤ۫۬۬ۡ۬ۖۙۘۘۗ۟ۨۘۚۥۛۧۖۦۘ۠ۢ۠ۨۛۨۘ۟ۨۘۡ۟ۢۥۜۨۤۗ۬ۧۜۘۦۧۦۘۤۨۜۙ۠ۧ";
                    break;
                case -1715269980:
                    post(runnable);
                    str = "۟ۚ۬ۜۚ۟۫ۦۦۘۥۛ۬۠ۗۘۘۢ۫ۘۧۙۨۘۗۜۘۘۛۚۡۘۜ۬ۨۘ۬۠ۛۤۥۥۘۥ۫ۘۗ۟ۜ";
                    break;
                case -195791624:
                    runnable = this.OoooOoO;
                    str = "ۙۜۨۘۦۜۙۦ۬ۛۦۤۛۜۦۘۧۗۨۛ۟ۤۢۥۨۢۚ۠ۡ۠ۢۚۢۗۤۥۚۤۗۥۘۡۧۤۨۧۖۗۙ۟";
                    break;
                case 240789223:
                    super.onAttachedToWindow();
                    str = "ۢۗ۬ۙۨۜۘ۬ۢۡۘۡۧ۠ۜ۫۬۬۟ۛۛۤۘۘۡۡۥۘ۬۫۟ۚۨۗ";
                    break;
                case 999025361:
                    String str2 = "ۙۚۥۗۢ۫۬ۨۘۘۗ۬ۢۖۖۘۥۢۤۙۨۧۘۡ۟ۖۗ۠ۘۛ۬ۥ۠۫ۡۘۘۜۢ";
                    while (true) {
                        switch (str2.hashCode() ^ (-859128304)) {
                            case -2123778341:
                                str2 = "ۚۡۥۚۥۦ۠ۦۥۘۦ۫ۘۘۛ۬ۧۢۨۛۨۗۗۢۛۨۘۤۡۖۘۤ۫ۖۥ۟ۡ۟ۧۡۨۦۘۜۖۘۘ";
                                break;
                            case -2007357735:
                                str = "ۖۦۡۘۨۛۘۥ۫ۖۘۜ۠ۖۤۘۖۘۦۢۜۥۙۜۡۡۖۘۤ۬ۚ۠۠ۖۦ۫ۨۘ۫ۨۘۘ۬۫ۨۘۗۥۡۘ۬ۙ۫ۘۥۜ";
                                continue;
                            case 417103603:
                                String str3 = "ۢۙۦۗۧ۬۠ۢ۬ۜۡۧۘۧ۬ۖۤۗۖۘ۫ۧۡۗۡۧۘۗۧۡۦۜۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-381191585)) {
                                        case -566529279:
                                            str3 = runnable != null ? "ۤۗۛۤۖۖۘۦ۬ۛۤۚۛۙ۫ۦۘۡ۬ۗ۬ۡۨۘ۫۟ۜۘۙۗۦۘۜۘۜۘۗۢۥۘۘۗ۫۠ۚۨۘۖۜۤ" : "ۙۗۘۘۗۦۘۜۚۜۛ۬ۧۙۘۘۚۢۜۢۦۚۖۛۥۚ۬ۢۗۨۘۘۡ۫ۘۜۚۢۛۥۧۘۡ۫ۙۚۥۖۚۚۥۥۛۧۙ۫ۡ";
                                            break;
                                        case 303831522:
                                            str2 = "ۥۗۘۜۜۡۘۡ۫۫ۛ۫ۛۘۦۛۗۥۥۚۨۘ۫ۛۚۘۧۤۦۚ۫";
                                            break;
                                        case 412361792:
                                            str3 = "۬۟ۜۘۡ۬ۜۡۥۡۘ۠ۤۖۘۡۖۤۢۨ۫۠۟ۢۤۡۘۙۗۢۘۘۨۘ";
                                            break;
                                        case 1605028924:
                                            str2 = "ۦۖۦۘۗۖ۟ۜۘۥ۠ۜۘۧ۬ۨۘ۟ۦۢ۫ۡۘۘ۫۬ۗۨ۫ۘۙ۟ۛ";
                                            break;
                                    }
                                }
                                break;
                            case 1870369347:
                                str = "۟ۚ۬ۜۚ۟۫ۦۦۘۥۛ۬۠ۗۘۘۢ۫ۘۧۙۨۘۗۜۘۘۛۚۡۘۜ۬ۨۘ۬۠ۛۤۥۥۘۥ۫ۘۗ۟ۜ";
                                continue;
                        }
                    }
                    break;
                case 1372453218:
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        Runnable runnable = null;
        String str = "ۧۗۜۘۨ۟ۚۥۜۡۨ۠ۥۤۜۚۦۛۜۘۖۛۖۘۤ۫ۡۙۥۡۘۧۛۚۦۖۗۜۥۨ۬ۧۜۘ۠ۚۥۘۗ۠ۥۘۦۜۡ";
        while (true) {
            switch ((((str.hashCode() ^ 923) ^ 564) ^ 341) ^ 584062129) {
                case -1978470591:
                    str = "ۚۧۥۘۨۡ۠۬ۛۢۨۥۜۘۛۜ۟۬ۜۗۢۧ۫ۘۘۘۨۦ۫ۡۡۥۘۥۘۘۖ۫ۖۨ۫۫ۧۡ۫ۚۙۢۗۜۢ۬ۢۦ۫ۢۦ";
                    break;
                case -1613697850:
                    String str2 = "۠۠ۘۘۚۥۡ۫ۥۦۨۖۙ۫ۥۦۘ۫ۢۛۘۘۨۙۙۗۗۗۥ۟ۨ";
                    while (true) {
                        switch (str2.hashCode() ^ 388482847) {
                            case -1912683403:
                                str2 = "ۗۜ۠۬۟ۦۘۖۗۨۥۚۡ۬ۤۧۘۖۥۦ۬ۜۘۜۜۚ۠ۙ۠ۛۦۢۗۤ۟ۧۤۡۘ۟ۢۛ۫ۢۢۥۧۢۖۙۨۘ";
                                break;
                            case -1633307087:
                                str = "ۨۡۖ۠ۙۜۘ۠ۙۛۡۦ۬ۗۚۖۘۡۨۜۜ۫ۗ۬ۛ۠ۛۚۡۡۜۙۖۦۚۡۡۨۡ۫ۜ";
                                continue;
                            case 369403235:
                                String str3 = "ۙۗۢ۟ۙۙ۬ۖۨۤۧۡۦۧۖۘۗۚۜۘۢۨۗۡۗ۬ۧۙۥۘۖۤ۬۫ۖۖ۠ۜۜۚ۠ۜۘ۬ۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-622098248)) {
                                        case -1321172927:
                                            str3 = "ۡۧ۟ۦۦۖۘۜۘۘۛۘ۬ۨۛۦۘ۟ۨۖۥ۠ۖۘۜۛۚۘۡ۫ۖۜۡۙۙۗ۟ۨۡۘۢۤۨۘ۠ۜۘۘ";
                                            break;
                                        case 523259561:
                                            str3 = runnable != null ? "۟ۢۡۤۗۧۥۤۢۙ۠ۡۥۘۛ۠ۗۙۛۜۘ۬ۤۘۦ۬ۡ۠ۚۡۘۦ۟ۘۘۖۧۘ۫۠ۢۜۗۗۛ۫ۥۘ۫ۦۘ" : "ۘۤۛۚۜۖۡۧ۬ۥۛۥۘۗۛۗۖۤۥۘۚۛ۠ۜۚ۬۫ۧۖۘۢۚۥۧۙۚۚۢ۠";
                                            break;
                                        case 834531280:
                                            str2 = "۟ۚ۬ۜۜۛۜۥۗ۫۬ۙۚۥۗۖ۠ۖۧۡۛۡۨۨۘ۟۫ۘۘۜۨۦ";
                                            break;
                                        case 1041419646:
                                            str2 = "۟ۖ۬۟ۥۡۘۡۤۚۢۚۡۘۤۦۚۗۖۨۘۦۤۛۜ۬۫ۧۢۛۛ۟ۘۤۘۥۙۨۖۘ۠ۡۙۘۢۤۡۥ۫ۢۦۚ";
                                            break;
                                    }
                                }
                                break;
                            case 1891732506:
                                str = "ۤۙۚۤۛۗۙۤ۬ۜۘۥۜ۠ۖۜۨۨۛۘ۫ۜۘۦۘۤۡۡ۫ۛۦ۫ۛۥۚۦۜ۬ۚۥۘ۠ۘۤ";
                                continue;
                        }
                    }
                    break;
                case -1495177835:
                    super.onDetachedFromWindow();
                    str = "ۥۦ۫ۘۘۛۖۤۙۦۢۘۘۤ۠۫ۧۙ۟ۡۤۥۘۖۚۘۖۘۘۘۤ۬ۡۘۘۤۖۖۗ۬ۤۜۡۢ۫ۥۛۥۧۘۚۥ۬ۥ۟ۚ";
                    break;
                case 1492902116:
                    removeCallbacks(runnable);
                    str = "ۨۡۖ۠ۙۜۘ۠ۙۛۡۦ۬ۗۚۖۘۡۨۜۜ۫ۗ۬ۛ۠ۛۚۡۡۜۙۖۦۚۡۡۨۡ۫ۜ";
                    break;
                case 1665611666:
                    runnable = this.OoooOoO;
                    str = "ۤۡ۫۟ۨۡۘۙۗۨۘۜ۠ۥ۟ۘۥۘۘۤۤۨۥۢۥۡۦۘۦۖۘۖۜۘۗۥۖۡۙۡۘۗۧ۟ۨۖۧۘ";
                    break;
                case 1700741117:
                    return;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = 0;
        boolean z = false;
        boolean z3 = false;
        boolean z4 = false;
        int childCount = 0;
        int size = 0;
        int i3 = 0;
        int i4 = 0;
        int measuredWidth = 0;
        int measuredWidth2 = 0;
        String str = "ۡ۬ۦۘۜ۠۠۠ۛۖۘۤۨۘۤۦۖۧ۠ۧۦۦ۠ۙ۟۬ۡ۫ۖۨۨۚۚ۠ۤۢۙۥۛۛۖۘۘ۟ۦۘۨۖۜۘۨۛۘۧ۠ۜۘ۠ۨۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 218) ^ 556) ^ 719) ^ 1241642493) {
                case -2119159817:
                    this.OooooOO = i4;
                    str = "ۜۦۥ۫ۚۦۘ۫ۖ۟ۤۧۨۘۚۧ۠ۗۛۧ۬۠ۖۗۡۨۖۚۜۢۖۛ۟ۤۘۖ۫ۤۘۡۘ۬ۥۗۘۢۦۘۧۤۙۧۗۚۨۦۥ";
                    break;
                case -2032565028:
                    str = "ۦۢۡۧۘۧۜۘۦۘۦۥۗ۫ۧۡۘ۠ۘۖۦۧۦ۟ۢۢۛۥ۫ۛۦۥۘ";
                    z4 = z;
                    break;
                case -2015898522:
                    String str2 = "ۘ۟ۗ۬ۡۥۘۜ۟ۖۘۜۘۜ۬ۤۘۚ۫ۖۘۙۗۧۢۙۤ۬ۛۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1302399243) {
                            case -503567122:
                                String str3 = "ۖۧۙۤ۠ۡۘۥۦ۫ۥۖۖۘۖۦۘۙۚ۬ۤۡۦۛۥۘ۠ۦۡۘۖ۟ۤۖ۟ۡۥۜ۠ۗۥۦۘۜ۬ۖۚ۟ۡۘۡۚۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1143973741)) {
                                        case -1152584105:
                                            str2 = "ۙ۠ۥۘ۬ۚۗۙۦۘۘۚۥۡۘۙۖۜۘۖۧۚۚۤۦۘ۫ۖۥۘ۟ۚۤ۠ۥۡۢۖۗ۫ۜ۬ۤۗ۟۟ۨۘ۠ۗۘۘۖۡۢ";
                                            break;
                                        case -473479723:
                                            str3 = measuredWidth != measuredWidth2 ? "ۘۚۨۘۛۦۡۘۧۙۜ۬۟ۛۥۧ۠ۤۛۙۧۧۢۢۜۘۦۚ۬ۗ۟ۤۨۜ۠ۥۧۖۖۘۘ۟۠ۥۘ۫ۨۚۗۖۜ" : "ۡۥۖۘۖۘۡ۫ۖ۟۟ۦ۫ۦۡ۬ۢۥۥۚۨۚۜۦۘ۬ۥۡۢۧۦۘ";
                                            break;
                                        case 1470496144:
                                            str2 = "ۘۜۧۚۨۡۘۖۧۤۡۖۧۘۧۧ۟ۢۖۦۜ۠ۛۚۨۧۘ۫۠ۚ۫ۖۧۘ";
                                            break;
                                        case 2089327135:
                                            str3 = "ۚۧۢۡ۫ۤ۬ۙۖ۟ۨۘۘۗۧۙۤۛۖۢۗۜۚۦۡۘۜۚ۠ۜۤ۟ۡۨۛۤۢ۫ۚۘۘ۟ۤۤۡۗۙۚۧۗۨۙۤۦۖۦ";
                                            break;
                                    }
                                }
                                break;
                            case -183402174:
                                str = "ۗۜۡۘۤۡۦۘ۟ۡۖۘۗۛ۬ۛۙ۟ۖۖۥۘۤ۟ۨۘۖۚۢۗ۟ۘۘۜۛۡۛ۟ۦۛۨ۟";
                                break;
                            case 687632941:
                                str2 = "۟ۜۧۢ۫۬ۚۡۢۜۜۤۨۘۗۜۙ۟ۦۖۘۘۤۦۨۘۢۧ۬ۙ۫ۜۢۘۜۘ۟ۛۢۤ۠ۖۜۢۗ۟ۤۜۘ۬۠ۨۘۜۢۙۤۨ";
                                break;
                            case 1703941092:
                                break;
                        }
                    }
                    str = "ۢۘۡۘ۠ۡۦۗ۫ۚۖۢۜۘۧۚۡۘ۫ۢۦۙۘۤۗۦۖۢۖۨ۫ۚۜۘۦۗ۬۫ۡۗۛۜۤۛۜۙۨۙۡۜ۫۬";
                    break;
                case -1889810012:
                    str = "ۗۛۘۘۢۘۜۙۜۡ۬ۘۨۘۢ۟ۛ۫ۛۚۜۚۗۜۘۧۧۥۘۘۜ۫۟ۜۛۦۚۖۧۤۗۜۖۘ";
                    z4 = z3;
                    break;
                case -1745310762:
                    setCurrentItem(this.OooooOo);
                    str = "ۢۘۡۘ۠ۡۦۗ۫ۚۖۢۜۘۧۚۡۘ۫ۢۦۙۘۤۗۦۖۢۖۨ۫ۚۜۘۦۗ۬۫ۡۗۛۜۤۛۜۙۨۙۡۜ۫۬";
                    break;
                case -1738879386:
                    size = (int) (View.MeasureSpec.getSize(i) * 0.4f);
                    str = "ۧ۫۫۬ۛۚۗۢۡ۠۫ۥۘۡۧۙۖۖۚ۟ۨۦۘۚۢۤۥۖۡۨۘۙ";
                    break;
                case -1715790011:
                    i3 = -1;
                    str = "ۦۨۧۧۤۗ۬ۘۖ۟ۗ۬ۤۗۤۘۢۦۘۨۦ۟ۢ۟ۥۘۙۢۛۧۤۙۜۧۖۚۥۡۘ";
                    break;
                case -1676297305:
                    str = "ۗۧۡۤۧۥۘۧۧۨۘۜۤۧۧۙۧۨ۠ۚۦ۫ۛ۬۫ۜۦۙۦۙۚ۟ۙ۟ۨۘۜ۫ۦۤۗۖۘ۬ۖۙ۫۠۟ۚۧۘۘ";
                    i4 = size;
                    break;
                case -1545631391:
                    String str4 = "ۜ۠ۖۨ۫ۖۙۥۙۜ۠ۖ۟ۦۤ۬ۖۜۢۗۗۡۧۥۥۤ۫۫ۜۥ۠ۘۖ۠ۦۗ۫۟ۜۢۨۘۗ۠ۨۘ۟ۥۖۘۙۤۙ۠۟";
                    while (true) {
                        switch (str4.hashCode() ^ (-850427083)) {
                            case -1915880176:
                                str = "ۙۜۦۘۥۨۖ۠ۨۡۚۢۗۙۦۧۡۘۡۘۜۙ۟ۚۘۗۘۤۥۥۙ۫ۖۘۤۦ۟ۙۚۜۥۨۜۙۥۖۘۧ۫ۙ";
                                continue;
                            case -1823271491:
                                str = "ۥ۠۠ۗ۠ۢ۟ۛۢۦۜۧۧۗۛۧۨۘۦ۫ۖۗ۠ۛ۫ۦۥۖۡ۠ۙ۟۬ۗۖۛۤۨۘۛۤۡ۫ۖۦۨۛ۟ۥ۫ۛۦۚۦ";
                                continue;
                            case -1485556454:
                                String str5 = "ۨۡۛۜۡۡۘۗ۟ۤۡ۫ۛۢ۠ۘۘۥۥۖۘۡ۠ۦۘۥۖۧۧۢۖۘۥۥۥۘۚۙۤۤۧۗۛۧ۟۫ۜۘۘۨۥۘۜ۠ۜۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 481255729) {
                                        case -1595539335:
                                            str5 = mode != 1073741824 ? "ۜۘۘۘۦ۟ۡۘۥۙۘۘۘۙۨۦۘۖۘۘۧۛۧۜۘۘۥ۠۫ۥۙۛۙ۫۟ۛۨۘۦۦۘۘ۟۟ۨۘۛ۠ۢۢ۠۫ۦ۬ۖ" : "ۖۢۙۨۥۛۨۤۨۛۢۧۤۨۖۧ۟ۤۨ۟ۧۧۡۘۨۤۦۙۘۗ";
                                            break;
                                        case -946508952:
                                            str4 = "۬ۢۧۦۚ۬ۛۛۢۤۡۦۘ۬ۥۘۥ۬ۘۘۧۦۤ۬ۗۨۜۨۘ۫ۚۖۜۥۥۛۖۡۖۧۚ۬ۦ";
                                            break;
                                        case -107150940:
                                            str5 = "ۖۥۚ۬ۚۙۙۧ۫ۡۡۘۗۗۥۗ۟۟ۤۖۛۨۦۘۗۘۡۘۦۤ۫ۜ۫ۡ۫ۢ۫ۚۢ۬ۧۛ۠۟ۦۦۗۘۘ";
                                            break;
                                        case 1751465258:
                                            str4 = "ۡۢۥۧ۠ۨۘۤۧۢۛ۫ۙۡۨۡۦۥ۠۠ۡۖۘۨۦۜۙۘۨۘۚۗۥۨۧ۬ۚۢۖۢۚۧۧۙۖۥۛ۠۠";
                                            break;
                                    }
                                }
                                break;
                            case 1963890271:
                                str4 = "۬ۤۜۘۜ۠۠ۤۥۗۢۚۡۖۦ۠ۛۥۡ۠ۖ۫ۧ۟ۧۖۡۡۘۨۘۚۙۖۘۗۨۢ۫ۗۗۚ۫۟";
                                break;
                        }
                    }
                    break;
                case -1419544237:
                    str = "ۚۗۖ۟ۢۨۤۡ۟۬ۜۥۘۙ۫ۙۗۜۘۡۨۡۖۨۖۙ۠ۜۘۛۚۥۧۨ۟ۛۖۦۜۙۨ۟ۨ";
                    break;
                case -1406948177:
                    setFillViewport(z4);
                    str = "۬ۦۧۘۢۨۤۜ۫ۜۤۘۢۢ۟ۜۘۚۜۙۙۧۗ۠ۜۧۘۦۦۡ۟۫ۘۘۗۘۖۘ۟ۘ۟ۤۚۘۘ۠ۘۘۘ";
                    break;
                case -1261061423:
                    mode = View.MeasureSpec.getMode(i);
                    str = "ۚۧۥۘۥۡ۟ۤۛۢۗۗۚۧۜۖۘۚۢۡۘ۫ۜۦۥۗۦۘ۫۠ۡۘۙۖۨۘۗۧۚۚ۬۫";
                    break;
                case -1127241285:
                    z = true;
                    str = "ۦ۠ۡۗۤۗۛۥۘۡ۫۟۫ۥۛۥۖ۫ۧۙۦۘ۬ۧۧۨۡۜ۠ۡۙۡۧۡۚۘۧۙۨۥۘۙۤۤ۬ۚ۠ۡ۬ۦ";
                    break;
                case -1077989367:
                    str = "ۖۛۤۤۧۘۘۛۡۤۦ۟ۢۙۥۚ۫ۡ۬ۚۧ۬ۦۧۙۖ۫ۨۘ۠ۗ۟ۙۖ۫ۚ۟ۦۘ";
                    break;
                case -1053297564:
                    super.onMeasure(i, i2);
                    str = "ۖۧۜۘ۠ۗۗۖۚ۠ۢۧۥۚۚ۠ۘۥ۬۟ۧۢۨۧۡۘ۟ۡۜۘ۬ۥۚ";
                    break;
                case -632747896:
                    measuredWidth = getMeasuredWidth();
                    str = "۫ۘۜۘۧۙۡۧۥۨۛۦۛۨ۬ۨۙۢ۟ۛ۫۟ۙۢۦۘۘ۟۟ۤۜ۠ۙۢۖۘۢۗۘۚۚۢۙ۠ۤ۟۬۠ۘ۫ۘ۫۠ۖۘ";
                    break;
                case -103740492:
                    str = "ۗۦ۬ۡۤۢۧۥۘۜ۬۬ۘۢ۠ۚۘۜۦۖۚۜۢ۟۫ۨۘۛۘۦۘۨۡۧۘۗۢۜ۫ۡۘۧۘۘۖۜ۠ۜۥۛ";
                    break;
                case 52045426:
                    break;
                case 457418404:
                    str = "ۚۗۖ۟ۢۨۤۡ۟۬ۜۥۘۙ۫ۙۗۜۘۡۨۡۖۨۖۙ۠ۜۘۛۚۥۧۨ۟ۛۖۦۜۙۨ۟ۨ";
                    i4 = i3;
                    break;
                case 522147309:
                    measuredWidth2 = getMeasuredWidth();
                    str = "ۛۢۗۘۘۖۚۡۡۘۘۖۛۚۖۧۛۘۗۥۘۡۘۖۧۜۙۥۜۢۧۨۤۗ۬۠ۧۗ";
                    break;
                case 576055489:
                    String str6 = "ۤ۟ۖۘۢ۫۟۟ۨۚۘۡۘ۬ۡۨۘ۬ۦۘۘۘۗۚۢ۠ۡۢ۫ۖۗۙۛۖۚۡۢ۠ۥ۬ۥ۠ۦۢۤۥ۫ۦۚ۬ۧ۟۠ۨۛۢ";
                    while (true) {
                        switch (str6.hashCode() ^ 422403306) {
                            case -1546685621:
                                break;
                            case -921794823:
                                str6 = "ۧۘۡۦ۟ۘۘۘ۠ۧۦ۟۟ۤۘۜۘ۬ۥۖۘۤۧۢۙۜۡۘ۫۠ۘۡ۫ۛۥ۫ۖۘۗۘۦۘ۠ۧۨۧۖۤۙۢۥۙۗۗ";
                                break;
                            case 435584434:
                                str = "ۢۤۧۜۜۢۖۜۡ۫۠۠ۖۦ۫ۢۦۖۛۨ۟ۙۢۡۧۢۜ۠ۡ۟ۢۦ۟۠ۗۦۡۜۘۤۜ۫ۡۦۜۘ۬ۥۨۘۛ۠ۜۘۜۥ";
                                break;
                            case 1158783566:
                                String str7 = "ۚۖۘۚ۠۫۟ۚۢۖۗۖۘۜۘۧۘۧۚۜۨۘۘۗۡۘۧۗ۠۟۠ۜۧۨۧۘۥۖۘۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 1393902313) {
                                        case -1919145605:
                                            str6 = "۟۠ۥۘۗۤۖۘۖۖۘۘۛۢۙۢۚۧۜۛۜۤۨۧۘۥۘۛۧۥۡۘۙ۟ۗۤۧ۠۬ۘۤ";
                                            break;
                                        case -1326443514:
                                            str6 = "ۤۙۡۥۛۘۘۙۖۦۜۦۤۦۡۜۘ۫ۗۨ۬ۢ۟ۘ۠ۜۘۨۘۘۖۘۘۤۥۥۘۗ۠ۤۗۨۦ۫ۥۦۦۜ۟ۤ۬ۡۘ";
                                            break;
                                        case 456436294:
                                            str7 = childCount > 1 ? "ۜۙۗۨۧۡۘ۠ۘۚ۬ۦۜۙۙۨۘۗۥ۬ۨۚۜۡۛۖۖۛۥۘۜۛۢۥ۫ۗۙۜۧ۟ۡۘۘۥۥۜۚۚ۬ۥۧ۫" : "۬۟ۦۙۢۖۘۚۛۙ۠ۦۘۨ۫ۦۢۛۙۡۘۧۘۗۨۧۧۛۙۘۖۜ";
                                            break;
                                        case 1883478848:
                                            str7 = "ۡۜۥۡۨۜۘۜۛۡ۬ۚۦۘۘۘۙۨۢۢۨۗ۫ۦۖۨۘۡۙۡۘۤۚۛۦۥۛ۟ۚۛ۬ۖۤۛۡۗۧۡۜۘۡۧۤ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 722243353:
                    z3 = false;
                    str = "۟ۦۥۘۥۛۘۚۧۦۗۚ۠ۛۗ۬۬ۖۜۘ۬۠ۡۦ۫۫۬ۤۛۖۨ۟ۜۘۖ۠۟ۛۘۖۘۚۖۖۘ۠ۨۧۘۢ";
                    break;
                case 755149275:
                    str = "ۜۦۥ۫ۚۦۘ۫ۖ۟ۤۧۨۘۚۧ۠ۗۛۧ۬۠ۖۗۡۨۖۚۜۢۖۛ۟ۤۘۖ۫ۤۘۡۘ۬ۥۗۘۢۦۘۧۤۙۧۗۚۨۦۥ";
                    break;
                case 829075720:
                    this.OooooOO = View.MeasureSpec.getSize(i) / 2;
                    str = "ۤۙۡۘۢۖۜۙۦۛۤۡ۬ۥۖۤۢۤۦۦۥۥۥۘۡۤۚۡۛۖ۟ۡۘۥ۟ۧۘۦۦۘۦ۫۫";
                    break;
                case 1095160372:
                    childCount = this.Ooooo00.getChildCount();
                    str = "ۧۨۥۛۨ۫ۙۢۜۘۙۛ۟۠ۘۨۘۗۤۨۘۖۜۖ۬ۨۥۘۧۚ۠۬ۜۦۘۙۢۘۘۘۛۤ";
                    break;
                case 1374621527:
                    str = "ۗۛۘۘۢۘۜۙۜۡ۬ۘۨۘۢ۟ۛ۫ۛۚۜۚۗۜۘۧۧۥۘۘۜ۫۟ۜۛۦۚۖۧۤۗۜۖۘ";
                    break;
                case 1440295323:
                    String str8 = "ۥۜۙۙۘۛ۫ۧۡۚۦۢۤۛۘۘۜۘ۟ۢۨۘ۬ۘۨۙۥۚۤۗۖۘۖۢۡۜ۟۬";
                    while (true) {
                        switch (str8.hashCode() ^ (-344229874)) {
                            case -1987146014:
                                String str9 = "ۙۥۤۖۜۜۚ۠ۡۖ۟ۡۧۙۥۘۦۛۧۜۧۘۘۚ۬۟ۗۘۙۦۢ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-1515512491)) {
                                        case -809681036:
                                            str8 = "ۜۘۘۘۢۡۦۧۢ۬ۜ۠ۤۖۢۚۧۚۧۗۖۚۛۡۖۨۚ۬۫ۡ۫۫۟ۦۘۙۘۧۘ";
                                            break;
                                        case 706905644:
                                            str9 = "ۖۨ۬۟ۚ۫ۥۗۖۘ۟ۢۡۘ۠۟ۨۦۢۡۖۧۖ۫ۨ۫ۛۤۥۘۖۡ";
                                            break;
                                        case 1729624965:
                                            str8 = "ۦۢۡ۬۬ۙۖۡۚۗۗۥۘۤۚۧۧۨۘۚۛ۫ۛۡۘۧ۠ۗۚۘۘۘۜ۬ۜ۠ۡۧۘ";
                                            break;
                                        case 1747895825:
                                            str9 = childCount > 2 ? "ۘۢۜۗۦۜۦۙۚ۠۬ۨۘ۫ۜۨۜۨۛۦۜۨۜۜۥۘ۟ۡ۟۟ۧ۬ۘۦۖۘۘ۬ۙۥۗۜۘۨۚۨۙۥۥۘۛۖ" : "ۧۦۚ۫ۜۘۘۨۡ۫ۥۢۡۙۗۨۘ۠ۙۚۨۤۡۘ۟ۘۦ۠۫۟۫ۖۛ";
                                            break;
                                    }
                                }
                                break;
                            case -1783304824:
                                str = "۟۠ۘۚ۟ۧۘۚۙۢۢۖۘۛۥۡۤ۫۠ۜۤۥۘۥۜۚۘۖۨ۟ۧۛۙۦۡۘۜۘۦۘۤۤ۠ۙۤۧ۬ۖۢۡۦۘۘۨۖۦۘۚۢۢ";
                                continue;
                            case 406749943:
                                str = "ۢۢۧۧۖۖۧ۬ۚۡۤۜۘۤۗ۟ۨ۫ۜۘۦۖۧۘۧ۠ۘۘۘ۬ۘۜۤۥ۠ۦۘ۟ۙۦۡۦۙۨۡ۫";
                                continue;
                            case 1278129584:
                                str8 = "ۥۙۖۘۢ۬ۨۥۜۘ۬۟ۤۚۖۧۡۚۥۦۜۘۗۦ۟ۘۢۚۢ";
                                break;
                        }
                    }
                    break;
                case 1493436157:
                    String str10 = "ۖۚ۬ۥۡۖ۬۫۬ۚ۫۠ۦۛۘۘ۫ۗۡۘۜ۫ۖۘۡۜۛۙۨۧۨ۫ۢۧۛ۟۫۠ۜ۫ۖۜۥۜ۬ۖۙۜۘۗ۫۠";
                    while (true) {
                        switch (str10.hashCode() ^ (-498411454)) {
                            case -1441707263:
                                String str11 = "ۧۡۘۘۜۤۘۘ۠ۥۧۘۨۨۤۖۢۤۛۘۦۘ۬ۡۢۧۨ۟۬ۨ۬ۘۡۘۖۛۜۘۡ۬ۨ";
                                while (true) {
                                    switch (str11.hashCode() ^ 811500617) {
                                        case -962022472:
                                            str11 = mode == 1073741824 ? "ۜۜۤۨۦۘۜۜۨۘۤۤ۫ۘۧۜۘۦۘ۫ۛۚۤۥ۟ۤۨ۟ۥۖۘ" : "ۢۥۢۖۧۥۢۘۘۖۥ۫ۘۢۨۖۙۘۘۙۚ۫ۛ۬ۤ۠ۡۘۚۘۧۘ۟ۗۨۘۤۦۦۘ۟ۡۤۙۖۥۧۨۧۘۜۜۥۘۦۡۜۘۨۚۤ";
                                            break;
                                        case -325541717:
                                            str11 = "ۤ۠ۘۘۜۨ۬۠ۖۖۨ۟ۤۧۥۦۙ۬۠ۜ۟ۢ۫ۢۨۗۚۗ۬ۖۧۨ۠۟ۢۡ";
                                            break;
                                        case 479789308:
                                            str10 = "ۘۨۖ۫ۡۦ۫ۙۥۘۛۨ۫ۦۚۘۘۚ۬ۛۚۖۙۡۘۘۘۙۚۗۘۚۘۘۙۖۘ۠ۦۚۤۚۨۘۙۤۘ۟ۧۨۘ۫۫ۘۘۧ۬ۥۥۚۡۘ";
                                            break;
                                        case 1089288128:
                                            str10 = "ۛۧۥۘ۠ۗۤ۠ۙۡ۬ۛۨۜۤۗۜ۫۠ۖۘۡۗۤۜۘۘ۟ۛۥۧۦ۬ۗۡۥۡۘۨۡۡۘۘۧۡۡ۠ۖۘۛ۠ۜ";
                                            break;
                                    }
                                }
                                break;
                            case -1167728493:
                                str = "۟ۡۘۛۘ۫ۛۗۦۘۨۘۜ۬ۖۘ۟ۨۜۧۛۧۧۜۜۘۥۘۨۘ۬ۡ۟ۘ۬۫ۖۥۖ۬ۡۙ۫ۤۜ";
                                continue;
                            case 735638766:
                                str10 = "۬ۤۥۢۜۛ۫ۨۡۘۥۘۙ۬ۚۡۨۨۨۘۧ۟ۨ۬ۡۦۜ۬ۡۘۘۘۙ۟ۘ۟۠۫ۚ۟ۗۜۘۗۗۘ۠ۤۡۘ۬ۖۢۘ۫۠ۤۚ";
                                break;
                            case 1329812535:
                                str = "ۘۧۦۘۘ۟ۖۥ۫ۖۘۜۧۘۛۦۡۜۜۘۢۛۦۘۡۚۥۡ۠ۡۘۙۢۘۙۘۜۨۗۘۗۚۜۘ۠۫ۦ";
                                continue;
                        }
                    }
                    break;
                case 1938494707:
                    String str12 = "۬۬ۖۧۘۜۘۘۘۖۧۨۤۖۘۨۢ۬ۤۦۘۡۚۥۘ۬ۨۖۨۦۘ۫ۙۥۘۨ۟ۨۘۤۖۥۖۗۛۛ۠ۤ۫ۡۘۙ۟۠ۗۢۜۘ";
                    while (true) {
                        switch (str12.hashCode() ^ 264285268) {
                            case -1031633479:
                                String str13 = "ۛۡۘۘۤۢۦۘۥۥۖۤ۬ۜۘ۫ۥۜۤ۠۠ۛ۠ۧۙ۬ۚۨ۫ۥۖۥ۠ۚۘۘ۫ۨ۬ۖ۬ۗ۟۬ۨۜۘۙۥۜۘ";
                                while (true) {
                                    switch (str13.hashCode() ^ 652978321) {
                                        case -1806471682:
                                            str13 = "ۧ۠ۡۚۘۡۡۧۗ۠۠ۖ۠ۗۜ۬ۢۧۚۡۧۦۤۨۛ۬ۦۥۨۘۘ۠ۧۚ۠ۛۡۢ۟ۚ۠ۘۘ۟ۡۨۘۧۗ۟";
                                            break;
                                        case -1766231603:
                                            str12 = "ۙۤۜۘ۟ۙۦۛۨۥۘۜۤۨۘۡۜۢۛۙۤ۟ۛۢۙ۟ۦۘۧۡۦۘۧ۫ۥۘۡۦۙ۟۠ۨۛ۠ۖۘۢۗۘۜۨ۫ۢۙۘۘ";
                                            break;
                                        case 434921044:
                                            str12 = "۟ۙۗۛۥۥ۬ۜۜۘۧۙۚ۬ۘ۬ۜۘۢۤۙۦۦۛۖۙۖۧۘ۠ۤۖ";
                                            break;
                                        case 1686158108:
                                            str13 = mode == Integer.MIN_VALUE ? "ۗ۫ۦۨۘۡۘۖۗۙۙۡۧۨۧۙۜۗۘۘۛ۬ۧۚۘۘۖۚ۫ۡ۫ۥۖۗۤۜۢۛۤ۫۠ۥۤۚ۠ۡۘۘ۫ۥۦۘۗۡۜۖۛۘ" : "ۦ۬ۙۧۢۜ۫ۢۥۘۚۖۚۛ۫ۙۡۙ۫ۦ۫۬ۘۗۥۤۗۙۜۧۤ۬ۧ۬ۦۨۘ۫ۘۘۘۚ۠ۤۨۖۜۘۡۖۨۘۘۨۘۘۧۧۥ";
                                            break;
                                    }
                                }
                                break;
                            case -914642940:
                                str = "ۥ۠۠ۗ۠ۢ۟ۛۢۦۜۧۧۗۛۧۨۘۦ۫ۖۗ۠ۛ۫ۦۥۖۡ۠ۙ۟۬ۗۖۛۤۨۘۛۤۡ۫ۖۦۨۛ۟ۥ۫ۛۦۚۦ";
                                break;
                            case 940886726:
                                break;
                            case 1345224804:
                                str12 = "۬ۚۤۘۦۧۨ۟ۥۡۙۜۧۗۦۘۚۚۛۥۜۦۘۡۧ۬ۧۛۜ۠ۘۧۥ۠۟ۚۢۤۗۥۘ۫ۘۨۘۜۧۦۚ۬ۦۘۤۗ۟ۧۧۨ";
                                break;
                        }
                    }
                    str = "ۘۦۘۥۧۛۛ۬۟ۖۨۜۘۙۦۢۤۨۨۘۚۧۥۘۚۙۨۢۦۡۗ۬ۗۤ۟ۨۘۚۘۜ";
                    break;
                case 2012474170:
                    str = "ۘۜۨۘۗۢۜۦ۬۫ۖۚۚ۬ۢۖۘۗۡۙۖۛ۬۬ۥ۬ۖۙ۠ۙۜۖۘ";
                    break;
                case 2101942919:
                    String str14 = "۟ۥۚ۫۠ۘۜۜ۠ۙ۬ۖۘۙۗۜۙ۠۫ۧ۟ۘۘۛۥۚۚۡۨ۟ۡۥۘۧۗۨ۬ۥۜۡ۠ۗۖۘۗۗۡ۬ۦۡۗ";
                    while (true) {
                        switch (str14.hashCode() ^ (-1302738322)) {
                            case -1639330235:
                                break;
                            case -862887870:
                                String str15 = "۫ۦۙۜ۫ۢ۠۫ۗۦۖۥۧ۠ۚۙۢۖۘۘۨ۬ۖۚۘۘۖ۫۠ۖۦۧ";
                                while (true) {
                                    switch (str15.hashCode() ^ 1070411083) {
                                        case 102901723:
                                            str14 = "ۘۖۙۙۧ۠ۧ۫ۨۡۧۚ۬ۗۘۛۡۚۡۥۥۘۖۙ۠ۥۥۘۘۚۨۥۘۡۙۡۡۙۛ۟ۢ۬۫ۦۡ۫ۥۥۜۡ";
                                            break;
                                        case 193414212:
                                            str14 = "ۘۙۖۤۦۦۘۖۧۘ۫ۦۘۘۦۜۖ۠۟ۡۘ۟ۙۖ۟ۦۛۤۙۘۘ۫ۚۜۘۡۥۜۘۙۤۛ۫ۡۥۘۦۡۜۘ۬۫ۖۘ۫ۤ۠";
                                            break;
                                        case 1249337723:
                                            str15 = "ۗ۠ۛۙ۟ۨۗۗۨۘۘۖۤۤۥۧۡ۟ۤ۬ۥۘۛۡۛۘۨ۫ۙۜۥ۬ۛۘۖۤۤۚۙۛۙۢۜ۠ۗ۬ۖۘ";
                                            break;
                                        case 1663380981:
                                            str15 = z4 ? "۟ۗۛۥۧۘۘۤۖۜۨۡۦۘۡ۟ۦ۠ۜۘۤۦۘۙۖۜ۟ۤ۠ۙۛۖۘ۠ۢۡۧۢۚ۟ۧۥۘۢ۬۠ۖۜۘۘۦۘۜۥۦۨۘۗ۠ۥ" : "ۨۡۙۘۥۢ۟ۥۘۖۨۥۗۛۤ۠۟ۗ۟ۜۧ۫ۦۦۛۥۘۗۜۚۚۧۡۢ۠ۘ۫۠ۤۢۧۧ";
                                            break;
                                    }
                                }
                                break;
                            case 1138460799:
                                str = "ۢ۠ۛۦ۟ۗۖۙۢ۠ۛ۫۫۠ۦۢ۠ۖۘۜۜۛۗۥۦۖۘۗۦۢ۬ۥۖۤۢۨۙ۠ۖۘۥۧۘۘۢۘۘۢۤۙ";
                                break;
                            case 1459192462:
                                str14 = "ۘ۟ۢۥۚ۬ۦۡۡۘۜۧۚ۠ۡۜۘۜۜ۠ۢۢۡ۟ۗۡ۠۫ۖۘۡۤۖۜۦ۠ۛۘۙۢۜۦۨ۟ۙۘۜۘ۫۠";
                                break;
                        }
                    }
                    break;
            }
            return;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = null;
        String str = "ۥۨۜۘۧ۬ۚۦ۠ۜۘۦ۫۟ۜۖۥۘۗۦۙۧۢۘۦۛۖۖۖۦۡۙۖ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE) ^ 420) ^ 496) ^ (-1532732774)) {
                case -1886701355:
                    String str2 = "ۥۢۨ۟۠ۜۦۚۢ۫۟ۧۛۜۡ۫ۥۧۧۡۨۛۛۦۤۢۡۛۜ۬ۚۖ۬۫ۢ";
                    while (true) {
                        switch (str2.hashCode() ^ (-342403296)) {
                            case -2100544526:
                                str = "ۘۛۦۘۦۛۦۙۧ۬ۘۤۙۡۗۚۡۖ۫ۧۙ۠۟ۧ۠ۥۙۧۜ۟ۜ۫ۦۘۥۚۘ۫ۥۖۚۥۘۡۥۖ۠ۤۛۡۗۡۛۡۜ";
                                continue;
                            case -1597714843:
                                String str3 = "۟۠ۧۘۥ۠ۧۙ۟۟ۘۥۘ۠ۙۥۘۚۗۘۘۨۥۥۘ۟ۚ۠ۦ۫ۗۨۨۢۗۚۦۙۘ۫ۦۥۢۘۛۖۘۤۜ۬۬۟ۢ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-956742597)) {
                                        case -1750761103:
                                            str3 = onPageChangeListener != null ? "ۢۤ۠ۤ۠ۛۖ۠ۡۘ۫ۦ۟ۦۘۡۤۘ۠ۛۙ۟۟۫ۖۘۜۥۜۧۥ" : "ۜۜۦۘۦ۬ۚۨۛۨۘۨۘۥۥۤۖۘۘۦۘۘۡۛۦۘۧۨۖۘۖۦۘۘۜۖ۟ۨ۬ۡۖۚۘۘ۟ۢۥۜۛۦۡۡۡۧۗۖۖۢۗ۠ۥۘۘ";
                                            break;
                                        case -1445078758:
                                            str3 = "ۛۧۘۘ۠ۡۤۗ۟ۙۜۥۘۢۧ۫ۤۘۗۤۡۖۘۤ۬ۦ۠ۘۧ۠ۦۗ";
                                            break;
                                        case 492733271:
                                            str2 = "۬ۢۡۘۙۤۥۘ۬ۗ۠ۥ۬ۜۘ۟ۘ۠ۗۢۖۚۡۘ۠ۥ۬ۛۗۡۘۢۥۧۡۘۨ۫ۨ";
                                            break;
                                        case 584861524:
                                            str2 = "ۤ۟ۛۥۥ۠ۦۛۚ۠ۙۢۨۨۚۢۙ۠۫۫ۖۘۤۗۦۘۢۧۙۖۛ۫ۦۥۖۡۦ";
                                            break;
                                    }
                                }
                                break;
                            case 237111524:
                                str = "ۦ۟ۢۙۧ۬ۛۢۛۖۨۦۘ۫۬ۖۘ۬ۚۖۘۨۜۜۤۨۥۘۢۨۧ۠ۧ۟";
                                continue;
                            case 1353951376:
                                str2 = "ۛ۫ۦۘۨۤۤ۠ۘۗۤۜۚ۬۟۫ۢۘۡۗۥۘۖۖۥۘ۫ۡۘ۟ۢۘۘۡۨ۫ۤۢۥ۠ۨ۟۟ۜۦ۠ۧ۠ۚۡۙ";
                                break;
                        }
                    }
                    break;
                case -930647334:
                    onPageChangeListener = this.OooooO0;
                    str = "ۧۢۗۤۡۧۘۛۥۥۨۜۦۘۨۡۤۥۨۖۘۛۚۧۡۚۥۘۦ۟ۛۙۨۡۨۢۛۘ۬ۗۘۢۦۚۤۥۘۚۛۙۘۤۡ";
                    break;
                case -164235689:
                    str = "ۢۤۖۘۡۚۢۦۚۚۜۢۖ۟ۖۡۗۦۜۘۢۤۛ۬ۤۜۤ۠ۨۘۛۙۚۡۦۦۘ۬ۗۘۧۚۜۘۤ۠۫ۘۜۘۘۘۧۖۘ";
                    break;
                case 937820060:
                    return;
                case 1129495298:
                    str = "۬ۖۦۚۡۖۘ۟ۥۡۘ۬ۖۛۛۖۧ۫۟ۤۥۨۧۧۚۢۦۜۘۗۧۦ۟ۧۦۙۗۡۡۗۥۧۨۘ۠۟ۜۚۡ۫";
                    break;
                case 1339244648:
                    onPageChangeListener.onPageScrollStateChanged(i);
                    str = "ۦ۟ۢۙۧ۬ۛۢۛۖۨۦۘ۫۬ۖۘ۬ۚۖۘۨۜۜۤۨۥۘۢۨۧ۠ۧ۟";
                    break;
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = null;
        String str = "۠ۨۦۘ۫ۧۨۤۗۡۘۘۦ۟ۘۨۘۛۖۜۘۚ۠۠۟ۦۗۗۨۖۘۤۘۘۘۨۥ۟ۤۤۖۘۤۙۥۘۚۜۘۜ۫ۦۗۥۤ";
        while (true) {
            switch ((((str.hashCode() ^ 477) ^ 768) ^ 494) ^ 2000443765) {
                case -930842329:
                    String str2 = "ۦۢ۫ۛۖۧۘۡۘ۠ۘ۫۟ۚ۬ۨۘۘۧۖۡ۬ۤۦۧۖۢۙۗۧ۟ۚۧ۠ۨۘۖ۟ۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-78165318)) {
                            case -2113614631:
                                str = "ۧۘۦۘ۠ۦۢۢۗ۫ۨۢۖۗۙۤ۬ۚ۬۟ۧۙ۬ۤۖ۟ۡۡۤۧ۫ۨۦۖۜ۟ۛ";
                                continue;
                            case -1767939285:
                                str2 = "۟ۛۚ۠۫ۘۗ۟۬ۛۖ۬۠ۦۗۡۘۛۡ۫ۦۤۖ۬ۧۥۚۖ۫ۙۖۛ۫ۡۨۘۛۢۦۘۜۘۘ";
                                break;
                            case -1224397012:
                                str = "ۜۛۗۛ۫ۥۗۨۢۗۗۙۦۗۡۚۗۦۘ۫ۧۘۘۚۛۥۘۗۛۖۗۦۜۘۤ۟ۙ۟ۡۘۧۨۦ۫ۘۥۘۦۙ۫۠۠ۨۘۢۖۚ";
                                continue;
                            case 276661443:
                                String str3 = "ۗۤ۬۟ۢۡۗۖ۫۟ۖ۠ۙۗ۫ۚۛۖۘۜۖۘۘۚ۠ۘۘۛۡۛۢۚۧۢ۫ۛۥۡۖۙ۫ۧۖ۟ۤۖۗ۠ۥۥۨۘۙۖۘۦۗ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1453926004)) {
                                        case -1427754360:
                                            str2 = "ۢ۬ۡۘۢۧۡۤۙۖۨۘۧۘۘۗۖۘۡۢۜۦۨ۫ۗۧۚۨۜۙۤۡۛۛۜۜۥۖۨۘۘۨۘۦۧۜۘۡۗ۫ۨۘۖۘ";
                                            break;
                                        case -637804437:
                                            str3 = onPageChangeListener != null ? "۟ۜۢ۬ۙۖۢۙۧۛۡۨ۫ۛ۬ۘۙۙۦ۠ۦۥۙۨ۫ۛۦۨۧۖ۫ۧۤۙ۠ۥۘۙۜۥۚۨۚ" : "ۚ۬ۨۘۡۤ۫ۘۨۖۘ۫ۥۥۘۧۤۚۙ۟۠۫ۛۧ۟ۙۡۗۢ۠ۘۦۡۘ";
                                            break;
                                        case -231563900:
                                            str2 = "ۡۧۖۘۥۙۨۘۜ۠ۧ۟ۚۘۘۗۧۙۧۦۨۘۥۢۨۘۙۥۤۥ۠۟ۛۧۜ۟ۦۥۛۘۢۡۨۚۜۘۧۧ۟۬ۗ۬ۧۗۛۨۧۦ۫";
                                            break;
                                        case 1051870781:
                                            str3 = "ۧۙۗ۠ۜۘۘۥ۠ۨۘۚۚۜۜۥۘۥۤۡۡۜۘۘ۫ۤۨۥۧۡۜۡۡۜ۬ۤۖۙ۠ۦۛ۠ۡۡۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -721740521:
                    onPageChangeListener.onPageScrolled(i, f, i2);
                    str = "ۜۛۗۛ۫ۥۗۨۢۗۗۙۦۗۡۚۗۦۘ۫ۧۘۘۚۛۥۘۗۛۖۗۦۜۘۤ۟ۙ۟ۡۘۧۨۦ۫ۘۥۘۦۙ۫۠۠ۨۘۢۖۚ";
                    break;
                case -445105184:
                    str = "۫ۨۜۘ۠ۢۜۘۙۢۖۘۖۦۢۗ۫ۖۘ۟ۗۥۙۡۚۤۜۧۙۢۙ۠ۗۦۧۦۘ۠ۡۢ";
                    break;
                case -92440467:
                    str = "ۧۜۢۦۜ۫ۛۗ۟ۧۜۥۘ۟۫ۥۘۨۡۜۦۛ۫ۤۜۢ۠ۦۜۗۡۢ";
                    break;
                case 291111806:
                    return;
                case 950887510:
                    str = "ۥۥۦۙ۫ۛ۬ۖۙ۬۫ۜۡۧۘۘۡۡۛ۟۠۠ۡ۬ۖۘۨۛۖۢۡۧۘ";
                    break;
                case 976373197:
                    onPageChangeListener = this.OooooO0;
                    str = "ۖۗۗۧۘۖۘۜۚۦۚ۬ۖۢۥۜۘ۬ۡۖۘ۬ۧۦۗ۟ۘ۠ۥۥۘۚۘۨۤۖۥۘۛۢۚۛ۬ۜۘۦۜۖۘ";
                    break;
                case 1485334065:
                    str = "ۤۘۥۘۥۢۚۢۛ۟ۗۛۘۘۚ۠ۙۧۘ۠ۖۥ۫ۢۙۥۘۚۘۨۙۥۘۜۧۡۧ۠۬۫ۘۗۧ۫۟";
                    break;
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = null;
        String str = "ۥۖ۫ۤ۠ۜۘۤ۬ۡۘۜ۫ۦۘۢۡۥ۠۠ۡۚۢۗ۠ۥۤ۬ۖۘۘۚۜۘۦۨۢۚۜۜۘ۬ۨۘۘۙ۬ۦ۟ۘۤ۟ۜ";
        while (true) {
            switch ((((str.hashCode() ^ 663) ^ 320) ^ 82) ^ 1518123481) {
                case -1380330046:
                    return;
                case -500559227:
                    onPageChangeListener.onPageSelected(i);
                    str = "ۤۥۙۗۡۦۖۡۘۘۛۢۢۚۢ۫ۙۥۥ۬ۛ۬۫۫ۜۜ۠۬ۚۛۙۨۦۘۥۚ۟ۘۜۤۘۡۦ";
                    break;
                case 226611957:
                    String str2 = "۟ۨ۬ۙۦ۬ۚۢۧۢۖۘۥۗۘۘۜۛۦۚۨۘۛۛۦۘۡۛۥ۫ۘۖۘۙۘ۟ۡۧۗۢۢۡۦۤۛ۫ۚۦۥۤۤۥۡۖۘ۫ۡۨۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-214820577)) {
                            case -535502756:
                                str2 = "ۖۜۖ۫ۜۜۡ۠ۙۢ۬ۙۚۘۙۚۙۡۨۤۡۘ۫۠ۘۘ۠ۙۦۖۛۡۘ";
                                break;
                            case 2965921:
                                str = "ۤۥۙۗۡۦۖۡۘۘۛۢۢۚۢ۫ۙۥۥ۬ۛ۬۫۫ۜۜ۠۬ۚۛۙۨۦۘۥۚ۟ۘۜۤۘۡۦ";
                                continue;
                            case 1726189742:
                                String str3 = "ۘۙۨۘۥۗۨۘۘۡۢ۠ۦۗۚۜۥۘۢ۫ۖۗۡۡۘۙۖۤۢۖۤۛۡۨۘۚۖۢ۬ۙۨۘ۫۠ۛۥ۫ۨۘۢۖۚۘۤۡۘۛۦۨۧۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1600682694) {
                                        case -1609425193:
                                            str2 = "ۧ۫ۥۘۖۘ۠ۧۡۘۡۚ۟ۙۗ۬ۙۗۤۤ۠ۜۗۧۗۨۡۘۘ۠ۢۥۘۚۛۛۚۥ۬";
                                            break;
                                        case -362320115:
                                            str3 = onPageChangeListener != null ? "ۖۚۥۘ۬۬ۨۜۛۤۡۧۧۖۨۚۛۖ۠ۧۦۘۥۧ۬ۜۜۖۥۖۘۖۤۥۘۡۘۡۘ" : "ۛۘۧ۟ۦۨ۟ۖۧ۬۫ۥۘۡ۫۟ۖۛۡۡۡۡۧ۫ۛۗۢۚۗۘۢۨۥۢۛۤۙۤۡۘۧ۟ۧۨ۟ۗۤۚۜۘ";
                                            break;
                                        case 944902687:
                                            str2 = "۟ۢۜۘۗۥ۬۟ۦۦۘۚۢۨۘ۠ۖۡۢۤۘۖ۫ۡۢۡۡۢۢۤۥۚۦ";
                                            break;
                                        case 1398865565:
                                            str3 = "ۧۡۗۤ۠۟ۨۚۧۥۡۢۦۦ۬ۢ۫ۡۘ۬ۚۥ۬ۦۘۤ۠ۡۘۤۥۧ۫ۖ۟ۙۦۚۤۛۡۦۚ۟";
                                            break;
                                    }
                                }
                                break;
                            case 2112905429:
                                str = "ۤۘ۠ۘۢۨۘۢ۠ۨۧۢ۟ۙۢۧۖۦۡ۬ۙۖۘۘۚۡۘۢۢۦۘۗۙۢ۠۠۟۠ۖۥۤۗ۬ۜۨۛ";
                                continue;
                        }
                    }
                    break;
                case 690556572:
                    str = "ۢۛۛۦۖۢۗۧۡۘۦ۬ۙۚۚۨ۬ۗۘۚۖۘۘۨۘ۟۬ۤۧ۠ۥۛ۫ۨۘۚۨۘۘ";
                    break;
                case 1105869112:
                    setCurrentItem(i);
                    str = "ۡۧۖۨ۫ۡۘ۫۠۟ۤ۟ۤۖ۬ۘۡۧۡۦۦۨۘۚۧۤۚۖۙۥۚۨۘ۫ۢۛۦۖۡۘۗۨۧۦۡۘ";
                    break;
                case 1384348972:
                    str = "۠ۧۤۗ۠ۜ۫ۢۨۡۢۦۘ۫ۥۤۥۦۘۘۗۡۧۘۧۘۜ۫ۜۦۘۖۨۖۘۥۜۙۥۚۡۘ";
                    break;
                case 1438687497:
                    onPageChangeListener = this.OooooO0;
                    str = "ۚۤۦ۬ۚ۟ۙۡ۬ۘۨۜۘۘۨۧۘۗۘۖۨۖۢۜۗۦۨ۬ۥۗ۫ۗ۬ۘۘۨۙۡۚۨۖۘ۠ۧۖ";
                    break;
            }
        }
    }

    @Override // z2.ab
    public void setCurrentItem(int i) {
        String str = "ۢ۫ۛۗ۫ۙ۟ۘۦ۠ۡۥۘۛ۬ۥۘۡۤۥۘ۠ۤۡۘ۟ۙۖۚۘۡۧۧ";
        int i2 = 0;
        boolean z = false;
        boolean z3 = false;
        View childAt = null;
        int i3 = 0;
        int childCount = 0;
        ViewPager viewPager = null;
        while (true) {
            switch ((((str.hashCode() ^ 963) ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE) ^ 924) ^ (-1585325640)) {
                case -2136341064:
                    str = "ۧۥ۬ۗۚۖۘ۬ۦۘۘۛۚ۫ۨۥۦۛۨۨۘۗۜ۠۠ۦۢۡۤۢۙۡۥۢ۠ۜۘۙ۫۠ۜ۬۫ۨۘۘ۟ۢۨۨۨۘۚۧ۬";
                    childCount = this.Ooooo00.getChildCount();
                    break;
                case -1999216725:
                    str = "ۦۥۤ۠ۗۡۘۧۜۦۜ۠ۗۙۥۘۘ۫۠ۗۚۜۖۘۗۤۚ۠ۖۘۘۘۜۘۙۜۘۦۘۨۤۥۡ۬ۥ";
                    i3 = 0;
                    break;
                case -1694239466:
                    OooO0oo(i);
                    str = "ۧۜۥۘ۫ۚۘ۟ۥۨۢۘۡۘۧۢۘۘ۬۟ۨۘۢۦۨۘۤۧۨۘ۟ۚ۫ۥۙۥۘ";
                    break;
                case -1380571572:
                    str = "۠ۤۥۛۥۛۜۦ۟۠۫ۡۘۢۚۧۙۦۘۘۨ۟ۡۘۤۖۦۘۥۦۡۘ۠ۘۘۤۖۢۜۜۛۗ۬ۧ۫ۢۦۡۧۛۦۖۘۧ۫۫۟ۖۧ";
                    break;
                case -1313586330:
                    this.OooooOo = i;
                    str = "ۤۛ۫ۧ۟ۨۙۙۙ۬ۡۦۨۥۘۘۙ۫ۚۖۥ۫ۙ۟ۤۡ۟۠ۗۜۡۜۧۥۡۨ۠ۦۨۖۚۥۦۘۖۧۡۘۗۦۧ۟ۘۘۗ۫";
                    break;
                case -996982173:
                    str = "ۡ۫ۚۨۦۡۦۙۘۘۖۧ۠ۗۡ۬ۦۙ۠۟ۤ۬ۤ۫ۜۘۛ۠ۧ۠۟ۡۘ";
                    z = z3;
                    break;
                case -711611564:
                    str = "۠ۧۘۘ۬ۜۘۜ۠ۙ۠ۖۘۛۢۦۘۡۧۜۘۡۛۚۨۥۘ۫۟ۜۘۙ۬ۘۘ۬ۗ۬ۢ۫ۜ";
                    z = false;
                    break;
                case -699668689:
                    String str2 = "۫۟ۥۛۢۡ۟ۜۨۡ۫ۘۘۤۙۥۘۤۘۨ۬ۧۘۘۜۦۡ۟ۥۘۢۙۨۘۨۗ۫ۜۨۖۙۘۡۡۙ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1586656412)) {
                            case -304110517:
                                String str3 = "ۘۙۨۘۗۨۛۖۧۜۘ۠ۜۢ۬ۧۡۘ۟۬ۖۖۚ۠ۚۧۖۦۗۖۢۢۡۗۘۦ۠۫ۢۤۖۘ۠ۚۧ۠۠ۘ۫۫ۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1622930877) {
                                        case 275106342:
                                            str3 = "ۜۥۘۧۨ۟ۧۨ۬ۡۤۥۘۥۜۖۢۜۗۥ۬ۙۖۜۘۤ۠ۢۧۘ۠ۖۧ۫ۢۡ۫ۢۧۘ۫ۦۡ";
                                            break;
                                        case 558796675:
                                            str2 = "۫ۥۛۤۖ۠ۢۢ۬۫ۖ۟ۜۘۨۥ۟ۦۨۥۘ۫ۨۘۘ۫ۘۘۖۨۧۘۖۗۗۖ۟۟ۛ۟ۗۤۜ۫ۘۢۛۖۘۡۘۤ۫ۡۖۘ";
                                            break;
                                        case 1338093640:
                                            str2 = "ۙ۠ۢۧۦۧۘۛۢۘۤۖۖۘۥۛۚۘۦ۠ۖۤۖۘۧۢۥۘۜۘۙۥ۟۠ۚۘ۬ۤ۟ۡۜۚۘۖۡ۟ۙۤۧۚ۬ۦۘ";
                                            break;
                                        case 2122066933:
                                            str3 = z ? "ۛۡ۫ۨۢۥۥۛۥۘ۬ۙۜۖۢۘ۠ۜۘۙۙ۠ۡۙ۠ۥۢۨۘۧ۠ۥۤۨۦۘۘ۬۟ۙ۫۟۠۠ۚ" : "ۨۛۦۘۦ۠۬ۚۤۗ۟۬ۚ۟ۥ۬ۜ۬ۜۘۚۗۥۥۘۡۘۚ۟ۥۘ۬ۗۥۘۘ۟ۖۛۥ۫";
                                            break;
                                    }
                                }
                                break;
                            case 161421393:
                                str = "ۧۚ۟ۢۡ۟ۗۗۧ۫ۧۘۘۥۧۤۛۙ۫۫ۤۡۘۗ۬ۧۚۘۙۡۧۡۘۡۖۘۤ۬ۘۘۗ۬ۧۥ۟ۤۤ۫ۦۘۙۨۢ";
                                continue;
                            case 410794297:
                                str2 = "ۚ۬ۚ۬ۗۥ۬ۜۜۡ۫ۡۦۜ۠ۢۧۨۘۤۡۚۨ۠ۦۘۚۢۖۥ۟ۛ۟ۦۘۥ۟ۙۢۖۡۘۥۚۛ";
                                break;
                            case 1568328635:
                                str = "ۧۜۥۘ۫ۚۘ۟ۥۨۢۘۡۘۧۢۘۘ۬۟ۨۘۢۦۨۘۤۧۨۘ۟ۚ۫ۥۙۥۘ";
                                continue;
                        }
                    }
                    break;
                case -664308448:
                    str = "ۡۦۥۡۗ۫ۧۤۜۘۢ۠ۖۘۡۡۙۘۛۡۙۡۦۘۨۜۘۘۤ۠ۨۘۨۗۙ۠ۡۗۖ۟ۖۙۤۜۨۤۢۢۦۦ۠ۡۘ";
                    break;
                case -343756048:
                    z3 = true;
                    str = "ۧۚۚۢۡۤ۬ۛۦ۠ۦۧۘۗ۟ۘۘ۟ۚۚۛ۫ۦۘۡۜۘۦۨۨۢ۟۫۠ۨ۫ۙۛۤۚۥۘۙ۠۬ۜ۟۠ۙۨۙۢۨۖۘۨۖۜۘ";
                    break;
                case -148356792:
                    childAt.setSelected(z);
                    str = "ۧۡۨۢ۬۬ۖ۠ۖۛۡۛۖ۬۬ۢۥ۫ۙ۫ۘۘۙۥۙ۠ۜۚۢ۟ۥۨۡ۟۫ۙ";
                    break;
                case -115769061:
                    str = "ۚۚۨۙۥۢۧۥۘۙۨۗۘۜۢۘۥۡ۫ۘ۟۟ۤۦۖۖۘۘۡۧۘ";
                    break;
                case 114352371:
                    viewPager.setCurrentItem(i);
                    str = "ۧۡۥۛۘۨۘۤ۬ۦۜ۬ۦۛۖۧۘۡۦۛۘۧۧ۬ۗۦۘۦۖۢۢ۠ۡۘۡ۟ۧ۠۬ۢۚۥۜ۠۟ۢۡۧۢۘ۠ۢ";
                    break;
                case 264424193:
                    str = "ۦۥۤ۠ۗۡۘۧۜۦۜ۠ۗۙۥۘۘ۫۠ۗۚۜۖۘۗۤۚ۠ۖۘۘۘۜۘۙۜۘۦۘۨۤۥۡ۬ۥ";
                    break;
                case 470367850:
                    String str4 = "ۙۥۥۘۜۡۡۘۜۘۧۘۙۤۢ۟ۢۡۘ۠ۗ۟ۤۘۡۘ۬ۥۡۘۤۡۗۗۖۘۢۦۜۜۖۘۙۙۙۢۛ۠ۗۗ۬ۡۤۨۘ۫ۜۡۧۛۥ";
                    while (true) {
                        switch (str4.hashCode() ^ (-937329830)) {
                            case -2039964170:
                                str = "۟۬۫ۢۦۙۤۜۦۘۘ۬۬ۙ۫۟۟ۧ۟ۢۚۛۨ۠ۧۥۘۗۥۢۤۘۚ۟۠۠۬ۦ۫ۖ۠ۘۘۨۧۦۘ۟ۗۥۘۦۨۦ۟ۢۡۘ";
                                continue;
                            case -591497213:
                                str4 = "ۢۡۢ۫۫ۚۦ۫ۜ۠ۚ۠۫ۡۗۙۨۦۤۛۡۦۨۘۢۜۜۘۚۧۡۖۗۨۢۥۦۘۙۚ۠ۧۘۧۘۡۧۖۘۡۨۨۖۦ۟ۥۘۧۘ";
                                break;
                            case 489223663:
                                str = "ۜۨ۬ۨۜۜ۠ۨۨۘۥۧۛۙۨۘۦ۟ۨۘۖۗۡۨۤۘۘۙۥۘۦۤۤۚۧۘۥۚۗۙۦۘۨۡۜۘۡۖۛۘ۫ۤ";
                                continue;
                            case 1142635177:
                                String str5 = "ۘۧۧۨۡۦۘۥۢۡۘۥۖۧۘۛ۫ۡۘۤۢۤ۟ۨۢۡۜۘ۬۬ۜۧۖ";
                                while (true) {
                                    switch (str5.hashCode() ^ 358599962) {
                                        case -1786392751:
                                            str4 = "ۥۖ۫ۚۖۥۘۙۛ۫۠ۥۜۨۚ۠ۛۡۧۘۖ۫ۜ۟ۢۚ۫ۖۢۛۤۜۚۨۘۘۚۤۧ۬ۥۨۚۘۤۥۜۡۡۥۛ";
                                            break;
                                        case 369988840:
                                            str5 = "ۜۥۤۘۚۡۘۖۗۡۘۡۢۨ۫ۙۧۨۖۖۙۡۨۚ۠ۦۘۡۘ۠ۛ۫";
                                            break;
                                        case 925584187:
                                            str5 = viewPager != null ? "ۥۡۛۖۛۤۙۦۢۛۚۥۘۡۢۨۧ۠ۚۛ۫ۚۙۢۖۦۦۖۦۛۦۘ۬ۢۖۘۖۤۥۘ" : "ۖۛۨۡۖۤۢۜۙۤ۟ۥۘۗ۫ۜۘۧۗۤۡۛۗۥۛ۟ۧۥۙۚۧۙۦۡۦۜۜۦۤۥۜ۠۟ۗ";
                                            break;
                                        case 1373437730:
                                            str4 = "ۢ۫۬ۦۖ۠۠۫۫ۗۙۜۘ۠ۙۥ۟۠ۘۘۡ۟۫۬ۥۙۦۡۘۧ۟ۡۛۘۛۨۚۡ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 652470325:
                    i2 = i3 + 1;
                    str = "ۜۡۖۘۜۢۡۘۧۨۢۚ۫۟ۥۧۡۛۨۤۛۘ۬۫ۤۨۘۥۖۡۘۥۦۤۜۦۡۗۙۘ۠ۦۛۢۦۛۛۡۧۡ";
                    break;
                case 1122899891:
                    str = "۠ۧۘۘ۬ۜۘۜ۠ۙ۠ۖۘۛۢۦۘۡۧۜۘۡۛۚۨۥۘ۫۟ۜۘۙ۬ۘۘ۬ۗ۬ۢ۫ۜ";
                    break;
                case 1733605893:
                    throw new IllegalStateException("ViewPager has not been bound.");
                case 1818158943:
                    return;
                case 1860756224:
                    str = "ۨۙۨۚۖۘۖۡۡۘۦۤۗۙۖ۠ۚۛۢ۬ۛۖۘۗ۟ۤۖۜۘ۠ۚۜۜ۟۫ۛۚۘۘۢۙۨۥ۬ۥۧۦۘۙۘۙ۟ۖ۠ۜ۟ۜ";
                    break;
                case 1910407855:
                    str = "۬۟ۙۖۥۡۘۜ۠ۡۘۡۜۗۜۡۘۢۚۧ۫ۥ۠ۙۖۗ۠ۚۚۛۙۧۛۖۦۘۢۤۚۥۤۥۘۨۘۚ";
                    viewPager = this.Ooooo0o;
                    break;
                case 1924326651:
                    String str6 = "۬ۖۛۘۘۥۜ۬۬۫ۚۥۚ۟۠۫ۗۦۘۧۜۥۚۡۦۘۘۘۖۘۜۛۜۦۗۜۘۨ۫ۘۘۢۨ۬ۛۘۦ";
                    while (true) {
                        switch (str6.hashCode() ^ (-447531647)) {
                            case -2124922575:
                                String str7 = "ۖۤۖۘۥۜ۬ۦۡۢۜ۬ۡۘۢۡۧۘۢۖۢۥۨۦۖۚۧۗۜۦۘۧۡۖۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 329649361) {
                                        case -425996388:
                                            str6 = "ۜۗۚۛ۠ۥۘۨ۠ۡۢۚ۠ۤۛ۫ۜۦۥۖۚۦۘۧۢۦ۠ۡۜۘۗۜۗۗۥۧۘۛۗۨۙ۫ۖۛۛۥۘ";
                                            break;
                                        case 762183673:
                                            str7 = i3 == i ? "ۢۢۘۘۤۖۘ۟ۙۢ۫ۖۧۦۗۛۖۢۤۡ۬ۥ۟ۡ۫ۨۘۘ" : "۫ۚ۫ۦۦۦۡۢۥۨۧۦۘۨ۠ۜۘۚۙۖۢۦۡۘۨۨ۫ۡ۠ۘ۟ۜۢۗۤۜۗۛۖۥۖۗۡۧۘ۬ۜۘۨ۠";
                                            break;
                                        case 1026133857:
                                            str6 = "ۗ۟۬۫ۛۥۘۗۢۘۘۙۥۜۜۜۜۖ۟ۜۘ۬ۡۡۘۨۗۦۦ۟ۜۖۛۢۥۤ۬ۦۘ";
                                            break;
                                        case 1714600864:
                                            str7 = "۟ۧۦۥۘ۟ۨ۬ۜۧۗۡۘ۬ۙ۫۟۟ۤ۫ۢۨۜۖۘۥۨ۫ۙۚۗۨۤۨۤۚ";
                                            break;
                                    }
                                }
                                break;
                            case -522809925:
                                str = "۟۬ۖۙۡۦۘۨۖ۟ۖۤۛۙۧۨۘ۟ۦۜۘۗ۟ۨۢۛۦۧۥۧۘۜۥۦ";
                                continue;
                            case -458687908:
                                str6 = "ۛۨۚۦۢۖۨۜۧۘۢ۫۠ۧۛۦۚۜۥۥ۫ۖۢۥ۬ۗۨۨۖۘۨۘ";
                                break;
                            case 1780697158:
                                str = "ۛۖۘۘۡۧۥۤ۟ۡ۫ۤۖۘۡۗۡۖۖ۟ۤۡۛ۬ۖ۟ۗۘۛۘ۠ۙ۟ۨۙۦ۠ۛۦۢۜ۫ۥۘ۬ۡۜۥۚۥۘۤ۫ۥۘۦۦۘ";
                                continue;
                        }
                    }
                    break;
                case 1956927731:
                    String str8 = "ۘۢۜۖۛۙۦ۬ۦۢۗۦۖۜۥۚۢۦۘۧ۠ۖ۠ۢۡ۟ۘۘ۠ۘۖۘۚۗ۬ۙۤۦۘۚۧۜۚ۟۫ۥۡۥۥ۫۠";
                    while (true) {
                        switch (str8.hashCode() ^ 125167767) {
                            case -1743202871:
                                str = "ۡۤۦۘ۫ۖ۠ۨۨۢۖۢۨۙۛۚۘۗۨۘۛ۟ۡۘۗۙۦۘ۠۫ۜۘۗۦۤ۬ۜۛۚۦۥۘ";
                                continue;
                            case -1254057324:
                                String str9 = "ۘۢۢ۠ۨۛۗۙۡۘۡۘ۫۠ۦۘۖۥۢۡۦۜۚۨۦۖ۬ۛۨۚ۫۟ۛۡ۟ۗۘۧ۬ۧۢۢۦ";
                                while (true) {
                                    switch (str9.hashCode() ^ 1457629059) {
                                        case -1787705930:
                                            str9 = i3 < childCount ? "ۚۗۚۤۜ۬ۗۤۤۚۗ۟ۗۘۦۚۘ۫ۛۙۗۖۤۜۡۡۨۘۨۤ۫ۙۥۜۘۗۜۘۖ۬ۥۗۥۧۘ" : "۬ۧ۫۫ۗۧۘۦۢۙۦۘۥۖۢ۬۠ۥ۟ۚۘ۠ۨۥۖۘۛ۠۬ۛۦۤۦۚۥ";
                                            break;
                                        case -1678146816:
                                            str9 = "ۢ۟ۥۘۦۗۗ۬ۥۖۘۦۘ۟۬ۜ۠ۢۨۡ۬ۨۜۘ۫ۦۧۗ۟ۖۧۡۨۛۖۙ۬ۢۜۘۜۦ۬۟ۛۥۢۙۛ۫";
                                            break;
                                        case -814035880:
                                            str8 = "۬ۦ۠۫ۦۚۛۥۖۗ۬۟ۡۙۡ۠ۜۥۥۙ۫ۗ۟ۚۤۡۦۘۡۗۜ۬ۖۘۛ۟ۥۙ۟ۙۧۦۢۥۘۘۖۘۡ";
                                            break;
                                        case 367338898:
                                            str8 = "ۘ۟۫۬ۤۦۨۥۥۘۧ۠ۘۜۖۧۚ۬ۡۘ۬۠ۘۘ۟ۨۜۘۜۛۜ۠ۦۨۡۙۗۥ۬ۖۖۤ۟ۥۨۥۘۘ۟ۥۘۙۖۥ";
                                            break;
                                    }
                                }
                                break;
                            case 271248693:
                                str = "ۗۜۖۨۙ۟۠۟ۗۥ۬ۘۧۢۨۘۙۚۗۗۨۤ۠ۘۜۘۧۚۡۖ۫ۨۘۦۥۘۚۗۧۤۧۥۨۘۘۘۜۨۘ۬ۛۥۘ";
                                continue;
                            case 854685457:
                                str8 = "۬۟ۨۥ۠ۘ۬ۨۗۗۗۦۖۧ۫۬۟۫ۗۥۙۙ۬ۤۘۜۡۘۦ۠ۘۘ۟ۡۦۘ۟ۧۗ۠ۦۖۘۗۢۘۘۡ۠ۡۘ۫ۛ۬ۥۦۢۢۧۜۘ";
                                break;
                        }
                    }
                    break;
                case 2077583817:
                    childAt = this.Ooooo00.getChildAt(i3);
                    str = "ۢ۟ۧۢ۫ۦۜۜۦۘۧۗۨۧۤ۟ۜ۫ۥO۫ۜۖۧۘۦۦۘ";
                    break;
                case 2096093180:
                    str = "ۥۥۤ۠ۜۢ۠ۨۘۛۢۢ۠۟ۥۘ۬ۦ۠ۘۨۤ۬ۛ۟۬ۙۧۗۨۗۚۜۘ۫ۚۧۤ۟ۦ۫ۖۘۡۘۜ۠۬ۙۢۥۘۘۢۢۦۘ";
                    i3 = i2;
                    break;
            }
        }
    }

    @Override // z2.ab
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        String str = "ۚۖۧۗۦ۠ۜۖۚۦۗۜۘۜ۠۠ۙ۫ۚۙۨۤۖۚۧۨۨۢۨۙۙۗۖۖۘ۬۫۟";
        while (true) {
            switch ((((str.hashCode() ^ 548) ^ 670) ^ 675) ^ 1148748275) {
                case -635402387:
                    return;
                case -520234048:
                    this.OooooO0 = onPageChangeListener;
                    str = "ۡ۟ۢۥۙۖۥۥۨ۫ۧۜۘۙۧۘۘۖۚۦۢۨۦۢۤۨۘۙۡ۟ۦ۟ۨۦۡۖۜۧۡۘۧۧۨۜۤ۫۫۬ۨۖ۬ۤ";
                    break;
                case 146372881:
                    str = "ۛۘۜۢ۠ۧۖ۬ۜۥۦۡۘۜۥۙۜۢۗۜۛۘۘۛۤۥ۟ۙۡۛ۫۟ۤۤۤ۠۬ۙۡۘۙۤۧۘۘۚۗۘۧۧۦۖۚۛ۟ۛۦ";
                    break;
                case 310984018:
                    str = "ۤ۟ۦۘۢۨۥۘۦ۠ۢ۫ۜۦۘۦۖۥۘۖۨ۟ۢ۟ۚۙ۫۟ۗۜۡۘۛۧ۟ۗۧۘۘۚ۬ۖۘ۟ۚۜۘۘ۫ۜۗۦۜ۟ۢۡۘ";
                    break;
            }
        }
    }

    public void setOnTabReselectedListener(OooO0OO oooO0OO) {
        String str = "۟ۛۗۤۘۡۘۙۚۙۛۗ۫ۨ۟ۦۨۢۘۗۜۖۘۘۖۧۘۤۖۛ۬ۘۧۡۗۖۤۖۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 117) ^ 683) ^ 774) ^ (-922282518)) {
                case -1822361399:
                    str = "ۥۨۛۜۦۥۚۘ۫ۦۗۜ۫ۧۦ۠ۢۦۚۥۘۘۖۖۜۘ۠ۥۨۘۖۗۗۦۤۥۘۦ۬ۘ";
                    break;
                case -1594955408:
                    this.Oooooo0 = oooO0OO;
                    str = "۠ۚۘۘۧۜۤۦۚۖۚۘۜۙۖۡ۬ۙۤ۠ۥۧۘۧۢۨۘۥ۠ۨۨۢۖۥۖۘۘۨۘۦۘۥ۟ۗۥۧۥۘۘۘ۟۬ۢ۫";
                    break;
                case -260116749:
                    return;
                case 912090156:
                    str = "ۚ۫ۨۘۥۘ۠ۡ۫ۙۚۤۦۘۚۜۘۢۙۛۙۥۘۡۖۛۙۘۡۡۙۖۜۙ۬ۤۡۤ";
                    break;
            }
        }
    }

    @Override // z2.ab
    public void setViewPager(ViewPager viewPager) {
        String str = "ۙ۫ۨۨۘۖۘۨۘۖۚۙ۟ۧۡۘۖۧۛ۫ۜۥۤۢۙۨۦۖۢۚۘۙۗۨۘۘ۫ۤۘۘ۠۟ۢۡۥ۫۬ۥۘۗۗۚۨۧۖۘ";
        ViewPager viewPager2 = null;
        while (true) {
            switch ((((str.hashCode() ^ 763) ^ 979) ^ 163) ^ (-2079029606)) {
                case -2106659378:
                    throw new IllegalStateException("ViewPager does not have adapter instance.");
                case -1666280883:
                    this.Ooooo0o = viewPager;
                    str = "۬ۜ۬ۗۨۘۘۤۥۖۘۘۚۜۚۙۜۦۘۘۚ۠ۥۨ۟۬ۘۨۘۤۧۛ";
                    break;
                case -1651250600:
                    String str2 = "ۥۗ۠ۚۡ۟۫۫ۧۜۙۡۘۤۛۜۙ۟ۘۡۧ۠ۡۥۧۘۗۜۖۢۘۘۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-799529633)) {
                            case 768068097:
                                str = "۬ۗۢۤۚۨۥۜۙۘۨ۫ۙ۬۬ۥۛۤۦۢۨۘ۫ۡۗۙ۟۠ۦۗۖۨۚۚۨۦۘۚۤۨۘۘ۟۟ۛۘۥۘۛۜۥ";
                                continue;
                            case 1245809506:
                                str2 = "۫ۧۥۘۖ۬ۧۙۛۥۤۖ۟ۤۖ۫ۛۜۤۛۜۘۥۚۖۗۨۨۘۛ۟ۡ";
                                break;
                            case 1412499305:
                                String str3 = "ۗۡۛۥۖۥۖۡۛۦۤۜۛ۫ۡۘۛۡۜۘ۠ۜۡۘ۟ۜۥۘۙۢۤۛ۫۠ۛۤۤۨ۟۟ۦۤۖۘۛ۬ۖ۫ۦۗ۠۬";
                                while (true) {
                                    switch (str3.hashCode() ^ 573618078) {
                                        case -1696979876:
                                            str3 = viewPager.getAdapter() != null ? "ۦۤۜۘ۠ۧ۠ۢ۬۫۫۬ۛۚۖۚۚۘۢۘ۟ۛۗۜۡ۫ۘۗۡۥۘ" : "ۥۛۤۜۡۦۦۜۚۙۢۗۚۗۜۘۤ۬ۢ۬ۗ۟ۛۦۖۘۡۘ۟ۤ۫ۧۥۗۛۡۥۜۨۨۗۡۛۚۘۦۚۚ۠۠";
                                            break;
                                        case -299869339:
                                            str2 = "ۨۡۥۘۨۚۡۘۜۦ۬ۜۧ۠ۙۦ۠ۧ۫ۜۦۗۡۘۙۦۖۘۨ۫۟ۙۜ۬ۨ۠ۤۦۢۖ۬ۙۦۘۦۦۖۘۢۦۨۚۚۦۘ۫ۧۥۘۘ۟ۦۘ";
                                            break;
                                        case 202428154:
                                            str2 = "ۢ۟ۥ۬ۙۛۨۙۜ۬ۛۙ۟۬ۤۥ۫ۗۗۡۜۦۜۥۤ۬ۗۨۗ۟";
                                            break;
                                        case 723261134:
                                            str3 = "ۤ۟ۘۘۚ۠ۡ۠ۥ۬ۨۦۙۚۛۖۘ۠۫ۜۘۨۘۗ۟۠ۘۖۨۡۜ۬۠ۥ۫۫ۛۚۘۘۡ۬ۘۚۥۧ";
                                            break;
                                    }
                                }
                                break;
                            case 2006456163:
                                str = "ۨۢۖۘۛ۟ۤۧۖۜ۟ۧ۟ۗۚۨۘۢ۫ۛۧۙۢۢۢۜۙۧ۫ۦ۠ۖ";
                                continue;
                        }
                    }
                    break;
                case -1526092229:
                    String str4 = "ۜ۠ۧۨۡۙۚۢۙۦۗۖۘۗ۠ۘۡۡ۫ۢ۬ۢۗۖۧۘۨۦۥۖۖۗ۠ۛ۠ۡۜۖۘ۬ۘۚۥۖۦۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 1647055347) {
                            case -724211703:
                                str = "ۦۨۘ۬ۧۦۗۧۛۙۥۜۙۧ۠ۙۧۖۙۢۙۥۚۜۖۢۧ۫۬ۖۜۚۖ۟ۙۧۥ۫ۥ۫ۢۖۥۡۘۙۧۖۘ۠ۙۡ۟ۥۚ";
                                continue;
                            case 416826551:
                                String str5 = "۬ۖۛۦۖ۬ۤۘۨۙۜۖۤ۟ۡۘۦۙۨۘۨۙۖۘ۠۬ۛۤۛۨۘۗۨ۠ۦ۬ۚ۠۠ۖۘۙۚۥۗۖۘۤ۬ۘۘۢۧۡ";
                                while (true) {
                                    switch (str5.hashCode() ^ 932641440) {
                                        case -1323744091:
                                            str5 = "۬ۙۖۘۨۧۜۘۡۗۤۨۥۘۨۧۖ۬۟ۛۘۜۥۘۗۙۘۘۦ۫ۢۖ۫ۖۘ";
                                            break;
                                        case -579088109:
                                            str4 = "۠ۚۖۘۧۗ۠ۘۨ۫ۘۧۜۘۨۙۜۖۙۡۘ۠ۘۧۘۧۜۗۨ۬ۛۨ۟ۖۘ۟ۤۜ۟۟ۢ";
                                            break;
                                        case 333265204:
                                            str5 = viewPager2 != null ? "۟ۙۛ۟ۢ۟ۙۧۦ۬ۡۧۘ۬۟ۘۨۚۧۘۦۨۥۘ۬ۨ۠ۥۤ۬ۙۢ۟ۨۧۛ۠۟ۡۘۛۨۥۧۚۘۚ۫ۜۢۢۘۜۖۘ" : "ۤۨ۟ۨۙ۬ۗۨۢۧۘ۬ۚ۟ۦۚۢۡ۬ۧۨۘۜۜۘۘۢۙۧۡۨۢۡۘۗ۫ۖۦۖۢۖ۠ۢۚۧۤۦۘۢۧۜ۫ۖۛۤ۠ۡۘ";
                                            break;
                                        case 353395996:
                                            str4 = "ۧۦۛۢۖۢۦۙۘۘۧ۠ۥۘۜۚۜۘ۟ۚۤۙۚ۫ۚ۬ۛۡ۬۟ۨۤ۬ۙ۬ۖۡۤۙۤۨۜۘۤۘۙۗۙۨۘۗۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1039867686:
                                str4 = "ۗ۠ۙۢۡۦۘۥۜۜۗۜۚۦۘۜۦۛۘۘۘۙۖۘۛۖۖۘ۬ۛۡۘۛۗ۟ۡۥۤۖۡۧۘۙۥ۠۟ۡۧۘ";
                                break;
                            case 1717420157:
                                str = "ۖۨ۫۬ۦۙۜۚۖۡۘۦۘۛۧۜۦۧۤۡۤ۠۫ۤۜۙ۠ۧۡۡۙ۟۬ۨۘۤۘۡۥۥۦۗ۠۠ۚ۫ۗۛۘۘ";
                                continue;
                        }
                    }
                    break;
                case -1298473398:
                    viewPager2 = this.Ooooo0o;
                    str = "ۚۛۜ۫۬ۥۗۡۛۘۡۜۘ۟ۘۘ۬۫۠ۦ۫ۛۜ۫ۖۘۥۖۥۘ۠ۨ۬";
                    break;
                case -862562765:
                    viewPager2.setOnPageChangeListener(null);
                    str = "ۖۨ۫۬ۦۙۜۚۖۡۘۦۘۛۧۜۦۧۤۡۤ۠۫ۤۜۙ۠ۧۡۡۙ۟۬ۨۘۤۘۡۥۥۦۗ۠۠ۚ۫ۗۛۘۘ";
                    break;
                case -810110170:
                case 383485763:
                    return;
                case -798998650:
                    OooO00o();
                    str = "ۦۖۨۘۧۢۖۧۢ۬۟ۤۡۘۡۧۨۘۘ۟۠ۙۥۘ۬۫ۡۨ۟ۨۢۦۛۦۙۘۘۛۨۧۘۜ۬ۖۡۧۥ";
                    break;
                case 86320808:
                    viewPager.setOnPageChangeListener(this);
                    str = "ۤۡ۬ۚۧۘۘ۟ۖۡۖۜۨۢۧۖۘ۠ۥ۬۫۟ۖۘۖۛۥۘۜۜ۬ۥۧۙۧۨۥۘۥۘ۟ۚ۠ۥۜۨۤ۫ۚ۟ۙ۫۠ۧۗ۟ۦۘۘۘ";
                    break;
                case 194223353:
                    String str6 = "۠۠۫۫۬ۧۨ۫ۗۗۢۚ۫ۡۘۨۜۧۘ۫۫ۖۧۨۤۚۢ۟ۘ۫ۢۗۨۦۘۙۤ۠ۢۜ۟ۨ۠ۢۚۚۘ۠ۗ";
                    while (true) {
                        switch (str6.hashCode() ^ 532176521) {
                            case -2135201887:
                                str = "ۢۘۡۘ۬ۦۖۘۧۨۢۜۥ۠ۥۧۥۤۧۗۢ۫ۜۤۧۗۙۢۨۦۧ۟ۦۙ۬۫ۨۘ";
                                continue;
                            case -2048257398:
                                str = "ۛۛ۬ۚۦۘۖۥۢۗ۠ۦۘ۠ۡۨۘۖ۠ۖۧۘ۫ۚۥۧۘۤۗۚ۟ۜۖۘۙ۠ۛۗۚ۫۠ۜۘۘۛۘ";
                                continue;
                            case -139114329:
                                String str7 = "ۤۨۥۘۜۖۨ۟ۤۜۘۙ۠ۚۦۤۛۖۤۢۤۥۘۥ۬ۜۘۛۢ۫ۢۜۙ۬ۥۦۙۦۘۨۥۨۘۧۚ۠۟ۜۘۦ۟ۖۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1636198973)) {
                                        case -1097513772:
                                            str7 = viewPager2 == viewPager ? "ۚۤۥۨۙۖۘۘۙۘۘۢۚۨۘۡۜۙۦ۠ۥۡۤۥۚ۫ۨۘۤۜۨۧۡ" : "ۙۜۖۘۗۦۗ۟ۖ۠ۛۡۘۨۨۖۧۚۗۚۡۖۢ۬ۚۖۨۘۖ۫ۤۦۨۚۜۤ۬ۤ۬ۡۡ۬ۥۜۚۤۙۖۡۘۢۦۚ۟ۦۨ";
                                            break;
                                        case 570482359:
                                            str6 = "ۜۧۛۦ۬۬ۚۤۗۛۘۢۗۛۘۦ۠ۥ۫ۧۤۡۘۨۤۥۧۙۙ۟ۦۖۘۦۙۛ۫ۢۥۘۗۖۙۤۖۧۥۜ";
                                            break;
                                        case 1361166152:
                                            str7 = "۠ۘۙۖ۟۠ۚۜۚۥ۫ۡۦۤۢۚ۠ۘۖۘۘ۟ۨۡ۠ۗۢۢۛۙۜۗۜۦ۟ۚۨۛۧۦۘۙ۠ۦۘۤۙۨ";
                                            break;
                                        case 2061505617:
                                            str6 = "۠ۚۡۘ۬ۚۖ۬ۘۥۗۨۨۘۧۚۥۧۚۡۙۗۦ۟ۡۥۢۗۧۙۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1331051188:
                                str6 = "ۜۢۘ۬ۢۘ۬ۚۧۛۚۡۜۚۜۘۘۜ۬ۦۛۦۘۨۧۦۘ۟ۖۘۘ۫ۙ۠۟ۥۜۚۖۛۜۦۜۛۥۘۨۢۤۚۨۡۤ۠ۧۗ";
                                break;
                        }
                    }
                    break;
                case 306079031:
                    str = "ۨ۠ۥۘۤ۟ۥۦ۟ۘۘ۟ۥۥۘۛۥۘۘۘ۫ۘ۟ۜۘۨۚۜۧ۫ۖۘۢ۟ۜۘۧۛۦۘۤۖۡۘ";
                    break;
                case 1408922998:
                    str = "ۥ۬۠ۖۢۛۦ۬ۡۖۥۖۘ۠ۗۚۥۥۦۜۥۗۧۥ۠ۡ۬ۨۤۛۨۘۦ۠ۥۡ۫ۢ۫ۤۗۜۘۚۡۜۦۘۗۗ۬";
                    break;
            }
        }
    }
}
