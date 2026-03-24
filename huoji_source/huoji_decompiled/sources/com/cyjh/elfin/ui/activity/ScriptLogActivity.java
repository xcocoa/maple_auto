package com.cyjh.elfin.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.ac.R;
import com.anythink.expressad.video.module.a.a;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import z2.bh;
import z2.f6;
import z2.h6;
import z2.k4;
import z2.me;
import z2.q9;
import z2.t8;

/* JADX INFO: loaded from: classes.dex */
public class ScriptLogActivity extends BaseActivity implements View.OnClickListener, AdapterView.OnItemClickListener {
    private TitleView OooooO0;
    private ListView OooooOO;
    private Button OooooOo;
    private ArrayList<ScriptLog> Oooooo;
    private Button Oooooo0;
    private q9 OoooooO;
    private boolean Ooooooo = false;

    public class OooO0O0 implements TitleView.OooO0O0 {
        public final ScriptLogActivity OooO00o;

        private OooO0O0(ScriptLogActivity scriptLogActivity) {
            this.OooO00o = scriptLogActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۗۢۨۘ۟ۢ۟۟۫ۤ۟۠ۧۡۥۖۘۤ۟ۛ۬۠۬ۜۖۧۢۛ۠ۜ۟۟ۦۧۜۨۨۘۘۚۗ۫۫۠ۜۙۘۘۦۜ۬";
            while (true) {
                switch ((((str.hashCode() ^ 529) ^ 168) ^ 923) ^ (-1414675135)) {
                    case -1276791713:
                        str = "ۛۖۜۧۙۢۤۥۖۨ۫ۥۤۙۘۘۢۖ۠ۨۚ۬ۥۚ۫ۛۡۛۘۢۦۨۧۨۥۖۖۘۛۨۜۘ۟ۙ۬";
                        break;
                    case -909728091:
                        this.OooO00o.finish();
                        str = "ۛ۫ۧۖۤۡۘۡۘۚۖۖۨۥۥ۫ۦۜۗۘۖ۟ۢۥ۫ۧۚۙۦ۫ۤۨۤۙۙ۠ۙۜۨۘ۠ۗۨۘ";
                        break;
                    case 1338423528:
                        str = "ۛۙۦ۫ۧۧۙۖۙۡۥۗۢۜۖ۬۟ۢۜۡۥۘ۬ۢۦۘ۟ۢۘۦ۟ۦۘ۫۟ۘۧۨۘۘۡ۬ۦۨ۟ۥ۫ۥ۬ۚۜۘۤۨۢ۟ۜۘ";
                        break;
                    case 2092516708:
                        return;
                }
            }
        }
    }

    public class OooO0OO implements TitleView.OooO0OO {
        public final ScriptLogActivity OooO00o;

        private OooO0OO(ScriptLogActivity scriptLogActivity) {
            this.OooO00o = scriptLogActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0OO
        public void onClick(View view) {
            String str = "۬ۖۨۧۖۘ۬ۢۤۙ۫ۨۘۚۚۥۘۚۙۧ۫ۙۨ۟ۥۚ۟ۖ۫ۧۘ۫۟۫ۡ۬ۤ۫ۢۛۨۛۛۧۡۘۚۖۙۜۚۥۘۘۖۦۘ";
            Iterator it = null;
            int i = 0;
            TitleView titleViewOooOO0O = null;
            TitleView titleView = null;
            int i2 = 0;
            int i3 = 0;
            TitleView titleViewOooOO0O2 = null;
            ScriptLogActivity scriptLogActivity = null;
            while (true) {
                switch ((((str.hashCode() ^ 675) ^ UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE) ^ 728) ^ (-524105306)) {
                    case -2094045810:
                        str = "۟ۤۚۚۢۡ۫ۤۜۘ۠ۖۘۘۥۘ۟ۛۧۦۛۦۥ۟ۙۘۖۧۘۘۜۖۨۡۧۧۘۛۖۧۜ۫۟ۥ";
                        break;
                    case -1730498696:
                        i3 = R.drawable.ic_cancel;
                        str = "ۛۚۦۘۘۛۡۘۡ۫ۨۘۛۙ۟ۜۛۘۢۦ۫۠ۖۥۘۙۡۙ۠۟ۖۛ";
                        break;
                    case -1535990201:
                        ScriptLogActivity.OooOO0(this.OooO00o).setVisibility(8);
                        str = "ۤۧۨۙۧۧۙ۟ۨۢۦ۬ۦۤۤۥ۬ۦ۠ۨ۟۠ۘۖ۫ۜۙۘۡۢ۬۬۫ۛۢۦۘۦۡۘۜۧۨۨۘ۠۬ۖۘۜۚۨۘۤۜ۬";
                        break;
                    case -1121344479:
                        str = "ۦ۠ۢ۫ۥۖۨۨۡۘۗۜۜۘ۬۬ۥۘۖۨۗۡۙۢۘ۬ۨۡۘ۬۬ۙ۟ۛ۬۬ۢۖۥۛۡۙۛۢ۟";
                        break;
                    case -732972905:
                        String str2 = "ۜۗۥۘۥۧۦۚۦۜۘ۠ۢۘۘۜ۠ۦ۠ۛۨ۫۠۠ۤۥۚۛۤۥۡۨۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1058176148) {
                                case -856962306:
                                    str = "ۛۙۛۙ۟۠ۙۥۦۚۙۙۡۦۛۙۛۦۥ۠ۦۘۥ۠ۘ۬ۥۨۨۘۗ۠ۧۘۘۢۥۛۦۚۜۘ۠ۖۨۘۧ۠ۥۢ۠۫ۗۛۛ۠ۜۘ";
                                    continue;
                                case -296204884:
                                    str = "ۥۚۜۘ۬ۖۘۘۨۡ۠ۜۙ۬ۦۘۗ۫ۤۤ۬ۜۘ۬ۚ۟ۧۛۦۧۡۡ";
                                    continue;
                                case 561156183:
                                    str2 = "۟۠ۤۚۗ۬ۛۚۧ۟ۦۤۚۤۚۡ۫۬۟ۛۚ۠ۚۥۘ۬ۙۥۘ۫ۗۤۖۧ۬ۡۡۘ۬ۨۥۘ۟۬ۘۘۚۡۖۥ۫ۜۘ";
                                    break;
                                case 2077957722:
                                    String str3 = "ۙۜ۟۠ۜۡ۟ۖ۬ۖ۫ۖۘۦۢۘۜۘۖۘۤۤۚ۟ۨۥۘۙۖۘۘۛۧۨۘۢ۬۠ۚۡۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 829619944) {
                                            case -1974158245:
                                                str3 = ScriptLogActivity.OooO0oO(this.OooO00o) ? "۠ۚۥۘۧۜۦۘۡ۠ۙۤۜ۬ۥۖۧۘۦۥۤۢۦۚۖۨۡۗۖۧ۠ۛۚ۠ۜۢۧۦۡۘ" : "ۤۙ۟ۚۙۥۥۦۙۢۡۧۘۚۦۡۘۚۢۥۥۖۛ۬۫۬ۤۥۧۘ۬۫ۨۘ";
                                                break;
                                            case -1480631205:
                                                str2 = "ۢ۠ۛۢۧ۠۠ۛ۟ۗۤۦۡ۫ۖۘۛۥۧۗۚ۫ۚۘۧۦ۫ۥۘۚ۬ۘۘۚ۫ۦۛۤۡۘ۫ۘۥۛ۫۟";
                                                break;
                                            case -896696545:
                                                str3 = "ۧۜۨۨۗۨۦ۟ۖۖۦۖۘ۬ۥۖۚۢۥۘۦۦۘۘۖۢ۟ۜ۬ۛۖ۬ۦۘۡۚۖۥۖۜۘۤۚۛۛۤ";
                                                break;
                                            case -374793414:
                                                str2 = "ۡۢۤۘۤۥۘۛۢۧ۠ۧۗۙۥۢ۫ۨۧۗۢ۬ۨۢۢ۬ۖۜۘۘۨۤ۬ۨۧ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -664292825:
                        str = "ۥۥۥۘۙۤۗۧۡۖۙۙۥۘ۬ۛۥۧۛۛۚۢۥ۬۬ۥۘۚۛۗۚۥۡۢۧۦۘۢۘۘۨۤۡۘۦۨ۟ۧۡۨۘۨۘۧۤۗۜۢ۟ۜ";
                        scriptLogActivity = this.OooO00o;
                        break;
                    case -629541179:
                        str = "ۥۥۦۖۜۗۥ۠ۥۘۦۗ۟ۘۗۖۨۧۢ۠۬ۙۢۛۢۜۘۙۥۜۛۨۜۗۢۢ";
                        titleView = titleViewOooOO0O;
                        break;
                    case -560121351:
                        str = "ۘۜۥۛۘۧۘۤ۬ۡۗۦۗۘۘۤۘۥۘۚۨۜۖۤۜۘۥۚ۫ۦۡۨ";
                        i = R.drawable.ic_manage;
                        break;
                    case -226227568:
                        str = "ۡۚۚۛۖۦ۬ۥۘۧۙۨۘۙۢۢۙۚۤۜۗۜۘۤ۠ۖ۟ۢ۬ۦۧۘۙۗۘۚ۠ۙ۫ۤۜۘۥ۠ۗۦۡۨۘۜۜۥ";
                        i2 = i;
                        break;
                    case -214784240:
                        str = "ۡۥ۠ۨۧۘ۫ۙۧۨ۟ۡ۟ۘۡۗۚۦ۠ۘ۫ۙۥۘۨۡۘۜۖۨۘۖ۠ۜۙۖۚۦۥۢۜ۬ۡۗۢۦۗۚۥۨۦ۠ۤ۬ۦۘ";
                        break;
                    case -184412845:
                        titleView.setRightImage(i2);
                        str = "ۛۘۚۖۧۡۛ۟ۘۘۦۗۗ۠ۢۤۥۧ۬ۨۜۘۦۖۘ۫ۚۛ۠۫ۦۘۢۦ۠ۦۛۖۘ";
                        break;
                    case -180646866:
                        ((ScriptLog) it.next()).setSelect(false);
                        str = "۟ۛ۠ۨۖۜۚ۟ۢۛ۠۫ۧۡۖۧۡۘۦۡ۟ۖۢۨۗۚۘۘ۟ۦ۫ۤۧۡۜۛۨ";
                        break;
                    case -120522058:
                        titleViewOooOO0O2 = ScriptLogActivity.OooOO0O(this.OooO00o);
                        str = "ۦۢ۫۫ۘ۬ۚۢۥۘ۠۬ۜۚۡۨۚۛۡۘۨۘۙۢۨۜ۫ۛۦۘۧۙۥۘ۫ۧۖۘۤۗۥ۠ۨۥۘۘۤۡۘۗۨۜۘ";
                        break;
                    case 112379860:
                        ScriptLogActivity.OooO0oo(scriptLogActivity, !ScriptLogActivity.OooO0oO(scriptLogActivity));
                        str = "ۥۖ۠ۛۗۤۥۨۡۜۤۜ۟ۡۧۘۥۜ۟۠ۙۛۤ۬۫۬ۢۦۘۗ۬ۖۘۥۘۨ۬ۛۖ";
                        break;
                    case 271887285:
                        ScriptLogActivity.OooOOO0(this.OooO00o).OooO0OO(ScriptLogActivity.OooO0oO(this.OooO00o));
                        str = "ۚۛۘۘۨ۬ۡۛۖۢ۫ۘ۫ۖۥۘۛۦۘۛۢۙۚۥۗ۟ۗۡۛۖ۠ۘ۟ۨۡۖۖۘۙۛۘ۬ۦۧ";
                        break;
                    case 614173005:
                        ScriptLogActivity.OooOOO0(this.OooO00o).notifyDataSetChanged();
                        str = "۟ۡۨ۟۫ۚ۠ۗۢۘۤۡۘۧ۬۠ۤۗۗ۬ۢۛۦۗۛۢۡۤ۠ۤۡۘ";
                        break;
                    case 1023474207:
                        str = "ۜۘۜۘۛ۬ۘۘۨۘۨۘۖۘۦۨۚۦۡ۫ۜۥ۠۬ۦۡ۟ۚ۬ۥ۠ۙۚۗۖۘ۠۠ۨۚۥۜۘۛۦ۬ۚۖۜۧۢۢۜۜۥۘۘۘۧۘ";
                        titleView = titleViewOooOO0O2;
                        break;
                    case 1042672232:
                        ScriptLogActivity.OooO(this.OooO00o).setVisibility(0);
                        str = "ۜ۠ۢۘۖۦۙۗۚۜۖۜۘۧۙۛۗۛۥۘ۠ۘۡۘۨۦۜۘۖ۟۫ۗ۠ۖ۠ۢۜۗۥۦۙۥۥۘ۫ۗۜۥۤۘۧۘۘۘۥۘۦۚۢ";
                        break;
                    case 1186222515:
                        str = "ۡۚۚۛۖۦ۬ۥۘۧۙۨۘۙۢۢۙۚۤۜۗۜۘۤ۠ۖ۟ۢ۬ۦۧۘۙۗۘۚ۠ۙ۫ۤۜۘۥ۠ۗۦۡۨۘۜۜۥ";
                        break;
                    case 1271190243:
                        return;
                    case 1462529239:
                        ScriptLogActivity.OooOO0(this.OooO00o).setVisibility(0);
                        str = "۬ۦۚۖۧۜۘۢۚ۬ۘۚۘۘۦ۬ۗۚۦۚۢۙۧ۟ۘۢۜۦ۠ۢۖۚۧۡۖۘۦۧ۟ۜۖ۟ۨۙۜ";
                        break;
                    case 1639228287:
                        ScriptLogActivity.OooO(this.OooO00o).setVisibility(8);
                        str = "ۛۥ۬ۚۚۧ۠ۘۘۜ۬ۢ۬ۧۖ۬ۘۦۘۗۥۥۢۦۘۥۥۚ۠۠ۖۜۤۗۤۨ۠";
                        break;
                    case 1705466986:
                        it = ScriptLogActivity.OooOO0o(this.OooO00o).iterator();
                        str = "ۡۥ۠ۨۧۘ۫ۙۧۨ۟ۡ۟ۘۡۗۚۦ۠ۘ۫ۙۥۘۨۡۘۜۖۨۘۖ۠ۜۙۖۚۦۥۢۜ۬ۡۗۢۦۗۚۥۨۦ۠ۤ۬ۦۘ";
                        break;
                    case 1735190048:
                        str = "۬ۙۨۨۙۘۘۚۥۦۘ۠ۙۜ۠۫ۨۘۢ۬ۨۘۘ۠ۦۦۨ۫ۙۖۜۜۥۤ";
                        titleViewOooOO0O = ScriptLogActivity.OooOO0O(this.OooO00o);
                        break;
                    case 1981215565:
                        str = "ۦۨۧۘ۫ۧۥۘۥ۠ۖ۠ۖۘ۟ۨۡۘۜ۟ۥۘۖۘۜۘۡۖۨۗ۠ۤ۠ۦۛ";
                        i2 = i3;
                        break;
                    case 2012508538:
                        String str4 = "ۚۘۜۤۧ۫۫ۙۡۘ۫ۘۖۘۘ۬ۜۘۨۗۖۘ۬ۛۚۥ۟ۚۨۗ۟۠ۜۥ";
                        while (true) {
                            switch (str4.hashCode() ^ 1904649562) {
                                case -1885344119:
                                    str = "ۧۚۘۙۡۨۥۢۥۘۘ۬ۨۘ۫ۚۖۘۜۢۚۚۙ۠۫ۤۦۨ۠ۤۨۖۦۘۘۢۗۗ۬ۗ";
                                    continue;
                                case -1530099625:
                                    String str5 = "ۤۗۘۦۘۗۡۘۙ۫۬۟ۛۢ۬ۖ۫ۦۘۧۙ۫۫۠ۦ۬ۙۨۘۖ۟ۨۡ۫ۦۘۚۢۘۜۢۛۖۨۨۨۘ۟ۨۦۧۤۦۛ۫ۤ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1506383632)) {
                                            case -1564112033:
                                                str4 = "ۧۙۘۘۥۗۛ۠۫ۥۡ۬ۡۘۤۜۙ۠ۢۜۢۘ۟ۛۨۘۘۗۗ۟۟۠ۖۖۗ۬ۚ۠۬ۢۨۘۧۖۦۗۗ۠ۧۛ";
                                                break;
                                            case -1234758387:
                                                str5 = it.hasNext() ? "ۘ۬ۚۧ۟ۤۨۦۗۗۜۘۜۧۗ۬ۖ۫ۖۧۚۦ۠ۢۚۧۡۘۛۗۦ۫ۜۘۦۡۢۤۚ۫۠۬ۤۧۖۨۘ۬ۙۨۘ۟ۜۙ۬ۡۖ" : "ۦۚۘۘۚۙۨۚۧۨۘۢۙۨ۠ۡ۠ۢ۬ۜۘۤۡۖۜ۬ۜۜۘۥۢۛۛۙۖۘۡۚۧ۬ۘۖۙۦۡ";
                                                break;
                                            case 811018779:
                                                str4 = "ۤ۬ۛۢۧ۟ۘۗۖۘ۟ۥۜۘۙۢۚۜۙۧۗۥۛۛۗۥۤۛۨۘۧۢۥۘۗۨۡۗۨۛۘۦۜۘ۠ۛۦۤ۠۫ۛ";
                                                break;
                                            case 975209254:
                                                str5 = "ۡۖۜۤۧۨۘۧۛۘۘۥۖ۠ۤۥۜۘۜۦۡۘ۠۠ۥ۬ۢ۫۫ۨۚۘۙۙۤ۠۠ۥۗ۬ۘۦۙۜۜۗۙۙۦۧۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 780876901:
                                    str4 = "ۦۙۨۢۦۦۙۤۥۙۨۚ۫ۚ۟ۛۤۦۘ۠ۘۨۘۡ۬ۡۘۤۖۙۛ۫۬ۖۤۜ۟۠ۖ";
                                    break;
                                case 1831841340:
                                    str = "ۤۚۥ۬ۥۥۘۦۜۛۗۙۜۘۖۧۢۙ۠ۨۨۗۨۘۖۢ۠ۛۗۤ۫ۘ۫ۚۙۜۘۧۖۗ";
                                    continue;
                            }
                        }
                        break;
                }
            }
        }
    }

