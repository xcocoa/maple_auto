package com.cyjh.elfin.ui.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.util.ArrayList;
import java.util.List;
import z2.w3;

/* JADX INFO: loaded from: classes.dex */
public class CircleDotLinearLayout extends LinearLayout {
    private static final int OooooOo = 6;
    private static final String Oooooo = "#3c7ac5";
    private static final int Oooooo0 = 0;
    private static final String OoooooO = "#bababa";
    private static final float Ooooooo = 8.0f;
    private static final int o0OoOo0 = 100;
    private List<ImageView> OoooOoO;
    private GradientDrawable OoooOoo;
    private GradientDrawable Ooooo00;
    private OooO0O0 Ooooo0o;
    private Handler OooooO0;
    private int OooooOO;

    public class OooO0O0 implements Runnable {
        public final CircleDotLinearLayout OoooOoO;

        private OooO0O0(CircleDotLinearLayout circleDotLinearLayout) {
            this.OoooOoO = circleDotLinearLayout;
        }

        public void OooO00o() {
            String str = "ۜۧۜۦۘۧۘۜۙ۫ۖۢۦۘۥۥۚۜۖ۠ۦۨۧۧۗۧ۟ۦۜۘۛۖۘۛۦۧ۟۠ۘۘۡۤۘۧۤۥۤ۬ۦۘۙۛۦۨۜۨۖۡۖ";
            while (true) {
                switch ((((str.hashCode() ^ 491) ^ 414) ^ UiMessage.CommandToUi.Command_Type.SET_ENABLED_VALUE) ^ 1412619432) {
                    case -1496182432:
                        return;
                    case -1136958555:
                        str = "۠ۤۤۘۙۖۘۘۡۦۘۥۙ۟ۥۘۘ۫ۛۦ۫۟ۥۗ۟ۦۘۜۜۦۘۥۘۖ";
                        break;
                    case -1118202732:
                        CircleDotLinearLayout.OooO00o(this.OoooOoO).removeCallbacks(this);
                        str = "۬ۦۘۘۜۜۧۘۡۗۢ۠ۧ۟ۖۦۨۡۢۤۡ۠ۤۜ۟ۛۧ۫۟ۘۨۘۡۙۨۘ۫ۛۛۢ۟۫۠ۖ";
                        break;
                    case -120728461:
                        CircleDotLinearLayout.OooO00o(this.OoooOoO).postDelayed(this, 100L);
                        str = "ۧۥ۬۠ۙۙ۬ۙۜۘۜ۬ۙۡۚ۟ۦۦۘۛۥۧۘ۟ۖ۠ۗۘۜۘۗ۫ۨۘۨۗۦ۫۟ۚ۬۬ۥۘۢۖۧۗۖۨ۠ۚۘۘۜۚۨۧۚ۬";
                        break;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۦ۬ۘۘۙۛۢۧۡ۫ۦ۟ۧۛۦۘۘۚۚ۟ۢ۬ۤۥۡۛۦۨۙۛۢ۬ۨ۠ۥۘۦۙۢۡ۟ۤۡۧۡ";
            int i = 0;
            GradientDrawable gradientDrawableOooO0o = null;
            ImageView imageView = null;
            GradientDrawable gradientDrawable = null;
            ImageView imageView2 = null;
            GradientDrawable gradientDrawableOooO0o0 = null;
            ImageView imageView3 = null;
            int i2 = 0;
            while (true) {
                switch ((((str.hashCode() ^ 831) ^ 781) ^ 176) ^ 1857862436) {
                    case -2105933553:
                        return;
                    case -2071107035:
                        str = "ۡۥۡۧۡۜۘۥۥۢۜۤۨۘ۟ۚۨۘۗۦ۟ۖۧۡۘ۠ۘۦ۬ۗ۫ۙۥۢ۬۟ۨۜ۬ۢۦۦۨۙۦۦ۠ۚۜۥۧۦۘ";
                        break;
                    case -1860760556:
                        CircleDotLinearLayout.OooO00o(this.OoooOoO).postDelayed(this, 100L);
                        str = "ۨ۫ۘۚۦ۬ۡۢۖۘۗ۫ۢۢۘۥۘۘۡۘۜۧۙۦۘۡۦۨۖۗۢۜۧۡۚۥ";
                        break;
                    case -1825652423:
                        str = "۟ۚۤۖۘۢ۠ۢۨۢۢۜۙۚۥۙ۬ۤۢۨۗۨۤۛۚۨۘۜۢ";
                        gradientDrawable = gradientDrawableOooO0o;
                        break;
                    case -1578349298:
                        str = "ۘۦ۬ۙۘۥۘۨۧ۟ۡۢۨۘۢ۠ۧۜۗۛۗۥۛۡۜۥۖۙۜۘ۠ۤۙۢ۬۫ۛۦۗۡۨۗۨۛۨۙۥۖۖ۟۬ۧۜۡۘۥۤۙ";
                        imageView2 = imageView;
                        break;
                    case -1397230266:
                        str = "ۙ۬۠ۜ۫۫ۧۘۧۨۦۘۙ۫ۥۥۨۜۘۗۛۤۦۡۜۡۜۢ۟ۘ۫۟ۗۘۛۙۡۘ۠ۙۢ۬ۜۖۘ";
                        gradientDrawable = gradientDrawableOooO0o0;
                        break;
                    case -1098426507:
                        gradientDrawableOooO0o0 = CircleDotLinearLayout.OooO0o0(this.OoooOoO);
                        str = "ۜۤۜۘۚ۟ۧۡ۬۬۫۫ۥۘ۬ۛۨۘۖۖۙۦۘۧۦۨۘۘ۟ۖۦۡۘۥۘ۟ۡۜۘۘۙۥ۠۫ۥۘ۬۟ۖۗۜۡۘۜ۫ۦۘ۬ۧۢ۫ۢ";
                        break;
                    case -993064495:
                        gradientDrawableOooO0o = CircleDotLinearLayout.OooO0o(this.OoooOoO);
                        str = "ۖۡۥۜۘۛۢۧۘۡۙۡۙۙۢۙۨۡۘۙۨۛۙۦۨۘۨۦۦۤۗ";
                        break;
                    case -349967366:
                        str = "ۢۖۘۘۡۧۘۘۚۨۜۙۜۗۥۦۘۙۨ۬ۘۢۙۤۘۚۦ۠۠۠ۜ۠ۥۙۚۧۖۨۘۤ۠ۢۘۚۛۖ۟ۜۘۜۚۦۨ۟ۦۘۤۙۜۘ";
                        imageView2 = imageView3;
                        break;
                    case -174335860:
                        CircleDotLinearLayout.OooO00o(this.OoooOoO).removeCallbacks(this);
                        str = "ۢ۫ۛۙۘۥۜۖۜۖۙۜۘۢۧۨۙ۠ۗۖۙ۫ۦۡۙ۬ۘۚۧ۠ۘۘ۟ۤۨۘ۬۟ۡ۬ۨۘۘۘ۟ۗ";
                        break;
                    case -91345127:
                        str = "ۥ۫۠ۨۖۧ۫ۢۡۘۙ۠ۖ۬ۙۢۛۢۜۜ۟ۢۜ۬ۖۧۧۥۡۚۜۘ۫۫ۜۘۖۧۡ";
                        break;
                    case 128108185:
                        str = "ۛۦ۠ۤ۬ۡۘۜ۬ۦۘۜۡۧۘۦ۠ۨۘۛۤۚ۬ۚۘۚۡۖۨۜۨۘۦ۟ۨۘۙۙۨۘۜۨۚۚ۬ۥۢۗۘۘ";
                        imageView = (ImageView) CircleDotLinearLayout.OooO0Oo(this.OoooOoO).get(i2);
                        break;
                    case 515431333:
                        str = "ۡۥۡۧۡۜۘۥۥۢۜۤۨۘ۟ۚۨۘۗۦ۟ۖۧۡۘ۠ۘۦ۬ۗ۫ۙۥۢ۬۟ۨۜ۬ۢۦۦۨۙۦۦ۠ۚۜۥۧۦۘ";
                        i2 = 0;
                        break;
                    case 593645858:
                        i = i2 + 1;
                        str = "ۘۧۙ۠ۖۡۗ۬ۡۘۘ۟ۢۗۚ۟ۖ۫ۦۘ۫ۘۚۛ۫ۨۘۙۥ۠ۨۦۗ";
                        break;
                    case 851415269:
                        CircleDotLinearLayout.OooO0OO(this.OoooOoO);
                        str = "ۨۧۧ۫۬ۛۙۦۥۧ۠ۛۙۧۖ۫ۗ۬۟ۦ۬ۘۘۖۘۥۘۥۘۜۛۘۘۘۛۥ۠ۛۤ";
                        break;
                    case 968906063:
                        str = "ۦۗۥ۟ۚۥ۫۠ۢۧۧ۠۬ۗۜۦۗۦ۠ۖۖۘۡۜۧۛۛۢۜۘۚ";
                        break;
                    case 1369007276:
                        String str2 = "ۖۧۜۘ۫ۨۢ۬ۥۘۥۖۦۘۘۘۧ۟۫ۘۘ۬ۖۧۤۗۘۥ۫ۖۘۨۦۧۘۨۦۘ۟ۚۖ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1160957164)) {
                                case -1734435169:
                                    str2 = "۫۟ۙۦۗۘ۟ۜۧۗۛۦۨۜۦ۫۫ۖۧۘۧۘۗۖۚۖۖۦۘ۠ۖۘ۫ۙۤۥۙۦۘ";
                                    break;
                                case -555281155:
                                    String str3 = "ۥۧۦ۟۫۠ۢۡ۫ۢۧۛۦۤۦۘۦۗۖۨۛۛۢ۬ۢۤۛ۠ۖۧۥۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1372628474) {
                                            case -2098781887:
                                                str2 = "ۚۚ۠ۤۡۡۘۘۙۘۘۜۧۧۤۦۧۘۛ۫ۥۗۛۖۘۦۧۨۜۘۥۚۙۘۘ۟ۧۧۦۢۢۛ۟ۡۘۧۢۥ";
                                                break;
                                            case -1915748701:
                                                str2 = "۟ۥۧۘۢۙۡ۟ۢۘۡۗۡۘۚۡۢۤۘۥ۬ۨۚۛۗۨۙۖۧۘۥۚۥۖۦۦۨۙۥۘ";
                                                break;
                                            case -654731976:
                                                str3 = i2 < CircleDotLinearLayout.OooO0Oo(this.OoooOoO).size() ? "ۘۙۚۗۤ۫ۢۥۗۢۜۖ۠ۗۨۡ۫ۦۦۨۚ۫ۧ۫ۘۦۤۨۡۘ۫۟ۚۘۨ۬ۖ۠ۚۘۜ۫" : "ۚ۫ۢ۠ۗۛ۠ۤۖۘۛۤۦۚۘۥۘۖۦۘۘۡۦۤۖۡۘۛ۫ۚ۬۠ۜۘۨۖۡ۬۫ۜۘ۠ۖۥۤۨۘۢۥۗۘۛۦ";
                                                break;
                                            case 1408213695:
                                                str3 = "۬ۙ۠ۡ۫ۜۘۧۖۥۘ۠ۥۘۘۚۢۨۦ۬ۛۧۥۨۘ۬ۘۢۖۙ۟۠ۖۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case -501140877:
                                    str = "ۡۤۧۖۤۥۘ۠۫ۤۥۖۘۤ۟ۥۘۤۜۘ۟۬ۢۜۜۘۧۥۧ۠ۡۘ۠۟ۤۗ۟ۚ۬۬ۢ۟۠۟۠۟ۥۘ۟ۜۗۧۥۜۘ۫ۘ۟";
                                    continue;
                                case 1354856338:
                                    str = "ۧۗ۬ۛۨۨۘۚۨۥۘۜۜۡۡۥۚۛۦ۠ۥ۟ۛ۫ۛۢۙ۬ۤ۫ۡۘۨۚۧۙۖ";
                                    continue;
                            }
                        }
                        break;
                    case 1452568571:
                        str = "ۥ۬ۥۘ۠ۗۥۘ۫ۥۘۘ۟ۛۡۘۢ۟ۜ۠ۨ۟۟ۡ۠ۧ۬ۘۘۗ۟۠ۦ۫۫ۤۚۡۘۢۦ۟۠ۜۨۘۘۥۖۢۡۗ۠ۧۛ";
                        imageView3 = (ImageView) CircleDotLinearLayout.OooO0Oo(this.OoooOoO).get(i2);
                        break;
                    case 1650521847:
                        str = "ۘۦ۬ۙۘۥۘۨۧ۟ۡۢۨۘۢ۠ۧۜۗۛۗۥۛۡۜۥۖۙۜۘ۠ۤۙۢ۬۫ۛۦۗۡۨۗۨۛۨۙۥۖۖ۟۬ۧۜۡۘۥۤۙ";
                        break;
                    case 1707991899:
                        str = "ۦۛۖۘ۠ۘ۠ۘ۫۟ۥۚۘۢۧۛ۬ۜۛۘۗۘۘ۫ۢۘۜ۟ۨ۬ۚۨۥۘۦۡ۠ۤۡۤۜۘۨۚۧۡ۬ۨۜ۠ۚ";
                        i2 = i;
                        break;
                    case 1747991906:
                        imageView2.setImageDrawable(gradientDrawable);
                        str = "۠ۘ۠۠ۚۥۘۚۜۨۘ۟۟ۨۥۥۡۘۡ۬۬ۙۛۡۥۖۥۘ۬ۙ۠ۤۧۘۚۘ۠ۛۡۥۖۖ۠ۤ۫ۡۛۦۢۥۥ";
                        break;
                    case 2010136463:
                        String str4 = "ۥۨۨۘۦۛ۟ۛۖ۫ۚۚۡۡۡۥۗۡۦۘۛۤۧ۬ۡ۠ۗۘۥۘۦۘۚ۫ۦۖ۟۟ۚۡ۬ۥۥۡۦ۬ۡۧۘۖۗ۠۟۫۟ۦۦۘ";
                        while (true) {
                            switch (str4.hashCode() ^ (-1711598381)) {
                                case 859381316:
                                    str4 = "ۛ۠ۙۨۧۜۘۖ۬ۦۤ۫ۖۘ۠ۙ۠۠ۚۗۙۥ۬ۘۛۦۜۥۥۚۤۥۘۤۧۦۚۚۧۜۢۨۘۚۦ۟ۨ۬ۢ";
                                    break;
                                case 1338261970:
                                    String str5 = "ۘۨۧۘۗۧۨۘۛۜۜۘۙۛ۫ۧۨۨۜۗۦۘۗۨۛۦۘۚۥۚ۫۠ۗۢۥۤ۫ۨۢۚ۬ۨۘ۟ۡۡ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1657900193)) {
                                            case -1935187452:
                                                str5 = "۬ۧۗ۠ۢۨۡۜ۫ۜۤۡۘۙۢۛۨۖۨۘۛۡۘۥۥۘ۫۠ۥ۬ۘۨۘۧۗۛۙ۫ۥۘۨ۠ۢۥۙۜۛۙۖۘۧۖۡۦۜ۫ۥۤ";
                                                break;
                                            case -1613194422:
                                                str4 = "ۨۗۥ۠ۚۥۘۢۛۥۘۙ۬ۡۘۤۙۗۖ۟ۤۨۛۨ۟۫ۨۚ۫۬ۖ۟ۢ";
                                                break;
                                            case -1424223988:
                                                str5 = i2 == CircleDotLinearLayout.OooO0O0(this.OoooOoO) % CircleDotLinearLayout.OooO0Oo(this.OoooOoO).size() ? "ۢۜۡۘۥۥۡۘۙۚۦ۫ۘۦۗ۬ۛۥۥۧۘۙۢۦۘۨۘۛۡۙ۟ۛ۟۬ۗۚۢ۫ۚۖۘ۫ۛۙۘۦۘ" : "ۘۡۛۖۘۜۘۗۢۖ۠ۘۥۘۡ۟ۥۘۡۖۤۨ۫ۘ۬۬ۨۦۚۙۨۧۚۚۛ۬ۜۤۧ";
                                                break;
                                            case 97351594:
                                                str4 = "ۛ۫ۜۦۡ۫ۨۡۧۜۘۧۘۤۘۦۘۧۜۜۘۤۢۤۤۚۜۘۧ۠۟ۛۗۖ۠ۗۥۢۥۥۨۙۢۖۦۘۘۗۢۨۘۧ۬ۢۧۗۘۦۥۥ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1790668162:
                                    str = "ۚۧۘۘۗ۠ۨۧۧۘۘۨۜۘ۟۠ۨۛۦ۫ۤۧۦۘۖ۠ۤ۟ۜۦۘۦۘۦۘۙۛۢۜۢۘ";
                                    continue;
                                case 2049037736:
                                    str = "۟ۤۖۡۢۤۨۦۤۧۦۘۨۢۘۘۗۖۘۖۨۡۨۗۥ۫۠ۦۤۗ۠۫ۖۘ۬۬ۚۗۜۖۘۗ۫ۙۚۨۦۘ۠ۥۖ";
                                    continue;
                            }
                        }
                        break;
                }
            }
        }
    }

