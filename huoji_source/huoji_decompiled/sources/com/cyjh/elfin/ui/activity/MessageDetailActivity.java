package com.cyjh.elfin.ui.activity;

import android.os.Bundle;
import android.view.View;
import com.ac.R;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.bh;
import z2.ha;

/* JADX INFO: loaded from: classes.dex */
public class MessageDetailActivity extends BaseActivity {

    public class OooO0O0 implements TitleView.OooO0O0 {
        public final MessageDetailActivity OooO00o;

        private OooO0O0(MessageDetailActivity messageDetailActivity) {
            this.OooO00o = messageDetailActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۘۖۤۛ۟ۧۖۢ۠ۦۛۜۘۡۘۥۘۚۚ۟ۡۙۚۨۡ۠۫ۛ۠۬۬ۜۘۜۦۖ۠۫ۙۡۜۢۥۨۢۥۛ۫ۚۨ۬۠ۡ۟۬ۙ۟";
            while (true) {
                switch ((((str.hashCode() ^ 805) ^ UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT_VALUE) ^ 685) ^ 1170639195) {
                    case -2109812224:
                        return;
                    case -1182821884:
                        str = "۫ۨۜۛۢۦۘ۫ۢۥۛۨۖۨ۬ۦۘۛۚۦۘۥۤۤۙ۫ۦۙۜۡۡۦۡۡۤ۬ۙۥ۫ۥۡۤۘ۬ۜ۠ۡۘۘۖۨۗ۫۠ۜۘ۫ۛۦ";
                        break;
                    case 890263569:
                        str = "ۛۢۡۘۚۜۘۘۙۦۜ۟ۤۨۢۘۘۧۧ۬ۜۖۖۘۙۨۡۘۧۨۨۘۙ۠ۙۥۗۜۘ۬۠ۧ";
                        break;
                    case 1933535422:
                        this.OooO00o.finish();
                        str = "ۙۤۡۖۛۨۘۧۙۗۥۦ۬ۨۜۧۙ۟ۘۜۚۛۤۜ۬ۖ۟ۦۘ۫ۢۖۘۥۡۜۢ۟ۢ";
                        break;
                }
            }
        }
    }

