package com.cyjh.elfin.ui.activity.studio;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.ac.R;
import com.anythink.expressad.video.module.a.a;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.b7;
import z2.c5;
import z2.dh;
import z2.fh;
import z2.l10;
import z2.me;
import z2.rc;

/* JADX INFO: loaded from: classes.dex */
public class StudioBindClearActivity extends BaseActivity implements View.OnClickListener {
    public static String o00O0O;
    public static String ooOO;
    private TextView OooooO0;
    private TextView OooooOO;
    private TextView OooooOo;
    private String OoooooO;
    private FrameLayout Ooooooo;
    private TitleView o0OoOo0;
    private boolean Oooooo0 = true;
    private Handler Oooooo = new Handler();

    public class OooO00o implements rc.OooO00o {
        public final StudioBindClearActivity OooO00o;

        public OooO00o(StudioBindClearActivity studioBindClearActivity) {
            this.OooO00o = studioBindClearActivity;
        }

        private /* synthetic */ void OooO0OO() {
            String str = "ۘ۫ۦۘۧۨ۟ۘۖۘ۠ۡ۠ۜ۬ۡ۬۠ۡۖۗۥۘ۬ۚۡۘۤۙۥ۟ۘ۟ۨۡۥۦۥ۫ۙۗۥۖۢۥۥۥۖۡۛ";
            while (true) {
                switch ((((str.hashCode() ^ 319) ^ 559) ^ 154) ^ (-561591735)) {
                    case -2108393226:
                        str = "ۙۖ۠۠ۥۤۚ۫ۘۡۙۦۘۥ۫ۜۘ۟۫ۦۘ۬ۛۗۨ۠ۗۖۘ۟ۙۥۘ";
                        break;
                    case -1793141704:
                        c5.OooO0o0(this.OooO00o.getApplicationContext(), "解绑成功！");
                        str = "ۗ۬۫۬ۜۡۘۤۘۤ۠ۦۚۙۤۜۨ۫۠ۚۘۥۢۧۖۦۜۖۧۚۧۧۘۖۛۖۡۚۦۥۥۧۚۦۦ۟۫ۦۡۧۖۢۗۜ۫";
                        break;
                    case -51349082:
                        return;
                }
            }
        }

        @Override // z2.rc.OooO00o
        public void OooO00o(int i, String str) {
            String str2 = "ۨۗۢۙ۟۠ۨۤ۟ۗ۠ۛۜۧ۬ۡۗ۟ۤۥۖۘۤۙۘ۠ۥۥ۬ۖۘ۬ۗۧۜۡ۠";
            while (true) {
                switch ((((str2.hashCode() ^ 118) ^ 591) ^ me.o0000O00) ^ (-434624941)) {
                    case 36507834:
                        return;
                    case 248237015:
                        str2 = "ۖۜۡۢۗ۫ۧۦۦۦۦ۬۫ۧۢۚۤۧۛۢۜۙۚۙۧۖۘۛ۫";
                        break;
                    case 395237305:
                        StudioBindClearActivity.OooO0oO(this.OooO00o, true);
                        str2 = "۟ۡۖۘۙۛۗۦۖۜۘۜۙۡ۟ۚۛ۟ۛۙۡۖۦۘۘۨۜۘۨۗۜۖۡۨۘۖ۫ۨۦۜ۫۬ۖ۫۫ۥۤۥ۫۟ۧۜ";
                        break;
                    case 499424826:
                        str2 = "ۨۗ۬ۧ۫ۥۘ۬ۘۨۢ۫ۗۜۥۡ۟۬ۨۖۦۧۘۧ۠ۚۙۛ۬ۖۚۥۘۛۧۧۜۢۨۘۢ۠ۨۘۜۖۖۘۥۦ۬ۚۧۥۘۙۥۨۛۧۥۘ";
                        break;
                    case 957908298:
                        c5.OooO0Oo(this.OooO00o.getApplicationContext(), R.string.unbind_project_failure);
                        str2 = "ۜۜۜ۫ۗۜ۬ۧۛۥ۟ۜۘ۬ۨۢ۫ۚۧۥۘۙۗۢ۫ۢۦۥۨۚۤۚۖۨۘ۫ۛۨ۫۬ۧۡۦۜۢۤۢ";
                        break;
                    case 1257891495:
                        str2 = "ۘۗۦۘۗۨۗۥ۠ۥۘۢۡۖۘ۫۠ۧ۫ۧۗۢ۫۠ۜۡۧۘۗۗۖۘۨۗۜۘۛۡۗۛۡۥۗۦۖۘۧ۠ۧ";
                        break;
                }
            }
        }

