package com.cyjh.elfin.ui.activity;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentTransaction;
import com.ac.R;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.util.ArrayList;
import z2.bh;
import z2.g6;
import z2.ia;
import z2.l10;
import z2.x4;

/* JADX INFO: loaded from: classes.dex */
public class MessagePushActivity extends BaseActivity {
    private TitleView OooooO0;
    private ArrayList<NotifyMsgBean> OooooOO;

    public class OooO0O0 implements TitleView.OooO0O0 {
        public final MessagePushActivity OooO00o;

        private OooO0O0(MessagePushActivity messagePushActivity) {
            this.OooO00o = messagePushActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۨۥۡۘۛ۠ۧۗۗ۠ۦۖۤ۬ۚۢۙۗۥۢ۫۠۫ۡۘۙۚۗۛۜۤ۠۬ۖۘۥۙ۠ۧۚۦۘ۫۠ۙ";
            while (true) {
                switch ((((str.hashCode() ^ 101) ^ 1010) ^ 914) ^ (-433430547)) {
                    case -1963222200:
                        this.OooO00o.finish();
                        str = "ۖۚۖۗۗۦۦ۟ۖۘ۬ۦ۟ۢۜۖۘۜۛۥۘۢۨۗۢ۫ۛۛۡۖۜۖۜ";
                        break;
                    case -1815086554:
                        str = "ۖۦۛۡۜۨۚۛۥۧۗۦۛۜ۟ۛۚۡۙۦۡۙۦۥۡۖۨۢ۠۟ۚۨۙ۟ۦۘۖۡۥۚۚۨۘ";
                        break;
                    case -696996430:
                        str = "۫ۜۦۘ۟۟ۜۘ۬ۢۡۛ۠ۘۢۙۥۘۤۧۧ۫ۘۘۛ۬۟۫ۜۜۥۨ۟۠ۘۨۙ۫ۖۘۜۙۘۘ۟ۚۖۖۛ۬۟ۙۘۘ";
                        break;
                    case 76618239:
                        return;
                }
            }
        }
    }

    public class OooO0OO implements TitleView.OooO0o {
        public final MessagePushActivity OooO00o;

        private OooO0OO(MessagePushActivity messagePushActivity) {
            this.OooO00o = messagePushActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0o
        public void OooO00o(View view) {
            String str = "۟ۗۦۘۖۘۢۛۢ۬۠ۙۖۚۧ۫ۙ۫ۧۛۨۥۧۙۛۜ۬ۜۢۚ۠";
            while (true) {
                switch ((((str.hashCode() ^ 150) ^ 368) ^ 776) ^ (-1465840811)) {
                    case -129201597:
                        return;
                    case 478424937:
                        str = "ۡۙ۟۫ۤۖۘۥۧۖۙ۠ۦۘۦۥۧۙۚۛۙۨۘ۟ۥۜۚۤۨ۫۠ۖۘۖۛۙۚ۬ۥۡۨۘ۫ۚ۠";
                        break;
                    case 1485824433:
                        str = "ۧۡۙۗۖۦۡۖۤۖۢۘۘ۟ۨۜۘۡۙۖ۫ۜۧۨۦۘۨۚۡۘۦۚۥۥۙۗۛۜۦۛ۠۫ۤۨۨۘۡۘۜۜۚ۟ۛۚۘۘۖۥۨ";
                        break;
                    case 1694225151:
                        l10.OooO0o().OooOOOO(new MsgItem(1002));
                        str = "ۗۧۚۨۜۜ۠۬ۙۡۜۘۗۙۢ۠ۙۛ۫ۦۡۘ۬ۦ۟ۤۦۡۘۨ۫ۥۜۗۚ۠ۜۘۥ۬۟۫ۖۦۥ۬ۜۘۧۢ۠ۗ۬ۡۧۘۙ";
                        break;
                }
            }
        }
    }