    private void OooO0oO() {
        String str = "۠ۥ۠۠ۙۘۘۚۗۚۨۧۜۜۜۧۖۤۦۦ۫ۤۧۙۥۖ۬ۨۖۖۥۘ۠ۗۖۜۨۖۢ۫ۢۧۧۤ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 923) ^ 912) ^ 719) ^ 961727611) {
                case -1757539682:
                    return;
                case -1181748907:
                    titleView.setOnLeftImageViewListener(new OooO0O0());
                    str = "ۧۥۢۘۤۥۘ۫ۧۡۛۖۡۘ۟ۨۘۥۗۖۚ۠ۧ۟۬۬ۨ۫ۡۘۛۗۜۧۦۤۜۛۦ";
                    break;
                case -1179980231:
                    str = "ۢۨۜ۫۬ۛۡۖۚۘ۠ۧۜۨۘ۟ۘۗۘ۬ۖۗ۟ۗۨۤۚ۫ۛۜۦۙۜۘۦۥۧۘۙۡۜۘۦۙۗ۬ۘۗ۬۬ۡۘ";
                    titleView = (TitleView) findViewById(R.id.id_msg_detail_head);
                    break;
                case -1000016749:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "۟ۗۨۘۢ۫ۢۚ۬۫ۚ۬ۙۦۡ۬ۡۖۘۗ۫ۘۘۜۢۧۗۨۤۛۥۡۧۙ۬ۜۘۘۥۛ۟ۨۘۦۘۙۨۧۥ۫ۛ";
                    break;
                case -289254624:
                    titleView.setVisibilityRightImage(4);
                    str = "۠ۦۡۘۗ۠ۨۘۧ۠ۘۘۖۙۧۚۨۨۘۚۨ۠۬ۚۤۦۡۖۘۨۤۖۘۗۘۦۥۥۘ۟ۦۘۢۥۦ۠ۙۚ";
                    break;
                case 388379709:
                    str = "۟ۚۡۘۡۡۦۡۚ۬ۧۧۤ۬۬۫ۙ۬۬۠۬ۗ۠ۘۥۛۤۛۧۗۦ۬ۘۧۘ۠ۜۙۢۦۨۘۚ۬ۘۛۖۨۨۘۘ";
                    break;
                case 624398041:
                    titleView.setTitleText(R.string.msg_notify);
                    str = "ۧۛۘۜۛۦۘ۫ۖۧۘۖۦ۟ۛ۟ۛۜۥۘۧۧۛ۟ۜ۠ۛۨ۟ۡۗۙۨۨ۠ۖ۠ۡۘ۟ۥۧۘۡۘ۟";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۖۡۖۚۗۨۘۗۜۨۘۘ۬ۘۢ۠ۥۜۛۨۥۘۡۘ۠ۨۥۘۜ۠ۨۘۨۙ۫ۦۢۦۥۨۡۘۨۚۖۘۨۗۥ";
        long longExtra = 0;
        while (true) {
            switch ((((str.hashCode() ^ 154) ^ 433) ^ 97) ^ (-1976619025)) {
                case -2069914118:
                    super.onCreate(bundle);
                    str = "۫ۡۨۘ۫ۥۢۥۘۘۘۡ۬ۡۗۖۘۙۢۤۨۚ۟ۙ۬۟۬۫ۜۗۗ";
                    break;
                case -1923823855:
                    longExtra = getIntent().getLongExtra(MessageDetailActivity.class.getCanonicalName(), 0L);
                    str = "ۛ۠ۦۧ۠ۖۚۧۗۚۥۥۧۡۧۘۖۘۨۘۥۙۙۜۙ۟ۗۨ۫ۢۧۘۘۢۢ۬ۗۜۨ۟ۗ۬ۤۘ۬ۦ۟ۜۚ";
                    break;
                case -1235734802:
                    getSupportFragmentManager().beginTransaction().replace(R.id.id_fl_fragment, ha.OooOoO0(longExtra)).commit();
                    str = "ۛ۟۟۠ۗۦۨۜۘۘۘۨۨۘۢۘ۫ۙۚۦ۬ۛۡۛۖ۟ۡۘۚۛ۬ۛ۠ۘۙۢۥ۬ۨۦۘۜۤۥ";
                    break;
                case -994495969:
                    OooO0oO();
                    str = "ۧۡۨۘۥۧۦۘۙۛۘۨ۟ۥۘۥۖۡۤۨۖۘۚۥۜۘۗۙۘۢۤ۠ۙۗۥۦۖۘۧ۫ۜ";
                    break;
                case -279835970:
                    setContentView(R.layout.activity_msg_detail);
                    str = "ۡۢۨ۫ۥۘۗۘۛ۫۟ۙۢۚۥۘۤۢۦۡۛۖۘ۫ۨ۠۬ۜۥۘۛ۠ۨۚۦۡ۫ۧۖۘ۬ۢۤ۬ۨۥ";
                    break;
                case 814428985:
                    return;
                case 1403675203:
                    str = "ۜ۬ۥۘ۬ۚۖۘۜ۫۠ۢۤۛۦۦۜ۬ۖۧۧۥۡۘ۫۫ۡۨۙۥۘ۠ۜۖۖۡۘ۠ۥۖ";
                    break;
                case 1738191919:
                    str = "ۖۗۘۜۨۨ۟۬۟ۙ۫ۥۛۗ۟ۜۢۤۤ۠۠ۤۛۢ۫ۨۡۙ۬ۨۜ۠ۖۘۧۘۘۘۛۧۖۦ۟ۜۡۜۢۛۨۨۜۦۜۡۥۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۖۙۦۘ۬۫۠ۡۧۥۘۦ۟ۦۘ۟ۛۗۖۢۨ۠ۘۦ۠ۤۢ۬ۦۨ۫۠۟ۤۥ۠ۗۦۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 458) ^ 452) ^ 194) ^ (-1943345604)) {
                case -1959392899:
                    str = "ۚۚۘۘۢۘ۬۠ۘۛ۬ۙۜۘ۫ۘۘۥۛۡۥۥۘۘۘۢۢ۟ۙۡۘۢۜۦۘۙۢۘۡۚۥۘۙۚ۫ۧۢۘۘ";
                    break;
                case -994592878:
                    bh.OooO0o0(this);
                    str = "ۘ۫ۘۘۖۢ۠۠ۙ۠ۢۗۨۧ۫ۛ۬ۗۤۧۗۥ۠ۨۖۘۧۧۙۢۡۖۘ۠ۦ۬ۦ۟ۖ۟ۡۘۘۜۦۥۘ۬ۚۖۡۙۡ۠۫ۡۘۘ۟ۖ";
                    break;
                case 1625470748:
                    return;
                case 1781481177:
                    super.onPause();
                    str = "ۡ۟ۥ۟ۚۦۖۧۢۖۦۨۘۡۧۛ۫ۡ۠ۚۙۥۘۚ۫ۖۘۙۖۛ۬۟ۤۦۢۖۘۧۦۦۘۢۖۦۘۚۥۦۘۘۥۙۖۖۖۘ۫ۜۤۙۥ۟";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۡ۠ۡۘۗۘۦۜۢۖۘ۬۬ۖۦۘۖۘ۫ۚۦۖۘۘ۬ۦۥۤۛۙۤۡۖۚۥۢۡۛۜۘۖۦۦ۬ۗۜ۠۬۟ۨۤۡ";
        while (true) {
            switch ((((str.hashCode() ^ 493) ^ 104) ^ 817) ^ (-325851834)) {
                case -1187216157:
                    super.onResume();
                    str = "ۜۨۖۘۢۗۢۙ۠ۙۚۥۘۙ۫ۧۢۡۘۘۥ۬ۖ۠ۥۖۘ۬۫۫ۜ۬ۖۘۖۘۦۤ۟ۚۚۜۖۘۘۦۢۗۨۘۘۤ۫ۦۘ";
                    break;
                case 1653168559:
                    bh.OooO0o(this);
                    str = "ۘ۠ۚ۠۠۫ۚۜۜۜۤۙۜ۟۬ۗۙۢ۫ۦۡ۬ۘۡۘ۠ۡۚ۬ۥۨ۟ۛۚ۠۬۬ۘۘ۬۬ۡ۫ۡ۟۫ۦ۟ۘۘۖۦۨۘۨۜۥ";
                    break;
                case 1805470333:
                    return;
                case 2003702968:
                    str = "ۚۢ۫ۜۧۦۡۖۨۘۥ۫ۡ۬ۖۡۘۢۜۘۜ۠۠ۜۗۥۘۘ۫ۦۡۚۤ۬۟ۡ۫ۛ۬";
                    break;
            }
        }
    }
}
