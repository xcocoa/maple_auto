package com.cyjh.elfin.ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import com.anythink.expressad.d.b;
import com.cyjh.elfin.ui.view.customview.loadstate.LoadStatueEnum;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.aq;
import z2.ua;
import z2.wa;

/* JADX INFO: loaded from: classes.dex */
public class BaseListView extends ListView implements AbsListView.OnScrollListener, wa {
    private static int OoooooO = 5;
    private boolean OoooOoO;
    private LoadStatueEnum OoooOoo;
    private int Ooooo00;
    private BaseFootView Ooooo0o;
    private ua OooooO0;
    private int OooooOO;
    private int OooooOo;
    private OooO00o Oooooo;
    private int Oooooo0;

    public interface OooO00o {
        void onScroll(AbsListView absListView, int i, int i2, int i3);

        void onScrollStateChanged(AbsListView absListView, int i);
    }

    static {
        while (true) {
            switch (((("ۤ۟۬ۨۚ۟ۤۨۜۥۦ۟ۨۗ۬ۛۢۚۧۨۧۘۙۦۚۚۡ۟ۦۥۘۤ۠ۦۘۚۙۤۥۘۡۗۡ".hashCode() ^ 564) ^ 394) ^ 457) ^ (-36807568)) {
                case -623442526:
                    return;
            }
        }
    }

    public BaseListView(Context context) {
        super(context);
        this.OoooOoO = false;
        this.OoooOoo = LoadStatueEnum.NON;
        this.Ooooo00 = 10;
        OooO0oO();
    }