    private void OooO0oO() {
        String str = "ۖۗۦۥۗ۠۬۟ۜۘ۫ۙ۬۟ۨۤۗۖۖۡۡۙۖۗۧۧۨۦۘۥۧۡۨۚ۟ۨۘۡۘ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 646) ^ a.aP) ^ 412) ^ (-90344223)) {
                case -2122494866:
                    this.OooooO0.setTitleText(R.string.msg_notify);
                    str = "ۙ۠ۘۘۚۤ۬۬ۘۡ۬ۦۘۧۤۖۦۘۘ۠ۘۜۛۤۖۜ۠ۤۡۖۘۢ۠ۡۙۘۘۘ";
                    break;
                case -2067662753:
                    this.OooooO0 = titleView;
                    str = "ۘ۬ۜۜۗۢ۫ۜ۠ۛۖۧۘۢ۠ۘۛۜۜۚۚۚۨۢۜۤۜۘۘ۬ۦۥۢ۬ۡۗۗۖۨۡۡۘۤۨۥۘ";
                    break;
                case -1536298493:
                    return;
                case -1151776473:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "ۚۚۥۘۚۖۜ۠ۚ۫ۡۢ۫ۖۦۚ۫ۙۤۖۖۘۚۦۖۨ۟ۥۘ۠ۚۥۗ۬ۨۘۨۚۨۢۧۛ۟ۙۖۘ۫ۢۜۘۖۘ۫ۡۦۢۙۤۘ";
                    break;
                case -1073765957:
                    this.OooooO0.setOnLeftImageViewListener(new OooO0O0());
                    str = "ۛ۫ۨۘۘ۫ۙۦۙۡۘۥۛۗ۠ۤ۟۬۟ۙۘۨۡۘۘۤۦۖۨۛۢۢۘۘۙ۫ۨۡۘۗۗۙۢ۠ۧۨ";
                    break;
                case -682514867:
                    this.OooooO0.setVisibilityRightImage(8);
                    str = "ۙۚۘۦۖۥۦۚۨۘۗۨۨۛۖۗۧۘۨۢۛۨۘۛۛ۬ۨۖۜۘۜ۫ۦ۟ۨۨۘۙۨۘ";
                    break;
                case -353980731:
                    this.OooooO0.setVisibilityTvRight(0);
                    str = "ۧۜۜۘۥۖۦۘۜۨۤۛۜۖ۠۠ۘۘ۠ۙۡۘۘۚۦۗۦۘۘۡۚۖۡۨۦۨۛ۬ۢ۬ۙۘۛۜۡۤۧ";
                    break;
                case 240134427:
                    str = "۟۬۬ۚۥۨۘۢۚۙۗ۠ۢۤۥۧۘۥۜۖ۟ۜۡۘۢۧۦۦ۟ۦۘ۠۫ۖۘ۠ۦۦ۟ۜۧۘۨ۫۫ۨ۟ۧ";
                    titleView = (TitleView) findViewById(R.id.id_msg_push_head);
                    break;
                case 864518436:
                    str = "ۖۦۨۜۘۦۘ۠ۚۥۜۗۦۛۖۧۛۢۚ۠ۖۘۧۘ۫ۧ۫۫ۖۛۙۤۛۧۨۘۖ۬۬ۙ۠۬ۤۖۡۗۛۛ۟ۘۡۖۢۗ";
                    break;
                case 1330114422:
                    this.OooooO0.setRightTvText(R.string.clear_msg);
                    str = "ۗۢۢۚ۟ۥۦ۫ۘ۫ۤۘۚۙۗ۠ۘۘ۬۫ۙۚۚ۠ۚۘۘۘۦ۫ۖ۬ۥۨۘ۬۬ۛۢ۫ۨۘۛ۟ۛۛ۠۠ۗۖۖۛۚۜ۠۟ۢ";
                    break;
                case 1497153896:
                    x4.OooO0O0().OooO0o(g6.OooO0o0, Boolean.FALSE);
                    str = "ۜۚۛۗۖ۫ۘۢۡۙۜ۬ۙۨۨ۬ۨ۟ۧ۫ۚۡۛۘۘۥۦ۬ۤ۬ۗۡۤۙۥ۠ۡۡۤۦ۟ۜۗ";
                    break;
                case 1497560070:
                    this.OooooO0.setOnRightTextViewListener(new OooO0OO());
                    str = "ۤۙۘ۬ۢۘۘۚ۠ۦۜۜ۬۟ۧۦۘۖ۫ۗۙۧۖۜۖۘ۟ۥۥۘۡ۟ۜۘۚ۟ۦۙ۟";
                    break;
            }
        }
    }

    private void OooO0oo() {
        FragmentTransaction fragmentTransactionBeginTransaction = null;
        String str = "۟ۨۗۤۚۚۤۧۙۛۗۛۛۤ۬ۚ۠ۡۘ۫ۚۛۦۤۘ۟ۧۜۘۢ۫ۜ۟۟ۖۧۢۡۘ۠ۤۥۦ۟ۜ";
        while (true) {
            switch ((((str.hashCode() ^ 926) ^ 715) ^ 764) ^ (-375345544)) {
                case -568841029:
                    str = "ۤۗۗۛۛۖۘۨۚ۟ۤۢۚۚۖۚۛۚۜۦۤۖ۠ۗۨۢۥۨۘۛۖۘۥۜ۬۫ۛ۫";
                    break;
                case -370685280:
                    return;
                case 568464718:
                    fragmentTransactionBeginTransaction.replace(R.id.id_fl_fragment, ia.OooOoO(this.OooooOO));
                    str = "ۤۥۤۚ۠۟ۚ۫ۢۛۡۧۘۗ۟ۖۘۤ۠ۙۡۚۢۛۨۦ۬ۜۜۢۥ۬ۘۘۖۗۤۧۧ۫۟ۨ۬";
                    break;
                case 988578844:
                    fragmentTransactionBeginTransaction.commit();
                    str = "۫ۦ۬ۛۤۘ۫ۙۥۘ۫ۗۨۘۧ۟ۨۡۡۘۘۜۜۛ۫ۦ۟ۡۜ۬ۡ۟ۗۤۘۥۘۙۥۡۖ۫ۡۚۥۙ۫ۧۧۖۜۘ";
                    break;
                case 2008920402:
                    fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
                    str = "ۜۤۖۘۦۡۡۖۖۘۢۡۧ۟ۦ۟۬ۛۡۧۨۧۥۥۤ۟ۜۘۖ۠ۨۤ۟۟۟۟ۨۘ۟ۙۗۥۤۡۜۗۨ۠ۡۛ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۧۨۛ۟ۗۗۤۥۘۘۙۢۨۥۢۖۨ۠ۡ۬ۢ۫ۡۨۥۘۦۖۘۘۙۨۘۗۘۦۘۘ۬ۜۥۜۛۧۙۘۘۨۥۡۘۡۖۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 880) ^ 371) ^ 96) ^ 1855375402) {
                case -2031821644:
                    setContentView(R.layout.activity_msg_push);
                    str = "ۘۖۢۨۡۨۤۦۧۚۚۗۧۨۚۧ۠ۖۛ۠ۡۘۛۡۥۘۛۧۛ۟۟ۘۘۧۤۙۤ۠ۦ۟ۡۦ۫ۡۨ";
                    break;
                case -1948821156:
                    this.OooooOO = getIntent().getParcelableArrayListExtra(g6.OooO0OO);
                    str = "ۚۨۖۥۢۙۨۙۧ۫ۜۚۤۤۘۘۙ۬ۗۛۧۛ۫ۙۜۢۡۤ۬ۦۘ۠ۦۥۦۡۥۘۚ۟۬۠ۗۚۦۡۘۚۗۨۨۡ۬ۡ۫ۨ";
                    break;
                case -1936877458:
                    str = "ۗۥۨۘۜ۠ۤ۬۠۠ۧۢۥۡۤ۬۬۟ۖۘۢۘۡۘۚۥۘۘۢ۠ۜۦۥۘۖ۬۟ۨۜۥۘۗ۠۠ۖۢۢ۟ۦۙ۠ۤۡۢۦۦۘۧۘۚ";
                    break;
                case -1513202268:
                    l10.OooO0o().OooOOOO(new MsgItem(1001));
                    str = "ۤۧۡۛ۠۠ۤۢۜۘۖۘۘۛۨۛ۬ۦۥۨۗۡۦۚۨۘ۬۬ۘۘۢۘۚۚۥۧۙ۟ۨۘ۟ۛۖۙۤۢۙۦۖۚ۠ۖۘ۬ۡۖۘۘۚۗ";
                    break;
                case -1446724227:
                    str = "۬ۘۘ۬ۖۚۥۜۗۗۖۤۡۡۗۧۡ۬ۢۜۜۘۘۡۨۡۘۗۧ۠ۥۘ";
                    break;
                case -1103114347:
                    OooO0oo();
                    str = "ۜۧۜۘۧۖۛ۠ۢۙۗۥۘۡ۬ۗۜۚۨۘ۠ۜۗۢۦ۟۫ۛۘۘ۫ۘۜۘ";
                    break;
                case -948197821:
                    super.onCreate(bundle);
                    str = "ۤۡۙۚ۟ۧۧ۫ۙۥۡ۫ۧۛۘۘۥ۠ۘۗ۠ۖۙۖۘۜ۬ۖۘ۬ۥۨۗۜۜۢۢۘۤۗۖۡۤۦۘ۬ۚۘ۠ۖ۬";
                    break;
                case 193744347:
                    OooO0oO();
                    str = "۫ۨۖ۫ۢۥ۠ۙۡۘۢۥۢۜۛۥۖۖ۬ۧ۟۬ۘۤۨ۫ۘۘۥۗۖۘۘ۠ۦ۫۠";
                    break;
                case 2090782002:
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "۫ۜۥۘۦۨۜۥ۠ۦۘۢۛۨۘۗۢۜۘ۟ۡۧۘۦۘۗۧۤۦۢۨۥۦۖۖ۠ۨ۟ۤۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 474) ^ 768) ^ 10) ^ (-2011093756)) {
                case -991872570:
                    bh.OooO0o0(this);
                    str = "ۨۤۦۘۖۜۨۧۥۥۖ۫ۧۜۚۤۧۡۖ۟۫ۗۗ۬ۖۘۥ۠ۙۘۚۘۘۧۨۜۘۖۦۡۥ۟ۛ۟ۤ۟ۦۙۘۘۛۢۥ";
                    break;
                case 1109360682:
                    str = "ۤۚ۬ۦ۠ۨۘ۬ۤۛۛۙۜۤۡۘ۠ۖۧۚ۟۟ۘۡۚۧ۬ۤۢۦۧۨۙۗۚۦۡۜۘۧۧ۫ۢۘۗ۠ۘ۫۫ۥۙۨۤۘۘ";
                    break;
                case 1117862753:
                    super.onPause();
                    str = "ۢۖۖ۟ۜۖۘۤ۟۠ۘۙۡۘ۫ۥۡۗۖۧۘۤۧۚۤۘۛۜۗۙ۟۫ۥۘۘۖۘۚۜۥۘ۠۬ۦۨ۫ۦۘ";
                    break;
                case 1585116453:
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۥۜۥۡۙۡۨۘۢۙۜۜۜۧۘ۫ۛۜۜۧۙۖۛۨۙۖۘۥۦۘۨۤۖۘ۬ۦۧ۟ۜۦۦۧۖۧۧۘۚ۟ۢۧۥۖۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 756) ^ UiMessage.CommandToUi.Command_Type.FW_SET_HEIGHT_VALUE) ^ 579) ^ (-766849595)) {
                case -552003462:
                    bh.OooO0o(this);
                    str = "۫ۚۡۧۡۜۘۢۗۗۚۗۛۗۛۦۘۡۚۥۦ۟ۜۘۜۢۨۢ۟۬ۡۜۡ۟ۙۛ۬ۥۨۧ۬ۨۚۡۤۙۥۡۡۙۙۚۦۧ۬ۚۦ";
                    break;
                case 494344432:
                    str = "ۡۧۥۛۦۚ۠۠ۡۘۜۨۧۘۖۖۤ۟ۘۘۦۥۦ۫ۨۘۜۧۢۦ۟ۙۡ۟ۖۨۖۧ۟ۥۦۘۥۚۗۧۜۡۥ۠ۨ";
                    break;
                case 718568146:
                    return;
                case 853965567:
                    super.onResume();
                    str = "ۛۨۥ۟۠۬ۨ۬ۘۨۤۥۘۨۧۙۢۛۨۦۧۜۘۢۤ۠۫ۥۢۡۛۗۨ۠ۜ۬۬۟ۦۖۗۥۛۢۘۙۥۘۚۤۜۘ";
                    break;
            }
        }
    }
}