    public CircleDotLinearLayout(Context context) {
        super(context);
        this.OoooOoO = new ArrayList();
        this.OooooO0 = new Handler();
        OooO0oO();
    }

    public CircleDotLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoO = new ArrayList();
        this.OooooO0 = new Handler();
        OooO0oO();
    }

    public CircleDotLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = new ArrayList();
        this.OooooO0 = new Handler();
        OooO0oO();
    }

    public static /* synthetic */ Handler OooO00o(CircleDotLinearLayout circleDotLinearLayout) {
        String str = "۟ۢۜۘۛ۬ۧۘ۫۟ۦۢ۫ۡۡۘۧ۬ۦۘۧۘ۫ۗۨۘۤۧۥۢۡۦۘۧۛۙۥۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 889) ^ 875) ^ 747) ^ (-168193810)) {
                case -1668249812:
                    return circleDotLinearLayout.OooooO0;
                case 338304868:
                    str = "ۗۘۡۗۗۜۢۚۖۧۨۜۘۛ۫ۥۘۤۥۖۘۥۖۥۘۦۙ۫ۛ۟۫۟ۤۛۖۢۥۘۢ۠ۘۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ int OooO0O0(CircleDotLinearLayout circleDotLinearLayout) {
        String str = "ۧۥۜۘۡۙۘۘۛۛۘۘۜۜۦۘۘ۠ۜۘۡۜۗۖۜۜۜۨۜۦ۟ۡۘ۬ۜۘۚ۫ۥۘۤۡۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 948) ^ 420) ^ 920) ^ (-726739535)) {
                case -1690125272:
                    return circleDotLinearLayout.OooooOO;
                case -1336094636:
                    str = "ۗۦ۬ۨۙۛۘۨۥ۟ۦۚۙۘۡۛۨۖ۟ۖۘ۫ۦۤۡ۫ۜۥ۠ۦۘۚۧۜۜۙۢۘ۟۫ۚ";
                    break;
            }
        }
    }

    public static /* synthetic */ int OooO0OO(CircleDotLinearLayout circleDotLinearLayout) {
        int i = 0;
        String str = "ۥ۠ۛۛ۟۟۬ۤ۬ۚ۟ۡۢ۫ۢۛۗۨۨۦۚ۠ۘۘۢۗۖ۬";
        while (true) {
            switch ((((str.hashCode() ^ 985) ^ 994) ^ 786) ^ 449008700) {
                case -1998927307:
                    i = circleDotLinearLayout.OooooOO;
                    str = "ۦۜ۟ۥۘۜۘۤۙۨۘۘۥۚۨۤۨ۠ۙۛۥۦۛۖۜۖۧۥۛۤ۬ۥۗۦ۫ۜۡۖ";
                    break;
                case -1357351100:
                    circleDotLinearLayout.OooooOO = i + 1;
                    str = "ۜ۫۬ۜۨ۟ۜۖۥ۫ۗ۠ۦۘۤۙۗ۬۟ۥۢۛۜۘۚ۟ۜۨ۬ۘۚۦۨۘۢ۬ۜۦۗ۫ۖ۫ۘۘۧۜۖۘۙۨۧۘ";
                    break;
                case -649772560:
                    str = "۬ۡۜۘۨۨ۠ۜۜۡ۬۠۟ۘ۟ۢۥۗۥۥۧ۬ۜۧ۫ۥۨۨۨۜۛۦۖ۬۬ۗۡ۫ۡۗۨۚ۬ۜ۠ۘۡۗۥۜۢ۬ۖۧۘۘ";
                    break;
                case 1923026550:
                    return i;
            }
        }
    }

    public static /* synthetic */ List OooO0Oo(CircleDotLinearLayout circleDotLinearLayout) {
        String str = "ۘ۟ۖ۬ۧ۠ۤۤۘۧ۟ۛ۠ۛۧۖۖۗۛۗۗۘۡۢۨۡۧۘۧۗۦ";
        while (true) {
            switch ((((str.hashCode() ^ 639) ^ 840) ^ 321) ^ (-650206531)) {
                case -1640341175:
                    str = "ۥۜ۫۫ۗۥۘ۬ۜۦۘۙۧۗۥۦۨۘۘ۟ۥۘۘۡۤۖۤۛۘۘۛۛۡۖۜۡۘۢۘۖۘۙۜۦۘۗۚۢ";
                    break;
                case -812748338:
                    return circleDotLinearLayout.OoooOoO;
            }
        }
    }

    public static /* synthetic */ GradientDrawable OooO0o(CircleDotLinearLayout circleDotLinearLayout) {
        String str = "ۚۖۧۘۖ۫ۢۢۙۙ۟ۘۘ۬ۜۨۤۢ۟۬ۡۛ۠ۨۦۘۖۦۜۘۦۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 974) ^ 893) ^ 861) ^ (-2124832653)) {
                case -1467424662:
                    return circleDotLinearLayout.Ooooo00;
                case 1077437325:
                    str = "ۗۙۘۨۗۡۘۤ۠ۤۗۥۖۢۗۦۘۗۜ۬ۦۥۦۜ۬ۚۤۖۡۘۨۜۙۧ۟ۜۘۗ۬ۘۧۨ۫ۧۖ۟ۢۥۘۧۧ۬";
                    break;
            }
        }
    }

    public static /* synthetic */ GradientDrawable OooO0o0(CircleDotLinearLayout circleDotLinearLayout) {
        String str = "ۙ۠ۤۘۢۥۙۥۢۚۡۡۘۛۦۜۘۙۥۨۘۢ۫ۤ۫۫ۨۘۖۛۙۛۦۖ";
        while (true) {
            switch ((((str.hashCode() ^ 293) ^ 386) ^ 434) ^ 419561974) {
                case 383121130:
                    str = "ۘ۫ۗۧۗۡۘۦۥ۟ۥۖ۬۫۠ۤۡ۫ۖۘۢۥۦ۠ۨۘۘۤۧۙۙۖۢ۬ۖ۟۬ۡۡۘ۫ۛۙ۫۬";
                    break;
                case 1246180717:
                    return circleDotLinearLayout.OoooOoo;
            }
        }
    }

    private void OooO0oO() {
        String str = "ۜ۫ۖۘۤۤۥۢۧۥۘۛۥ۬۬ۗۖۘۚۛ۟۟۟ۡۘۡۘۚۜۗۙۛۘۖۤۙۦۜ۟ۗ";
        OooO0O0 oooO0O0 = null;
        while (true) {
            switch ((((str.hashCode() ^ 737) ^ 225) ^ 223) ^ 1722289517) {
                case -1803855397:
                    oooO0O0 = new OooO0O0();
                    str = "۫ۜ۬ۚۜۥۘۨۗۙۗ۟ۢۚۤۜۘۘۜۧۘ۠ۤۖۘۨۘۨ۠۠ۘۘۧ۫ۦۘۨۦ۬ۥۨۨۚۛۢ۬ۡۙۢۛۛۘۛ۟";
                    break;
                case -1557166701:
                    this.Ooooo0o = oooO0O0;
                    str = "۫۠ۨۘ۫ۦۗۘۙۙۦ۫ۥۘۜ۟ۚۤۛۙۜۜۧۡۛۜۘۡۜۡۘۗۨۘ";
                    break;
                case -1197060995:
                    str = "ۘۜۖۨۨۡۘۨۜۜۘۗۙۢ۫۫ۜۘۤۖۗۡۧۥۜ۫ۢۗۖۡۛۢۤ۬۬ۥۘ۫ۥۤ۠ۙۤۢۦۤۦۨۡۘۢۙۤ";
                    break;
                case -1086546242:
                    return;
                case -121753298:
                    oooO0O0.OooO00o();
                    str = "ۥۚۘۘۚۙۜۚۛۤۦۤۥۘۤ۬۫ۢۗ۟۟ۡۦۘۦۢ۬ۗۛۡۤۜۚۙ۠ۢۖۡۥۘۤۛۡۘۖۢۖۘۧۨۦ۫ۗۡۘ۬ۦۧۘۜۜۘ";
                    break;
                case 1907422411:
                    OooO0oo();
                    str = "ۧۨۦۡۤۤۚۙ۬ۘۡۘۖۨ۬ۖۖۙۚ۟۫ۡۦۘۘۗ۬ۘۘۧۖ۬۬ۥۘۧۡۤۚۘۤۥ۠۟ۨۦۢ۠ۢ۬";
                    break;
            }
        }
    }

    private void OooO0oo() {
        String str = "۬۫ۨۘۨۤۗۦ۫۠ۙۚۢۧۖ۫ۖۥۜۗ۬ۙۧۧۡۘۧۤۖ۬۠ۛۢۨۨۥۧۚ";
        int i = 0;
        LinearLayout.LayoutParams layoutParams = null;
        GradientDrawable gradientDrawable = null;
        ImageView imageView = null;
        int i2 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 536) ^ 91) ^ 337) ^ 1952711031) {
                case -2118481804:
                    str = "ۚۦۜۘۗۨۥ۠ۤۧ۫۠ۘ۠۬ۜۨ۫ۖۘۥ۠ۘۘۘ۫ۜۡۜ۠۠ۥۘۚۨ۫ۗۗ۟ۤۨۘۖۧ";
                    i2 = i;
                    continue;
                case -1912995270:
                    String str2 = "ۡۢۚۨۚۖۖۨۜۗۙ۫۟ۥۘ۫ۦۚۘ۟ۛ۠ۧۜۘۥۡۛۡۥۦۘۢۤۨ۠ۜۥۡۛۨ۠ۗۡۢ۠۠ۡ۬ۢۤۘۖۘ۫ۙۗ";
                    while (true) {
                        switch (str2.hashCode() ^ 1719964105) {
                            case -553688221:
                                String str3 = "ۗۧۗ۬ۙۦۜۚۦۙۜ۫ۚۨ۫۫ۙۡۘۜۤۚۢۡۡۜۡۘۤۛۘۘ۠ۧۗۛۦۡۜۦۗ۫ۚۡۘۜۢۖۗ۟ۖۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1513401986)) {
                                        case -1357693834:
                                            str2 = "ۗۙ۫ۢ۬ۨۘۖ۠ۖۘۜۚ۟ۢۨۤۦۨۖ۠ۖۡۘۙۦۛ۟ۡۡ۠۟ۛ۠ۡۘ۫۟ۡۛۚۢۦۨۖۘۜۤۗ۬ۚۘۘ";
                                            break;
                                        case -1211659437:
                                            str2 = "ۛ۟ۘۘۙۦۚۗۨۡۘۨۗۨۘ۟ۢۘۧۜۛۖۦ۬۫ۧۢ۟ۧۘۢۢۘۘ۟۫ۘۦۨۥۘ";
                                            break;
                                        case 523874021:
                                            str3 = "ۙۛۤۙۦۜ۠ۧۤۦۙۘۡ۫ۢۙۢۢ۬ۨۘۘ۬ۗ۠ۖۘۥۥۗۨ۠ۧۨۙۘۘۜۖۨ۟ۢۧۚ۠۬۠۫";
                                            break;
                                        case 1474105385:
                                            str3 = i2 == 0 ? "ۤۛۖۘ۠۟ۨۘۖۡۦۥ۠ۜۜ۬ۘۤۗۘۘۥۥۥۘۨۙۘۤ۬ۥۛۚۚۖۥۥۨۘۜ" : "ۡ۫ۘ۫ۜۖۜۗۨ۠ۗۜۚۚۦۢۛ۫ۡ۫ۡۘۖ۠ۘۤۡۡۘۖۜۥۘۢ۟ۙۘۨۗۢۢۛ۠۫ۤ";
                                            break;
                                    }
                                }
                                break;
                            case 412054795:
                                str = "ۡۗۖۘۡۗ۫ۨۘۙ۠ۨ۫ۚۤۡۢۨۜۘۡۜۙۚۨۜۡۗۜ۟۟۟";
                                continue;
                                continue;
                            case 724507701:
                                str2 = "۬ۘۜۘۦۤ۫ۡۘ۫ۨۡۥۘۖ۟ۖۘ۫۫۫۠ۛۦۥۛۚۤۖۘۤۨۗۤۚۡۘۛ۠۬ۙۖۧ۬۟ۚۡۚ۟ۡۦۖۘۙۥۥۗۥ";
                                break;
                            case 1388819599:
                                str = "۟ۚۤۡۦۢۘۤۨۧۙۖۡۜۡۗۛۦۦۨۤۡۛۦۘۜ۫ۦۘۡۡۡۘ";
                                continue;
                        }
                    }
                    break;
                case -1710140612:
                    this.OoooOoo = gradientDrawable;
                    str = "ۢۦۤۗۦۖۘ۟ۢۙۚۧۘۘۧۥۘۤۨۘۘۦۙۧ۟ۛۢ۠۫۟ۢ۬ۗ";
                    continue;
                case -1691257400:
                    str = "ۙۜۜۤۨۢۦۙۧۧۙۗۡۚۖۘ۠ۨ۬ۘۥۡۘۤۨۨ۫ۘۛۜۡ۬ۙ۫ۨۖۨۘۤۤۤ۠۟ۘۘ";
                    gradientDrawable = new GradientDrawable();
                    continue;
                case -1687472120:
                    gradientDrawable.setShape(1);
                    str = "ۘۖۡۘۡ۟ۦۘۗۡۙۢ۟ۢۥ۬ۦۘ۠۠ۦۘۜ۠ۢۨۜۜۙۗۨۨ۫ۘۖۗۚۡ۫ۛ";
                    continue;
                case -1620893859:
                    removeAllViews();
                    str = "ۖۙۥۚۘ۫۫ۨۧۘۡۨۧۘ۫ۗۜۘۧۗۤۘۙۜۘ۫ۥۥۗۗۛۙۨۢ";
                    continue;
                case -1560197542:
                    this.Ooooo00 = gradientDrawable;
                    str = "ۚۨۘۘ۠ۨۡۘۥۥۧۦۛۨۖ۬ۚۥۨۘۤ۬۬ۖۧۥۨۦ۬ۢۚۦۘ";
                    continue;
                case -1497316734:
                    String str4 = "ۚۚۘۥ۟ۥ۠۬ۖۘۛۚۖۘ۠۠ۨۦۖۜۘۙۛۨۘۚۨۗ۟ۖۖۘۙۧ۬ۡۚۦ۟ۘ۫ۨۦۗ۠ۖۧ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1786115980)) {
                            case -1838463287:
                                String str5 = "ۢۚۡۙۨۡۙۜۖۚۗۖۘۘۤۜۘۛۘۡۘۥۦ۫ۦۛۜۤۨۥۘۦ۫ۘۘۗۙۖۘۖۘۧۚۗۙۤۦۧ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1283022059)) {
                                        case -135136148:
                                            str4 = "۟۠ۗۛۜۥۥۘۘۘۤۡۘۗۘۚ۠ۧۤ۫ۥۙۘۜۘ۫ۛۛۙۡ۫ۥۢ۠ۚ۬ۜۨۘۦۘۚ۠";
                                            break;
                                        case 106985924:
                                            str4 = "ۗۢۡ۟ۛۢۦ۟ۤۢۡۦۧۘ۟ۙۦ۫۟ۦۡۤۛۤۚۚۤ۠ۢۨۨۜۡۜ۠ۖۘۙ۬ۡۜۡۖۘۛۗۙۚۘۖ";
                                            break;
                                        case 516430233:
                                            str5 = i2 < 6 ? "ۤ۟۫۫ۜۤۦۨۘۜۗۤ۫ۧۤ۫ۙ۟۟ۢۥۧۨۜۘ۫ۗۘۘۚۧۦۘۙ۬ۘۘۙۗۡۢۛۖۘۦۘۨۧ۫ۚۧۨۛۢ۬ۢۧۛ" : "۟۬ۗ۫۬ۜۘۛ۟ۥۘ۬ۡۨۜۘۧۘۚ۬ۨۘۨۙۘۡ۫ۚۢ۬ۛۢۨۧۘ۠ۡ۬ۙۨۨۘۙ۟ۦۘۤۚۘۘۗ۟ۜۘۥۦۛ";
                                            break;
                                        case 595864199:
                                            str5 = "ۖۛۨۨ۫ۖۤۧ۫ۙ۠۟ۨۗۦ۟۬ۡۘۛ۟ۛۙۜۤۥۖۜۘۗۥۧۘ";
                                            break;
                                    }
                                }
                                break;
                            case -16621874:
                                str = "۬ۧۚۙ۠ۢۡۧ۟۠ۦۡۘۦۘۦ۠۫ۗۡۥۦۤۘۘۙۧۘۘۚۚ";
                                continue;
                                continue;
                            case 1012235418:
                                str4 = "ۨۗۥۘۧۧۤ۟ۛۘۖۛۢۤۨۦۗۤۤۜ۠ۨۦۛۘۘ۬ۡ۠ۦ۠ۘۘ۟۫ۛۘۖۥ۫ۧۘ۫ۦۗ";
                                break;
                            case 1792675720:
                                str = "ۦۨۘۜۢۨۗ۬ۛۡۚۘۙ۟۫ۖ۟ۤۘۨۚۤۤ۟ۘۗۖۚۡۘ۟ۙ۟ۘ۬ۜ۟ۡۜۘ۟ۘ۬ۖۖ۠ۦۧۡۘ۠ۡۡ۟ۥۢ";
                                continue;
                        }
                    }
                    break;
                case -1249430021:
                    imageView.setImageDrawable(gradientDrawable);
                    str = "ۘۜۨۘۢۚۢۙۨۖۤۧ۠ۚ۠ۦۤ۠ۜۘۗۜۘ۬ۤۡۚۦۗۡ۬ۛ";
                    continue;
                case -1115303330:
                    String str6 = "ۢۨۤۘۘۘۧۙۢۘۥۡۘۘۤۧ۠ۘۖ۬ۢۨۙۤۛۦۤۜۘۤۤۢۦۢۧ۫ۚۗ";
                    while (true) {
                        switch (str6.hashCode() ^ 656224480) {
                            case -2027178769:
                                str = "ۙۚۡۘۗۗۜۘ۟ۦۗۧۙۤۧۢۛ۟۬ۚۧۨۡۖۤۜۘۦۡۨۘ۫ۦ۬";
                                break;
                            case -1884765686:
                                String str7 = "ۗۚۦۘۡۡۢۡۦۘۘۥۨۛۧۗۢۥۤۧۖۛۜۘ۬ۜۖۘۥ۟ۢ۠ۜۘ۬ۜۦۖۦۢۙۗ۫ۚۘۨۘۘۢۜۘۢۡ۟ۤۗۘۦۨ";
                                while (true) {
                                    switch (str7.hashCode() ^ 560360442) {
                                        case -1410680397:
                                            str7 = i2 == 5 ? "ۡۗۜ۠ۦۘۦۖۥۖ۬ۖۘۜۜۧۙۡۛۛۙۥۘۤۗۦۤ۫ۨۘۗۖۡۦۥ۫۠ۦۛ۬ۛ۫۫ۧۦۨۙۖ۫ۡۥۘۥۚۦۘۥ۬" : "ۖۛۦۘۦۜ۫ۡۤ۠ۡۖۦۘۡۜۦۘۨۡۧۘۘۘۜۘۖ۫ۖۘۖ۠۬ۦ۟۟۫ۥۖ۟ۡۘۖۤۥۘۘۢۜۙۦۖ۠ۤۧ۟ۡ۫ۛۢۗ";
                                            break;
                                        case -1069107490:
                                            str6 = "ۜۘۢ۟ۜۧ۫۫ۡ۫ۡۥۘۚ۠ۨۥۤۨۜۜۙۦۜۨۘۙۢۖ۬ۥۦۖۖۤۢۖۘۛۡ۠ۗۧ۟";
                                            break;
                                        case 132177523:
                                            str6 = "ۨۤۚ۫ۙۘۘ۬ۖۗۙۨۨۘۢۧۗۗۜۢۚۗ۟۟ۚۗ۫۠ۜۗۥ۟ۙۤۛ۠ۘۥۗۘ۫۠ۧۚۤۥۨۡۥۛ";
                                            break;
                                        case 928194357:
                                            str7 = "ۚۛۥ۬ۘۖۗ۫ۚ۫ۙۧۡۡۤۧۤۜۘۥ۟ۚۛۦۤ۫ۘۧۖۤۥۘ۟ۡۢۧۛ۟";
                                            break;
                                    }
                                }
                                break;
                            case 197868391:
                                break;
                            case 759206245:
                                str6 = "ۚۚ۠ۘۗۨۘۦۢۥۘۚۙۡ۫۠ۖۡ۬۬ۚۨۡۙۧ۬ۚۘۦۘۘۘۧۗۦۛۡ۫ۘۗۜۡۛۡۧ";
                                break;
                        }
                    }
                    break;
                case -349164345:
                    return;
                case -25758949:
                    str = "ۧۚۥۘۗۜۦۘۢ۟ۧۧۜۘۘۘ۬۬ۨۘۗ۬ۙۨۘ۟ۤ۠ۦۜ۬ۨۗۡۘۡۘ۫ۜۤۚۤۧۜۘۧۦۜۘ";
                    i2 = 0;
                    continue;
                case 42970537:
                    str = "ۢ۫ۢۥۛۖ۟۫ۙۚۧۗ۫۬ۜۚۦۧۘۙۜۘ۫ۢۤۢۛ۠۫۟ۨۘۨ۠ۧۢۦۡ";
                    imageView = new ImageView(getContext());
                    continue;
                case 204773250:
                    layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    str = "۫۬ۗۤ۫ۡۘ۟ۡۨۘۗۤۢۘ۟ۢۡۤۖ۠ۤۜۘ۬ۤۡۛ۬ۢۦۦۘۡۘۖۘۦۚ۬";
                    continue;
                case 272303182:
                    this.OoooOoO.clear();
                    str = "ۖ۟ۛۧۗۛۚۧۡۘۧۛۦۘۨۚۜۘۖ۟ۤۧ۬ۡۘۢۤۙۛ۫ۧۨۛ۬ۢ۬ۨۘ۟ۛ۠۟ۘۨ۟ۧۦ";
                    continue;
                case 315718769:
                    this.OoooOoO.add(imageView);
                    str = "ۜ۠ۖ۠ۚۢۡۡۥۙ۠۟ۦۜۚ۬ۛۦۗۗۗۢۜۧۘ۬۫ۜ۫ۛۙۘۢۢۜۘ۟ۤۘۘ۠ۥۧ";
                    continue;
                case 571318083:
                    str = "ۛۜۤۗۚۜ۠ۙۖۦۜۗ۠ۤۦۘ۬ۤۖۘۢۦۡۥۨۘۗۛۖۧۥ۬";
                    continue;
                case 585332217:
                    str = "۟۠ۨۘۧ۟ۚۧۤۜۚۘۚۧۦ۫ۜۧۢۖ۠۬ۥۨۜۘۘ۬ۘۧۛۛۡۛۖۘۧۡۘۤ۟ۘۘۖۛ۬ۡ۫ۨۦۛ۟ۚۜۙ۟۫ۚ";
                    continue;
                case 839221971:
                    layoutParams.setMargins(0, 0, w3.OooOOO0(getContext(), 8.0f), 0);
                    str = "ۙ۟ۢ۫۠ۚۢۤ۟ۜۜۢۛۤۦۗۙۦ۫ۖۜۘ۟ۢۗ۫۫ۜۘۛۛۨۚ۠ۛ۟۠۠ۜۚۧۛ۬ۙۚۨۚۛۤۘۚۤۦۜ۟ۧ";
                    continue;
                case 973843179:
                    gradientDrawable.setColor(Color.parseColor(Oooooo));
                    str = "ۤۨۡۘۖۜۦ۬ۛۥۗۡۧۜۚۧۖۛۦۧۡۖۘۥۖۖۘ۬ۗۢۥۢۚ";
                    continue;
                case 1364346211:
                    gradientDrawable.setSize(w3.OooOOO0(getContext(), 8.0f), w3.OooOOO0(getContext(), 8.0f));
                    str = "ۖۗۖۘۢ۠ۜۘۡۤۖۚۜ۬ۧ۟۫ۦۗۥۘۢۛۙۘۙ۫ۛۢۥ۟ۜۚۥۗۡۘۦ۫۫ۛۡۘۨۧ۟";
                    continue;
                case 1543339070:
                    i = i2 + 1;
                    str = "ۨۧ۠ۘۦ۬ۘۨۙۖۙ۟۟ۢۥۘ۫ۗۛ۠ۙۤۨۖۢۗۥ۬۬۫ۗۙۜۢۢۗۦ۫ۙۘۗۢۢ۠ۢۖۘۧۤۗ۠ۖۦۜۨ";
                    continue;
                case 1738447125:
                    str = "ۧۚۥۘۗۜۦۘۢ۟ۧۧۜۘۘۘ۬۬ۨۘۗ۬ۙۨۘ۟ۤ۠ۦۜ۬ۨۗۡۘۡۘ۫ۜۤۚۤۧۜۘۧۦۜۘ";
                    continue;
                case 1918068334:
                    gradientDrawable.setColor(Color.parseColor(OoooooO));
                    str = "ۤۙۡۘۡۦۤۗۗۖۗۛۡ۟ۛۦۘ۠ۜۘ۫ۖۜۘۗ۟۬ۛۨ۬ۥ۬ۘ";
                    continue;
                case 1920909165:
                    addView(imageView, layoutParams);
                    str = "ۘۤۗ۬ۦۘ۫ۙۨ۬ۤۘۘۨۚۨۥ۬ۜ۫ۤۖ۟ۜ۟ۘۘۨۧۢۙ۟۬ۛۨۤ۠ۦۗۘ۠ۜ";
                    continue;
                case 2063115442:
                    break;
                case 2106146518:
                    gradientDrawable.setCornerRadius(w3.OooOOO0(getContext(), 8.0f));
                    str = "ۜۘۤۜۤۦۘۖ۠ۘۡۡۘۛ۟ۚۜۘۨۘۗۧۖۘۢۢ۟۬ۥۚۙۚۛ۬۟۬۠ۛۦۚۥۨ۫ۙۥۖۢۘۦ۫ۛ";
                    continue;
            }
            str = "ۚۨۘۘ۠ۨۡۘۥۥۧۦۛۨۖ۬ۚۥۨۘۤ۬۬ۖۧۥۨۦ۬ۢۚۦۘ";
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        String str = "ۜ۬ۢ۟ۘۘۡۢۗۛۜۨۘۚ۠ۖۨۡ۠۟ۗۥۘۛۤۨۡۖۦۡۙ۟ۦۖ۠ۡۗ";
        while (true) {
            switch ((((str.hashCode() ^ 703) ^ 707) ^ 861) ^ 891416902) {
                case -993614702:
                    super.onDetachedFromWindow();
                    str = "۟۬ۥ۟ۛۜۘۗ۬ۜۘۢ۟ۜۘۡ۬۫ۦۙۖۦ۠ۚۜۜۢۗۧ۫ۨۗۚ۬ۘۗۤۗ۬";
                    break;
                case -116092528:
                    return;
                case 1799197914:
                    this.OooooO0.removeCallbacksAndMessages(null);
                    str = "ۥۦۖۨ۠ۜۘۛۜۡۘۤۦۚ۠۟ۛۜۤۗ۬۟ۧ۟ۘۥۧۤۛۧۚۦ۠ۡۖ۠ۗۖۡ۠ۨۡۤۡۗۗۘۘۗۦۦۘ";
                    break;
                case 1887974218:
                    str = "ۥۥۘۗۦۗۙۥۜۡۥۘۛۛۢ۟۬ۘۤۜ۟ۚۗۖۘۧ۠ۨۘ۬ۙۖۖ۬ۥۘۜۛۙۨۚۡۘۨۘۚ۬ۜۧ۟ۙ۟";
                    break;
            }
        }
    }
}