        @Override // z2.rc.OooO00o
        public void OooO0O0(ProjectNumberInfo projectNumberInfo) {
            String str = "ۥۧۡۜۘ۫۟ۨۛ۫۠ۖ۠ۡۚۨۤۛ۟ۜۘ۬ۨ۬ۜۦۦۘ۫ۖۜۢۧ۬۟ۨۧۘ۟ۨۦ۠ۡۥۢ۠ۚۛۙۤ";
            while (true) {
                switch ((((str.hashCode() ^ 33) ^ 244) ^ 616) ^ (-409133952)) {
                    case -1880255281:
                        this.OooO00o.finish();
                        str = "ۥۦۢۘ۠۬ۧۥۡۤۥ۟ۦ۟ۥۛۜۥۤۤۥۜۜ۟ۛ۠۟۫۟ۚۡۤۢۚ۟۟ۗۡۘۡۦۨۘ";
                        break;
                    case -1685367276:
                        AppContext.OooO00o().OoooOoO = null;
                        str = "۠۫ۥۘ۫ۙۦۙۙ۫ۖ۫ۡۘۜۗۗۥ۟ۦۙۛۗۥۖۡۘ۠ۨ۫۫ۤۘۗۥۡۖۧۜ۠ۥ۟ۘۥۘۡۜۚۢۘۚۘۙۥ۬ۦ";
                        break;
                    case -1154237007:
                        StudioBindClearActivity.OooO0oo(this.OooO00o).post(new Runnable() { // from class: z2.n9
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.OoooOoO.OooO0Oo();
                            }
                        });
                        str = "۫ۢۥۘۜۢۡۘ۫ۦۡۘۡ۠ۘۘۦ۫ۚۖۨ۠ۚۤۜۦۚ۫ۜۙۖ۠۫ۢ";
                        break;
                    case -753009226:
                        StudioBindClearActivity.OooO0oO(this.OooO00o, true);
                        str = "ۛۨۥۘۘۡۜ۟ۖۛۧ۬ۤۧ۠۟ۗۨۨۧ۟۟ۛۙ۫ۢۜ۫ۖ۠ۥۘ";
                        break;
                    case -208269238:
                        str = "ۦۙۗ۬ۤۖۙ۬ۖۡۥۥۘۡۤۦۘۥۘۘۘۛۘۙ۟ۛۨۙۜۧۘۨۢۖۘۚ۬۫۫ۥ۬ۙ۬۠ۛۤۚ";
                        break;
                    case 279162601:
                        return;
                    case 678868729:
                        dh.OooOO0O();
                        str = "ۜ۟ۡۖ۬۠ۡ۫ۥۘۦۨ۟ۢ۬ۧۨۧۚۦ۫ۢۥۨۨۘ۠۬۬۫ۖۘ۟ۨۘۘۨۤۜۘ";
                        break;
                    case 696983729:
                        l10.OooO0o().OooOOOO(new fh(10003));
                        str = "ۥۜ۠۟۫ۧ۬ۗۚ۟۬ۛ۟ۛۦۘ۟ۥۘۘۨۧۖۢ۠ۧۘۨۘۘۘۙۚ";
                        break;
                    case 2080912216:
                        str = "ۨۖ۫۟ۗۥۘۢۦۨۘۘۙ۬۠ۙۤۘ۠۬ۢۦ۟ۗۗۗۙۢۛ۫ۛۤۗ۟ۦۘۧۗۛ";
                        break;
                }
            }
        }

        public /* synthetic */ void OooO0Oo() {
            String str = "ۡۗۢۙۨ۫ۤۢ۫۬ۢ۫ۙۨ۟ۚۗۖۢۚۙ۬۠ۨۜۦۡۘۙۖۢۜۙۥۨۚۥۘۦ۟ۖۦ۠ۖ۬ۜۜۘۛۤۥ";
            while (true) {
                switch ((((str.hashCode() ^ 720) ^ 496) ^ a.N) ^ (-869181179)) {
                    case -1899242250:
                        return;
                    case -1325893590:
                        str = "ۦ۬ۡ۫ۡۘۘ۠۫ۚۢ۬ۖ۫ۙۙۢۥ۠ۨۧ۫۠ۡۥۤۤۦۗ۬ۡۛۤۖ۫ۧۦۥۤۛۚۜۘ";
                        break;
                    case 1213200555:
                        OooO0OO();
                        str = "ۚۢۡۘۗۙۥ۠ۢۖۘۥۨۚ۠ۘۖۗۧۢۗ۟ۖۘۧ۬۫۠ۘۡۜۘۦۘ۫ۘۤۢۦۨۦۖۙۙۚۜۘۘۚۥ";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۦ۬ۥ۠ۢ۫۫ۙۦۘۙۡ۬ۚ۬ۤۙ۬ۖۘۡۛۡۘ۟ۨۚۢۡۙۜۖۧۛۨۜۦۗۗ۬۟ۜۡۚۘۙ۟ۗۦ۟ۡ";
        while (true) {
            switch ((((str.hashCode() ^ 456) ^ 909) ^ 922) ^ (-247243875)) {
                case -1980494945:
                    o00O0O = "studio_project_key";
                    str = "ۦۖۢۨۖ۫ۙۧۨۤۥۢۢۗۜۢۖۨۥۨۥ۠ۧ۟ۧۢۤۖۥۙۦ۫۟۟ۗ۬ۘۖۜۘ۟ۦۧۘ۬ۖۖۘۜۙۛۦۛۨۘۤۚۥ";
                    break;
                case -1680405144:
                    ooOO = StudioBindClearActivity.class.getSimpleName();
                    str = "ۛۧۤۛ۠ۘ۬ۗۥۜۖۡۘۘۙۚۙۖۘۘۘۧۥۘۦ۟ۖۘۨۜۨۘۖۖ۟ۖۢۤۗۡۖۙۛۜۖۥ";
                    break;
                case 1059324280:
                    return;
            }
        }
    }

    public static void OooO(Context context, String str) {
        Intent intent = null;
        String str2 = "۬۬ۨۘۖۥۖۘۦۢۦۘۖۡۨۧۡ۠ۦۥۨۦ۠ۜۘ۫۬ۡ۫ۚۜۖۘۘۦۨۧۘۚۗۨۨۡۘ۬ۨۡۘۗۜۦ۠ۧۖۧۡۤۥۗۖۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 308) ^ 494) ^ 283) ^ (-960720411)) {
                case -2105959567:
                    intent.putExtra(o00O0O, str);
                    str2 = "ۘۦۜۜۙ۟۬ۤۖۘۡۘۤۛۧ۠ۘ۫ۙۥۥ۫۫ۡۛۦ۟ۡۖۙۚۤ۠ۚۢۧۢۙۦۘۚۡۧۘ۠ۛۨۡۥ";
                    break;
                case -1770449976:
                    intent = new Intent(context, (Class<?>) StudioBindClearActivity.class);
                    str2 = "۟ۘۡۧۦۖۛۡ۬ۡۙۢۘ۫۫ۧۛۥۜۤۤۧۖۘۘۦۧۛۧۛۗۛۧۨ۟ۚۤ";
                    break;
                case 1705915568:
                    str2 = "ۘۘ۬ۜۥۧۘۙ۬ۦۨۦۜ۫ۙ۫ۤۛۡۘۗۖ۬ۡ۠ۜۘۨ۬ۡۚۚ۫";
                    break;
                case 1813316984:
                    str2 = "ۥۡۙۧ۟ۢۨۦۦۘۖ۬ۖۜۚ۫ۧۜۨۘۨ۠ۡۘۤۜۢ۫ۡۧۖۜۦۘۖۛ۟ۡۦۛۚۡ۠ۡ۫ۖ";
                    break;
                case 1872857955:
                    context.startActivity(intent);
                    str2 = "ۘ۟ۖۘۤۡ۫ۖۦۡۢۖ۬ۗ۟۠ۛ۬ۜۘۘ۬ۡۖۡ۬ۙۖۡۢۜۘۙۙۙۧ۫۫ۖۚۛۛۖۜ۫ۨۘۢ۬ۖۘ";
                    break;
                case 2088383116:
                    return;
            }
        }
    }