    public static /* synthetic */ Button OooO(ScriptLogActivity scriptLogActivity) {
        String str = "ۦۡ۠ۙۖۙۗۧۥۘ۠ۘۨۘۨ۠ۧۡۗۙۘۙۛ۠ۧۦۘۢۡ۫ۧۘ۫ۜۜ۠ۧۥۤ";
        while (true) {
            switch ((((str.hashCode() ^ 86) ^ 659) ^ 560) ^ (-1993457955)) {
                case -848610390:
                    return scriptLogActivity.OooooOo;
                case 1278908249:
                    str = "ۚۜۨۘۙ۠ۘ۫ۛۦۘۖۦۘۗۨۤۦ۟ۚۡۖۘۢۛۦۘۙۘۜۘ۟ۗۥۢ۠ۥ۬۠ۦۘۖۚۦۘۜۚۧۢ۫ۨۢۨۜۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ boolean OooO0oO(ScriptLogActivity scriptLogActivity) {
        String str = "ۦۖۜۚۜۤۗۘ۠ۨۚۜۘ۟ۡۜۖۚۜۢ۟ۦ۟ۗۡۤۤۜۘ۬ۡۗۛۦۡۙۛۛۜ۬ۖۘۙۡۛ";
        while (true) {
            switch ((((str.hashCode() ^ 484) ^ 711) ^ UiMessage.CommandToUi.Command_Type.GET_FW_TEXT_COLOR_VALUE) ^ (-2111355969)) {
                case 1085266897:
                    return scriptLogActivity.Ooooooo;
                case 1934174954:
                    str = "ۖۜۖۜ۬ۖ۬۫ۖۘۘۤۥۚۛۡۘۢۗۜۢۘۡۘۧۜۧۖۛۜ۬ۤۘۘۧۢۡۘۚۚ۟";
                    break;
            }
        }
    }

    public static /* synthetic */ boolean OooO0oo(ScriptLogActivity scriptLogActivity, boolean z) {
        String str = "ۚ۫ۖۡۘۥۘۧۙ۫ۥۤۢۥۤۤۡۧۡۘۘۙۤۤ۠۟ۛ۫ۦ۠ۖۦ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) ^ me.o0000O00) ^ 1) ^ (-996328937)) {
                case -1937546815:
                    scriptLogActivity.Ooooooo = z;
                    str = "ۙۘۚۡۜۙۢۡۖۜۡۖ۫ۘۥۧۥۘۙۙۤ۫ۗۜۨۥۙۘۤۗۧۤۦۖۥۘ۫ۗ۬ۜ۬۠ۛۘۥۥۜ";
                    break;
                case -1730588025:
                    str = "ۖۦۥۘۤۤۖۘۨۚۡۚ۬ۥۘۙ۠۟ۖۥ۠ۖۥۘۡۥۡۘۡۖۤۦ۫۫ۖۦۙۛۜ۬ۢۖۨۢۙ۬";
                    break;
                case -1295694956:
                    str = "ۚۜۤۘۡۗۜ۬ۚ۬۫ۥۥ۬ۜۘۧۚۤ۟ۗۦۘۤۙۦۤۧۤۨۘۙۨۦ۠ۤۚۡۘۖۨۜۤۧۛ۫ۙۦ۠۬";
                    break;
                case 1822476418:
                    return z;
            }
        }
    }

