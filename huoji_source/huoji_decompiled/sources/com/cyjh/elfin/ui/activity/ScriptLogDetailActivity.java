package com.cyjh.elfin.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executors;
import z2.bh;
import z2.f6;
import z2.k4;

/* JADX INFO: loaded from: classes.dex */
public class ScriptLogDetailActivity extends BaseActivity implements View.OnClickListener {
    private TitleView OooooO0;
    private TextView OooooOO;
    private Button OooooOo;
    private boolean Oooooo;
    private ScriptLog Oooooo0;

    public class OooO0O0 implements TitleView.OooO0O0 {
        public final ScriptLogDetailActivity OooO00o;

        private OooO0O0(ScriptLogDetailActivity scriptLogDetailActivity) {
            this.OooO00o = scriptLogDetailActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۡ۫۠۫ۥ۠۫ۗۛ۟۟ۨۘۥ۠ۜۘۗ۫۬ۦۜۛ۟ۥۤۗۛ۠ۜ۬ۨۘۘۧۖۤ۬ۦۛۤ۟۟۠ۡۜۢۨۘ۠ۢۖ";
            while (true) {
                switch ((((str.hashCode() ^ 730) ^ 532) ^ 431) ^ 459880603) {
                    case -205527853:
                        this.OooO00o.finish();
                        str = "ۦ۟ۘۘ۫ۖۜۘۥۜۜۘۖۗۖۘۧۢۡۘۚۗۚۧ۫ۨۜ۫ۘۘۘۦۨۘۙۚۗ۠ۦۤ۠ۧۥۘۚۙۜۘ۬ۤ۠۠ۡۢۡ۟ۜۘ";
                        break;
                    case 739914262:
                        str = "ۤۢ۬ۜۖۗۛ۠ۘۦ۬۠ۧۖۜۘۨ۫ۢۜۖۡۚۥۘ۠ۢۘۘۙۨۥۘۦ۠ۧۛ۬۬ۧ۟ۘۘۡۦۖۤۘۙ۠ۖۨ";
                        break;
                    case 1297190794:
                        str = "ۡۖ۬ۦۧۙۗۗۨۚۙۘۘ۠ۢۗۜۘۢۛۡ۫ۘۚۛۘ۫ۢ۬ۨۤۧۡۘۙۖۘ۫ۜۦۦ۟ۢۙۡۘۡۡۤ";
                        break;
                    case 1433218806:
                        return;
                }
            }
        }
    }

    public class OooO0OO extends AsyncTask<File, Integer, String> {
        public final ScriptLogDetailActivity OooO00o;

        private OooO0OO(ScriptLogDetailActivity scriptLogDetailActivity) {
            this.OooO00o = scriptLogDetailActivity;
        }