    public static /* synthetic */ boolean OooO0oO(StudioBindClearActivity studioBindClearActivity, boolean z) {
        String str = "۟۫ۘۘۢۡۥ۟ۖۦۥۤۘۘۗۦۗ۠ۙۜۖۜۦۘۧ۟ۤۗ۫۫ۜۘۡ۟ۜۙۘ۫۠۬ۢۚۛ۫ۤۛ۬ۨۦۖۧۤۜۗۖۨ";
        while (true) {
            switch ((((str.hashCode() ^ 681) ^ 388) ^ 170) ^ (-1629724603)) {
                case -1998649043:
                    str = "ۦ۬۟۫ۖۨۘ۟ۥ۠ۜ۬ۚۤ۬ۨۙۗۗۨ۫ۜۘۜۧۜۘۜۛۘۤۛۧ";
                    break;
                case -1698918366:
                    return z;
                case -488722561:
                    str = "ۗۘۖۗۦ۫۠ۡ۬ۘۗۡۘۥۛۖۘۧۦۛۗۚۙۙ۫ۢۥۡۥۛۘۘۘۢۙ۟ۡۘ۬ۖۖۨۘۤۦۡۘۨۙۥۧۧۥۘ";
                    break;
                case -166033352:
                    studioBindClearActivity.Oooooo0 = z;
                    str = "ۨ۫ۘۚۥۦۦ۫۬ۜۘۡ۬ۤۗۥۨۦۥۨ۫ۨ۬۬ۧۡۨۧۜۙۗۨۨۜۧۤ";
                    break;
            }
        }
    }

