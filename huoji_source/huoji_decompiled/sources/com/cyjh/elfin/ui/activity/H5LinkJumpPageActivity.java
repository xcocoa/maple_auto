package com.cyjh.elfin.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.ac.R;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.umeng.analytics.MobclickAgent;
import z2.as;
import z2.me;

/* JADX INFO: loaded from: classes.dex */
public class H5LinkJumpPageActivity extends BaseActivity {
    private LinearLayout OooooO0;
    private WebView OooooOO;

    public class OooO00o extends WebViewClient {
        public final H5LinkJumpPageActivity OooO00o;

        public OooO00o(H5LinkJumpPageActivity h5LinkJumpPageActivity) {
            this.OooO00o = h5LinkJumpPageActivity;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String str2 = "ۢۢۧۡۖ۬ۖۧۘ۫ۢۗۚۜ۫ۙۜۘۢۜۖۘۥ۠ۦۖۖۥۘۦۗ۫۫ۢۖ۟۫ۨ۟ۨۘۤۧ۬";
            while (true) {
                switch (str2.hashCode() ^ (-1905646004)) {
                    case -1762073463:
                        break;
                    case -196994936:
                        String str3 = "ۥۡۖۘ۟ۜ۬ۗۨۡۘۡۜۘۡۥۦۧۧۗۖ۬ۢۢ۠ۥۧۧۖۘۚۖۜۥ۬ۘۡۗۦۨۨۦۘۗۥۜۚۤۡۧۙ۬ۛۧ۠ۗۖۡ";
                        while (true) {
                            switch (str3.hashCode() ^ 2101648373) {
                                case -1553951359:
                                    str2 = "ۧۘ۠ۡۧۙۛۘۢۗۧۛ۠ۘۦۘۘۦۧۘۘ۫ۡ۬ۤ۬ۡۨۜۨۡۨۘ";
                                    continue;
                                case 983964459:
                                    str2 = "ۡۘۨۘۜۦ۬۬ۥۨۜۢۛۢ۫ۘۘۚۙۨ۬ۤۡۘۙۙۖۡۛۛۧۢۡۜۙۖ۬ۡۘۖۤۦۘۤۦۙۥۢ۬ۚۥۥ";
                                    continue;
                                    continue;
                                case 1218136881:
                                    str3 = !str.startsWith("http://") ? "ۛۤۦۘ۟ۛۙۜۘۜۥۦۘ۠۠ۨۘۚۨۗۜۡۜ۫ۦۧۘۖ۬ۖۜۙۖۘ" : "۠ۛ۠ۙۛۥۘ۫ۡۜۛۥۦ۟۫ۙ۫ۖۥۙۦۢۜۤۚ۫ۘۖ۠ۘۢۥۘۖ۬ۨۘ";
                                    break;
                                case 1680067593:
                                    str3 = "۟ۨ۬ۨۖۧۨ۠ۖۘۢۚۨۛۖۜۛۡۛۖۙ۬ۤۦۖۘۢۙۦۘ۫ۖ۟ۖ۫ۗۘ۠ۜۡۥ۫ۙۦۘۡ۫ۜۘۤۘۗۦۚۖۖۧ";
                                    break;
                            }
                        }
                        break;
                    case 42103719:
                        str2 = "ۙۥۛ۠ۜۨۘ۫ۡۚ۠۠ۦۖ۟ۢۙۙۚۥۧۘۦۙۨۘۦۘۧۘۥۨۡۘۛۜۘ۬ۜۨۘۢۥۥۘۘۧۨ";
                        continue;
                    case 701540680:
                        String str4 = "ۤۧۖۘۜۥۤۦۦ۫ۨۤۘۦۘ۠۟ۚۡۘۚۧ۠ۤۖۘۘ۫ۨ۬ۥۤۧ";
                        while (true) {
                            switch (str4.hashCode() ^ 1942519154) {
                                case -1282411698:
                                    break;
                                case 556913015:
                                    String str5 = "ۦۜۖۘۖ۫ۗ۬۫ۜۘۦ۬ۙ۟ۘۢ۠ۢۥۘۘۘ۫ۘۖۙۨۤۥۘۗۜۖۡۗ۟ۚۜۚۨۢۜ۟ۡ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1068238485)) {
                                            case -1919154376:
                                                str5 = !str.startsWith("https://") ? "ۢ۫ۘ۬ۦۘۦۦۖۖ۬ۘۥۢ۬ۖۜۧ۬۫ۥۗۙۗۧۦۘ۬ۗۘۙۘۙۚۢۜۘۖ۠ۜۘ۫۬۫۟ۨۥۗۜ" : "ۚۖۡۧۜۛۨۨۢۢ۟ۡۘۜ۠ۥۘ۟ۦۚۙۛ۬ۢۢۖۥۤۡ۟ۡۚ";
                                                break;
                                            case -1522945346:
                                                str4 = "ۙ۠ۦۙۨۧۙۚۘۘ۬ۨۙ۟ۤۥۚۖۜۘۢۖۨۘ۬ۥۘۘۤۘۦ۠۬ۜۖۤۨ۫ۖ۠";
                                                continue;
                                                continue;
                                            case -914162302:
                                                str5 = "ۤۧۡۘۦۙۨۘۛۜ۟ۦ۟ۨۧۚۘۘ۬۬ۧۤۜۧ۟ۧۧۡ۬۟ۜۛۜۜ۬۠ۨۦۧۧۧۥۢۛۢۢۛۖۦۚۛ۬۫ۨۘ";
                                                break;
                                            case -210992128:
                                                str4 = "ۙ۫ۥ۫ۜۛ۟ۦۦۥ۠ۤۤۘۘۤۦۛۤۘۜۜ۠ۘۘۡ۫۬۫ۜ۬ۥۦۘۗۦۜ۠ۖۥۘ۫ۨۦۘ";
                                                continue;
                                        }
                                    }
                                    break;
                                case 1020751407:
                                    try {
                                        this.OooO00o.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    break;
                                case 2019409241:
                                    str4 = "ۖۛۗۡۦۢۦۛۧ۟ۦۘۖۙۛ۟ۢۖۡۘۦۘۡۢ۟ۧۨۡۢۜۦۘ";
                                    continue;
                            }
                        }
                        break;
                }
            }
            webView.loadUrl(str);
            return true;
        }
    }

    public class OooO0O0 implements TitleView.OooO0O0 {
        public final H5LinkJumpPageActivity OooO00o;

        private OooO0O0(H5LinkJumpPageActivity h5LinkJumpPageActivity) {
            this.OooO00o = h5LinkJumpPageActivity;
        }

        public /* synthetic */ OooO0O0(H5LinkJumpPageActivity h5LinkJumpPageActivity, OooO00o oooO00o) {
            this(h5LinkJumpPageActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "۫ۡۧۡۜۘۧۖۦۨۜۡۘۘۨۙۛۨۗۨۘۤۦۨۦۢۚۡۘۧۥۨۘۤۗۦۢۖۦۘۜۛۧ۬ۖۨۡۘ۫ۛ۫ۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 13) ^ as.OooO00o) ^ 195) ^ 2090748864) {
                    case -614897072:
                        return;
                    case 1665933371:
                        this.OooO00o.finish();
                        str = "ۗۨۗۢۜۦۨۙۡ۫ۥۥۦۡۤۢۘۦۚۙۡۘۖۚۖۘۤ۬ۢ۟۬ۖ۬ۘۨۘ۠ۛ۠ۖۡۡۘۖ۟۠";
                        break;
                    case 1738025612:
                        str = "۬ۛۖۨۨۧۡۘۤ۟ۚۢۨ۟۬ۗۥۛ۟ۥۘۘۢۗۜۘۧ۟ۡۙۧۦۖۦ۬ۨ۬۫ۤۦۤۛ۟ۗ";
                        break;
                    case 1783435108:
                        str = "ۚ۫ۧۦۖۢۡۧۨۙۡۢ۬ۚ۟ۢۚۧۗۛ۫ۤۡ۫ۜۥۙۗۛۨۘۘ۠ۘۛۖۤۜۖۨۨ۠ۡۘۜۘۗۨۘۧۘۜۥۜۘۤ۠ۧ";
                        break;
                }
            }
        }
    }

    private void OooO0oO(String str) {
        WebSettings settings = null;
        String str2 = "ۙۡۦۛۤۦۡۥۡۧۜۘۘ۟ۖ۟ۢ۬۬ۦۛۦۡۡ۫ۢۜۤۙۨ۟ۜ۬ۡ۟";
        while (true) {
            switch ((((str2.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE) ^ me.o0000OO0) ^ UiMessage.CommandToUi.Command_Type.FW_SET_TEXT_VALUE) ^ (-279974915)) {
                case -1946878547:
                    settings.setDomStorageEnabled(true);
                    str2 = "ۖ۬۫ۡۗۥ۬ۛۛ۬ۛۦۥۛۘۘۤۥۘۘۗۚۦۘۗۜۦۢ۟ۖۘۦۥۢۥۢ۟ۚۨۛ۫ۘۡۘۗۙۗۚۖۛ۬ۡۡۘۖۦۦۚۤۢ";
                    break;
                case -1916945072:
                    settings.setLoadWithOverviewMode(true);
                    str2 = "ۚۙۦۘۙ۠ۙۥۜ۫ۜ۬ۡۗۙ۫ۨۗۖۛ۟ۚ۠ۥۖۤۙ۠۬ۤۛ";
                    break;
                case -471905274:
                    settings.setBuiltInZoomControls(true);
                    str2 = "۠ۘ۠ۙۡۖۦۖۨ۟ۧۜۙۥۦۘۦۥۢ۫ۘۧ۬ۛۚۗۨۤۜۛۗۖۦۦۦ۫ۡۛ۬ۘۘ۬ۨۙۛۜ۠۠ۡۘۗۥۡۢ۠ۨۘ";
                    break;
                case 20469680:
                    str2 = "ۙۜ۟۠ۦۨۦۖۙ۠۟ۗۙۚۙۧۡۘۗ۠ۜۘۦۘۙ۟ۧۗ۬ۡۜۘۨۚۦۢۚۥۘ";
                    break;
                case 93734642:
                    return;
                case 268148036:
                    settings = this.OooooOO.getSettings();
                    str2 = "ۜ۠۬ۤۗۖۘۦۦۡۘۚۥۘۘۧۡۜۘۙۙۖۘۘۧۤۙۦۨۘۚۘۖۡۜۦۡۡۘۖۖۨۥۡۚۤۥ۬";
                    break;
                case 367009805:
                    str2 = "ۛۤ۠۟ۘۘۘۧۖۙۢۖ۟۠ۘۙ۠ۖۡۙ۟۫ۢۡۘۨ۬ۢۗۥ۬";
                    break;
                case 417963959:
                    this.OooooOO.setWebViewClient(new OooO00o(this));
                    str2 = "ۛ۠ۨۘۧ۟ۤۧ۟۟ۡۡۘ۠ۦۥۘ۫ۡۧۘۦۢۡۘۥۦۧۘۧ۟ۡۗ۟۫ۧ۟ۛ۫ۨ";
                    break;
                case 452058788:
                    settings.setDatabaseEnabled(true);
                    str2 = "ۦ۟ۢۘۡۥۛۡۨۘۥۛۢۗۥ۫ۦۛ۫ۗۛۜۘۛۛۧۨۚۢۚ۫ۖ۠ۗۘۨۥۖۢۢۡۦۨۘ";
                    break;
                case 853435016:
                    settings.setJavaScriptEnabled(true);
                    str2 = "ۘۛۦۘۛ۠ۨۘۢۢۤۖۧۜۥۡ۟ۡ۠ۗۚ۠ۥ۬۫ۦۘۢۡۥۘۢۛۛ";
                    break;
                case 1374035200:
                    this.OooooOO.loadUrl(str);
                    str2 = "ۧۨۨۘۤۗ۠ۧ۫ۦۘۜۤۖۘۜۢ۬ۗ۫ۡۗ۫ۨۘۗۜۜۖۡۥۜ۬۠ۖۗۥۢۚۤۜۥۥۘۦۚۡ";
                    break;
            }
        }
    }

    private void OooO0oo(String str) {
        OooO00o oooO00o = null;
        String str2 = "ۥۥۥ۟ۖۤ۫ۥۨۧۤۤۥ۬ۘۘۥۘ۠۟ۡۜ۟ۢ۟ۤۨۜۨ۠۟۠۠۠ۦۖۡۘۥۘۜ";
        LinearLayout.LayoutParams layoutParams = null;
        TitleView titleView = null;
        while (true) {
            switch ((((str2.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE) ^ 823) ^ 839) ^ (-1912989184)) {
                case -2078845739:
                    titleView.setleftImage(R.drawable.ic_back);
                    str2 = "ۦ۬ۡۜۢۡۘۡۛۥۙ۠ۨۘۚۘۦۤۦۨۘۙۨۖ۟ۛۖ۟ۚۜۘۗۥۧۘۖۙۨۘۡۛۥۘۤ۫ۢ۟۠ۖ";
                    break;
                case -1802577539:
                    titleView.setVisibilityTvRight(0);
                    str2 = "ۨۢ۬۟ۖۨۦۛۘۛۚ۬ۡۡۢۜ۠ۖۘۦۖۥۜۨۖۘ۫ۙۧۘۚۜۘۦۘۡۘ۠ۖۛ";
                    break;
                case -1653086516:
                    layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    str2 = "ۤ۫ۧۜۤۨۘۢۢۚۦۜۜۘۦۙۜۥۥۢۘۜۘۘ۠ۘۤۦۚۙ۬۬ۛۜۨۘۨ۫۟ۡۢ۠ۦۡۘۘ";
                    break;
                case -1560885449:
                    this.OooooO0 = (LinearLayout) findViewById(R.id.ll_root);
                    str2 = "ۜ۠ۨ۬۫ۡۘۥ۠ۨ۟۫ۚۤۛۘۘۧۘۜۘۧۧۦۘۥۚۡۘ۬ۙ۫ۖۦۥۘۖۗۚۗۨۜۛۥۗۧۚۢ";
                    break;
                case -1346343961:
                    str2 = "ۡ۟ۧ۫ۜۡۘۥ۫ۜۤ۠ۡۗۤۨۘۦۦۖۤۙۤۨۦۥۘۖۤۢۧۗۡ۬۟ۖۘ۫۫ۜۦۥۚ۠ۜۗۚۤ۫۫ۤۘۘ";
                    break;
                case -1248591413:
                    return;
                case -1070262586:
                    this.OooooO0.addView(this.OooooOO, layoutParams);
                    str2 = "ۨ۫ۤۤۙۡۖۢ۬ۦۢ۬ۘۥۥۤ۟ۨۘۚۘۦ۠ۤۡۨۧۨۥ۠۫ۜۦۢۨۤۘ۟ۤۘ۟ۙۖۚۤۛ۠ۦۧۜۖۘۧۚۤ";
                    break;
                case -745361106:
                    str2 = "ۥۖۜۘۘۡۜۚۨۘ۠۟ۜۘۡ۟ۡۘ۟ۗ۟ۦۡۦۘۤۛۡۘۗۡۦۜۨۘ";
                    titleView = (TitleView) findViewById(R.id.title_view);
                    break;
                case 8397612:
                    titleView.setVisibilityRightImage(8);
                    str2 = "۠ۗ۫۫ۗۨۘ۟ۨۨۘ۬ۨۧۘ۫۟ۦۡۥۜۘۥۛ۠۫ۗ۫۫ۖ۠ۤۖۘ";
                    break;
                case 872891329:
                    titleView.setTitleText(str);
                    str2 = "ۧۘۖۨ۬ۨۘۦۦۜۘ۬ۗ۠۫۟۬۫ۜۨۨ۟ۖۘۘ۬ۘۘۖۢۨۚۢۦۘ";
                    break;
                case 1551763944:
                    str2 = "ۨۙۥۘ۟۠ۧۤ۠۫ۤۙۦۘۙۨۘۨ۬ۛۥۛۘۘۙۖۡۘ۫ۧۢۡۦۦۘۨۧ۫۟ۚۦۘ۠۫ۦۨۦۘۘۖۙ۠ۧۦۜ";
                    break;
                case 1901908246:
                    titleView.setOnLeftImageViewListener(new OooO0O0(this, oooO00o));
                    str2 = "ۢۡۨۘۤ۟ۡۢۘ۟۠ۤ۫ۛۗ۠ۨۥۡۚۜۘۤۗۛ۠۟۬ۤۧۘۘۧۘۚۧ۬۫ۘ۫ۛۥۖۛۘۧۘ۬ۜۡۘ";
                    break;
                case 2016098887:
                    this.OooooOO = new WebView(getApplicationContext());
                    str2 = "۬ۛۨۘۚ۬ۢ۟ۧ۠ۥۜۜۚۨۥۘۖۡۙۙ۬ۚ۟ۤۧۧۙۖۘۧ۠ۜۘ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۡۦۡۜ۫ۗۛ۠ۡۘۥۘۥۘۦ۬ۥۘۧۢۘۘۚۧۖۘۘۤۨۘ۫ۡۖۖۤۘۘۗ۟ۖۜۘۘۦۨۘۚۡ۬";
        String stringExtra = null;
        String stringExtra2 = null;
        Intent intent = null;
        while (true) {
            switch ((((str.hashCode() ^ 615) ^ 178) ^ 972) ^ (-1214787291)) {
                case -1861163422:
                    str = "ۛۛ۠۬ۖۧۥۥۤ۬ۨ۬ۘۦۡۘۧۦۡۤۨۤ۫ۧۗۥۧ۬ۧۙ۬۫ۢۘۘ۠۟ۥ۬ۖۧ۟ۘۢۡۛۙۧۡۥۘ";
                    intent = getIntent();
                    break;
                case -924773623:
                    super.onCreate(bundle);
                    str = "ۤۖۜ۬۬ۜۨۙۧ۠ۢۜۚ۬ۖ۠ۘۡۘۛۢۛۖۦۦۘۖ۠ۦۘۡۘۤۜۗۤۘۙۤۢۜۛۜۦ۠ۜ۟ۖۘۡۥ۠۠ۨۙۧ۟۟";
                    break;
                case 571787084:
                    str = "ۘۛۜۘۚۥۚ۠ۖۦ۟۠ۚۘۢۜۘۘ۠ۡۜۖۡۘۚۚۖۘۘۗۢۘۢۦۘ";
                    stringExtra2 = intent.getStringExtra(H5LinkJumpPageActivity.class.getCanonicalName());
                    break;
                case 827812185:
                    return;
                case 894200922:
                    setContentView(R.layout.activity_h5_link_page);
                    str = "ۥ۟ۥۛۛۤۗۢۤۦۛۘ۟ۨۛ۬ۨۜۛ۠ۚ۟ۚ۟ۢۥۘۜۖۘۘۦۡۘۘۡۘۡۙۗۦۘۖۦ۬۫ۡۧۖ۟ۨۘ";
                    break;
                case 940636098:
                    OooO0oO(stringExtra);
                    str = "ۢ۫ۡۘۢ۟ۨۜ۟ۧۥۨۜۘۛۜ۬ۢۥۧۘۗ۟۫ۧۥۢۤ۟ۧۚ۫۬ۛۡۘۡ۬۫";
                    break;
                case 1159465407:
                    str = "ۗۘۘۨۥ۟۫ۢۤۗۡۨۘۜۡۥۖۖۛۜ۬ۦ۠ۤۢۛ۬ۤۙۘۜ۠ۚۢ۠۫۟";
                    break;
                case 1177653014:
                    OooO0oo(stringExtra2);
                    str = "ۘۡۨۘۙ۠۫ۗ۟ۨ۬۟ۡۜ۫ۨۢۤۥۦ۫ۦ۠۬ۢۛۧ۬ۚۛ۟ۘۚ۬ۡ۫";
                    break;
                case 1447189986:
                    str = "ۦۥۜۘ۠ۧۙۜۡۗ۠ۡۧۥ۫ۗۡۤۘۘۙ۠ۖۘۖۘۦۘ۟ۜۛۘۧۥۗۚۖۙۥۤ";
                    break;
                case 1781982126:
                    stringExtra = intent.getStringExtra(H5LinkJumpPageActivity.class.getSimpleName());
                    str = "ۙ۟ۥۧۥۨۘ۟۟ۦۘ۬ۗۨۧ۬ۤ۠ۦۗۡۜ۬۬ۡۜۘۜۨ۟ۡۤۡۘۙ۟ۚۥ۬ۨۜ۬۬ۚۛ۟";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۧۢۘۘۨ۠ۦۘ۬ۥۦۘ۟ۨۢ۬ۛۚۚۜۢۥ۟ۥۘ۠ۚۨۤۡۖۜۤۨۘۤ۠ۨۘۛۖۧۗ۫ۚۧۥ۟ۙ۬ۧ۟ۢ۬";
        WebView webView = null;
        while (true) {
            switch ((((str.hashCode() ^ 995) ^ 896) ^ 222) ^ (-1682104924)) {
                case -1996766980:
                    this.OooooOO.removeAllViews();
                    str = "ۜۡۧۘۘۡۚۛۙۢۥۧۦۗۗۧ۟ۚۨۘۢۥۥۡۡۧۗۦۢۖۛۘۘ۬ۥۖۤۤۚ۠ۤۛۨۙۢۙ۟ۜۘۗۢ۬ۡۡۡۤۜ";
                    break;
                case -1818003693:
                    return;
                case -1671502577:
                    String str2 = "ۗۢۥۘ۫ۖۥۧ۫ۖ۠ۡۜۘۖ۬۬ۜ۟ۦۨ۠ۨۧۤ۠ۘ۬ۨۨۘۜۤۚۧۥ۠ۤۖۙۦۢۤ";
                    while (true) {
                        switch (str2.hashCode() ^ (-47899403)) {
                            case -1884603599:
                                str = "ۜۢۥۨۛۥۤ۬ۡۘ۟ۦۜۘۗۡۘ۠۬ۥۘۧۖۧۢۜۖۧۦۘۖۜۥۙۚ۫ۢۤ";
                                continue;
                            case -616153701:
                                str2 = "ۗ۟ۜ۬ۜ۫ۨۖۖۘۛ۠ۦۗۤۡۘۤۛۛۤۨۦ۟ۤ۠ۜۤۡۘ۟۬ۘۜ۠ۦۘ۠ۤۧۤۗۤۙ۬ۘۡۧۜۘۡۖ۟ۖ۫ۢۘۖ۠";
                                break;
                            case -13416489:
                                String str3 = "ۘۥۜۘۛۤۨۘۤۦۦۘۙۖ۫ۜۖ۠۬۫ۤۗۙۦۘۘۘۤۛ۫ۗۖۦۨۘۥۙۦۘۖۖۦۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1022493936)) {
                                        case -2108698760:
                                            str2 = "ۦۥۨۘۢۙ۬ۡۘ۠۠ۦۡۘۦۧۡ۠ۡ۠۫ۡۖۘۥۥۘۘۡ۟ۜ۟ۡۦۜۘۘۦ۟ۜۥۢ۠ۡۡۦ۠ۤۗۡۦۗۡۖۨۨۙۢ";
                                            break;
                                        case -913964567:
                                            str2 = "ۢ۟ۨ۬۠ۗۨۤ۠ۡ۟۬ۡۦۨۘ۠ۡۨۡۡ۟ۜۤۢۨ۟ۜۗ۫ۡۗۗۦۘۚۢۛ";
                                            break;
                                        case -101288746:
                                            str3 = webView != null ? "ۙۜۚۖۙ۬۬۠۬ۚۚ۟ۤ۠ۥۘۧۥۖۛۦۜۘۦۛۜۡ۠ۖۘۚۜۛ" : "ۡۡ۠ۖۡۙۘۥۤۡۦۚۗۜۨۨۥۤۗۤۥۤۗ۬ۨ۬ۖ۫ۛ۫ۡ۬ۙۜۤۥۘۘۢ۫ۛۗۗۧۗۜ۟ۢۙ۫ۖۧۚۡۘ";
                                            break;
                                        case 187175896:
                                            str3 = "ۚۨۡۨ۬ۨ۬ۡۧ۠ۥۙۤۜۜۥۡۙۗۢۡۘ۬ۥۨۡۦ۬۠ۥۨۜۛۤۢۛۚ";
                                            break;
                                    }
                                }
                                break;
                            case 171447564:
                                str = "۫ۘۖۢ۠ۡۢ۟ۘۚۜۡۡ۟ۤۥۡۘۤۦۤۦ۬ۢۗ۟ۡۢۗۖۛ۠۬ۨۤ۬ۥۚۡۤۧ۠";
                                continue;
                        }
                    }
                    break;
                case -1581251921:
                    super.onDestroy();
                    str = "ۛۥۖ۟ۢۨۘ۠ۚۘۘ۟ۗۨۢۘۧۘ۠ۨۦ۠ۧۙ۟ۢۖ۫ۜ۬ۚۗۢۚ۬ۖۘۙۗۙۧۛۗۗۛ";
                    break;
                case -1144981556:
                    this.OooooOO = null;
                    str = "ۜۢۥۨۛۥۤ۬ۡۘ۟ۦۜۘۗۡۘ۠۬ۥۘۧۖۧۢۜۖۧۦۘۖۜۥۙۚ۫ۢۤ";
                    break;
                case -590453655:
                    this.OooooO0.removeView(webView);
                    str = "ۛۡۛۥۗۙۜۥۡۢۤۦۦۚۚۨۘۗۥ۟ۦۗۖۤۗۦۗ۫ۙۖۤۜۥۚۨۤۛۜۖۨ۫ۛ۟ۛۨۡۘ۫۠ۤۜ۬ۥ";
                    break;
                case 188491474:
                    webView = this.OooooOO;
                    str = "ۧۤۘۜۡۘۥۥ۫ۢ۟ۨۘۘۙۙۤ۠ۚ۬ۡۥۨۡۡۙ۬ۗۨۘ";
                    break;
                case 1427451963:
                    str = "ۘۖۘۡۚ۫ۥۧۢۘۙ۫ۢۜۙ۫ۥۚۚۙۛ۟ۤ۟ۘ۫۫ۦ۠ۥۨۘۡۘۜۙ۫ۘۤۜۘ۬ۛۨۛ۬ۘۤ۬ۧ";
                    break;
                case 1781533876:
                    this.OooooOO.destroy();
                    str = "ۗۙۥۘۖۗۥ۬ۡۖ۬ۥۙۜۨۜۘ۠ۛۖۘۘۧ۫ۖۜۢ۟۬ۖۥۦ۫ۙۦۛ۟ۜ۬";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۨۤ۠۠ۜۜۗۖۢۡۘۚ۠ۨۨۢ۟ۤ۫ۢۜۥۜۧۘۛۘۛۦۡ۬";
        while (true) {
            switch ((((str.hashCode() ^ 978) ^ 52) ^ 58) ^ (-455577518)) {
                case -2113587298:
                    MobclickAgent.onPause(this);
                    str = "ۨۡۧۢۜۧۛ۫۬۠ۡۢ۫ۙ۫ۖ۫ۥۧ۟ۖۖۢۛۢ۟ۘۧۘۧۛۨۘۙۧۨۘ";
                    break;
                case -1602118893:
                    str = "ۦۛۨۘ۠ۛۡۘۛۜۗۛۚۦۘ۠۟ۨ۬ۜۧۧۢۜۧۨۡۘ۬ۚۜۘ۟ۖ۠ۨۖۦۘۥۛۡۘ";
                    break;
                case -1210572609:
                    super.onPause();
                    str = "۬۬۬ۗۢۜۡۙۖۘۛۗۤۜۛ۠۟۫ۦۘۤۙۘ۟ۛۨۘۧ۠۫ۧ۟ۡ";
                    break;
                case 2118086536:
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۘۧ۠۬ۗۜۤۤۨۘۧۜۡۗۗۦۘۨۛۡۘۛ۬ۚۖۤۥۘ۠ۙۚ۬ۛۦۘۡۤۨۘۘۘ۬۠ۚۚۖۡۜۤۡۥۜۡۘۘۜ۬ۖۘۤۖۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 379) ^ 536) ^ 263) ^ (-779663188)) {
                case 207600587:
                    MobclickAgent.onResume(this);
                    str = "ۨۡۨۗۛۦۚۥۘۗۧۢۙۖ۬۟ۨۗۤۤۦۘۗۥۨۜۚۦ۫ۙ۬ۡۢۖۥۦۛۛۗۦۘۥۥۥۘۚۗۥۖ۟";
                    break;
                case 262260514:
                    str = "ۦ۬ۥۢۛۚ۟ۛۦ۬ۙۢۨۗ۬۬ۘۨۖ۠ۡۚۙۗ۫ۖۢ۬۠ۖۙۢۗۚ۫ۛۘۧۡۚۡۛۨۡۜۘۗۦۜۘۘۧۦۚۧۛ";
                    break;
                case 939326252:
                    return;
                case 1047831397:
                    super.onResume();
                    str = "ۖۤۖۧۜۙۙۥۤۖۖۜۢۡ۬ۥ۟ۦۘۙۖۖۘۥۖۦۘ۟ۘۥۘۘ۟ۨۘۤۖۘ۠ۜ۫ۢۛ۠ۡ۫ۡۘۖ۫ۙۡ۠ۙۥۦۥۘ۫ۗۚ";
                    break;
            }
        }
    }
}