    public BaseListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoO = false;
        this.OoooOoo = LoadStatueEnum.NON;
        this.Ooooo00 = 10;
        OooO0oO();
    }

    public BaseListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = false;
        this.OoooOoo = LoadStatueEnum.NON;
        this.Ooooo00 = 10;
        OooO0oO();
    }

    private void OooO0oO() {
        String str = "ۛۢۛۖۚۥۘۡۖۧۧ۠ۖ۬ۛۦۖ۠ۖۤ۠ۖۙۡۘۡۨۘۘ۟ۢۤ۟ۧۥۧۨۜۙۖ۟ۢ۫ۨۛۙۢۘ";
        while (true) {
            switch ((((str.hashCode() ^ 747) ^ 73) ^ 346) ^ 1126817668) {
                case -1458997933:
                    return;
                case -630042284:
                    setOnScrollListener(this);
                    str = "ۤۜ۫ۙ۫ۜۘ۟۠ۦۜۛۡۨۡۛۤۘۧۘ۫۫ۤ۠۬ۨۡۡۤۘۘۘۘۧۘۨۚۢۙ۬ۖۥۘۤۡۦ";
                    break;
                case 2101806100:
                    str = "ۙۨۥۘۢ۠ۜۘۘۡۜ۬ۤۥۘۗۥۦۘۡۨۦۜۨۥ۫ۛۜۖۘۖۘۨۢۤۧ۫۬ۘۚۖۘۤۛۘ۠۬۟";
                    break;
            }
        }
    }

    private void OooOOO0() {
        String str = "ۛۡ۟۬۟ۛۥۥۙۤ۟ۡۘۦۢۚ۠ۤۜۘۘ۬ۨۘۚۗۡۜۜ۬ۧۖ۟ۙۜۢۗ۟ۤ۫ۥۡۙۘۥۗۦۨۘۦۡۚۖۤۨۘۤ۫ۛ";
        boolean z = false;
        boolean z3 = false;
        while (true) {
            switch ((((str.hashCode() ^ 68) ^ 31) ^ 687) ^ (-1585934644)) {
                case -1208324555:
                    OooO();
                    str = "ۨ۟۬ۘۙۢۢۨۜۛ۬ۥ۫ۨۚۛ۟ۤۖۙ۫ۨۢۧۖۙ۫ۨۜۨ";
                    break;
                case -1080048125:
                    String str2 = "۟ۦۢۗ۟ۖۘۤ۬ۦۜۨۤۚۤۦۖۗۘۘۘۜۤۚۢۥۘ۫ۖۜۗۜ۬ۨۘۡۙۖۘۦۙۖ۬ۛۤۙۘۖۨۨۢ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1078807558)) {
                            case -1764047808:
                                String str3 = "ۛۨۗۙ۟ۖۘ۟ۢۨۘۦۨۧۘۦۤۖۘۘۡ۟ۘۙۡ۠ۨۦۘۘ۬۠ۘۨۛۙۗۧۜۗۘۘۖ۫ۦۘۘۡۘۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1183154857) {
                                        case -841930517:
                                            str2 = "۟ۜۖۘۖۖۘۘ۫۬ۤ۫ۚۥۚۥۘۤۚۡۤۛۤۙۥۜۘ۬۟ۤ۫ۥۖ";
                                            break;
                                        case 412497264:
                                            str3 = z ? "۬۟ۜ۬ۖۡۨۥۖ۫۬ۚ۬ۘۨۘۜۜۖۘۡۥۗۛۙۛۚ۫۠۠ۦ۠۫۟ۖۖۛۜۥۧۥۤۤۦۘ" : "ۚۡۛۗۜۢ۬۠ۖۘ۟ۘۘۛ۬ۢ۠ۦۤۧۦ۠ۜۧۘۛۛ۬ۦۡۥۘۗۘۢۚۖۨۘۚۘۚۖۡۖ";
                                            break;
                                        case 865948214:
                                            str3 = "ۜۤۖۘۜۨۧۗۧۘۚۢۘۦۨ۬ۗ۠ۜۘۗۙ۬ۚ۠ۛ۟ۚۜۘۜۧۡۘۚ۬ۖۚۥۦۘۗۛۖۥۛۖۘۖۨۘۧ۫۟ۧ۬ۖۘۚۘ۟";
                                            break;
                                        case 1115798226:
                                            str2 = "ۛ۬۫ۨۗۡۧ۬ۙۜۡۨۘۙۘۛۖۜۘۜۘۘۥۤ۬ۛۧۡۚ۫۟ۜ۬ۙ۫ۧۡۘۨۧۥۡ۠ۡۗۛۦۘۗۙۛ";
                                            break;
                                    }
                                }
                                break;
                            case -1349731094:
                                str2 = "ۤ۠ۛۧۙۖۘۙۛۥۧۖۤۢۙۡۘۢ۠ۖۘۗۤۦۙۗۖۘۨۖۦۘۘ۫ۜ";
                                break;
                            case 198432262:
                                str = "ۨ۟۬ۘۙۢۢۨۜۛ۬ۥ۫ۨۚۛ۟ۤۖۙ۫ۨۢۧۖۙ۫ۨۜۨ";
                                continue;
                            case 1038009465:
                                str = "ۡۙۖۘ۫ۦۖۘۨۦۢ۠ۡۚ۠ۗۡۦۛۦۚۗ۠ۛۦۗۙۙ۫ۖ۠ۜۘۡۤۘۦ۟ۡۘۚۚۖۘۧۙۚۡۧۖۘۢ۟ۨ";
                                continue;
                        }
                    }
                    break;
                case -463200432:
                    String str4 = "ۚ۟ۜۘۡۦۛ۟۟۬ۘۥۤۢ۬ۡۘۨ۠۫۫ۛۥۘ۫ۤۗۖۖۘۦۜۘ۠ۜۨۦۛۚۚ۟ۢ۫ۛ۟ۧۙۡۚۢ۟ۦ۫ۛ۫ۦۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-111111252)) {
                            case -938566128:
                                str = "ۛ۬ۖ۠ۜۙۙۡۨۘۜۦۥۜۗۦۘۥۡۧۘۙۤۘۢۜۨۘۗۥۗ۟ۥۥۜ۬۠ۙ۬ۦۡ۫ۡۘۡۥۥ";
                                continue;
                            case 89288619:
                                str4 = "ۡۢۜۘ۬۟ۦۘ۫ۨۢۛ۫ۥۘ۬ۜۧۘۜۥۖۡۤۡ۟ۘۢۙ۫ۢۛ۬ۡۗۙۢ۠ۗۛ۟۫ۡۘۧۙۖ۠ۘۙ۬۫ۨۢۡۘۢۤۨ";
                                break;
                            case 1519733761:
                                String str5 = "ۚۧۜۥۥۨۗۤۙۘۥۘۙۥۙ۫ۜۜۘۥۧۡۘ۟۟ۡۘۡ۬ۜۡ۠ۜ۬ۡۦۘۤۘۥۢ۬ۗۗۛ۠۟ۗۙۨ۠ۙ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-394799963)) {
                                        case -862730825:
                                            str5 = "ۖۚۖ۫ۖۜۘۚ۠ۦۗۡۢۡۡۙ۠ۡۡۘۚۚۥۗ۬ۥ۟۬۬ۙۖ۟ۥۗ۫ۢۖۜۧۦ۫ۚۧ";
                                            break;
                                        case 475356362:
                                            str4 = "ۢۥۚ۟ۥۦۜۡۘ۠ۗ۟۫ۙۘۘۛۙۨۘ۠ۖۖۘ۟ۢۛ۠ۧۡۘ۬۫۠ۢۥۘۨۘ۠ۢۧۘۘۘۧۨ";
                                            break;
                                        case 1380740121:
                                            str4 = "ۛۨۥۧۨ۟ۡۚۘۘ۠ۘۨۘۥ۫ۦۦ۟ۥۘۚۙۜۧۤۦۦۖۥۘۗۦۜ۬ۦ۠ۖۡۦۘۚ۬ۘ۫ۨ۠";
                                            break;
                                        case 1635013598:
                                            str5 = this.OooooOo - this.OooooOO < OoooooO ? "۬ۜ۬ۘ۠۬ۨ۫ۡۘۥ۫ۗۖۘۦۖ۟ۡۘۢۥ۠۫ۘۥۘ۬۠ۧ۫ۦۦۡ۫۠ۗۧۘ" : "ۙۚۡۢۧ۬۫ۛۛۤۛۡۘۛ۠ۡۘۖۤۧۡۤۖۗۗۥۘۥۢۖۘ۬ۙۘۚۤۧۨۢۨۘۢۥۘۗۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1801189613:
                                str = "ۖۜۡ۫ۖۖۨۗ۫ۛۦۜۜۘۧ۫ۢۙۨۖۖۜۨ۠ۦۦۖۗۚۜۛۖۘۙۨۤۤۖۘۜۤۡۦۙۘۘۢ۫ۜۘ";
                                continue;
                        }
                    }
                    break;
                case -121700906:
                    String str6 = "ۛۙۜۘۧۢۙ۫ۜۘۗۨۜۘۖ۟ۡۘۘۨۧ۟ۦ۫ۨ۠۫ۧۘۖ۠ۥۨۘۘۚۗ۟ۨ۟";
                    while (true) {
                        switch (str6.hashCode() ^ (-1547145707)) {
                            case -1694847250:
                                str = "۬ۢۨۛۥۡۙ۫ۡۗۗۘ۟ۖ۫ۜ۬۠۫ۦۨۤ۠ۜۘۛۖۜۘ۠ۦۜۘ۬۫ۥۗۥۧۘۜۧۜۘ۟ۥۦ۟ۤۜۦ۫۬";
                                continue;
                            case -1245500104:
                                str6 = "ۚۙۡۘ۫ۤۥۘۦۧۦ۟۠ۥۜۧ۬ۜۛۨۘۙۦ۬۬۫۫ۗ۠ۙۤۗ۫ۙ۠ۘۤۛۡۘ";
                                break;
                            case -988380912:
                                String str7 = "ۙ۠ۖۘۨ۫ۘۚۡۘۧۘۧۖۧۡۘۙ۫ۢۗۥۢۢۘۘۢ۫ۖۘۜۖۖۘۨۙۡۘ۟ۛۡۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 124909983) {
                                        case -1869808647:
                                            str7 = "۫ۛۥۘۦۖۘ۫ۙۘۛۛۖۘۦۦۜۡۡ۫ۥۥۦۗۢ۠ۨۜۗۦۨ۫ۦۚۘۘۦۤۦۘۢۚۜۜۨۜۘ";
                                            break;
                                        case -1655063550:
                                            str6 = "ۜ۟ۙۧ۫ۨ۠ۢۗۜۚۡۘۢۖۥۜ۫ۤ۬ۗۥۜۢۘ۟۬ۤ۠ۡۢۡۖ۬۬ۤ";
                                            break;
                                        case -856886824:
                                            str7 = this.Oooooo0 == 0 ? "ۥۡۦ۟۠ۨۢ۬ۧۖۥۚ۬۫ۨۘۖ۟۟۬ۖۖۘۚۡ۟ۚ۬ۖۘۘۦۦۘۥۙۚۖۚ" : "ۜ۫ۜۘۘ۫۠ۡۡ۠ۛۖۡۦۛۧۚۤۦۛ۫ۢۢ۫ۥۘۙۜۦۘۤ۫۫۟ۚۤ۫ۙۖۘۙۡۜۨۨۙ";
                                            break;
                                        case 517613204:
                                            str6 = "ۜۨۖۤ۟ۨۘ۫ۧۘۘۖ۠۟۬ۚۡۘۦۡۘ۬ۗۨۢۦۥۖۜۘۜۡۘۙ۫ۘۘۚ۟ۛۙۖۢۜۥۘ";
                                            break;
                                    }
                                }
                                break;
                            case -230438592:
                                str = "ۘ۬۠ۛۧۜۘۗۥۤۥۥۥۘۙۚۢۦۤۚۢۚ۬۬ۡ۬۬ۜۖۗ۠ۤ";
                                continue;
                        }
                    }
                    break;
                case 111231532:
                    str = "ۗۜۜۘ۬ۦۥۘۚۗۗ۟۠۠ۘۚۢۖۙۢۗۙۖۘۗۖ۫ۙۙۘۘۢۡۖۡۧۘ۟ۚۚ";
                    break;
                case 148692518:
                case 199946944:
                    return;
                case 388902177:
                    str = "ۚ۬۫ۗ۠ۗ۟ۤۜۘۜۗۧۛۚ۬ۥۖۨ۟ۢۖۚۧۤۨۧۘۤۗۜۥۗۖۘۤۨۘۘۛۖۘۘۡۥۦ";
                    break;
                case 656166678:
                    z3 = true;
                    str = "۫ۧۡۦۚۨۘ۟۠ۗۨۗۥۥۡۖۘۧۧ۟ۗۛۥۘۗ۫۠۟ۨۧۜۙۙۗۧۛۢ";
                    break;
                case 801708397:
                    str = "ۚ۫ۥۙۦۧۜۘۧ۫۠ۗۚۧۗۥ۟ۦۘۚۖۥۖۦۧۘۘۚۥۘۙۦ۬ۤۨۦۘۚۙۡۘۖ۠ۡ۬ۢ۟ۦۨۢۛۗۛۜ۬ۨۘۧ۫ۡۘ";
                    break;
                case 1095993001:
                    str = "ۚ۬۫ۗ۠ۗ۟ۤۜۘۜۗۧۛۚ۬ۥۖۨ۟ۢۖۚۧۤۨۧۘۤۗۜۥۗۖۘۤۨۘۘۛۖۘۘۡۥۦ";
                    z = false;
                    break;
                case 1772677962:
                    str = "۬ۤۡۦۚۥۛ۬ۚۘۡۛۨ۬۟ۨۖ۠۠ۙۡۘۚۦۘۜۡۖۧۛۢۧۧۨ۫۠ۖۘۚۛۖ۬ۤۛ۬ۘۨۜ۟۠۟ۥ۠ۘۨۦ";
                    z = z3;
                    break;
            }
        }
    }

    public void OooO() {
        String str = "۠ۚۜ۟ۖ۬ۥ۟ۨ۫ۚۦۘۦۡۨۘۗۨۨۘ۟ۥۦۦۛۦۖ۠ۨۧۡۗۧ۠ۖۗۛۧۥۨۗۜۛۢۜۖۛۖۘ";
        LoadStatueEnum loadStatueEnum = null;
        LoadStatueEnum loadStatueEnum2 = null;
        ua uaVar = null;
        while (true) {
            switch ((((str.hashCode() ^ 912) ^ 435) ^ 30) ^ 1090588170) {
                case -2108036002:
                    String str2 = "ۜۦۡۘۨۡۤۨۗۘۘۘ۫ۗۙۗۙۤۛ۠ۡۤۨۜۨۤۛۖۡۧۦۨۥۛۚۖۤۢۗۙۚۜۨۘ۠ۗۥۘۥ۠ۚ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1106886805)) {
                            case -1188308204:
                                str = "ۡ۫ۚۧۥۛ۫ۜۖۘۜ۟ۥۧۥۦۡ۬۬۫ۜۚۤ۫ۧۥۜۘۦ۬ۨۘۡۦ۟ۦۚۥۖۘۨۘۗۡۘ۟ۜۖۘۨۧۘ";
                                break;
                            case -352308631:
                                String str3 = "ۧۧۚۛۛۜ۟۬ۖۘۖۘۜۨۦۧۘۤۙۘ۬ۤۧۛ۠۟ۨ۟ۜۘۡۦۘۘۢۡۚۗۦ۫۫ۜۨۥۨۦۜۧۙۥۦۖۘۙۢۛۧ۠ۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 371056344) {
                                        case -1386429411:
                                            str3 = uaVar != null ? "ۤۡۥۦۚۡۢۡۜۦۘ۬ۢۧۡۘۦۡۗۧۜۧۘۦۘۘۖۗۤۖۧۘۛۨۢ۬۫۠ۛۦۡۘۥۘۘۘ۫ۦۖۖۡۜۘ" : "ۢ۫ۛۖۤۖۙ۫ۦۥ۫ۜۨۤ۫ۧۢۗ۫ۥۚۥۙۨۘۧۧۙۗۨۨۘۛۤۚۗۙۡ";
                                            break;
                                        case -12615151:
                                            str2 = "ۛۗۢۛۘۦۡۚۚۧ۟۟ۛۥۘۦۦۖۖ۠ۜۛۢۥۘۙۢۡۘۧۚ۬۬ۤۥۗۨۨۦ۟ۥ۫ۗۦۧۤ۬ۨۖۘۖۧ۬ۘۗۜۘ";
                                            break;
                                        case 1288964195:
                                            str3 = "ۡۧۘۘۗۥۜۡۥۧۘ۬ۘۡۥۗۢۖۨۨۘۤۧۥۡۛ۠۬ۖ۫ۖۙۙۤۡۥۨۘۘ";
                                            break;
                                        case 1819172139:
                                            str2 = "ۛۨۢۙۘۘ۠ۗۥۢۤۡ۠ۢۘۘۘ۟ۘۘۢۡۥۘ۟ۨۛۜ۫ۨۘ۬ۦۧ";
                                            break;
                                    }
                                }
                                break;
                            case -110926130:
                                break;
                            case 458986663:
                                str2 = "ۥۢۧۛ۬ۦۘ۫۠ۤ۟ۤۗۙ۟۫ۗۡ۬ۚۦ۬ۗۡۜ۠ۛۡۖۤۢ۟ۢۡۘۘۧ۟ۘ۬ۖۚۘ۠ۛۘۘ۠ۙ۟ۦ۬ۖۘۛۛۛ";
                                break;
                        }
                    }
                    break;
                case -1676310707:
                    str = "۟۠ۚۘۙۜۘۤۛۥۢۜ۬ۘ۬ۨۘۢۖۧۘۤ۠ۢ۠ۛۧۡ۫ۦۤۧۛۨ۠ۖۧ۟۠";
                    loadStatueEnum2 = this.OoooOoo;
                    continue;
                case -1559847483:
                    return;
                case -1400171071:
                    str = "ۜۦۨ۟۫ۜۘۙۗۤۙۤۚۦۜۡۧۖۢۥۤۦۚۦ۬ۙ۟ۢۢۡۚۨۢۗۘۦۘ";
                    continue;
                case -47936981:
                    str = "۫۫ۢ۬ۙ۬ۘۡۤ۬ۦۜ۟ۢ۟ۨۜۖۙۡۥۡۨۘۗ۠۬ۦۖ۬ۡ۫ۥۖۥۜۡۥۦۘۘۨۘ";
                    uaVar = this.OooooO0;
                    continue;
                case 290991215:
                    this.OoooOoo = loadStatueEnum;
                    str = "ۖۜۡۘ۠ۤ۫ۗۧۖۛۜۘۛ۫ۚ۫۫ۨ۟ۗ۠ۖۨۘۢ۠ۜۖۛۡۘۧۜۤۢ۟ۤۙ۠ۨۘ۬ۧۥۧ۫ۖۙ۬۟ۜۨۙۦۜ";
                    continue;
                case 334876454:
                    uaVar.OooO00o();
                    str = "۫ۡۡۘۧۗ۠ۗۤۦۜۘۖۛۛۚ۫ۨۘۧۨۙۨۤ۫ۖۧۙۗۘۖۘۜ۫ۛۡۖ";
                    continue;
                case 916078584:
                    loadStatueEnum = LoadStatueEnum.LOADING;
                    str = "ۥۖۡۙۤۘۜ۠ۨ۠ۢۜۤۗۙ۫۫ۤ۫ۥۦۡۧۘۤ۫۟ۖ۬ۡۘۖۦۢۜ۟ۡ۠ۨۦۘۧۚۨۘۚۦ۟۬ۘۦۛ۟ۘۘۧۜۡ";
                    continue;
                case 1961972925:
                    String str4 = "ۘۖۥۘۧۢۖۘۗۦۘۧۡۖۡۨ۟ۛ۟ۘۘ۫ۤۜۘۢۘۜۖ۠ۜۘۖۘۡۘ۬ۙ۟ۤ۬۬";
                    while (true) {
                        switch (str4.hashCode() ^ 1534808421) {
                            case -1732510706:
                                break;
                            case -451340950:
                                str4 = "ۨۤۡۧ۬ۜۤۢۖۧۤۡ۬۫ۛۘۗۖ۫ۖۗ۬ۚۨۘ۬ۦۛۚۢۥ۟ۛۛۘۢ۠ۘۙۢۤۧۨۧۜۘ۬ۚ۬";
                                break;
                            case -302294426:
                                str = "ۘ۟ۦۖۨۜۘۨۜۨ۬۫ۦۘۗۦ۬ۖۖ۠ۘۚۨۘۥ۠ۦۘۜۢۛۢ۬ۥۘ";
                                break;
                            case 2133260482:
                                String str5 = "ۗۤ۠ۨۘۘۘ۬ۥ۬ۦۙۖۘۛۨ۬۠ۨۧۘۢۧۨۦۜ۫ۜ۫ۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1697592897) {
                                        case -1473003437:
                                            str5 = loadStatueEnum2 != loadStatueEnum ? "ۖۖ۠ۢۘۖۡۧۖۘۨ۬ۥۘۦۥۡۢۚۨۖ۟ۦۜۗۖۘۥۘۥۥۡۜ۠۟ۡۢ۬" : "ۙۨۡۖۢۤ۬ۡۦۘۡۖۥۘۢ۫ۥۘ۠ۤ۟ۖ۟ۥۘ۠۠ۖۦ۬ۥۦ۟ۖۘ۟ۨۦ۫ۚۦۘۙۢۘۥۥۚۨۖۨ۟ۜۙۘۚۗ";
                                            break;
                                        case -1358303632:
                                            str5 = "ۚۨۨۘ۠ۤۜۖۢۧ۫ۗۨۧۧ۟ۛ۫ۥۡۜۡۘۢۡۥۘۧۖۖۘۜۘ۠ۖۦۨۘ۟ۨ۠۟۬ۗ۫ۨۚ";
                                            break;
                                        case 158111317:
                                            str4 = "ۖۛۡ۬۫ۙۡۖۘۤۗ۟ۤۢۙۤۨ۬ۥۦۙ۟ۨ۟ۙ۟ۗۨۖ۟ۜۡۛ۬ۡۤ";
                                            break;
                                        case 505484269:
                                            str4 = "۟ۡۘۘۢۖۥ۟ۜۘۛ۟ۥۘۤۘۚ۠ۛۖۘۦۢ۫ۙۘ۬۬ۧۡۤۦۙ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
            }
            str = "۫ۡۡۘۧۗ۠ۗۤۦۜۘۖۛۛۚ۫ۨۘۧۨۙۨۤ۫ۖۧۙۗۘۖۘۜ۫ۛۡۖ";
        }
    }

    @Override // z2.wa
    public void OooO00o() {
        BaseFootView baseFootView = null;
        String str = "۟ۢۦۘۙۗۦۘۜۙۙ۫ۥۦ۠۠۬۠ۡۘۢۙۘۘۧ۠ۨ۠ۘۢۚ۫ۜۘۘۛ۠ۜۚۥۢۨۙۡۤۥ";
        while (true) {
            switch ((((str.hashCode() ^ 763) ^ b.b) ^ 361) ^ (-453776331)) {
                case -2004246348:
                    baseFootView.OooO00o();
                    str = "ۗۥۚ۫ۦۧۖۗۥۘ۬ۘۡۜۤۦۘۢۧۡۘۚۢۛۖۜ۟ۘۥۤۤۖۦۚۙۡۤۚۧۚۗ۬۠ۘۘ۫۫ۚ۫ۖۥ";
                    break;
                case -1241561847:
                    return;
                case -1128930958:
                    this.OoooOoo = LoadStatueEnum.NON;
                    str = "ۢۗۨۘۖۡۜۘۥۖۘۘۜۦۤ۬۬ۡۦ۫ۢۛۚۥ۟ۦۙ۟۬ۚۦۧۘۘۙۖۡۘۗۤۨۘۘۡۨۙۤ۬۫۬ۜۨۨۜۡۘۛ۬ۤۙ";
                    break;
                case 255747260:
                    String str2 = "ۗ۬ۨۘۗۜۛ۠ۢ۫ۗۜۘۚۨۡۢ۠ۚۙۦۤۗۙۨۜۘۢۨۦۘ۠ۧۦۘۙ۟ۦۘۦۜۦۘۙ۟۬";
                    while (true) {
                        switch (str2.hashCode() ^ 592828399) {
                            case -1410635271:
                                str2 = "۬ۘۙۡۥۦۥۧۚۧۛۗ۫ۙ۠ۧۡۡۗۖۨۥۡۡۛۜ۬۬ۖۡۙۙۨ۠ۚۗۙۙۡۦ۫";
                                break;
                            case -1376410294:
                                str = "ۗۥۚ۫ۦۧۖۗۥۘ۬ۘۡۜۤۦۘۢۧۡۘۚۢۛۖۜ۟ۘۥۤۤۖۦۚۙۡۤۚۧۚۗ۬۠ۘۘ۫۫ۚ۫ۖۥ";
                                continue;
                            case -1206922949:
                                str = "ۧ۟ۘۦ۟۬۠ۡۢۜ۬ۧۚۖۖۡۜ۫ۚۦۘۘۗۡۧۘۜ۟ۦۤ";
                                continue;
                            case -372138967:
                                String str3 = "ۧ۠ۦۡۢۛۨۡۨۘۜۚۥۙ۬ۦۘ۠ۧۨۜۦۛ۫۬ۦۦۘۜۘۤۜۘۘۢۤۧ۠ۤ۬ۘ۟ۗ۟ۧۦۨ۫ۢۜۖ۬ۧۘۦۢۦ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1220764050) {
                                        case -1339598383:
                                            str3 = "ۤ۟ۥۦ۬ۥۘۦۚۗۦۨ۠ۛ۬ۦۘۙۙۡۚۘۜۘۡۧۦۘۦۦۡۘۘ۫ۘۛۗۘۘۡ۟۫ۘۜۡۘۘۥۖۧ۟ۦۘ۠ۙۨ";
                                            break;
                                        case 654860994:
                                            str3 = baseFootView != null ? "ۚ۬ۡۘۗۨۜۘۘۛۦۘۢ۠ۡۨ۬ۥۘۧۙۜۨۤۛۡۤ۬ۗۛۖۘۘۚۥۘۛۦۗ۟ۘۨۤۦ۠ۦۡۚۥۨۘۜۡۙ" : "ۜۙۙۢۗۦۘۖۤۨۦۡۥ۬ۥۜۘۧۗۦۘۙۖۡۘۨ۟۬ۜۖۥۘۙۜۘۨۚۥ۟ۧۨۘ۟ۘۛۜۦۨ۫ۖۘۙۚۢۡۦۙۛۤۡ";
                                            break;
                                        case 1065506302:
                                            str2 = "ۤۦۜۘ۟۠ۜۘۡ۟ۡۘ۬ۨۢۥۘۙۗۖۘ۫ۘۥۘۧۛۢۤ۟ۖۘ۟ۚۗ۬ۨۦۘۡ۠ۦۘۡۦ۬ۥۨۧۨۜۘۡۘۧۘ";
                                            break;
                                        case 1202230364:
                                            str2 = "ۤۦۡۦۡۦۘ۫ۙۦۦۢۡۘ۠ۤۦۦۛۨۘۖۨۧۘۧۦۦۚۥۦۘ۫ۖۥۘۘۚۘۦۘۛۚ۠ۡۖۘۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 375086987:
                    str = "ۢۡۤۜۖۢۙ۫ۖۗۜۘۘ۬ۨۚۜۛۢۚۘۜۡۗۜۘ۫ۦۢ۠ۤۤۘۥۘ۟ۖۘۘۨۚۗۡۗ۬ۚۜۨ۬ۡۧ";
                    break;
                case 718011433:
                    baseFootView = this.Ooooo0o;
                    str = "۠ۜۜۦۥۦۙۦۜۜۡۡۘۢۧۖۖۘ۬ۜۧۤۜۧ۫ۚۖۘۗۤۤ۠ۨۨۢۜۘۛۨۦۡۧۜ۠۬۟ۢۤۨۘۙۖۛۢۢۢ";
                    break;
            }
        }
    }

    @Override // z2.wa
    public void OooO0O0() {
        BaseFootView baseFootView = null;
        String str = "ۖۦۨۛ۟ۢۧ۫ۡۘ۫ۨۚ۫۠۟۫ۦۥۨۧۢ۫ۨۧ۫ۚ۬ۤ۟ۛ۫ۢۜۙۜۢۚ۠ۙ۫ۤۤۢ۬ۦۧۥۥۘۨ";
        while (true) {
            switch ((((str.hashCode() ^ 198) ^ 151) ^ 396) ^ (-839674362)) {
                case -697857272:
                    str = "۠۠ۧ۬ۡۡۡ۬ۢ۫ۨۤۥۖۨۥۙۛۖۤۘۡۘۦۚۥۥۛۦۦ۟ۚۙۡۜۨۘ";
                    break;
                case -687072859:
                    String str2 = "ۙۨۤ۫ۚۥۘۜۘۤ۟ۧۘۘۤۗ۫ۨ۟ۦۨۨۤۖۘ۬۬ۨۨۘۧۧۘۘ۫۬ۥۧ۬ۦ";
                    while (true) {
                        switch (str2.hashCode() ^ (-836772151)) {
                            case -451634353:
                                str = "ۜۙۢ۟ۨۖۘۘۥۨۘ۫۬ۦۘۨۥۥۜۢۤۚ۫۫ۗۘۦۚۨ۬۟ۢۤۤ۬۫ۧۧۜۙۘۘۗۡ۫";
                                continue;
                            case 1561382719:
                                str = "۠ۢۡۙ۬ۜۘ۫ۘۜۘۙۤۢۨ۫ۘۘ۬ۜۘۢ۬ۜۘۦۨۘ۟ۜۡۘ۬ۨۖۧۛ۠۬ۡۨۘۤۤۢۚۡۤ۫ۤ۠ۖۖ۟ۧۥۜ۠۟ۤ";
                                continue;
                            case 1640544977:
                                str2 = "ۚۡۢۧۛ۟ۗ۠ۡۘ۟ۘۡۧۢۖۛۨۛۨۖۘۗۧۧۥۧۡۢۚۜۘۧۛۜۦۡۘۜۙۚۥ۠ۖۥۜۜۘۙۖۦۘ۫۟ۘۦۖۦۘ";
                                break;
                            case 2100729846:
                                String str3 = "۟ۡۤۛ۬ۛۖ۠ۧۘ۟۟۬ۡۥ۟ۡۘۘۨ۫ۙۢۦۘۘ۫ۖۜۦۗۦۘ۠۫ۙ۫ۡۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 885350433) {
                                        case -1359059950:
                                            str2 = "ۜۛۖۘۖۧۡۥۖ۠ۨۖۖۥۨ۠ۖۖۥۘۨۙۡۦۘۘۜۜۦۘ۬ۤ۠";
                                            break;
                                        case 554681135:
                                            str3 = "ۧۡۤ۠ۥۘۘ۟۬ۚۨۤۘۘ۟ۜۚ۟۫ۦۘۢۗۨۘۦۗۖۘۥ۠ۡۘۜۚۧۧ۬۫۠ۧۨۜۥۡۘ۟۫ۘ";
                                            break;
                                        case 665998044:
                                            str3 = baseFootView != null ? "۬ۖ۠ۡۚۡۘۙۚۘۘۢۜۨۘۦۧۜۤۘۡۚۤۖۤ۬ۙۧۚۜۘ۟۫ۥۘ۫۠ۚ۠ۚۦۖۖۛۜۘۖۘۡۛۗۗۨۘۥۖۥ" : "ۤۘۛۢ۬ۦۤۡۧۘۨ۟ۗۚۜۦۧۧۡۜۘۦۚۨۘۥۨ۬۬۬ۗۥۜ۠ۚۜۚۧۜۘۚۦۥۘ۠ۢ۠ۗۛۦ۬ۨۙۥۘ";
                                            break;
                                        case 1247155904:
                                            str2 = "ۖۖۖۘ۠ۨۚۛۦ۫ۚ۬ۙ۠ۜۨۦۘۘۘ۠ۙۖۙۡ۫ۥ۬۠ۦ۠";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -80819426:
                    return;
                case 844178821:
                    this.OoooOoo = LoadStatueEnum.FAILED;
                    str = "ۥ۠۟۫ۤۢ۬ۛ۠۟ۧ۠ۘۦۖۥۛۚ۬ۜۜۥۘۨۚۚۘۢۦۦ۠ۜۘۧۘۢ۟ۢۥۨ۬ۨۥۚۡۢ۬ۥ";
                    break;
                case 850199691:
                    baseFootView.OooO0O0();
                    str = "ۜۙۢ۟ۨۖۘۘۥۨۘ۫۬ۦۘۨۥۥۜۢۤۚ۫۫ۗۘۦۚۨ۬۟ۢۤۤ۬۫ۧۧۜۙۘۘۗۡ۫";
                    break;
                case 928527738:
                    baseFootView = this.Ooooo0o;
                    str = "ۢۙۢۙۙۜۘۚۖۤ۬ۡۡۘۛ۠ۡۘۥ۫ۚۛۛ۠۬ۜۧۘۘۧۖۘۥۨۨ";
                    break;
            }
        }
    }

    @Override // z2.wa
    public void OooO0OO() {
        BaseFootView baseFootView = null;
        String str = "ۨۜۡۜۨۘۦۙۦۘ۬ۢۗۙۚۗۨۤۘۘۛۨۘۘ۫ۨۦۘۢ۟ۙ۫ۖۦۘ۬۫ۛ۬ۙۥۥ۠ۘۘۘۧ۬۟ۘۨۘ۫ۙۘۘ۟۟ۖۘۢۗۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 82) ^ 322) ^ UiMessage.CommandToUi.Command_Type.SET_UIP_DATA_VALUE) ^ (-476961591)) {
                case -1904440091:
                    baseFootView = this.Ooooo0o;
                    str = "ۡ۫ۘۧۤۖۡۦۡۢۗۗۗۜۘۙۗۥۗ۫۫ۨۛۛ۟۫ۨۖۤ";
                    break;
                case -751592646:
                    this.OoooOoo = LoadStatueEnum.EMPTY;
                    str = "ۡۛۡۘۡۢۛۨۧۤۨۡۘۤ۫ۥۘۘۛۗ۠۠ۦۤۥۡۚۧ۬ۜۖۧۛ۠ۦ";
                    break;
                case -415411624:
                    str = "ۚۗۚۛۗ۟ۙۢۥۘۦۜۘۘۛۥۚۛۘۢۘ۟ۥ۬۠ۙ۟۫ۘۙۗۨۜ۬ۨۘۨ۬ۚۗ۬ۥ۠۠ۘۘۙۛۧۚۛۙۚۜۡۘۤۗۨ";
                    break;
                case 8363766:
                    return;
                case 1485623724:
                    baseFootView.OooO0OO();
                    str = "ۘۡۨۘۖۗۥۘۙ۟ۡۚۢۥۗۛۘۘۨۛ۫۠ۨۗۥۤۦۚۤۙۙۡۘۗۗۥۘۥۤۚۧۨ۟ۡۤۥۘۙۡۦۦۡ۠";
                    break;
                case 1783641491:
                    String str2 = "۠ۗۧ۬ۖۥۘۤ۬ۜۗۛۖ۟ۡۦۘۤۙۤۚۜۘۙ۟ۡۛ۫ۥۤۘۗۢۙۖۗۜۙ۟ۜۡ۬۬ۘۤۛۦۘۙ۬ۥۡۧۘۡ۫ۥ";
                    while (true) {
                        switch (str2.hashCode() ^ 1890724460) {
                            case -1694501689:
                                str2 = "۬۬۫ۖۡۢ۬ۡۤۜۥۡ۬۟۟ۥۦۜۘۥۢۜ۫۬ۥۨۢۡۘۤۖۖۘ";
                                break;
                            case -1460460398:
                                str = "۬ۨۧۗۖ۠۠ۧۥۙۥۗۙ۫ۨۨۦۚۤۖۖۘ۬ۜۧۛۘۜۘۡۢۗۥۦۧۘۛ۟ۘۘ۟ۤۨ۬ۥ۟ۗ۟ۚۚۙۡۘۘۡۡۘۡۥۛ";
                                continue;
                            case 1191795562:
                                String str3 = "ۥ۫ۙۢۛ۠ۖۨۥۘ۟۫ۜۘۢۦۥ۠ۤ۠ۛۢۥۘۥ۫ۡۚ۫ۢ۟ۛۡۘ۫ۜۖۜۧۥۘ۫ۧۡۘۢ۟۟";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1011615607)) {
                                        case -1931620160:
                                            str3 = "ۦۧۗ۬۟ۖۘۧۗۘۘۥۖۦ۬ۡۧۧ۟ۘ۫ۙۥۘۗ۬ۗ۠۫ۨۨۚۙۗۛ۬۟ۥۦۘۗ۫ۛ۫ۧ";
                                            break;
                                        case -1530704286:
                                            str3 = baseFootView != null ? "ۨۤ۟۬ۜۨۘۛۧۡۡۥۜۘۖۘۚۤۚ۬ۖۖۖۧۥ۠ۦ۬ۥۘۜۤۚۖۤۧۥ" : "ۧۘۗۙۦۛۛ۫ۦۘۢۙۨۦ۬ۤۡۧۗۡ۫ۖۘۨۖۡۘۦۤۖۘۢۢۧۛۙۘۘۤۡۙۧۖۥۢۤۜۚۘۘۘۢۦۨۘ";
                                            break;
                                        case -447961297:
                                            str2 = "۠۫ۜۦ۟ۡۨۨۤ۠ۨۛۜۢۧۗۙۜۙۨۤۢ۟ۧۥۖ۟۟ۨۨۡۦۧۗۜۧۥۧۧۥۡۜۘۢۤ۟ۢۥۜۘ۟ۖۦۘۙ۠۟";
                                            break;
                                        case 1482617073:
                                            str2 = "۬۠ۙۡۨ۬ۡۚۜۘۖ۟ۘۦۥۦۗ۫ۜۘۨ۠ۡۢۤۦۘۛۚۘۛ۠ۡۘۦ۬ۚۗۚۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1376935624:
                                str = "ۘۡۨۘۖۗۥۘۙ۟ۡۚۢۥۗۛۘۘۨۛ۫۠ۨۗۥۤۦۚۤۙۙۡۘۗۗۥۘۥۤۚۧۨ۟ۡۤۥۘۙۡۦۦۡ۠";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    @Override // z2.wa
    public void OooO0Oo() {
        BaseFootView baseFootView = null;
        String str = "ۗۦۨۤ۠ۖۘۖ۟۟ۜۚۛۜۘۛۖۘۘۛۛۗۗۥۨۖۛۥۘ۠ۥ۠ۦ۬ۜۘۢ۬ۙ";
        while (true) {
            switch ((((str.hashCode() ^ 76) ^ aq.OooO0oO) ^ 588) ^ 29950799) {
                case -2019464639:
                    baseFootView.OooO0Oo();
                    str = "ۜۗۜۛۙۨۖ۬ۧۚ۬۫ۚ۫ۡۙۗ۟۫ۥ۫ۖ۠ۧۛ۠ۖۘۚۡۜۘ";
                    break;
                case -1970672758:
                    baseFootView = this.Ooooo0o;
                    str = "ۥۢۛ۠۠ۡۛۧۧۨۘۢۧۤۡۦ۬ۨۘ۠۠۬ۧۛۦۘۙۤ۠۫ۧۦۘ۠ۚۨۘۦۨۖۘۤۙۛۚۤۘۘ۬ۘۥۢۙۚ";
                    break;
                case -1189195367:
                    str = "۟ۙۧۨۢۗ۬۬۬ۚۦۧۘۗۡۥۘ۬ۜۧ۠ۘۘۚۘۦۡۗۧۛۛۛۗۧۧۥ۫۫۫ۛۡۘ۫۟۠ۖۖۜۘ۠ۧۖ";
                    break;
                case -302918988:
                    this.OoooOoo = LoadStatueEnum.NON;
                    str = "ۦۢۥۗۧۘۘۘۚۖۖ۫ۙۤ۟ۖۦۤۢۡ۫ۖۜۦۥ۫ۗ۟ۢۛۤۗۤۦۘۢۥۡۘۜۦۦ۟ۥۡ";
                    break;
                case 47435171:
                    return;
                case 678032608:
                    String str2 = "ۦۗۘۦ۠ۧۜۧۦۘۘۢۗۖۤۥۘۜ۟ۛۚۘۘۚ۫ۨۘۡۙۥۘۛۖۤ";
                    while (true) {
                        switch (str2.hashCode() ^ 997716846) {
                            case -1245354863:
                                str = "ۗۚۨۘۦ۠ۦۜۛۦۘۧۙۙۜۥۙ۟ۦۤۨۢۙۜۘ۬ۛۚۤۢۖۘ";
                                continue;
                            case -1013610338:
                                String str3 = "ۖۗۢۦۨۖۖۨۥۘۤۨۛۖۙ۟ۚۦۢۢۘۧۡۥۤۘ۫ۗۤ۟ۛۖۥۨۘۡۧۘۘۡ۟۫ۡۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ 11854768) {
                                        case -807601379:
                                            str3 = "ۛۦۥۘ۫ۦۨۘ۫ۙۡۤ۫ۗۙۦۘۜۨۧۚۖۦۥۘۢۥۨ۫ۚۘۘۘۡۧۘ۠ۥۛۜۤۖۘۜ۫ۘۛۘۜۘۥۢۘۘۗۙۤۦۦ۫";
                                            break;
                                        case -472573495:
                                            str3 = baseFootView != null ? "ۜۨۨۘۥۛۚۧۜۧۘۡ۟ۗۚۨۧۜۥۛۚۛۙ۫ۜۡ۠ۗۥۘۘ۟ۛۧۢۖۙ۫ۡۙۚ۠۫ۛۚ" : "ۖۢۛ۟ۖۧۡ۫ۘۘۢ۟ۖ۟ۖۗۚ۠۠۠ۙۤ۫ۚۦۙۘۙۨۨۢ۬ۢ۫ۤ۠ۖ";
                                            break;
                                        case 582168191:
                                            str2 = "ۛۤۘۘ۟۠ۨۘۛۗۚۗۤۤۧۧۧۗۦۜۙۜۧۜۦۨۨۡۘۜۡۧ";
                                            break;
                                        case 1314170609:
                                            str2 = "ۙ۟ۖۧ۠ۦۦۦۘۛۗۘۥ۫ۧۥۤۨۘ۟ۡۘۢۢۖۜۨۥ۠۬ۧۢ۠ۜ۠۠ۤۨ۬ۤۜۜۜۤۡۦۚۨ";
                                            break;
                                    }
                                }
                                break;
                            case 863050890:
                                str = "ۜۗۜۛۙۨۖ۬ۧۚ۬۫ۚ۫ۡۙۗ۟۫ۥ۫ۖ۠ۧۛ۠ۖۘۚۡۜۘ";
                                continue;
                            case 970636600:
                                str2 = "ۨۦۜۘ۠ۛۘ۟۟ۨۥ۫ۤۙ۫۠ۚ۟۫ۙۧ۟ۖۘۙۡۚۨۘۙۡۡۘ۬ۚۙۖۘۖۘۧۜ۟ۚۜۢ۬ۘۡۖۢۜۙۗ";
                                break;
                        }
                    }
                    break;
            }
        }
    }

    public void OooO0o(View view) {
        String str = "۫ۜۨۘۨۡۡۧۨ۫ۦۦ۠ۜۢۘۡۦۘۡۦ۬ۧۨۡۦۛۧۙ۟ۥۤۢۦۘۨۨۚ";
        while (true) {
            switch ((((str.hashCode() ^ 468) ^ 989) ^ 12) ^ 1852762495) {
                case -927712004:
                    str = "ۚۙ۫ۧ۟ۢۖۧۘۜۗۧۡۦۨۗۜ۬ۜۚۜۤۙۛۡۢۖۡۨۥ۫ۜۘۧۤۘۘ";
                    break;
                case 1320421110:
                    str = "۫۫۟ۡۖۨۦ۠ۢۦۨۚۧۗۖ۬۫۟ۨۛۙۨۚۚۛۤۥۢ۟";
                    break;
                case 1452533315:
                    addFooterView(view, null, false);
                    str = "ۧۗۥۥۙ۬ۖۦ۬ۚۨۨۘۤۧۛۧۘ۫۠ۥۡۘۤۘۜۘۗۦۧۘۚۙ۟ۧۜۛۢۢ۬۫ۤۨۘۤ۬ۚ۬۫۬ۡۚۗ";
                    break;
                case 1549227651:
                    return;
            }
        }
    }

    @Override // z2.wa
    public void OooO0o0() {
        BaseFootView baseFootView = null;
        String str = "ۗۛۨۥۡۡۗۖۛۖۡ۟ۢۘۡۗ۫ۦۛۡۜۘ۬۬۫ۨ۟ۢۜۘۙۜۥۘۜۤۖۦ۟ۡۤۦۜۘ۫ۙۚۚۧۦ";
        while (true) {
            switch ((((str.hashCode() ^ 75) ^ 325) ^ 54) ^ 1028517244) {
                case -707420394:
                    baseFootView = this.Ooooo0o;
                    str = "ۙۢ۠۬ۛۙۗۤۤۜۜۘۥۥۘۘۘۙۛۧ۫ۘۘۢۨۜۘۙۜ۫ۡۜۦۘ";
                    break;
                case -543759427:
                    str = "ۢۘۤۘۘۜۡۤۛ۬ۨۗۘۘ۫۫ۦۘۘۘۢۨۜۖۥۨۢ۟ۦۜۘۧۢ۟ۚۦۨۚۘۘۚۘۨۘ";
                    break;
                case 139254957:
                    String str2 = "ۨۦ۬ۚۧۡۘۖۢ۫ۚۦ۟۫ۖۥۘۤ۟ۥۨۧۘۘۜۖۢۛۡۡۥۦۧۗ۫ۖۤۚۖۦ۟ۥۘۚۛۗ";
                    while (true) {
                        switch (str2.hashCode() ^ (-531297048)) {
                            case -2060473098:
                                String str3 = "ۙۤۖۚۦۦۘۦ۫ۘۘۧۘۤۥۨۚۖۢۚ۟۬۬۟ۛۜ۟ۡ۠ۚۜۜۘۙ۫۟ۘ۫ۘۚۘۘۘۡۡۛۘۥۘۗۨۢ۠ۧۜۘۗۥۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-898436352)) {
                                        case -2139699404:
                                            str3 = "ۨۜۡۘۛۚۨۘ۟ۨۜۨۖۥۘۛۛ۟ۛ۬ۧۚۙۤۛ۠ۡۘۤۢۖۘۤۛۜۘ";
                                            break;
                                        case -1258349589:
                                            str2 = "ۡۥۜۧۤۨۨۜۨۦۙ۠ۢۙۚۜۨۡۘۙۦۘۧۘۨۧ۟ۛ۠ۡۨۙۢۘۚۖۦۛۡ۫ۥۤۜۛۧۧۖۨۗ";
                                            break;
                                        case 700065443:
                                            str2 = "۠ۦۜ۬۟ۖۘۨۦۘۦۛۗۤ۫ۗۗۡۨۥۦ۬ۡ۟ۡۙۖ۠ۙۢۘۢۧۨۘۗۚۜۘ";
                                            break;
                                        case 1452288345:
                                            str3 = baseFootView != null ? "ۤۚۗۙ۟ۗۗۨۥۥۡۧۚۜ۟ۙۢۡۥۧ۟۬ۜۨۙۤۨۘۤۤۡۚۡۡۨۘۥۘ" : "ۘۖ۬ۢۢۖۧۡۡ۬ۛۘۘۡۦۧۚۦۤ۫ۨ۠ۨ۫ۥ۬ۢۦۡۥۖۘۙ۫ۦ۟ۖۡ۠ۦۖۘ۫ۥۖ";
                                            break;
                                    }
                                }
                                break;
                            case -1664327089:
                                str = "ۘۡۚۦۨ۬ۦۦ۫ۛۥ۟ۨۘۖۧۤ۫ۚ۟ۜۘ۠۟ۤۡۖۙ۫ۛۗۛۜۗۘ۬ۨۘۜۘۤۦۚۧ۠ۛۤۗۜۧۗۙۜ۠ۦ";
                                continue;
                            case -1611097810:
                                str = "۬ۨۜۘۗ۠ۦۘۗۧ۫ۗ۠ۚۙۘ۟ۗۢۛۥۚۦۘ۬ۧۧۦۗۢۢ۟ۜۘ";
                                continue;
                            case 888375089:
                                str2 = "ۡۦۢۗۙۗۗۦۦۙۧ۠ۗۛۜۙ۟ۧۘۦۖۗۢۡ۬ۢۡۖۗۛۖ۫ۤ۬ۧۤ۫۠ۜ۠ۨ۠ۢ۠ۖۡۘۢ۬ۖ۫۠ۨۘ";
                                break;
                        }
                    }
                    break;
                case 523781242:
                    return;
                case 804925178:
                    baseFootView.OooO0o0();
                    str = "ۘۡۚۦۨ۬ۦۦ۫ۛۥ۟ۨۘۖۧۤ۫ۚ۟ۜۘ۠۟ۤۡۖۙ۫ۛۗۛۜۗۘ۬ۨۘۜۘۤۦۚۧ۠ۛۤۗۜۧۗۙۜ۠ۦ";
                    break;
                case 1846582613:
                    this.OoooOoo = LoadStatueEnum.COMPLETE;
                    str = "۟ۛ۬ۗۗۚۢۥۦۘ۠ۗۦ۫۬ۗۦۘۧۘۖۡۡۚۘۖ۟۠ۚۖۥۘۘ۟۟ۤ۟ۛۙۨۗۙۙ۟۬";
                    break;
            }
        }
    }

    public boolean OooO0oo() {
        String str = "ۡۖ۟ۤۘۦۘۚۦ۟ۦۡ۟ۧۥۖۘۤۙۨۧۙۧۤ۬ۤۡۡۖ۫ۗۦۖۤۘۖۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 639) ^ 719) ^ 672) ^ (-1304663191)) {
                case -1925358542:
                    str = "ۙۚ۫۟ۢ۫ۨۖۖ۫ۚۤۤۤۜۙ۟ۖۨ۫۠ۘۙۙۡۢ۟ۧۚۡۘ۫ۙۘ۠ۦۘۘۧۤۡۘۖ۫۟ۧ۬ۥۡۖۖ";
                    break;
                case -1412120052:
                    return this.OoooOoO;
            }
        }
    }

    public void OooOO0(int i, int i2) {
        String str = "ۡۜۛ۫ۦۙۨۚۦۘۡۢۧ۫ۗۗ۫ۚۧۘۦ۫ۘۜۡۦ۟ۚۚۤۤ";
        while (true) {
            switch ((((str.hashCode() ^ 983) ^ 169) ^ 230) ^ (-1984627091)) {
                case -1203181153:
                    str = "ۨ۫ۥۡۢۗۙۢۙ۟ۦۦۘۧۚۤۦۡۘ۟ۖۡ۫ۨۢۖۗۢۗۗۥۘۨ۬ۡۚۚ۫ۧۡۦۥ۠ۢ";
                    break;
                case -1137151438:
                    OoooooO = i2;
                    str = "۬۠ۢ۠۬ۥۘۢ۬ۦۙۤۨۘۤۢ۬ۛۦۥۙۨۗ۟ۘ۬ۚ۟ۖۘۚۗۛ۬۬۬۠۬ۖ";
                    break;
                case -580731227:
                    return;
                case 728457912:
                    str = "ۦۧۜ۠۟۫ۢۢۚۚ۟۬ۨۢۘۘۢۗۨۢۦۖۘۗۡۡ۠ۢۢۜۙۖۛۘ";
                    break;
                case 1077080436:
                    str = "ۡۖۙۤۖۘۘ۬ۦۘ۟۠ۨۢۨۨۚۦۦۘۛۤۡۘ۠ۦۛ۟ۡۦۘۢۛۡۘۛ۫۬ۨۗ۠";
                    break;
                case 1408118977:
                    setScrollLoad(true);
                    str = "ۜۨۨۘۧۨۨۘ۟ۖ۫ۗۦۚۜۘۙۗۘ۫ۨۦۘۗۨۛۨ۟۠ۤۜۨۘ";
                    break;
                case 1920490617:
                    this.Ooooo00 = i;
                    str = "ۗ۫ۡۘۚۤۜۘ۫ۥۢۨۨ۠ۤۥۘۗۜۗ۫ۧ۫ۖ۬ۙ۬ۥۚۜۚۛۘۨۘۛ۠۠";
                    break;
            }
        }
    }

    public boolean OooOO0O() {
        String str = "ۨۛۘۘۡۛۦۢۘ۠ۧ۬ۢۘۧۥۤ۠ۜۘۦۥۦۘۡۗۖۘۡۘۙ۫ۤ۬ۤۙ۬ۘۗۗۡۦۘۖۚ۬";
        BaseFootView baseFootView = null;
        while (true) {
            switch ((((str.hashCode() ^ 357) ^ 781) ^ 233) ^ (-359481289)) {
                case -2085947406:
                    return removeFooterView(baseFootView);
                case -1625594052:
                    baseFootView = this.Ooooo0o;
                    str = "ۡۛ۠ۥۙۡۥۡۘۥۚۦۨۘۡۘۥۖۖۧۤۥۗۙۢ۬ۧۥۘۜ۫ۦۡ۫ۖ۠ۖ";
                    break;
                case -1522346348:
                    return false;
                case -438729579:
                    this.Ooooo0o = null;
                    str = "ۨ۟ۧۤۦ۬ۥۦۦۖۦۢۖ۫ۧۡۤۦۦۤۛۖۖۘۘۨۘۘۙۘۦ";
                    break;
                case 119103908:
                    str = "ۨۡۘۘۥۢۨۘۘۘۨۘ۠۠ۜۗۦۘۘۡۙۗ۠ۘ۫ۤۙۤۡۙۚۨ۬ۖ۠ۘۦۗۜ۫ۢۥۘۛۢۘ";
                    break;
                case 2090760133:
                    String str2 = "۫ۤۢۤۢ۟ۦۙۦۖۥۡۘۚۤۖۘ۠۠ۨۢۤ۬ۨۙۦۚۛۦ۟ۨۗ۬ۦۘۗۧۥۘۡۤ۫ۖۧۙ";
                    while (true) {
                        switch (str2.hashCode() ^ 855076120) {
                            case -1807935556:
                                str = "ۥۙۗۢۨۘ۫ۡۘۘۜۜۨۘ۟ۧۘۘۚ۬ۢ۫۬ۖۘۨۨۦۢ۬ۨۘۗۢۢ۬ۡۛۤ۬ۖۘ۠ۤۘۚۚۦۘ";
                                continue;
                            case -1688949395:
                                str = "۫۠۫ۖ۟ۧۧۥۛۗ۟ۤۙ۬ۥ۠۟۟ۧۧۚ۫ۨۗۥۖۢۙۥۜۘۡ۟ۖ۟۟ۘۘۢۢۙۖۗۨۖۤۢۘۜۘ";
                                continue;
                            case -1245435126:
                                String str3 = "ۖۖ۫ۧ۟ۗ۫ۧۨۘۖۘ۬ۥ۟ۛۢ۠۟ۛ۠ۡ۠ۚۛۖۜۘۖۛۦۤۜۦۘۗ۠ۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-719765079)) {
                                        case -1013677081:
                                            str2 = "ۗۛۜۛۧۦۘۤۦۖۜۦۡۗۡۧ۫۟ۛۤۘۦۘۚۡۨ۫۬ۘ۫ۡ";
                                            break;
                                        case -199001566:
                                            str3 = baseFootView != null ? "ۦۡ۠ۛۗۖۘۡ۟ۦۘۛۚ۠ۙ۫ۥۢۤۘۨۛۨۘۦ۬۟ۛۘۖۚۢۘۖ۠ۥۛ۫ۙۡ۬ۥۦ۫ۗۙۨۘۘۙۛۥۘ" : "ۥۚۛ۬۫ۥۘۛۗۡۘ۬ۡۛۘۘۥۘۡۗۘۨۥۡۘۗۛ۬ۘۚۖۘۜ۬ۛۢۤۚۛۦۦۖۦۖۜۗۜۖ۠ۛۙۢۘۖۖۘۨ۟ۖۘ";
                                            break;
                                        case 770939215:
                                            str3 = "ۙۖۖۚۥۜۘ۠ۜۨۙۧ۠ۘ۫۬۠ۘۗ۠ۤ۬ۤۙۢۖۥۘۤۦۢۛۛۥۘۡۦۗۚۖۖۘۤ۬ۘۘۚ۟ۘ۠ۡۜۘ";
                                            break;
                                        case 1073557658:
                                            str2 = "ۗۙۡۥۡۘۨۤۜۘۤۤۗ۫ۚۥۘ۠ۖۘ۠ۨۘ۫ۤۘۘ۫۫ۜۘۜۥ۟ۖۙۜۙۦۡۚۘۢۥۗۡۨۨۥ۟ۙۨۖۨ۟";
                                            break;
                                    }
                                }
                                break;
                            case -1071971209:
                                str2 = "ۥۢۘۨۨ۠ۙۙۢۗۙۚۚۗۥۘۨۖۧ۟ۙ۠ۚۛ۟ۦ۫ۛۚ۬ۦ۬ۢۧۡۧۖ۬۟۫ۚۚۚ۬ۖۦ۬۫ۧ۠ۦۘۥۗۗ";
                                break;
                        }
                    }
                    break;
            }
        }
    }

    public void OooOO0o(View view) {
        String str = "۬ۨ۟ۘۧۜۚۙۡۦۨۚۘۜۘ۟ۘۗۜۙۚۜۖۡۦۥۤ۫ۜۖ۫ۘۛۙۧۨۛ۠ۨۘۛۘۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 881) ^ 564) ^ 623) ^ 895740642) {
                case -1836699446:
                    str = "ۘۧۥ۫ۚۨۘۛۘۥۘۧۙ۬۟ۨۛ۟۠ۨۘ۟ۚۜۤۜ۬ۚۦ۬ۧ۬۬۬ۖۦۘۥۚۡۙۛۚۗۙۜ۫ۥۦۗۥۜۘ";
                    break;
                case -643837995:
                    return;
                case -463635979:
                    OooOO0O();
                    str = "ۘۡۘۘۘۜۦۘ۬۫ۦۖۘۙۥۨۚۧۨۙۧۗ۠۠۠ۢۧ۟ۤۘۥۘۡ۬ۢ۫ۤۡۧۤۤ۫ۛۖ";
                    break;
                case 1511385401:
                    OooO0o(view);
                    str = "ۚۡ۬ۦۡۘۛۢۙۚۨۦۘۨ۟۠ۢۤۡۘ۫ۢۤۧۦۧ۬۠ۖۚۜۘۘۥۥۗ۫ۜ۠ۢ۟ۨۘۧ۬ۦۘ";
                    break;
                case 1637464196:
                    str = "۟ۢۙۤۗۡۘۥۜۡۘ۠ۗۛ۬ۘۦۛۨ۫۬۠ۙۖۧۚۤۨۜۜۘۢۡ۟ۤ۠ۡۘ";
                    break;
            }
        }
    }

    @Override // android.widget.ListView
    public void addFooterView(View view, Object obj, boolean z) {
        BaseFootView baseFootView = null;
        String str = "۟۠ۦۘۦ۫۬ۡۙۚۥۨۨ۠ۛۘۘۥۚۚ۟ۨ۠ۨۖۜ۠ۙۦۜۗۛۛۡۘ۬ۨۗۙۛۗۚۙۖ۠ۨ۟ۢۤ";
        while (true) {
            switch ((((str.hashCode() ^ 772) ^ 363) ^ 60) ^ 153140580) {
                case -1917819891:
                    str = "ۤۜۡۙۗۜۢۨۤ۟ۚۙۙۚۨۘۢۧۨۘ۠۟۟ۢۢ۠ۧۧ۬ۜۥۢۛ۟ۢۢۜۙۜۘۚ۫ۥۨۧۥۥۤ۠ۖۙۘۘۧۧۗ";
                    continue;
                case -1828760617:
                    return;
                case -1682554244:
                    str = "۠ۚ۫۠۠ۦۘۗۥۡۚۧۢ۬ۡ۫۠ۛۗۢۚۤ۫ۥ۬ۧۘ۬ۧۜۖۘۙۥۛ۬ۨ۬ۧ۟ۧۛۚۨ";
                    baseFootView = (BaseFootView) view;
                    continue;
                case -1451818202:
                    str = "۬۟ۤۡۛۤۨۜۥۙۡۘۙۛۦ۫ۙۨۘ۬ۘ۠ۗ۬ۨۘۜۜۥۛۨۡۘ";
                    continue;
                case -1214399310:
                    String str2 = "ۙۚۙۘۧۛ۟ۚۙۢ۟ۢۥۘۨۦۚۖ۟ۙۘۜۖۘ۫ۧۖۡۤۗۚۧۡۘۛۘۜۢ۫ۥۛۥۨۘۗۜۢۢۡۧۘۦۤۧۧۘۨ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1988340632)) {
                            case -1641154955:
                                str = "ۤۗۘۘۛۘۡ۟ۘۦۧۖۗۙۥۜۘۚۤۗۙۤۢ۠ۧۚ۫۟ۥۘۛۙۨ";
                                break;
                            case -945494661:
                                str2 = "ۦۗۦۘۡۦۘۨۧۙۥۤۦۙۚۛۖۤ۟ۡۥۘۗۤ۫ۜۨۢۜۘ۟ۨ۬ۗ۠ۢۡۚۢ۟ۧۢۜۤۘۦۘۢۦۦۘ";
                                break;
                            case -666547882:
                                String str3 = "ۢۛۡۦۦۦۘۙۤۖۡۜۖ۠ۙۨۘۜۖ۬۬ۦۢ۫ۛۛۥۢۙ۫ۛ۫ۥۥ۬۫ۗۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ 985769293) {
                                        case -447529422:
                                            str2 = "ۤۗ۠ۛۤۜ۠۟۟ۜۨ۫ۖ۫ۨۥ۬ۨۚ۟۫ۥۙۙ۫ۥۗ۠ۘۖ";
                                            break;
                                        case 774962146:
                                            str2 = "ۡۥۙۢۙۘۙۘۘۘۛۡۗۤ۫۟۫ۡۜۙۧۖۘۤۧۘۘ۟ۘۖۘۥۗۙ۠ۨۦۘۛۙۧ";
                                            break;
                                        case 1308821608:
                                            str3 = view instanceof BaseFootView ? "۫۬ۥۘۗۗۛۢۜۘۘۘ۬ۦۘۢۦۖۘ۟۠ۛ۟۫ۧۤۧۘۘۙۚۥۘ۠ۨۗۤۜۤۧۦۤ" : "ۙ۫۬ۥۨۡۘۜۢۖ۫ۘۡۗ۠ۡۡۦۥۘۙۜۦۜۖ۫۠۠۫ۧ۬ۘۘۛ۠ۘۘۤ۠ۦۖۖۖۘۜۖۤۦۗ۠ۢ۬ۛ";
                                            break;
                                        case 1546596878:
                                            str3 = "ۡۘۨۦۥۛۚۜۥۘۢۨۙ۬ۜۦۘۖۘ۠ۨۦۦۘۛۧۛۙۜۜۢۜۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1210585762:
                                break;
                        }
                    }
                    break;
                case 324631062:
                    super.addFooterView(view, obj, z);
                    str = "ۤۘۜۘ۟ۤۨۗۦۖۦۛۛۤۨۘۥۙۖۘۢۦۘۥۖۙۢ۠ۢۧ۬ۘۘۗۘ۠ۗ۠ۤۦۜۥ۬ۗۢۚۢۘۨۖۨۘۥ۬ۜۛۜۡۘ";
                    continue;
                case 932134155:
                    this.Ooooo0o = baseFootView;
                    str = "ۤۥۜۘۦ۬۟ۛۗۨۘۖۚ۠ۤۖۤ۠ۦۛ۬ۢۢۥۖۘ۫ۖۦۘۡۘۖۘۨ۠۟۫۬۬";
                    continue;
                case 1401107453:
                    str = "ۦۢۡۘۡ۬ۦۢ۟ۨ۠۟ۜۨۙۨۘۧۖۛ۫ۗ۬ۘۗۥۦۦۘۡۢۜۘ";
                    continue;
                case 1644656281:
                    String str4 = "ۛۥ۠ۛۥۧۚۛۦۛۙۡ۠ۛۙۘۜۘۗۡۚۙۜۘ۫ۤۤۗۢۖ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1851552990)) {
                            case -437747898:
                                str = "ۛۤۨۖۡ۟ۛ۬ۧ۫ۤ۟۠ۧۧۢۧۗۙ۟ۘ۬ۖۛۙۢۧۥۤ۫۬ۦ۫ۘۘO۟ۧۜۜۢۘۘۗۤۖۥۧۦۘۚۦۜ";
                                break;
                            case 1150657371:
                                break;
                            case 1367504246:
                                str4 = "ۦۖۤۤۥۜۘۙۘۤ۫ۙ۫۠ۥۡۨۨۢۧۥۚۥۛ۫ۨۗۖۧ۬";
                                break;
                            case 2138741826:
                                String str5 = "۟ۥۥ۬ۛۘۘۢۖۡ۫۬ۧۢۙۛ۬۫ۚ۟۫۬ۨۤۘۙۜۜۘ۠ۡۛۢۦۚ۟۬ۜ۬ۤۛۜۖۛۛۤۘۥۡۜ۬ۥۡۘۧۗۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-461421904)) {
                                        case -1787727571:
                                            str5 = this.Ooooo0o == null ? "ۥ۠ۚۛ۟ۜۚ۟ۘۘۧۨۗۙۗ۟ۜ۠۠ۦۗۧۛ۫ۢۥۦۧۧۦۘ۬ۡ۫۠ۛۡۘۧۛۤۗۛۢۛۚۡۘۗ۫ۚ" : "ۜۗۦۘۤۦ۬۬ۙۨۘ۟ۜۖۙۦۛۛۜ۟ۤۡۚۧۗۗۦۛۥۘ۫۟ۨۘۢۙۢۧۡۖۘۚۢۖ۫ۤۧۘۤ۟ۚۥۗۙۙۤ۫ۛ";
                                            break;
                                        case -620232730:
                                            str4 = "ۖۛۘۘ۠ۦ۟ۙۤۥۖۛۜۘ۬۟ۜۢ۟ۢۡۗۦۘۜ۫ۘۜۖۤۙۥۛۜۦ۬۠ۜۘ۠ۡۡۘ۫ۜۚۧ۠ۖۗۢۘۘ";
                                            break;
                                        case 746292361:
                                            str4 = "ۛۖۦۜۢۘۘۜۗ۠۠ۤۥۤۘۦۘ۠ۘۘۘ۠۟ۡۘۗۦۢۥۗۘۖۤۡۚۜۛ۠ۛۘ۟۟ۖۡۖۜۘ۟ۘۧۘۘۧۜۘ";
                                            break;
                                        case 1747095372:
                                            str5 = "ۘۘۙۧۛۡۘۜۜۦۢۛ۠ۥۧۗۧۧۡۗ۫ۚۢۨۙ۬ۘۦۘۜۛۖۘ۫ۚ۠۬ۘ۬۫ۥ۠۫۫ۜۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1684579081:
                    str = "ۖۚۡۧ۬ۜۘ۠ۚۡۘۘۚۤۜۙۥۘۥۧۥۘۗۖۧ۬۠ۖۘۘۨۘۨ۫ۚۖۥۘۖۢ۠۟ۡۦۘۨۖۚۡۦۙۛۤ";
                    continue;
                case 1839597211:
                    baseFootView.setCallBack(this.OooooO0);
                    str = "ۤۙۨۗۧۨۖۧۛ۫ۧۨۛۨۥ۫ۜ۬ۗۡ۬ۤۙۨۦۖۥۦۖ۠ۜۡ۫۬ۖۘ۬ۡ۬ۨۜۧ۬۫ۖۖۢۥۘۗۖۜۘۘۢۢ";
                    continue;
            }
            str = "ۤۙۨۗۧۨۖۧۛ۫ۧۨۛۨۥ۫ۜ۬ۗۡ۬ۤۙۨۦۖۥۦۖ۠ۜۡ۫۬ۖۘ۬ۡ۬ۨۜۧ۬۫ۖۖۢۥۘۗۖۜۘۘۢۢ";
        }
    }

    public BaseFootView getFootView() {
        String str = "ۡۚ۠ۛ۫ۥۡۛۘۘ۠ۥۚۗۛۜ۟۫۬ۚ۫ۘ۬ۙۨۤۛۦۘۚۦۦۘۤ۟ۖۦۚۜۦۢۛۙ۬ۘۧۙۡۘۦۤۚۜۡۦۘۙۛۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 435) ^ 857) ^ 901) ^ 1289355463) {
                case -1936276179:
                    str = "۟۬ۦ۫ۧۧ۫ۥ۬ۘۥ۠ۧ۠۬ۦ۬ۘۨ۬ۘ۫ۢۘۢۦۛۜۦ۫ۘۘۤۢۤۡۡۦۤ۠ۧۨۗۦ۠ۙۤ";
                    break;
                case -1207214786:
                    return this.Ooooo0o;
            }
        }
    }

    public int getPageSize() {
        String str = "۠ۡۥۘۥۧۗۗۗۥۘۜۘۦۘۗۙۢۡۨۘۗۖۥۘۥۧۡۘۛۖۢۚۡ۫ۨۙۙۧۛ۟";
        while (true) {
            switch ((((str.hashCode() ^ 810) ^ 666) ^ 146) ^ (-307915395)) {
                case 1207024061:
                    return this.Ooooo00;
                case 1678574113:
                    str = "ۙۘ۫۟ۦۦ۟ۗۥۛۡۥۗۜۘۙۗۗ۫ۨۢ۠ۛۜۙۖۘ۫ۖۧۘۖۜ۟۠ۤۚۙۘۘۥۤۥۘۢۢۦۘۢۤۨۘ";
                    break;
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        OooO00o oooO00o = null;
        String str = "ۜۙۥۘۖ۫ۛۤۡ۠ۘۜۖۥۤۦۘۙۖۘۖۥۢۙۗۡۘ۟ۜۡۤۗۦ";
        while (true) {
            switch ((((str.hashCode() ^ 566) ^ 690) ^ 108) ^ 376446921) {
                case -2012122284:
                    oooO00o.onScroll(absListView, i, i2, i3);
                    str = "ۗۡۘ۫ۜۖۘۨۡۤۗۚۘۘۢ۟ۨۘۖۡۦۘۢۘ۫ۥۚۙۙۤۧۤۖۜۧۤ۟ۡۚ";
                    break;
                case -1443660912:
                    str = "ۨۤۙۙۖۢۤۚۨۘۡۤۚۤۥۨۘ۫ۘۥۘۥۚۗۧ۠ۛۢۡۨۘۚۜۨۖ۟ۜۘۙ۠۟ۨۤۦۢۙۗ۬ۘۜ۠ۧۦ۠ۨۘۧ۫ۡ";
                    break;
                case -1050019300:
                    this.OooooOo = i3;
                    str = "ۙۢۡۗۗۤۨۨۨۘۘۦ۟ۢ۠۬ۢۜۖۗ۠ۛۖۖۧۘۛ۠ۤۛ۫ۥۘ۟ۖۥۛۜۖۘ";
                    break;
                case -643460174:
                    return;
                case -236456247:
                    str = "ۘۗۗۖۤۢ۬۠ۦۘ۟ۥۜۜ۫ۖۧ۫ۨۖۘ۟ۥۥۘۚۤۖۤ۫ۘۙۡۙۦ۠ۢ";
                    break;
                case -169537773:
                    str = "ۖۦ۟ۜ۠ۛۥۙۛۨۡ۫ۨۥۘ۫ۧۧۧۧۙۤ۟ۢۘۙۘۘۦۘۨۘۧۦۥۘۥۥۦۤۢۘۤۢۧۧۤۡۘۤۙۨۜۨۙ";
                    break;
                case -135862660:
                    str = "ۘۧۦۘ۬۫ۡ۫ۨۘۚۘۖۘۙۙۦۘۖۧۥۘۗۛۤ۟ۙۤۖۗۜۘۜۛۨۘۜۛۡ۟ۡۡۦۦۘۡ۟ۤ";
                    break;
                case 1026648137:
                    str = "ۚۨۘۘۜۤۚ۫ۦۡۘۤۙ۠۟ۘۘۜ۬ۖۖۜۖۢۜۘۚۚۘۨۘۦۘۢ۠۠ۨۦۥۨ۬ۛۥۥۦۘ";
                    break;
                case 1127389171:
                    String str2 = "ۗۡۨۘۘ۟۫۟ۙۥۘۦۗ۠ۘۛۡ۟ۤۖۖۢۥۘۦ۠ۚۡ۬ۜۙۡۤ۠ۡۜۘۥۢۨ";
                    while (true) {
                        switch (str2.hashCode() ^ 549900476) {
                            case -858455530:
                                str = "ۗۡۘ۫ۜۖۘۨۡۤۗۚۘۘۢ۟ۨۘۖۡۦۘۢۘ۫ۥۚۙۙۤۧۤۖۜۧۤ۟ۡۚ";
                                continue;
                            case 528434692:
                                str = "ۛۢۧۥ۟ۗۦ۟ۘۜ۠۟۬ۧۖۦۧۧ۬ۢۡۦۗۥۨۡۤۡۛۤ۟۟۬ۢ۠ۥۧۚۥۘۦۡۥۛۤ۟ۛ۫ۙۜۢۘ۫۫ۥۘ";
                                continue;
                            case 569857457:
                                String str3 = "ۡۧۡ۠ۡۧۘۚ۫ۨۘۥۘۦۥۖۚۗۤ۫ۙۙۥ۟ۘۙۨۡۨۜ۫۟ۚۛۧۘ۟ۗ۠ۥۢۙۘۧۘۡ۟ۛۙۗۜۘۢۚۤۜۦۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1821865346) {
                                        case -1773062397:
                                            str3 = "ۦ۟ۖۘۤۖۧ۫ۨۧۘۧۛ۠ۚۢ۫ۥۚ۟ۜۖ۬ۖۨۦ۠۬ۗۨۥۘ";
                                            break;
                                        case -1315514977:
                                            str2 = "ۧۘۡۘۙۙۢۨۥۘۛۢۡۙۗ۫۫ۗۘۘۨۘۦۘۨۖۛۢۨ۬ۥۜ۟ۗ۟ۘۘ۫ۚۛ۟ۨۚۖۡۜۘ۠۟ۘۘ۠ۥ";
                                            break;
                                        case -959105769:
                                            str2 = "ۡۢۛۦۙ۫ۖۜۜۘۘ۟۬ۡۧۨۘۧ۫ۦۥۦۥۙۢۤۘ۟ۛۛۜۡ";
                                            break;
                                        case 1906786521:
                                            str3 = oooO00o != null ? "ۛۛۨۘۖ۟ۡۘۜۛۦۘۦۗۘۥۢۙۧ۬ۡۘۨۙۦۘۗۚ۟ۘ۠ۚ۠۫ۖۘۜۦۦۘۥۖۦ" : "ۦۥۡۢ۟ۨۘۢ۫ۧۡۡۜۘ۬ۙۤ۬ۢۡۘ۫ۚۡۘ۬ۖۜۘۨۧۖۘ۠ۚۚۤۘۢۨۖۗ";
                                            break;
                                    }
                                }
                                break;
                            case 1987093177:
                                str2 = "ۘۥۤۘ۫ۜۘۤۢۜۘۖۘۡۘ۬ۢۥۢۧ۬۫ۧۖۜۗۧۖۛۥ۠ۨ۫ۖ۠۬ۜۢ۠۫۫ۡۥۤۚ";
                                break;
                        }
                    }
                    break;
                case 1184665685:
                    oooO00o = this.Oooooo;
                    str = "ۥۙ۠ۘ۫ۘۘۥۘۡۦۙ۠ۤۡۘۡۧۘۛۦۖۘۛ۫ۤ۟ۡۥۦۖۧۘ";
                    break;
                case 1239320355:
                    this.OooooOO = i + i2;
                    str = "ۦ۫ۡۘۗۨۨۤۘۧ۠۫ۥۡۖۖۢۙۨۘۤۜۡۘ۠ۥۥۚۜۡۘۖۗۖۘۤۧ۫ۙۗ۬ۖ۬ۢ۬۫ۛ";
                    break;
                case 1291033710:
                    OooOOO0();
                    str = "ۢۨۤۢ۫۫ۥۢ۫ۛۥۨۜۧ۠ۙۡۙ۬ۨۘۜۦۚۘ۫۠ۦۗۗۙۘۨۘۛۢۛۙۡۥۘۦ۟ۛۖۘۧۘۦۦۤ۟۟۟ۖۡ۫";
                    break;
                case 1715134534:
                    String str4 = "ۚۥۚۨۧ۫ۚ۠ۨۖۧۙۢۧۦۘۖۙۜۧ۟ۘۧۨۥۤۖ۬ۗۦۤ";
                    while (true) {
                        switch (str4.hashCode() ^ 696051735) {
                            case -1598386280:
                                str = "ۚۗۨۘ۫۫۫ۗۧۗۥۦۘۘۨۥۘۚۙۖۖۨۗۖۡۨۛۜۡۦۧۦۘۥۦۡۘۜۥۘ";
                                continue;
                            case 736966441:
                                String str5 = "ۘۥ۬ۖۧۘۘۗۨ۫۟ۛۜ۬ۤۨۤۧۨۘۙۧۦۘ۟ۦۜۘۨ۟ۚۦۘۙ";
                                while (true) {
                                    switch (str5.hashCode() ^ 2071261237) {
                                        case -1762876156:
                                            str5 = "ۚۨۚ۠ۤۜۦۗۦۨۤۦۛ۟ۗۛۥۦ۬۬ۡۛۜ۫ۡۘۘۨۧۖ";
                                            break;
                                        case -1714967748:
                                            str4 = "ۨۡۦۤ۠ۘۚۚۧۚۚۘۢۧۖۖ۫ۘۘۨ۫ۛۗۦ۫ۧۘ۟ۖۥۜۘۛۥۥۘۤ۫ۘۦۨ۬ۥۡ۟";
                                            break;
                                        case 859353069:
                                            str4 = "ۖۢۡ۬ۨۚۗۘۙۖۤ۫۠ۢۡ۬ۜۥۜ۟ۗۧۙۙۛۧۜۘۡۨۘۛۡۙۖۤۡۘ۫ۤۨ۠ۜۡۧۨۡۘۜۗ۠۟۠ۖۗۨۘ";
                                            break;
                                        case 1808517185:
                                            str5 = this.OoooOoO ? "ۧۥۨۘ۟ۗۗ۫ۥۘۜۦۚۘ۟ۦ۫ۚۜۥۨۘۧۙۢ۫۬ۥۘۖۧۨۘ۬ۗۚۚۥ۟ۖ۫ۡ۬۬ۘۘۤۡۥۘۦۥۤ۫ۖۢۤۖۡۘ" : "ۘۡۚۙۤ۟ۜۙۦۜۤۡۘۘۗۦۘ۟۬ۡۛۗۘۘۧۢۖۥۙۡ۫ۗ";
                                            break;
                                    }
                                }
                                break;
                            case 1518401257:
                                str4 = "ۜۡۦۘ۟ۛ۠۟ۧۚۙۢۘۖۘ۫ۥۧۘۚۜۜۘۘۛۜۢۖۗۧ۫ۜۢۛ۠ۚۧۜۘ۠ۨۚۚۡ۫ۨۘۛ۟ۛۗ۠ۜ۟ۚ۟";
                                break;
                            case 2119508500:
                                str = "ۢۨۤۢ۫۫ۥۢ۫ۛۥۨۜۧ۠ۙۡۙ۬ۨۘۜۦۚۘ۫۠ۦۗۗۙۘۨۘۛۢۛۙۡۥۘۦ۟ۛۖۘۧۘۦۦۤ۟۟۟ۖۡ۫";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        OooO00o oooO00o = null;
        String str = "ۗ۫ۚۡ۟۫ۗۨۚۗۘۡۖۢۥۘۘۨۦۘۘۘۨۘ۬ۡۛۧۧ۫ۛۜۙۧۥۖۡۘۦۚۘۥۤۦۚۧۜۥۘۛۨ۬";
        while (true) {
            switch ((((str.hashCode() ^ 905) ^ 65) ^ 241) ^ (-1838659456)) {
                case -1709950572:
                    oooO00o.onScrollStateChanged(absListView, i);
                    str = "ۢۜ۫ۙۧۙۨۧۜ۬ۨۜ۟ۜۙۖۧۘ۬۠ۗۙۢۛ۫ۦۘ۫ۢۘۘۖۥۢ۠ۖ۟";
                    break;
                case -1522333390:
                    str = "ۜ۫ۨۤۦۘۨ۠ۛ۬ۗۘۚ۬۬ۨۛۛۦ۠ۡۥۖۖۘۘۛۗۡ۠ۘۚۜۡۦۥۦۘۦۥۗ۠ۢۜۤ۫ۧۧ۟۫ۨۥۙۥۜۡۘ";
                    break;
                case -1240333438:
                    this.Oooooo0 = i;
                    str = "۠ۧ۬۟۟ۘۢۜۚ۠۠ۡۤۡۧۤۚۧۚۖۤۜۖۧۘۡۜۡ۟ۜۢ۬ۘۥۘۚۛۨۙ۠ۨۗۛۜۘۡۡۧۘۚ۟ۘ";
                    break;
                case -714190134:
                    return;
                case 380947179:
                    str = "۬ۙۘۘۧۛۦۗۖ۠۟ۛۢۡۨۢ۫ۥۤۖۤ۠ۧۤۗۢۙۖۦۘۛۜۧۘۜۨۨ۫ۧۥۘۤۖۧ۬ۡ۟ۖ۫ۚ۫ۖۡۢ۠ۨ";
                    break;
                case 593806326:
                    str = "ۗ۟ۜۘۧۥۤۘۗۘۗۥۚ۠ۘۗ۟ۖۖ۟۟ۨۘۧۗۗۙۘۧۗۢۘ۠ۚۖۡۨۜۘۥۛۥۘۙ۟۟ۦ۬ۙۦۛۖۘ";
                    break;
                case 1728676235:
                    oooO00o = this.Oooooo;
                    str = "ۦۙۜۘۨۛۛ۬۠ۦۘۡۧۖۘ۠ۡۡۘۖۙۦۤۥۘۙۨۢۙ۟ۨۘ۫ۚۛ۫ۜۤ۠ۜۨۨۖ۫۠ۥۖۘ۠ۗۡۙ۠۬";
                    break;
                case 1905220713:
                    String str2 = "ۚۛ۬ۚۨۦۚۜۢۤۡۧۘ۫ۛۡ۬۬۫ۥ۫ۢۤۛۖۘۨۘۨۥ۟ۨۘۡۜۜ";
                    while (true) {
                        switch (str2.hashCode() ^ 823020321) {
                            case -1394292497:
                                str2 = "ۚۨۧۘۦۖۜۘ۫۟ۘۘۜۦۤۦ۟ۙ۫ۙۦۡ۠ۦۨ۫۠ۢۨۧۘۗۚۨۥۢۛۦۥۨ";
                                break;
                            case -281722575:
                                str = "۫ۖۦۛۖۘ۠ۦۥۘۘۙۖۜ۠ۡ۠ۧۘۘۙ۬۬ۦ۟۟ۦ۫۬ۥ۫ۖ۠ۗۥۘۦۥ۠۬ۘۖۘۗۡۨۨ۫ۡۤ۬۟ۨۧ۟۫ۘۦۘ";
                                continue;
                            case 839592312:
                                String str3 = "ۜۤۤۨۥۛۢۚۦ۠ۢۗۚ۟۫ۨۨۙۡ۬ۖۛۘۙۘ۟ۘۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1721654211) {
                                        case -1376101472:
                                            str2 = "ۙۜۛۢ۠ۚ۫ۦۚ۬ۡۘۦ۟ۜۘ۟ۢۜۘۢۨۧۘۤ۬ۘۘ۫ۤۛ۫ۖۡۨ۫ۖۗۡ۠ۦۦۦ۟ۛۦۘ";
                                            break;
                                        case -1155377305:
                                            str2 = "ۖ۬ۡۚۤۘۘ۠ۚۚ۫۫ۡ۠ۡۢۦۘۡۧ۟ۜۡ۟ۗۨۧۧ۬ۦۘۘۤۘ۫ۥۗ۬ۖ۬ۨۘۤۗۢ۟ۖۘۦۜۨ";
                                            break;
                                        case -633625906:
                                            str3 = "ۥۖ۟ۚ۬ۨۗ۫ۦۢۨۥۘۥۥۥۘۚۗۤۥۡۘ۟ۛۨۘۖۦۡ۠ۨۦۘۦۗۧ۠ۢ";
                                            break;
                                        case 1575012894:
                                            str3 = oooO00o != null ? "۟ۦ۟ۛۢۛۘۢ۫ۦۜۡۧۜۨ۫ۜۘۤۡۤۙۚ۟۬ۜۦۘۢ۟ۢۧ۬ۘۘۤۙۥۘۨ۬۟۟ۧۛۢۨۨۘ۫ۙۨ" : "۫ۡۡۘۧۤۨۢۜۨۘۛۦۚۦۨۨۘ۟ۤۘۢۚۛۥ۫ۖۢۢ۠۠۫ۗۗۨ۬ۦۛۚۨۤۡۧۨ۬";
                                            break;
                                    }
                                }
                                break;
                            case 1939121955:
                                str = "ۢۜ۫ۙۧۙۨۧۜ۬ۨۜ۟ۜۙۖۧۘ۬۠ۗۙۢۛ۫ۦۘ۫ۢۘۘۖۥۢ۠ۖ۟";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    @Override // android.widget.ListView
    public boolean removeFooterView(View view) {
        String str = "ۜۗۨۧۛۖۛ۬ۥۘۨ۟ۡۘۖ۬ۨۡ۫ۤ۫ۜۛ۫ۙ۫ۗۦۥ۬ۜ۬۠۫ۦۢ۠ۢۦۥۤ۟ۦۜۘۥ۟ۖۘۙ۫ۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 195) ^ UiMessage.CommandToUi.Command_Type.SET_BACKCOLOR_VALUE) ^ 476) ^ (-147030017)) {
                case -1981632284:
                    this.Ooooo0o = null;
                    str = "ۦۙۘ۠۟ۘۘۧۗۥۘۖۗۛ۫ۙۖ۠ۦۜۘۚ۬۬ۗۛۦۗۘۖ۬ۜۙۜ۠ۛۗۖۧۘۗ۫ۨۘۢ۠ۘۥ۠ۜۘ۠۬ۚ";
                    break;
                case -1579950300:
                    return super.removeFooterView(view);
                case -630392700:
                    str = "۬ۗۘۘ۫۫ۗۡۥۖ۬ۢۧ۠ۥ۬ۜ۫ۤۘ۬۠۟۠ۤۚۦۡۘۙۙۢ";
                    break;
                case -125459714:
                    str = "ۖ۟ۘۘ۟ۡۥۘ۠ۧۨۗ۠ۜ۟ۚۡ۫۬ۙۤ۟ۥ۟ۖ۟ۙۨۘۘۦۛۡۙۢۨۖۥ";
                    break;
                case -113452096:
                    String str2 = "ۤۢۛۡۧ۫ۚۘۥ۟ۙۖۘۘۖۥۘۖۤۙۙۘۗۤۛۧۨۙۨۘ۫۫ۦۘۚۜۤۘۛۖ۠ۚۢۢۨۥۥۥۖۚۜۦۛۘۧ۬ۚ";
                    while (true) {
                        switch (str2.hashCode() ^ (-700716964)) {
                            case 177726079:
                                str = "ۦۙۘ۠۟ۘۘۧۗۥۘۖۗۛ۫ۙۖ۠ۦۜۘۚ۬۬ۗۛۦۗۘۖ۬ۜۙۜ۠ۛۗۖۧۘۗ۫ۨۘۢ۠ۘۥ۠ۜۘ۠۬ۚ";
                                continue;
                            case 669774628:
                                String str3 = "ۧۤۛۦۜۧۘۜۚۚۧۛۨۘۢ۠ۖۥۗۨ۠۫ۥۘۨۙۡۘ۟ۢۧ۟ۤۥۧۗۜۘۡۜۧۘۜۖۜۘۦۢۖ۫ۦۧۛۦۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 472373417) {
                                        case 640557880:
                                            str2 = "ۜۡۧۘ۟۫ۖۘۧۦۚۘۗۛۗۛ۫۬ۙۨۘۜۜ۠ۧ۟ۘۤۢۡۘۥۦۘ";
                                            break;
                                        case 789002137:
                                            str2 = "ۙۗۥ۟۫ۘ۫ۦۗ۫ۦۦۛ۠ۡ۫۟ۦۘ۟ۖۨۘۥۢۗ۟ۤۘۘۛۚۜۘ";
                                            break;
                                        case 1306425300:
                                            str3 = "ۦۘۘۘۧۗۚۙ۬ۥ۫۠ۚۡۨۨۦ۫ۚۢۤۛۥ۟ۢ۟ۛۥۥۥۛ۟ۛۙۦۘ۠ۛۡۖۙۜۘ۟ۘۢۛۨۙۢۗۢۡۨ۫";
                                            break;
                                        case 1745413339:
                                            str3 = this.Ooooo0o == view ? "ۛۤۛۨۚۖۘۧۗۦۗۧ۟ۢۘۘۘ۫ۡۚ۠ۢۚۡ۬ۛ۠ۙۖۘۙۛۡ" : "۟ۨۢۜۤۦۘۛۡۦۘ۟۟ۘ۟ۡۛۛۙۡۘۢۜۘۙۘۖ۬ۦۧۘۢۥ۬ۘۜۛۡۜۤۚۖۧۘ۠ۚۨۘۢۖۗۡۢۨ";
                                            break;
                                    }
                                }
                                break;
                            case 1290316025:
                                str2 = "ۨۖۨۘۧۥۧۘۚۢۦۘۡۥۜ۬ۗۨۚۤۜ۠۫ۖۘۡۦۧۘ۠ۘۖۨۨۡ";
                                break;
                            case 1406937328:
                                str = "ۡۢۥۥۢۘ۟ۡ۟ۧۖۦۘ۠ۚۧۜۜۘۘۖۙۧۙۘۢۡۡۘۘ۬ۚۖۘ۟ۘۧۤ۠";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    public void setIListViewCallBack(ua uaVar) {
        String str = "ۚۥۦۘ۠ۚۜۖۙۜۨۡۡۘۖۨۤ۟۟ۧ۟۠۠۬ۧۨ۬ۙۢۙۢۧۦ۬ۨۙۙۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 56) ^ 989) ^ 129) ^ (-1420558495)) {
                case -1682072661:
                    this.OooooO0 = uaVar;
                    str = "ۗ۟ۘۜۚۗۙ۫ۢ۟ۗۗۖۜۨۘ۠ۚۗۘۗۡ۟۠ۡۜۡۦ۫ۢۘۘ";
                    break;
                case -1321259007:
                    return;
                case -1005357855:
                    str = "ۦۚۧۥۚۡۘ۬ۗۜۖ۠ۖۤۖۗۗۥۘۨۨۥۙۖۧۘۙۗ۟ۦۢ۟ۨۦۢۡۦۦۘۤۜۡۘۦ۠ۘۘۡۤۦۚ۟";
                    break;
                case 1052774126:
                    this.Ooooo0o.setCallBack(uaVar);
                    str = "ۜۛۤ۫ۗۤۘۖۨۡۧۡ۠ۚۙۘۡ۠ۧۥۘۦ۠ۦ۫ۛۛۘۚۢۧۥۦۘۜۗۥۘۖۦ۫ۤ۫ۥ";
                    break;
                case 1183059903:
                    str = "ۗۘۢۜۛۤ۠ۖۥۢۙۖۘۜ۫ۗۘۢۦۨۜۡۤ۫۬ۦۨۙۚۗۥۚۨ۠۫ۨۘۘ";
                    break;
            }
        }
    }

    public void setScrollLoad(boolean z) {
        String str = "۠ۧۥۦۗۚ۬ۤۛۨۡۨۘۖۚۜۘ۠ۨۦۘۚۗ۫ۜۖۨۘۦ۬ۢۖۦۛ۟۟ۘۥۜۚۙۢۜۘۜۡۘۘۥ۠ۢۦۢۖۘۙۚۖۜ۬ۗ";
        while (true) {
            switch ((((str.hashCode() ^ 412) ^ UiMessage.CommandToUi.Command_Type.SET_ENABLED_VALUE) ^ 479) ^ (-1545584937)) {
                case -2115104927:
                    this.OoooOoO = z;
                    str = "ۧۙۘۙۥۗۨ۠ۨۖۥۨۙ۟ۨۘۦۥۜۘۖۤۧۘۢۘۘۙۦۘۘۢۦۖۘۘۤۜۡۢۛۗۧۧۗۨ۬ۘۚۨۘۥۡۧۘۢۗۙۢۤۦ";
                    break;
                case -1172838231:
                    str = "ۦۢۡۘۘۖۥۖۢ۫ۚۛۧۧ۟ۡۘ۠ۘۙۦۨۧۤۢۦۜ۠ۗۢ۫ۜۛۚۖۘۤۢ۠ۚۧۨ۠ۘۗ۫ۢۢۜ۬ۨ";
                    break;
                case -688224593:
                    str = "ۖۤۛۦۚۨۜۤۜۜۖۖۗۥۧۘۥ۫ۦۘۦۛۢۧۛ۫ۛۛۦۢۢۛۦۚۛۘۗۘ۟ۡۛۖۜۘ";
                    break;
                case 177660925:
                    return;
            }
        }
    }

    public void setmListViewScrollListener(OooO00o oooO00o) {
        String str = "ۚۤۤ۟۠ۦۘۖۨۧۘۨۡ۫ۘۘۜۗۙ۫ۗ۬ۖ۟ۖ۟ۘ۟ۖۘۦۧ۫";
        while (true) {
            switch ((((str.hashCode() ^ 902) ^ 437) ^ 565) ^ 1175290691) {
                case -855946805:
                    str = "ۧۘۘۢۘۢۛۢۨۡۛۥۘۖ۟ۤ۫۟ۦۘۛۤ۠ۛۙ۠ۥۢ۟ۜۘۧۡۚۘۛۘۘۗۛۛۦۖۧ۟ۜۡۘۘۜۤ۟ۨۨۘۙۡۤ";
                    break;
                case 463301306:
                    this.Oooooo = oooO00o;
                    str = "۫ۛۨ۫ۗۨۘۛۜۥۘۛۜ۬۠ۥۜ۟۠۟ۚۜۧ۠۠۠ۧۛۚۡۨ۠۫ۦۨۨۡۢۨ۟ۗ۠ۢۡۧ۠ۜۘۛۥ۟";
                    break;
                case 806049512:
                    return;
                case 1318948846:
                    str = "۫ۚۨ۫ۨ۟۬ۜ۬۫ۧۦۘ۬ۙ۟ۢۜۡۛۦ۬ۦۘۜۙۛۥۧ۠ۘۘۚۨۜۘۡۧۤۢۜۤۤ۟";
                    break;
            }
        }
    }
}