    public static /* synthetic */ Handler OooO0oo(StudioBindClearActivity studioBindClearActivity) {
        String str = "ۙۗ۫ۛۛۧۜۤۘ۬ۥۢ۟ۤۙۙ۠ۦۘ۟ۚۡۘۡۦۧ۫ۥۤۘۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_UIP_DATA_VALUE) ^ 542) ^ 720) ^ 1563559666) {
                case -1491938599:
                    str = "ۗۥۖۚۤۨ۠ۥۖۛۛۗ۟ۜۥۙۥۡۙ۟ۧۛۖۘۛۘۦ۟۟۫ۧۦۖۘۨ۬۟۟۫۫ۨۢ۠";
                    break;
                case -1476084136:
                    return studioBindClearActivity.Oooooo;
            }
        }
    }

    public static void OooOO0(Context context, String str) {
        Intent intent = null;
        String str2 = "۟ۗ۠ۦۢۚۤۛۛۜۡۨ۠۟۠ۛۦ۠ۢۡۘۙۗۨۘۨۖ۠ۨۤۜۘۨۙ۠ۚ۠ۨۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 910) ^ 32) ^ 498) ^ (-1827201228)) {
                case -1221597010:
                    intent.addFlags(268435456);
                    str2 = "ۨۜۦۖۛۤۤ۬ۦۘ۠ۙۨۛۛۚۘۚۘۘۖۥۛ۫۫ۧ۟ۨ۫ۙۙۦۘۜۥۥۘ۠۫ۗۤۦۘۦ۫ۢۗ۟۬ۤۦۡۘ۟ۜۡۘ۫ۢ۠";
                    break;
                case -1158830613:
                    intent = new Intent(context, (Class<?>) StudioBindClearActivity.class);
                    str2 = "۟ۤۚۨۛۧ۫ۡۘۘۗۗۜۘ۬ۦۜ۫ۧۗۜ۫ۨۘۧ۟ۖۖۙۙ۠ۨۜۘۡۖۡ۬ۙۦۘ";
                    break;
                case -869420286:
                    intent.putExtra(o00O0O, str);
                    str2 = "ۖۗ۫ۨ۬ۜۥۙۙۨۦۜۘ۠۫۫۬۬ۦۤۛ۠۬ۙۚۦۦۥۤۨ";
                    break;
                case 178412760:
                    str2 = "ۢۤ۟۫ۡۨ۬ۧۦۘ۠ۧۥۘۚۤۖۘۗۡۖۦۗ۟ۡۖۧۘۦۚۨ۫ۢۘۘۤ۫ۥۧۤۢۨ۫ۚۥ۠ۢۦۘۨۨۘۡ۬ۤۙۘۧۦ";
                    break;
                case 188760358:
                    context.startActivity(intent);
                    str2 = "ۖ۬۬ۡۨۨۘۘ۠ۜۡۢۙۖۨۧۘ۠ۡۤۛۧۧۢۨۜۖۘۡ۫ۦۘ";
                    break;
                case 1355771345:
                    str2 = "ۤۙ۫ۖۛ۠ۘۛۨۙۤ۫ۢۨۜۜۡۖۘۥۧ۬ۘۙۡۙۦۦۘۖۘۜۘ۟ۢۡۤۨۤۖۙۗ۠۫ۧ۠ۦۡۘ۬ۤۥۚۚۘ۟ۥۘ";
                    break;
                case 2091949984:
                    return;
            }
        }
    }

    private void OooOO0O() {
        String str = "۫ۡۜ۟۬ۖۤۚۗۖ۟ۡۘۗۦۘۢ۫ۥۘ۟۬ۧۖ۠ۢۗۚۥۘ۠ۧۙ۟ۗۖۡۥۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 934) ^ 173) ^ 898) ^ (-381537037)) {
                case -1356954676:
                    this.o0OoOo0.setleftImage(R.drawable.ic_back);
                    str = "ۨۨۨۘۦۜۨ۬ۡۧۗ۟ۥۗۗۤۜۡۦۙۖۜۘۖۙۦۢۙۛۥۤ۫ۗۢۗۥۧۘۛ۟ۦۘۙۥۖ";
                    break;
                case -95916712:
                    this.o0OoOo0.setTitleText(R.string.already_bind_project_number);
                    str = "ۖۜۚۨۙۧۥۢۧۛۥۥ۟ۨۥۦ۬ۚ۬ۗۘۥۥۖۦۚۘۘۜۢۜ۫ۨ۠ۗۥ۫ۤ۠ۢۛۜۥۘۦۤ۟ۥۖۖ۠۠ۨ۫۬ۧ";
                    break;
                case 294847351:
                    this.o0OoOo0.setVisibilityRightImage(4);
                    str = "ۡۦ۠۫ۨۘ۫ۦۘۘۘ۫۠ۗۖۘۘۙ۫ۡۡۘۖۘۦ۟ۜۘ۠۟ۖۤۢۘ۫ۨۖۧ۟ۙۢۨۥۘۘ۟۬ۖ۫۫۫ۙۡ";
                    break;
                case 702973198:
                    this.o0OoOo0.setVisibilityLeftImage(0);
                    str = "ۙ۠ۥۢۨۦۜ۠ۤۗۘۢۢۘۦۜۥۡۘۚۨۚۖۚ۬ۗۗۜۛۖۜۘۡ۫ۧۚۤۨۢۢۚۤۦۧۡ۟ۦۡۘ۠ۘۦۚ۫۬";
                    break;
                case 942969639:
                    str = "ۧۙۖۘۗ۫ۜۘ۬ۨ۬ۗۥ۠ۖ۬ۘۡۖۡۘۧ۟۠ۙۛۧۛۚۖۗۡۦۘ۟ۛۘۛۦۡ۟ۨۨۘ۬ۗۖۘۗۧۡۘۜ۫ۜۘ۠ۡۦ۠ۘ۟";
                    break;
                case 965429864:
                    return;
                case 1258838936:
                    this.o0OoOo0.setOnLeftImageViewListener(new TitleView.OooO0O0() { // from class: z2.o9
                        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
                        public final void onClick(View view) {
                            this.OooO00o.OooOOO0(view);
                        }
                    });
                    str = "ۜۨۥۘۥ۟ۛۧۥۥۧۧ۫ۤ۬۟ۧۥۛۛۘۜۦ۠ۡۘۙۡۦۦۨۘۖۗۨۜۛۨۘ۟ۡۙۨۖۖۘ";
                    break;
            }
        }
    }

    private /* synthetic */ void OooOO0o(View view) {
        String str = "ۨۥ۠۬ۦۘ۟۠ۗۥۨۧۤۗ۠۬ۚۤۥ۬ۖۦۡۨۘۥۖۛۗۧۖۜۦۦۘۙۘۦ۟ۨۤۥۜۤۛۦۗۤۤۜۘۡ۫۬ۛۛۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 673) ^ 787) ^ 194) ^ 86644128) {
                case -1948753030:
                    str = "ۦۛۥۚ۟ۥۘۦۚۚ۫ۦۥ۠۬ۨۢ۬۫ۡۙۙۜۘۖۘ۟ۙ۟ۢۛۙۛۘۘۥۗۘۘ۟۟ۨۡۙۘۥۥۥۚۗ۟ۚۖۛ۫ۚۡ";
                    break;
                case -1760535059:
                    return;
                case -995319332:
                    str = "ۙۙۘۜۨۨۘ۟ۛۤۖ۠ۙۥۘۤۙۡ۫ۢۡۘ۫ۥۗۨۛ۫ۢۖۘ";
                    break;
                case 1280862669:
                    finish();
                    str = "ۦۜۘۘۖۨۜۘ۟۬ۡۦۦۘ۫ۥۚۥۦۨۧۤ۫ۧۛ۬ۤۛۜۡ۬ۧۜۚۚ۟۟ۦۛۢۨۘۜۦۗۜۥۘۘۥ۫ۨ";
                    break;
            }
        }
    }

    private void OooOOO() {
        Script scriptOooO0oO = null;
        String str = "ۜ۫ۘۘ۬ۜۘۖ۟ۡۦ۟ۖۘۤ۠ۦۘۧۥۜۦ۟ۥۘۥۛۖ۬ۗۥۗۘ۫ۦۙۗۖۧۡۤۨ۠ۨۖۗۛۗۨۢۢۖۘ۬ۛۥۘ۟۟ۜ";
        while (true) {
            switch ((((str.hashCode() ^ 776) ^ 440) ^ 941) ^ 806743001) {
                case -2092371922:
                    rc.OooO0oO().OooOO0O(this, scriptOooO0oO.getId(), new OooO00o(this));
                    str = "ۛۧۘۘۘۧۦۥۘۗۦ۟ۡۘۤ۟ۘۘۜۦۦۧۜ۫۠ۢۥۘۢۤۘۘۛۛۡ۟ۖۜۘ۠ۨۥۘ";
                    continue;
                case -1900161342:
                    this.Oooooo0 = false;
                    str = "ۚۡۧ۟ۧۥۧۛ۬ۙۦۜۘۡۙۜۚۛۗۢۚۗۤۨۡۘ۟ۡۘۛۜۨۡۦۢۦۤۖۘۛۜۨ۫ۜۖۙ۟ۨۘۛ۫ۦ۠ۢۜۜۙۖ";
                    continue;
                case -1386324873:
                    str = "ۙۗۡۨۘۦۚ۫ۡۧۘۜۗۢۥۙۤۢۧ۫۟۬۠ۡۘۙۜ۫ۙۧۗۖۥۥۚۘۖۡۘۡۡ۫ۛۥۨ۟ۚۧ۠";
                    continue;
                case 48856055:
                    return;
                case 487857447:
                    String str2 = "۫۫۬۬ۢۖۘ۬۠ۤۚ۫ۗۢ۬ۚۖۧۜ۠ۚۗۧۧۜۗۜۦۘۚۗۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-835188248)) {
                            case 179706131:
                                str = "ۘ۫ۥۥۡ۬ۢ۠ۡ۬ۚۜۘ۫ۜۥۘۥۢۨۘۙۛۤۛ۬۫۟۫ۚۚۧۗ۟ۡۦۗ۬ۘۘ";
                                continue;
                            case 1159195612:
                                str = "ۨۡۜۘۚۨۡۘۡۛۥ۟ۨ۠ۗۘۨۢ۫ۧۖۦ۫ۜۨۜۥۖۦ۟ۢۨۦۦۧۜۡۘۦۥۥۤۢۥۧۨۘۡ۟۬ۗۛۘۘ";
                                continue;
                                continue;
                            case 1404267442:
                                String str3 = "ۖۢۥۖ۬ۜۥۢۢۖۜۗۜۚۜۦۢۛۘۘۘۘ۟ۛۛۘۙۤ۬ۡۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1665142138) {
                                        case -1306684536:
                                            str3 = "ۧۤۛۛ۫ۡۘۗۥۡ۫ۙۗۘۖۧۘۦۢۦۘۡۤۜۘۡ۫۫ۚ۟۠ۛۢۜۘۚۖ۫ۚۜۥۚ۟ۨ۫۫ۚۖۖ۠ۜۢ";
                                            break;
                                        case -608645885:
                                            str2 = "ۜۦۘۘۢۢۤۘۘۘۛ۬ۦۘۘۥۖۛۤۡ۫ۙ۫۬ۖۜۘۗ۫ۧۜۧۖۘۚۥۨۘۖ۬ۙ";
                                            break;
                                        case 632889437:
                                            str2 = "ۘۥۜۙۡ۬ۤۖۘۧۚۖۛ۠ۥۛۚۙۖ۟ۡۘ۟ۚ۠ۚ۟ۧۜۦۥۘۦۡۘ۫ۡۧۘ";
                                            break;
                                        case 1202743673:
                                            str3 = scriptOooO0oO != null ? "ۚۡۦۚۖۧۛۜۧۘۥۚۤۘۘۥۤ۬ۘۘۧۛ۠ۤ۟ۦۘۛۤۦ۫ۙ۟۟ۦۛۡۚۡۘۗۢۘۡۨۖۘۛۗۛۜۚ۬" : "ۧۢۨۘۗۡۘۗ۫ۖۘۙ۫ۦۘۦ۠ۢۜ۬ۥ۫ۨۥۘۡ۟ۥۗۥۢۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1963606166:
                                str2 = "ۨۜۥۘۗۚۦۥۢۜۗۨۘۜ۬ۢۦۚۢۧۙۡۘ۟ۚۜۡۗۨۘۢۢۨۘۗ۠ۖۘۖۢۤۧۤۥۧۜ۠ۛ۬ۥۗۨۧۘ";
                                break;
                        }
                    }
                    break;
                case 975057182:
                    break;
                case 1595398205:
                    scriptOooO0oO = b7.OooO0Oo().OooO0oO();
                    str = "ۜۙۦۦۘۢۦۜۢۗۥۧۥۗۜۘۖ۠ۘۘۡۤۚۤۢ۠ۜ۠ۦۘۖۢ۟ۖۖ۬ۗۧۡۤ۫ۛ۠ۚ";
                    continue;
                case 1680565953:
                    c5.OooO0Oo(getApplicationContext(), R.string.unbind_project_failure);
                    str = "ۚۥۥۘۥ۟ۚ۠ۗۙۜۘۢۚۡۘۦۢۗۘۗۛۦۜۥۘۖۚۥۙۡۧ";
                    continue;
                case 2102381336:
                    String str4 = "ۗ۬ۥۘۗ۬ۢ۬ۢ۟ۡ۠ۤۥۥ۟۫ۖ۠ۤ۬ۦۥۨۦۛۦۧۦۛ۬۬ۙۘ۠ۢۚ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1572666554)) {
                            case -1692812830:
                                String str5 = "ۚۤۦۘ۬ۢ۫ۜۘۥۘ۠ۦۘۘۡۢۙۨۢۨۚۚۡۦۦ۠۫ۖۘۘۗۨۨۘ۫ۚۥ۫۬ۡۚۚۚ۟ۤۙۡۜۚۜۚ۫۬ۖ۬ۨۘۛ";
                                while (true) {
                                    switch (str5.hashCode() ^ 416601464) {
                                        case -1862823090:
                                            str5 = "ۛۜۥۘ۠ۚ۟۬ۧۜۥۘۡۛ۬ۜۦۥۥۘ۫۠ۖۘۦۙۢ۫ۙ۟ۨۚۥ";
                                            break;
                                        case -685783225:
                                            str4 = "ۧۦۙۜۖۢ۬ۧ۬ۥۡۛ۠ۚۜۘۧ۠ۨۘۥۜ۠ۤۤۥۚۦۗۧۛۦۘ";
                                            break;
                                        case -329305373:
                                            str4 = "۟۬ۛۚۥ۟ۤ۠ۘۘۖۘۥۘۦ۠ۨۜۥۗۧۛ۟ۙۖۦۘۘۡۥۖۨ۟ۧۛۘۨۚۘۘۤۧۜ۫ۡۥۜۦۤ۫ۙۙۖۧ۬ۛۤۗ";
                                            break;
                                        case -106965230:
                                            str5 = this.Oooooo0 ? "ۢۡۘۘ۟ۖۧۤۛۖۨۢۢ۫۟ۥۙ۠ۜۧۥۘۙۥۘۗۧۚ۠ۖۨۛۢۦ۬ۘۧۘ۫۟ۘۘۗۡۘ" : "ۖۡۘۘۦۢۨۘۖۜۡۚۘۡ۟۫ۦۘ۫ۜ۠ۖ۫ۨۧۘۨ۫ۦۢ۫ۙ";
                                            break;
                                    }
                                }
                                break;
                            case 555264444:
                                break;
                            case 1632415184:
                                str = "ۘۤۦۘ۫ۡۧۜۢۗۘۚۘۚۗۥۘۨۛۧ۠ۦۨۛ۫ۙۜۚۗۡ۠۫";
                                break;
                            case 1698889978:
                                str4 = "ۗۚ۟۠ۧۗ۠ۖ۠ۘۢۖۘۛ۟ۙ۠ۙۖ۬ۙۡۘ۬ۚۚۙ۟ۧۦۦۦۨۧۨۘۥ۬ۗۖۢۙۗۜۘۢ۫ۡۘ۫ۛۚۘ۬۟ۦۖ۫";
                                break;
                        }
                    }
                    break;
            }
            str = "ۚۥۥۘۥ۟ۚ۠ۗۙۜۘۢۚۡۘۦۢۗۘۗۛۦۜۥۘۖۚۥۙۡۧ";
        }
    }

    private void initData() {
        String str = "ۜۥۖ۫ۙۦۘۡ۬ۡۘ۬۠ۦۘ۟۟ۢۗۛۡۨۜ۬ۖ۬ۖۡۡۨۖۢۙ";
        while (true) {
            switch ((((str.hashCode() ^ 418) ^ 719) ^ 357) ^ 1042479963) {
                case -293313202:
                    return;
                case -209227240:
                    this.OooooO0.setText(this.OoooooO);
                    str = "ۨۨ۫ۨۦ۫ۡۥۖۚۤۛ۫۟ۖۘۧۤۨۖۤۡ۫ۥۡ۠ۙۘۘۧۗۗۢۖۡۘۧۛۘۘۥۗۚۧ۠ۨ۬ۚۤۨۨۧ";
                    break;
                case 48964558:
                    str = "۫ۤۡۤ۟ۜۦۗۥۥۘۤۘ۫ۘۖ۟ۥۜۨۧ۟ۧۥۘۥۘۥۘۙ۬ۚ۫ۤۘۨۨۘۜۢۘ۠ۛۧ";
                    break;
            }
        }
    }

    private void initListener() {
        String str = "ۤۤۥۘۧۘۘۗ۫ۗۢۤۦۛۗۤۙۡ۫ۗۦۗۙ۠ۖۡ۬۠ۨۘۘ۫ۘۗ۟ۦۤۤۙ۟ۧۨۥۥۛۛۘۧۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 522) ^ 490) ^ 707) ^ 1767736409) {
                case -1790243296:
                    this.OooooOo.setOnClickListener(this);
                    str = "ۛۤۖۗ۬ۘۛ۟ۘۦۜۗۛۦۡۘۛۗۛۢ۬ۤۧۡۦۘ۟۠ۨۘۖۖ۟ۘۘۘۧۡۛۘۧۗۗۗۘ";
                    break;
                case -845820447:
                    return;
                case 912132643:
                    str = "ۗ۟ۖۘ۫۠ۦۘۦۧۖۨۙۨۘ۫ۗۡۘۗۙۨۘۤۥۗۡۛ۠۬ۥۦۘۡۧ۠ۧۘۗۥۤۦۘۙۤۡۘۖۤ۠۠ۢۢۚۤ";
                    break;
                case 2144898870:
                    this.OooooOO.setOnClickListener(this);
                    str = "ۘ۫۬ۡۤۡۘ۫۟۟ۢۢ۫ۨۦۡۘۦۗۨۛۨۘۢۤۖ۠ۗۥۘۨۦۚ";
                    break;
            }
        }
    }

    private void initView() {
        TitleView titleView = null;
        String str = "ۦۚۢۨۧۖۧۚۨۖ۬ۜۤ۟ۜۖ۟۠ۦۢ۬ۢۚۖ۠ۡۚۤ۫ۡۥۧۥۘۖۨۨۘۘۢۘۦۧ۬ۙۖۜۚۛ";
        while (true) {
            switch ((((str.hashCode() ^ 419) ^ 221) ^ 589) ^ 461799311) {
                case -1121498223:
                    str = "ۧۡۦۘۥۦۜۢۘۛ۫۠ۘۘۛۚۥۘۢۚ۠ۥۨۖۘ۫۫ۤ۟۟ۘۘ۫ۨۢ۬ۡۤۤۢۦۘ";
                    break;
                case -394111991:
                    this.OooooOO = (TextView) findViewById(R.id.tv_studio_unbind);
                    str = "۠ۚۨۘۡۘۘ۟ۖۦۘۤ۫ۢۤۦۘۘۘۘۚۤ۬ۥۙۡۥۛۘۘ۫ۖۘۖ۟۟ۚۢۧۨۜۚۧ";
                    break;
                case -247048814:
                    str = "ۨۘۖ۟۠ۜۘۤۤۧۘ۠ۙ۫ۖۜۦ۠۬۟ۘۗۡۢ۫ۡۛۘۘۦ۟ۛۙ۫ۡۖۥۘۘ۠ۘۚۨ۟ۛۗۤۤۦۛۜۡۖۧۚ۠";
                    titleView = (TitleView) findViewById(R.id.titleView);
                    break;
                case -184026934:
                    this.o0OoOo0 = titleView;
                    str = "ۤۗۘۘۤۗۦۘۧۧۨۘ۟ۚۡ۟ۖۚۖۜۗۨۗۤۡۛۡۘۘۗۡۙۦۚۥۢۜۘۢۖۦ";
                    break;
                case -167251419:
                    this.OooooOo = (TextView) findViewById(R.id.tv_studio_change);
                    str = "ۗۨۦۘ۠۬۫ۗ۫۬ۢۡ۬ۥۨۘ۠۟ۢۢۢ۟ۙۤۡۘۚۡۜۖ۫ۦۘ۠۫ۥۘۜۗۧۨۗۖۘ۟ۦ۬";
                    break;
                case -71297780:
                    this.OooooO0 = (TextView) findViewById(R.id.tv_studio_bind_code);
                    str = "۠ۗۜۤۚۜۨۘۡۢۤۚۡۚۢ۠ۢ۠ۨۧۥۘۖۢۥۘۧۛۘۛۘۡۡۛۨۘۖۙۛۘ۬۠ۡ۫ۜۤۙۧۡۘۘ";
                    break;
                case 956653032:
                    titleView.setVisibilityTvRight(0);
                    str = "۫ۢ۫ۙۧۖۘۛۦۡۡ۟ۥ۫ۙۤۖ۫ۗۨۡۖۘ۬ۤ۟ۥ۬ۘۘ۫۫ۛۚۗۢۗ۫ۚۙۗ۠ۢۚ";
                    break;
                case 994169116:
                    return;
            }
        }
    }

    public /* synthetic */ void OooOOO0(View view) {
        String str = "۟۬ۡۘۦۛۘ۫ۦۦۦۜۜۡۧۜۘ۟ۧ۬ۦۘۛۜۦۖۦۙۜۚۤۘۥۦۥۘ۠ۖۧ";
        while (true) {
            switch ((((str.hashCode() ^ 181) ^ 895) ^ 352) ^ 36162146) {
                case -2062779248:
                    str = "۫۟ۖۘۖۧۛۤۘۡۘ۠ۚۘۘۥ۫ۡۘ۫ۛ۠ۤۜۦ۫ۛۘۧۡۢۨۧ۫۬ۜۜۤ۠ۡۘۢ۠ۛ۬ۦۤۜۗۡۘ۫ۤ۫ۤ۬ۤۤ";
                    break;
                case -993607471:
                    return;
                case 804725381:
                    str = "ۘۚۛۛۜۘ۫ۘۦۘۤۚۜۨۤۘۡۚ۬ۧۧۖۘۦ۠ۦۘ۠ۛۚۧۘۚ";
                    break;
                case 1759690780:
                    OooOO0o(view);
                    str = "ۜ۟ۛۤۨ۟ۚ۠ۚۛ۟ۚۖۧۛۜۨۗۧۜ۠ۤۨۚۖۘ۬ۙۦۙۘۦۚۘۘ";
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "ۥ۟ۗ۠ۖۘۤۡۘۤۢ۠ۨۙۨۙۢۛۡۧۘ۬۠ۡۛۚۜ۬ۖۛۘ۠ۘۘۨۙۖۘ۟ۤۨ۬ۤۗۥۙۢۘ۬۟۬ۛۥۛۢۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 48) ^ 911) ^ 554) ^ (-423042976)) {
                case -1894847342:
                    switch (view.getId()) {
                        case R.id.tv_studio_change /* 2131297392 */:
                            str = "ۜ۫ۨۘۤۧۗۥۦۡۢۚۘۧۖۢۘ۟ۨۘۙ۟ۘۘۗۤۤۤۜۤۨ۬ۙۧۜۥۘۖۥۙۚۦ۠۠ۤۡۘۜۨۨۜۥۤۘۗۙۢۙۤ";
                            break;
                        case R.id.tv_studio_unbind /* 2131297393 */:
                            str = "ۛۖۥۘۨۢۘۘۛ۬ۖۘۡۡۙۗ۟۫ۨۙۘۙۗۡۘۨۘ۠ۥۜۢ۠ۡۧۘ۠ۛ۠ۗۗ۬";
                            break;
                        default:
                            str = "ۜ۟۬۫ۧۛۤۛۨۤۧۤ۠۟ۥۙۥۖۘۘۜۨۘۛۦۖۘۥۜۤۧۡۦ";
                            break;
                    }
                    break;
                case -1518392795:
                    str = "ۧ۬ۖۧۛۘۦۙۙ۫ۦۨۚ۠۠۟ۤ۫۫ۦ۬۟۬ۨۘۥۢۢۨۜ۫ۨۥۤۢۛ۫۠ۨۦۘۘ۟۫ۤۙۢۗۖۡۦۦۦ۠ۦۙ";
                    break;
                case -1487176712:
                    finish();
                    str = "ۦۧۦۘ۬ۙۡۘۗۖۡۘۢ۬۫ۛۗ۠ۛۛۙۗۥۘۘۦۙۦۘ۫ۚۧۖ۬۠ۦ۠ۙۘۚۦۧ۫ۤۦۡۜ";
                    break;
                case -431979458:
                    OooOOO();
                    str = "ۨۥۗ۟ۨ۟ۥۛۤۘۜۧۘ۠۫۠۠۟ۛۦۨۘۗۨۨۘ۟ۗ۫ۢۜۗۗۚۘۘۘۦۘۘۢۡۖ۫ۡۜۨۨۘۦۗۖ";
                    break;
                case 678874337:
                    return;
                case 842805493:
                case 1627370971:
                    str = "ۦۧۦۘ۬ۙۡۘۗۖۡۘۢ۬۫ۛۗ۠ۛۛۙۗۥۘۘۦۙۦۘ۫ۚۧۖ۬۠ۦ۠ۙۘۚۦۧ۫ۤۦۡۜ";
                    break;
                case 935457398:
                    str = "ۗۡۦۧ۫ۡۘۦۧۘۘۙۢۥۘۢۘۥۘۗۤۘ۬ۦۘۥۢۤ۠ۦۖۘۙۜ۬ۖۨ۠ۦۗۘۘۤۘۧۘۖۤۘ";
                    break;
                case 1076002833:
                    StudioBindActivity.OooOOO0(this, true);
                    str = "ۚۦۦۘۤ۠ۚ۫ۡۚۧۧۥۗۡ۬ۗ۬ۙۥۥۨۘۚۨۧۗۨۗۚۖۧۜۤۚ۠ۡ۫۫ۦۜۘۜۤ۠ۤۜۘۜۧ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "۬۟ۙۢۖۨۨ۠ۚ۬۬ۘۘۖۘۖۘ۫ۥ۠ۘۧۗ۟ۚۦ۬ۚۙۛۖۚۨ۬ۚۢۖ۠ۧ۟۬ۚۨ";
        while (true) {
            switch ((((str.hashCode() ^ 554) ^ 720) ^ 376) ^ 745488509) {
                case -1958327390:
                    super.onCreate(bundle);
                    str = "۬۬ۜۢ۫ۘۘۙ۬۠۠ۥۢۜۦ۟۠ۙۘۘۥۥۨۘۚ۟ۦۘۤۢۢۧ۟ۧۢۚۧ۟";
                    break;
                case -1608448198:
                    initView();
                    str = "ۦ۫ۘۘ۟ۗ۠ۢۖۛ۟۫۠ۛ۬ۘ۟۬ۘۘۘۨ۟ۜ۬ۛۘۨۤۗۤۗ۟ۥۘ۟ۡۧۘ";
                    break;
                case -1378779184:
                    OooOO0O();
                    str = "ۘ۬ۨۘ۠ۚۦۜۡۥۘۖۤ۫۬ۧۨ۟ۛۡۛ۫ۡۥۙۡۤۜۘۘ۠ۛۡۤۧۘۖۜۤۥ۟ۗۜۥ۫";
                    break;
                case -1372985132:
                    initData();
                    str = "ۙۨۘۜۤ۫ۥۗۢۤۘۨۜۡۡۜ۟۠۫۬ۜۘۦۜۜ۬ۧۤۤۜۡۘ";
                    break;
                case -1169803464:
                    str = "۠ۤ۫ۘۛۥۤ۠ۘۘۗۜۗۢۤ۟ۘۧۚۤۙۤۗۗۚ۟ۡۢۛۧۢۤۙۥۘ۬ۢۡۘ";
                    break;
                case -1038413685:
                    return;
                case -637746556:
                    setContentView(R.layout.activity_studio_bind_clear);
                    str = "ۛۦۡۛۦۢۚۘۥۘۥ۟ۚۢۧ۟ۖ۠ۢۨۛ۠ۨۧۜۘۢۚۙ۫ۜۢۗۨۖۘۤۡۧ۬ۜ۟ۜۜ۠ۚۙۨۗۤ";
                    break;
                case 451341184:
                    str = "ۛ۠۟ۧۦۚۖۗ۟ۜ۠ۜۘۢۙۡۘۨ۬ۥۘۦۨۚۢۙۛۨۖۧۨ۟۟";
                    break;
                case 1769446353:
                    initListener();
                    str = "ۖۗۙۜۛۙۢۧۙۛۗۗ۟ۜۧۘۛۜۦۘۨۧۤۛۛۙۛۢ۫ۙ۟ۥۤۡۡۢۖۘۗۛۛۘۥ۠ۙۛۧ۬ۤۜ";
                    break;
                case 1783879397:
                    this.OoooooO = getIntent().getStringExtra(o00O0O);
                    str = "ۖۧ۫ۨۨۘۘۨۙۤۨۙۚۦۙۦۤ۠ۡۘۧۗۦۨۤۜۘۡۖ۫ۖۜۡۘۤۗۚۚ۠ۜ۟۬ۛۦ۫ۜۘۙۘۤۤ۟۠";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۜۗ۫ۗ۟ۧ۠ۥۦۘۚۗۥۖۗ۟ۡۖۚ۠ۢۚۡۡۘ۠ۜ۠ۦۨۥۦۥۡۘۜۜۦ";
        while (true) {
            switch ((((str.hashCode() ^ 491) ^ 134) ^ 584) ^ 1881068353) {
                case 337782419:
                    super.onDestroy();
                    str = "۠۠ۛۛۙۥ۟ۗۜ۟ۖۜۘۚ۫ۦۘ۟ۛۘۡ۬۬ۙۨۙۖۙ۠۫ۢۜۤ۠ۘۢۖۨۛۛۘۘۘۨۘۗۖۥۘ۠۫ۢۨۤ۠ۦۨۖ";
                    break;
                case 855395532:
                    str = "ۧۥۥۘ۬ۜۗۧۛۜۘ۬۫۠۟ۡۘۤۘۙۛ۟ۦۘۦۢۡۘۤۛ۟ۧۨۜۘۤ۟ۡۤۘۦۘۗ۫ۜۘۖ۫ۘۤۨۦۡۨۧۘۧۨۤۦۦۙ";
                    break;
                case 1958889728:
                    return;
            }
        }
    }
}