    public static /* synthetic */ Button OooOO0(ScriptLogActivity scriptLogActivity) {
        String str = "ۜۜۖۘ۠۫ۖۘۛۜۙۡۙۥۜۛۦۘ۠ۤۦۘ۫ۨۖۥۜۦۢۗۢ۟ۜۘ۟ۢۦۘۛۡۘۨۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 39) ^ 667) ^ 768) ^ 741345171) {
                case -820881954:
                    return scriptLogActivity.Oooooo0;
                case 286323294:
                    str = "ۖۧۦۘۗۢۡۘۤۦۦۘۗۙۘۘ۟ۨ۬۫ۘۧۘ۟ۨۦۘۗۛۧۡ۠ۘۘ۠ۚۛۚۢۢ۬ۤۖۘۨۧۨ۟ۘ۟";
                    break;
            }
        }
    }

    public static /* synthetic */ TitleView OooOO0O(ScriptLogActivity scriptLogActivity) {
        String str = "ۥ۟۠ۧۘۘۗۗۖۥ۬ۡۘ۬۬ۛۛۛۧۥۨۘۘ۬ۜۦۡ۫۬ۙۤۖ۠ۖۜ۠ۤ۟";
        while (true) {
            switch ((((str.hashCode() ^ 593) ^ UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK_VALUE) ^ a.N) ^ 480845053) {
                case 1478037820:
                    return scriptLogActivity.OooooO0;
                case 1675573796:
                    str = "۟ۘۜۘۦۨ۫ۢۙۗۛۗ۫ۛۢۡۘ۫۬ۢۦ۟ۤۢۚۧۤ۟ۘ۬ۦۜۘ۠۠۠ۥۧۖۚۖۦۢۙۖۘۚۚۢ۬ۦۦ";
                    break;
            }
        }
    }

    public static /* synthetic */ ArrayList OooOO0o(ScriptLogActivity scriptLogActivity) {
        String str = "ۧۢۙۘۤۘۘۗۥۖۧۢۦۘ۠۟ۖۘ۫ۦۚۨۨۙۘۖۗۙۛۘ۫ۥۥۧۘ۫ۦۥۧۘۧ۠ۢ";
        while (true) {
            switch ((((str.hashCode() ^ 710) ^ 661) ^ 662) ^ 721843871) {
                case -1089260409:
                    return scriptLogActivity.Oooooo;
                case 179195389:
                    str = "۬ۡۥۗۜ۬ۚۡ۫ۢۚۦۘۢ۟ۜۘۢ۟۟ۚۛۜۘ۬ۥۢۧۧۥ۠۠۫ۦ۫ۨۥۢۘۙۦۤ۫۟ۨۛۖ۟ۘۤۖۘ";
                    break;
            }
        }
    }

    private void OooOOO() {
        String str = "۬ۖۜۛۨۗۥۤۨۘۨۛۜۡۘۛ۫ۜۘ۬ۙۨ۫ۗۙۨ۠ۨۘۤۚ۬ۨۥۨۘۡۦۦۜۥ۬ۛۗۛۨۛۡۙ۫۫";
        ScriptLog next = null;
        Iterator<ScriptLog> it = null;
        ArrayList arrayList = null;
        boolean z = false;
        boolean z3 = false;
        Iterator<ScriptLog> it2 = null;
        while (true) {
            switch ((((str.hashCode() ^ 867) ^ 918) ^ 842) ^ 396093891) {
                case -2036229683:
                    str = "۠ۚۗۤۥۨۘۡۙۖۘۤۘۜ۬۟ۢۗۡ۠۠ۡۧۛۨۗۨۖۘۘۡۤۛ۫ۨۦۘۤۖۡ";
                    it = this.Oooooo.iterator();
                    continue;
                case -1951946735:
                    String str2 = "ۜۨ۫ۜۢ۟۠۠ۦۘۧۘۖۨۢۥۘۜۤۤۢۦۜۗۥۤۖۘۜۧۨۜۢۜۘۦۘۤۤۚۘ۟۫ۚ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1408442078)) {
                            case -2020695841:
                                str = "ۡۘۦۗۢۙۛۦۗۛۦۘۛ۠ۖۘۧ۬ۥۢ۬ۖۙۨ۠۠ۡۥۙۘۛۥۥ۠ۨۡۘۢ۫ۥۧۛ";
                                continue;
                            case 664222287:
                                str2 = "ۙۜۥۘۢۥۤۢۖۘۜۨۚ۬ۘۘۘۜۨۘۡ۬ۚ۫۫ۦ۟ۨۡۘۚ۟۬ۛۤۖۛۘۖۘۡ۟ۧ۫ۡۚ۬ۙۖۤۤۤ";
                                break;
                            case 684835609:
                                str = "ۢۡۗۨۗۢۢۗ۬ۨ۟ۢۛ۟ۤۙ۠۟۫ۜۘۜ۠ۨۗۦۖۘ۫ۖ۟";
                                continue;
                                continue;
                            case 1689930199:
                                String str3 = "ۤۤۢۦۘۙ۠ۥۤۙۨۘۗۙ۬ۥ۠ۛۚۦۘۖ۟ۜۘۨۢۨۙۡۨۖۨۘۘ۫ۘۘۢ۟ۖۧۡ۫ۦۘۚ۬۠";
                                while (true) {
                                    switch (str3.hashCode() ^ 1657376077) {
                                        case -1514016486:
                                            str3 = "۫ۚۧۗۘ۫ۖۙۙۗۗۘ۟ۦۘۧۥۙۙۢۖۘۗۙ۫ۚۡۡۘۘ۟ۦۧۙۛۢۢۚۗۨۢ۬ۥۤۢۨۘۖۦۘۨۖۗۧۨۤ";
                                            break;
                                        case -765577180:
                                            str3 = it2.next().isSelect() ? "ۧۥۜۚۜۡۘۘۢۗۚۚۨۘۥۛۦۘۧۤۦۨۤ۬ۤۧۥۗۡۚۙۡۨ۫ۙ۟ۙۧۜۗ۬ۦۢۢ۠ۦ۟ۡۘۚۜۖ۟۬۬ۦۦۥۘ" : "۠۟ۜۤۗۥۘ۠ۧۘۙۥۛۤۦۨ۫ۚۘۦۦۢۛۘ۠۬ۦۡۘۥۚۖ";
                                            break;
                                        case -413788122:
                                            str2 = "۠ۖۧۘۘۦۥۘ۟ۡۢۧۢۖ۬۬ۜ۠ۥ۫ۘۛۤۚۡۛۧ۬۬ۡۤۛۡ۟ۡۧۖۦۘۛۡۗ۫ۖۦۘ";
                                            break;
                                        case 1083939057:
                                            str2 = "ۢۙۘۘۡۡۜ۬ۗ۫۟ۥۥۛۧۦ۫ۤۢ۟ۤۥ۬ۖۜۘۢۙۧۥۢۥۘۚۜۡۘۨۜۧ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1489504720:
                    String str4 = "ۦۡۨۗۨۘۘ۟ۦۛ۠۫ۧ۫۬ۘۘۛۚۗ۬ۥۨ۬۠ۘۘۚۜۥ۬ۨۘۡۜۡۘۤۨۘۘۨ۫ۜۥۘۢۧۧ۬۠ۥ۟۫۬ۛ۠ۙۡ";
                    while (true) {
                        switch (str4.hashCode() ^ (-438444776)) {
                            case -2027194382:
                                break;
                            case -1992963049:
                                str4 = "ۗۢۥۙۖۨۘۢۤۥۖ۠ۘۜۖۘۖۚۨۖۚۘۘۡ۠ۥۡۦۢۘۖۢۚۨۜۘۘۥۙۙۤۗ۠ۜۗۙۦۘۢۜۡۘ";
                                break;
                            case 597049732:
                                str = "۫ۦۜۙۘۨۜۢۦۘۢ۫ۥۘۨۥۘۘۚۥۦۚۡۘۘۘۘۨۘۗ۬ۜۚۧۧ";
                                break;
                            case 597219947:
                                String str5 = "ۧۧۛۖۘۧ۟۫ۛ۬ۗ۫ۛۦۘۡ۟ۖۖۨۜۨۤۖۛۚۗۦۥ۟";
                                while (true) {
                                    switch (str5.hashCode() ^ 1940983407) {
                                        case 368703866:
                                            str4 = "ۥۗۙۨ۫ۢۗۡۨۘ۟ۤۧۖۧۘۘ۠ۦۨۘۙۗۗ۫ۧۜۧۗۜۘۜۤ۟ۛ۬ۖۘۚۛۥۘۢۡ۬ۧۜۘ";
                                            break;
                                        case 835309233:
                                            str5 = next.getFile().delete() ? "۬۠ۚ۠ۗۥۘۘ۠ۖۗۚۤۢۙۘۦۗ۟ۘۥۖۘۦ۠ۘۘۖۗۡ۟۬۠ۗۦۙ۠ۥۤ" : "۠ۖۚۨۗ۫ۘۧۖۘۢۘ۟ۙ۠ۥۧۨۖۘ۟ۛۚۘۨۛۚۡۦۦ";
                                            break;
                                        case 1015370179:
                                            str4 = "۬ۤ۟۟ۥۜۘۨۖۖ۟ۡ۬۬ۡ۫ۙۧ۠۫ۥۤۧۨ۠ۡ۠ۘ۫۫ۗۢۙ۬ۘۤۡۢ۬۬۬ۧۤۚۙۢۦۘۜۘ۫ۦۙ۫ۙۥۘ";
                                            break;
                                        case 1294647726:
                                            str5 = "ۛۧۖۘ۟ۛۜۡۛۗۘۤۨۘۨۚۜۘۙ۬ۖۘۧ۟ۜۘۨۡۥۘۚۧۗ۟ۙۤۛ۫ۘۡۚ۟ۖۛۥۥۘۥ۬ۢۚ۠ۢ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1470170702:
                    this.OoooooO.notifyDataSetChanged();
                    str = "ۚۖۘۘۖۛ۠۟ۨۦۘۥۘۡۘۦۨۜ۟ۡۙ۟۟ۖۘۘۦۧۡۧۤ۟ۚۥ";
                    continue;
                case -1008497123:
                    String str6 = "ۜ۟ۦۗۢۥۘۥۖۗۨۗۦۘۥۜۦۦۛۡۘۨۛۦۘ۠ۡۛۜۖ۫ۥۜۙۦۜۘۢۤۨۜۗۗۨ۠ۧۙ۬ۛۛۛۤ۟ۛۜۘۙۜۚ";
                    while (true) {
                        switch (str6.hashCode() ^ 1518761654) {
                            case -2044035835:
                                str = "ۦ۠ۦۘۡۥۗۚۡۘۗۙ۬ۗۢ۠۫۫ۘۜۜ۠ۧۧۚۢۡۥۘۥۡ۬ۜۙۛ۠ۧۜ";
                                continue;
                                continue;
                            case -801608641:
                                str = "۬۫ۨۘۥ۬۟ۡۗۚۘۨۙۦۢۡ۫ۘۢۗ۠ۖۘ۬ۨۘۨۖۢۚۖۜۘ۟۟ۚۧۨۤۦۙۥۨۖۧۘۙۤۦ۠ۥۦۗۤ۬ۗ۟ۡۘ";
                                continue;
                            case -451586483:
                                String str7 = "ۙۡ۟ۥۡ۬۫ۨۛۙۦۘۘ۟ۗۧۘۦ۬ۖۥ۫ۥۤۛۡۜۦ۟۠ۤ۬ۥ۬ۘۗۦۘۜۙۨۘ۫ۨۖۘۗۥۡۘۚ۠ۨۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 545098912) {
                                        case 67990170:
                                            str6 = "ۘۢ۟۠ۚۥ۟ۚ۟۠ۨۗۥۢۥۥۘۧۘۤۚ۫ۨۦ۠ۨۧۧۢۚۥۘۨ۫ۥۢۨۚۜۡۥۘ۬ۚۥۘ۬ۥۛۜۦۙ";
                                            break;
                                        case 269094799:
                                            str6 = "۟ۚۨۘۘۧۤ۫ۦۦۜۖ۫۟۬ۤ۟ۘۤۘۧۙ۟ۧۜ۠ۗۦۘ۟ۛۡۤۙۚۤۛۨ";
                                            break;
                                        case 1158245641:
                                            str7 = "ۘۥۖۘ۬۬۟ۘۨۛۘۛۛ۟ۚۚ۬ۜۧۖۚۦۤۜۘۨۚۨۘۧۡ";
                                            break;
                                        case 1797822386:
                                            str7 = it.hasNext() ? "ۛۙۙ۟ۖۖ۫ۛۢ۬ۤۖۘۥۡۘۚۥ۫ۥۦۜۜ۟ۧۛۗۘۘۙ۫۬" : "۠ۛۖۚۤۧۙۘۧۘۥ۬ۚۤۖۥۧۡۡۨۜۘۜۢۦۥۚ۫۟ۙ۟ۥۜۥۘۦۧۘۛۨۡۦۦۡ";
                                            break;
                                    }
                                }
                                break;
                            case 1311416780:
                                str6 = "۬ۢۗۖۚۨۗۖۖۘ۟۬ۘۥۦۦۙۤۚ۫۬ۖ۫ۦۦۘۨۧۘۘۖ۟ۡۘۚ۟ۛۘۘۜۖ۠ۖۘ۬۫۬ۧۚۥۡۘۙ۬۟ۚ۟ۜ";
                                break;
                        }
                    }
                    break;
                case -983872139:
                    str = "ۧۡۡۗ۟ۙۗ۬۫۟۫ۢ۟۬ۙ۫ۘ۟ۥۘۡۧۜۛۤۛۖ۠ۛۖۘۛۜۦۘ۬ۘۧ";
                    next = it.next();
                    continue;
                case -871278770:
                    str = "۫ۖ۟ۛۛۡۧۛۦۖۨ۠۟۟۬ۗۨۧۤۜۘۥۙۚۡ۬ۖۨۦۡۘ۟۟ۡۘۨ۠ۘۙ۠ۨۛۗ۬";
                    arrayList = new ArrayList();
                    continue;
                case -265653309:
                    str = "ۗۦۖۨۦۜۘۜ۟ۢۥۡۦۘ۬ۙۤ۫۠ۥۘ۫۠ۜۚۘۘۙۖۡۘۡۛۖۘ";
                    continue;
                case -115530332:
                    break;
                case 67474308:
                    this.Oooooo.removeAll(arrayList);
                    str = "۟ۜۤ۬ۧۨۡۖۜۙ۬ۜۧۖۥۧۧ۬ۡۡۖۦۢۛ۫۬ۦۘۡۘۛ۫ۥۧۙۧۘۜۛۘۢ۬ۜۘۦۘ۫ۗۙۛۡۙۖۛ۬ۥ";
                    continue;
                case 179010590:
                    String str8 = "ۥۗۧۖ۠۠ۙۘۗۥ۬ۨۘ۫ۚۚۜۙۦ۠ۗۧۢۧۡۨۜۖۘۗۤۦۘ";
                    while (true) {
                        switch (str8.hashCode() ^ 1458930806) {
                            case -1621655329:
                                str = "۟ۛ۬ۘۜ۠۟ۨۨۚۚۧۤۢ۫ۛۥۖ۟ۨۜۘ۫۫ۦۘۛۥۛۤۧۤۡۥۙۗۤ۟";
                                continue;
                            case -1601018085:
                                String str9 = "ۘۡۧۘۨۖۥۜۙۤۦۗۘۨ۬ۦۤۤ۬ۨۘۢۨ۫ۗۤۗۡۘۛۛۦۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-1010734802)) {
                                        case -1505805989:
                                            str9 = "ۧ۠ۦۙۢۨۘۚۙۥۘۦۛۚۜۡۧۚۧ۬ۙۖۨۥ۟ۜۤۘۘ۬۟ۧۢۜۢۘۗۦۘۜۛ۟ۜ۫ۧۢۚ۫ۜۙۨۖۦۛۚۖۧ";
                                            break;
                                        case 484246710:
                                            str8 = "ۧۛۚ۬۟ۡۘ۟۬ۥۚ۫ۚ۬ۢۜۧۢۖۨ۠ۖۜۜۡۘۜ۫ۦۤ۫ۖۘ۠۠ۦۖ۬ۙۢۡ۫ۙ۬۬ۢۗۦۜ۫ۦۨۘۗۨ۫";
                                            break;
                                        case 796826507:
                                            str9 = !z3 ? "ۖ۫ۨۘ۫ۧۛۛۦ۫۠ۢۗۛۧۚۗۥۖۘۜۤۜۘۡۖۧۛۖۡۘ۟ۡۙۘ۬ۗ۟ۙۘ۠ۤۧۤ۬۟" : "ۢۘۤۨۢۦۛۡۤۡۦۖۘ۫۫ۥۘۡۤۤۖۡۙ۬ۥۥۜۤۥۛ۫ۚۜ۬ۜۘۖ۟ۗۗۘۛۘۥۡۦۘۚ۠ۡۘۙۨۡۘۖۛ۬";
                                            break;
                                        case 1289333318:
                                            str8 = "ۦۗۜۘۡۘ۟ۜۡۥۢۥۙ۫ۛۡۦۖۖ۫۬ۛ۟ۘ۬ۚ۬ۦۤۗۜۚۨۛۥۚۡ۟۟۬۫ۘۖۤ۫۬ۘۗ";
                                            break;
                                    }
                                }
                                break;
                            case -1181780254:
                                str = "ۖۘۥۚۚ۫۬ۗۦ۠ۦۤۚ۠ۙۧۚۨۘ۟ۜۜۘۜۖۘۢۙۤۡۡۘۢۨۚۚۤ۟ۙ۬ۢۖ۬ۨۘ۫ۦۨۨۡۥ۠ۡۙ۫ۖۧ";
                                continue;
                                continue;
                            case 1000057967:
                                str8 = "ۗۥۨۨۧۡۧۡۘ۬ۧۛۙۙ۫ۛۧ۟ۛۤۧۦۤۛۧ۟ۘۘ";
                                break;
                        }
                    }
                    break;
                case 246689438:
                case 2046540599:
                    return;
                case 324401614:
                    str = "ۦ۟ۤۙۨۘ۬۬۬ۦۥ۠۬۫۫ۡۤۡۘۧۛۨۘۚ۟ۖۘۥۢۥۘۨۦ۬ۨ۠ۙۛ۟ۜۖۜۡۘۘۦ";
                    z3 = z;
                    continue;
                case 329267929:
                    String str10 = "ۘۖۘ۬ۨۨۡ۬ۗۚۙۘ۫ۢۥۘۗۥۛۡۙۢۡۨۡۘۥۧۥۘۡ۬۟";
                    while (true) {
                        switch (str10.hashCode() ^ (-896868936)) {
                            case -298727504:
                                str = "ۦ۟ۤۙۨۘ۬۬۬ۦۥ۠۬۫۫ۡۤۡۘۧۛۨۘۚ۟ۖۘۥۢۥۘۨۦ۬ۨ۠ۙۛ۟ۜۖۜۡۘۘۦ";
                                continue;
                                continue;
                            case 260119909:
                                str = "ۙ۠ۘۘۤۛۚۗۗۘۦۙۡۥۚۜۘۥۜۢۛۘۦۘۘۤۧ۠ۡۧۥۨۧۧ۠ۜۨۖۡۨۚۖۥۘ۠ۜۘۤۘۘ";
                                continue;
                            case 1256303832:
                                str10 = "ۦ۟ۘۘۙۥۜ۟ۚۛۘۚۨۗۤۡۜۦۧۧۛۙۜۛۡ۠ۜۨۘۛۤۜۘۨۧۙۜ۠ۚۙۖۛۡۛۨۘۤ۫ۙۢۦۖ۫ۦ۠ۚۨۘ";
                                break;
                            case 1525568355:
                                String str11 = "۫۫۠۬ۙۛۧ۠۟ۚ۠ۚۦۦۡۘۙۥ۟ۧ۬ۚ۬۠ۗۗ۫ۡۘۗۗۨۙۥۖۘۡۜۦۘۜۨۘ۬ۙۡۧۢ۠۠ۘۙۡۘۤ۫۠۟";
                                while (true) {
                                    switch (str11.hashCode() ^ 1856511421) {
                                        case -1782116970:
                                            str11 = it2.hasNext() ? "ۥۖۥۙ۠۫۬ۡۘۖۘۖۚ۠ۘۘۘۙۥۘۜۗۧۖۡ۫۫ۡۦۤۦۘۖۗ۫ۥۜۤ" : "۠ۚۘۘ۠ۤۖۗۢۖ۠ۦ۟۠ۘ۟ۦۨۜۦۦۙ۠ۦۘۧۡۛ۬ۖۗۡۘ۟ۧۖۡ۟ۡۙۥۥۚ";
                                            break;
                                        case -916405339:
                                            str11 = "۫ۙۜۤۤۧۘ۬ۦۢۗۤۢۙۦۘ۟ۙۡۖ۬ۜۗۨۖۖۘۖۨۥۘۚۛۡۨۦ۫ۦۢۖۘۡ۠ۦ۠۫ۖۘ۫ۧۖۙۖۖۘۡ۬ۜ";
                                            break;
                                        case 1064877006:
                                            str10 = "ۚۘۧۧۙۥۘ۠ۧۜۘۗۙۘۘ۫ۢۡۘۡۥۥۘۥۨۘۦۢۥۘۨ۬ۡۛ۫ۦ۠ۙۗۘۚۥۘ۟ۢۡ۫ۧ۬";
                                            break;
                                        case 1455125974:
                                            str10 = "ۘۨ۟۬ۦۘۛۦۨۘۚۡۖۤۜۡ۫ۖۘۜ۟ۙۧ۫ۨۘۛۧۨۘۜۥ۠ۘۥۗۢۘۧۦۘۚۙۤۨ۟ۦۤۜۥۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 478342616:
                    str = "ۢۨۥۘۥۨۜ۠ۚ۟ۢۜۧۘ۠ۧۜۗۚۜۘ۠ۨۛۥ۬ۥۘ۬ۧۖۡۨۨۚۢۡۢۢۘۘۧ۫۫ۧۚ۬";
                    continue;
                case 583278248:
                    String str12 = "ۘۢۛۜۧۚ۟ۤۜۤۨ۫ۤ۠ۘ۠ۙۚۡۘۘۘۥۖۘۘۨۜۜۗۥۜۘۙ۟ۦۘۛۚۨ۠ۜۥۘ۟۟ۜ";
                    while (true) {
                        switch (str12.hashCode() ^ (-265849284)) {
                            case -1972192061:
                                str = "ۚ۬ۥۚۡۥۛۡۖۧۜۘۜۢۦۚۖۜۘۙۦۘۤۗۘۘۙۖ۟ۥۛۖۡۘۛۢۦۙۛۛۦۘۖۛۤ۫ۚۜۘۘ۬ۥۘ";
                                break;
                            case -894062865:
                                String str13 = "ۗۙۤۚ۬ۛۡۚۡۨۙۘ۟ۡۦۚۛ۫ۗۦۜۘۗۚۦۚۛۦۖۧۢ";
                                while (true) {
                                    switch (str13.hashCode() ^ 857473659) {
                                        case -1991830757:
                                            str12 = "ۤۜۡۛۥۦۥۚۨۘۗ۠۬ۧۢۜۧۘۙۛ۠ۜ۫ۨۜۘۦۖۢۖۜۜۘۙۚۢۨ۫ۛ";
                                            break;
                                        case -514067651:
                                            str12 = "ۜۨۛۢ۫ۦۗۙ۬ۗۙۙۘۚۘۙۛۗۥۗۧۧۡۘ۠ۥۨ۠۟ۙ";
                                            break;
                                        case -286305917:
                                            str13 = next.isSelect() ? "۫ۨۥۚۧۥۘ۟ۙۧۨۡۘۦۜۘۘۨۧۙ۟ۘۚۙۘۘۖۛ۫۠ۨۤۢۧۡۘۨۥۙۚۢۚۘۚۚ۟ۡۘ۬ۢ۫۫۠ۖ۠۠ۢ" : "ۛۜۜ۫ۜۚۙۛۧۨۧ۠۟۟ۜۘۛۘ۠ۥۧۡ۫ۨۘ۬۫ۦۘۜ۬ۘۡۦۧۘ۟ۡ۬۠ۙۜۚۚۜۨۢۨ۬ۙ۬";
                                            break;
                                        case 1522046613:
                                            str13 = "ۡۚۦۘۚۢ۠ۦۛۤۧۢۢ۠ۜۢ۫۟ۚۙۖۗۚۘۥۛۢ۫ۖۚۗۥ۫ۡۧۥۖۘ۟ۚۙۨ۬ۛۛۙۨۘۗۧۘۘۙۦ۠ۘ۠ۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case -469550458:
                                str12 = "ۙ۫۟۟ۤ۟ۜۦۥۘۛ۟ۡۛۢۡۘ۟ۗۨۨۗۨۢۛۘۘۙۦۘۙۜ۟ۡۧۗۚۦۘ";
                                break;
                            case 198570033:
                                break;
                        }
                    }
                    break;
                case 674264896:
                    str = "ۢۡۗۨۗۢۢۗ۬ۨ۟ۢۛ۟ۤۙ۠۟۫ۜۘۜ۠ۨۗۦۖۘ۫ۖ۟";
                    it2 = this.Oooooo.iterator();
                    continue;
                case 790935562:
                    str = "ۡ۬ۙۧۙۖۘ۫۬ۘۘۦۙ۟۠ۤۤۢ۠ۨۘ۬ۖۘۢۧۘ۫ۢ۠ۧۜۙ";
                    z3 = false;
                    continue;
                case 792147403:
                    AppContext.OooO00o().OooOO0(R.string.scriptlog_unselect);
                    str = "ۥۘۢ۟ۦ۫ۘۛ۟ۧ۫۠ۢۥۙ۠ۨۨۘۢۡۛۙۖۜۘۚۨۥ۬ۧۡ";
                    continue;
                case 1703710416:
                    arrayList.add(next);
                    str = "ۗ۬۫ۙۚۜۡ۟ۘۘۖۙۧ۟ۧۨۘۤ۫ۦۗۢۨۖۢ۫۬ۚۗۥۘ۟۟ۦ۠ۜۡۡۗۖ۫ۡۤۢۦۦۡۘۡ۬ۙۘۦۛۡۨۖ";
                    continue;
                case 1786893575:
                    str = "۫۬۟۬ۗۗۡۖۥۡ۫۬۬۠ۗۡۖۥۧۨۖۖۖۥۘ۫ۘۦۙۧ۫ۦ۟ۖۘۦ۠ۨۜۤۧۧ۫ۡ";
                    z = true;
                    continue;
            }
            str = "۠ۚۗۤۥۨۘۡۙۖۘۤۘۜ۬۟ۢۗۡ۠۠ۡۧۛۨۗۨۖۘۘۡۤۛ۫ۨۦۘۤۖۡ";
        }
    }

    public static /* synthetic */ q9 OooOOO0(ScriptLogActivity scriptLogActivity) {
        String str = "ۢۤۨۚ۬ۦۘۖۦۦۘۜۙۤۧۚ۠ۢۜۧۢ۠ۜۘۘۗۜۘۘۨۨۘۤ۠۠ۧۨۖۘۤۦۗ";
        while (true) {
            switch ((((str.hashCode() ^ 316) ^ 79) ^ 12) ^ (-418830022)) {
                case 1194573019:
                    str = "۫ۖۡۙ۬ۤۖۛۡۧۨ۠ۛۧۧ۠ۜ۟ۢ۬ۛ۟ۗۜۘۢۦ۠ۖۛۘۘ۫ۚ۟ۨۜ۬ۖ۠ۖۘۚ۫ۘۛ۟ۘ۬ۙۖۘ۟ۦ۟ۛۢۥۘ";
                    break;
                case 1895982021:
                    return scriptLogActivity.OoooooO;
            }
        }
    }

    private void OooOOOO() {
        String str = "ۛۚ۬ۘۢۡۜۜ۬۫ۗۥ۟ۜۨۗ۫ۦۨۖۥۗۢۜۥۤۦۧۗۖۘۗۢۧۜۚۜۘۜۖۦۘ۟ۛۨۘۖۘۦۘۛ۬ۖ۬ۦۥۥۧۡ";
        int i = 0;
        ScriptLog scriptLog = null;
        File file = null;
        int i2 = 0;
        int length = 0;
        File[] fileArrListFiles = null;
        k4.OooO00o oooO00o = null;
        while (true) {
            switch ((((str.hashCode() ^ 154) ^ 590) ^ 908) ^ (-1730051831)) {
                case -2069095658:
                    scriptLog.setName(file.getName());
                    str = "ۦۦ۫ۘ۠ۥۘۚۛۡۜۜۜۥۢۤ۠ۡۢۧۛۖۘۘۨۧۗۨ۟۠ۨۖۨۜ۟ۨۚۧۙ۬۠۟ۦۤ";
                    continue;
                case -1933997647:
                    this.Oooooo.add(scriptLog);
                    str = "ۗۛۥۤۘۧۗۜۛۥۙۨۥۧ۟۬۬ۜ۟۠ۜۗ۬ۜۤۧۢۗۗۘۘ";
                    continue;
                case -1835163033:
                    str = "ۨۙۢۢ۠۠۬۠ۗۘۦۧۛ۟ۥۦۛۤ۫ۘۘۤ۟ۢۗ۫ۡۘۢۚۨ۫ۜۖۖ۬ۥۘ";
                    i2 = i;
                    continue;
                case -1749738546:
                    str = "ۚۦ۟ۢۦۡۘۖۜۜۘ۬۬ۦۘۘۙۦۨۚۜۜۤۛ۬ۧۤۚۜۘۨ۬۟ۜۢۦۘۧۢۦۘ";
                    i2 = 0;
                    continue;
                case -1454566546:
                    scriptLog.setFile(file);
                    str = "۫ۛۨ۠۫۟ۙ۠ۘۨۦ۫ۜ۬ۗۦ۟ۨۖ۟ۦۡۙۤۚۜۚۢ۟ۥۛۧۜۘۧۗۗ";
                    continue;
                case -1362910698:
                    this.Oooooo = new ArrayList<>();
                    str = "ۨۗۘۡۚۡۘ۠۫ۘۘ۠۫ۦۤۛۚۜ۬ۡۦۛ۠ۙۥۘۘۧ۠۠ۤۙۚۘۨۦۥۗۥۨۘۖۨۖۘ";
                    continue;
                case -1256922743:
                    str = "ۥۘ۟۫۠۬ۜۨۜۘۛ۫ۖ۠۟۫ۚۛۗۨۛۜۘ۬ۧ۬ۚۚۖۥۗۙۖ۟ۦۖ۬ۧۙۨۢ۠ۥۦۘۘۥۜۘۢۙۥۘ";
                    continue;
                case -1243944559:
                    scriptLog = new ScriptLog();
                    str = "ۙ۟ۖۤۛۦۘۛۜ۬۠ۢۡۤ۠ۜۡۢ۬ۜۘۗۥۦۜۚۛ۟ۢۙ۬۬ۨ۫۬ۖۘ";
                    continue;
                case -883990647:
                    str = "ۡۥۧۧۘۨۘ۟ۧ۠ۛۤۗۖۛۛۙۢۥۘ۫ۥۧۛ۠۠ۘ۠۫ۥۢ۬ۥ۫ۗۦۘۘ";
                    fileArrListFiles = new File(h6.OooO0O0).listFiles(oooO00o);
                    continue;
                case -379571742:
                    str = "۠۟ۘۘۜۧۚ۠ۢۖۗۙۖۜۧۘۚ۠ۜۚ۟ۜۨۥۚۗۜۤۥۘۧۘ۟ۢۥۧۡ۬ۘۦۡۖۦۧ";
                    oooO00o = new k4.OooO00o(".log");
                    continue;
                case -360488756:
                    return;
                case -47638271:
                    Arrays.sort(fileArrListFiles, new t8());
                    str = "ۢۥۘۘۘ۟۟ۗۤۦۡۤۧۧۦۡۘۢۨۜۘۚۨۖ۟ۚ۟ۧۡۘۘ۠ۘۜۘۘۨۘۘۥۨۨۘۦۥۖۛۚۡۘۖ۬ۘۘۘ۬ۥۘ";
                    continue;
                case -12055916:
                    str = "ۥۤۜۚ۫ۦ۟ۘ۫ۧۢۘۙۚۦۘۢۨۘۘۘ۟ۚ۠۠ۜۘ۫ۘۚ۫۠ۤ";
                    length = fileArrListFiles.length;
                    continue;
                case 308793888:
                    String str2 = "ۖۙۡۚ۬۠ۧۡۦۘۚۜۜۖۨ۟ۥۤۖۢۖۡۘۤۧۤۥۛۤۙۘۜۘۥۧۘۦۚۙ";
                    while (true) {
                        switch (str2.hashCode() ^ 1263542550) {
                            case -1202596169:
                                str2 = "ۦ۫ۛۜۚ۠ۧۢ۠۠ۘۖۦ۟ۡۘۧ۫ۦۡۚۖۘۚۢۧۙۡۥۚۜۢ۟ۘۥۘۘۨ۟ۨۚۦۘۖۗۖۘۚۦۘ۫ۨۥۦۦ";
                                break;
                            case -853850182:
                                str = "ۡۛۜۛۡۚۤۡۥۘۘۨۜۡۘ۟۟ۢۦۘۛۧۖۘۙ۫ۥۛۛۙۥ۫ۡۘ۠ۦۡۤۥۜۘ۬ۥ۟ۤ۫ۡۘ";
                                break;
                            case -132032485:
                                break;
                            case 1189724348:
                                String str3 = "۬ۥۦۘۨ۬ۦۘ۬ۧۖۘۤ۬ۨۘۛۥۦۘۛۡۙۢۥۦۘ۬ۡۗۨۨۥۘۜۢ۫ۢۖۘۜۜۨۨۡۛ۫ۖۛۡۙۜۤۖۥۘۙۨۨۛ۬ۦۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 352406218) {
                                        case -1734425483:
                                            str2 = "۟ۚۡۘۙۛۥۘ۟ۚۦۤۚۖۘۚ۬ۨۛ۬ۚۦ۬ۢۘۡۘۨۗۥۘ۟۠ۨۘۘۘ۠۟۫۟ۚۜۘۤ۠ۡۘ";
                                            break;
                                        case -709209051:
                                            str3 = "ۘۦۥۘۨۘۥۘ۟ۤۥۘۡۚۗۙۚ۫ۗۚۨۘۤۢۨۤۖۛۥۗۙۜۚۚۗۘۘۢۧۨۙۚۨ۠ۛۦ";
                                            break;
                                        case 1010930377:
                                            str2 = "ۗۛۦۘۦۙۚۘۙ۬ۥۖۦۘۥ۠ۧ۠۬ۘۖۗۡۘۥۜۙ۬۠ۤۦۖۥۘۥۗۨ۟۬ۗۦۡۘۘ۟ۘۛ";
                                            break;
                                        case 1083782817:
                                            str3 = fileArrListFiles != null ? "ۡ۠ۥۘۗۖۦۘۖۖۜۜۧۦۘ۟۬ۛۗۜ۟۠ۡۙ۬ۘۦۜ۬ۜۘۗۨۙۖۧۡۧ" : "ۤ۠ۙ۟ۛۖۘۙۖ۟۫۠ۥۨ۬ۙۙۖۖۧۛۗۘۥۖۨۙۛۡ۫ۧ۠ۛ۟۟ۛۜۥۚۛۦۥ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 852526072:
                    str = "ۚۦۧۤۗ۟ۦۥۙ۟ۡۧۡۖۖۘۛۖۘۡۛۥۘۙۛ۟۠ۦۥۘ۬ۤۘ۬ۗۨۘۚۖۢۥۦۘۤۥۥۘۢ۫ۦۘۧۡۖۘ۠ۨۤۜۚۢ";
                    file = fileArrListFiles[i2];
                    continue;
                case 1193945028:
                    str = "ۖۡۧ۟۠ۥۤۛۜۘۦۢۚۛۗ۟۬ۘۥۙ۟۠ۦۜۨۘۜۖۧ۫۬ۥۚۜۘۡۡۜۘۧ۬۬ۖۤ۬ۙۜۛۚ۠ۦۙۙۙۨۡ";
                    continue;
                case 1202773526:
                    String str4 = "ۤ۠ۖۘۨۛ۬ۡۜۘۛۛۡۘۘۛۨۨۤ۬ۘۡ۠ۚۡ۟ۧۚۖۗۧۡۘۚ۠ۖۛۦۧۗۡ۟ۧۚۜۗ۟ۧۦ";
                    while (true) {
                        switch (str4.hashCode() ^ 1863573876) {
                            case -953453822:
                                str = "ۚۘ۠ۚ۟ۢ۬ۨ۟ۙۗۦۥۢۢ۟ۛۦۙۙۦۚۨ۫ۢۚۚۚ۬ۡ";
                                break;
                            case -334071863:
                                str4 = "ۜۨ۫ۤۛۜۖ۫ۡ۬ۦۘ۠ۨۖ۠ۧۚۙ۟ۡۘۧۦۨۘۜۢۤ۫ۘۢۧ۬ۘ۬ۘۦۘۙۘۖۘ۠ۛۖۘۦۚۜۘۧۦ۬ۗۢۚۗ";
                                break;
                            case 916031640:
                                String str5 = "۬ۧۨۘۧۙۤ۫ۖۘۙۥۜۥۤۘۧۛۘۧۘۙ۫ۜ۟ۗۢۡۤۡ";
                                while (true) {
                                    switch (str5.hashCode() ^ 655836152) {
                                        case -1903984857:
                                            str4 = "۫ۥۨۤ۠ۡ۟ۛۘۘۖۙۤۙۜۥۘ۫۠ۨۜ۟ۡۡۡۖۘ۟۟ۛۧۢۜ";
                                            break;
                                        case -334172032:
                                            str5 = i2 < length ? "ۤۧ۠ۤۥۧۜ۫ۨۧ۫ۥۘۤۨۗۖۨۙۜۨۖۧ۫ۖۘۜۖۡۘۨۤۤۚۘۦۖۜۛۤۛۙۡ۬ۘ" : "ۛۗۖۘۜۚۜۚۡۨۤۨۥۖۚ۬۫ۗۚۢۘۨۘۛۗۥۘۚۚۥۗ۫ۦۘۜۦۦۨ۟ۨ۟ۛ۟ۚۗۥۦ۬ۙۖۖۡۢ۬ۚۦ۫ۖۘ";
                                            break;
                                        case 1343343551:
                                            str4 = "ۚۜۥۘۡۚۜۘۢۧۘۘۧۗ۟ۡۚۨۢ۫ۙۧۡۡۘۗۡ۟ۚۛۥ۬ۨ۫۠ۖۛۡۙۙۦۘ۠ۛ۠۠ۜ۠ۘۘۘ";
                                            break;
                                        case 2105716226:
                                            str5 = "ۧۡۧۦۥۥۘۨ۫ۡۘ۫۬ۦ۟ۗۛۦۨ۬ۡ۠ۚۖ۬ۜۘۡۧۥۛۚ۫";
                                            break;
                                    }
                                }
                                break;
                            case 1563110083:
                                break;
                        }
                    }
                    break;
                case 1399272095:
                    scriptLog.setSize(k4.OooO0Oo(file.length()));
                    str = "ۗ۠ۚۡۦۚ۫۬ۦۘ۟ۥ۟ۦ۟ۡۧۚۜۗۘۙۤۦۧOۧۖ۫۫۟ۢۗۚۘۘ۫ۦۜۘ۠۫ۥۘۛۜۧ۟ۛ۠";
                    continue;
                case 1415691445:
                    i = i2 + 1;
                    str = "ۘۥۦۘۧ۫ۦۙ۟۠۬۬ۥۛۛۡۘۚ۠۬ۨ۬۬ۦ۬ۥۘۤۜۜۨۛۥۘۡۛۧ۫۠ۛۗۦۘۘۜۜۘۡۚۢۗۜۤۘۤۚۥۗۚ";
                    continue;
                case 1657425867:
                    str = "ۚۦ۟ۢۦۡۘۖۜۜۘ۬۬ۦۘۘۙۦۨۚۜۜۤۛ۬ۧۤۚۜۘۨ۬۟ۜۢۦۘۧۢۦۘ";
                    continue;
            }
            str = "ۥۥۘۘۤۛ۬ۨۚۥۥۚۗۤۧۦۘۨۘۖۥۤۦ۫ۗۤۨۡۖۘۖ";
        }
    }

    private void OooOOOo() {
        String str = "ۘۚۦ۫ۘ۫ۧ۫ۧ۠ۛ۟ۦۛۘۘۚۙۤ۠ۥ۟ۖۘۦۘۚ۟ۗۡۨۘ۫ۡ۠ۧۥۧ";
        q9 q9Var = null;
        ListView listView = null;
        while (true) {
            switch ((((str.hashCode() ^ 845) ^ 543) ^ 132) ^ 1649988902) {
                case -1776154313:
                    q9Var = new q9(this, this.Oooooo);
                    str = "۟ۗ۟۠ۨۥۥۨ۬ۙۖۜۚۖ۫ۧ۟۫ۖۢۘۘ۠ۨۡۘۘۤۤۨۛ";
                    break;
                case -1611376054:
                    listView.setOnItemClickListener(this);
                    str = "ۧ۠ۧۦ۬ۙۖۤۙۖۥۗۗۧۛۘ۫ۙۙ۟ۖۘۗۤۘۘۦۧۧۖۜ۬ۚ۬۟ۙۦۤۛ۬ۨۢ۫ۨۘۡ۟ۜۘۤۙۥۘ";
                    break;
                case -1488552289:
                    return;
                case -959625708:
                    str = "ۖۘۗۜ۟ۡۘۗۨۥۜۖۖۖۗۘۘۧۥۛۥۛۘۘۚۛۤ۠ۡۤ۠ۥۘۡۥۨ۫ۚ۟۫ۥۘۗۖۚۨۦۡۚۖۡۡ۠ۦۘ۟ۤ۟";
                    listView = (ListView) findViewById(R.id.listview_scriptlog);
                    break;
                case -167967936:
                    this.OoooooO = q9Var;
                    str = "۠ۚۥۙ۬ۦۧۗۗۙ۬ۗۙۛ۫ۡۡۘۡۙ۠ۖ۬۠۫ۙۛۢۡ۠ۨۥ۬ۤۛ۬ۘ۫ۢۚۥ";
                    break;
                case -78793482:
                    this.OooooOO = listView;
                    str = "ۧ۠۬ۢۗۘۘ۫ۖۡۘۛ۟ۖ۠ۗۤۨ۟ۜۜ۠ۙۜۘۚۙ۬۠ۙۘۡۘ";
                    break;
                case -21323993:
                    str = "ۤۧۘۘۙۘۥۘۧۥۗۨۧۤۨ۟۟ۦۡۥۘۖۢۥۚۙۨ۬ۨۖۘۨۨۜۘ۬ۖۚۙۙۥۘ";
                    break;
                case 358700218:
                    this.OooooOO.setAdapter((ListAdapter) q9Var);
                    str = "ۦۛۦۨۖۨ۠ۤۤۦۙۦۘۘۡۦۡۖۖۘۡۘ۬۠ۤۨۘۢۧۡۘۢ۠ۚ";
                    break;
                case 1239178534:
                    OooOOOO();
                    str = "۟ۡۙۘ۟۫ۡۜۘۘۨۚ۟ۛۢۗۤۛ۟ۜۘۡۘۤۗۢۜ۠ۙۡ۠ۜ";
                    break;
            }
        }
    }

    private void OooOOo0() {
        String str = "ۥۜۥۘ۠ۧۥۚۖۡۘۙۡۙ۟ۥۜ۬ۥۤ۠ۤۥۘۡۗۜۧۨۜۘۖۢۗۦۘۖۖۘۙۛۢۦ۬ۥۧۘ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 434) ^ 598) ^ 838) ^ 1138604698) {
                case -2083317114:
                    titleView.setTitleText(R.string.scriptlog);
                    str = "ۛۥۘ۟ۚۧۖۛۖۘۥ۫ۖۘۤ۫۟۫ۢۘۘۤۜۤ۫ۨۘۗۧۥۘۚۗۖۖ۠ۖۢۚۨۘۚۗۡۘۤۥۘ";
                    break;
                case -1921963220:
                    this.OooooO0 = titleView;
                    str = "ۢۧۨۘۜۦ۫ۛۘۥۨۧ۫ۘۦۜۘ۬ۡۦۢ۠ۜۦۢۜۤۖۜۗۧۛۤۧۤۡۛ۬ۖۙۜۨۘ";
                    break;
                case -1460328911:
                    this.OooooO0.setOnLeftImageViewListener(new OooO0O0());
                    str = "۠ۜۤۖۚ۫ۥۢۖۢۦۛۚۗۨۘۜۜۙۗۗۥۘۦۢۛۥۙۦۘۗۙۛۖ۫ۘۦۜۘۢۡۚۡ۫ۛۤ۫ۘۚ۫ۥۡ۬ۨ";
                    break;
                case -1362844276:
                    this.OooooO0.setleftImage(R.drawable.ic_back);
                    str = "ۤۦۥۘۗۗۧ۠۬ۖۘۥۚۨۘۦۛۦۜۙۘۛۜۙۧۗ۬ۜ۟ۡۖۧۘۧۤۛۚۦۧۘۖ۬۟ۜۛ";
                    break;
                case 222871820:
                    return;
                case 393441396:
                    this.OooooO0.setOnRightImageViewListener(new OooO0OO());
                    str = "ۛ۬ۛ۬ۥۖ۫ۢۦ۫ۗۨۘۡۖۨۨۡ۫ۗۗۜۘۖۜۚ۫ۙۥۘ۠۫ۡۛ۟ۘۨۨۦۧ۫ۖۢۚۤۖۦۧۤۦ۟۟ۗۚ۟ۗ";
                    break;
                case 1135279196:
                    str = "ۛۦۘۘۡۨۘۦ۫ۘۘۛۙ۬۬ۡۘۢ۟ۨ۫ۨۨ۬۫ۖۤۤ۟ۗۗۡۗ۟ۢۦ۟ۗۛۛۧۗۢۥۘۡ۫ۦ";
                    titleView = (TitleView) findViewById(R.id.titleview_scriptlog);
                    break;
                case 1507102592:
                    str = "۠ۗ۬۬۫ۢۤۢۦۘۙۥۘۛۙۥۘۖۘ۠ۛۗۚۥۥۘۘۘۥۙ۫ۚۤ۬۟۠ۖۛۙۛۡۗۥۡۢ";
                    break;
                case 1742488311:
                    this.OooooO0.setRightImage(R.drawable.ic_manage);
                    str = "ۢ۫ۥۘۘۜۖۘۗۡۜۥ۬۠ۧۜۡ۫ۥۧۘۧۖۜۘۨۨۜۜۨۨۘ۟ۜۨ";
                    break;
            }
        }
    }

    private void initView() {
        String str = "ۜۤۘۘۦۢۧۖۧۘۘۗۧۡۘۚۡۛۖۜۡۤۥۨۖۦۙۨ۠ۥۢۘۢۤۘۙۧۜۗ۬۟ۦۘ۬ۙۥۘۙۘۦۘۛۘ۠";
        while (true) {
            switch ((((str.hashCode() ^ 392) ^ 424) ^ 56) ^ 627169333) {
                case -1990428931:
                    this.OooooOo.setOnClickListener(this);
                    str = "ۢ۫ۥۥ۟ۨۘۙۥ۬ۗ۟ۖۦۧۤۜۛ۬۠ۦۨۘ۟۠ۖۘۛۙۡۘۦۛۛۖۡۚۘۤ";
                    break;
                case -1490026601:
                    this.OooooOo = (Button) findViewById(R.id.btn_scriptlog_removeall);
                    str = "ۚۜۡۘۡ۬ۤ۠ۘۘۧۦ۫ۖ۬ۖۗ۟ۘۥۢ۟ۛۙ۟۠ۤۦۘ۠ۨۗ";
                    break;
                case -1245043520:
                    str = "ۘۛ۠ۤۚۘۘۧۧۨۘۘۚۙ۫ۡۤۜ۬ۨۘۖۨۜۜۧۘۧۙۖۘۢۨۚۙۚۛۙۛۙۜ۟ۙ۟ۜۡۡۘ۬ۧۢۦۜ۬ۦۢۙ";
                    break;
                case -39153652:
                    this.Oooooo0.setOnClickListener(this);
                    str = "ۤۥۨۘۛ۟۟ۜۡ۫ۘۧ۟ۚۧۗ۬ۚۖۛۗۦ۬ۤۗۧۜۧۖۜۙۘۥۤۙۤ۬۫ۡۨۦۡۡۚ۠۬ۗۧۢۢۡۛۦۚۧ";
                    break;
                case 17963620:
                    OooOOo0();
                    str = "ۘۡۦۖ۠ۜۢۢۖۘۥۧۗۤۚۛۙۖۤۡ۠ۢۗ۬۠ۖۗۛ۠ۢۚ";
                    break;
                case 772742867:
                    this.Oooooo0 = (Button) findViewById(R.id.btn_scriptlog_selectall);
                    str = "۟ۡۥۘۖۖۧۘۤۡۥۤۗۧۢۙۖۚ۠ۖۧۡ۬۟ۥۜۘ۬۠ۘۘۢ۫ۖۘ";
                    break;
                case 1229239435:
                    OooOOOo();
                    str = "ۖۨۢۦۚۖۢۤۜۘ۟ۖۦۛۨۛ۠ۦۛ۟ۚۥۖۢ۠ۨۜۘۖ۠ۜۘ۫۟ۧۙۥۖۘۜۚۛۜۢۦۘ۬ۘ۬ۢۨۖۘ";
                    break;
                case 1477678308:
                    return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Iterator<ScriptLog> it = null;
        String str = "ۨ۫۟ۗۢۦۘۚ۠ۘۧۤۖۢۤۛۙۨۡۘۙۖۘۘۦ۟ۥۖ۫۠ۗۥۚۧۥۧۘۧ";
        while (true) {
            switch ((((str.hashCode() ^ 746) ^ 893) ^ 906) ^ (-859911764)) {
                case -1196859782:
                case 1084424056:
                    str = "ۛۤۦۖۨۜۘۗۥۦۘۘۧۘۖۡۘۙۢ۟ۡ۟۬ۜۙۚۙۧۥۙۛ";
                    break;
                case -292472236:
                    switch (view.getId()) {
                        case R.id.btn_scriptlog_removeall /* 2131296823 */:
                            str = "ۢۡۧۘۦۢۘۘۤۦۧ۠ۥۙۨۖۗۤۨ۟۬ۗۙۘۦۜۡۘۛ۟ۖۘ";
                            break;
                        case R.id.btn_scriptlog_selectall /* 2131296824 */:
                            str = "ۥۚۗ۬۫ۖۢۤۘۘ۫۠ۨۗۘ۬ۙۚۙ۠ۗۘۘۦۥۤۜۘۧۘ۫ۚۙۛۢۡۦۜۚ";
                            break;
                        default:
                            str = "ۗۚۚۤ۠ۖۜۘۘۘۤۧۤۜۥۘۡ۬۬ۛۘۡۘۘۙۛۙۢۢۗۘ۟ۨ۬۬۬۬ۢ۟ۡۛۗ۬ۦۘۧۨۚۡۦۘ";
                            break;
                    }
                    break;
                case -90867757:
                    str = "ۛۘۘ۠ۘۧۘۤۘۡۦۨۙۗۜۖۘۙۜۧۨ۫ۤ۬ۡۖۘۜۡۛۘ۠";
                    break;
                case -89530730:
                    str = "ۨۛ۫۠ۧۡۥۧۜۘۖ۫ۘۘ۬ۗ۟۟ۘ۬ۨۘۦۘۦۗۧ۠ۜۘۛۗۙۨۛۢ۫ۦ۠ۖۜۦ۬ۚۗ";
                    break;
                case 6549585:
                    str = "۬ۖۘۘ۫ۢۦۘۗۜ۫ۤۛۛۛۦۜۘۤۧۦۘۨ۫ۥ۠ۚۛۢۥۖۧۖۥۤۤ۫ۥۨۥۘۤ۠ۚۖۜۥۘ";
                    break;
                case 246637421:
                    this.OoooooO.notifyDataSetChanged();
                    str = "ۨ۟ۙۚ۫ۨۘۤۙۘۘۜ۠ۖۖۖۦ۟ۛ۟ۧ۫ۥ۟۬ۦۖ۠ۨ۬ۖۘۖۜۤۜۖۤ";
                    break;
                case 266657555:
                    it = this.Oooooo.iterator();
                    str = "ۛۘۘ۠ۘۧۘۤۘۡۦۨۙۗۜۖۘۙۜۧۨ۫ۤ۬ۡۖۘۜۡۛۘ۠";
                    break;
                case 728124292:
                    String str2 = "ۛۘۛ۫۫ۛۛۖۤ۫ۡۜۘ۬ۚۙۤۤۜۘۦۡۥۘۙۡۨ۬۫۬ۢۖۥ";
                    while (true) {
                        switch (str2.hashCode() ^ 2125266306) {
                            case -1217580926:
                                str = "ۦ۠ۥۢۚۛۥۜۧۘۗۘۖۘۥۥۘ۟ۚۨۜۧ۫ۘۥۧۘۜۜۜۘۜۛۖۙۥ۠ۢۚۥۧۥۨۘۚۧۖۢۥۙۜ۬ۨۚۨ۟ۡ۫ۨ";
                                continue;
                            case 207457135:
                                String str3 = "ۤ۠ۨۘ۫۬ۡۘۙ۬ۘۡۘۘۜۡۜۘۥۦۜۘ۠ۗ۟ۜۘ۬ۥۖۖۘۛ۫ۡۢ۠۠ۢۥ۟ۦۨ۫ۦۧۦۗۖ۟۫ۘۘۙۙۨۘۥۧۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1456989443) {
                                        case -1848560112:
                                            str3 = "ۘۚۛۚۚۚ۬ۢۡۖۘۚ۫ۗۖۜۧۛۧۧۖۘۥۨۜۘۦۧۖۘ۟ۡۨۘۤۧۡۢۡۨ";
                                            break;
                                        case -790523658:
                                            str2 = "ۖۚۦۛۤۗۢۚۗۛۨ۫ۦۥۥۘۦۨۢۜۦۖۘۛ۬ۖ۠ۧۥۘۖۤ۬۟۬۠ۥۘۡۘۛۘۦۧۛۚ۠ۦۖۙۤۥۙ۠۟ۡۡۦۘ";
                                            break;
                                        case 169773907:
                                            str2 = "۠ۧۥۥ۟ۨ۟ۗۧۖۧۖ۟ۛۙۥۛۖۦۘ۬۬۬ۨ۬ۨۦ۠ۜۘۛۨۤ۬ۦۨ";
                                            break;
                                        case 2036424095:
                                            str3 = it.hasNext() ? "ۗۖۙۖۢۖۧۢۙۡۡۗۜۖۘۖۨۚۜۙۥۘ۟۟ۜۥۦۤ۟ۨۙۛۢۢۥۖۦۘۚ۟ۨۖۗۥ۬۫ۨ۫۠ۘ" : "ۥ۫ۗۥۢۡۘۖۤۡ۟۫ۧۙ۬ۘۘ۠ۧۨۘۘۥۧۨۤۜۘۥۛ۬ۛۦۘۘ۫ۙۗۚۘۢۡۜۧۚۨۡۘ۠ۜ۟ۥۛۙ";
                                            break;
                                    }
                                }
                                break;
                            case 1287579316:
                                str = "۬ۥۡۙۢۚۧ۠۬۠ۖۤۛۜۘۛ۫۠ۢۜۛۤ۬ۨۖۨۨۘۧۚ۬ۢۡۥۘۨۜۛ۫ۥۨۙ۟ۖۘ";
                                continue;
                            case 1564953462:
                                str2 = "۠ۧۧۡۧۘۘ۟ۛ۫ۗۗۗۖ۬۫۬ۢۖۘۢۦۖ۠ۚۥ۠ۨۡۗۡۦۘ۫ۢۡۘ۫ۖ";
                                break;
                        }
                    }
                    break;
                case 791314427:
                    OooOOO();
                    str = "ۛۤۦۖۨۜۘۗۥۦۘۘۧۘۖۡۘۙۢ۟ۡ۟۬ۜۙۚۙۧۥۙۛ";
                    break;
                case 891847826:
                    return;
                case 1420364365:
                    it.next().setSelect(true);
                    str = "ۦ۟ۨۘۙۛۖۘۡ۫۬ۧۜۨۘۤ۟۟ۚۗۧۧ۠ۨۘۚۤۨۢۦۤۢۙۘۘ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۗۢ۟ۖۥۦۙ۬ۤۤۙۗۦ۬۫۠ۤۚۖۛۜۘ۫ۘۗ۟۫ۨۘۙۛ۬ۥۙۙ۬ۙۡۘۛۙۢۘۜۡ";
        while (true) {
            switch ((((str.hashCode() ^ 631) ^ 99) ^ 964) ^ 393542896) {
                case -1867115274:
                    return;
                case -1785957997:
                    setContentView(R.layout.activity_scriptlog);
                    str = "ۘۙۦۚ۠ۜۤۥۨ۠۠ۛ۫ۛۖۗۨۢۙۜۡۘۙ۬ۥ۟ۧۥۦۙۘۘۧ۬ۨۘۛۛۗ";
                    break;
                case -1683386773:
                    super.onCreate(bundle);
                    str = "ۗۛۜۚۤۡۘۛۤۦۘۙۘۜۘۛۤ۟ۖۘۨۘ۬۫۬ۚ۬ۚۧۜۖۛۙۜۢۨۧۘۤۛۢۗۦۥۗۙۨ";
                    break;
                case -1482445320:
                    str = "۬ۚۨۘ۠۬ۚۗۦۘۥۡۜۘۧۧۜۘۙۨ۬ۘ۬۟۬ۖۖۗۢۨۦۤۤۗۦۨۘۢۥۙۦۘۘۘ۠۠ۗۥ۠ۖۦۚۥ";
                    break;
                case -488547586:
                    str = "ۦۢۜۘۛۚۖۧۨۜۧۧۦۘ۠۠ۨۢۢ۬۠ۛۨۘۤۨۙ۠ۨۘۗ۟۫";
                    break;
                case -193834726:
                    initView();
                    str = "ۚۡۡۘ۠ۤ۫ۥ۬ۖۘۡۦۙۦۜۨۘۤۘ۟۬ۥۦۚۦۜۘۡ۠۫ۤۚۘۗۙۘۘۖۜۗۙۢۘۘ۬ۜۥۙ۬ۡۙۘۨ۟ۘۘۦۨۗ";
                    break;
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String str = "ۘۤۖ۟۟ۡۦۚۤۥۤۦ۟۫ۥۚۡۖۧۚۢۛۧۨۤۦ۟ۨۗۧۨۧۧۤۚۨ۟ۜۘۗۡۨۘۤۥ۠ۜۗۜ۠ۗۢۙ۬ۢ";
        Intent intent = null;
        ScriptLog scriptLog = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_IMAGE_VIEW_VALUE) ^ 994) ^ 573) ^ (-1760194644)) {
                case -1707262673:
                    str = "ۛۤ۠ۖۧۚۜۥۖۘۤۖۨۚۖۜۨۙۚۘۡۚ۠۠ۥۡۡ۠ۖۛۚۘۖۦۘۤۛۙ";
                    break;
                case -376707368:
                    str = "۟۬۫۟ۥۥۘۜۗۜ۟ۗۙۙ۬ۨۘۥۨۖۘۨۜۨۘۨۥۥۚۡۜ۫ۚۡۘۡۖۦۘۥۦۖۛۙ۫ۦ۬ۢۢۜۚ۟ۧۡ";
                    break;
                case -155524502:
                    str = "ۚۨۘۗۜۢ۠۠ۡ۫ۥۜۥۚ۬ۚۧۙۤۤۖ۟ۘۢ۟۬ۖۘۥۘۧۘۤۛۙ۫ۙۢۢۗۘۚۨۗۛۤۨ۫ۚۢ۟ۤۨۘۜ۠ۧ";
                    break;
                case -100496404:
                    String str2 = "ۘۡۖۘۖۜۧۘۦ۬ۜۗۦۧۗۚ۠۫۟ۦۘ۟ۡۚۡۗۢۡۦۛۢۛۦۦۡۗۧۨۖۘۥۖۙۤۜۦ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1927851722)) {
                            case -592807027:
                                str = "ۢۗۗۧ۬۬ۡۨۗۚۖۤۘۥۧۧ۠ۡۘ۫ۚ۟ۗۤۘۖۗۨۛۗ۠ۗۤۙۦۜۙ";
                                continue;
                            case -207052819:
                                String str3 = "ۛۡۘۘۜۦۥۘۛۚ۟ۦۨۚۢۥ۟ۨۦۦۘۖ۬ۤۤۙۗۡۛۧۡۢۖۘ۫ۘۖۡۘۤ۬ۥۨۚۖۘۥۘۧ۫ۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ 539501928) {
                                        case -1611350855:
                                            str2 = "ۛۙ۫ۚۜۙۡۚ۠ۡۖۨۨۨ۠۠ۥۥۘۗۧۛۥۦۜۚ۬ۙۤۦۚۖۛۘۤۚۡ";
                                            break;
                                        case -885990187:
                                            str2 = "ۗۘۡۚ۟۫۟۟ۖۦۛۧۗۖۘۤۚۗۗۜۘۥۤۡۘ۟ۖۧۥۥۘ۫ۖۘۢۘۤ۠ۙ۫۬ۗۘۘ";
                                            break;
                                        case -489648167:
                                            str3 = !this.Ooooooo ? "ۢۚ۟ۥ۬ۥۢۖۘۚۛۖۨۘ۠۫ۛۜۘ۬ۛۦۘ۬ۘۛۖۡۦۨ۬ۨۘۜ۠ۚۧۙۖۧۥۥۨۡ۬۬ۚۥۧۘ۠" : "۫ۡ۟۫ۥۤۖۨ۟ۗۢ۟ۙۨۘۜۡۡۘۛ۫ۖۘۘۖۥۘۜۧۦۘۙۜۧۘ";
                                            break;
                                        case 155971695:
                                            str3 = "۟ۛۛ۫۟ۖۘ۫ۢۜۘۨۖ۬۫ۡ۫ۦۗۨۜۜۦۨۡۦ۬ۦۡۘۙۖۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1083908847:
                                str = "ۥۖۜۘۧۗ۬ۛ۟ۜۘۘۥ۠۬۠ۦۘۨۖۦۘ۬۠ۚۥۗۥۘۖۤ۬ۧ۬ۥۘۤۜۨ۬۠ۥۘ";
                                continue;
                            case 1104488323:
                                str2 = "ۘ۫ۙۡۗۦۧۥۛۤۚۥۘۤ۟ۨۨۧۥ۬ۘۡۙۖۨۘۘۖۚۦ۠ۡۧۖۘۖۧۗ۬ۦۦ۬ۤۢۚۨ۫ۨۘۥۦۘۖ۫۫";
                                break;
                        }
                    }
                    break;
                case 272012665:
                    str = "۫ۗۥۦۗ۬ۗۙۢۜۘۘ۟ۜۡۜۖۤ۠ۦۨ۫ۡ۫ۨ۠ۦۨۡۖ";
                    break;
                case 308514191:
                    intent.putExtra(f6.OooOoO, false);
                    str = "۫ۧۨۘۜ۫ۚۗۤ۠۫۬ۧۙۜۙۨ۬ۙۘۖۖۘ۫ۗۡۖۘۚ۬ۖۥ۠ۧۥۘ۫ۦۜۘ";
                    break;
                case 734511890:
                    intent.putExtra(f6.OooOoOO, scriptLog);
                    str = "ۗۚۜۜۤۥۘۜۡۢۤۘۘۘۧۥۚۛ۫۠ۦۚۨۘۘۚۙۖ۫ۖۘ۟ۥۦۡۥۢ۠ۙۚۘۙۙۙۢۖۘۘ۟ۨۚ۠ۚۨۢۡۜۜ۟";
                    break;
                case 1310641608:
                    str = "ۨۦ۠ۨۖۡ۫۟ۙ۫ۘۘۦۤ۬ۖۡ۬ۦۢۡۘۚۧۗۛۚۜۘۜ۠ۖۘ۟۟ۡۘۖۧۨۘۦ۫ۡۖۢۜ";
                    scriptLog = this.Oooooo.get(i);
                    break;
                case 1573009518:
                    startActivity(intent);
                    str = "ۢۗۗۧ۬۬ۡۨۗۚۖۤۘۥۧۧ۠ۡۘ۫ۚ۟ۗۤۘۖۗۨۛۗ۠ۗۤۙۦۜۙ";
                    break;
                case 1700672845:
                    str = "۟ۥۙ۬ۨۖۘۛۧۜۜ۫ۡۘۧۘ۠۠ۘ۬ۦۜۚۥۜۘۖۚ۟ۙۛۡۘۦ۟ۚۚ۠ۗۜ۬ۖۙۘۛ۟ۢۡۘۦ۫ۥ۬ۥۢۛۗۘۘ";
                    break;
                case 1921830134:
                    return;
                case 2000761744:
                    intent = new Intent(this, (Class<?>) ScriptLogDetailActivity.class);
                    str = "۬ۢۧ۟ۙۘۦۖ۫۬ۚۦۘۨۛۥ۫ۥ۟ۖ۫ۨ۬ۜۖۘ۟۟ۤۨۘۨ۫ۘۦۘۘۚ۫۬ۙۖۨ۟ۛۢۘۤ۫۠ۛ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۛۦ۟ۘۚۜۙۡۖۨۡۦ۫ۤۙۧۘۘۘۚۙ۬۫ۨۚ۬ۧ۬ۛ۟ۚۙۚۖۘ۫۟۟ۙۙۚۢۛۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 850) ^ 996) ^ 758) ^ (-175501615)) {
                case -1615870774:
                    super.onPause();
                    str = "ۛ۬ۙۜۜۖۘ۟ۜۜۘۢۧۢۡ۟ۚ۫ۛۨۘۥ۫ۡۘۦۨۛ۠ۛۛۧۡ۬";
                    break;
                case -1484843076:
                    bh.OooO0o0(this);
                    str = "۠ۙۥۘ۫ۜۧ۠ۧۥۘۗۡۜۡۛۛۗۨۡۙۗۛۜۜۨۧ۬۫ۚ۫ۖۘۥۨ۫ۛ۬ۧۜۛۨ۟ۦۢۚۢۙۡۗۦۘ";
                    break;
                case -331226791:
                    return;
                case 499922783:
                    str = "ۚۧ۠ۢۧۤۥ۫ۗۤ۠۠ۖۘۡۘۗۙ۠ۥ۬۟ۦۤۘۘ۬ۛ۠ۚۗۘۚۗۥۢۛۖۡۡۜ۟ۤۤۙۖۖۘ۠۟ۘۘۢۡۙۖۧ";
                    break;
                case 559416285:
                    bh.OooO0OO(ScriptLogActivity.class.getCanonicalName());
                    str = "ۘۙ۫ۦۙ۫ۚۨۖۘ۫ۨۜۘۧۧۨۘۡۘۥۖۢ۠ۜ۫ۚۤۛۨۦ۬ۚۗۧۧۨۗۜۛۚۘۗۧ۟";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "۟۫ۥ۠ۚ۟ۖۜۢ۬ۤۚۨۘ۠۠ۙۧۦۚۗۤ۠ۨۧۥۡۘۛ۫۬۬۠ۢۚ۫ۗۧۖۛۦۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 718) ^ 770) ^ 44) ^ (-1559092431)) {
                case -1567048672:
                    super.onResume();
                    str = "ۘۙۡۚۜۧۦۜۖۦۖۘ۫ۡۨۚۗۨۘۨۢ۫ۙۥۡۘۚۜۥۘۦۜۦۘۤ۬ۡۘۦۗۥۘۜۢۗۙ۬۠ۖ۟ۥۗۨۘ";
                    break;
                case -256343978:
                    return;
                case 64705529:
                    bh.OooO0o(this);
                    str = "ۤ۬۫ۨ۫ۥۘۛۚۨ۬۟ۨۘۡۨۢ۫ۖۦۘۙۧ۫ۨ۟ۦۚ۠ۦۨۧۖۜۥۜۙۤۧ۟ۢۤۙۖ";
                    break;
                case 78595800:
                    bh.OooO0Oo(ScriptLogActivity.class.getCanonicalName());
                    str = "ۨۥۘۘۨۙۥۘ۠۟ۖۢۛۗۗۥۗ۠ۚۡۗۚۥۘۧۡۙۧ۟ۘۛۨۖۡۜۧۘۧۤۚۖۜۧۘۘۦ۬ۢۘۥۘۦۡۖۘ";
                    break;
                case 1046405536:
                    str = "ۧ۬ۜۨۡ۫ۙۧۨۘۤۤۙۡۗۘۦ۟ۤۘۘ۠ۧۜۘۦ۟ۛ۟ۘۡ۫ۚۗ۫ۚۜۘۢۥۦۥۥۗۤۢۤ۬۬ۘۘ";
                    break;
            }
        }
    }
}