        public String OooO00o(File... fileArr) {
            try {
                return k4.OooOOO0(ScriptLogDetailActivity.OooO0oo(this.OooO00o).getFile(), 0, null);
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        public void OooO0O0(String str) {
            String str2 = "ۧ۠ۢۗۚۗۜ۬ۧۖۡۘۤ۬ۗۙۙۡۨۘ۫ۨ۠ۛۨ۬ۘۛۖۗ۟ۗۡۘۜۧ";
            while (true) {
                switch ((((str2.hashCode() ^ 967) ^ 536) ^ 364) ^ 1954672729) {
                    case -1950882633:
                        str2 = "ۗۢۦۥۦۘۘ۟۬ۢۤۧۙۢۚ۫۟ۗۤۜۢۨۘۛۧۜۘۡۚۦۘۘ۠ۘۘۚۦۙۧۛ۫ۘۥۡۘۙۨۖۘۡۙۜۗۢۡۘ";
                        break;
                    case -13192574:
                        super.onPostExecute(str);
                        str2 = "ۡۙ۟ۛۚۚۘۖۥۘۧ۬ۜۘۡۖۡ۟ۛۥۘۛۙۥۘ۬ۗۡۨۡۨۘ۫ۧ۬۟ۛۨۘ۬ۘۨۨ۟ۥۘۚۙۘۘۧ۬ۦۘۜۥۘۖ۫ۖۘۨۥۘ";
                        break;
                    case 177518282:
                        str2 = "ۡ۫ۖۘۤ۟ۖۤۥۧ۠ۚۖۚۘ۟ۢۢ۠ۚۖ۬ۚۜۧ۟ۛۖۘۡۡۘۘۜۖۦۘۖۤۤۦۜ۟۬ۢۜۘ";
                        break;
                    case 397411609:
                        ScriptLogDetailActivity.OooOO0(this.OooO00o);
                        str2 = "ۦۛ۫ۥۨ۠ۨۜۘۘۧۚۘۘ۫۟ۡۨۙۨۜۦۘۨۗۜۘۜۦۜۤۨۜۘ";
                        break;
                    case 567509284:
                        ScriptLogDetailActivity.OooO(this.OooO00o).setText(str);
                        str2 = "۟ۥۡۘۡۥۖۘۤۦۨۘۢۥۗۤۜۘۨۙ۠۟۠ۥ۬ۜۖۘ۟ۚۨۘ۠۠";
                        break;
                    case 1832825179:
                        return;
                }
            }
        }

        public void OooO0OO(Integer... numArr) {
            String str = "ۦۧۥۘۘ۠ۙۛۥۜۘۧۙۥۜۖۥۘۤۛۨۘۜۡۡۡۤۧۙ۠ۧۥۚۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ 725) ^ UiMessage.CommandToUi.Command_Type.GET_UIP_DATA_VALUE) ^ 528) ^ 349730634) {
                    case 225304607:
                        return;
                    case 634971105:
                        super.onProgressUpdate(numArr);
                        str = "ۛ۫ۗۦۘۘۘۖۢۨۢ۬ۖ۠ۚۖۖۖۘۗۢۜۘۤۥۤۗۛ۠ۗۖۡۘۨۥۙۨ۫ۗۜۦۧ۟ۢۘۘ";
                        break;
                    case 1113333499:
                        str = "۫ۢۥۥۛۢۛۤۜۖ۟ۥۘۚ۠ۗۨۖۦۢۜ۬ۡۜۖۥۥۧۥ۬ۧۡۜۘۦۧۙ";
                        break;
                    case 1348592007:
                        str = "ۦۜۗۤۖۘۘۖۖ۬ۖۛ۟ۛ۫ۥۘۘۦۡۘۙۗۖۘۗۖۦۘۗۥۙۦۚۖۘۤۧۙۘۦۘۡۤۨۘ۫ۘۦۘۡۖۜۡۛۧ";
                        break;
                }
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ String doInBackground(File[] fileArr) {
            String str = "ۧۡۥ۫ۥۥ۠۠ۛ۟ۚۤۧۢۖۘۤۜ۫ۧۡۧۘ۠ۦۘۧۥۥ۫ۘۦ۠ۥۗ۫ۨۜۘۤۗۗ۟ۜۨۥ۟ۖۦۚ۠ۖۢۢ۠ۥۧۘ";
            while (true) {
                switch ((((str.hashCode() ^ 285) ^ 139) ^ 650) ^ 1918178916) {
                    case 41508419:
                        str = "ۨۖ۟ۥ۟ۥۘۦۙۗۦۡۦۘۘۜ۟ۗۚۡۘۗۜۗ۫ۢ۫ۙۘۡ۟ۘۘۙ۫ۙ۠ۚۤۗۡۧۘۘۡۦۦۦۧۦۥۥۘ";
                        break;
                    case 310449603:
                        str = "ۚ۠ۚۧۢۜۘۖۥۙۤۙۧۡۦۗۦۧۙۜۨۚ۠ۦ۫۟ۢۧۢۚۥۘۦ";
                        break;
                    case 1846880927:
                        return OooO00o(fileArr);
                }
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(String str) {
            String str2 = "ۨۖۖۘۡۨۡۘ۠۫ۨۖۥۡۚۛ۫ۤۚ۟ۦۚۡۘۥۥۦۘۜ۬ۜۜۨۨۛۘۖۦۥۚۘۛۗ۟ۢۚ۟ۖۛ۫۠۫ۤۛۨۥۧۘ";
            while (true) {
                switch ((((str2.hashCode() ^ 771) ^ 538) ^ 492) ^ 1146447311) {
                    case -2052648169:
                        OooO0O0(str);
                        str2 = "۫ۦۦۤۢۧۥۘۗۜۘۥۙۖۘ۬ۦ۬ۘۥ۫ۢ۫ۨۘۖۘۡۘ۫ۙۜۤۨۛۙۡۥۘۛۚ۠ۧۖۢۙ۠۬ۜۢۚۖۜ۟ۨۤ";
                        break;
                    case -1094137056:
                        str2 = "ۘۗۜۘۦۤ۠ۖۦۖۘۤۙ۬ۚۘۜۧۦۤۛۦۘۗ۟ۨۧۛۘۜۢۡۙ۟ۙ۟ۦ۬۫ۛۛۗۚ";
                        break;
                    case 239105728:
                        return;
                    case 1786246641:
                        str2 = "ۡۘ۫ۦۤۜۘ۬ۙۡۘۨۥۧۛۨۧۨۦۦۤ۫ۧۤۢۙۦۚۛۗۨۛ۬ۥۘۥۢۥۘۗۥۧۚ۬ۚ۫ۡۙۛ۬";
                        break;
                }
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            ScriptLogDetailActivity scriptLogDetailActivity = null;
            String str = "ۧۢۜۘ۬ۤۢۘ۟ۢ۠۬ۜۚۦ۬ۧۨ۫ۗ۫ۥۘۙۚۦۘۗۖۚۦۧۦۘۖۜۖۘ۫ۢ۟۠۠ۖۘ۠ۤۧ";
            while (true) {
                switch ((((str.hashCode() ^ 998) ^ 897) ^ 160) ^ (-1989306425)) {
                    case -1729967869:
                        str = "ۘۜۡۘۗۦۖۜۙۢۘۦۥۘۢ۫ۡۘۗۖۛ۬ۘۦۜ۟ۦ۬ۧۨ۠ۧۜۗۚۘۘۥۥۘۘۦۨۡۦۥۨۤ۠ۥۧۥۛ";
                        break;
                    case -282363148:
                        super.onPreExecute();
                        str = "ۧۛۥۧۡۢۨ۟ۨۧۘۘۢۦۦۘ۠ۗۚۙ۬ۦۧۢۘۤ۬ۛۡ۟ۘۢ۬ۘۚ۬";
                        break;
                    case 574306686:
                        return;
                    case 1000480815:
                        scriptLogDetailActivity = this.OooO00o;
                        str = "ۢۦۜۢۗۖۘۧۧۤۖۢۖۘۢۧ۬Oۨۥ۫۫ۡ۬ۥۜۗ۟ۗۡۘۤۗۗۚ۫ۖ";
                        break;
                    case 1279323901:
                        ScriptLogDetailActivity.OooO0oO(scriptLogDetailActivity, scriptLogDetailActivity, R.string.scriptlogdetail_progressdialog_title, R.string.scriptlogdetail_progressdialog_content);
                        str = "ۥۡۢ۟ۘۥۛۙۦۘۧ۠ۚۜ۠ۡۘۚۛۥۛۘۦۖۡۢۡۖۦۘۗۧ۫ۛۨۖۘۥۡۨۚ۬ۥۘۨ۫ۦ۬ۧ۠ۚۦۥۘۘۧۗۚۛۨۘ";
                        break;
                }
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onProgressUpdate(Integer[] numArr) {
            String str = "۬ۙۦۧۧۥۘۦۖۡ۠ۙۥۘۤۚ۠ۦۦۙۗۨۘۚۜ۟ۙۨۜۘ۬ۖۧۘۢۙۡ۫ۗۚۘۜۘۘ۬ۡۘۘ۠ۖۜۘۢۘۦۨۜۗۗ۟";
            while (true) {
                switch ((((str.hashCode() ^ 110) ^ 524) ^ 908) ^ (-1058499380)) {
                    case -880176416:
                        str = "ۜۢۧۗۙۦۘۤۤۥ۫ۢۜۘۥۖۧۡۘۘۗ۫ۡۘۖۢۛ۫۬ۥۘ۠۟ۖۘۘۙۜۘۛۢۛۗۥۘۧۦ۫ۢۨۚ۬ۗۨۘۡ۫ۘۘۧ۫ۨۘ";
                        break;
                    case -610423516:
                        str = "ۖۨۦۘۙۖۙ۬ۧۧۡۚۙۥۥۜۙ۟ۢۦۨۘۘۙۘۥ۠۟ۤۙۦۛ۬ۨۗ۠ۜۘ";
                        break;
                    case -519233350:
                        return;
                    case 1263160573:
                        OooO0OO(numArr);
                        str = "ۥ۫ۨۥ۬ۨۘۖۡۡۘۥۘۦۘۡۧۜۘۡۛۖۘۜۚ۬ۦۧۜۥۘۧۢۤۡۜ۠۫۟۫۬ۡۚۨۘۢ۬ۚ";
                        break;
                }
            }
        }
    }

    public static /* synthetic */ TextView OooO(ScriptLogDetailActivity scriptLogDetailActivity) {
        String str = "ۖۢ۠ۚۙۢۡۚۨۘۢۗۜۘۦۜۡۧ۫ۢۨۚۦۜۦ۬ۖۗۗۤۡۘۜۛۖۘۤۤۥۡۚۥۘۖۛ۠۠ۥۘۖۜ۬";
        while (true) {
            switch ((((str.hashCode() ^ 688) ^ 319) ^ 937) ^ (-585560923)) {
                case -51717001:
                    return scriptLogDetailActivity.OooooOO;
                case 1831771374:
                    str = "ۙۜۡۘۙۘۖۘۛۡۡۗۚۗۚۛۦ۠ۧۖ۬۟ۧۧۘۖۥ۬ۘۤ۬ۜۘۤۧۡۘ۬ۚ۟ۛۗۡۘۛۨۨۘۤۡۢۨۖ۠ۜۗۖۗۢۜۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooO0oO(ScriptLogDetailActivity scriptLogDetailActivity, Context context, int i, int i2) {
        String str = "ۘۥۜۘۡۜۨۘۥۖۦ۬ۧۨۘۦۖ۫ۢۨۗۘۢۨۦۥۛۚۧۡۢۖۘ۟ۥۡۘ۠ۗۢ";
        while (true) {
            switch ((((str.hashCode() ^ 813) ^ 182) ^ 223) ^ 1688903864) {
                case -1797205222:
                    str = "ۥۚ۠ۤۛ۠۟ۗۖۚۧۡۡۡۨۘۧۡۚۚۖۙ۬ۘۦۘۜ۬ۛ۫ۤۚ۠ۡۢۨ۬ۖۗۘۘۛۜۖۖ۬ۤ";
                    break;
                case -86231545:
                    return;
                case 478452770:
                    str = "ۡ۠ۛۖۦۜ۠ۨۡۦ۫ۥۧۚۚۛۧۗ۬ۨۖۜۦۙۖۦۖۘۤۗۧۥۙۥۗ۫ۦۢۛ۬۫ۤ۟";
                    break;
                case 1258269490:
                    str = "ۧۚۖۘۤۗۙۨ۬ۖۛۥۤۛۥۘۗۥۗۗۥ۫ۧۧۡۛ۟۠ۡۧۛ۠ۡۗۤۗۥۘۦۖۙۦۚۜۘۨۦۦۚۤۗ";
                    break;
                case 1440358518:
                    str = "ۚۢۢۤۤۗۦۘۧۙۚ۟ۢ۟ۦۘۘۦۚۨ۠ۙ۬۬ۨ۫ۤۜۘۨۙۛ۟ۖۜۘۘۜ";
                    break;
                case 1589733679:
                    scriptLogDetailActivity.OooO0o0(context, i, i2);
                    str = "ۥۦ۫ۘۛۦۘۙۗ۟۫ۨۦۢ۠ۦۘۦۚۡۘۦ۠ۥۢۖ۫ۥۥ۬ۖۙۘۙ۠ۥۙۖۡۤۢۛۛۦۜۡۘ۬ۨۜۚ۟ۙۡ۬ۧۛ";
                    break;
            }
        }
    }

    public static /* synthetic */ ScriptLog OooO0oo(ScriptLogDetailActivity scriptLogDetailActivity) {
        String str = "ۧ۫ۙ۟ۢۛۙۛۢ۬ۜ۟ۖۧۤ۫۟ۙۧۖۜۥۛ۟ۤۚۚۤۛۗۧۜۘۘۖۜ۠";
        while (true) {
            switch ((((str.hashCode() ^ 468) ^ 983) ^ 330) ^ (-1418905062)) {
                case -1986494540:
                    return scriptLogDetailActivity.Oooooo0;
                case -1594100230:
                    str = "ۚۢۖۘ۬ۖۚ۫ۢۘۘ۟۫ۦۘۦ۠ۛۚۙۢۦۡۘۢ۬ۗۘۥ۠ۘۥۤ۠ۢۖۨۛ۠ۨۨۘۘۦۛۥۘۥۖۥۘۙۥۨۗ۠ۨۘۢۗۛ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOO0(ScriptLogDetailActivity scriptLogDetailActivity) {
        String str = "ۛ۠ۚۜۖ۬۬ۦۛ۬ۥۘ۬ۜۜۘ۠ۙ۟ۤ۫ۚۚۗۘۘۦۙۨۘ۬ۙۦ۬ۛ۟ۥۦ۫ۧ۬ۦۦ۬۠ۛۜۘۚۛۚۙۙۦۘۙ۬ۙ";
        while (true) {
            switch ((((str.hashCode() ^ 180) ^ 71) ^ UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE) ^ (-1931098323)) {
                case -956244872:
                    scriptLogDetailActivity.OooO0O0();
                    str = "۫ۥۨۘۨۜ۟ۢۤۗۘۡۨۚۗۡۘ۠ۘۤۘۙۜۘۧۗۡۚۗۢۥۦۥۡ۫ۖۨۘۢۛۜ۬ۖ۫ۤۥۡۨۘۙۨۨۘۖ۟ۖۘ۫ۤۙ";
                    break;
                case 1476014196:
                    return;
                case 1780598932:
                    str = "۫۬ۥۙۙۧۛۗۖۧۗۢ۟ۗۨۙۦۦۜۜۤۗۛ۟ۡۙۘۛۗۥۙۢۘۛۤۨۘۚ۠ۚۚۚۥۘۥۦ۠ۨۗۡ";
                    break;
            }
        }
    }

    private void OooOO0O() {
        Intent intent = null;
        String str = "ۤۤۥۦۘۢۤۖ۫ۡ۠ۖۙ۫۫ۤۥ۬ۦۛۨۘۛۙۚۚۤۢۜۜۜۙۡۘۧ۬۟ۡۥۘۖۨۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE) ^ 250) ^ 804) ^ (-1369820808)) {
                case -2135816950:
                    str = "ۨۢۨۘۦۥ۫ۜۥۘۘ۬ۧۘۘۢ۠ۜۘۦۦۖۜۡۜۡۦۛۖۨۚۜ۫ۥۛ۬ۥۘۜۜۘۘ۠۟ۡۤ۠۟ۘۙۜۢۤ۬";
                    break;
                case -1594286:
                    this.Oooooo0 = (ScriptLog) intent.getParcelableExtra(f6.OooOoOO);
                    str = "ۡۡۨۨۥۗۛۤۥۘۢۘۨۘ۟ۥۘۗۤۙۢۙۖۘۦۖۦۤۡۖۧۥ۫";
                    break;
                case 799400961:
                    intent = getIntent();
                    str = "ۙۨۦۨۗۦۘۦۢۖۤۡۖ۟ۦۦۘۘۜۚ۬ۙۜۡۤۜۘ۠ۢ۫ۖۛۥۘ۬۠ۙۛۜۨۜۦۧ۬ۚۜۘۖۜۜ۟ۡۥۘۘ۟ۡۘۜ۬۫";
                    break;
                case 1254562421:
                    return;
                case 2090900680:
                    this.Oooooo = intent.getBooleanExtra(f6.OooOoO, false);
                    str = "ۘۜۧۘۘۡۗۗۡۛۡۦۘۥۥ۫ۧۡۡۦۜۥۗ۟ۖ۟ۖۘۛۚ۠ۡۤ۬ۨ۟ۘۘۙۡۜۛۥۘ";
                    break;
            }
        }
    }

    private void OooOO0o() {
        Button button = null;
        String str = "ۧ۠ۡۘ۫ۥۙۨۥ۠ۢۨۛۗۖۡۘۖۨۡۘۜۧۙ۟ۥۧۦ۫۬۟ۤۥۘۚۘۖۘۙ۬ۛ";
        while (true) {
            switch ((((str.hashCode() ^ 71) ^ 76) ^ 131) ^ 1654449389) {
                case -1957085181:
                    return;
                case -1949724988:
                    str = "ۚ۠ۚۙ۫ۖۘۜۢۖۘۖۦۨۘۖۜ۬ۥ۬ۙ۠ۤۥ۬ۤۧۗۙۘۘۗ۠ۧۘۘۘ۟ۥۜۧ۟ۜۡ۟ۘ۫ۦۨۘ۬ۚۦۦۗۨ۠ۧۥ";
                    button = (Button) findViewById(R.id.btn_scriptlogdetail_showmore);
                    break;
                case -1937674665:
                    button.setVisibility(0);
                    str = "۟ۦۘۘ۟ۛۤۖ۠ۥۘۦ۬ۦۘ۬ۗ۫ۚ۫ۦۘۘۡۖ۟ۨۦۘۧ۠۫ۖ۠ۢۥۧۤ۬ۘۙۢۚۢۜۢ۠ۛۨۢۤ۬";
                    break;
                case -1928853916:
                    this.OooooOo.setOnClickListener(this);
                    str = "ۚۦۧۜۥۘۜۡۛ۟ۡۨۨۡۘۘۛۘ۬ۦۛۦۘۢ۬ۘ۟ۙۜۘۙ۠ۜۥۘۗ۠ۜ۫ۦ۠ۦۘۛۖۥۘ";
                    break;
                case -1010871830:
                    str = "ۤۛۥۡۙ۬ۨۦۦۛۜۧۙۥۛۙۘۘۥ۠ۚ۠ۛۨۧۖۛ۫۟ۖۘ";
                    break;
                case -352099061:
                    this.OooooOo = button;
                    str = "ۨۜۜۖ۫۫ۡ۬ۨۘۙۜۗ۬ۙۢۛۙ۫ۛۥۜۘ۟۠ۖۘۚ۟۟ۜۙۘۘ";
                    break;
                case 280180985:
                    str = "۟ۥۦۘ۠ۧۙۙۘۧۘ۫ۘۘۘۗۗۢ۬ۦۘۖۤۜۘۖ۟ۖۘۨۥ۟ۨ۬۟";
                    break;
                case 1195592174:
                    String str2 = "ۧۨۘۖۨۛۘ۟ۚ۬ۦ۟ۛ۟ۨۘ۫۬ۛۦۗ۫ۦۖۖ۟۟ۗۢۡۘ۬ۗۢۢۚ۟ۘۤۡۥۜۨۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1873668608)) {
                            case -2122158948:
                                String str3 = "ۧۤۙۗۘ۫ۤۥۘ۠ۤۘۘۥۢۛۤۛۨۘۜۥۚۨ۬ۜۘۨ۟ۥۘۢۘۛۥۖۡۨ۫ۚ۠۟ۨۘۧۜ۟ۛۦۦۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 161147921) {
                                        case -1664959704:
                                            str2 = "ۥۖۦۘ۬ۘۜۘ۟۫ۨ۬ۛۜۘۜ۠ۖۥ۠ۗ۫ۡۦۘۜ۬ۜۘۖۖۨۘۦۥۛۢۗۜۗۤۚ";
                                            break;
                                        case -843512129:
                                            str2 = "ۡ۬ۖۥ۬ۤۘۥ۠ۨۗۡ۠ۧۡۛۧۦۘ۟ۨۥ۫ۙۧۙۘۜۘۡۜ۬";
                                            break;
                                        case -705229632:
                                            str3 = "ۢ۠ۦۘۙۦۜۦۜۧۘۧۜ۫ۘۧۘۨۜۖۘۜۘ۟۫۟ۚۛۥۦۘۦۨ۬ۛ۠ۨۘۦ۬ۡۘ";
                                            break;
                                        case 1680888478:
                                            str3 = this.Oooooo ? "۬ۤۜۦۥ۠۟ۢۛۚۨۖۤۥ۫ۢۤۜۥۢۖ۟ۧۦۘ۫۠ۘۗۤ۫" : "ۦۗۙۗۜۥۢۛۨ۬۟ۛۙۡۜۢ۬ۛۤۛ۟ۘۥۘ۟۫ۢۢ۠ۨۖۡۜ۟۟ۙۙۘۜۘۧۙۢ۫۠ۜۘۗۜۨۘۘ۬ۘۘ۫ۢۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case -326621755:
                                str = "ۚ۠۟ۖ۟ۨ۬ۨۨ۬ۖ۠ۡۛۜۘ۟۟ۘۘۛۢ۠ۥۛۦ۠۟ۖۘۘ۟ۤۙۧۜۗۛۤۛۛۤۖۜۘ۟ۖ۫۬ۜۦۗۖ۬۫ۚۡۘ";
                                continue;
                            case 308852466:
                                str2 = "۫۫۬ۥۧۗۖۢۡۘۗۨۗۗۚۤۡۚۚۤ۟ۙۧۖ۟۟۠ۖۘۖ۠ۛۜۢۖۘ۠ۖۧۢۘۨۘ۬ۢۨ";
                                break;
                            case 780845432:
                                str = "ۦ۟ۥۥۡۨۘۙ۬ۦۘۥۛۦۤۡۧۛۨ۟ۖۖۖۖۚ۫ۡۡ۫۠۬ۨ";
                                continue;
                        }
                    }
                    break;
                case 1753907416:
                    button.setVisibility(8);
                    str = "ۤۛۥۡۙ۬ۨۦۦۛۜۧۙۥۛۙۘۘۥ۠ۚ۠ۛۨۧۖۛ۫۟ۖۘ";
                    break;
            }
        }
    }

    private void OooOOO0() {
        String str = "ۗۦۚ۬ۤۢۧ۠ۤۧۘۛۢ۬ۚ۬ۨۖۘۥ۬ۥ۟ۗۘۘۖۢۜۙ۫ۛۥۙ۬ۤۖۜۘ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 145) ^ 159) ^ 797) ^ (-2101585685)) {
                case -2121063087:
                    return;
                case -1725409246:
                    str = "ۦۦۖۘۢۗۦۘ۫ۢۦۗۖۤۢۜۦۤۛ۟ۙۚۖ۠ۛۨ۟ۜۨۘۢۗۥۤۨ۬ۤ۫ۘۨۢۥ۫ۡۘۜۨۚۢۢۖ";
                    titleView = (TitleView) findViewById(R.id.titleview_scriptlogdetail);
                    break;
                case -484675201:
                    this.OooooO0.setTitleSize(18);
                    str = "ۙۚۡۦ۫ۥۘۛۥۦۘۨۤ۫ۘۚۥۦۘۢۦ۟ۦۧۚۛۖۖۘۘۥۙ۫ۧۢ۠۟ۦۛۘۚۘ۠ۗۡۥ۠ۜۘ۬ۗۨۘۗۡۜۘۘ";
                    break;
                case -482819011:
                    titleView.setTitleText(this.Oooooo0.getName());
                    str = "ۙۦۘۨۢۜۘۚۤۜۡۧ۠ۘ۟ۡۘۨۤ۠۬ۤۡ۟۠ۜۘۨ۬ۥۖۤۦۤۖۨۧ۠ۘۘۛ۬ۘۘۧ۟ۤ";
                    break;
                case -442835584:
                    this.OooooO0.setOnLeftImageViewListener(new OooO0O0());
                    str = "ۢ۫ۤ۫۫ۡ۬ۜۙۤۜۚ۬ۗ۬ۨۛ۬ۘۧۘۨ۫ۨۙ۠ۨۘۜۗۨۘۛۗۦۘۛۙۘۚۤۖۘۨۖۘ";
                    break;
                case -355899204:
                    this.OooooO0.setleftImage(R.drawable.ic_back);
                    str = "ۙ۫ۧ۠ۖۙۢۜۖۘ۬ۧۚۢ۠ۦۘ۫ۡۡۘۙۡۧۘۙۢۢۘۦۨۖۢ";
                    break;
                case 197029940:
                    this.OooooO0.setVisibilityRightImage(4);
                    str = "ۜۜۦۗۧۚۜۚۚۨۖۘۘۨۦۚ۟ۙۡ۠ۛ۠ۘۘۨۘۦۜۘۘۗۚ۟ۨۥۦۗۢۥ۠ۢۦۡۥۙ";
                    break;
                case 239500064:
                    this.OooooO0 = titleView;
                    str = "۬۠ۘۨۛۘۘۡۘۗۧۖۘۧۤ۠ۢۡۢۙ۠ۡۘۨۨۛۜ۠ۘۢ۠ۡۘۧۥۜۙۘۘ۫۫ۤۡۙۧۨۗ۬۫ۧ۬";
                    break;
                case 340695231:
                    str = "۫ۦۛ۬ۛۜۡۥۦۖۧۧۚۢۜۨۜ۫ۢۤۛۧۖ۬ۖۥۘۗۙ۠۟ۡ۠ۢ۟ۜۘ";
                    break;
            }
        }
    }

    private void initView() {
        String str = "ۗ۟ۨۘ۬ۨۨۤۛۡۘۨۗۦۘۜۖۡۘۜۧۚۧۨۧۦ۟ۜۘۢۖۘ۫ۛۚۙۧۦ۟ۥۦ";
        while (true) {
            switch ((((str.hashCode() ^ 165) ^ 634) ^ UiMessage.CommandToUi.Command_Type.LOAD_PROFILE_VALUE) ^ 9464112) {
                case -1021442988:
                    OooOO0o();
                    str = "ۙ۬ۖۘۘۥۜۚۡۘ۠۬ۥۦ۬ۦۜۛۙۥ۬ۦۘۢۢۡۘۙۢ۠ۘ۫ۘۘۖۨۦۧۡ۠";
                    break;
                case -1014621896:
                    str = "۠ۢۤۡۥۛۘۗ۬ۢۤ۟ۧۜۦۘۢ۫ۧ۬ۦ۟۟ۛۛۦ۠ۥۤۗۖۘۦۥۘۚۥۥۦۗۡۙۤۛ";
                    break;
                case 1061570595:
                    OooOOO0();
                    str = "ۗۘۦۗ۬ۜۙ۟ۢۡۦۘۨۡۢۗۘۜۘۧ۟ۤ۠ۧۦۘ۫ۧۦۘۛۗ";
                    break;
                case 1481396201:
                    new OooO0OO().executeOnExecutor(Executors.newCachedThreadPool(), this.Oooooo0.getFile());
                    str = "ۥۢۖۘۧۚۤۤۖۥۡۜۥۘ۟ۛۗۧ۫ۛۢۧۖۘۡۦۨۘۚۜۨۘۦۘۘۘۡۤۧۡ۫ۦۖۜۗۨۤۛۖ۠ۙۗ۟ۜ";
                    break;
                case 1665903776:
                    return;
                case 1790314054:
                    this.OooooOO = (TextView) findViewById(R.id.tv_scriptlogdetail_scriptlog);
                    str = "۠۠ۖۘۖۦۘۖۘۡۚۥۙۗۖۤۚۡۖۤۛۡۘ۫ۛۥۘۢۡۙ۠ۙۢ";
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "۠ۧۖۘۧۘۨۘۖۖۡۘۤۥ۬ۛ۟ۖۘۤۙۦۘۨۨ۬ۧۛ۫۟۫ۙۡۤۧ۫ۛۡۘۨۚۜۘۢۘۙۗۛۤۡ۬ۘۘۡۜ";
        while (true) {
            switch ((((str.hashCode() ^ 976) ^ 114) ^ 743) ^ (-363788014)) {
                case 261201250:
                    startActivity(new Intent(this, (Class<?>) ScriptLogActivity.class));
                    str = "۬ۦۦۘۙۗۨ۬ۢۥۘۨۖ۫ۖۘ۠ۛۜۨۘ۠۫ۙۡۘۨۘۢ۫ۢۡۗۘۘۢۧ۬ۙۤ";
                    break;
                case 379643560:
                    String str2 = "ۗۥۦۘۛ۬ۙۦۗۙۦۜۚۖۘۢ۠ۤۨ۟ۘۙ۟ۜ۬ۦ۟ۦۜۦ۫ۖۖۛۦۧۜۘۢ۠ۨۜ۟ۗ۟ۥۖۢۤۥۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-300148825)) {
                            case -1889570430:
                                str2 = "ۤۛۗۡۙۜۡۘۛۡۥۜۘۙۥۡۘ۫ۘۛۤۚۨ۬ۦۡۙ۫ۨۘۚۤۢۢۜۛ۠ۧۧ۟ۘۦۨۢۖۘۘۜۖۘ۫ۤۢۨۧۛۗۖۛ";
                                break;
                            case -1510006008:
                                str = "۠۬ۜۘۤۥۦۦۥۜۢۥۦۘۛۤۜۡۗۤۦۘۥۤۦۘۖۚۨۘۛۡۖ۟ۨۘۜۡۨ";
                                continue;
                            case -1458349431:
                                String str3 = "ۛۧۦۢۨۧ۬ۜ۫ۢۢ۟ۥۡۡۘۛۜۥۘ۠ۗۥۘۦۗۧۛۢ۬ۛ۟ۚ۫ۖۙ۫ۨۧۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1250077479)) {
                                        case -1856128440:
                                            str3 = view.getId() != R.id.btn_scriptlogdetail_showmore ? "۬۬ۗۥۚۤۛ۫ۘۘۛ۬ۖ۬۟ۖۥۚۧۦۢۗۡ۠ۡۘۤۘۖۦ۠ۥۘۨۦۘۢۖۨۘۛۗۖۘۛ۫ۘۘۛ۫ۥۘۖۜۢ" : "ۥۛۦۘۜۖۧۘۨۡۥۘ۠۠ۢۡۦ۟ۧۦۢۥۙۦۖۢۘۢۙۡۘۙۘۡۘ";
                                            break;
                                        case -273289960:
                                            str2 = "ۚۙۥۘ۠ۘۦۧۗۚۥۢۡۘۦۗۧ۬ۢۦۘ۠ۙۥۖۘۘۢۡۥۘۤۘۧۘۤۜۧۘۤۘۘۦۡۚۨۙۖۘۦۨۢ۬ۨ۠ۘۗۧۖۚۙ";
                                            break;
                                        case 220619891:
                                            str2 = "ۢۢۢۦۜۗۚۙ۟ۛ۟ۨۘۥ۫ۛۖۥ۠ۤۙۘۘۤۙۦۘۢۤ۫۬ۡۛۚۦۧ۠ۙۥ۬ۛۨۘۙۧۜۘ";
                                            break;
                                        case 780625614:
                                            str3 = "ۥۜۧۘۚۢۨ۬۟ۜۢۨۦۜۥۘ۫۬ۢۤۖ۫۬ۛۘۘۡ۟ۡۘۦ۬ۢ۟ۚۨ۠ۢۡۨۚۤۥۛۤۚۨۦۢۙ";
                                            break;
                                    }
                                }
                                break;
                            case -1128557085:
                                str = "ۧۢۙۗۡۧۜۡ۠ۗۖۗۖۥۦۨۖۘۘۖ۬ۢۦۘۘۧۥۤۤۡۡۘۡۡ۬ۖۖ۠ۨۚ۟ۢ۬ۗۢۗۨۘ۫ۡۛ";
                                continue;
                        }
                    }
                    break;
                case 874431160:
                    str = "ۢۧۜۜۙۥۘۙۚۛۗۨۥۘۡۙۘۘۦ۫ۖۘۡۛۡۢ۟ۤۛ۟ۙۡۜۧۜ۠ۨۨ۟ۥۘۨۛ۠۠ۚۥ";
                    break;
                case 1468463368:
                    return;
                case 1915570022:
                    str = "۬ۙۦۘۥۗۖۜۜۥۘۡۨۚ۬ۤ۟ۘۡۜۘۚۨۥۘۗۘ۠ۤۦ۬ۤ۟ۡۘ";
                    break;
                case 2095709930:
                    str = "۬ۦۦۘۙۗۨ۬ۢۥۘۨۖ۫ۖۘ۠ۛۜۨۘ۠۫ۙۡۘۨۘۢ۫ۢۡۗۘۘۢۧ۬ۙۤ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۦۥ۬ۢۤۥۙۖۢۚۗۚ۬۫ۤۡۚ۫ۧۡ۬ۥۜ۫ۧۨ۬ۢۘۧۘۧۘۦۘۧۗۖۗ۠ۥۘ۠ۖۡ";
        while (true) {
            switch ((((str.hashCode() ^ 17) ^ 937) ^ 627) ^ (-868380881)) {
                case -1618491722:
                    return;
                case -1481777296:
                    str = "ۗۤ۫ۨۜۘۛۨ۬ۗ۠ۖۘ۬ۘۙۙ۬ۖۘۥۦۛۗۛۜۨ۠۠ۙۜ۠";
                    break;
                case 146648556:
                    OooOO0O();
                    str = "ۗۢ۬ۥ۫ۤۡۛۖۢۚۜ۟۟ۜۘۛۨۜۘ۫ۤۜۘ۬ۧ۟ۨ۫ۡۗۥۙ۟ۛۖۘۙۗۨۘ";
                    break;
                case 677495749:
                    str = "ۧۙۘۨۡۜۘۤ۫ۜ۬ۢۖۙۗۡۛۢۨۥ۟ۘۘۡۙ۬ۙۙۚۛۜۙ۬۬ۧۙۢۘ۫ۢۘۘۜۦۦ۠۟ۜۘۙ۫ۚۨۘ";
                    break;
                case 1256755354:
                    initView();
                    str = "۬ۚۨۡۥۘۖۥۧۜۛۙۥ۫ۜۤ۫ۘ۠ۨۘۦۡۗۘۨۦۘۙۚۘۛۧۦۘۜۘۖۘۨۧۦۨ۬ۡۡۗۜۜ۠ۘۧ۬ۜۘۧۧۥ";
                    break;
                case 1344195187:
                    setContentView(R.layout.activity_scriptlogdetail);
                    str = "ۨۗۜۥۘۤۥۘۨۘۖۗۛۗۖۙۨۧۚۛ۠ۖۡۤ۟۠ۢۧۨۘۖۥۧۘۗۜۜ۫ۦۤۡۥۡۨۗۢۖ۫ۛ";
                    break;
                case 1818643861:
                    super.onCreate(bundle);
                    str = "ۜۗۘۖۧۨۢۧۨۚۙۖۘۧۛۜۙ۫ۡۦ۠ۧۙ۫۬ۢۥۧ۠۬ۥۡۛ۬۬ۤ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۨۜ۠ۨ۫ۧ۬ۥۥ۫ۗۨۘۛۨۥ۠۠ۖۛۥ۟ۘۘ۟ۡۘۦۨۧۘۥۡۦۘۡ۬ۨۘۜ۫ۥۧۛۥۡۡۘۖ۟ۥۜۦۜۘۥ۫ۤ";
        while (true) {
            switch ((((str.hashCode() ^ 940) ^ 352) ^ 550) ^ 259628319) {
                case -2047131462:
                    super.onPause();
                    str = "ۖۥۢۧ۟ۡۘۖۡۡۡۥۢۙۛ۠ۗ۬ۢۛۘۘ۠۠ۨۚۡۘ۫۫ۚۚۧ۬۫۬۫ۚ۟ۖ۠ۢۡۘ";
                    break;
                case -1935352571:
                    bh.OooO0OO(ScriptLogDetailActivity.class.getCanonicalName());
                    str = "ۤۛۜۘۛ۫ۢۗۖ۫ۛۙۡۦ۟ۦۤۦ۬ۗۘۘ۠ۛۖۘۗۜۢۛ۫۠ۧۥۤ۬ۤۛۚ۠۟ۗ۬ۙۛ۠۠۠ۢۗ";
                    break;
                case -1286517087:
                    return;
                case 287763907:
                    bh.OooO0o0(this);
                    str = "ۘۡۘۚۚۨۘ۠ۡۦۜۢۥ۟ۦۖ۫ۖۢۦ۬ۘۘ۫ۘۘ۟ۖ۫۬ۢۚ";
                    break;
                case 491706875:
                    str = "ۤۜۧۡۨۡ۠ۥۦۘۦۤۨۖۦۙۡۨۦ۬ۢۧۜۤۢۙۢ۬ۧۘۦۦۖۘۘۡۥۨۘ۠ۧۡۘۡۦۖۘۡ۠ۚۚۖۘۤۨۜۘۘ۟ۙ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۤۛۥۘۚۚۧ۫ۧۘۘۥ۬ۦ۠ۢ۟ۢۨۖۘۛۧ۫ۜ۟ۜ۟ۜۧۘۖۤۗ۫ۧ۬ۛ۬ۛۧۤۤۦۥۜۘۡۘۨۘۤۧۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 31) ^ 373) ^ 730) ^ 2135294663) {
                case -689712994:
                    return;
                case -520902232:
                    super.onResume();
                    str = "ۜۜۡۘۘ۠۫ۤۨۨۥۤۙۚ۬ۢۙۤۡۧۛۚۤ۫ۡۘۦۧۗۧۘۖۨۨۧۨۙ۬";
                    break;
                case 195016325:
                    str = "ۤ۟ۥۘۦۥۘۜۦۘۗۚ۠ۜ۠۠ۗۨۤ۬ۡۡۘۚۙۜۢۥ۬ۤ۟ۖۜۨۧۘ۟ۗۤۜ";
                    break;
                case 556530413:
                    bh.OooO0o(this);
                    str = "ۨۨۧۘۜۘۨۨۜۘۧۤۖ۫ۙۡۨۗ۫ۙۘۘۨ۬ۙۘۖۡۘۘ۫ۦ";
                    break;
                case 1467574984:
                    bh.OooO0Oo(ScriptLogDetailActivity.class.getCanonicalName());
                    str = "ۗۜ۟ۗۜ۟ۧ۟ۙۦۡ۠ۙۚۘۙۦۥۘ۟ۘۡ۟ۜ۠ۡۗۜۘۦ۬ۘۢۜۘۘۛۚۡۘۡۚۧۜۘۦۘ";
                    break;
            }
        }
    }
}
