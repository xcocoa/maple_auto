package com.cyjh.elfin.ui.activity;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.PointerIconCompat;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.Observer;
import com.ac.R;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.china.common.d;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.ui.activity.guide.RecognitionGuideActivity;
import com.cyjh.http.bean.response.PhoneConfig;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.util.ArrayList;
import z2.ai;
import z2.c5;
import z2.ci;
import z2.f4;
import z2.h6;
import z2.ih;
import z2.ii;
import z2.ka;
import z2.l3;
import z2.m4;
import z2.me;
import z2.nh;
import z2.o0oo0000;
import z2.oi;
import z2.p1;
import z2.qa;
import z2.qh;
import z2.r3;
import z2.rh;
import z2.v3;
import z2.x9;
import z2.xh;
import z2.y8;
import z2.zh;

/* JADX INFO: loaded from: classes.dex */
public class SplashActivity extends BaseModelActivity<qa> implements View.OnClickListener {
    public static final int o00Oo0 = 8;
    private static final int o00Ooo = 200;
    private static final String o00o0O;
    private static final int o00ooo = 1;
    private ImageView OooooOo;
    private LinearLayout Oooooo;
    private TextView Oooooo0;
    private TextView OoooooO;
    private rh Ooooooo;
    private OooO ooOO;
    private String[] OooooOO = {d.a, d.b, "android.permission.READ_EXTERNAL_STORAGE", "android.permission.CALL_PHONE", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.SEND_SMS", "android.permission.READ_SMS", "android.permission.READ_CONTACTS", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.CAMERA"};
    private int o0OoOo0 = 0;
    private nh<String> o00O0O = new OooO00o(this);

    public class OooO extends l3 {
        public final SplashActivity OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private OooO(SplashActivity splashActivity, int i) {
            super(i);
            this.OooO0OO = splashActivity;
        }

        public /* synthetic */ OooO(SplashActivity splashActivity, int i, OooO00o oooO00o) {
            this(splashActivity, i);
        }

        @Override // z2.m3
        public void OooO0O0(int i) {
            String str = "۫۠ۦۥ۠ۚۙ۟ۘۘۦۡۖۥۨۥۘۗۦۧۥۧۘ۫۠ۤۡۚ۠ۧۙۜۘۡۖۨ۫ۤۡۘۦۦۘۘۦۥ۠۠ۧۢۧۧۥۘۚۥ۫ۢۗ۟";
            while (true) {
                switch ((((str.hashCode() ^ 898) ^ 10) ^ 939) ^ (-1825856226)) {
                    case -1906698450:
                        str = "ۙ۠۫ۧۨۦۘۦۤ۬ۨ۠ۦۦۧۖۘۨۖۥۨۨۗۦۘۤۜۥۧۜۨۧۘۥۘۙۤۥۘۚۙۘۘۨۢۨ۫ۚۡ۬ۡۛۢۡۤۖۤۡ";
                        break;
                    case -461231283:
                        return;
                    case -244960476:
                        str = "ۚۢۖۘ۫ۗۚۦۘۦۚۧ۠ۛۛۦۘۨۢۡ۠۟ۦۘۘۨۦۘۧۗۛۜ۬ۢۘۨۨ۠۬ۛۧۛۖۤۚۦۜ۬ۨۘ۫ۖۡۘ";
                        break;
                    case 199395936:
                        SplashActivity.OooOo00(this.OooO0OO);
                        str = "ۢ۫ۘۦۨۡۘۦۚۡۗۡۖۘۙۙۖۘۧۡۨۘۘ۟ۨۘۨۛۙۥ۬ۥۧ۟ۖۘۥۨۦۘ۫ۛ۠۬ۜۖۘۥۜۜۗ۟ۦ۠ۖۚۙۥۛۨۚۥۘ";
                        break;
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            String str = "ۢۡۖۘۢۖۥۘۨۢۜۘۘۢۥۘۖ۠۠ۡۨۨۘ۠۟ۨۘۘۧۘۨۘۚ۬ۨۧۘۚۨۛۦۛۜۘۥۡۨۙۙ۬ۨۙۘۙۧۘۥۨۘۢۜۛ";
            while (true) {
                switch ((((str.hashCode() ^ 19) ^ 907) ^ 399) ^ (-843088232)) {
                    case -1510957783:
                        SplashActivity.OooOo0(this.OooO0OO);
                        str = "۫ۛۚ۟۠ۨۗۜۗۨ۟ۘۘ۟ۢۖۘۚۧۖۖۦۘۙۧۤ۠ۧۨۘ۬۠ۨۘۙۛۥۘۙۗۦ۟۟ۡۘ۟ۗۡۛۗۡۘ۫۫ۜ";
                        break;
                    case -489885967:
                        str = "ۙۘ۠۫ۗۛۗۗۖ۫ۘ۟۬۬ۖۙ۫ۦۘۧۚۥۢۧ۠ۧ۟ۖ۫ۥۜۘۥۦۗۛ۫۫ۚۚۨۘۢۚۚۥۥۥۙۨۚۤۚۨۜۘۨۘ";
                        break;
                    case 1063204838:
                        return;
                }
            }
        }
    }

    public class OooO00o implements nh<String> {
        public final SplashActivity OooO00o;

        public OooO00o(SplashActivity splashActivity) {
            this.OooO00o = splashActivity;
        }

        @Override // z2.nh
        public void OooO00o(String str) {
            String str2 = "ۗ۟ۖۗۚۦۘۛۧۥۘۚۦ۫ۜۨۘۢۦۨۘۚۤۖۜۖۡۘۛۚۧۙۢۦۘ";
            while (true) {
                switch ((((str2.hashCode() ^ 238) ^ 90) ^ 237) ^ (-1094470835)) {
                    case -1791589603:
                        str2 = "ۗۥۧ۠ۥۘۘۧۢۖۙۚۚۖۤۥۘۗ۬ۜۡ۟ۛۥ۫ۡۗ۟ۖۘۥۦۨ۫ۥۖۘ۬ۛۖۘۧۗۢۧۧۘۚۙۦۘۢۗۦۗۨۦۘۙۘۜ";
                        break;
                    case -1641845162:
                        str2 = "۬ۡ۟ۜ۟۫ۧۡۙۚۦۛ۬ۖۢۡۨۥۘ۠۟ۦۘۛۜۧۘۧۚۨۘ۠ۨ۟";
                        break;
                    case 323318585:
                        String str3 = "ۙۧ۟ۘ۬ۤۡۚۥ۬ۗۛۜۨۗۤۛۖۘۨۧۘۘ۠ۚۚۚۛۜۘۗۛ۫ۡۤۖۘۡۜ۫ۨۖۦۤۥۢ";
                        while (true) {
                            switch (str3.hashCode() ^ (-1748554683)) {
                                case -2004416246:
                                    str3 = "ۤۡۚ۫ۢۙۗۧۡۧۤۧۚۦۜۘۡۜ۟ۡ۠ۥ۫ۖۘۖۜۨۦۨ۟";
                                    break;
                                case -1328303419:
                                    str2 = "ۨ۠ۖۘ۠ۧ۫ۦۢۧ۫ۡ۟ۛ۟ۢۙۘۘۢ۠۟۟ۡۖۘۦۖۡ۠۟ۧۗ۟ۡۛۥۡ";
                                    continue;
                                case -1039898257:
                                    String str4 = "۠۠ۥۢۤۡۘۖۜۘۙ۠۫ۛۙۨ۫ۗۡۘۢۚۖۘۡۦۥۘۡۖۗۗۛۛۜۧۛۛ۬ۥۘۚۙۢۢۛۨۘ";
                                    while (true) {
                                        switch (str4.hashCode() ^ 435331949) {
                                            case -1606350788:
                                                str4 = "ۢۤۧۘۦۧۜۨۗۜۤۨۘۛۖۢۖ۠ۧۡۙ۠ۖ۟ۚۘۘ۫ۧۘۘۘۚۚۘۘۙۜ۟۬ۖۜۘۥۘۡۘ";
                                                break;
                                            case -1297791181:
                                                str3 = "ۦۨۥ۫ۡۢۢۥۦۘ۬ۜۧۦۤۨ۟ۤۖ۬۠ۦۛۙۚۛۘۘۦۘۘۘۚۜۚۚۥۚ۠ۧۙۤۙۜ";
                                                break;
                                            case 656481194:
                                                str3 = "۬ۘ۫۟ۙ۬۠ۘۙۦۥۘۗۨۢۨۦۚۤ۟ۚۘۜۖۘۦۨۙۘۡ۫ۙ۠ۦۜۘ۟ۦۛۦۛ۠ۙۨۜۨۜۡۨۡۢۡۘۘۛ۫";
                                                break;
                                            case 2072822577:
                                                str4 = !TextUtils.isEmpty(str) ? "ۗۤۧۘۡۦۛۛۨۚۥۨ۬ۗ۫۫ۡۖ۠ۤۦۜۙ۫ۦۚۖۘۚۡۖۦۨۡۘۡۙ۬ۡ۠ۖۘۙۧۦ" : "ۘۚۤۜۗۖۘۦۡۘۥۥۦ۫۠ۗۦۥ۫۟ۨ۟ۥۦۤ۬ۛۦ۫۟ۘۘۤۚ۟ۡ۟ۦۤۧۤۦۨۧۛۢۢۖۚۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case -901648315:
                                    str2 = "ۙ۠ۛۛۖۤۚۙۦۘۚۛۜۨۥۧۢۛۖ۬ۨۘ۟ۦۥۛۢۛۖ۟۠ۧۥ۟۫ۚۥۙۡۥ۬ۚۨۘ";
                                    continue;
                            }
                        }
                        break;
                    case 426488206:
                        SplashActivity.OooOOOO(this.OooO00o).setVisibility(0);
                        str2 = "ۙ۠ۛۛۖۤۚۙۦۘۚۛۜۨۥۧۢۛۖ۬ۨۘ۟ۦۥۛۢۛۖ۟۠ۧۥ۟۫ۚۥۙۡۥ۬ۚۨۘ";
                        break;
                    case 446746733:
                        return;
                    case 1116671875:
                        SplashActivity.OooOOOO(this.OooO00o).setText(String.format(this.OooO00o.getString(R.string.ad_source_mark), str));
                        str2 = "ۗۙۜۥۙۤۜۡۚۨ۠ۜۛۘۧۘۛۧۢۢ۠ۖۘۙۥ۠ۛۤ۫ۤۥۚ۟ۗۢ۟ۥۢ";
                        break;
                }
            }
        }

        @Override // z2.nh
        public /* bridge */ /* synthetic */ void OooO0O0(String str) {
            String str2 = "ۡۦۦۘۜۚۛ۬ۚ۫۠ۨۘۛۘۨۧۚ۬ۚۖ۫ۗۖۨۘ۟ۨۖ۫ۘۦۘ";
            while (true) {
                switch ((((str2.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_FW_ENABLE_VALUE) ^ 971) ^ 308) ^ 987221877) {
                    case -1615460377:
                        return;
                    case -624814010:
                        str2 = "ۚۤۗ۟ۘۧۘ۫ۡۦۙۥ۫۟ۘۡۘۚۦۢۗۘۗۚۨۛۚۘۖۨۤ۬ۚۘۧۘ۬ۛۦۘ";
                        break;
                    case -608081478:
                        OooO0o(str);
                        str2 = "۬ۤۡۗ۫ۡ۬ۤۤۥۜۡۚۘۘۖۤۘۘۤۤۨ۬ۨۢۢۘۦۘ۫ۤۡۘۧۙ۠۠ۢ";
                        break;
                    case 615159788:
                        str2 = "ۡ۫ۘۥ۟ۖۘۚۨۜۘۨۜۧۘۘۚۨۘ۠ۢۨۘۚۧۘۦۢۚۨۥ۬ۗۨۙ";
                        break;
                }
            }
        }

        @Override // z2.nh
        public void OooO0OO() {
            String str = "ۘۘ۠ۜۙ۠ۘۦۢۖۜۗۧ۠ۢۜۥۦۡۘۨۘۛۤۖۘۢ۠ۘ";
            while (true) {
                switch ((((str.hashCode() ^ 688) ^ 962) ^ 626) ^ (-1100992552)) {
                    case -277901409:
                        return;
                    case 972055354:
                        SplashActivity.OooOOo(this.OooO00o);
                        str = "۠ۗۗ۫ۛۙۗۨ۫ۧ۫ۙۦ۫ۧۡۛۖ۠۠۫ۧۗ۬۠ۙۜۘ۫ۨۦۘۗ۠ۗ۫ۗ";
                        break;
                    case 1106420300:
                        str = "ۦۖۨۜۚۥۧۛۘۘ۠ۢ۫ۙۧۗۗ۫ۙۗۙۥۜۦۥ۠ۚۗۢۛۤۢۚۦۘۛ۟ۘ";
                        break;
                }
            }
        }

        @Override // z2.nh
        public void OooO0Oo(int i) {
            String str = "ۙۛۤ۫ۡۧۘۙ۬ۛۥۙ۫ۙۦۥۛۢۗۡۥۥۘۤۦۡۦۛۦۘۜۘۜۥ۠ۗ۟ۨۨۘ";
            while (true) {
                switch ((((str.hashCode() ^ 579) ^ 881) ^ 615) ^ (-862844216)) {
                    case -2015964305:
                        SplashActivity.OooOOOo(this.OooO00o).setVisibility(0);
                        str = "ۜۨۧۘۖۦ۠ۛۢ۫ۤۦۥۧ۟ۢۧۧۗۨ۬ۜۦۙۤۤۖ۟ۡ۫۫ۥ۫ۥۖۨۥۨ۬ۧۡۖۡۘۖۖۘۧ۬ۡ";
                        break;
                    case -1461312978:
                        ((qa) SplashActivity.OooOOo0(this.OooO00o)).Oooo(i);
                        str = "ۗۦۚۙۘۜۘۚۛۚ۫ۚۡۘ۟ۥۜۘ۟ۡۧۖۤۚ۫ۨۢۤ۠ۦۘۢۛۧۜۚۨۦ۟ۗۦۙۥۘۙۡۥۘۥۢ۫ۗۡۙ";
                        break;
                    case -791952604:
                        str = "ۗۖۖۘۥۤ۫ۚۙ۟ۗۜۜۙۨۚۗۦۘ۟ۙۦۤۤۜۘۛۚۜ۫ۚۥۥۘۘۨۛۛ";
                        break;
                    case -692622610:
                        return;
                    case -59845623:
                        str = "۬ۦ۬ۢ۟ۦ۠۟۫ۛۘۘۘ۬ۜۖۖۢۙ۫ۨۤ۠۫۫ۡۘۡۛۤۚ";
                        break;
                    case 91362361:
                        this.OooO00o.OooOo();
                        str = "ۦ۫ۢۗۦۥۤۖ۟۫۟ۘۘۨۚۖ۫ۙۘۘۨۥۜۘۥۦ۟ۡۥۙۘۤۘۡۦۘۚۚۖۨۘۖۥۢ";
                        break;
                    case 321165395:
                        SplashActivity.OooOOOo(this.OooO00o).setOnClickListener(this.OooO00o);
                        str = "۬ۡۙۦۧۖۤۘۜۘ۬۟ۖ۬ۡ۫ۗۥۡۘۥۜ۫ۙۦۛۧۥ۟ۘۤ۬";
                        break;
                }
            }
        }

        public void OooO0o(String str) {
            String str2 = "۠ۚۤۧۦ۫ۛۘۘۛۚۜۗ۫ۗۖۗۘۖۗۚۗۙۗۨ۟۟ۖ۫ۨ";
            while (true) {
                switch ((((str2.hashCode() ^ 785) ^ 187) ^ 883) ^ 1258428366) {
                    case -1157754645:
                        return;
                    case -748117406:
                        str2 = "ۥۛۖۘۢۥۡ۠ۥۚۗ۟ۡۘۚۚۖۦۤ۠۬ۛۛۙ۠۟ۖۗۢۗ۠ۦۢۘۥۘۧۧ۟ۖۘۡۡۙۧۢۘۘ۬ۥۙ۠ۢۤۜۜۦ";
                        break;
                    case 1523499313:
                        SplashActivity.OooOO0(this.OooO00o, str);
                        str2 = "ۥ۠ۡۤۨ۫۠۬ۖ۫ۗۜ۫ۚۧ۬ۖۖۘۜ۠ۖ۟ۖۛ۫۠ۖۘۛۜۘ۠ۦۖۦۦۖۘۜۚۢ۠ۘۗ";
                        break;
                    case 1846573704:
                        str2 = "ۖ۫ۜۚۖۦۨۢۨۜ۟۬ۥ۫ۨ۬۟ۦ۟ۤ۟ۜۦۧۧۖۜۤۜۘۤۥ۠ۧۜۛ۬ۚۧ۠ۚۜ";
                        break;
                }
            }
        }

        @Override // z2.nh
        public void OooO0o0(String str) {
            String str2 = "ۚۡۦۘ۫ۥۖۘ۫ۤۚۥۗۡۚۨۘ۫ۥۡۙۧۛ۫ۤۡۘ۫ۡ۟ۜ۫۬ۛۢۗۜۦ";
            while (true) {
                switch ((((str2.hashCode() ^ 462) ^ 238) ^ 97) ^ (-674443827)) {
                    case -1907675517:
                        str2 = "ۢۛۗۥ۟ۥۘۛۗ۫ۘۚۦۧ۠ۧ۬۠ۗ۠۠۠۬ۛۦۜ۠ۡۨۘ۟ۜۖۥۚۖۘۦ۬ۤ۠۠ۨۨۢۥ۟ۧۖۨۢۘۚ۫";
                        break;
                    case 44545343:
                        return;
                    case 45658661:
                        str2 = "ۧ۫ۥۤۡۚ۟ۦۥۘۙۦۖۘۧ۬ۖۜۤۡۘۚۦۧۚۥۧۘۗۨۘۘۦۢۨ";
                        break;
                }
            }
        }

        @Override // z2.nh
        public void onAdClose() {
            String str = "ۥۧۡۘۚۜۖۡۢ۟۟ۡۡۘ۬ۥۖۛۙۘۚۡۥۦۧۡۘ۟ۜۦۘ۫ۦ۬۫ۘۗۛۖۘۧۥۥۘۧ۠ۤۥۤۙۧۦۚۤ۫ۗ۟ۦۨ";
            while (true) {
                switch ((((str.hashCode() ^ 698) ^ UiMessage.CommandToUi.Command_Type.GET_FW_TEXT_COLOR_VALUE) ^ 424) ^ (-78840656)) {
                    case -1951025107:
                        str = "ۦۥۘۧۜۘۘۖۗۨۧۙۘۘۖۙۥۢۛ۟ۧۡۘۨۘۖۘۜۙۚ۫ۢۦۘ۬ۖ۫ۨۙۤ";
                        break;
                    case -409512404:
                        return;
                    case 1104600238:
                        SplashActivity.OooOO0O(this.OooO00o).setVisibility(0);
                        str = "ۖۡ۠ۨۡۧۘۤۢۖۘۦۗۖۘ۬ۢۚ۫ۗۘۘ۫ۦۥۘۛ۠ۨ۟ۜۖ۟ۖۜۘ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 implements View.OnClickListener {
        public final SplashActivity OoooOoO;

        public OooO0O0(SplashActivity splashActivity) {
            this.OoooOoO = splashActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۗۧۥۘۖ۫ۨۗۘۧ۬ۘۛۢۤۛۙۘ۫ۗۜ۠ۜۥۖ۫ۨۤۦۨۧۘۤۘۘ۟۫ۜۦ۠ۦۚۦۨۘۢۧۥۘۖۖۤۚۧۘۘ۫۟";
            while (true) {
                switch ((((str.hashCode() ^ 852) ^ 529) ^ 103) ^ (-59553821)) {
                    case -1168450676:
                        str = "۠ۚۥۘۗۘۛۛۦۚۧ۠ۨ۬ۚۥۘۙ۫ۥ۠۬ۛ۠ۥۤۛۚۗۨۚۨۜۥۘۗۢۖۧۘۜۘ۠ۤۜۢۧۢ۟ۘۡۘۚ۫ۗۙۢۚ";
                        break;
                    case 372523432:
                        return;
                    case 542303101:
                        str = "ۘ۫ۢۨۡۨۡۗۗۛۨۥۦ۫ۖۘۙۚۗۡۚۛۨ۫۟ۘۢۥۧۘ۬ۦۦۡۙۨۙۜ۟ۤ۠ۤۧۗۦۗۨۘ";
                        break;
                    case 583053530:
                        this.OoooOoO.startActivity(new Intent("android.settings.DATA_ROAMING_SETTINGS"));
                        str = "ۛۡۖۘۨۡۖۘۜۧۜۘۥۖۥۘۧۥۡۤۧۙ۟۟ۢۡۙۦۘۙۖۦۘۙۧۦۘۨۧۗ۫ۧۘۘۧۡۜۤۥ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements r3<String> {
        public final SplashActivity OooO00o;

        public OooO0OO(SplashActivity splashActivity) {
            this.OooO00o = splashActivity;
        }

        @Override // z2.r3
        public /* bridge */ /* synthetic */ void OooO00o(String str) {
            String str2 = "۬ۖۧۘۤ۟ۦۙۥۢۚ۟ۤ۬ۚۘۙ۟ۖۖ۟ۖۡ۬۫ۛۢۨۥۦۨۢۦۖ۟۟ۚۥ۠ۦۖۚۢۗۦۗۜ";
            while (true) {
                switch ((((str2.hashCode() ^ 485) ^ 621) ^ 524) ^ 1238352338) {
                    case -223967038:
                        return;
                    case 465500113:
                        str2 = "ۛۙۜۙ۬۟ۛ۠ۢۡ۬ۘۘۨۘ۬ۖۙۤ۬ۜۖۘ۟ۛۖۖۗۤۡ۠ۦۘ";
                        break;
                    case 1012849834:
                        OooO0O0(str);
                        str2 = "۟ۧۦۚۘۚۥۧۙۤ۬ۜۘۢ۠ۨۛۜۘ۟ۖۨ۟ۦۤۢۤۘۘۛۢۦۦۘۦۘۛۖۚ";
                        break;
                    case 1962081053:
                        str2 = "ۘۥۧۜۛۡۡۡۘۘۗۢۜۘۙ۬۟۠ۜۥۦۡۚۗ۫ۛۗ۬ۡۘۙۖۜ۟۫ۢۜۤۛ";
                        break;
                }
            }
        }

        public void OooO0O0(String str) {
            String str2 = "ۥۗۥ۟ۨۗۤۖ۫ۦۧۖۛ۟ۦۘۖۤۥۘۖۛۖۡۖۡۗۜۘۘۦ۠ۜ";
            while (true) {
                switch ((((str2.hashCode() ^ 532) ^ 978) ^ 437) ^ 2067610530) {
                    case -1272226241:
                        str2 = "ۥۙۘ۫ۢۖۘۛۙۘۘۦۖۘۘۘۨۘ۠ۙ۟ۙۚۗۜۨۚۡۖۘ۫۟ۜ";
                        break;
                    case -351538042:
                        return;
                    case 1859626085:
                        str2 = "ۦۡۙ۟ۢ۬ۚۗۖۗۛ۠ۘۖۜۘ۫ۨۙۗۦۜۘۙۜۧۘۚۦۘۘۡۨۖ۫۫ۤۜۘ۫ۚۥۘۜۘۜ";
                        break;
                    case 2117137399:
                        SplashActivity.OooOO0o(this.OooO00o);
                        str2 = "ۗ۫ۡۜۢۙۥۘۚ۟ۨۖۜۥۘۘۢۨۥۘۨۗ۠ۗۗۘۖۗۡۘۦۨ۬ۜ۫ۗۢۧۧ";
                        break;
                }
            }
        }

        @Override // z2.r3
        public void error(String str) {
            String str2 = "۬ۖۢۤۦ۠۬۫۠ۙۘۨۘۢ۫ۡۘۙۧ۟۫ۢۘ۬ۡۢۥۘۜۙۢۜۘ";
            while (true) {
                switch ((((str2.hashCode() ^ 424) ^ 871) ^ 870) ^ 1209508699) {
                    case -1820300992:
                        return;
                    case -1755025079:
                        str2 = "ۤۤۨۥ۬ۦۘۡۖۜۗۘۦۘۧۡ۠ۚۦۜۗۖۛ۬ۢۖ۬ۘ۬ۙۢۛۤۦۧۘۙ۠ۦۜۙ۫۫ۛۨۘۘۙۗ۫ۨۤ۬۫ۦۜ۬۠";
                        break;
                    case -860733561:
                        str2 = "۠ۨۘۘۨۢۦۖۧۦ۟ۢۨۘۚۧۦۘ۬ۦۘ۟۫ۡ۫ۧ۬ۘۦۧۘۘۦۖۘۜۧۗۤۥۘ۠ۢۦۤۦۡ۟ۗۡ۬ۦۨۘ";
                        break;
                    case 1779481018:
                        SplashActivity.OooOO0o(this.OooO00o);
                        str2 = "ۨۖۖ۟۠ۘۖۖۘۤۦۙۢۙۢ۠ۘۛۗۘۤۘۜۢۢۘۘۘۗۦۘ";
                        break;
                }
            }
        }
    }

    public class OooO0o implements xh {
        private boolean OooO00o = false;
        public final SplashActivity OooO0O0;

        public OooO0o(SplashActivity splashActivity) {
            this.OooO0O0 = splashActivity;
        }

        @Override // z2.xh
        public void OooO00o(ai aiVar) {
            String str = "ۖۗۥ۬۟ۖۘ۫ۤۙ۟۫ۚۜۨۦۘۧ۫ۢۦ۠۠ۨۤۖۘۤۜ۟ۚ۠ۡۘۨۚۜۚ۠ۖۨۨۘۤ۠ۡۘۖۖۖۡۥۖۘ۫ۥۥۘۖۖۨ";
            while (true) {
                switch ((((str.hashCode() ^ 227) ^ 384) ^ 257) ^ (-974052990)) {
                    case -1751582651:
                        str = "ۜۖۦۚۡۢ۫ۡۨۘۦۡۦۘۘۥ۫ۖۘۥۥۥۖ۟۬ۘۘۤۡۨۨۙۢۘ۫ۥۘۤۖۧۗۙۥۘۙ۫۟ۧۤۨ۠ۥۚۡۙۡ۠ۨ";
                        break;
                    case -248520278:
                        return;
                    case 421362347:
                        str = "۠ۚۨۘۦۥۥۘۚۢۘۚۤۚۛۖۢۤۡۘۘۦۧۘۦۥۙۖ۬ۥۤۡۜۡۢۤۜۨۙ";
                        break;
                    case 975073596:
                        Log.d("XJL_AD_TAG", "adview onAdShow");
                        str = "ۜۜۚۖ۟ۥۛۢۚ۫ۘۦۧۙۗۡۛ۟ۛۜۤۧۚۡۤۢۡۤۙۥۛۖۘ۫۬ۙۛ۠۟ۤ۟ۤ";
                        break;
                }
            }
        }

        @Override // z2.xh
        public void OooO0O0(ai aiVar) {
            String str = "۬ۥۢۘۛۡۛۦۡۘۗۢۨ۬ۥۢۡۢۛۨ۠ۖۙ۠ۥۗۘ۫ۦ۠ۥۨۛ۬ۘۧۙۦۙۚۥۥۚ";
            while (true) {
                switch ((((str.hashCode() ^ 64) ^ 294) ^ 850) ^ (-1546799905)) {
                    case -702142601:
                        str = "۠۫ۥۘۤۤ۠ۨۦۗۧۨۧۥۜۦۘۛۖۧ۟۠ۡۘۦۖۧ۬ۜۘ۟ۖۜۘۖۧۡ۫ۢۨۘۚۨ۟ۙ۫ۥۙۛۜ۟ۖۨۘۧۥۨۙۘ۟";
                        break;
                    case 159018149:
                        str = "ۘ۟ۦۘۖۡۥ۠ۗۧ۫ۡۖۘۤۨۘۖۧۘۦۛۜۖۡۤۙۥۧۘ۟ۜۖۤ۫ۙۧۧ۠ۨۧ۬۬ۛ۬ۤۛۗ۫ۧۦ";
                        break;
                    case 546846218:
                        return;
                    case 1251174675:
                        Log.d("XJL_AD_TAG", "adview onAdClick");
                        str = "۬۟ۘۘۡۧ۟ۢ۟ۗۥۡۖۜۧۥۘ۬۟ۨۘۡۜۦۘۡ۠ۤۜۜۢۙۜۛۖۥۥ۫۠ۧ۫۬۬ۙۡۧۘ";
                        break;
                }
            }
        }

        @Override // z2.xh
        public void OooO0OO(ai aiVar, ci ciVar) {
            String str = "ۢۨۖۘۛۦۤ۟ۦۖۜۘۡ۬۟ۥۘۦۨۥۘۖۤۛۤۖۧۖۡۨۘۗۤۙ";
            while (true) {
                switch ((((str.hashCode() ^ 317) ^ 449) ^ 98) ^ 9683303) {
                    case -1649058265:
                        str = "ۨ۬ۛ۬ۨ۫۟ۡۙۥۥۡۘۥۖۜۘۗۘۥۘۛ۟ۜۢۧ۫۬ۧۚۙۥۖۘۜ۫۬ۤ۬";
                        break;
                    case -1012752019:
                        return;
                    case 357279428:
                        str = "۬ۜۦۘۜۡۧۖۥۘۙۤۙۖ۫ۘۘۜۧۧۧۧۨۘۗۤۜۘ۫ۖۗۜۖۥۘ";
                        break;
                    case 407814636:
                        SplashActivity.OooOo0(this.OooO0O0);
                        str = "ۤۜۡۙۧۤۘۗۨۗۡۙۖۜۘۡۜۦۘۘ۠ۘۢۥۖۦ۫۬ۥۜۗۖۘۡ۟ۜ";
                        break;
                    case 914137918:
                        str = "ۙۧ۫ۦ۠۬ۦۦۚ۫۬ۚ۠ۥۖۙۛ۠ۢ۫ۘۘۗ۟۫ۨۧۗ۬ۖۦ";
                        break;
                    case 1781316420:
                        Log.d("XJL_AD_TAG", "adview onAdDismiss");
                        str = "ۗۤ۫ۗۖۗ۬ۤۨۘۖ۟۠ۢۚۜۚۛۧۡۧۗۡ۟ۦۘۙۡۗۤۛۦ۬ۥۛ۫ۚۛ۫ۦۘ۬ۖۥۙۗۘۘۥۛۨۘۘۧۤۤۖۦ";
                        break;
                }
            }
        }

        @Override // z2.xh
        public void OooO0Oo(zh zhVar) {
            StringBuilder sb = null;
            String str = "ۤۥۖۘۙ۠ۜۘۥۤۧۨۥۖ۫۬ۧ۟ۗۨ۫۬ۨۘۘۗ۠۬۫۫۟ۙۜۖۦۦۡ۟ۡۘۘۖۖۦۘۛ۠ۤۜۘۥۘۡۜۧۗ۫ۗۧ";
            while (true) {
                switch ((((str.hashCode() ^ me.o00000OO) ^ 964) ^ 455) ^ 1544847509) {
                    case -1867565381:
                        sb.append(zhVar.OooO0O0());
                        str = "ۧۚۖۘۢ۬ۜۥۢۚ۟ۧ۫ۖۙۢۤ۬ۜۜۛۚۖۤۥۘۖۜۜۖ۬ۥۘۢۡۜۙ۫ۖۘۧۗۨۘۛۙۖ";
                        break;
                    case -1819444797:
                        str = "ۛۘۨ۫۬ۗۤۜۜۘ۬ۤۚۚ۬۟ۦۧۜۛۤۢۙۥ۠ۡۛۚۢۨۥ";
                        break;
                    case -1251470033:
                        sb.append(", msg = ");
                        str = "ۘۖۙۡۙ۫ۧۢۨۢۖ۠۬ۘ۠ۨۨۜۘۛۗۘۘۦۛۦۘۡۨۘ۫ۡۚ";
                        break;
                    case -1222077666:
                        sb.append(zhVar.OooO00o());
                        str = "ۧۡۧۥۧۦۘۨۨ۟ۦ۠ۦۘۤ۬ۧ۬ۘۢۗۚ۟ۦ۟ۖۚۖۨۘۘۦۜۘۚۡۙۜۡۖۜ۠ۘۘۙۢ۠ۛۨۡۘۡۘۡۘۦ۠ۨۘۘ۫ۦ";
                        break;
                    case -1151655505:
                        sb.append("adview onNoAdError:");
                        str = "ۦۘۡۘۙۚۚۡۥۥۘۢۤۥۘۛۧۧۡ۬ۙۥۚۡۘۚۙۨۨۥۜۘ۫ۧۚۧۜۢۥۥ۠";
                        break;
                    case -842005448:
                        SplashActivity.OooOOO0(this.OooO0O0).OooOOo0();
                        str = "ۜۙ۫۟ۨۨ۠۟ۛۜۗۢۙ۟ۚۨۗ۠ۗ۟ۦۙ۫ۥۘۜۧۧ۫ۙۨۘ";
                        break;
                    case -841036875:
                        String str2 = "ۖ۬ۚ۟ۦۜۘۦۧۜ۟ۨۡۘۢۧۜۘ۬ۤ۬ۧۧۨۙۤۦۘۡۥۖۜۙۛ";
                        while (true) {
                            switch (str2.hashCode() ^ 1482416262) {
                                case -896907667:
                                    str2 = "۠ۛۜۘۜۛۤۥۥۡۘۚۨۧۡۗۥۛۖۘ۫ۛۦۘۨۜۥۘۤۘ۬ۡۥۨۢۧۜۚۨۘۛۖۧۖۦ۬ۤۛ۫۫ۢۘۘ";
                                    break;
                                case 215697972:
                                    String str3 = "ۡ۟ۘۘۥۚۥۗۛۘۘۜۘ۬ۖۦ۬ۥۤۦۘ۟ۘ۟ۦ۠۟ۦ۠۠ۚۘۨۘۚۤۤۦۖۡۚۜ۟ۨۢۜۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-837713836)) {
                                            case 39506646:
                                                str3 = "ۧۡۨۙۙۤ۬ۦۢ۫ۛۤ۟۟ۤۗۦۚۖ۟ۦۢۦ۫ۛۦۖۢۦ";
                                                break;
                                            case 46310382:
                                                str3 = SplashActivity.OooOOO0(this.OooO0O0) != null ? "ۦۤ۟ۧۚۡۘ۫ۥۢ۬ۡ۟ۙۖۥۘۖۤۗۗ۟ۛۗۥۡۘۜۖۤ۟۟ۘۚۢۤ۠ۤ۟ۤ۫ۘ۠۬ۖۘ۫ۤۦۦۡۤ" : "ۦۧۥۘۢۙۙۘۗۚۚۙۘۘۥۜۜۘ۟ۗۡۨۢۛ۫۬ۡۦ۬ۡۘ۬ۨۖۜۥۖۘ۟ۡۚ";
                                                break;
                                            case 719398509:
                                                str2 = "ۢۜ۫ۖۧ۟ۗ۬ۦۖۢ۟ۜۢۥۨۢۜۘ۟ۜۛۙۤۢ۬ۖۥۜۜۙۧۤۨۢۨۘۗۥۥۘ۟ۡۜۚ۟ۦۖۘۡۘۤ۫۬ۘۖۤ";
                                                break;
                                            case 1238887528:
                                                str2 = "۬۟ۛ۫ۡۦۘۛۗۦۨۖۜۘۥۗۙۖ۟۬ۚ۫ۗۖۙۡۘۚۤۥۜۤۢ۠ۦۚۘ۠ۨ";
                                                break;
                                        }
                                    }
                                    break;
                                case 338438839:
                                    str = "۬۠ۨۘ۫ۛۧۦ۫ۨۡۛۥۘۚۘ۟ۨۥۧۚۚ۬ۧۜۤ۫ۡۧۗۦۨۨۖۤۢۙۨۘ";
                                    continue;
                                case 427708560:
                                    str = "ۜۙ۫۟ۨۨ۠۟ۛۜۗۢۙ۟ۚۨۗ۠ۗ۟ۦۙ۫ۥۘۜۧۧ۫ۙۨۘ";
                                    continue;
                            }
                        }
                        break;
                    case -673544572:
                        return;
                    case -91014254:
                        str = "ۥ۫ۚۘ۫ۧۜۗۡ۠ۙۢۢۘۜۚۖۢۤۙۧۢۧۡۢ۟ۧۡۘۗۨۖۘ۟ۘۧۛ۟ۥۘۛۡ۫ۦۚۥۜۦۨۦۡ۠ۥ۫";
                        break;
                    case 753573439:
                        sb = new StringBuilder();
                        str = "۠ۦ۬ۥ۬ۨۘۢ۟ۚۗۥۡۜۨۘۢۨۗ۫۫ۥۘۥۜۖۘ۠۠ۡ۠ۨ۠";
                        break;
                    case 1862231862:
                        Log.d("XJL_AD_TAG", sb.toString());
                        str = "ۛۡۖۘ۫ۦۜۤۤۧۧ۫ۘۤ۟ۛۛۚۤۚۥ۠ۛۥۘۛۨ۫۫ۥۖ۟ۗۨ۫ۖۙ۟ۡۨۢۛۖۘ";
                        break;
                }
            }
        }

        @Override // z2.xh
        public void onAdLoadTimeout() {
            String str = "ۜۧ۫ۦۚ۫ۦۖ۫ۨۧۗ۫ۤۦۛۜۤ۟۫ۡۦ۟ۢۚۦ۟ۢ۫ۙۜۖۧۘ۠ۚۡۚۖۡۘۢۧۘۘۚۧۦۘۗۜۥ";
            while (true) {
                switch ((((str.hashCode() ^ 342) ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 915) ^ (-1862952832)) {
                    case -1934849127:
                        str = "ۛ۟ۙۜ۟ۢۨۖۘ۟ۤۥۨ۬ۖۛۜۨ۫۫ۡۛۚۘۙۦۥ۟ۖۢۦۨ۠ۜۨۘۗۧۖۘۖ۠ۘۧۗۘۘۚۜ۠ۡۢۤۦ۠ۖ";
                        break;
                    case -949362264:
                        Log.d("XJL_AD_TAG", "adview onAdLoadTimeout");
                        str = "ۚۛ۠ۖۜۘۜۛۢۚۤۨۤۤۛۦۨۤۥۧۘ۬ۜۜۥۛۢۙۤ۬ۦ۠ۥۘۜۡ۠ۢ۠ۡ۟ۛۙ";
                        break;
                    case -324334407:
                        this.OooO00o = true;
                        str = "ۚ۬ۨۡۦۘۛۦۤۧۧۚۧۥۜۢۘۖۛۧۦۥۖۘۘ۬ۙۢۛۚۘۛۨۘۨۡۜۘۧۜۛۜۘۜۧۧۜۘۡۜۘۘ";
                        break;
                    case 1558354342:
                        SplashActivity.OooOOO0(this.OooO0O0).OooOOo0();
                        str = "ۙۥۘۘۙۡۖۤۥ۠۬ۧۗۡۘۘۡۧۡۖ۬ۖۘۢۛۥۚۖ۬۬ۖۘۖۛۢۢۙۗ";
                        break;
                    case 1801062547:
                        String str2 = "ۗۜۦۘۗ۠۠ۢۦۛۢۧۙ۬ۦۖۛۜۖۘۤۡۛ۬ۛۨۨۧۦۘۢۛۦۡ۟ۡۦۥ۟ۨۢۧۥ";
                        while (true) {
                            switch (str2.hashCode() ^ 1434163860) {
                                case -1977501910:
                                    str = "ۙۥۘۘۙۡۖۤۥ۠۬ۧۗۡۘۘۡۧۡۖ۬ۖۘۢۛۥۚۖ۬۬ۖۘۖۛۢۢۙۗ";
                                    continue;
                                case -358735904:
                                    String str3 = "ۜۖۨۘۖۛۦۗۧ۠۠ۗ۬ۖۜۘۢۜۘۡ۠ۨۙۖ۟ۦۦۘۛۚۥ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 269632513) {
                                            case -2143321682:
                                                str3 = SplashActivity.OooOOO0(this.OooO0O0) != null ? "ۧ۠۫ۤۙۖۘۤۡ۠ۜۨۜۘۘۤۗ۟۫۠ۢۢ۬ۡۦۧۧۜۜۘۨۡۥۧۙۦۘۢۤ۠" : "۟ۥ۠ۗۦۡۘۢۜ۠ۢۚۛۙ۫ۨۤۥۜۘۖ۟ۜۘۨۡۨۘ۫ۜۥۖۦۥۘۛۥۧۘ۬ۦۖۘۤۜۡۘۙ۫ۚ";
                                                break;
                                            case -1289856658:
                                                str2 = "ۨۧۡۦۧۦۘ۫ۜۨۘۧۧۡۗۚ۟ۗۛ۟ۤۡۚۧۧۦۘۢۡۡۘۜۤۡ";
                                                break;
                                            case 578560481:
                                                str3 = "ۗۧۖۘۦۙۗۦۚ۠ۙۙۖۘۨۛۗۨۥۡۘۗۛۖۡۥۘۘۚۖۛۜۘۧ۠ۦۘۙۢۛۙۜۧۦۗۘۘۛۢۥ۬ۛۖۜۢۥۘۙۤ";
                                                break;
                                            case 2099434397:
                                                str2 = "ۢۗ۠ۡۘۡۥۖۧ۬ۡ۫ۧۧۡۘۙۡۖۙۥۜۖۦۘۨۨۧۘۧۤۛۢۚۘۘ۟ۢ۫ۙۙۧۚۙۜۨۚۧۘۥۘۥۨۜۘۘۜۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 781047985:
                                    str = "ۚۧۦ۠ۗۖۖۨۘۙ۫ۦۘۡ۬ۨ۟ۙ۟ۧۜۘۘ۠ۗۧۧ۫ۛۤۧۢ";
                                    continue;
                                case 2116826733:
                                    str2 = "ۛۢۜۘۖ۟ۗۢۢۥۘۛۥۨ۠ۖۘۘ۬ۚۚ۟ۙۜۘۢ۟ۗۥۥۚۨۘۗۛۖ۫ۘۙ۫ۧۘۖۘۡۨۗۥۗۨۘۜۘ۫";
                                    break;
                            }
                        }
                        break;
                    case 1933748173:
                        return;
                }
            }
        }

        @Override // z2.xh
        public void onAdLoaded(boolean z) {
            String str = "ۗۛۗۘۧۦۧۧۦۘۢۥۡۚۢ۠ۖ۫ۦۧۨۡۘۤ۫ۦۢ۫ۖ۬ۨ۫ۜ۟ۢۥۢۘۘۚۜۨۤۘۦۘۘۢ۠ۧۗ۫۠ۛۢۖۧۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 238) ^ PointerIconCompat.TYPE_GRAB) ^ 769) ^ (-1795955338)) {
                    case -400221445:
                        Log.d("XJL_AD_TAG", "adview onAdLoaded");
                        str = "ۨۢۥۘۢۥۜۨۢۤۦۡۚۜۜۧۚۜۥۧۥۚۜۚۙۢۥ۬ۚۜ۫ۜ۬ۨۘۗۜۢ";
                        break;
                    case 394603195:
                        str = "ۢۨۛۖۥۘۙ۫ۦۖۜۘۡۤۙۜ۬ۖۧۤۚۗ۬ۡ۬ۦ۠۠ۗۨۚ۠ۤۢۖۧۘ۠۠ۚۗۖۦۘۜۗۘۘ۟ۗۖۙۧ۫ۛۙۚ";
                        break;
                    case 426366052:
                        return;
                    case 1437473000:
                        str = "۬ۙۖۦۗۡۘۚۛۖۘ۠ۖۧۘ۠ۖ۟ۛ۟۫ۡۛۚۥۙۘۦ۫ۧۧۦۡۢ۬ۨۘۖ۫ۡۢۥۙۘۡۖۤۦۤ۟ۖۢۨۡۘۗۥۖ";
                        break;
                }
            }
        }
    }

    public class OooOO0 extends ka {
        public final SplashActivity Ooooo00;

        private OooOO0(SplashActivity splashActivity) {
            this.Ooooo00 = splashActivity;
        }

        public /* synthetic */ OooOO0(SplashActivity splashActivity, OooO00o oooO00o) {
            this(splashActivity);
        }

        @Override // z2.ka
        public void OooO00o() {
            String str = "ۨۛۡۘۚ۠ۡۘ۟۫ۦۤۦۚ۫ۨۖۙۨۡۘۥۤۖۢۡۖۘۚۧۘۛۦۜۘ۠ۨۘۦ۬۟ۙۤۡۦۚۦۘۖ۠ۗۥۤ";
            while (true) {
                switch ((((str.hashCode() ^ 749) ^ 145) ^ 188) ^ (-1421458198)) {
                    case -1159901480:
                        v3.OooO().OooO0oO();
                        str = "ۖ۬ۖۘۦۖۧۘۚۧۨۚۙۘ۠۟ۢ۫۠۬۫ۤۘۛۡ۫۟ۙۛۥۜۥ۟ۘۖ۟ۙ۠ۙۛۢۖۨۨ۬ۨۘ۟ۚۨ";
                        break;
                    case 584592455:
                        str = "۬ۨ۠ۧۜۘۘۙۗۘۗۛۡۦۜۢۤ۬ۙ۫۠ۧۘۘۨۜۦۘۢ۟ۢۜۖۦۘۤۥۗۥۨۚۨۙ۬";
                        break;
                    case 1146655178:
                        ii.OooOo0O(this.Ooooo00);
                        str = "۬ۦۥۘۦۜۨۢۖ۬ۦۛۥۘۘۘۧ۠ۢۛۙۜۛ۫ۙۘۦۢۜۚ۫";
                        break;
                    case 2100048932:
                        return;
                }
            }
        }

        @Override // z2.ka
        public void OooO0O0() {
            String str = "ۘ۬ۗۜ۠ۛ۠ۘۘ۬ۛۡۖۜۥۨۤۛۧۛ۫ۧۧۛۘۦۨۤۙۦۘۖۜۖۘۧۘۤۘۡۢۢ۟ۗ";
            while (true) {
                switch ((((str.hashCode() ^ 180) ^ 1009) ^ 860) ^ 1049029056) {
                    case -1888773763:
                        return;
                    case -1743354626:
                        SplashActivity.OooOOoo(this.Ooooo00);
                        str = "۬ۘۖۘۡۖۙۖۙۥۨۖۖۤۦۘۘۧۙۘۨۜ۫ۛۜۘۧۛۥۘۦۜۜۥۛۢۢ۫ۛۡۜ۬ۨۧ۬ۡۜ۠ۨ۠";
                        break;
                    case 217862700:
                        str = "ۘ۟ۘۥۘۖۘۥۖ۟ۨۗۦ۬ۗۖ۬ۖۘ۬ۦۨۘ۟ۥۗۗۖۨۙۛ۬۬ۚۖۨۡۖۘۜۙۜۘۤۖ۟";
                        break;
                }
            }
        }
    }

    public class OooOO0O implements View.OnClickListener {
        private AlertDialog OoooOoO;
        public final SplashActivity OoooOoo;

        private OooOO0O(SplashActivity splashActivity, AlertDialog alertDialog) {
            this.OoooOoo = splashActivity;
            this.OoooOoO = alertDialog;
        }

        public /* synthetic */ OooOO0O(SplashActivity splashActivity, AlertDialog alertDialog, OooO00o oooO00o) {
            this(splashActivity, alertDialog);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۛۜۦۘۜۗۜۘ۟۬ۥۚۗۦ۬ۚۚۜۥۨۢۜۡۘۙۗ۫ۛ۫ۖۘۡۦۨۚۘۡۚۡۘۘ۠۟۟۫۠ۗ";
            while (true) {
                switch ((((str.hashCode() ^ 897) ^ 234) ^ a.aV) ^ (-1676276685)) {
                    case -831595656:
                        str = "ۥۧۜۖۘۜۘۦۧۙ۟ۖۙ۟ۖۤۧ۫ۚۗۦ۟ۜ۟ۦۥۘ۫ۡۧۘ";
                        break;
                    case -493168439:
                        str = "۟ۜۡۘ۠ۥۖۘۥۦۥۜۨۧۘۛۖۦ۟۫ۚۦ۬ۖۘ۬۠ۖۖ۬ۖ۟ۙۜۗۛۤۘۢۖۘ";
                        break;
                    case 433955961:
                        return;
                    case 1785511367:
                        ((qa) SplashActivity.OooOOO(this.OoooOoo)).OooOoo0();
                        str = "ۦۗۘۗۢۧۥۖۜۙۧۥۘ۫۫ۘۘۘۧۜۙۖۦۘۨۘۡۘۛۨۨ۫ۘۛۘۢۙۚۨۨۘۨۙۢ۠۬ۦۘۢۢۛۘۛۥ";
                        break;
                    case 2039889224:
                        this.OoooOoO.dismiss();
                        str = "ۛۚۧۧ۠۫ۦۤ۬۬ۖۡۘۢۤ۫ۡۚۖ۟۠ۘۘ۫ۧۜۧۡۘۚۖۢۜۙ۟ۛ۟ۗۙۙۥۛۦۧ";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۛۤۡۘۨۖۤۚ۫ۥۥۤۥۨۡۜۘۡۦۧۛ۟۬ۜۖ۫۠۫ۖۖۥ۟۬ۥ۬ۘۘۛۢۧ۟ۤ۫ۥۤۜۘۘ۬ۦۛ۠ۖۨۜ";
        while (true) {
            switch ((((str.hashCode() ^ 784) ^ 245) ^ 33) ^ 368971719) {
                case -1260540275:
                    return;
                case 2019741847:
                    o00o0O = SplashActivity.class.getSimpleName();
                    str = "۬ۙۗۘۜ۬۠۫ۗۨ۟۫۫۫ۖۨۚ۠۬ۗ۟ۢۘۖۚۡۖۘۙۦۛ۠ۛۘۖ۬ۦ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOO0(SplashActivity splashActivity, String str) {
        String str2 = "ۥۧ۫ۙۨۜۘۨ۫ۛۛۛۨۘۨۧ۟ۧۙۦۗۜۘۧۡ۟ۛۢۦۘ۬ۘ۠ۤۖۢۘۙۥۘۢۡ۟ۡۧۨۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 256) ^ 75) ^ 903) ^ 797302735) {
                case -1831127929:
                    splashActivity.OooOoO0(str);
                    str2 = "ۡۢۛ۟ۗۡۦ۫ۦۡۨۙۥۡۢ۬۟۠ۛۜۦۤ۬ۙۗ۫ۜۚ۬ۨۖ۠ۗۜۘۛۨۦۦ۫ۛ۫۠۫ۡ۫ۜ";
                    break;
                case -784864835:
                    str2 = "۠ۙۧۡ۫ۦۘ۫ۡۚۖۡ۫ۚۥۤۙۛۦۘ۠ۧۢۥ۟۫ۧۢ۬ۜۛۗ";
                    break;
                case -439447870:
                    return;
                case 1847307536:
                    str2 = "۟ۖۖۘ۠۬ۜۘۡ۬ۦۘۚۖ۫۫ۢ۠ۦ۟ۙ۠ۨۦۘۢۛۤ۫۬ۡۚ۬ۦۘۘۚۥ۟ۘۧۚ۫۟ۤۢۤ";
                    break;
            }
        }
    }

    public static /* synthetic */ TextView OooOO0O(SplashActivity splashActivity) {
        String str = "ۧۤۙۡۢۘۛۗ۠ۨۤۦۘۜۥ۫ۘۙۦۙ۫ۜۘۘۚۜ۠ۚۦۚۢۨۘۡۘۘۙۚۨۘۦۢۗۙۡۨۘۧ۬ۛۗ۟ۘۘ۬ۥۖۘۗۦۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 146) ^ 414) ^ 501) ^ (-420680900)) {
                case -1757299802:
                    return splashActivity.OoooooO;
                case -941567758:
                    str = "ۥۧۘۘۖۢ۠ۖ۬ۘ۫ۜۘ۬ۙ۟ۜۡۖۘۚۘۜۘۡ۬۟ۥۗ۬ۦۦۘۥۧۧۖۘۜۛۡ۫ۛۤ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOO0o(SplashActivity splashActivity) {
        String str = "۠ۦۙ۟ۢۗ۫ۖۦۢۡۘۥۦۨۦۚۖۚۥۨۘ۟ۛۖ۬۟۬ۚۨۛۜۨۘۘ۫۠ۡۦۗۡۘ۟ۚۥۗۧۥۦ۫ۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 171) ^ 668) ^ 856) ^ (-434835811)) {
                case -1593413361:
                    splashActivity.OooOoo0();
                    str = "ۥ۠ۜۘ۫۫ۛ۬ۙۚۡۛۖۨ۫ۨۥۥۜ۠۟۫ۦۚۚۗۨۚۙۚۥۤۚۢۛ۠ۜۡۨۗۙ۫ۚۙ۟ۛۨ";
                    break;
                case -681279949:
                    str = "۠ۖۦۗۗۙ۬ۦۜۘ۠ۚ۬۟ۦۘۤۨۧۘ۟ۗۖۘ۬ۘۦۘۗۛۥۘۤۡۦۡ۬ۜۜۧۡ۬ۘۛ۠";
                    break;
                case 1840445607:
                    return;
            }
        }
    }

    public static /* synthetic */ AndroidViewModel OooOOO(SplashActivity splashActivity) {
        String str = "۬۬۫ۛۛۚۥ۠ۦۘۜۛۢ۫ۘ۟ۘۘۖۥۘ۫ۢۗ۠۫۬ۖۜۙۜۜۗ۠ۢ۬ۗۨۡ۠ۜ۟۬ۜۘۛۜۦۧ۬ۤ۫ۢ";
        while (true) {
            switch ((((str.hashCode() ^ 587) ^ 343) ^ 355) ^ 487532300) {
                case -884286260:
                    str = "۠ۘ۬ۜۛۦۘۧۥۧۨۥۘۘۢۜۚۡۤۦۘ۫ۧۗۛ۟۬ۘۙۜ۫ۘ۟";
                    break;
                case 1387756267:
                    return splashActivity.OooooO0;
            }
        }
    }

    public static /* synthetic */ rh OooOOO0(SplashActivity splashActivity) {
        String str = "ۦۨۙۦ۬ۜۡ۠ۛۛۖۡ۫ۜۦۘۥۥۧۥۜۦ۬ۛۘۖۖۨۧ۠ۘۘۤۢۗ۬ۚۧ";
        while (true) {
            switch ((((str.hashCode() ^ 653) ^ 738) ^ 5) ^ (-443823440)) {
                case -317638644:
                    return splashActivity.Ooooooo;
                case 1844573078:
                    str = "ۙۦ۟ۨۡۧ۬ۡۡ۬۫ۜۘۡ۠ۚۙۚۘۡۘۗۖۗۛۥۙۛ۫۬ۡۛۨۨۧۨۘۤۛۧۥۖۚ۠ۢۡۨ۬ۖۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ TextView OooOOOO(SplashActivity splashActivity) {
        String str = "ۥ۟ۚۗۚۧۢۦ۟ۧۙۨۙۨۜۤۦۜۘۜۢۨۥۜۢۗۘۡۡۥۧۖۙۗۨۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 633) ^ 861) ^ 856) ^ (-1600942647)) {
                case -1781932163:
                    return splashActivity.Oooooo0;
                case -1427161322:
                    str = "۠ۚۤۚۢ۠ۜۜ۫ۥۜۢۜۤۖۦ۫ۖ۫۬ۛۛۙۥ۫ۚۧ۠ۗۥۘۖۖ۫ۘ۟ۖ";
                    break;
            }
        }
    }

    public static /* synthetic */ ImageView OooOOOo(SplashActivity splashActivity) {
        String str = "۟۫ۡۘۨ۫ۙۚ۠ۜ۫ۢۦۚۢۘۘۜۧۡۘۡۤۨۘۥۡ۬ۜ۬ۥ۫۟ۥۘۨ۠۫۬۟۟";
        while (true) {
            switch ((((str.hashCode() ^ 183) ^ 830) ^ 219) ^ 1135771010) {
                case -206816785:
                    return splashActivity.OooooOo;
                case 2075834142:
                    str = "ۨۤۡۤۦۧۗۥۥۚۤۜۥ۬ۗۥۘۨۤۢۚۙۥۘۡۖۦۚۤۚ۠۠ۛۘۧۚ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOOo(SplashActivity splashActivity) {
        String str = "ۛۙۦ۟ۧۗۥۡۢۜۗۖۘۗۛۥۛ۫ۘۛۛۚۙ۠ۙۘ۠ۜۦ۟ۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_ENABLED_VALUE) ^ 497) ^ 438) ^ 1898191088) {
                case -1460945880:
                    return;
                case 315053337:
                    splashActivity.Oooo0o0();
                    str = "ۗ۠ۜۗۨۘۛۜۧۢۜۜۘۡۨۖۥۦۨۘۧۚ۟ۛۙۚ۟ۦۙ۠ۜۘ";
                    break;
                case 739214067:
                    str = "ۡۧۖۨ۫ۧۜۥۦۘۢۙۘۤۦۘۘۛۦۘۙۚ۟ۦۥۜۗ۟ۦۗ۫ۧۘ۠۫ۖۢۦۖۜۗۛ۫ۥۘۦۘ۟ۥۘۥۘۨۥۘ۫ۤۦۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ AndroidViewModel OooOOo0(SplashActivity splashActivity) {
        String str = "ۜۧ۬ۛ۠ۦۘ۠ۧۥۘ۟۠ۢۢۥ۠ۧ۫ۛۡۥ۠ۘۖۛۧۡۛۥ۫ۡۛ۟ۥۘ۬ۚۡ۫۟ۦۤۦۖۗۥ۬ۡۜ";
        while (true) {
            switch ((((str.hashCode() ^ 265) ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ 186) ^ (-1536204735)) {
                case -603532528:
                    str = "ۦۥۦۜۧۜۘ۟ۖۘۘۦۨۖۤ۟ۜۘ۫ۦۚۚۥۜۘۗۛ۠ۛۧۧۦۡۜۘ";
                    break;
                case -346539719:
                    return splashActivity.OooooO0;
            }
        }
    }

    public static /* synthetic */ void OooOOoo(SplashActivity splashActivity) {
        String str = "ۘۥۧۧۗ۟ۢۘۜۘۙ۠ۜۘۤۖۘۗۖۧۙۗۨۘۦۖۘۧۜۡۖۜۨ۟ۛ۠ۜۚۖۘۨۥۦۘۥۚ۫۫ۥ۬ۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ 542) ^ 830) ^ 586781745) {
                case -743456064:
                    splashActivity.Oooo0OO();
                    str = "ۛۨۥۧۜۨۘۙۚۜ۟ۚۡۘۗۚ۬ۛۥۡۨۗۗۢۥۘۤۗۜۘ۠ۢۦۘۡ۠ۖۥۛۜۘۜ۠ۚۗۨۥ";
                    break;
                case 565857237:
                    return;
                case 1166951950:
                    str = "ۢۙۨۚۥۨۛۚ۠ۜ۫ۨۘۤۥۥۢ۬ۚ۫ۦۘۧ۬ۛۤۦۥۤۖۗۤ۬ۦۘ۠ۗ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOo0(SplashActivity splashActivity) {
        String str = "ۨۡۢۢۚۙۖۦۧۘ۠ۡۦۘۥۢ۟ۘ۫ۥۘۜۡۛ۟ۚۖۘ۟ۤۖۚۦ۠ۖۨۦۘۗۢۨ";
        while (true) {
            switch ((((str.hashCode() ^ 602) ^ PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW) ^ 536) ^ 859154223) {
                case -1503504448:
                    splashActivity.Oooo();
                    str = "ۖۡ۫۟ۧۡۘۧۤۦۘۧۚۨۜۦ۬ۛ۬ۡۘۧۘۨۥۧۦۛۗۧ۟ۢ۠ۗ۠ۘۦۧۙ۫۟۬ۖۗ۠ۖۗ۠ۨۨۡۘ";
                    break;
                case -690379728:
                    return;
                case 2064503243:
                    str = "۬ۗۤ۫ۚۖۚۦۥۙۘۚ۠ۨۧۘۙۥۦۘۧۦۖۤۜۤۦ۫ۡۨۦۥۘ۫ۡ۫ۢۡۙۢۢۨۥ۬ۨۘۜۖۡۘۛۦۙ";
                    break;
            }
        }
    }

    public static /* synthetic */ int OooOo00(SplashActivity splashActivity) {
        int i = 0;
        String str = "ۛ۠ۡۨۨۜ۠ۤۜ۫ۛۥۘۧۚۖۘۨۦۥۡۢۢۙۨۥۜۙۖۨۜۘۤۥۡۢۨۡ";
        while (true) {
            switch ((((str.hashCode() ^ 395) ^ 653) ^ 295) ^ (-508369202)) {
                case -1987336067:
                    str = "۬ۘۢۜ۠ۘۘ۟۫ۢۚۜۘ۫ۢۖۘ۬ۢۙ۠ۧۡۘۘۦۥ۬ۙۥۘ۫ۥ۫ۢ۫ۧۤۗۨۤ۠ۖۘۚۗۨۙ۫۠ۨۨۨۘ";
                    break;
                case -58449669:
                    splashActivity.o0OoOo0 = i + 1;
                    str = "ۨۢۜۘۨۙۦۘۢۗۨۘۧۦۚ۬ۚۙۥ۟ۥۘۨۨۢ۬ۥۚۖۨۨۘۗۗۦۘۥۗۛ۬ۜۨۘۜۧۜۘ۬ۧۦ";
                    break;
                case 515008390:
                    return i;
                case 1192462143:
                    i = splashActivity.o0OoOo0;
                    str = "ۡۢۖۡ۫ۥۘۥۙ۬ۨۥۧۛۜۚۙۗۥ۫ۚۦۘ۬ۘۥۘۦ۬ۛۖۛۜ";
                    break;
            }
        }
    }

    private void OooOo0O(int i, String str) {
        String str2 = "ۚ۬ۛۖۗ۠ۜۧۖۘۥۚۧۧۤۖۘۧۗۢۖۧۤۥۜ۠ۥۡۙۜۜۖۖۛ۬ۛ۫ۖۨۚۧۨۤۖۘۥۜۨۖۘ۬ۚۤۥۚۚۡ";
        while (true) {
            switch ((((str2.hashCode() ^ 502) ^ 575) ^ 1) ^ 601106076) {
                case 22791882:
                    str2 = "۟ۜۢۛۗۘۜۛۧۜۗۤۗۨ۫۟ۧۚۢۦۚۜۥۥۘۛۛۢۨۦۨۘۘۥۨۘۥۤۥۜۙۛ۠ۘ۠ۘ۟ۚۥۖۨ";
                    break;
                case 972664989:
                    x9.OooO0O0().OooO00o(i, str, this, new OooOO0(this, null));
                    str2 = "ۧۡۡۘۚۙۗۧۡۗۧۤۥۤۗۦ۫۠ۨۘۡ۬ۤۢۖۘۧ۟ۦۗ۟۠ۡ۫ۨ۠ۡۥۘۨۖۘۦۚۖۘ";
                    break;
                case 1309629469:
                    return;
                case 1983684786:
                    str2 = "ۦۦۙۛ۫ۖ۟۠ۥۧۘۘۘۙۛۘۘ۬۠ۚۜۤۗۘۘۦۦۦۘۜۙۜۘ";
                    break;
                case 2083673076:
                    str2 = "ۗ۠ۖۢۚ۟ۧۙۥۘۨۛۗۘۖۦۚ۫ۙۦۛۤۜۡۘۘۤۢ۠ۘ۠ۙۙ۬۠ۛ۠ۥۦۤۥۗۧ";
                    break;
            }
        }
    }

    private void OooOo0o() {
        String str = "ۚۤۘۘۖ۫ۥۘ۫ۗ۫ۙۤۖۦۙۗۗ۬ۨۨۘۘۥ۠ۗۗ۟ۜۥ۠۟۫ۗۘ۫ۘۧۘۜۚۥۘۜ۬ۧۦۘۖۘۨ۫ۗ";
        OooO oooO = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE) ^ a.aX) ^ 946) ^ (-1189414977)) {
                case -1597365129:
                    oooO.cancel();
                    str = "ۦۨۧۡۜۤ۫ۢۧۦۛۦۗ۟ۦ۠ۢۙۡ۬ۖۘ۟ۢۗۥۦۧۖۢۘۘۘۡ۬ۧۚۙۡۘۧۢ۬";
                    break;
                case -556481437:
                    this.ooOO = null;
                    str = "ۘ۟ۡۘۨۖۥۘ۫ۡۘۘ۫ۖۘۜۗۗ۬ۛ۬ۧۡ۬۬ۤۜۘ۠ۢۜۘ۬ۢۙۤۦۥۘۙۙۦ";
                    break;
                case 35988777:
                    return;
                case 1323836259:
                    str = "ۖۢۙ۟۠ۖۘۜۨۧۘۡۡۦۦۖۥۘۜۧۨۘۢ۟ۦۚ۠ۤۚ۬ۨۢۚۢۙۢ۠ۛۖۘۡۘۡۘۜۘۘۘۖۡۡۜ۠۟ۡۦۜۘۛۛۨۘ";
                    break;
                case 1511729502:
                    this.o0OoOo0 = 0;
                    str = "ۜ۬ۧ۟ۦۧۘ۬ۢۨۘ۫۫ۥۘۛۦۖۘۧۦۖ۬ۜ۬ۧۤۢۘ۟ۥ۬ۤ۬ۚۛۘۘۢۜۗۗ۫ۡۘۖۧۖۘۘۖۡۖۢۜۥۤۢۧۘۡ";
                    break;
                case 1622910055:
                    String str2 = "ۛۙۗۖۡۗۨ۠ۛۛ۫۬۠ۧۡۘۤۦ۠۟ۚۛۚۢۥۘۢ۟ۨۤ۠ۖۘۛۡۤۨ۟ۛۘۧۜۘۜۥۢ";
                    while (true) {
                        switch (str2.hashCode() ^ 2075821986) {
                            case -2111775855:
                                str = "ۘ۟ۡۘۨۖۥۘ۫ۡۘۘ۫ۖۘۜۗۗ۬ۛ۬ۧۡ۬۬ۤۜۘ۠ۢۜۘ۬ۢۙۤۦۥۘۙۙۦ";
                                continue;
                            case -728107857:
                                str2 = "۬ۡۤۜۜۧۚۢۜۘۦ۬ۘۘ۠ۢۧۨۜۡۙ۫ۘۘۥ۫ۨۧۨۜۧ۬";
                                break;
                            case -374814344:
                                str = "۠ۤۡۘۡۧۜۘ۟ۧۜۘۙۡۜۘ۫ۜۜۤۢۥۘۤۥۢۡۘۚۡۢ۫ۡۡۘ";
                                continue;
                            case -291112572:
                                String str3 = "ۙۖۦۤۢۨۘۖۜۜۢۨۗۘ۟ۦۡۡۖۨۥ۬ۦ۟ۨۘ۫۟ۜۘۜ۫ۛ";
                                while (true) {
                                    switch (str3.hashCode() ^ 2024938917) {
                                        case -1958950465:
                                            str3 = "۠ۧۢۦۡۨۘۗۤۙۚۡۘ۬ۗۦۘۦۧۗ۫۬ۨۘ۫ۙۡۘۥۜۘۢۛۛ۟ۢۦۤۘۘ۬ۛۧۗۨۛ";
                                            break;
                                        case -1004155940:
                                            str2 = "ۦۘۡۥۨۧۘۥۛ۠۬ۥۤۛۘۥ۟ۢۚۖۘۘۖۢۙۖۢۙۛۗۡۘ۠ۥۨۚۦۢۤۗۗ۬ۨۜۘ";
                                            break;
                                        case -291785688:
                                            str3 = oooO != null ? "ۙۚ۠ۥۜۤۙ۟ۘۘۗ۟ۜۙ۟ۡۘۥ۫ۡۥۦۗۨۦ۟۟ۜۘۘ۫ۜۥۘۦۥ۫ۖۖۜ" : "۬۬ۦۘۗ۫۬ۙۨۨۘۨۨۢۜۗۥۘۛۧۖۡۛۛۥۢۦۦۘۜ۠ۗۛۦ۫۬۠ۜۜۘ۬۫۫ۨۥۥۚۜۦۘۘ۬ۦۘۨۨۨۘۨ۫۠";
                                            break;
                                        case 46537085:
                                            str2 = "ۤۘۨۖ۠۬ۡۘۘۘۤۗۛۢۘۢۡۢۦۘۦۦ۫ۡۙۨۨۙۚ۠۠ۦۚۦۙۦۘۖۘۧۥۥۨۘ۬ۜۥۨۙ۟";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1953955862:
                    oooO = this.ooOO;
                    str = "ۛ۬ۧ۬ۨۘۛۚ۫۠۫ۛ۫ۜۨ۬ۜۖۘۡۨۢۘۨۤ۬ۢۧۜۙۤۗۦۥۘۛۙۛۡۚۛۧۗۜ";
                    break;
            }
        }
    }

    private void OooOoO0(String str) {
        String str2 = "۠ۥۖۘۥۜۥۘۗۜۛۧۚۥۘۢۥۘۜ۫ۚۤۡ۫۫ۦۖۜ۫ۚۥۖۡۘ";
        p1 p1VarOooO0OO = null;
        p1 p1VarOooO0OO2 = null;
        while (true) {
            switch ((((str2.hashCode() ^ 557) ^ 851) ^ 336) ^ (-1893508457)) {
                case -2086573317:
                    p1VarOooO0OO.OooOOoo(o0oo0000.OooO0O0);
                    str2 = "ۢۧۚۦۦۘ۫ۤۜۨۚۦۘۙۧۢۘۜۗۖۨۦۘۨۦۙۧۙ۫۟ۦۡۘۡۖۦۘۖ۟ۧ";
                    break;
                case -1814234820:
                    str2 = "ۗۖۖ۬ۖۜۘۜۘ۬ۙۚۦۘۖۙۜۘ۠ۦۤۚۜۤۙ۬ۜۘۡ۫ۗ۠۬۫ۧۤ۟۫ۖۖۗۙۥۘ۟ۡ۫ۨۨ۬۟";
                    break;
                case -1792284627:
                    m4.OooOO0O(this, str, this.OooooOo, p1VarOooO0OO);
                    str2 = "ۨ۫ۧۦۦۜۘ۟ۖۖۙۦۧۧۘۘۦۨۦۥۡۧۚۚ۫ۥۙ۟۫ۖۘۗ۫ۖۦۧۨۘ";
                    break;
                case -1620804591:
                    str2 = "ۤۚۜۙۤۦۨ۟ۘۢۨ۠ۤۚۛ۫ۤۨۘۜۦ۟ۙ۫ۥ۫ۚۦۘ۬ۧۚ۫ۚۨۘ۫ۙۜ";
                    p1VarOooO0OO2 = m4.OooO0OO();
                    break;
                case -1568231065:
                    str2 = "ۨ۫ۧۦۦۜۘ۟ۖۖۙۦۧۧۘۘۦۨۦۥۡۧۚۚ۫ۥۙ۟۫ۖۘۗ۫ۖۦۧۨۘ";
                    break;
                case -1396655443:
                    str2 = "۬ۙۙۡۡۥۜۥۦۘۙۤۡۘ۟۫۬ۨۥۗۗۛ۟ۦ۠ۙۘ۬ۢۜۨ۠ۦۖ۬ۤۛۙۛۦۜۘۜۦۘۘ";
                    break;
                case -1325470840:
                    String str3 = "ۤۢۨۛۧۘۢۙ۫۫ۛ۬ۤۘۗ۬ۖۢۨۛۡۡ۟ۨۙۛۖۤۧۡۘۧ۫ۜۘۛۥۘۛۦۧۛ۫۫ۢۦۤۥۛۙۨ۫ۡۘ۫ۢۛ";
                    while (true) {
                        switch (str3.hashCode() ^ 1738976729) {
                            case -1621838728:
                                str2 = "۬۬۫ۧۘۘۘ۫ۜۡۦۨ۟ۦۜۗۖ۬ۖۘۖۤۚۥۙۥۜ۬ۦۘۥۥۦۘ";
                                continue;
                            case -1490745612:
                                String str4 = "ۡۤ۬ۡۤ۠ۖۛۨۨۤۡۘ۫ۤۚۤۚۙ۫ۘۤۧۧۤۛۘۥۘۛۜۜۙۛۘۘۘۨۡۘۙۤ۟ۚ۠ۥۥۨۡۙ۠ۥۤۦۖۨ۠ۖۘ";
                                while (true) {
                                    switch (str4.hashCode() ^ (-1766300998)) {
                                        case -1619235910:
                                            str4 = str.endsWith(".gif") ? "ۙۛۛۜۤۗۦۜۧۘۙۚۙ۟۟ۘۨۚۘ۟ۜ۫ۧ۠۫۫۬ۨۥۘ۫ۨۥۢۜۡۘۘ" : "ۧۗۨۘۧۤۥ۬۫ۚۜۜ۫ۢۢۖۘۢۤۤۥۡۧۘۡۗۛۨۖ۫ۘۧۥۛۡۦۘۥۡۥۘ۬ۡۘۧ۠ۜۘ۟ۚۛۤۗۘۛۙ۠۫ۙۘ";
                                            break;
                                        case -1256270993:
                                            str3 = "ۜ۬ۥۡۢ۫ۡۤۘۘ۟۬ۛۙۡۘۛ۠ۢۢۤۡۗۥۙۧۡۘۘ۠ۨۨۘ";
                                            break;
                                        case 520152221:
                                            str3 = "ۛۦۦۙۚۙۛۖۥۙۢۗ۠ۥ۠۟ۦۧ۟۠۫۠ۢۚۦ۟ۢۚۜۜۘ";
                                            break;
                                        case 1206338838:
                                            str4 = "ۤ۬ۘۘۘۛۡۘ۫ۚۚۙ۠۠ۢۗۜۘۘۢ۠ۧۗۦۘۧ۟ۨۗۦۧۗ۫ۚ";
                                            break;
                                    }
                                }
                                break;
                            case 1718446264:
                                str2 = "ۢۤۘۘۧ۫۫ۘ۟ۙ۠ۛۖۤۡۛ۟ۦۦۡۙۧۡۦۘ۠ۦۘۤۦ۟ۘۚۥۨۖ۫۫ۖۖۛ";
                                continue;
                            case 2100219722:
                                str3 = "ۥۥۗۤۨۥۜۖۥۘۢۗ۬ۧ۟ۦۘۛۢۚۛۧۦۚۘۘۘۤ۬ۨۢۛ۫";
                                break;
                        }
                    }
                    break;
                case 841656224:
                    this.Ooooooo.OooO0o0();
                    str2 = "ۘ۫ۤۥۢۥۘۖۛ۠۠ۜۧۘۛۙ۟۫ۥۙۨۡۘۤ۠ۜۘۢۖۡۘۥۢۜ";
                    break;
                case 854224518:
                    m4.OooOOO(this, str, this.OooooOo, p1VarOooO0OO2);
                    str2 = "۫ۜۚۜۙۤۛۨ۬۫ۧۛۘ۠ۦۡۘ۫ۗۙۦۘۜۛۖۗ۫ۤۧۢۢۙۙۙ۫ۢۥۘۛۖۚۖۨۤۚۤۦ۠ۗۡ";
                    break;
                case 1212398774:
                    p1VarOooO0OO2.OooOOoo(o0oo0000.OooO0OO);
                    str2 = "ۘ۠ۨۦۤۨۤۨۨۘ۫ۤۡۘۧۥۥۘۦۨۤ۫ۥۜ۟۠۠ۤۘۢۗۚۗۢۘۧۘۖ۟ۖۘ۟ۦ۟ۤۘۨۜۚۗ۠ۦۜۘۧۥۛۨۡۨۘ";
                    break;
                case 1287849019:
                    return;
                case 1728652016:
                    p1VarOooO0OO = m4.OooO0OO();
                    str2 = "ۛۦۨ۫ۚۨۥۛۥۥۘۢۦۦۜۚ۫ۚۡۦۧۤۢۦۘۢۨۥۘ۫ۡۘۘۖۤۢۛۧۤۦۡۚۨ۟ۡ۟ۦۘۙۜۚۦۡۨۥۚۗ";
                    break;
            }
        }
    }

    private void OooOoOO() {
        String str = "۫۬ۦۦۘۚ۠۬ۖۘۢ۫ۗۥۘ۟ۘ۠ۜ۫ۧۜۙۤ۫ۛ۬ۧۢۨۧۘۚۤۢۖۗۘۘۨۥ۬۫۠۬";
        final AlertDialog alertDialogCreate = null;
        AlertDialog.Builder builder = null;
        View viewInflate = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX_VALUE) ^ 791) ^ 395) ^ 181718308) {
                case -1343591341:
                    builder.setCancelable(false);
                    str = "ۦۨ۟ۗۤۖۘۥۧۘۚۢۜۤۙۖۡۦۜۡ۫ۚۘۡۘۘۙۙۡۦۗۙۛۘ۟ۨ۟ۡۘۛ۟ۨۘۦۙۜۘ۟ۚۢۦۨۜۘ";
                    continue;
                case -917137670:
                    ((qa) this.OooooO0).Oooo000();
                    str = "ۥۘۤۨۡۘۗ۟ۥۖ۬ۗۡۥ۠ۚ۬ۙ۬ۛۢ۬ۥۘۖ۟ۨۧ";
                    continue;
                case -648023112:
                case 641028228:
                    return;
                case -344577712:
                    builder = new AlertDialog.Builder(this);
                    str = "۟ۤۛ۫ۖ۫ۦ۟ۖۘۖۛۙۢۡ۬ۡۚۛ۫۬۫۟ۥۥۘ۫ۧۨۘ";
                    continue;
                case 406314046:
                    builder.setView(viewInflate);
                    str = "ۢۖ۠ۗۡۜۘۥ۟ۦۘۘۘ۫ۙ۫ۜ۫ۧۗ۟ۜۥۘۚۗۖۘۨۦۘۜ۫ۥۜ۬ۥۘۚۖۡۚۘۦ۫ۘۢ";
                    continue;
                case 581435700:
                    viewInflate.findViewById(R.id.dialog_miuiguide_button_open).setOnClickListener(new View.OnClickListener() { // from class: z2.j9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.OoooOoO.Oooo000(alertDialogCreate, view);
                        }
                    });
                    str = "۟ۥۘۛۤۚۘۨ۫ۖۚۘۘ۠ۤۦۘۘۢۜۗۛۗۦۦۚۙ۬ۜۜۢۘۘ۬۫ۚ۠ۛۤۧۘۘۖۡۡۜۚۤۤۜۢ";
                    continue;
                case 599506209:
                    String str2 = "ۢۘۜۙۙ۠ۚۧۥ۬ۤۚۙۤ۫ۡۙۘۖۖۘۛۥۖۦۗ۠ۤۚۢۗۖۤ۬ۧۢ";
                    while (true) {
                        switch (str2.hashCode() ^ (-312480336)) {
                            case -1938470267:
                                break;
                            case -1865915065:
                                String str3 = "ۡۘۡۘۛۤۜۘ۬۠ۧۘ۟ۤ۟۟ۢۙۘۘۨۦۧ۠۫ۖۘۧۥۤۤۚۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-779884118)) {
                                        case -2074990380:
                                            str3 = !Settings.canDrawOverlays(this) ? "ۡۡۘۘ۠ۦۚ۟۠ۡ۫ۢۜۘۧۥۥۖۡۨۢۙۙۜۡۗۘ۠۟ۤۦۚۚۨۘۜۥۙۥ۟ۘۢۧۨ" : "۬۠ۨۘ۟ۧۜۘۜۢۛۦۧۥۘۙ۫ۖۘۦۚۡۘۛۧۢۘۤۙۖۜۗۥۗ۠ۡ۬ۥ۬۫ۡۘ";
                                            break;
                                        case -1581296773:
                                            str3 = "۟ۧ۬ۤۦۜۢۖۚۜ۠ۗۛۦۛۨۨۜۘۤۜۜۘۖۛۜۘ۠ۚ۠ۥ۬۬";
                                            break;
                                        case -1396470666:
                                            str2 = "ۗ۬ۧ۬ۛۥ۬ۢۛۙۜۘۜۛۨۘ۫ۤ۠ۛ۟ۜۨۦۦۥۧ۠۫ۧۛ";
                                            break;
                                        case 182606263:
                                            str2 = "ۙۢۥۘ۠ۖۦۜۡ۬ۖۦۨۜۜ۟ۙۤۛ۠ۘۘۛۖ۫ۨ۬ۢۙۛۙۤۘ۬ۙ۠ۨۘۘۦۨۥ۬ۙۖۥۤۦۧۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case -1034828262:
                                str2 = "ۙ۬ۨۘۢۢ۠ۡ۠ۛ۠ۤۖۛۤۡۙ۟ۧۛۢۗۨۘۨۚۥ۠ۥۦۧۘۡۧۙ۠ۧۡ۫ۨ۠۠ۗۥۘۧۡۧۘۘۘ۠";
                                break;
                            case -277740862:
                                str = "ۤۧ۫ۛۜۙۤۙۖۧۥۨۘۛ۬ۡۢۜۥ۬ۤۘۘ۟۠۬ۥۡۘۤۖۨۘۦ۟ۛۖۘۚ";
                                break;
                        }
                    }
                    break;
                case 713696103:
                    alertDialogCreate = builder.create();
                    str = "ۘ۠ۜۘۢ۬۬ۧۘۛۖۦۚ۟۠ۜۡۛۢۗۦۙۜۙۜۘۢۤۧۥۥۤۛۗۧۥۥ۫ۗۧۛۛ۠ۧۜۥۧۘ۟ۗۨۘۙۢۥۗ۫ۢ";
                    continue;
                case 1647596341:
                    String str4 = "ۛۤۨۘۙۙۜۘۡۗۥ۟ۙۧۙۡۙۜۙۥۗۢۗ۟ۜۙۡۤۧ۫۟ۜۢۜۖۚۘۤۚۖۘۚۦۚۢۖ۟ۗۥۡۖۦۦۢۘ۠";
                    while (true) {
                        switch (str4.hashCode() ^ (-1068091912)) {
                            case -1874607026:
                                String str5 = "ۨۢۦ۬ۥۖۘۚۘۤۛۜۨۚۧۢۨۘۢۘۥۡۘۖۚۗۚۡۚۧ۬۟";
                                while (true) {
                                    switch (str5.hashCode() ^ 525247901) {
                                        case -1268380722:
                                            str4 = "۠ۢۢۖۡۤۡۘۜۘۢۧۡۘ۟ۗۖۥۜۦۘ۟ۚۥۥۜۜۧۖۘۤۗۨۘ۠ۥۤۙۚۘ۠ۚۘۤۥۨۘ۫ۖۧ۫ۨۗۤ۠ۢۥۥ";
                                            break;
                                        case -228159284:
                                            str5 = Build.VERSION.SDK_INT >= 23 ? "ۗۤۡ۠ۧۚۛۥۤۚۦۘ۫۬ۡۘۨۢۦۘ۟ۜۚۘۖۗۡۨۦ۬۟ۢ۠ۛۘۘۙۦۤ" : "ۧۚۡۧۨۘۘۜۗۜۘۦۤۥۘۤ۫۠ۛۡۦۘ۠ۤۙۨۨۧۡۧۢۥۚۥۘۨۧۢۤۦۖۘۙۜۜ۟ۜۚۙۤۛۧۘۧۘۧۨۧۘۨۛ";
                                            break;
                                        case 938818694:
                                            str5 = "ۧ۠ۗ۠ۘۘۗ۠۟ۗۜۤ۠ۖۘ۫ۘۡۥۛ۠۫ۘۢۜ۬ۤۗ۫ۧۡۧۨۘۧۢۥۘۛۡۘۨۤۖۘۙۜۘ۫۠ۘ";
                                            break;
                                        case 1875390649:
                                            str4 = "ۤۨۨ۟ۧۢۡۧ۫۟ۢۜۛۖۘۢۖۨۘۧۛۖۘۖۗۥۙۜ۠ۚۛۜ۠ۖۜۘ۫ۘ";
                                            break;
                                    }
                                }
                                break;
                            case -916928212:
                                break;
                            case 837992379:
                                str4 = "ۦ۫۠۬ۖۦ۬۬ۥۘۖۙۗ۫ۜۗۡۦۘۙۢۘۘۨۧۜۥۧۦۗۥۥۘۘۘۨۧۥۖۢۥ۫ۧۚۨۛۛۚۘۦۗ";
                                break;
                            case 1694199282:
                                str = "ۢۛۡۘۥ۬ۧ۟۠ۘۙ۫ۤۡۡۜۤۘۘ۬ۥۦۘۧۚۨۥۘ۠ۜۡۛۚۨۘۘۨ۫ۖ۟ۥۡۘۙ۫ۤۙۨۚ۬ۤۧ";
                                break;
                        }
                    }
                    break;
                case 1666167756:
                    str = "ۦۗۡۥۤۗۚۨۥۦۥۥۗۜۡۢۧۨۘۡۘۧۘۥۘ۫ۥۨۛ۬ۗۤۖۥۛۛۦ";
                    continue;
                case 1765046606:
                    viewInflate = getLayoutInflater().inflate(R.layout.dialog_miuifloatview, (ViewGroup) null);
                    str = "ۘ۠ۦۘۥۚۥ۬ۢۦۘۡۤۥۧۙ۫ۘۤۜۘۥۛۡۘۧ۠ۢ۫ۦۨۘۛۢۨۘۗ۫ۨۘۨ۬ۜۘ";
                    continue;
                case 1792122743:
                    alertDialogCreate.show();
                    str = "ۡۥ۟ۨۜ۟ۢۘۚۤۤۦۘۙۡۤۗۚۥۘۚۙ۟ۗۜۜۜۘۦۡۛ۟ۛۛۡۘ۠ۡۗ";
                    continue;
            }
            str = "ۧۤۘۘ۠ۧۛ۫ۢ۬ۘۗۨۘۛۤۡۖۜ۬ۦۡۛۧۜ۠ۡۚۜۥۦۖۨۥۘۘۨ۫ۧ";
        }
    }

    private void OooOoo() {
        String str = "۬۟ۗۙۤ۟ۖۘۙۥۥۜۘۧ۟ۤ۫ۢۢۦۘۖۙۥۥۚۘۘ۟ۗۡ۟ۗ۬۫۫ۥۘ۠ۧۖۘۦۨۥۚ۠۫۬ۜۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 593) ^ 52) ^ 14) ^ (-1660185800)) {
                case -1555407238:
                    y8.OooOO0o(1);
                    str = "ۜۢۖۘۘۛۖۘۤۨۥ۟۫ۥۘ۠۫ۡۘۙۨۘۧۤۡۥۙۖۘ۬۟ۛۨۛۘۙۧۖۢۚۦۥ۟۠ۧ۠ۨۖۛۖۛۖۘۦ۟ۦۧ";
                    break;
                case -728301429:
                    return;
                case -452049596:
                    ((qa) this.OooooO0).Oooo0oo();
                    str = "ۢۙۦۜ۠۠۬ۦۢ۠ۥۥۢ۫۟ۜۚۜۜۧۧ۫ۦۘۤۡۘۚۙ۠۠ۧۛۢۖۚ۟ۦۚۧۢ۫۠ۨ۟ۙۥۘۤ۠ۧۛۘۙ";
                    break;
                case 1003489437:
                    str = "ۛ۬ۥۧۙ۬۬ۢۤۦ۬ۘۘۥۨ۫ۜۦۘۖۚۡۧۘ۬ۧ۠۠ۤۦۘۘ";
                    break;
            }
        }
    }

    private void OooOoo0() {
        String stringExtra = null;
        String str = "ۖ۫ۘۘۢ۠ۥۧۧۢ۠ۢۚۙۖۢۨۗۘۤۥۡۘۢۚۨۘۙۨۧۘ۠ۧۡ۟ۨۛ۠ۢۘۘۘ۫ۦ۬ۘۘۦۙۗۥ۫";
        while (true) {
            switch ((((str.hashCode() ^ 337) ^ 745) ^ 263) ^ (-834230491)) {
                case -2119445416:
                    String str2 = "۟۠ۙۚۖۧۖۙۨۦ۟ۧۦۜۘۡ۬ۢۥۛۙۖۜۗۨۛ۟ۗۨۜۥۛۨۘ۠ۧۙۢۘۖۗۦۜۢۦ۬۫ۗۧۗۧۖۦۥ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1981978057)) {
                            case -974929923:
                                str = "ۛ۫ۗۨ۟ۨۘۚۤۡۘۜ۬ۛۧۨۨۨۧۡۘۖۧۦ۬ۙۜۜۦۘۙۜۨۧ۫ۥ۫ۦۤ";
                                continue;
                            case -948129152:
                                String str3 = "ۧۙۜۘۛۢۙۖۗۡ۠۠۬ۢۦۘۘۙۥ۠ۘۨۜۡۦۨۙۜۘۘۢۗۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-950955988)) {
                                        case 1194204907:
                                            str2 = "ۥۤۦ۬ۢۨۘۧۖۡۜۙۖۘۗ۠ۤۗۧ۟ۦۧۛۘ۫ۢۖۡۘۘۛۘۘۘۧۢۧۡۗ۠";
                                            break;
                                        case 1396903854:
                                            str3 = !TextUtils.isEmpty(stringExtra) ? "ۧۡۧۚۡۥۘۦۨۖۘۧ۠ۥۨ۬ۛۥ۬۫ۥۙۡۜ۬ۖۘۢۗۧۨۨۥ" : "ۜۨۧۗۨۧۘۧۧۜۘۦۙ۠۟ۡۢۥۜۡۘ۟ۘۛۙۘۧۘ۠ۢۦۢۧۜ۬ۛۗۢۡ۠۫ۤۘۛۚۨۘۗۢۜۘۘۢۢ";
                                            break;
                                        case 1571602643:
                                            str2 = "۬ۜ۠ۜۖ۟۠ۧۤۘۜۧۚۧۨۘۨ۠ۧۧۡۖۡ۠ۛۤۨ۫ۜۚۛۖۗۘۤ۠ۙ";
                                            break;
                                        case 1785795016:
                                            str3 = "ۖۧۘۗۜۜۚۥۤۤۙۥۘۡۚۡۤۥۤۧ۫ۨۘ۟ۗ۠۟ۡۚ۬ۖۘۢۙۜۘۙ۟۬۫ۡۙۢۢۥۘۖۜۥ۫ۙ۫";
                                            break;
                                    }
                                }
                                break;
                            case 45034500:
                                str2 = "ۧۨۖ۠۫ۗۙۧۥ۬ۥۗۚ۬۬ۧۙۛۘ۟ۚۙۖۙۢۜۜۘ۬ۥۦۚۢۛۨۤ۫ۚۥ۫ۡۗ۫ۧۧۧۨۖ۬ۜۢۚ۫ۚۤ";
                                break;
                            case 387626948:
                                str = "۠ۛۙۧۜۛۨۖۖ۫ۚۢۨۜۤۘۨ۟ۛۡۖۡۧۥۘۖۙۨۙۨۘۘ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -1807510703:
                    h6.OooO00o();
                    str = "ۘۤۜۜۧۛ۟ۙ۫۫ۦۤۘۘۖۘۖۨۗ۠ۜۨۗ۠ۙۗۢ۠ۗۦۗۚۦ۬ۜ۠ۚ۠ۦۦۘ۟ۗۥۙۤۜ۬ۥۘۧۢۖۖ۬ۤ";
                    continue;
                case -586314515:
                    OooOoo();
                    str = "ۛۛۢۨ۫ۨۘۤۜۢۛۡۖۘۜۙۜۘۡۖۡۘۗۖ۟ۧ۬ۜ۟ۚۢۛۥ۫ۨۥۘۘۦۘۢۖۜۨۛۗۘ۟ۨۢ۠ۖۖۘۙۛۖ۫ۥۤ";
                    continue;
                case -325494425:
                    AppContext.OooO00o().OoooooO = getIntent().getBooleanExtra("sIsBooted", false);
                    str = "۠ۥۘ۫۬۫۫۠۬۫ۦۖۘۚۙۘۘ۠ۜۧۗۢۥۦۦۧۘۙۥ۫ۨۙ۫";
                    continue;
                case -102137091:
                case 1701304291:
                    break;
                case 235829926:
                    stringExtra = getIntent().getStringExtra("type");
                    str = "ۡۧۜۢۢۦۘ۟ۡۘۦۘۚ۫ۗۦۘۙۧۡۛۤۢۖۙ۬ۘۥۡۘۥۥۙۧۚۧۧ۟ۧ۬۬ۛ۬ۛۧ";
                    continue;
                case 238478884:
                    AppContext.OooO00o().OoooooO = true;
                    str = "۟ۘۗۦۜۧۡۜۥۘۨۦۡۧۚۙۨۤۘۧۜۚۙ۟ۡ۬ۙۤۚۚ۫ۧۙۨۘۦۙ۟ۥۤۥۘۚۢۜۖۧۦۛۥۖۘ";
                    continue;
                case 345640311:
                    return;
                case 353209024:
                    String str4 = "ۖۜۧۘۥ۫ۤۨۥۦۘۗ۫ۜۖۡ۠ۧۧۨۡۢۚ۫ۘۡۘۧۖۘۖۙ۫ۤۡۘۗۥۡ۫۠ۦ۫ۨۜۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 554970774) {
                            case -885800241:
                                str = "ۥۛ۠ۦۤ۬ۥ۬ۚۤۡۨۡۧۖۨۦۤ۫ۥۖۡۢۧۛۥۗۜۛۘۘۘۧ۟ۡۘۜۨۧۘۨۢۨۘ";
                                continue;
                            case -111166835:
                                String str5 = "ۦۡ۫ۥۧۡۘ۠ۨۦۖۖۥۗۥۨۗۖۢۜۖۘۘ۟ۜۜۘۙۤۡ۠ۙۛ۫ۡ۬ۤۤۖۜ۫۫ۨۜۘۗۘۥۘۖۙۨۙۛۙ۫ۤۘۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1745682157)) {
                                        case -1032270804:
                                            str5 = stringExtra.equals("PowerBoot") ? "ۤ۟ۖۘۖۙ۠ۨۧۡۘ۬ۛۥۚۨۘۖۚۡۘ۬ۥۖۘۥۡۧۘ۠۫ۥۘۛ۫ۤۙۢۢ۟ۗۡۘ" : "۫۫ۥ۫ۦۜۘۤ۟ۛۘۜۗۢۡۜۧۙۥۦۚۘۘ۬ۨ۠ۗۥۢۗۖۦۘۥۥۖۘ۬ۗۖۘ";
                                            break;
                                        case -739924886:
                                            str4 = "۬ۧۡۘۡۦۜۘۖۜۡ۠ۗۥۘ۬ۘۖۘۗۚۥۘ۟ۨۘۘۗۛۖ۫۫ۨۘ۠ۥۢۛۤۡۘۦۧۘۖۤۢۦۥ۟";
                                            break;
                                        case -571981428:
                                            str5 = "ۙۘۜۘۜۢۥ۠ۨ۬۬ۜۢ۬ۢۙ۠ۛ۠۬ۨۡۘۗۘۖۨۥ۟ۖۤۛ";
                                            break;
                                        case 1040384026:
                                            str4 = "۟ۙ۠ۚ۠ۨۘۦۨۡۘۖۢۥۘۡۦۘۡ۫ۨۘۜۚۜۘۜۦۥۡۡۖۘ۟ۛۜۚۗۦ۠ۥۙۜ۟ۥۨۡۚ";
                                            break;
                                    }
                                }
                                break;
                            case 799844406:
                                str = "ۛۧۦۙۖۨۘۤۙۥۢۥ۠ۧۛۚۥۚۡ۟ۧ۬ۙۥ۠ۚۢۗ۬ۦۦۗۢۘۘۘۖ۫ۡ۟۠۫ۦ";
                                continue;
                                continue;
                            case 1858553951:
                                str4 = "ۧۗۦۚۦۨۢۦۘۘۜۢۨۘۢۦۛۡۨ۬ۖۜۦۘۢۥۢۦۛۦ۟ۘۘۢۡ۬ۙ۠ۜۘ۫ۛۦۘ۫۠ۘۖۡ۫ۧۜۖ";
                                break;
                        }
                    }
                    break;
                case 568864388:
                    AppContext.OooO00o().Ooooo0o = f4.OooO0O0(this);
                    str = "ۗ۫ۘۘۢۜۖۘۡۚۧۤۦۛ۫ۡۗۢۡۘ۬ۙ۬ۢۚۙۡۨۙۛۥ۫ۛ۟ۧۤۚۦ۫ۨۧۨ۬ۙ";
                    continue;
                case 749299181:
                    AppContext.OooO00o().Ooooooo = false;
                    str = "۠ۢۦۢۛۖۗۤۜۘۡۧۧۚۥۨۘۨۤ۠ۢۛۡ۫ۡ۬ۗۖۡۨۡۡۘۜۖۗۘۗۙ";
                    continue;
                case 1421938449:
                    str = "ۗۥ۠ۜ۬ۤۜۚۥ۟۫ۤۜۛۜۘۦۙۥۘۢ۟ۖۘۨۘۡۦ۟ۚۘۢۙۖۙۖۨۦۙ۬ۨۡۦۘ۠ۜۦۨۘۨ۫ۥ";
                    continue;
                case 1731847885:
                    AppContext.OooO00o().Ooooooo = true;
                    str = "ۤۨ۠ۨ۠ۖۘۗۥۡۡۥ۠ۜ۬ۚ۠۟ۧۛ۫ۡۘۚۡۧۘۙۙۡۘ۟ۥ";
                    continue;
                case 1774011288:
                    String str6 = "۠ۦۘۛۡۧ۫ۚۥۦۘۧۘۨۥۚۙۨۗۛۜۘۘۧۡۨۘۘۗ۬ۧۧ۠ۘ۠ۘۨ۬ۨ";
                    while (true) {
                        switch (str6.hashCode() ^ 2045210885) {
                            case -1854920062:
                                str = "ۘۗ۠ۥۙۜۘۨ۟ۙۙۨ۬ۙۗۢۘۛۛۗۘۦۘۢۘۤۘۚ۫۟ۡۡۛۘۧۚۡۗ";
                                break;
                            case 346254460:
                                break;
                            case 1138335133:
                                str6 = "ۧۤۨۧ۠ۗ۬ۡۧۘ۬۠ۗ۠ۨۘۘۘۜۢۤۛۖۘۨۨ۫۟۫ۨۘۧۨۥۘۧۜۘۘۗۥۧۘۘۖۗۦۥۥۘۛۥ۬ۨۢۡۘۦ۟ۜۘ";
                                break;
                            case 1183889378:
                                String str7 = "۫۠ۙ۬ۨ۬ۖ۫ۦۘۖۤۥۘۢ۠ۦۘ۟۫۫۟ۡۢۘۜۖۛۤۡ۫ۥ۫ۜۘ۟۟ۙ۬ۛ۟ۜۨۦۘۥۖ۬ۙ۟ۡۘ۫۫ۛۘ۫ۤ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-466495319)) {
                                        case -2112285231:
                                            str6 = "ۗۤۚۧۧۚۙۚۜۘۜۖۘۛۨۥۘۛ۬ۨۘۘۜۦۘ۫ۨۛۨۙۦۚۖۦۡ۬۟ۙۘۚ۬ۜۘ۠ۦۗ";
                                            break;
                                        case -513836091:
                                            str6 = "ۖۗۢۘۡۚۚۨۗۧ۫ۖ۟ۡ۠ۨۚۖۦۚۢۛۤۡۢۧۥۨۥۧۘۢۦۥۘۚۢۚۢۖۡۘۙۥۨۢ۫۠ۧۚۨ";
                                            break;
                                        case -440526167:
                                            str7 = "ۘ۠ۛۘۤۚۛۧۦۗۤۘۥۧۥۘ۫ۡ۬ۗ۫ۛۜۘۗ۟ۖۘۥ۬ۚۙۙۚۜۘۖۗۨۙ۟ۘ۟ۗۡۘ۟ۘۦ";
                                            break;
                                        case 857756350:
                                            str7 = stringExtra.equals("AppReboot") ? "۬ۚۥۖۖۦ۫ۘۖۚ۠ۖۘۤۗ۠ۖ۬ۨۘ۟ۛۜۛۦۘۧ۟ۘۛۙ" : "ۜۤ۬ۛۘۥۧۜۧۜۡۧۘۘۦۥۦۡۘ۫ۖۡ۬ۨ۠۬ۤۦۘۧۚۚۚۜۘۛۖۥ۟ۢۘۘ۫۠۬ۛۚۜۦ۠ۨ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
            }
            str = "۠ۢۦۢۛۖۗۤۜۘۡۧۧۚۥۨۘۨۤ۠ۢۛۡ۫ۡ۬ۗۖۡۨۡۡۘۜۖۗۘۗۙ";
        }
    }

    private void OooOooO() {
        String str = "ۡۚ۬۟ۨۜۛۘۘۦۨۤۧ۟ۚۡۛۘۦۘۚۦۥۢۥۘۘۥ۫ۜۘۨۡۡۘۖۥ۫";
        while (true) {
            switch ((((str.hashCode() ^ 133) ^ 621) ^ 956) ^ (-496455168)) {
                case -700681001:
                    str = "ۘۜۥۚۧۢ۟ۛۜۘۦۦۥ۠ۧۨۚۧ۫ۘ۬ۧۨۡۖۘۗۡ۠ۗۡۘ";
                    break;
                case -641506129:
                    return;
                case 1162854084:
                    oi.OooO0o().OooO00o(new OooO0OO(this));
                    str = "ۧۧۘۘۜ۬ۥ۫ۚ۟ۘۨۖ۫ۦۦۛۦۦۜۡۘۚۜۧۘۜۢۧۚۨۧۖۧۘۤ۫ۨۘۦۗ۬۫ۦ";
                    break;
            }
        }
    }

    private /* synthetic */ void OooOooo(AlertDialog alertDialog, View view) {
        StringBuilder sb = null;
        String str = "۟ۚۜۘۜۧۨۘۧۗۥۘۙ۬ۜۘۤۛ۟ۦۚۥۜ۫ۡۘۧۛۡۚۡۖۘۤۤۧ۬ۢۥۘۜۨۢۘۖۜۜ۟ۧۘۧ۠ۛۨ";
        while (true) {
            switch ((((str.hashCode() ^ 821) ^ 988) ^ 293) ^ 1075641221) {
                case -1904131785:
                    alertDialog.dismiss();
                    str = "ۨۤ۟ۙ۟ۜۘۦ۬۬ۚۜۛ۫۫ۘ۫ۜۛۤۥ۫ۘ۬ۦ۫ۘۥۗۢۛ";
                    break;
                case -1234375299:
                    str = "ۨۤ۟ۛۙۛۨۥۡۘۖۖۗۘۤۦۙۘۧۧۗۢۨۘۖۡۦۤۨۥۘۗۜۙ۟۫";
                    break;
                case -558184336:
                    str = "۟ۗۘۘۙۦ۟ۡۥۥۧۦ۬ۙ۬ۤۦۦۘۘۘۤۜۘۥۖۦۘ۬ۦۗۜۤۡۘۜۢۘ۟ۘۡ";
                    break;
                case -46199179:
                    sb = new StringBuilder();
                    str = "ۗۡ۬ۥ۫ۡۘۦۗ۬ۜۨ۫ۚۚۨۥ۫ۡۡۛۦۙۧۢ۬ۙۙۡ۫ۡۘۨۗۧۧۙۛۙ۫ۖ۬ۖۚۧ۠ۤ۫ۗ۠";
                    break;
                case 487155750:
                    str = "ۢۖۦۘ۟ۦۥۘۚۨۘۘۙ۬ۦ۟ۙۢۚ۟ۦۢۥ۫ۢ۫ۗ۠ۡۨۘۙۙۨۖ۬ۛۦ۫ۥۦۛۤۛۜۖ";
                    break;
                case 794053808:
                    sb.append(getPackageName());
                    str = "ۗۢۧۘۖۙ۠۟ۢۙۤۘۡۖۘۘۗۡۥۦۙۦۧ۫ۧۚۢۚۡۥۥ۠ۖۦۘۙۚۥ";
                    break;
                case 837990659:
                    return;
                case 1354365564:
                    sb.append("package:");
                    str = "ۨۥۖۛۚۥۛۨۦ۫ۖۤۨۘۧۘۦ۬ۗۗۢ۫ۙۥ۟ۢۤۖۗۨ۟۠ۗۦۙ۫۬ۚۘ۬ۡۨۘ۫ۤۧ۠۬ۧ۠۟ۘۧ";
                    break;
                case 1898707273:
                    startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse(sb.toString())), 200);
                    str = "ۙۙۢۚ۠ۨۘۖ۫ۢ۬ۨۘۖۛۦ۫ۜۨ۟ۜۛ۬ۗۘۢۢۨۘۨ۫ۡ۫ۙ۫ۜ۬ۥۘ";
                    break;
            }
        }
    }

    private void Oooo() {
        String str = "ۙۨۙۢۡۖۢ۬۟ۢۦۘ۫۠ۧۥۛۜۘۜۨۧ۠ۛۥۗۤۗۤۦۢۗۚۖۦۤۥ۬ۜۡۘۛۛۗۡۤ۬۬ۧۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 179) ^ 668) ^ me.o0000O) ^ 820769211) {
                case -1099381985:
                    y8.OooO0OO(this);
                    str = "ۢ۫ۥۘ۠ۧ۬ۘۧۡۚ۟ۘۜۛۜۜۘۜۤۘۘۖ۬۟۬ۨۚۛۧۨۘۜۖۗۥ۟ۙۚۦۗ";
                    break;
                case 320565614:
                    return;
                case 354342509:
                    finish();
                    str = "ۨ۟ۚۜۛۦۘۗ۠ۖۘۖۖ۠ۗۧۘۘ۬ۥۛۧ۟ۥۘۙۛۦۨۤۖۘۚۖۤ";
                    break;
                case 1373130457:
                    str = "ۖۛۤۢۤۗۢۚۘۘۛ۟ۜۘ۬ۨ۠ۗ۠ۙ۫ۘۧۘۨۗ۬ۦۨۘۢ۠ۢ";
                    break;
            }
        }
    }

    private /* synthetic */ void Oooo0(PhoneConfig phoneConfig) {
        String str = "ۥۨۜۖ۫ۜۘۤۨۦۤۡ۠ۧۤۙۥۚۘۘۥ۠ۚۢۥۚۖۘ۬ۨۦۥۡۨۡۙۗ۬ۡ۟ۤۥۢ۠ۗۘۘۥۤۛۧۘۥۘۥۤۨ";
        while (true) {
            switch ((((str.hashCode() ^ 892) ^ 866) ^ 859) ^ (-655508973)) {
                case -1360908894:
                    str = "ۡۖۢۨۘۚۖۗۨۨۤۤۨ۫ۤۘۤۛ۠۬ۖۘ۫۠ۧ۟ۖۜ۬ۘۖۘ۬ۚۘۗۦ";
                    break;
                case -1013128081:
                    return;
                case -985657624:
                    finish();
                    str = "ۙۖۖۘۨۢۡۜۡۘۧ۬۫ۜۦۡ۟ۡۛۖۖۨۜۚۛ۠۬ۧۗ۬ۙۜۖۘۛۥۧۘۖۡۨۥ۫ۙۤ۟ۡۘۤ۠ۡۘ";
                    break;
                case 9011788:
                    RecognitionGuideActivity.OooO0oo(this, phoneConfig);
                    str = "ۛۨۚۨۡۤۦ۠ۢۜۛۖۘ۠ۚۥ۫ۖ۠ۚۨ۬ۙۤۗ۟ۥ۠ۤۛۜۘۙۘ۫ۤۡۨۘۙۡۗۡۚۨۘۛ۬ۚۥۡۚ";
                    break;
                case 1225207272:
                    str = "ۤۧۨۜۙۜۘ۬۠ۘۘ۬ۡ۫ۡۚۗۙۗۦ۟ۧۜۘ۠ۡۨۤ۫ۨۘۡۘ";
                    break;
                case 1334459445:
                    String str2 = "ۗۗۦۜۤۙۦۡۗۨۡۡ۟ۤۥۘ۬ۨۦۡۦۨۘۗۡ۫۬ۖ۫۫ۦۡ";
                    while (true) {
                        switch (str2.hashCode() ^ 1874220066) {
                            case -190791346:
                                str = "ۘۨۜۙ۬ۜۜۜۧۘۧۦۛۥۧۘۘۚۥۘۤۗۦۛۖۘۘۨ۬ۘۘۚۡۦۘۘۚۦ۟ۖۡۘۜۖۙۡۘۥۘۨ۠ۨۧۛۙ";
                                continue;
                            case 474432532:
                                String str3 = "ۛۚۨۘۥۡۧۘ۠ۡۨۛۤۥۘۦۦۦۘ۬ۤۛۘۗۤ۫ۧۚۡ۫ۧۘۧۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-2085011665)) {
                                        case -1468726806:
                                            str3 = "ۥۖ۠ۗۥ۫ۜۥۘۜۛ۫ۢۧۖۘۗۡۜۘۧۗ۬ۙۥۥۘۙۗۜۡۚ۫ۦ۬ۗۗۚۘ۠ۧۤ۬ۗۦۘۛۢۖۘۨ۬";
                                            break;
                                        case -1387967133:
                                            str2 = "ۙ۠ۗۛۨۦۘۜۛۦ۬ۥ۫ۛۙۥۤۗۚ۬ۢ۫ۧۚۗۘۡۨۘ۬ۤۜۘۤۨۧۘۤ۠ۥۢۘۡۘۨۥ۠۠ۜۥۛۨۚۛۗۢۚۙ۠";
                                            break;
                                        case -535709604:
                                            str3 = phoneConfig != null ? "ۙۥۧ۠ۗۗۚۡۙۧۧۧۖۡۜۘ۫ۤ۟۬ۡۡۜۢۦۙ۟ۡۦ۠ۗۜۚ۠ۨۗ۬ۦۘۜ۠ۜۘۦۤۖۡۖۙ۠۠ۨۚ۠۟" : "ۖ۟ۜۦۗۨۜ۟ۤۗۖۘۘ۠ۤ۫ۡۚ۬۟ۥۦۘۛۤ۬ۖۨۦۦ۟۫ۤۘۥۘۤۡۛۨۤ۫ۨۖۘۧ۬۠ۦۘ";
                                            break;
                                        case 904176243:
                                            str2 = "۫ۧۥۘۘۢۨ۠۬ۙۥۤۨۘ۫ۜۙ۠ۢۜۦۨۛۤۖ۬ۛۖۜۛۢۜۘۙ۠ۢۚۜ۫ۚۧۢۚۛۜ";
                                            break;
                                    }
                                }
                                break;
                            case 1722421402:
                                str = "ۙۖۖۘۨۢۡۜۡۘۧ۬۫ۜۦۡ۟ۡۛۖۖۨۜۚۛ۠۬ۧۗ۬ۙۜۖۘۛۥۧۘۖۡۨۥ۫ۙۤ۟ۡۘۤ۠ۡۘ";
                                continue;
                            case 1872030069:
                                str2 = "ۖۨ۟۟ۛ۬۟ۚۨۘ۬ۛۡۙۨۜۘ۟ۜۜۜۖۢ۫۬ۡۘۗۨۨۚۦۘۘ۟ۘۥۖۙ۟ۦۤ۫۟ۡ";
                                break;
                        }
                    }
                    break;
            }
        }
    }

    private /* synthetic */ void Oooo00O(qa.Oooo0 oooo0) {
        int i = 0;
        String str = "ۙ۟۬۫ۦ۟ۖ۟ۤۨۡۦۘ۟ۨۗۖۚۘۘ۟ۛ۠۟ۗۜۥۤۜۘۗ۫ۜۘ۬ۢۜۘۨ۠ۚۦۘۚۡ۟ۧ۫ۛ۟ۦۨۢۧۘ۠۫۟۠";
        while (true) {
            switch ((((str.hashCode() ^ 595) ^ 805) ^ 9) ^ 1863203884) {
                case -2137112167:
                    str = "۟۫ۨۛۨۘۙۡۦۦۖۥۢۘۨۘۢۛۨۘۨۙۜۦ۬ۗۥۘ۟ۢۗ۬۬ۖۘۢۖ۟";
                    break;
                case -2087987727:
                    OooOo0O(oooo0.OooO0OO, oooo0.OooO0O0);
                    str = "ۚ۬ۜۨۦۘۨ۬ۘۘ۫ۖۖۘ۠ۥ۟ۙ۟ۨۘۨ۠ۙۦۚ۠ۛۙۡۘۨۡ۟ۥۚۖۘۡۖۢۚۨۨۜۢۥۘ۟۠ۢۢۖۧ";
                    break;
                case -1239709090:
                case 1042485599:
                    return;
                case -968480855:
                case 290474357:
                case 360383346:
                case 709744668:
                    str = "۟۬ۜۦۡ۬ۙۘۥۘۚۤۥۘ۠ۨ۬ۘۜ۠ۚۥۦۚۘ۫ۚۜۘۥۛۜۘ";
                    break;
                case -849614567:
                    String str2 = "۫ۛ۠ۛۤ۟ۙ۬ۛۢۛۥۗۗۛۚۖۥۖ۫۟ۛۦۙۧۤۚۖۛۜۘۥ۠ۥۗۜۦۘ۫ۦۢۛ۫ۗ";
                    while (true) {
                        switch (str2.hashCode() ^ 905413563) {
                            case -329794236:
                                String str3 = "ۤۚۤ۫۠ۧۜۚۨۜۦۧۘۙۗۡۘۧۜ۠۟ۢۘ۬ۤۤۥۦۦۥ۠۟ۥ۟ۧۤۙۨۧ۟ۙ۟۬ۨۘۢۨۡۘۙۗ۟ۤۢۦۘ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ (-918244866)) {
                                        case -1982544313:
                                            str3 = i != 0 ? "ۤۨۨۘۙ۠ۢ۫ۢۜۗ۠ۗۥۧۖۘۤۦۧۘۡ۠ۖۚۥۙۦۗ۫ۜۘۛۤۜ۬ۘۥۡ۟ۙۡۘۛۜۥۘ" : "۠ۙۥۢۢۦۘۤۡۢۘۨۦۘ۠۠ۨۦۘۖۛۘ۫ۚ۬ۙۙۨ۫۠ۡۘۘۘۛۚۦۚۡۘ۠ۛۡ۟ۛۗۡۘۢۗۧ۟ۦۛ۟ۦۙ";
                                            break;
                                        case -1381589633:
                                            str2 = "۬ۘۙ۟ۦۥۖۦۥۘۥۗ۠ۘۦۨۚۗۡۡ۠ۨۘۚ۫ۡۡۗۖۘۤۚۖۨۤۜۙۛۦۘ۫ۧ۬۠ۤۜۘۖۙۖۨۗۛ";
                                            break;
                                        case -629975874:
                                            str2 = "ۙۨۢۗۛۤۧۤ۠ۧۥۤۡۘۥ۟ۗۤ۫ۖۘۜ۬ۤ۟ۡۥۜۜۖۘۚۨۘۧۘۨۛۖ۟۠ۖۙۜۦۧۨۖ۟ۦۘۙ۫ۖۘ";
                                            break;
                                        case 1670220022:
                                            str3 = "ۛۖۧۘ۫۫ۗۦۥۗۤۘۘۧۗ۠۬ۜۢۦ۬ۤۗ۠ۡۘ۫ۛۗۤ۠۫ۘۤۛۡۥۦ";
                                            break;
                                    }
                                }
                                break;
                            case 369494541:
                                str2 = "۬۬ۙ۠۟ۦۘ۬ۧۢ۬ۨ۠۟ۨ۫ۛۛۜۘ۫ۧۨۦۖۨۚۜۡۘۛۨ۠";
                                break;
                            case 810045947:
                                str = "ۛۗۘۘۧۧۘۦۥ۬۠ۙۢۘۨۗۘۚۛۨۜۧۘ۬۠ۨۧۤۗۥۦۘ";
                                continue;
                            case 1710622476:
                                str = "ۦ۠۟۟۟ۡۘۗۗۚۙ۟ۧۗۘ۠۟ۨۦ۟ۙۧۤۖۦۗ۟ۘ۟ۧ۫";
                                continue;
                        }
                    }
                    break;
                case -116993218:
                    c5.OooO0O0(getApplication(), R.string.response_data_null);
                    str = "ۗۥۖۘۨۘ۠۟۬ۤۡۖۛۢۘۧۘۚۚ۟ۖۦۨۘۢۧۨۜ۬ۜۘۜۦۜ";
                    break;
                case 617094183:
                    OooOooO();
                    str = "ۚۜۥۘۜۥۤۡۡ۬ۗۡۖۙۧۘ۠ۙۢۧۙ۠ۘ۟ۛ۟ۖ۬ۤۘۡ۟ۜۡ۟ۜۘ";
                    break;
                case 680717542:
                    String str4 = "ۗۚۗۚۗۨۙۧۤۦۡۖۨۜۘ۠ۥۧۢ۟ۜۙۡۡۘۜۘۘۘۢ۬ۥۘۤۘ۟ۡ۬ۖۘۢۚۖۨۜ۠";
                    while (true) {
                        switch (str4.hashCode() ^ (-1121142496)) {
                            case -1517899717:
                                str4 = "ۛۗۗۗۙۥۘ۠ۖۚ۬ۖۛۤۨ۠ۤۦ۫ۤۧۗۦۖۚۦۥۡۛۗۘ";
                                break;
                            case -531316838:
                                str = "ۜۚۚۥۘۥۘۗۢۙۗ۠ۛۜۛ۟ۙۖۘۛۥۧ۬۟۬ۚ۫ۡۘۡۜ۠۫ۡۨۜۢ۟ۛ۬ۛۡۘۡۘ۠ۢۛۤ۠ۡۨۢۢۤۨ";
                                continue;
                            case 1848325101:
                                str = "ۚ۠ۦۘۦۨۙۜۛۦۖۧۛۜۡۘۙۧۦۘۚۚ۬ۡۧۚۖۗۜۜۨۥۡ۫ۧ۬ۥۤۗۡ۬ۡۨۘۗۧۗۜ۬ۗ";
                                continue;
                            case 1930104937:
                                String str5 = "ۘۗۦۚۥۘۥۜ۬ۦۚۘۘۙ۠ۙۨۚۦۘۚۤۡۘۡ۫۟ۧۖۧۘ۠ۗۚۧ۟ۦ۟۠ۥۚ۟ۗ۬۠ۢۛۘۘۡۨۘۛۘ۠ۢۙۨ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-88198746)) {
                                        case -2086511938:
                                            str5 = i != 100 ? "۬ۤ۠۫ۙۖۘۢۧۘۘۤۚ۬ۥۘۜۘۡۛۤۥۖۗۛۗۦۘۨۗۨۢۛۜ" : "ۥۙۛۨۜۦۘۙۙۡۚ۟ۖۨۦ۬ۧۥۙۘ۫۠ۨۨۘۛ۠۟ۘۦ۠ۜ۟ۡ۟ۛۙۤۛۙۘۤۚ۬ۤۡۢۡۘۘۡۖۖۜ۬ۘ";
                                            break;
                                        case -1547803087:
                                            str4 = "ۖ۠ۙۗۙۘ۠۠ۗ۬ۖۖۘ۠۬ۗ۟ۡۥۘۥۨۗ۠ۗ۟ۛۡۥۧۡۛۛۘۜۘ۟ۢۗۜۗۦۢۦۗۧۥ۠۬ۧۜۘ۬ۢۜۘ۬۟ۢ";
                                            break;
                                        case -48558726:
                                            str5 = "ۧ۠ۘۘ۫۬ۨۘۢۤۡۘ۟ۧۡۘۡ۬ۖۘۡۧۙ۟ۥۧۨۡۥۜۚۥ۬ۤۤۤۤۘۧۨۖۘۡۢۥ۫ۙۚۗ۫ۙ۫ۡۡۘۦۜۦۘۤۖۡ";
                                            break;
                                        case 153716482:
                                            str4 = "ۦۤۡۘۖ۠ۜۗۙۧۧ۠ۜۘۡۛ۬ۙۘۧۜۚۙۨۨۗۗۨۛ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1102906363:
                    Oooo0oo();
                    str = "۟۬ۜۦۡ۬ۙۘۥۘۚۤۥۘ۠ۨ۬ۘۜ۠ۚۥۦۚۘ۫ۚۜۘۥۛۜۘ";
                    break;
                case 1394073136:
                    str = "۠ۗۜۡۤ۫۫ۚ۠ۨۡۗۨۖۘۡ۫ۖۜۧۘۖۦۡۘ۟۫ۡۘ۟ۢۘۙۗ۫ۗۧ۫ۗۙۜۤۛۘۘ";
                    break;
                case 1438860224:
                    String str6 = "ۤۥۛۦ۟ۘۘۨ۬ۙۡۤۦۘ۠۠ۤ۫ۧۥۢۜۤ۫۠ۨ۠ۧۘۘ۠۬ۜۧۛۥۜۧۦۘۛۧ۬۫۫۫ۙۗۥۘۙۜۡ";
                    while (true) {
                        switch (str6.hashCode() ^ 1072271088) {
                            case -1666943232:
                                str6 = "ۗۛۦۨۙۦۤۨ۬۫ۨ۫ۖۢۥۙ۬ۨۖ۠ۧۦۥۖۜۛۘ۟ۦۡۘۗۨۨۘۗۨۗ۬ۦۤۗۢۧ۠ۦۤۧۥۜ";
                                break;
                            case 325002737:
                                str = "ۘۗۛۧۗۛۖ۬۫ۨۥۤۗ۟ۘۘۘ۬ۥۡ۟ۥ۠۠ۚ۬۟ۘ۟ۜۦۡۨ۟ۨ۬ۗۘۜۙۖۖ۟ۘۜۜۚۥۜ";
                                continue;
                            case 1498671199:
                                str = "۠ۙۤ۫ۢ۫ۧۦۘۜ۫۠۠ۚۡۘۢۜۥۘۦۥۥۘۦۡۥۘۗۜۥۘۨۖۖۦۜۨۘ۠ۡۥۤۥ۟ۦۢ";
                                continue;
                            case 2136740200:
                                String str7 = "ۨۨۛۚ۠ۦۘۗۧۤۗ۫ۦ۫ۦۖ۟ۙۤۙ۟۫ۦۜۗ۠ۖۗ۠ۖۦۙۨۜۚۜۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-170595364)) {
                                        case -935775945:
                                            str6 = "۫ۥۨۚ۠ۤۙۚۨ۠ۡۨۢ۫۟۠ۛۥۛۙ۫ۤۛۜۘۘ۬ۛۚۜۥۘ۠۬ۦۜۤۡۘ۠ۘۗ۠۫۠ۛۚۙۢۖ۠";
                                            break;
                                        case -606143475:
                                            str6 = "۫۟ۚۗۛۜ۫ۨۗۡۜۤۦۧۥۥۜۛ۠ۥۡۗۚۧ۬ۦۗۜ۬ۛ۠ۤ۬ۜۘۧ۫ۗۥۘۥۘ۬ۙ۠ۥۦۘ";
                                            break;
                                        case -516184024:
                                            str7 = oooo0 == null ? "۫ۛۦۘۢۗۨۘۢۢۨۜۚۨ۬ۘۗۢۗۢۘۧۙۦۖۥۧ۬ۧۖۖ" : "ۦۥۘۘۨ۫ۨۘۛۤۘۦۙۚۥۡۘ۬ۡۙۤۨۦۦۦۛۜۙۡ۠ۢۦ";
                                            break;
                                        case 1441859184:
                                            str7 = "۟۫۬ۤ۫ۛۚ۬ۤۙۜۥۘۜ۬ۢۙۡۘۘۢ۠ۜۜۗۖۘۨۨۦۘۖۨۥۘۘ۠ۢۘۦ۟ۤۖۦۘۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1465544264:
                    String str8 = "ۖۚۘۗۦۧۜۦۥۖ۠ۜۘۖۜۧۥۜۥۜۧۦۖۦۦۗۡۘۡۗۨۦۥۧۘۨۚۖۨۤ۠ۧۛ۟";
                    while (true) {
                        switch (str8.hashCode() ^ (-992231541)) {
                            case -1809318736:
                                str = "ۜۗۥۘۙ۬۬ۦۢۛۥۛۢ۟ۦۙۜ۠ۙۜۧ۫ۢۚۘۘۛ۬ۗ۟ۛۚۤۖۙ۫ۘۘۘۚ۫ۚ۟ۨۤۘۦۘ۬ۦ";
                                continue;
                            case -1614257628:
                                str8 = "ۚۗۢۚ۟ۖۘۧۡ۠۠ۗۜۦۨ۠ۚۜۛۢ۠ۛۘ۟ۘۘۤۤۖۜۧۡۦۡ۟ۛۗۙ۠ۧۛۡۗۜۚۙۧۥۜۨۦۖۧۙۚۤ";
                                break;
                            case -615246407:
                                String str9 = "ۤۨۡۛۖۡۘ۟ۜ۬۠ۖۨۘۘ۫۟ۧۤۥۚ۬ۧ۫ۗۡ۫ۘۗۢ۬۠۠۫ۢ۫۠ۚ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-542871524)) {
                                        case -990585495:
                                            str8 = "۬ۛۤۘ۫ۢۦۛ۠ۨۥۦۘۙ۬ۘۘۘۦۢۛۜۛۛ۬ۘۚۛۦۗ۫ۢۖۘۚۤۢۘۘۙ۠ۢۧۗۗۢۡۘ۫ۡ۟";
                                            break;
                                        case -222524666:
                                            str8 = "ۨۦ۫۫ۙۦۖۨۜۘۤۧۨۙۢ۟ۘۧۦۘ۠ۡۥۛۛ۬ۛۦۗ۟ۢ۫";
                                            break;
                                        case 437070496:
                                            str9 = i != 1 ? "ۚۗۦۥۦۖ۠ۙۚۖۘۘۘۡ۠ۨۛ۫ۖۜ۠ۛۡۜۦۚۗۨۘۦۖۧ" : "۬ۡۡۘۗۥ۫۟ۙۗۖۛ۠ۗۜۥۗۖۢۜۘۘ۫ۥۖۚ۠۫۫۟ۜ";
                                            break;
                                        case 614721438:
                                            str9 = "ۗ۠ۨ۬ۗۛۧۧۖ۠ۜۧۢۥۦۘۘۡۡۘۢۢۨۘۜۖۨۢ۟ۜۛۘۖۘۤۢۖۧۨۛۖۘۚ۬ۨۚۧۤۡۘۡۜ۬";
                                            break;
                                    }
                                }
                                break;
                            case 413832565:
                                str = "ۛۡۘۘۙۜۖۙ۬ۦ۟ۘۧۨۛۦۘۢۚۡۥۦۢ۟ۦۥۘۥۚۙۚ۬۬ۦ۠ۖۘۚۘۤ";
                                continue;
                        }
                    }
                    break;
                case 1845533447:
                    String str10 = "ۚۚۗ۫ۚۥۚ۟ۦۧۜۘ۬ۤۜۙۚۨۤۤۙۡۜۘۨ۟ۨۘۙۡۢ۠ۨۥۘۧ۟ۢۜ۬ۡۘۘ۠ۥۘۤۦۙۜۨۚ";
                    while (true) {
                        switch (str10.hashCode() ^ (-1222634033)) {
                            case -2074335887:
                                str10 = "ۢۚۢۡۨۖۘۘۦۡۚۘۥۖۤۨۜۗۤۘۖۡۜۙۥۘۛۥۜۘۗۧۖۘ";
                                break;
                            case -1910187272:
                                str = "۟ۜۘۛۘ۟ۚۘۡۢ۫ۤۨۤۤ۟ۗ۬ۤۛۦۘۡۢۨۘۖۜۨۤ۫ۨ۟ۘۢۧۢ۠ۡ۫ۙۢۙۖۘ";
                                continue;
                            case -328155238:
                                str = "ۜۦ۫ۨۛۨۦۘۖ۟ۚۜۘۖ۫ۦۘۖۗۘۘ۬ۖۧۤۧۥۨۙۦۦۦ۫";
                                continue;
                            case 1989171634:
                                String str11 = "ۧۛۦۘۜۛۙۚ۫ۗۡۡۖۘۘۚۛ۟ۤۥۘ۟ۖۗ۫۟۟ۙ۫ۤۚۤ";
                                while (true) {
                                    switch (str11.hashCode() ^ (-180869266)) {
                                        case -914133894:
                                            str11 = i != -1 ? "ۚۥۨۘ۠ۢ۠ۙۚۡۘۥۛۨ۠ۢۛۨ۫ۘۙۜ۫۠ۙۖ۬ۡۖۘۘۜۙۚ۫۬۟ۗۥۘ" : "ۧۧۡۢۚۨۚ۠ۙۗ۫ۤۛ۬ۡۘۖۜۗۧۤ۠ۦۛۜۦۘۗۦۨ";
                                            break;
                                        case -156112280:
                                            str10 = "۬ۦۖۡ۫ۤ۫۬ۗۗۢ۠ۥۗۡ۬۫ۗۨ۬ۥۨ۬ۤۚۥۡۘۧۛۧ۠ۡۦۘۢۨۜ";
                                            break;
                                        case 959621249:
                                            str10 = "ۢۗۦۘ۠۫۟۠ۜۜۘۢۘۢۨ۬ۧۧۢۚ۟ۙۦ۫ۜۨۘ۟ۛۖۨ۠ۨۘ۠ۥۖ۟۟۫ۥۛ۠ۧ۠ۘ۫ۙۢۡ۟ۦ۫ۘ۠ۡۤۙ";
                                            break;
                                        case 1345328094:
                                            str11 = "ۚۗ۠ۚۡۧۤ۠ۨۘۛ۬ۢۡۤۦۤ۟ۚ۫ۢۖۗۖۡ۬۟ۜۘۜ۫۠۠۫ۚۥۖۘۤ۫ۜۨۖ۟";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1922843680:
                    Oooo0OO();
                    str = "ۚۡ۫ۦۗ۫ۧۖۘۤۥ۫ۦۙۙۘۢۥۘۚ۬ۨۘۢۙ۠ۗۡ۠ۨ۫۟";
                    break;
                case 2124847502:
                    i = oooo0.OooO00o;
                    str = "۠ۚۤۤۦۜۥۘۨۘۤۛۚۢۗۘ۠ۤۛۡۦۛۥۗۛۛۡۤۜۛۦۤ۠ۘۘۘۚۥۘۖۨۢۖ۠ۨۛۖۙۜۤۙۙۨۥۘۛۙۦ";
                    break;
            }
        }
    }

    private void Oooo0OO() {
        String str = "۟ۦۗۡۖۨۡۧۖۤۡۥۧ۟ۥ۟۫ۡ۠۠ۧۢ۫۬ۗۨۨۘۛۥ۟ۘ۟۟۟ۦۤۧۗۛۧۜۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 336) ^ 838) ^ 542) ^ (-237388745)) {
                case -345645731:
                    y8.OooO0O0(this);
                    str = "ۚۦۖۘ۠۠ۚۧۤ۠۫۟ۤۦۡۙۜۛۧۦ۠ۨۘۧۨۧۛۧ۫۫ۢ۫ۜۖۚ۟ۗ۠ۛ۟ۘۧۜۦ";
                    break;
                case -222412500:
                    String str2 = "ۘۦۤۧۙۥۧۛۧۚۛۥۘۗۖ۠ۛۖۧۤۖ۬ۦۦۢ۟ۡۘۨۛۤ";
                    while (true) {
                        switch (str2.hashCode() ^ 1112520817) {
                            case -1206542455:
                                String str3 = "۫۟ۘ۬ۚۙۜۚۘۘۜۛۘۥۦ۫ۜۛۗ۫۬ۜ۬۠۟ۦۗۡۜۜۘ۬۟ۡۘ۫ۧۙۖۛۢۦۤۨ۟۟ۥۘۡۤ۬";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1941933537)) {
                                        case -879450784:
                                            str2 = "ۜ۟۬ۜۡۜۨۙۦۥۡۘۥۨۘۘۛۛۧۛۚ۠ۦۘۘ۠ۙۦۢۦۡۘۘۧۥۡ۫ۚۧۜۨۘۘۢۤۦۚۤۖۦ۠";
                                            break;
                                        case -578089123:
                                            str3 = "ۤ۫ۛ۫ۡۘۘ۬۫ۚ۫ۥۘۢۥۢ۟۟ۖۨۡۨ۟ۖۜۡۥ۫۬ۘ";
                                            break;
                                        case -226967130:
                                            str2 = "ۥ۟ۡۥۜۦۚۜۗۘۥۗۧۨۥۘۥۥۡۜ۫ۘۘۢۚۧۢۢۜۘۤ۫ۛ۬ۚۗۛۨۗۡۦۜۦۛ۬ۚۥۘۘۥۢۨۘ";
                                            break;
                                        case 1690611215:
                                            str3 = !qh.OooO0O0().OooO0Oo() ? "۬ۛۦۘۜۜۧ۬ۥۤۢۗۥۘ۟ۜۛۢۦۘۘۖۖ۬ۡۦۗۙۦۥۘۚۤۧ" : "ۖ۠ۖۦ۟ۘۘۢۚۨۖۤۙۡۥۖۖۡۜۘۥۛۖۘۥۖۥۘۙۖۡۘۛ۬ۡۘۡۥۨۘۡۖۦ۟ۙۢۤۚۜۘ۬ۗۦۤۚۨۘ۬ۥۜۘۦۦۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -501334847:
                                str = "۟ۨۢ۟ۥۦ۫ۜۦۚۤۡۨ۬ۛۘۢۜۚۦۗ۫ۛۙۥۖۜۙۙۥۘۢ۠ۛۦۦۡۥۦۤۜۧۜۘۛۗۛۙۗۥۘۢۚۜ۬ۜۧۘ";
                                continue;
                            case 553728214:
                                str = "۬۟ۥ۠ۜۖۥ۟ۤۦۤۘۘۢۖۥۘۛۚۜۛۨۜۧۘۥۖۜۘۚۛۡ";
                                continue;
                            case 1849457616:
                                str2 = "ۨۗۚ۫ۡۨۡۛۨۘۨۡ۠ۧۖۨۙۜۡۘۧ۫ۥۘ۠۬۟ۙۡۖۤۥ";
                                break;
                        }
                    }
                    break;
                case 86163798:
                    Log.d("XJL_AD_TAG", "adview hide");
                    str = "ۨۙۜۘ۬ۧ۟۬ۡ۫۬۬ۡۘۤۦۡۜۘۥۘۖ۫ۥۨۢۦ۬ۡۥۗۨۤۧۦ۬ۙۡۗۥۜ۬ۧ۟ۚۢۥۜۘ۫ۘۨۘ";
                    break;
                case 676339788:
                    finish();
                    str = "ۨۧۨۙۗۥۢۧۧۙۚۖ۬۠ۦۦ۟ۡۘۤۥۧۘۖ۠ۥۘ۟۬ۜۡۖۘۘۢ۬ۛ۬۟۬ۚۜ۬۫ۦۗ";
                    break;
                case 754919793:
                    Oooo0o();
                    str = "ۥۙۤۙۜ۫ۧۨۖۙ۬ۘۘۧۜۜۘ۫ۦۨۘۖ۠ۥۘۘ۟ۘۥ۫ۙ۫۫ۦۘۘۧۥۘۢۜۙۜۙۚۤۙۖ";
                    break;
                case 985945307:
                    str = "ۨۧۨۙۗۥۢۧۧۙۚۖ۬۠ۦۦ۟ۡۘۤۥۧۘۖ۠ۥۘ۟۬ۜۡۖۘۘۢ۬ۛ۬۟۬ۚۜ۬۫ۦۗ";
                    break;
                case 1114030497:
                    return;
                case 1380312733:
                    str = "ۧۙۗۦ۫۠ۙۢۜۛۙۖۘۤۥ۟۬ۡۚۘۘ۠۟ۜۡۜۢۚۗ۠۬ۖ۫۬ۘۧۖ۬ۜۘۗۙۢۧۥۡۧۦۖ";
                    break;
                case 1537444576:
                    Log.d("XJL_AD_TAG1", "adview show");
                    str = "ۤ۠ۙۛ۠ۤۚۨۦۗ۫ۗ۬ۖۛۢ۟ۥۘ۟ۖ۫ۥۧ۠ۘۙۡۦۢۜۘۖ۫۟۫ۖۚۢۢۧ۟۠ۗ";
                    break;
            }
        }
    }

    private void Oooo0o() {
        String str = "ۤۧۗۤۢۢۢۢۙۡۖۦۘۚ۟ۨۦۢۦۘ۫ۘۖۘۛۖۘۦۡ۬ۡۛ۠ۨۧۘ۫ۥۖۘۦ۟ۘۘ۬ۥ۫ۘۖۨۘۙۚ۠";
        while (true) {
            switch ((((str.hashCode() ^ 189) ^ 717) ^ UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE) ^ (-617563326)) {
                case -1927954519:
                    str = "ۗۖۖۥ۫ۧ۬۫ۘۚ۠ۙۦۜ۟ۖۡ۠۠ۛۘ۫ۜۧۚۘۘ۬ۙۜۘۧۢ۠۬ۦۨۘۙۛۥۘۛۥۖۘۛۜ۠ۗۛ۬";
                    break;
                case -1059667678:
                    return;
                case 1062849277:
                    this.Ooooooo.OooOO0(1, this.o00O0O);
                    str = "ۨ۟ۦۢۡ۬ۥۥۡۘۦۘۨۘۢۡۡۘۨ۠۠ۦۢۥۘۧ۠ۧ۟۫ۡۘ۫ۤۘۘ";
                    break;
            }
        }
    }

    private void Oooo0o0() {
        FrameLayout frameLayout = null;
        String str = "۬ۧۥۘۢ۟ۡۘۤ۫ۖۘۤۖۦۛ۬ۧۜۖۚ۠ۦ۠ۤۛۛۨۗ۬ۧۙۛۖۡ۟ۘۧۖ۟ۡۧۗ۫ۦۡۘۥ";
        while (true) {
            switch ((((str.hashCode() ^ 901) ^ 47) ^ 485) ^ (-459350978)) {
                case -748885388:
                    return;
                case -267349612:
                    str = "ۜۙ۠ۙ۬ۧۜۛۦۡۘۛ۠ۤۡۜۢۛ۠ۨۢ۬ۢۜۘ۬ۗۡ۟ۙ۫ۡۗۧۘۦ۬ۚۢۖۘ۬ۧۛ";
                    break;
                case 488515513:
                    Log.d("XJL_AD_TAG", "adview loadBannerForYunJing ");
                    str = "ۢ۠ۡۥۡۚ۟۫ۥۘۜۤۜۢۦۜ۬ۜۡ۬ۢۜۛۗۨ۟ۘۨۥۘ";
                    break;
                case 639922397:
                    ih.OooO0Oo().OooO0O0(this, frameLayout, new OooO0o(this));
                    str = "۫ۗۜۘۡۗۦۘۥۖۛۛۢۤۥۙۖۧۥۧۘۢ۫ۨۜ۬ۤۗۗۢۚۢۧ۬ۖۗۛۡۖۢۘۜۛۧۨۘۨۦ۫ۖۥ۬ۦ۠ۡۛۖۦۘ";
                    break;
                case 960437816:
                    str = "ۙۤۗۡ۠ۜ۟ۨۘۘۨۙۖۗۥۨ۬ۥۡۘۜ۟ۗۧ۬ۖۘۦۛۖۘۙۢۨ";
                    frameLayout = (FrameLayout) findViewById(R.id.flSplashAd);
                    break;
            }
        }
    }

    private void Oooo0oO() {
        String str = "۟ۗۧۘۖۗۘۨۘۘۗۤۥ۟ۙ۬ۖۨۘ۬۫ۡۜ۟ۜۘ۫۫ۦۘۧ۠ۥۘۡۚۧۦۧۡۘۦۧ۫ۘۤۜۘۘۤۤ";
        int i = 0;
        String str2 = null;
        int i2 = 0;
        int length = 0;
        String[] strArr = null;
        ArrayList arrayList = null;
        while (true) {
            switch ((((str.hashCode() ^ 39) ^ 413) ^ 232) ^ 381061400) {
                case -2013395941:
                    arrayList.add(str2);
                    str = "ۨ۟۬ۘۧۥۨ۠ۦۘۘۦۛۛۧ۠ۘۖ۫ۡۛۧۖ۬ۨۤۙۤۥۥۘۨۚۛۛۨۦۘ۬ۧ۠ۘۧۨۨۨ۬۠ۗۡۘۘۛۛۙۗۘ";
                    break;
                case -1958034222:
                    String str3 = "ۡ۠ۥۥۛۗۦۤۜۖۦ۬ۜۡۡۘ۬ۨۡۢ۟۟ۛۨ۠ۜۘۖۘ۫ۥۥۢۛ۠ۛۥ۬ۙ۟ۥۖۚۚ۠ۚۙۥۙۨۦۖۥ۫ۥ";
                    while (true) {
                        switch (str3.hashCode() ^ (-1306477524)) {
                            case -1604708848:
                                String str4 = "ۘۛۦ۬ۛۢۤۨۘۘۥۗۖۚۤۜۜۜۦ۬۬ۗۗۧۜ۟۫ۖۨۨۖۚۗۗۛۤۡۦۜۚۛۛۧۥ۫ۡۘ۬ۚۘۘۘۗۤۥۗۖ";
                                while (true) {
                                    switch (str4.hashCode() ^ 345203292) {
                                        case -1860627380:
                                            str4 = i2 < length ? "ۚۧۚۥ۫ۚۖ۟ۗۛۧۦۘۨۜۤۘۘۨۨ۬۠۠ۜۡۜۜۘۨۤۨ" : "ۗۙۖۚۗۥۘۡۙۜۘۖ۟ۨۤۗۥۤۡۛ۠۟ۤ۬ۜۨۦۘۘۦۖۛۗۛ۫ۥۦۙۖۥۢۤۡ";
                                            break;
                                        case -681879087:
                                            str3 = "ۗۧۥۙۚ۟ۙۨۢۙۜۡۖۥۥۘ۬۫ۥۢۥۡۖۨۜۖۗۡۘۙۨۜۘۢۡۘۘۥ۟ۡۘ";
                                            break;
                                        case -518953784:
                                            str3 = "۬ۖۜۘ۬ۧۨۘۡ۬۫۠ۡۨۘۜۚۖۘۧۦۥۙ۠ۥۘۧۛۖۨۚۜۜۨۚۖۦۘۜۘۜ";
                                            break;
                                        case -503588474:
                                            str4 = "ۗۤۥۙۘۖ۟۫۫۟۬ۗ۟۠۬ۧ۠ۦۡۙۤۜۦۛۙۗۖۘۦ۟ۨۘۥۖ۠۫ۥۜ";
                                            break;
                                    }
                                }
                                break;
                            case -932998245:
                                str = "۠ۙۜۨۡ۬ۧ۠۠۫ۥ۬۠ۨۖۨۘۨۗۜۥۡۦۡۢۘۢۢۡۧۥۡ۠ۥۧۨۙۤۘۘۚ۠ۡ";
                                continue;
                            case -141825469:
                                str3 = "۟ۙ۬۫ۙ۠۬ۦۢۥۙۡۘۨۨۤ۬ۙۥۘۤ۠ۤۚۥۘۦ۬ۨۨ۬ۧ";
                                break;
                            case 1693935890:
                                str = "ۦۨۧۘ۬ۗۧ۟ۦ۠ۦۢۢۢۚۗۖ۬ۖۘ۠۟ۖۚۥۜۘۧۖ۠ۗۙ۟ۦۨۡ۠۬ۤۙۨۛۘۗ";
                                continue;
                        }
                    }
                    break;
                case -1922603849:
                    OooOoOO();
                    str = "۠ۛۥۘۤۖۖۘۧۙۜ۟۫۠ۙۢ۠ۚ۫ۨۨۢ۟۫ۛۛۖۙ۫ۥۦۘ";
                    break;
                case -1866561413:
                    str2 = strArr[i2];
                    str = "ۧۤۘۡۥۤۤۜۨۘۚۤۘ۟ۛۦۦۖۥۘۨۧۛۡ۬ۧ۫ۥ۫ۜۤ۠";
                    break;
                case -1428219977:
                    return;
                case -1371432198:
                    str = "ۗۛۖۚۧۜۨۡ۬ۥۤۤۛ۟ۗۢۜۢۙۚۜۤۥۙۨۙۙۛ۬";
                    break;
                case -1104587581:
                    i = i2 + 1;
                    str = "۟ۚۨ۠ۢۤۡۜۖۦۡۘۖۨۙۧ۟ۥۖ۟۟ۨۗۖۘۥ۠۠۫ۦۥ";
                    break;
                case -949117257:
                    str = "ۨۖۜۘۦ۟ۡۘۤ۬۟ۦۦۥ۫ۨۦۘۤ۬ۧۙۘۥۘۚۤۜۘۗۥۨۙۙۦۘۙۦۙۙۖ۫۬۠۫۫ۖۦ۫ۘۗۚۖۛۧۘۧ";
                    break;
                case -674468091:
                    str = "ۘ۬ۚۗ۬۫ۢ۠ۧ۫ۦۗۦ۠ۘۘۨۡۨۘ۬ۜۥۥۤۖۡۡۨۘۜۙۜ۠۬۫ۗ۬ۤۢ۫ۢۢۘۥ";
                    strArr = this.OooooOO;
                    break;
                case -615563803:
                    str = "ۚ۟ۜۘۚۖۨۘۗۡۨۛۖۨۚ۠۟۬ۢۘۖۥ۠ۦۛۡ۫ۜۧۢۡ۟ۦۨۘۙۡۜۘ";
                    i2 = i;
                    break;
                case -351837373:
                    String str5 = "ۤۢۜ۟ۜ۬ۙ۬ۖۘۧۚۙ۟ۥۡۘۢۖۖۧۨۚۧ۬ۥۙۡۡۖۥۡۚۖۥۘ۠۫ۜ۟ۨۨۘۡۛۥ۠ۡۨۘۥۧۖ۟ۛ۟ۢۤۦ";
                    while (true) {
                        switch (str5.hashCode() ^ 1527123854) {
                            case -521606408:
                                str = "ۢۚۥۤۧۨۘۘ۬ۦ۠ۡۖۗۜۡۘ۠۠ۡۘۦۧ۠ۖۧ۟ۥ۫ۨۗۖۙ";
                                continue;
                            case -504466943:
                                String str6 = "ۛ۟ۙۚۡۥۥۖۘ۬ۖۡۘۜۗ۬۬ۙۛۥ۫ۗۖۜۘ۟ۢۚ۫۬۟ۚۧۧۢ۠ۙۗۖۧۧۛۢۙ۬ۤۖۥۘۜ۫ۙۢ۬ۘ";
                                while (true) {
                                    switch (str6.hashCode() ^ (-1284891541)) {
                                        case -756598565:
                                            str6 = "ۙۧۛۚ۬ۨۡۧۧۢۦۦ۫۠۬ۘۚۜۘۚۛ۠۠ۤ۬ۗۜۦۘ۠ۡۡۘ۟ۙۘۧۛۦ۫ۖۡۡ۬ۜۘ";
                                            break;
                                        case 1996960621:
                                            str5 = "ۗۧۢۧۖۧ۟ۦۖۘۚۗۨۘۘۨۘۖۡۡۨ۬ۥۘ۬ۗ۬ۨ۬ۡۘۚ۬ۢ۫ۖۖۜۥۦۘۡۗۜۙ۟ۘۢۡۦۘۜۢ۫ۥۙۡۖ۟۠";
                                            break;
                                        case 2049190252:
                                            str6 = arrayList.isEmpty() ? "۠ۡ۬ۙ۬ۜۘۥۤۙۖۚۜۨ۟ۤ۬ۢۥۘۡۖۢۧۨۘۘ۠۬۠۬۫ۤۡۤۖۤۘۘۗ۟ۜۘۦۢۢ" : "ۦۦۡۘۦ۟۟۠۠ۦۘۗۜۧۧ۠۫ۤۖۚۧۙۥ۬ۖ۫ۢۙۥۘۨۥۗۙۨ۠ۚۡۙۥۜۛۘۨۥۦۘۤ۟ۧ";
                                            break;
                                        case 2146786774:
                                            str5 = "۫ۛۜۢۡۗۡۨۖۘ۬ۜۗ۟ۘۡۚۦۘۘ۫ۘۦۙۢۥۘۡۖۛۧۨۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case 710362686:
                                str = "ۛ۫ۛۥ۠ۖۘ۬ۨۖۘۚۨۗۢۦۥۢۥۖۢۢ۠۟ۤۥۘۚۙۢۘۢۙۡۘۥۘۤۜۦۘ۫۫۫۟ۜ۫ۢۢۨۚۚ";
                                continue;
                            case 1561284879:
                                str5 = "ۛۧۢۤۡۨۘۦۧۥۙۜۥۘۖۜۦۦۨۨۗۦۖۘۖ۟۟ۨۦۨۖۘۚ";
                                break;
                        }
                    }
                    break;
                case -247715352:
                    ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), 1);
                    str = "۬ۘۖۘۙۡ۠ۦۦۖۥ۠ۖ۬ۥۘۘۘۤۥۛۥۖۥۖۘۧ۫۫۬۟ۦۤۢۖۘ۫ۥۦۘ۟ۢ۬ۚۤۡۘۘ۟ۚ۫ۨۧۘۗ۫۠ۖۦۜۘ";
                    break;
                case 448164613:
                    str = "ۗۛۖۚۧۜۨۡ۬ۥۤۤۛ۟ۗۢۜۢۙۚۜۤۥۙۨۙۙۛ۬";
                    i2 = 0;
                    break;
                case 461206921:
                    str = "ۢ۟ۜۘۡۜۨۘۚۚ۬ۘۧۜۘۙ۠ۘۖۥ۫ۛۗۥۘ۫ۙۖۘ۬ۦۥۜ۫ۦۚۧۜۘۜۥۗۡ۫ۧۘۖ۠ۥۜ۫۟ۙۜ";
                    arrayList = new ArrayList();
                    break;
                case 873603915:
                    str = "۬ۘۖۘۙۡ۠ۦۦۖۥ۠ۖ۬ۥۘۘۘۤۥۛۥۖۥۖۘۧ۫۫۬۟ۦۤۢۖۘ۫ۥۦۘ۟ۢ۬ۚۤۡۘۘ۟ۚ۫ۨۧۘۗ۫۠ۖۦۜۘ";
                    break;
                case 1503228487:
                    str = "۬ۥ۬۫ۢۙۢۥۨۘ۬ۢۜۘ۟ۤۗۗۜۛۡ۟ۘۘۢۖۦۥۘ۟ۖۡۘ";
                    length = strArr.length;
                    break;
                case 1691973433:
                    String str7 = "ۦۥۘۢۚۤۗۙۘۘۙ۟ۘۘ۬۟ۖۘۤ۫ۡۢ۫۫۟۟ۜۘ۠ۖۦۘ۬۬ۨۘ۬ۚۥۘ۠۟ۦ";
                    while (true) {
                        switch (str7.hashCode() ^ 1720817067) {
                            case -1031607439:
                                String str8 = "ۢۤۨۥۖۜۘۤ۫ۖۘۨۤۛۥ۫ۛۤ۟ۖۚ۟۠ۦۖ۠ۗۡۧۘۜۢۘۘ";
                                while (true) {
                                    switch (str8.hashCode() ^ (-476574076)) {
                                        case -1103672941:
                                            str7 = "ۤ۠ۥۘۥۤۧۙۛۙۜۤۧۥۡۦۥۛۘ۟ۢۡۦۤ۠۠ۨۥۢۛۡۘۤ۫ۖۘۗۘۘۘ";
                                            break;
                                        case 464465947:
                                            str8 = ContextCompat.checkSelfPermission(this, str2) != 0 ? "۟ۧۦ۟۠ۦۙۚۡۘۗۘ۫ۜۚۦ۟ۨۥۚۤۡۘ۠ۨۨ۬۟ۘۘۢۤۤۛۡۜۘۡۗ۫۫ۦۨۢۗۚۛۤۘۥۘۘۘ" : "ۛۛۦۢ۫۟ۢۢۗ۟ۥۤ۬ۗ۠ۜۦۨۘۦۡۖ۫ۦۡۥۨۘۛۖۡۘۗۦۤۨۜۜۘ";
                                            break;
                                        case 740369957:
                                            str7 = "ۛۛۡۗۡۘۥۖۘۢۖۨۘ۫۟ۡۘۚۨۡۘۥ۠ۨۘۥۜۦ۬ۖۜۜ۠ۨۘ۠ۜ۫ۦۘۦۘۛۚۜۘۧ۫ۘ";
                                            break;
                                        case 1543134978:
                                            str8 = "ۚۚۛۚۡۙۜۡۥۘۥ۫۬ۦ۠ۡۘ۬ۜۘۤۨۥۘۜۧۤۡۘۚ۟۫ۖۥۤۜۡ۬ۤۚ۬۬ۧۚ۟ۧۡۨۘ۬ۜۚۚۡۘۧ۟ۗ";
                                            break;
                                    }
                                }
                                break;
                            case 294428775:
                                str = "۠ۙۨۡۥۘۚۢۨۘۤ۠۬ۜۡۢ۬ۧ۠۬ۥۥۖۛۥۘۥۜ۟ۨۚۡۘۘۜۡۘۡ۫ۢۗۚ۠۬ۨ۫۟ۦۨۙۖۨ";
                                continue;
                            case 417524413:
                                str = "ۨ۟۬ۘۧۥۨ۠ۦۘۘۦۛۛۧ۠ۘۖ۫ۡۛۧۖ۬ۨۤۙۤۥۥۘۨۚۛۛۨۦۘ۬ۧ۠ۘۧۨۨۨ۬۠ۗۡۘۘۛۛۙۗۘ";
                                continue;
                            case 1503592337:
                                str7 = "۠ۥ۟ۘۛۙۙۨۘ۫۠ۨۘۦۧۖ۠ۘ۠ۨۤۥۘۘ۟ۘۗۡۜۘۧۗ۟";
                                break;
                        }
                    }
                    break;
                case 1787666165:
                    str = "ۙۖ۠ۘۖۚۖۜ۬۬۠ۥۨۖۥۘۚۛ۬ۧۢۖۛۥ۟۟ۥۖۘ۫ۤۖۘ";
                    break;
            }
        }
    }

    private void Oooo0oo() {
        OooO00o oooO00o = null;
        String str = "ۜۘۦۛۙۨۘۧ۠ۗۢ۬ۡۘۢۨۧ۫ۢۦۘۗۘۡ۬ۡ۬۟ۡ۬ۦۜۙۦ۬ۥۢۤۖۘۙ۬۟ۢۥۚۦ۟ۤ۠ۛۥۘۖۖۦۘ۬ۧۨۘ";
        TextView textView = null;
        TextView textView2 = null;
        AlertDialog alertDialogOooO0o0 = null;
        while (true) {
            switch ((((str.hashCode() ^ 242) ^ 293) ^ 535) ^ 371145803) {
                case -985934366:
                    textView.setOnClickListener(new OooO0O0(this));
                    str = "ۨ۟ۙۖۨۘۘۚۘ۫ۖۚۜۘۡۛۦۤۜۢۚۖۘ۟۫ۡۘۤۜۚۖۡۚ";
                    break;
                case -435582718:
                    str = "ۖۚۖۘ۠ۖۖ۠ۙۥ۬ۙۤ۟ۖۜ۫ۦۤۦۙۛۗۚۢۖۘۘۦۙ۬ۖۚۡۘۤۘۢ";
                    textView = (TextView) alertDialogOooO0o0.findViewById(R.id.id_tv_setting);
                    break;
                case -275328070:
                    return;
                case 302632048:
                    str = "ۥۘۖۘۤۘۦ۟ۛۢۖۜ۫ۘۘۗۡۘۦۚۜۘۘۘۥ۠ۧ۫ۥۙۖۙ۫ۨۖۙۜۘ";
                    break;
                case 356636475:
                    textView2.setOnClickListener(new OooOO0O(this, alertDialogOooO0o0, oooO00o));
                    str = "ۗ۟ۖۘۖ۫ۖۦۙۨۘ۬ۗ۫ۨۡۘۥۧۡۙۜۗۤۚ۬۫ۥۘۚۢۧ";
                    break;
                case 455395428:
                    c5.OooO0o0(getApplicationContext(), "弹窗出问题");
                    str = "ۜۙۛۜۦ۬ۙۛۛۥۡۨۛۜۧۙۘۥۗۚۧۙ۬ۧۜۚۧ۠ۦۙۛۗۢۜۡۘ۫ۘۚۙۛۢ";
                    break;
                case 476720295:
                    alertDialogOooO0o0.show();
                    str = "ۦۗۖۘۗ۫ۘ۬ۢۖۘۥۥۗۢۥۙۙ۬ۧۖۗۛۛۦۨۗ۠ۖۧۜۛۘۧۖۘۦۡۖۘۛۜ۬۫ۛ۟۟ۤۡۘ۟۬ۘۜۗۜۘ۠ۚۖ";
                    break;
                case 831326063:
                    alertDialogOooO0o0.setCancelable(false);
                    str = "ۤۥۥۘ۬ۜۦۘۢۘۘۘ۠ۜ۠ۡۙۥۘ۠ۗ۬ۙۘۘۘۢۛۢ۠ۧۖۘۦ۠ۧۤۧۗۛۢۛ";
                    break;
                case 1106451166:
                    str = "ۜۙۛۜۦ۬ۙۛۛۥۡۨۛۜۧۙۘۥۗۚۧۙ۬ۧۜۚۧ۠ۦۙۛۗۢۜۡۘ۫ۘۚۙۛۢ";
                    break;
                case 1245953708:
                    alertDialogOooO0o0 = x9.OooO0O0().OooO0o0(this, R.layout.dialog_network_inspection, R.style.Theme_Dialog);
                    str = "۟ۦۡۧ۠ۛۘۜۢۦۚۜۘۦۤۘۙ۫ۦ۬ۤ۟ۘۖۡۘۘۗۧۧۗ۠";
                    break;
                case 1628318399:
                    String str2 = "ۖۡۙ۫۬ۗۢۨۛ۬ۦۦ۬۬ۧۗۘۨۖۥۥۜۘۧۜۖۘۧ۫ۡۘۦۜۛۜۧۘۧ۬ۜۥۥۚۜۡۘۘۜۙۥۘۢ۬ۖۚۘ۠";
                    while (true) {
                        switch (str2.hashCode() ^ (-504124479)) {
                            case -1174398593:
                                str = "ۢۗۗۜۚۦۘ۫ۚۜۘۡۧۦۢۢۡۘۚۦ۬ۖۦ۬ۜۙ۫ۚۗۧۡۙۡ۬ۨۜۘۢۥۘۘ۟ۙۗۛۙۙۛۘۤۛ۫";
                                continue;
                            case 10390782:
                                str2 = "ۥۖۥۛۖۘۡ۫ۘۘۙۨۨۛ۬ۡۜۛۥۘ۫۬ۥۖۙۘۘۧۗۛۦ۟۟ۚۛۘۤۦۘۙۧۥۘۡۗۦۖ۬ۡ۟ۤۤ";
                                break;
                            case 1005115258:
                                String str3 = "ۛۥۛۛ۟۟ۖۨ۠ۛۢۗ۬ۖۢ۟ۖۥۧۘۘۜ۬ۚۚ۬ۡۚ۬۠ۘۥۡ۠ۧ۟";
                                while (true) {
                                    switch (str3.hashCode() ^ (-548943173)) {
                                        case -810853440:
                                            str3 = "ۦۗ۬ۘۜۛۖۧ۬۬ۛۘ۬۬ۘۦۧۘۜۗۧۘۦۗۤۙۧۢۨۧۘۗۧۥۦۚۤۚۜ۟ۚۦۖۘۖۧۜۘ۟۟ۖ";
                                            break;
                                        case 19145011:
                                            str3 = v3.OooO().OooO0O0() instanceof SplashActivity ? "ۚۦۤۜۙۡۘۙۦۘ۬ۘۖۦۡۥۘۜ۫ۗۚ۬ۢۘۥ۟ۦۧۜۙۡۜۙۤۤۦۘۖۘۛ۬ۦۘۚۦۗۗ۬ۚۧ۬۫۟ۤۙۘۧۘ" : "۬ۤ۫ۛۦ۬ۤۜۧ۫ۥۡ۬۬ۢ۟ۗۛ۟ۡۧۗۦۗۢۨۖۛۘۘ";
                                            break;
                                        case 1927739118:
                                            str2 = "ۜ۬۫ۚۤۘۦۜۚ۟ۨۖۘۙ۠ۚۜ۬۫ۤۖۥۘ۟ۤۧۘۜ۬۟۫ۢۥ۠۫ۨۨۨۘۤۦۜۘۧۦ۠ۚۚۢۡۦ";
                                            break;
                                        case 1954109991:
                                            str2 = "ۨۢۙۦۗۙۤۥ۬ۙ۠ۛۚۥۘ۫ۢۦ۠ۜ۠۬ۛ۬۫۠ۘۨۙ۫۫ۙۘ۟ۖۜ";
                                            break;
                                    }
                                }
                                break;
                            case 1510627324:
                                str = "ۥۦۤۦۛ۠ۚ۠ۜۘ۫ۜۡۘۨۖ۠ۖۜۗ۟ۤۛۨ۫ۥۘ۟ۛۗ۫ۛ۟";
                                continue;
                        }
                    }
                    break;
                case 1791639483:
                    str = "ۢ۠۫ۤ۬۟ۧ۟۬ۖۤۜ۬۬ۡۚۦۘۘۦۜ۬ۖ۟ۥۛۖۘۢۘۜ۫ۗۨۡۛۦۘۦۖۘۘۡۗ۟";
                    textView2 = (TextView) alertDialogOooO0o0.findViewById(R.id.id_tv_reset);
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void OooO() {
        String str = "ۗۜۡۡ۠ۘۚۖۜۧۘ۫ۖۤۨۗۜ۟ۡۗۘۘۗۖۜۘۜۘۖۜۥۗۖ۠۬ۗۤۛ";
        while (true) {
            switch ((((str.hashCode() ^ 946) ^ 589) ^ 679) ^ (-109545098)) {
                case -1300727948:
                    ((qa) this.OooooO0).Oooo0O0().observe(this, new Observer() { // from class: z2.k9
                        @Override // androidx.lifecycle.Observer
                        public final void onChanged(Object obj) {
                            this.OooO00o.Oooo0O0((PhoneConfig) obj);
                        }
                    });
                    str = "ۜۗ۫ۜۨۢ۫۬۫ۛ۠ۚۖۖۧ۫ۥۧ۟۫ۜ۬۫ۛۢۗۢۨۧۛۤ۟ۙۜۨۘ۬۫ۦۖ۟ۡۘ";
                    break;
                case -827216133:
                    ((qa) this.OooooO0).Oooo0().observe(this, new Observer() { // from class: z2.l9
                        @Override // androidx.lifecycle.Observer
                        public final void onChanged(Object obj) {
                            this.OooO00o.Oooo00o((qa.Oooo0) obj);
                        }
                    });
                    str = "ۢۚۛۚۥۡۨۥۡۖۖۡۨۥۧ۫ۡۘۡۨۜۦۜۛۗۙۡۙۖۘۘ۬۬ۗۚۨۘۤۘۙۙ۟ۥۥ۫ۘۘۥۙۥ";
                    break;
                case -624847706:
                    str = "ۘ۠ۜۜۛۨۘۦۡۛۢۗۘ۫ۜۘۥۨۥۧۧۡۘۢۢۡۛۛۥ۠ۗۖۘ";
                    break;
                case 130506473:
                    this.Ooooooo = new rh(this, this.OooooOo);
                    str = "ۧ۠ۚۤۖۖۘۘۘۡۜۘۖۘ۠۫ۖۢۘۜۘۥۛۛۢۢۡۦۜۧۘۙۖۘۘ۫۬ۡۘۖ۫ۘۘ۫ۧۗ";
                    break;
                case 1384384181:
                    return;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public int OooO0oO() {
        String str = "ۚۧ۠ۥۡۜۤ۫۠ۘۚۘۘۤ۟۟ۨ۬ۦۘۜۥۙۡ۟ۦۦۧۤۖ۠ۖۘۥ۫ۢ۫ۚ۫ۘ۟ۢۘۜۡ";
        while (true) {
            switch ((((str.hashCode() ^ 167) ^ 114) ^ 862) ^ 463675418) {
                case -2100279236:
                    str = "ۡۖۜۘOۡۡ۬ۜۡۨ۬۟ۦۘۤۥۦۘۨۙ۬ۖ۠۠ۖۚۗۦۨۤ";
                    break;
                case 897821990:
                    return R.layout.activity_splash2;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public Class<qa> OooO0oo() {
        String str = "ۜۗۖۘۡۧۘۚۘ۬ۢۚۦۘۦۚۘۘۨۢۖۘۗۧۢۙۖۥۘۧۙۡۘ۠۠ۚۤۗ۟ۢۨۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 165) ^ 24) ^ 638) ^ 262829166) {
                case -1146522102:
                    str = "ۡۡۡ۬۫۫۟ۦۡۙۚۛۡۛۨۘۛۘ۠ۥۧ۬۟ۚۥۘۚ۟ۚۘۚۥۘۢ۫ۖۤۜۧۘ";
                    break;
                case 1267876475:
                    return qa.class;
            }
        }
    }

    public void OooOo() {
        OooO00o oooO00o = null;
        String str = "ۢۗۡۘۢۢ۬ۦۙ۫۬ۖۜۘۧۘۡۙۘ۬ۢۢ۟ۢ۫ۖۘۖ۬ۜۘۨۛۗۦۦۡ۟ۢۤۥۦۡۥۢۤ";
        OooO oooO = null;
        while (true) {
            switch ((((str.hashCode() ^ 161) ^ 765) ^ UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE) ^ (-1755690994)) {
                case -1134128311:
                    OooOo0o();
                    str = "ۤۦۧۥۚۦۘۧۜۨۘ۠ۜۘۡۜۚۦۦۧۘ۫ۙۖۘۥۗۥۢۖ۠ۢۧۤۚۙۡۘۜۤۦۘ۬ۙ۫ۚ۠۫ۚۘۙۚ۟ۢ۫ۜۜۘۖۧۥۘ";
                    break;
                case -780511870:
                    str = "ۗ۟ۘۘۛۧۥۘۛۜۘۘ۬۬ۨۘۥ۫ۡۘۡ۬ۜۖۥۜۘۢۤۧۢۦۜۘۘ۫ۘۘۤۧ۟ۤۜۘۨۧ۬ۜۚۦۘ۬ۨۥۨ۬ۥۛۥۧۘۖ۠ۜۘ";
                    break;
                case 201750655:
                    oooO.start();
                    str = "۠ۧۖۛۚ۬ۜ۠ۨۘ۬ۨۦۘۚۘۘۘ۟ۧ۟ۘۘۧۙۗۖ۠ۧۧۚ۫ۨ";
                    break;
                case 545734405:
                    this.ooOO = oooO;
                    str = "ۖۥۖۗۘ۟۫ۡۥۡۢۢ۬ۨۖۤۘۦۘ۬ۨۤۡۢۘۘۤۚۧۖۥۛ۟ۢۖۨۧۥۘۤۦۘۧۘ۟ۚۜۢۚۡ";
                    break;
                case 629005737:
                    return;
                case 1208111027:
                    oooO = new OooO(this, 8, oooO00o);
                    str = "ۜۤ۫ۦۙۙۛۤۦۥۖۙۘ۟ۖۚۙۖۘۙۛ۫۟ۙۢۖۖۦۘۜۗۛ";
                    break;
            }
        }
    }

    public void OooOoO() {
        int i = 0;
        try {
            PackageManager packageManager = getPackageManager();
            String packageName = getPackageName();
            int i2 = Build.VERSION.SDK_INT;
            String str = "ۛۚۡۗۙۙ۠ۧۤۤۚۚۦۢۧ۬ۘۖۘۨۥۨۖۚ۬ۦۚۗ۬ۥۤۨۥ۟ۜۗۧۦۥۥۘۗ۬ۡۡۗ۬ۧۜۖۨۢۧ";
            while (true) {
                switch (str.hashCode() ^ (-626339691)) {
                    case -1962455487:
                        String str2 = "ۥۧۛۘۤۡۘ۠ۚۢۙۤۖۜۥۚۤۜۙۘ۠ۨۘ۠ۗۥۘۚۗ۟ۗۦۨ۠ۥۜۘۛۥ۫ۜ۟ۖۛۘ۫۠ۥۤ۬ۤۤ";
                        while (true) {
                            switch (str2.hashCode() ^ 466963120) {
                                case -1012977950:
                                    str = "ۙ۠ۧ۠ۥۦۘۦۧۡۘۦۤۨۘ۟ۖۥۘ۟ۙۘۖۘ۫ۧۗ۬۠۫ۘۘۦۧۘۘ";
                                    continue;
                                case -793024560:
                                    str2 = i2 < 28 ? "ۘۛ۫ۙۧۢۗۥۘۜۙۗۘۨ۠ۘۚۖ۫ۙۛۘۧۘۘۥۜۖ۠ۢ۠ۥ۫ۥۡۙۛۡۙۛۡ۬ۨۗۗ۠ۛۚۖۤۥۜۘۧ۠۠" : "ۥ۠ۙۧ۟۬ۡۧۥۤۦۘۡۦۖۜ۬ۢۛۙۜۘۢۜۚۛۡۥۘۘ۬ۡۘۘۧۤ۫ۗۡۘۧۜۚۜۙۖۘ۟ۗۡ۫ۛۙ";
                                    break;
                                case -37856854:
                                    str = "۬ۘۧۘۨۧۧۖۘ۠۠ۚۜۛ۫ۤ۫ۚۗۥۛۜۘۜۢۥ۠ۚۜۗ۠ۙ";
                                    continue;
                                case 2053393720:
                                    str2 = "ۖۡۜۘۢۤ۠۬ۚ۠ۙۙۦۘۘۨۧۘ۠ۚۡۛۡۨۥۨۜۘۗۙۦ۟ۗۤۤ۟ۧۚ۟ۥۜۚۛۢۤۢۨۨۘۚۜۥ";
                                    break;
                            }
                        }
                        break;
                    case -176425373:
                        str = "ۥۤۖۘ۫ۤۚ۫ۢۨۘۡۡۤۙ۟ۙۧۧۨۤۗۜۦ۠ۘۘۥۦۡۘۜۜۨۤۢۜۘۢ۫ۨ۠ۡۜۘۧ۫۬";
                        break;
                    case -82574384:
                        SigningInfo signingInfo = packageManager.getPackageInfo(packageName, 134217728).signingInfo;
                        String str3 = "ۧۥۦۘۥۗۛ۬ۜۘۙۨۛۜۧۘۥۨۚۦۨۥۘۥۧۦۘۖۛ۬ۨ۟ۡ";
                        while (true) {
                            switch (str3.hashCode() ^ (-1841843591)) {
                                case -2112083452:
                                    Signature[] apkContentsSigners = signingInfo.getApkContentsSigners();
                                    int length = apkContentsSigners.length;
                                    while (true) {
                                        String str4 = "ۗۘۧۘۗۙۛۛۗۤ۫ۜۡۘۨ۟۬ۢۚ۫ۡۙۗ۠ۢۨۗۢۚۧۥۘۙۢۥۘ۬ۛۥۘۘۚۥۘۛۘ۬";
                                        while (true) {
                                            switch (str4.hashCode() ^ (-929726000)) {
                                                case -377988461:
                                                    String str5 = "۠ۘۘۘۢۜ۫ۥۘۥ۬۟ۙۨۧۚۡۛۖ۬ۤۧۜۨۜۜۜۨ۫۫ۛۚۜۛۘۘ۟ۗ۫ۛۦۖۘۢۡۗۢۥۘۘ۫ۘ۟۬ۜ۟";
                                                    while (true) {
                                                        switch (str5.hashCode() ^ 1358922659) {
                                                            case -917039391:
                                                                str4 = "ۨ۠ۜۘۘۢۨ۬ۖۡۦۤ۟ۚۜۡ۫ۚۥۛ۬ۘۘ۠ۗۘۘ۫۟ۥۘۚۘۦۘۢۧۥۡۤۖ";
                                                                break;
                                                            case -795587924:
                                                                str5 = i < length ? "ۡۥۜۘۖۤۜۦۘۦ۫ۢۡۘۨ۬۬۫ۧۢۜۜۘۘۖۗۛۖۡۘۘۛۤۡۧۦۛۜۘۜ" : "۬ۚۖۘۗ۬ۡۘۖۜۧۘۦۛۡۛۖ۬۫۫ۦۡۗۦ۬۠ۙۙۤۘۖ۟ۨۘۢۙۢۘۛۘۘۙۧ۠۟۟۠ۚۘ۫ۚۜۘ";
                                                                break;
                                                            case 896094521:
                                                                str4 = "ۖۦۜۥۗۦۘ۬ۖۢۨۤ۟۬ۙۘ۠ۛۗ۫ۛۗۜ۬ۤۦۦۛۥۢۧۘۛۙۛۡۦۘ۫ۥۙۨۤۚ";
                                                                break;
                                                            case 1551654762:
                                                                str5 = "۫ۚۘۘ۠ۘ۬ۜۧۤۢ۫ۧۨۢ۬۬ۚۢۘ۠ۨۘۧۨۢۚۙۙۦۙۡۘۜ۠۟ۦۘ۠";
                                                                break;
                                                        }
                                                    }
                                                    break;
                                                case 251178611:
                                                    String str6 = "V2/V3 Signature: " + apkContentsSigners[i].toCharsString();
                                                    i++;
                                                    break;
                                                case 480803253:
                                                    str4 = "ۚۤۡۘۖۜ۟۫ۡ۠ۢ۠ۘۘۨۙۢۡ۠ۦۘ۟ۙۛ۫۬ۚۤۘۢۗۜۥۘۨۤۖۘۥ۫ۤۖ۟ۜۗ۫";
                                                    break;
                                                case 796079213:
                                                    return;
                                            }
                                        }
                                    }
                                    break;
                                case -1684532022:
                                    String str7 = "ۨۛۜۘۘ۠ۤۚ۟ۖۙ۟ۥۘۡۢۛ۬۬۟ۘ۫۫ۢۤ۟۟ۘۥۘۦۗۦ";
                                    while (true) {
                                        switch (str7.hashCode() ^ 1636270178) {
                                            case -400294084:
                                                str3 = "۟ۖۨۙۡ۠۫ۙۛ۬ۜ۟۟ۥۘۘۨۛۤۜۨ۫ۚۖۥۘۛ۠ۢۦۜ۟ۡۨ۠ۧۥۚ";
                                                continue;
                                            case 491751697:
                                                str7 = "۫ۡۥۘۚۖۡۘۡ۠ۦۥۙۖۘۙۦ۬ۜۦۙۛ۠۟ۡ۟ۗۗ۟ۢۘۢۡۘۙۙ۠ۧۥۘ";
                                                break;
                                            case 657687879:
                                                str3 = "ۦۖۥۗۨۖ۫ۡۘۘ۫ۚ۫ۗۛۥۚۦۛۘۧ۠ۥۙۘ۠ۤ۬ۤۚۥ";
                                                continue;
                                            case 2000795584:
                                                str7 = !signingInfo.hasMultipleSigners() ? "ۦۖۖۘۗۤۜ۬ۛۖۘۥۤۥۘۗۤۡۦۨۘۘۛۛۜۖۙۨۨۛ۬ۗ۟ۡۤۚ۫ۜ۠۫ۥ۫ۖۡۘۘ۬ۥۘۡۙۥۘۚۖۢ" : "ۡۛۥۘۨۗۤۜۥۗۚۨۨۘۧۥۗ۬ۛۘۘ۟۟ۧ۟ۡۜۘۧۡ۠ۦۜۚ۬ۡ۠ۜۢۗۥۛ۬ۢ۟۠۟ۢۙۗۨۛۨۤۙ۬ۢ۠";
                                                break;
                                        }
                                    }
                                    break;
                                case 1165646311:
                                    str3 = "ۧ۠ۖۧۜۥۜۚۘۜۗۧۜۡۥۘۚۚۘۘ۫ۜ۬ۧۛۨ۟ۖ۠ۘۢ۬ۥۢ۬ۛۗۙ";
                                    break;
                                case 1525761410:
                                    Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                                    int length2 = signingCertificateHistory.length;
                                    while (true) {
                                        String str8 = "ۦۚۡۘۘۧۗۜ۠ۥۤۜۘۦۙۨ۬ۢۜۘۥۖۧۘۚۛۚۢۘۚ۬ۥۨۤۗۘ۠ۧۘۘۤۦۢۖۙۘ";
                                        while (true) {
                                            switch (str8.hashCode() ^ (-382347735)) {
                                                case -672107741:
                                                    String str9 = "ۥ۬ۦۘۛۖۜ۟ۡۦۘۥۜۤۢۧۦۨۡ۠۬ۙۢۦۤۥۤۨ۫ۙۥۖۡۢۧ۟ۖۜۛۦۜۢۘۘۘۤۗۥۖۚۥۜۤۥۧۚۚ";
                                                    while (true) {
                                                        switch (str9.hashCode() ^ (-175452920)) {
                                                            case -2100178322:
                                                                str9 = "ۚ۫ۚۢۙۛۙۤ۬ۤۤۗۡۘۙۥۤۢۧۙۤ۟ۛۦۦۡۧ۟ۚۢ۬ۧۗۦۧۥۘ۬ۤۦۘۛۚۡۡ۫ۡۧۗ۬";
                                                                break;
                                                            case -1552432934:
                                                                str8 = "ۗۦ۟۟ۙۚۖۘۘۡۦۘ۫۬ۧۨۚ۠ۘۦۦۧۙۥۘۢۗۘۥۛۥ";
                                                                break;
                                                            case -220305761:
                                                                str8 = "۬۬۟ۚۨۘ۬ۡۥۙ۠ۨۘۚۢۜۤۢ۟ۦۦۥۖۧ۫ۡۧۘۨۚۛۖ۠ۧ۟ۜۘۘۘۢۙ۠۫ۥ۫ۡۦۘۤۢۢۛۖۘۡۦۛ";
                                                                break;
                                                            case -39003459:
                                                                str9 = i < length2 ? "ۦۦۦۧۧۦۧۢ۫ۦۙ۬ۧۚۜۘ۟ۚۥۧۙ۫ۥۢۥۘ۫ۛ۠ۙۤۦۧۖۡۘۚۢۢۘۘ۠ۢۥۛۚ۟ۡۘ" : "۫۟ۜۥۦۦۗۗۨۘۜۛ۫ۦۦۦۘ۬۬ۢۥۚۨۘۢۥۘۗۙۡۘ۟ۙۘۘۛۘۖۦ۫ۦ۠ۦۦۘۢۨۛۗۖۡۗۛ۟ۚ۟ۛۙۖۘۘ";
                                                                break;
                                                        }
                                                    }
                                                    break;
                                                case 717588797:
                                                    str8 = "۠ۘۡۙۖۗۨۡۘ۬ۛۖۙۦۧۘۡۧۚ۟ۚۡۧ۬ۧۢۨۖۧۘۖۖۛ۠ۜۙ";
                                                    break;
                                                case 1123730851:
                                                    String str10 = "V1 Signature: " + signingCertificateHistory[i].toCharsString();
                                                    i++;
                                                    break;
                                                case 1221399020:
                                                    return;
                                            }
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case 1060417069:
                        Signature[] signatureArr = packageManager.getPackageInfo(packageName, 64).signatures;
                        int length3 = signatureArr.length;
                        while (true) {
                            String str11 = "۟ۙۦۨۖ۟ۨۦۘ۬۟۟ۡۧۡۘۦۡۘۤۘۚۨۙۚۛۜۘۛ۫ۤۗۡ۫ۢ۫ۖۨ۟ۡۤ۠ۡۘ۬ۦۧۘۥۚۥۘۥۖۚۨۤۥ";
                            while (true) {
                                switch (str11.hashCode() ^ 923971352) {
                                    case -2052160215:
                                        str11 = "ۜۚ۬ۚۢ۫ۛۧۜۘۘۡۡۛۦۦۘۙۧ۠ۨۧۨۢۘ۠ۡۧۦۘۢۗ۠ۨ۟۟ۜۜۖ";
                                        break;
                                    case -1960537821:
                                        String str12 = "ۧۘۚۤۡۙۢۙۛۙۗۢۖۧۨۘۨۘ۫۠ۗۘۛ۫۟ۘۡۨۘۤۚۚۥۥۘۛۛ۠۟ۤۜۘ۟ۖۘ۫۟ۢۨۦۡۤۜ۟ۧ۟ۦۘ";
                                        while (true) {
                                            switch (str12.hashCode() ^ 676074539) {
                                                case -1314947083:
                                                    str11 = "ۢۦۜۦ۠۫ۛۦۧۘۚۛۘ۟۟ۘ۠ۚ۟ۤۗۢۥۥۧ۬۫ۡۦۤ۠۬ۗۡۘۚۖۙۥۚ۟ۜۤۥۘ";
                                                    break;
                                                case -1291347759:
                                                    str12 = i < length3 ? "ۘۡ۬ۙۙۤۚۖ۫ۜ۟ۖۘۚۡۘۘ۫ۥۙۜ۠ۚۦۚۜۥۥۘۡ۫ۖۘۗ۫ۨۗۨۖۤۨۙۥۡۙۛۛۤ۠ۙ۬۠ۧۡۘۦۦۖۘ" : "۠ۘ۬ۧ۟ۥۘۖۘۘۘ۠۬ۦۜۨۤۢۙ۫ۥۚۘۘۗۖۘۛ۫ۘۘ۠۫ۜۖۦۧ۠ۗۨۘۨۧۗ۟ۖۖۜۜۘۖ۬ۦۘ";
                                                    break;
                                                case 372719654:
                                                    str11 = "ۢۘۥۘۛۛۚۥ۫ۢۛۙۡۧۜۦ۬۬۟۠ۦۘۤۤ۫ۖ۠ۥ۠ۙۚ۠ۤۘۘ۫ۢۨۙۗۜۘۜۚۦۘۢۜۖۙۛ";
                                                    break;
                                                case 551308062:
                                                    str12 = "ۥۢۘۘۚۜ۠ۢۦۜۘۦۙۜۡۧۚ۠ۛۖۡ۟۠ۗۧۧۢۘۢۤۚ";
                                                    break;
                                            }
                                        }
                                        break;
                                    case -264445730:
                                        String str13 = "V1 Signature: " + signatureArr[i].toCharsString();
                                        i++;
                                        break;
                                    case 1611955828:
                                        return;
                                }
                            }
                        }
                        break;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ void Oooo000(AlertDialog alertDialog, View view) {
        String str = "۠۫ۛۜ۫ۗ۠ۖۜۘۖ۠۫ۚۤۥۘۜۨۦۨۘۥۘ۠۟ۨۘۤۙۖۘۙۤۘۘ۠ۚۤۘۦۘ۬ۢ۠۟ۨۘۘۧ۟ۨ۠ۗۗۨۗۘۘۨۦ";
        while (true) {
            switch ((((str.hashCode() ^ 949) ^ 457) ^ 852) ^ 1453694087) {
                case -1475820283:
                    str = "۬ۤۖۨ۬ۡۘ۠ۡ۠۟ۥ۠ۡۙۗۢ۠ۛۧۧ۬ۖۘ۟ۧۜۤ۬ۙۡۚۗۨۦۙۤ۠ۖ۬ۗۜۘۨۘ۠ۥۧۘ";
                    break;
                case -824637823:
                    str = "ۦۘۤ۟ۥ۟۬۫ۡۗۘۧۘۗۖۥۗ۟ۦۘۜۡۘ۠ۛ۫ۘ۠ۧۙ۠۠";
                    break;
                case 512145305:
                    str = "ۥ۠ۗۦۦۖۨۗۘۘ۫ۗۦۘۖ۬ۛۧۜۘۘ۠ۖۙ۫۬ۚۦۥۡۘۨۤۡۘۦۜۘۛۖۘۘۛۖۧۘۗ۫۬۫ۜۖۘۗۡ۬";
                    break;
                case 1272209118:
                    return;
                case 1358135838:
                    OooOooo(alertDialog, view);
                    str = "ۖۥۢۢۗ۠ۢۨۧۡۤۧۗۖ۬ۦۤۥۘ۬ۙۙۧۤۢۜۜۨۥۡۙ";
                    break;
            }
        }
    }

    public /* synthetic */ void Oooo00o(qa.Oooo0 oooo0) {
        String str = "۟ۦۜۘۛۧۦۘۡ۠۬ۗۢۨۘۧ۬ۜۘۚۡۙۙۦۘۡۘۜۦ۠ۤۙۜۜۘۥۙ۫ۤ۠۬";
        while (true) {
            switch ((((str.hashCode() ^ GuideToClickView.a.g) ^ 954) ^ 244) ^ 1647412331) {
                case -687059712:
                    str = "ۖۖ۟ۘ۠ۡۘۦۗۖۚۗۨ۫۬۟۠۫ۘۡۤ۠۠ۛۦۙۦۜۗۦۘۨۙ۫ۤۥۢۚۜۜۘۢۚۨۨ۫ۡ۬ۚۨۘۗۙۜۘۜۥ۟";
                    break;
                case -536057932:
                    Oooo00O(oooo0);
                    str = "۟ۢۡۘۘۚ۠۫۬ۥۜۖۦۡ۫ۜۘۡۤۤ۬ۦۛۜۜۙۧۚ۫۬۟ۡۘۨ۬۫۬ۢ۟";
                    break;
                case 780737987:
                    return;
                case 999246450:
                    str = "۬ۗۥۘۢۘۤ۬ۜۥۘۜۡۘۧۖۢۜ۠ۛۥ۬ۖۘۗۨۡۘۤۥۖۘۥ۫ۚ۟۬۫ۘۛۘۘۥۧۥۘۧۚۗ";
                    break;
            }
        }
    }

    public /* synthetic */ void Oooo0O0(PhoneConfig phoneConfig) {
        String str = "ۙۛ۬ۜۙۦۘۛ۬ۨۖۙۖۘۙ۟۠ۨۘ۠ۗۙۘۖ۬ۙۘۛۤۛۧۜۘ۠ۗۡۨۧۦۘۡۗۦۨۙۚ۠۟ۘۘۙ۫ۘۖ۫ۘ۠ۖ۬";
        while (true) {
            switch ((((str.hashCode() ^ 42) ^ 80) ^ 328) ^ (-1423876592)) {
                case -1784670969:
                    str = "ۙۙ۟۟۟۟۫ۤۘۗۙۙۧۙۡۘۧۜ۠ۦ۟ۘۘۥۥۜۘ۟ۜۥۘۧۚۘۘۛۥۡۚ۬ۡۘ۬ۙ۟ۥۖۖۘۘۦۥ";
                    break;
                case -1238644469:
                    str = "۠ۨۗۢۖۗۧۘۨۖۜۚۜۨۗۧۖۦۘۢۜۥۘۗۡۖۘۛ۟۠ۖۜۡۘ";
                    break;
                case 1236583666:
                    Oooo0(phoneConfig);
                    str = "ۙ۬ۘۘۖۖ۟۬ۡۙۢۦۘۧۖۢ۬ۘۛۜۘۗۧۜۨۘۖۦ۟ۧۙۥۘ۬ۘۤۖ۬ۤ";
                    break;
                case 1312556736:
                    return;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void initView() {
        String str = "ۡۗۨۘۙۛۘ۫ۖۡۚۘ۫۬۟ۥۘۚ۫ۦ۫ۖۧۥۜۘ۫ۜ۟ۡۖۥۘ۬ۚۛۘۨۢۦ۠ۨۦۘ۟ۚۥۚۥۡ";
        while (true) {
            switch ((((str.hashCode() ^ 740) ^ 62) ^ 744) ^ (-367782895)) {
                case -1425971849:
                    this.OooooOo = (ImageView) findViewById(R.id.iv_splash_ad_fullscreen);
                    str = "ۡ۟ۗ۬ۨۨ۫ۨۘ۟ۨۨۖۗۢۗۡۢ۬ۜۨۘۖ۟۟۟ۙۨۛۨ۟";
                    break;
                case -635173265:
                    this.Oooooo0 = (TextView) findViewById(R.id.tv_splash_ad_mark);
                    str = "ۘ۟ۗۖۜۨۡۡۘۖۡۙۧۛۡۗ۟ۙۧۖۘۛۨۡۘ۟ۨۖۨ۠ۦۘۢۚۥۘ۫ۧۨۘۥۘۘۤۚۨ۫ۤ۬ۢۜۖۘ";
                    break;
                case -375798691:
                    this.OoooooO = (TextView) findViewById(R.id.tv_close_ad);
                    str = "ۙۨ۫ۥۦۘۜۡۡۘۛۛۚۜ۫ۤۜ۠ۘۙۘۡ۠۫ۙۨۛ۬ۘۘۤۧۖۘ۠ۡۘۡۡۘ۬ۥۥۘۥۗۖۜۖ۬ۡۜ۫ۚۥۘ";
                    break;
                case 700476619:
                    return;
                case 1259380662:
                    this.Oooooo = (LinearLayout) findViewById(R.id.id_ll_dot);
                    str = "ۧۧۜۘۨ۬ۜۖۛ۠ۦۗۥۘ۟ۥۡۦۢۦۨۚ۟ۡۧۨ۫۟ۦۘۗ۟ۦۡۜۧۗۥۜۧ۠ۨ۠ۥ۟";
                    break;
                case 1392103389:
                    str = "ۨۦ۫ۛ۬ۘ۠۟ۦۥۢۖ۫ۜۦۤ۠ۥۘۡۥ۬ۤۤۧ۟ۧ۠ۥۨۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        String str = "ۛۖۧۙ۬ۦۘۖ۫ۙۙۢۦ۟ۘ۫ۖۛۧۦۨ۬ۨ۫ۖۥۘۛ۫ۜۛۘۘۡۛۧۛۖۥۘۙۥۘۤۛ۟ۜۤۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 631) ^ 227) ^ 1) ^ 1506161614) {
                case -1828932994:
                    return;
                case -1756647746:
                    str = "ۚۧۨۘۜ۫ۥۜۨۡۙۗۨۘۘ۟ۜۜ۫۬ۜۧۘۥۡۘۚۤۨۘ۟ۘ۬";
                    continue;
                case -1332153021:
                    str = "۬۬۟۬ۚۚۚۡۚۛ۬۟ۤۢۖۙۤۗۙۛۦۢۖۨۦۜۖۘۗۡۘۜۜۗۜ۫ۙ";
                    continue;
                case -1307166463:
                    String str2 = "ۥۡۜ۫ۛۘ۫ۙۜ۟ۜۚۥۖۖۘۖ۫ۙۛۢۗۙۢ۠ۖۦۜۘۛۡۛۛۨۜۘۨۦۥۜۚۨۙۤ۫ۘ۬۠ۛۡۘۧۤ۬ۧۗ۟";
                    while (true) {
                        switch (str2.hashCode() ^ 1799234878) {
                            case -1505932757:
                                str = "ۗۨۖۘ۬ۗ۟ۧۨۦۡ۬ۥۘۖۚۡۛۖ۫ۗۘۡۧۛۥۘ۬ۛۤ۟ۗۥۦۡۧۘۡۨۢ۬ۚۨ۫۫ۖۘۚۥۥۘۨ۬";
                                break;
                            case -442170139:
                                str2 = "ۖۡۦۘۚ۟۟ۨۛ۟ۢۥ۬ۘ۟ۨۘۥۘۜۘ۠ۖۦۡۛۘۘۦ۠ۜۡۗۖۘۥۦۢۘۜ";
                                break;
                            case -318527860:
                                String str3 = "۟ۧۦۘۖۥۥۧۢ۬۫ۤ۠۟ۢۦۙۡۘ۬ۤۦۘۢۖۨۘ۟ۘۗۦۖ۫ۖ۫ۘۘۖۨۘۘ۫۟ۨۘۘۢۡۗۧۦۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 953835660) {
                                        case -1882183826:
                                            str3 = "ۧۜۤۙۥۥۘ۟ۥ۫ۤۧۢۖۚۢۙۘۚۥۤۛۦۖۤ۟ۖۡۤ۟ۚ";
                                            break;
                                        case -1585475650:
                                            str2 = "۬ۘ۟۬ۧۘۜ۟ۢۛۛۡۘۗۘۥۘۥ۬ۘۜۛۜۘۧۡۛ۠ۗۦۘۘۢۜ۫ۙۙۧۙۗۦۤ۫ۡۜۡ۫ۦ۫۫ۦۡۘ";
                                            break;
                                        case -8077720:
                                            str3 = !Settings.canDrawOverlays(this) ? "ۜۤۖ۟ۗ۫ۨۘ۟ۛۘۨۘۢۚۙۘۘۜۧۖۘۚۢۡۥۤۜۖۤ۫" : "ۧۦۛۖۜ۠ۙۥ۬ۚۚ۫۠ۤۧۛۡۧۥۚ۬ۧۦۨ۠۠۬ۜۘ۫ۤۨۘۛۛۚۖۨۦۜۥ۠ۨۖۦۗ۟ۨۘ";
                                            break;
                                        case 1045611367:
                                            str2 = "۫۫ۜۘ۫۬ۜۘۘ۫ۛۘۡۢۤۡۜۘۤۛ۠۟۫ۤۖۛ۠ۛۨۦۘۛۗۦۦۛۖۗۗۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 462267656:
                                break;
                        }
                    }
                    break;
                case -1056802637:
                    super.onActivityResult(i, i2, intent);
                    str = "ۙ۫ۢۛۨۨۘۨۗۦۘۤۙۤ۠۠ۨۘۧۦۜۥ۬ۤۤۙۦ۬ۖۡۖۜۘۤۧۥۘۜۖۖۘ۫ۚ۬ۘۨۤ";
                    continue;
                case -1034379006:
                    Toast.makeText(this, "请确保开启悬浮窗权限，否则将无法正常使用", 0).show();
                    str = "ۥۡۜۘۥۜ۟۫۟۠ۖۨۢۜۢۦۘ۟ۚۘۘۘۦۖۘ۫ۖۖۛۨۙۘۤۛۥۘۥۘۡۙۥۘ۫ۘۡۡۦ۟ۙۗۡۘۙۘۧ";
                    continue;
                case -932045602:
                    OooOoOO();
                    str = "ۨۤۛ۟ۘۜۦۘۧۨۗۜ۠ۤۤۨ۬ۘۘ۟ۘۨ۫ۥۜۙ۫ۨۘ۬ۗ۟۬۫ۡ۫۟ۢۦۚ۟ۙۘۥۙ۠ۥ۫ۥ۟";
                    continue;
                case -718403233:
                    String str4 = "ۢۖۗۘۥۦۖۗۖۘۥۜۡۘ۟ۡۚ۫ۜۦۘۥۥۡۗ۠ۘۛۡ۬ۢۗۥۘۖۚ۠ۚۥۘۜۜۚ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1605930908)) {
                            case -1885077863:
                                String str5 = "ۙ۬ۘۚۙۗۜۜۦۥۜ۫۠ۗۥ۟ۗۢۤۥۡۙۦۢۙۛۡۖۡۛۚۨۖۧۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 459906114) {
                                        case -1183171788:
                                            str5 = i == 200 ? "ۘ۠ۘۖۦۧۤۧۢۨۦۦۛۤۜۘۗۜۥۘۤۘۥۘۜ۟ۜۘ۠۫ۨۘۦۤۨۥۦۙ۬ۛۚۧۛۙ۬ۡ" : "ۢۘ۟ۢۚ۬۠۬ۦۢۧۡۢۧۥۘ۫ۨۨۘۢۙۨۧ۫۟ۚۜۘۨۧۗۜۨۨۦۙۨۢ۠ۦۘۖۨۖ۠۫ۨۨۚ۬ۢۢۗۖۨۘ";
                                            break;
                                        case -725163829:
                                            str4 = "۬ۗۘۛۢۦۙۗۨۥ۟ۛ۠ۘۡۦۧۥۘۜۛۤۢۨۛ۟ۦۜۧۜ۠";
                                            break;
                                        case -485654063:
                                            str4 = "۟ۧ۫ۘۦ۠۬ۜۦۘۚۗ۟ۗۥۤ۠ۘ۫ۚۗۛۚۗۧۚۦۙۚۡ۟ۡ۬ۚۜۘ";
                                            break;
                                        case 414035241:
                                            str5 = "ۛۦۚۚۘۚۛ۫ۜۘۜۢۜۧۢۘ۟۫۠ۗۜۙۦۙۗۥۗۘۘۨۘۖ۠ۖۘ۬ۨۡ";
                                            break;
                                    }
                                }
                                break;
                            case -914947349:
                                str = "۟ۦۡۘۢۚ۟ۤۦۘۧۛۘۘۥۢۖۢۚۧۚۥۜۘ۬ۧ۟ۦۥۘۘۡۥ";
                                continue;
                            case -753428190:
                                str4 = "۬ۡۦۘۨۖۙۡ۬ۛۛۘۥ۠ۜۖۘۙۗۥ۫۬ۙۘۚۘۘۦ۫ۦۘۙۙۨۡۙۨۧۘ۬";
                                break;
                            case 1277759550:
                                str = "ۨۤۛ۟ۘۜۦۘۧۨۗۜ۠ۤۤۨ۬ۘۘ۟ۘۨ۫ۥۜۙ۫ۨۘ۬ۗ۟۬۫ۡ۫۟ۢۦۚ۟ۙۘۥۙ۠ۥ۫ۥ۟";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -366445038:
                    String str6 = "ۙۖۜۘۖۨۥۘۙۧۘۢۜۛۜۜ۠۠ۗۦۘۧ۠ۧۥۜۗۗۢۜۤۨۢۙۘ۬ۨۧ۫ۢ۫ۚۜۜ";
                    while (true) {
                        switch (str6.hashCode() ^ (-511838128)) {
                            case 419201747:
                                str = "ۧۙۦۤۖ۟ۚۖۘۢۙ۫ۘۖۙۜۗۡ۟ۗۜ۬ۗۗۥۚ۬ۡۘۨۘ";
                                break;
                            case 792869539:
                                str6 = "۟ۧۖۘۖ۫ۨۢ۬ۖۘۦ۟ۙ۫ۡۡۘ۬ۘۨۜۙۧ۟۠ۚۨۤۤۤۨۜۘۛۦۜۜۗۚ";
                                break;
                            case 801686945:
                                break;
                            case 852077263:
                                String str7 = "۠ۡۘۘۚۢۨۛۗۜۢۨ۠۟ۖ۬ۥۢۦۧ۬ۡۚۤۧ۠ۢۨۘۘ۫ۧۖۦۜۧۛۖۘۚۗۦۨۜ۬ۤۗۨۘۦۤۗۗۧۡۜۘۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 1256743654) {
                                        case -505957957:
                                            str7 = "ۥۨۧۙۙ۫ۜۙ۠ۦۥۨۘۖۘ۫ۨ۠ۗ۠ۦۚۡۛۚۗۢۤۛۙۘۖۧۙۢۥ۟۫ۡۡۘۧۦۢۖۗۦۨۖۘ";
                                            break;
                                        case 943615679:
                                            str6 = "۫ۙۨۘۤۖ۠ۢ۬ۜۛ۬ۢۢۘۙۢۥۘۥۗۖۘۥ۫۫ۛۗۜۨۘۨۙۨۚۜ۬";
                                            break;
                                        case 1691698562:
                                            str7 = Build.VERSION.SDK_INT >= 23 ? "ۡۜۨۘۗۧۖۢ۟ۖۘ۫ۤۤ۫ۤ۟ۢۨۧۘ۫۟۫ۙۢۚ۠ۥۨۘۖۘۚ۬ۗۦۘۨۥۨۘۙۜۥۢۤۖۘۤۦ۬۟ۗ۠" : "۠ۥۡۜۨۘۘۜۦۘۢ۫ۤۘۜ۟ۥۧۥۗۢۖۦۧۥ۠ۘۦۦۥۘۘ۟ۚ۠ۗۡۘۗ۬ۥۘ۠ۢۦ۠ۨۥ۠ۙۖۘ";
                                            break;
                                        case 2057810522:
                                            str6 = "ۤۡۧۘۤۚۦۘ۟۠ۖۘۗۙۥۘۜۗۦۖۗۖۗۚۛۜ۫ۥۧۙ۟ۗ۫ۜ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -129399994:
                    str = "ۖۥۡ۟ۦۚۦۤۧۖۖۘۡ۟ۢ۠ۤ۬ۦۛۦۘۖۡۛۖۨۖۘ۟ۥۖۘۥ۟ۙ۫ۗۨ۬ۦۥۘ۟ۦۦۨۜ۫ۖۚ۟";
                    continue;
                case 268967185:
                    str = "ۧ۫ۙۡ۬ۡۜۢۖۘۖۛۨۛۧ۟ۤ۠۟۟ۢۗۖۨۛۚ۫ۘۜۢ۟ۢۤ۟ۡۧۚۖۘ۠ۜۘۖ۟۫۟ۥ۟۬ۥۦۥ۠ۤ";
                    continue;
            }
            str = "ۥۡۜۘۥۜ۟۫۟۠ۖۨۢۜۢۦۘ۟ۚۘۘۘۦۖۘ۫ۖۖۛۨۙۘۤۛۥۘۥۘۡۙۥۘ۫ۘۡۡۦ۟ۙۗۡۘۙۘۧ";
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = 0;
        String str = "ۡ۟ۡۘۧۜۢ۟۬ۧۚۥۛۤۙۘۘۘۗ۠ۘۧۙۘۖۗۨۢۦۘ۬۫ۢۜۛۤۙۘۘۛۖۖۘۘۜۚ";
        while (true) {
            switch ((((str.hashCode() ^ 530) ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE) ^ 673) ^ (-1834161444)) {
                case -1705611090:
                case 382428052:
                    str = "ۤۨۡۘۖۤۦۘۨۜۖۘۜۜۧۘۡ۫ۘۖۥۧۨۥۢۤۜۡۦۘ۬ۤۢۗۦۨۤۗ۫۬۟۠۠ۖۘۘ";
                    break;
                case -1684880022:
                    String str2 = "ۘۢ۟۠ۙۖۘۤۖۚۢۛۢۦۖ۫۫ۥ۟۬۠ۡ۫ۗۨ۫ۖۙۥۗ۬ۦۖۘ۠ۨۖۘ۟ۜۘۢۦۨۘۦۥۖۘۦۨۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-362447594)) {
                            case -1988453196:
                                String str3 = "ۧۚ۬ۙۚۦۚۘ۫ۙۚۙۜۧۥۘۡۢۡۛۧۖۘۢۜۖ۬ۜ۠ۛ۟ۗۙۥۚ۫ۖ۠۠ۦۦۧۛۖۘۨۢۤۖ۟ۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-713458020)) {
                                        case -1239908040:
                                            str2 = "ۤۢۙۡ۟۠۟ۘۘۥۡۨۘۖۛۦۘۡ۫ۥ۠ۙۜۥۘ۬ۤ۠ۢۙۘۥ۫ۡۙۤۘ۬ۗ۫ۥۨۢۢۖ۫ۨ۬ۛۡۘۨ۫ۖۗۧ";
                                            break;
                                        case -1212799258:
                                            str3 = id != R.id.tv_close_ad ? "۬ۚۛۦۡ۫ۥ۫۫ۜ۠ۤۨۘۘۚ۫ۚ۟ۖۚۚۛۖۘۦۧۜۘۤۖۖ۫ۜۛۘ۠ۦ۠ۜۖۘۙۤۨۘۡۧۥۦ۟ۖ" : "ۜ۠ۗ۠ۚۤۧۖۖۘۗۥۢۛۗۜۘۜۥۥۧۦۧۘۜۤۚۛۦۢۨۡ۟۬۟ۜۘۜ۟ۖۘۘۛۡۘۖۨۥۘ";
                                            break;
                                        case -105637993:
                                            str3 = "ۨۛ۟ۥۨۚۨ۟۠۬ۢۡۛۨۘۥ۟ۢ۫ۤۥۘۙۖ۬ۨ۬ۙۡۢۡۘۤۙۥۜۨ۬";
                                            break;
                                        case 89414512:
                                            str2 = "ۤۖۦۥۚۦ۫ۖۦۢۗۨ۬ۖ۫ۖۚ۠ۘۡۗۦۘۢۥۨۘ۬۟۬۬ۜۙۦۨ";
                                            break;
                                    }
                                }
                                break;
                            case -1369808061:
                                str = "ۜۡۥۘۗۥۖۖۦۙۜۧۦۖۦۘ۫ۧۘۘ۟ۗ۟ۜۨ۬ۧۗۚۘۦۡۦۘۘۘۢۜۗۧ۫ۙۙۢ۫ۙۦۘ۟ۢ۫ۥۙۖۧ";
                                continue;
                            case 1208551866:
                                str2 = "۫ۘ۟ۜۤۥۘۡۜ۫ۜ۬ۛۧۦۦۛۜۡۤۜۘۖۡۥۘۧۥۢۢۙۗ";
                                break;
                            case 1742755151:
                                str = "ۡۧۨۘۗۢۖۘۤۥۘۘۡۤۢۤۛۖ۟ۧۛۖۖۦۜۥۙۢۘۧۘ۫ۥۨۘ۬ۜۜۡۙۘ۬ۧۙۨۛۧۗۗۥۖۥۖ";
                                continue;
                        }
                    }
                    break;
                case -84667814:
                    this.Ooooooo.OooOOO0();
                    str = "ۤۨۡۘۖۤۦۘۨۜۖۘۜۜۧۘۡ۫ۘۖۥۧۨۥۢۤۜۡۦۘ۬ۤۢۗۦۨۤۗ۫۬۟۠۠ۖۘۘ";
                    break;
                case 343129790:
                    str = "۟ۨۜۛۧۡۗۤۖۘۛۨۨۤۢۡۜ۠ۗۡۡ۠۟ۛۡۗۨۖۤۛۤ۬۫ۥۧۢ";
                    break;
                case 603646498:
                    id = view.getId();
                    str = "۟ۚۢۜۦۙ۠۫ۡۘۜۨۨۘۢۥۨۘۗۥ۠ۜۦ۫ۗ۫ۤۙۜۤۜۖۦۜۘۙۙۙۧ۫ۡۘۦۤۨۘ";
                    break;
                case 766823822:
                    this.Ooooooo.OooO0Oo();
                    str = "ۧۥۖۘۢۡ۬۟ۨ۟۫۬ۧۗۦۧۙۦۥۘۨۖۘۛ۬ۨ۠۬ۡۚۢۡ";
                    break;
                case 1412982019:
                    str = "ۧۙۖ۟۠ۚۨ۟ۡ۠ۧۦۥۜۢۚۧ۠ۥ۠ۚۙۛۤۥۡۚۜۘۙۙ۠ۨۙ۟۟ۤۙۧۡۡ";
                    break;
                case 1463926443:
                    String str4 = "ۨۨۧۧ۟ۖۙۤۥۘ۫ۥۤۢۗۢۨ۬۠ۜۡۘۧۜۧۡ۬ۛ۬۟ۥۧۙ۬۠ۦۡۜ۠ۛ۟ۨۤ۬۬ۤۦۜ";
                    while (true) {
                        switch (str4.hashCode() ^ 1157922821) {
                            case -1815329355:
                                String str5 = "ۗۜۛۧۚۙ۟۟ۗۤۘۘۘۖۗ۟ۙۚۚۦۘۥۤۥۦۘۙ۬ۚۡۖۢۧۘۘۘۘۛ۫";
                                while (true) {
                                    switch (str5.hashCode() ^ (-2088046417)) {
                                        case -1458936727:
                                            str5 = "ۘۜ۠۬۠ۗۛۢۥ۫ۜ۠ۢۙۧۜۙۤۙۧۢۡ۫ۜۘۡ۟ۧۗۡۜۘ";
                                            break;
                                        case -1405175689:
                                            str4 = "ۨ۠ۢۤۨۙۛ۠ۨۤۨۜۘۗۜۙۙ۟ۡۜۡۚۢۖۘۙۜۖۘۜۨۥۘ";
                                            break;
                                        case -19075314:
                                            str5 = id != R.id.iv_splash_ad_fullscreen ? "ۡۨ۟ۥۡۨۘۧۤۨۘۜۨ۠ۗ۬ۨۘۗۧۖۖۙۖۢۖۜۚۥۜۘۤۚۡۘ۬ۘۡۙ۟ۨۡ۫ۡۡۢۨۥۤۛۘ۟ۦۘۗۚۜۘ۫ۛۦ" : "۬۫۫ۡۤ۟ۘۨ۫ۧ۫ۥۤۙۡۦۡۘۗ۟ۘ۬۬ۧۤۤۘۘۜۡۡۤۘۤۡ۟۬ۖۡۡۘۙۗ۫ۥۖۖ۟ۡ";
                                            break;
                                        case 1410212363:
                                            str4 = "۟ۡۨۜۤۘۙۢ۬ۚۖ۠ۗۚ۬ۚۥۖۧۨۖۧۦۘۘۘۜۖۜۢ۫ۤۡۡ۫ۜۛ۠۠ۘ۫ۜ۬۠۫ۖ۠۫ۖۙ۟ۢۜۢ";
                                            break;
                                    }
                                }
                                break;
                            case -664825305:
                                str = "ۥۦۡ۟۬ۙۤۥۡۘۤ۬ۖۜۚ۟۟ۧۘۘۗۥۧۤۘۨۘۖۢۡۜۡۛۖۦۖۚۢ۬ۦۙۙۥۨ۬ۨ۠ۤۥ۟۫۫ۡ۟ۛۧۢ";
                                continue;
                            case -598472041:
                                str = "ۜۚۜۚۛ۠ۘۛۘ۫۫ۛ۬ۛۚۜۛۗۤۡۜۢۤۦۚۙۛ۬۫";
                                continue;
                            case -80963110:
                                str4 = "ۚ۫ۥۢۢۦۥۙ۠ۗۡۢۗۘۢۖۙۡۘ۫ۚۡ۬۠۫ۙۢۥۘۥۛۖ";
                                break;
                        }
                    }
                    break;
                case 1640020196:
                    return;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity, com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "۠ۘۜۜۤ۟ۧ۬ۥۘ۫ۘۥۘۛۨۘۘۥۖۘۧ۬ۤۖۚ۬ۦۨۢۙۧۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 377) ^ 810) ^ 984) ^ (-194626132)) {
                case -1825084993:
                    OooOoOO();
                    str = "ۗۨ۟۫ۙۡۘ۠ۖۚۖۦۜۘۙۧ۬ۤۖۥۘۤۛۨۙۜۙۛۛۜۖۖۨۘ";
                    break;
                case -1457250216:
                    String str2 = "ۥ۟ۚۘۙۡۘۜۢۜۤۗۡۚۖ۟ۢۨۤۘۨۢۗۦ۬ۜۙۖۘ۫ۘۙ";
                    while (true) {
                        switch (str2.hashCode() ^ 648185050) {
                            case -843958700:
                                str = "ۛۜۡۛۚۦۗۖۧۥ۟ۚۖۛۧۛۖۥ۬ۡ۫ۧ۬ۡۙۤۙۜ۠ۚ۠ۡ۠ۧۢۥۘۧۘۘ۟ۡۖۗۘۦۘۙۙۜ";
                                continue;
                            case 991594253:
                                String str3 = "۫۫ۨۘ۫ۤۘۦۦ۟۬ۘۜۘۚۧۜۘۜۘ۟۟ۙۗ۟ۙۢ۬ۦۖ۟۬ۡۧۦۛ۬۬۟ۥۨۘۘ۠۠ۛۡۘۥۥۧۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 2052910551) {
                                        case -1662252644:
                                            str2 = "ۨۡۛ۬ۙ۬ۥۡۦۘۙۘۖۘۜۧۗۙۢۧۦۤۘۗۢۖۛۢۦۘۛۚۡۦۜ۬ۙۦ۬";
                                            break;
                                        case 1289020082:
                                            str2 = "ۤۡۖۧ۫ۙۨ۠ۗ۬ۖۘۡۦۘۘۤۜۤۨۘۙۤۧۖۘۙۥۡۦۗۖ۬ۖۖۘ۫ۨ۫۬۠۬۬۫ۘۖۥۙۖۜۦ";
                                            break;
                                        case 1390515464:
                                            str3 = "ۦۘۖۚ۟ۖۘۧ۟ۘۤۙۥۘ۬۫ۖۘۦۗ۬ۘۚۡۘ۫ۡۡۘۢۛۧ۫۠ۨۘ۫ۛۤۡۧۖۘۤۘۗۨۗۢۡۖۘۧۙ۟ۙ۠ۛۤۘۧ";
                                            break;
                                        case 2028596879:
                                            str3 = Build.VERSION.SDK_INT >= 23 ? "۬ۙۡۗ۬ۛ۟ۦۛۨ۫ۥۘۙۜۘۤۨ۠ۚۗۡۛ۬ۡۛۖۘ۠ۡۨۘۜۦۖۘ۫ۢۜۘۥ۬ۘ۫ۘۛ" : "ۗ۬ۧۘۧۢ۟ۖۚۗۧۖۘۡ۟ۡۗۜۦۘۧۤ۟۟ۙۙۡۧۘۚۜۡۘ۬۬ۧۛۥۘۤۙ۟ۖۛۜۘۘۚۦۘۨ۬ۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1193670617:
                                str = "۠ۜۛۚ۠۟ۥۗ۬ۨ۟ۜۦۦۡ۠ۤ۠۫۠ۤۦ۠ۦۦۚۨ۫۠۫ۙ۠ۖۘۡۗ۬ۢۛۘۤۚۥۖۖۦۦ۫ۥۘ۬۟ۧۦۜۢ";
                                continue;
                            case 1803679245:
                                str2 = "ۢۜۥۘۙ۟ۚۧۛۜۧۖۥۘۨ۠ۦ۫ۥ۫ۘۧۡۦ۟۫ۘۤ۫ۥ۠ۖۥۛ۟۟ۜۨۘۦۡۥۥۤ۠ۦۦۢۜۜۡۘ";
                                break;
                        }
                    }
                    break;
                case -1332340400:
                    finish();
                    str = "۟۟ۖۦۥ۬۠ۦۥ۟۫۠ۗۡ۠ۨۥۚۚۙ۟۫ۧۙۦۨۗۚۜۛۤۧۨۘۘۤ۬";
                    break;
                case -1049950394:
                case 432940734:
                    return;
                case -167480733:
                    Oooo0oO();
                    str = "۬ۚۦ۬ۥ۫ۜۜۛ۫ۥۘۜ۟ۡۤۜۡ۬ۢۘۘۘ۬ۨۨ۫ۛۚ۠ۙۗۘۘۤۥ۫ۖۡۜۦۥۙ";
                    break;
                case -118652694:
                    str = "ۡۗۙۢۡۜ۠ۤ۟۟ۗۖۤۥۖۘۜۤۛۗۥۖۘ۬ۡۤ۬ۜۘۘ۫۫ۢۨۛۢۚۤۧۛۖۜۘۡۙۖۘ۠ۥۥ۟۬ۡ";
                    break;
                case 321700298:
                    str = "ۗۨ۟۫ۙۡۘ۠ۖۚۖۦۜۘۙۧ۬ۤۖۥۘۤۛۨۙۜۙۛۛۜۖۖۨۘ";
                    break;
                case 882138074:
                    super.onCreate(bundle);
                    str = "ۛۘ۫ۧ۬ۖۥۦۡۘۧۧۨۘۨۙۡۘۜۛۗ۟ۧۛۡۛ۟ۥۢۢۦۘۖ۠ۘۘ۬ۦۖ۠ۗۥۙ۟ۨۛ۬ۘ۬ۥۘۥ۟ۤۨ";
                    break;
                case 1431136734:
                    str = "ۧۘۥۘ۠ۖ۠ۧۤۚۡۗۜۘۤۖۦۘۤ۫ۤۥۡۧۘۙۢۜۘۦۛ۬ۚ۟ۘۘۚۖۛۗ۟ۨۘ";
                    break;
                case 1446229307:
                    String str4 = "ۚۢۨۛۖۜ۠ۙۖۧۤۧۗۚۨۙۧۘۘۨۡۦۘۨۘۥۘ۬۟۠ۡۨۧۘۖۧۙۚۤۡۢۗۜۜۡۜۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 1648033632) {
                            case -1064623052:
                                str = "۠ۡۧۘ۫ۜ۠ۦۜ۟ۚ۠ۖ۟ۙۥۘۥۖۨۙۥ۠ۖۡۘۖۦۜۤ۠ۡۘ۫ۧۜۘۡ۠";
                                continue;
                            case -926112473:
                                String str5 = "ۦۧۚۙۘۘۡۗۖۖۦۧ۫ۥۘۚۥۚۦۢۤۧۛۜۘۢۘ۟ۥۜۘۤۚۛۖۜۚۨۢۚۛۥ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-579252383)) {
                                        case -1840780305:
                                            str4 = "۫ۥۜۡۡۧۘۗۖۦۖۘۡۗۦۘۚ۬ۥ۫ۖۥۘ۬ۘۦۘۘۨۢۗۨۡ";
                                            break;
                                        case -678268071:
                                            str4 = "ۖۧۙۧ۠۟ۜۚۘۘۨۤۜۘۥۜۡۘۗۦۙۦۥۥۘ۠ۡۤۤۦۙۜۨۗ";
                                            break;
                                        case 1240999196:
                                            str5 = "ۜۛۜۘۢۘۙۘۘۦۘۤۡۧۙۗۡۘۦ۬۟ۨۨۡۢۨۦۚۗۜ۟ۛ۠۫ۖ۬ۙۜۤ";
                                            break;
                                        case 1620315826:
                                            str5 = !isTaskRoot() ? "ۘۚ۠۟ۧ۠ۘۨۨۘ۟۠ۢۥۨۗۢۜۢۢ۟ۨۗۜۤۙۨۤ۫ۖۜۨۢۚۧۗۢۥۧ۬ۜ۬" : "ۦۜۜ۟ۗۧ۬ۘۧۘۧۛۜ۟ۧۚۜۤۘۛۘۙ۫ۘۨۛۢ۠ۗۧۘ";
                                            break;
                                    }
                                }
                                break;
                            case -566104497:
                                str = "۟۟ۡۘۨۢۥۘ۬ۦۧ۫ۖۥۜ۠ۢۤۨۘۤۥۨۧۚ۫ۢۦ۬ۢۜۡۘ۫۠ۜۘ۬ۧۙۥۘۥۚۡ۬";
                                continue;
                            case 1870161021:
                                str4 = "ۦۦۨۜۦۖۙۦۛۢ۟ۧۜۗۦۨۚۜ۠۬۬ۗۖ۠ۜۘۧۘۡۘۨۗۧ۠ۧۦۢۥۗۗۙۦ۠ۢۖۘ۫۠ۘۘ";
                                break;
                        }
                    }
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۥۗۙۖۖۡۘ۠۫ۡۨۖۡۘۧ۫ۦۨ۫ۘۘ۠ۢۥۘۤۡۙ۟ۧۦۘۤۘ۫ۡۜۖۚۜۦۧۘۖۨۗ";
        rh rhVar = null;
        while (true) {
            switch ((((str.hashCode() ^ 430) ^ 664) ^ 384) ^ (-2100610553)) {
                case -1827098115:
                    this.Ooooooo = null;
                    str = "ۨۙۘۘ۠ۨۘۤۗۙ۬۬ۦۢ۫ۘۘۙۢۧ۟ۚ۫ۦۗۜ۫ۨۦۜۖۜۗ۫ۛۛ۬ۜۖ۠ۗ۫۟";
                    break;
                case -444508164:
                    str = "ۛۢۜۘ۬ۡۛۜۖۘۘۡۖۢۛۡۧ۫ۘۜۗۤۨۘۛۖۙۗۨۦۦۢۥۙۧۨۦۘۧۜۡۦۥ۠ۢۜ۬ۗۥۢۡۙۧۦۦۖۚ";
                    break;
                case -186267114:
                    String str2 = "ۤۗۢۥۦۧۚۧۘ۠ۥۥۘۨۘۨۘۨ۫ۚۢۨۘۢ۠ۥۘۨۚ۬ۦۡ۫ۘۤۚۥۦۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 245392370) {
                            case -190201623:
                                str = "ۨۙۘۘ۠ۨۘۤۗۙ۬۬ۦۢ۫ۘۘۙۢۧ۟ۚ۫ۦۗۜ۫ۨۦۜۖۜۗ۫ۛۛ۬ۜۖ۠ۗ۫۟";
                                continue;
                            case 663839333:
                                str = "ۛۜۜۜۜۦ۠۠ۘۘۗۦۥۘ۬۠ۢ۬ۢۡۖۨۦۘۥۛۗ۠ۨۘۧ۠ۘۘۖۤۗۤۢۖۘ";
                                continue;
                            case 1053758897:
                                String str3 = "ۖ۫ۥۡۜ۠ۚۗۗۚ۟ۙ۬ۡۖۘۗۖۜۘۤۨۖۘۙۨۤۧۡۚۡۢۦۘ۠ۥۜۘۧۗۡۘۡ۠ۡۘۛۦۥۢۘۚۖۖۧۘۤۢۗ۬ۤۛ";
                                while (true) {
                                    switch (str3.hashCode() ^ 173769528) {
                                        case -1888704494:
                                            str2 = "۬ۧ۫۫ۚۧۘ۫ۛۛۦۗۘۦ۟۟ۛۨۢۚۢۤ۠ۧ۠ۦۦۛۜۖۘ";
                                            break;
                                        case -1490688464:
                                            str3 = rhVar != null ? "ۡۗۖۘۦۢۘۜ۠۠ۗۡۖۘۛۗۖۤۤۗۢۚۧۡۢۜۘۙۛۡۘۖۨۡۘۦۨۛ۠ۧۜۘۧۡۨۘۥۦۦ" : "ۦۡۘۙۤۥۘۥۢۦۡ۟۟ۧۡۙ۟ۡۨۘۜۜۙۚ۫ۜ۠ۡۚ۟ۥۖۘ۠ۛۜۘۨۦۢ۠ۗۗ۫ۖۙ";
                                            break;
                                        case -836581228:
                                            str3 = "ۗۗۤۧۚۨۘ۟ۗۛۧۡۘۘۗ۬ۥۘۛۛۡۘ۫ۢۦۘۜۡۛۦۛۜۘ۠ۧۗۥۛ۬ۙۚ۬";
                                            break;
                                        case 1906232836:
                                            str2 = "ۦۙۨۘ۠ۢ۫ۨۖۨۦۦۛۡ۟ۖۦ۫ۧۛ۟ۖۢۨۛۘۘ۟ۥۘۡ";
                                            break;
                                    }
                                }
                                break;
                            case 1874157073:
                                str2 = "۠ۙۜۘۨۨۘۘ۫ۨۧۘۗۘۨۘۗۥۚ۠ۗۦۘۖۨۗۙ۠ۜۘۙۘۥۖۢۢ";
                                break;
                        }
                    }
                    break;
                case -72950762:
                    super.onDestroy();
                    str = "۬ۥۙ۫۫ۙۦۢۜ۬ۦۘۘۘ۫ۦ۠ۨۘۥۤۨۘۘۜۦ۫ۤۨۘۘۨۧۜۘۖۙۛ";
                    break;
                case 867938610:
                    rhVar = this.Ooooooo;
                    str = "۟ۜۙۖۘۡۘۡۥ۬۫۫۬ۛۜ۬ۧۘۥۨ۬ۘۛۨۦۘ۫۫ۚ۬ۢۧۤۖ۫ۢۨۨۘ";
                    break;
                case 1397567906:
                    rhVar.OooOOO();
                    str = "ۖۗ۟ۙۡۜۤۙۡۘۧۢ۬ۜ۟ۗ۬۫ۜۘۨۛۜ۬ۜۧۘۖۜۢۢۧۗۤۖۨۡ۠ۡ۫۬ۡۘۦۜۗ۫۫ۦۘۥ۫ۤۖ۬ۘ۫ۧۛ";
                    break;
                case 1751086722:
                    return;
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        String str = "ۦۘ۬ۛۦۚۧ۬ۦۘ۠ۦۖۘۙۦۦۜۦۘۘ۠۫ۛ۫۟ۥۜ۟ۜۢۧۨ۠۫ۛۧۚۥ";
        boolean z = false;
        boolean z3 = false;
        while (true) {
            switch ((((str.hashCode() ^ 910) ^ 641) ^ 433) ^ 1844605890) {
                case -2090827918:
                    return z;
                case -1683913216:
                    str = "ۨ۬ۦۘ۟ۛۙۘۗۖۗۢۘۘۙۡۙۨۜۧ۟ۡۗۦۜۘۘۧۖۜۨ۟ۨ۟ۗۥۤۚۚۥۡ۟ۜۜۥۘ";
                    break;
                case -1561284476:
                    str = "ۜۜۘۘ۫ۘۘۘ۫ۘۦ۟ۛ۬ۤۗۢۤۡۖۘ۠ۗۧ۫ۚۘۛۙ۬ۛۚۜ۟ۥۚۜۨ";
                    break;
                case -1480509470:
                    z3 = true;
                    str = "ۘۥۨ۟ۙۖۙۘۛ۬۠ۜۘۤ۬ۥۗۨۥۦ۫ۨۢۛۘ۠ۢۜۢۗ۬ۖۦۛۨۜۨۤۜۤۨۨ۬";
                    break;
                case -1214819784:
                    str = "ۘۥۧۘۜۜۦۙ۬ۥۨۥۘۘۚۛۥۘۛۢۡۧۗۘۨ۠ۨۘ۫ۧۘۦۥۦۦ۫ۘۘۨۡۨۡۘۨۤۙ";
                    z = z3;
                    break;
                case -868766643:
                    str = "ۦۙۥۘۜۖۘ۫ۢۡۥۙۥۘ۟ۦۧۤۢۙ۟ۡۨۘ۟۬ۚۛ۟ۤ۠ۚۙۘۜ۟۫ۡۘۡۡۜۘۛۗۜۨۜۡ۬۟۟";
                    break;
                case -555373585:
                    str = "ۜۜۘۘ۫ۘۘۘ۫ۘۦ۟ۛ۬ۤۗۢۤۡۖۘ۠ۗۧ۫ۚۘۛۙ۬ۛۚۜ۟ۥۚۜۨ";
                    z = false;
                    break;
                case -393512342:
                    String str2 = "ۛۡۥۘۡۢۥۙۜ۬ۨ۠ۛۡ۫۬ۙۗۨۘ۟ۘۙۤۢۢ۬ۤۘۧ۬ۜۖۧۨۘۢۙۘۘۧۛ۠ۢۡۦۥۙۡۡۖۖۘۜ۬۟ۧ۫ۥۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1381133713) {
                            case -1707661003:
                                str = "۟ۨۜ۬ۜۥۘۥۖۙ۟ۘۥۦۚۜۚۗۜۤۘۥ۟ۛ۟ۨ۫ۚۜۨۘۢۧۛۘۘ";
                                continue;
                            case -1617467545:
                                str2 = "ۡۗ۟ۤۢۡۘۖۢۛ۟ۤۨۘ۟ۘۨۘ۠ۦۜۘ۬ۨۜۘۦ۠ۗۦۖ۠ۤ۟ۧۨۘۡۘۛ";
                                break;
                            case 123765642:
                                str = "۟ۘ۠۠ۙۨ۫۠ۚۦۚۜۘۖۘۤۘۨۥۙۦۜۤۨۢ۬ۨۥ۟ۤۚ";
                                continue;
                            case 1534361610:
                                String str3 = "ۙۙۙۥ۠ۨۘۖ۫ۖۘۜۤ۬ۘۦ۫ۜۗۘۙۤۧۦ۫ۚۘ۬۟۫ۤۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ 215190226) {
                                        case -905679088:
                                            str3 = i == 4 ? "ۢۛ۬۬ۛۥۢۛ۟ۢۚۨۘۦۨۘۨۘۧۘۚ۫ۦۘ۬۬ۨۧۛ۠ۡ" : "ۘۨۥۘۦۥۦۡۥۡۘۤ۬ۦ۬۬ۤۖۥۘۧ۟ۧۖۘ۫ۧۗ۠ۚۨۜ۬ۖۨۘۗۦۚ";
                                            break;
                                        case -789357913:
                                            str2 = "ۨۜۚۧ۫ۖۨۖۥ۬ۘ۫ۜ۟ۤۡ۠ۢ۬ۤۡۘ۟ۢ۬ۖۢۡۘۨۚ۫۫ۤۜ۬ۜۜ";
                                            break;
                                        case -489728436:
                                            str2 = "۟ۗۡۖۢۜ۫ۜۘ۬ۨۜۘۚۚۛۚ۬۟ۧۜۘۥۜۘۙۢۥۜۚۗۨۡ۟ۨۥ۫ۘۧۘۡۧۘ";
                                            break;
                                        case 764426012:
                                            str3 = "ۡۘۦۘۚۤۡۘۘۚ۫ۗۜۥ۠۟ۦۘۢۖۥۢ۟۫ۜۚۨۤۖۜۦۨۖۘۥۜ۬۟۬ۛۗۥۚۜ۠۫۫ۖۡۙ۬ۘۦۡۜۗۦۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 449492209:
                    str = "۬ۡۦۙۨۨۖۤۥۘۧۨۡۙۡۘۤۛۜۢۙۢۤۧۜۦۥۙۖۧ";
                    break;
                case 502624455:
                    str = "ۚۨۦۘۜۨۡۚۛۦۘ۠۫ۖۖۜۜۘۥۦۢۢۗۧۢۜۘ۬ۖۜۘۨۦۤۤۡۙۗ۬ۜۘۤۨۘ۟ۜۡۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        String str = "ۖۦۜۘ۬ۨۤۨۤۨۘۗ۫ۚۨۙۡۘۗ۠ۥۘۘ۬ۢۙۙۥۥۘۘۛۨ۫ۡ۫ۘ۫۬ۧ";
        int i2 = 0;
        boolean z = false;
        boolean z3 = false;
        int i3 = 0;
        boolean z4 = false;
        int length = 0;
        while (true) {
            switch ((((str.hashCode() ^ 949) ^ 443) ^ 486) ^ (-705022647)) {
                case -2059604154:
                    str = "ۘۧۨۘۖۛۧۢۤۜۘۦ۠ۘۘۚۚۜۘ۫ۨۖۧۤۗ۬۫ۜۛ۠۫ۦۥۤ";
                    z3 = z;
                    break;
                case -2041203998:
                    return;
                case -1925983888:
                    i2 = i3 + 1;
                    str = "ۘ۠ۤ۟ۢۙۛۖۜۘۢۖۡۘ۬ۖۚۢۡۧۛ۟۫ۜۨۡۗۢۦۛۡۨۘۥ۟ۡۘۤۘۛ";
                    break;
                case -1882339034:
                    c5.OooO0o0(AppContext.OooO00o(), "获取权限失败");
                    str = "ۦۗۙۡۙۨۘۦۥۜۚ۬ۡۘۗۚۖۗ۫ۘۘۛۦۦۘ۠ۖۥۗۤۛۥۡۜۘۥۛۖۘ۫ۙ۫ۗۥۨۦۘۖ";
                    break;
                case -1813016884:
                    str = "ۤۦۖۘۛۦۢۦۗۦۘۙۖۧۜۡۧۥۥۛۗۥۖۘۧۗۘۗۢۤۗۥۘۘۘ۬ۦ";
                    i3 = 0;
                    break;
                case -1377440509:
                    str = "ۧۜۤۢ۠ۢ۫ۗۡۨۖۜ۫ۘۦ۟ۡۧۡۘ۟ۛۥ۟ۧۧۨۦۡۘ۟ۚ۟ۘۜۜۘ۟۠۠۠ۦۖ";
                    break;
                case -834521065:
                    str = "ۤ۠ۜۥۡۛ۬ۜۢۡ۠ۖۘ۠ۧۘۘۡۖۛۨ۫ۜ۬ۚۛۦۡۘۤۧۨ";
                    z3 = z4;
                    break;
                case -696320249:
                    str = "ۦۥۨۨ۫ۡۘ۠ۨۦۙۛۘۘ۠۫ۖۘۤۜۘۘۚۥۢۧۚۦۢۡ۠۟ۢۙ";
                    z = z3;
                    break;
                case -670852635:
                    str = "ۥ۫۬۫۟ۦۧۡۖۘۨ۫۫ۦۜۡۨۘۜۢۧۨ۟ۨۗۥۥ۠ۖ۬ۗ۠۠۟ۚۙ";
                    z = false;
                    break;
                case -216561466:
                    String str2 = "۠ۖ۫ۢۢۜۘۖۗۧۢ۫ۖۛۘۢ۬ۥ۫ۘۤۢۡ۟ۙۨۤ۟ۨۚ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1505719009)) {
                            case -733006180:
                                str = "ۥۚۚۚۙۜۘۜۥۖۘۜۥۧۘۗۧۖۘ۠ۜۦۘ۬ۧۘۛۦۜۗۛۜۖۦۘ۬ۢۛۙۨۘۢۛ۟ۗۗ۟";
                                continue;
                            case 1226344455:
                                str = "ۗ۠ۜ۬ۘۦۤ۬ۢۚۡۘۨ۠ۨ۫ۚ۠ۤۖۨۨۗۦۤ۠ۙۜ۟ۤۧۙۜۘ۫ۧۛۨۗۖۨۚۨۘ";
                                continue;
                            case 1330981899:
                                str2 = "۠ۤۡۢۙۜۨۙ۟ۖۥۚۥۘۡۘۤۜ۠۬ۗۖۘۜۥۖۜۚۘۚۜۘ";
                                break;
                            case 2058483732:
                                String str3 = "ۢۖۖۨۦ۬ۜۦۖۘۘ۫ۛۥۧۡۚ۠ۗ۫ۡۘۘۤ۟ۜۘۨ۫ۖۨۛ۫ۧ۬ۗۖۢۜۘۜۙۜۥۧۥۗۚ۟ۜ۠ۦۦۥۛۡۘۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-362809456)) {
                                        case -643603654:
                                            str2 = "۬ۡۨۖۖ۟ۗ۬ۤۘۥۦۘ۠ۧۜۖۦۦۘۖۨۘۘ۬۬ۨ۠۟ۜۥ۠ۦۘۢۦۜۘۥۘۧ۟ۙۜ۠۫ۦۘ";
                                            break;
                                        case -376436513:
                                            str2 = "ۖ۟ۗ۠ۙۜۜۜۧۘۤ۟۠ۥ۠ۤۛۡۦۥۗۜۘۡۡۦۘۦۚ۟ۜۚۧ۫ۥۤ۫ۥۜ۟ۡۚۦ۠ۦۘۧۖ۫ۢۙۘۘ۟ۧۡۘۗۢۥۘ";
                                            break;
                                        case 652357763:
                                            str3 = i3 < length ? "۟ۚۙۘۧۨۛۘ۠ۛۧۜۨۢۚۡۚۚ۬۠ۨۘۨۚۤۡۘۜۘۧۚۨۘ" : "ۧۚۦۚ۫۠ۥ۟ۜۥۨۘ۫ۤۘۢۖۢۨۜۦۘۜۡۧۚۧ۟ۛۘۚۥۦۦۘ۫ۦۘۧۨ۠۟ۨۦۘۘۥۧۘۢۨۤ۠ۗۖۡۙ۟";
                                            break;
                                        case 2124166123:
                                            str3 = "۬ۨۧۧۖۤۤۨۥۘۦۗ۫ۖ۫ۥ۫۠ۡۘۤۙۥۜۧۘۘۗۦۤۛۚۦ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -195604347:
                    str = "ۘۜۥۖۗۚۘۘۘ۫ۥۡۡۗۖ۬ۖۘۘۜۖۡ۫ۤۗۡۤۡ۟ۙۛۦ۫۠ۜۘۦۦۢۢۗۤ";
                    i3 = i2;
                    break;
                case -9043514:
                    str = "ۤ۠ۜۥۡۛ۬ۜۢۡ۠ۖۘ۠ۧۘۘۡۖۛۨ۫ۜ۬ۚۛۦۡۘۤۧۨ";
                    break;
                case 40762196:
                    str = "۟ۥۡۘۦۧۘۗۥۜۦۘۢۘۡۙۛۥۘۥ۫۠۫ۥۨۥۦۨۘۛۨۥۦۦۜۢۥۘۚۛۧۚ۫ۢۜ۬ۖ۟۟";
                    break;
                case 103354941:
                    String str4 = "ۖۘۡۦۤۘۧۨۛۢۡۢ۫ۧۙۚ۟ۨۜۜۤۧۡۨۘۜۡ۫۟ۚۙۙ۫ۚ۬ۨۡ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1225797105)) {
                            case -1489767369:
                                str = "ۤ۟ۡۨۘۘۘۘۢۘ۠۠ۜۘۛۛ۟ۥۖۧۘۡۢ۫ۡۢ۫ۖۧۦۘۦۧۜۘۢ۫ۨۘ۠ۥۧۖۚۗ۟ۨ۠";
                                continue;
                            case 626274111:
                                str4 = "ۨ۠ۢۢۡۘۦۧۨۧۤۜۘۥۛۘۘۙۢۛۙۙۧۗۛ۠ۤۛۢۤۤۛ۫ۦۤۥۡۜ۟ۙۤۦۖۘۡۥۦۘ۬۟ۛۛۢ۠ۤۜۜ";
                                break;
                            case 1477609591:
                                str = "ۗۛۤۗۨ۫۠ۥۥۦۢۥۛ۟ۢۥۘ۟ۜ۟ۗۢ۟ۤۧۛۚۙۨۘ";
                                continue;
                            case 1739264982:
                                String str5 = "ۧ۬ۜ۠ۨۧۨۡۖۘۤۨۨۘۘۡۢۡۨۙۤۘۤۨ۬ۛۗ۟ۨۥ۬ۤۙۨۙۦۦ۟ۧۥۧۘۖ۫۬ۘۜۜۘۧۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-895955098)) {
                                        case -1613797099:
                                            str4 = "ۤۘۨۡ۠ۥۘۥۚۥۦ۫۟۟ۢۘۘۧۖۚۛ۫ۚ۟ۤۜۥۜ۫ۥ۬ۥۘۛ۬ۡ۠ۙۜۙۘۨۖ۫ۚ";
                                            break;
                                        case -1519506152:
                                            str5 = z3 ? "ۚۜۙۤ۬ۦۘۦ۠ۜ۠ۘۗۡۘۙ۠ۢ۠۬۫ۖۘ۫۬ۗۨ۠ۨ۫ۛ۬۬۠ۦۘۚۘۘ" : "ۚۗۧۘۜۧۢۧۜ۫ۢۦۖۘۡۢۜۜۘۛۜۦۘۨۘ۬۫ۥۘۘۜۡۗ";
                                            break;
                                        case -82534693:
                                            str5 = "ۙۗۘۚۧۨۥۦۜۘ۬ۧ۟۬ۛۘۘۗۚ۬ۙۜۨۚ۠ۡ۫ۘ۫ۤۛۥۙۗۖۨ۟ۨ";
                                            break;
                                        case 486839893:
                                            str4 = "ۖۖۡۘۛ۠ۘۤۘۨۛۗ۠ۙۜۚۜۢۥۘۢۤۖ۫ۚۡۘۛۧۘۢۥۛۢۢۨۛ۬ۧ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 209380609:
                    OooOoOO();
                    str = "۟ۨۜۥۗۨۘ۠ۥۥۖ۟ۘۤۤۥۚۘۥۘۨۢۚ۫ۡۢۥ۟ۢۗۢۗۨۗۤۚ۠ۢۤۧۢۜۧۧۗۦۡۜ۫ۢ";
                    break;
                case 520266539:
                    str = "ۤۛۧۖۥۜۘۙۖۦۘۗۚۜۘۘۜۤۨ۠۟۟ۥۜۘۖۖۚۢۜ۟ۛۛ۬ۗ۟ۗ۠۟ۨۙ۫ۙۥۧۘۢۦۡۢۡۘۘ";
                    break;
                case 525620116:
                    z4 = true;
                    str = "ۗ۫ۚۦ۬ۖۘ۠ۛۘۨۘ۠ۡۜۙۖۨ۠ۙۢۗۚۢۛۘۢۥۘۖۜۧۧۙ۫ۦۦۗۦۨۛۛ۟ۖ";
                    break;
                case 528621224:
                    str = "۠ۧۦۖۘۘۥۖ۠ۤۧۤۜ۫ۖۘۦۗۨۥۢۖۘۤۘۧۘۖۧۛۤ۟ۦ";
                    break;
                case 698168827:
                    length = iArr.length;
                    str = "ۢۛۚۘۢ۬ۛ۠ۖۘۗۡۘۡۚۨ۬ۜ۟ۚۧ۬ۧۜۘۥۚۖ۬۫ۘۘۨۡۗۤۚۡۘۦ۟ۛۦۤ۠";
                    break;
                case 728560907:
                    str = "۠ۨ۬ۡۤۦۨۖۡۘۗۜۨۖۡ۫ۙۛۢۥ۟ۨۤۜۦۘ۟ۢۡۘۙۖۡۥۧۥۘۤۗۜۘ";
                    break;
                case 937728075:
                    finish();
                    str = "۬۫ۢۘۤۥۜ۟ۖۘۛۦ۫ۙۘۥۖۛۧۛۗ۠۬ۥۧۛۖ۬ۡۦ۠ۧۛۧۗۤ۠۠۬ۙۛۚۚ";
                    break;
                case 1141068568:
                    super.onRequestPermissionsResult(i, strArr, iArr);
                    str = "ۘۜۨ۟ۜ۠ۛۨۥۤۙۥۘۥۜۨ۬ۦۘۙۤۚۨ۠۟ۜۦۦۘۛ۫۠۬۫ۥۜۨۡۘۗۖۨۘۖۦۘۘ";
                    break;
                case 1174732964:
                    str = "ۛۤ۠ۦ۫ۗۤۧۧۜ۠ۦ۠۬ۖۘۘۖۛۥۥۥۜۜۧۘ۠ۚۛۛۨۡۙۧۢۙۘۧۨ۠ۧۢ۬ۖۘۛ۠ۡۥۜ۬";
                    break;
                case 1344701734:
                    str = "۬۫ۢۘۤۥۜ۟ۖۘۛۦ۫ۙۘۥۖۛۧۛۗ۠۬ۥۧۛۖ۬ۡۦ۠ۧۛۧۗۤ۠۠۬ۙۛۚۚ";
                    break;
                case 2035203122:
                    String str6 = "ۜ۠ۥۘۢۦۨۘۛۖۥۘۡۗۦ۟ۘۜۘۛۖ۟ۢ۬ۢ۬۫ۦۗۤۡۘۙۗ۬۬۫ۛ۬";
                    while (true) {
                        switch (str6.hashCode() ^ (-1034377935)) {
                            case -1241556638:
                                String str7 = "۬ۘۡۘۚۦۘۘۧ۫ۡۘۗۙۨ۟۫ۢۖۜ۫۟ۡۥۖۧۦۘۤۜۧۘ۠ۡۘۘۗۙۘۥۙۛ۬ۥۘۨۛۖۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-817169181)) {
                                        case -180830403:
                                            str7 = iArr[i3] == -1 ? "ۜۙ۫ۖ۠ۜۤ۬ۘۘۢ۬ۚۡۥۡۗۜۜۘۖۡۥۘۚۡۤۧۚۙۜۥۘ۬۠ۘۘۖۙ۫ۚۦ۠ۨ۫ۦۘۨ۫ۨ۫ۢۖۘ" : "ۨۤۦۘۢۙۥ۫۟ۥۘۡۙۜۨۨۙۢۙۗۛۗۧۨۤۖۖۚۡۘ۟۟ۜۤۥۗۢۙۡۗۢۖۘۡۚۧۡۙ۫ۦ۬ۘۙۘۡۘۖۢۖۘ";
                                            break;
                                        case -173916392:
                                            str7 = "ۙۚۘۘۚۦۦ۟ۤۧ۠۠ۨۡۗۥۨۘۛۢۖۖۘۚۜۡۛۖۘۚ۫ۙۘ۟ۗۚۤۦۘ";
                                            break;
                                        case 1857937488:
                                            str6 = "۫ۢۥۘۗ۠ۘۚۦۗۢۜۨۘۗۨۥۡ۟ۦۢۚۖۘۜۘۢ۬۠ۦۥۖ۟ۛ۫۫ۖ۟ۧۗۛۦۘۥۛۚ";
                                            break;
                                        case 1936991233:
                                            str6 = "ۧۦۖۧ۫ۡۘۦ۫ۘۚۙ۫۫ۥۘۛۙۛۜۥۡ۫ۡۖۨۧۡۘۧۢۥۘۥ۟ۘۘۥۥۨۘۤۗۡۘ۫ۨۨۘۢۜۨ۬ۙۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case -860090094:
                                str = "ۧۨۧ۠ۨۤۡ۫ۚۦۘۤ۬۬ۖۘۧۧۙ۬۬ۥۘ۟۠ۢۙۨ۟ۢ۫ۚ۬ۜۥۥۡۨۤ۫ۛۙۨۦ";
                                continue;
                            case -36786473:
                                str = "ۥ۫۬۫۟ۦۧۡۖۘۨ۫۫ۦۜۡۨۘۜۢۧۨ۟ۨۗۥۥ۠ۖ۬ۗ۠۠۟ۚۙ";
                                continue;
                            case 1265132118:
                                str6 = "۠۠۠۠ۙۜۘۧۗۤۘۘۢۚۙ۬ۖۤۚۡۖ۬ۜۙۢۡۥۘۘۨۖ۬۠۠۠ۜۖۥ۠۫۫ۘۨۘۢۖۦۥ۫ۖۘۘۚۨۘۤۘۦ";
                                break;
                        }
                    }
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        rh rhVar = null;
        String str = "ۖۗۖۘۡۤۘۘۚۚۧۜۡۜۧۛۖۘ۫ۙ۠ۖۙۖۘۗ۟ۦۗۦۦۚۡۥ۬۫ۤ۬ۥۙۤۛۥۡ۫۠";
        while (true) {
            switch ((((str.hashCode() ^ 792) ^ 1013) ^ 173) ^ (-1355202063)) {
                case -1397349280:
                    rhVar = this.Ooooooo;
                    str = "۫۟ۖۚۢۖ۫ۚۢۚۡۖۛ۫ۛۖۜۖۙۤۘۘۜۡ۫۟ۢۜۙ۟ۡۚ۟ۜۚۤۖۘ۫ۘۡۜۡۘۙۤۛۡۗۜ";
                    break;
                case -908779276:
                    rhVar.OooOOOO();
                    str = "۬۟ۢۥۜۦۗۛۧۘۘ۟۫ۙۨ۠ۨۘۘۥۜۘۜ۠ۗۚۤۥۘۢ۟۠ۙۗۦۘۥۖۦ۟ۛۘ۬ۨۥۦۥۦۢۜۧۘ";
                    break;
                case -854219828:
                    str = "ۡ۠۫ۧۦۙۘۘ۠ۙۚۢ۬ۡۡۢۤۘۙ۫۟ۜۡۤ۟ۡ۬ۛۨۘ۬ۚۢۨ۫۬";
                    break;
                case 250643967:
                    return;
                case 1545488057:
                    String str2 = "ۨۡ۬ۤۗۥۥۨ۬ۡ۬ۢۤ۫ۥۘۜۥۘۘۖۥۚۥ۫ۧ۠ۢۖ۠۫ۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1582137346)) {
                            case -1675878514:
                                String str3 = "۬ۥۦۘ۟۟ۦۘ۠ۛۛۦۖۗۜۡۘۥۙۚۧۨۥۥۤۜ۬ۡۧۦۙۗۡۖۤۘۧۨۘۗۛۖۧۤۖۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1316275113) {
                                        case -1460285997:
                                            str2 = "ۗۥۙۜ۟۬ۡۦۦۘۛۙۥۙ۟ۥۘ۟ۧۡۘۥۤۚ۠ۤۧۚۦۖۦۤۨۘۙ۠ۦۙۧۡۖۙۨۘۘ۬ۡۧ۬۠۠ۖۘ";
                                            break;
                                        case -1450603956:
                                            str3 = rhVar != null ? "ۧۨۘۘۛۤۙ۫ۖۨۘۛۤۤۤ۠ۧۗۖ۬ۧ۠۫۟۫ۨۛۢۧۚۘۤۡۛ۟۬ۡ۫ۨۤ۠ۙۘۖۗ۟۟۬ۛۙ" : "۫ۨۧۧۗۢۗۡۘۖۤۙۡۤۘۘۙۚۨ۟ۙۙۛ۬ۢۙۛۡۧۦۘ";
                                            break;
                                        case 284274498:
                                            str2 = "ۗۖۧۘۗ۬ۜۘ۬ۛۜۗۙ۫ۡۨۙۡۥ۬ۖۨۘۘۤۖۡۚۙۨۛۚ۫";
                                            break;
                                        case 612344371:
                                            str3 = "۬ۚۥۘۦۥۨۤۙۨۘ۫۫۠ۖۚ۬۫۬۟ۦ۬ۨۙ۬ۜۘۚۤ۠ۙۤۢۛۗۖۘۘۧۛ۠ۙ۟ۘۚۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -767118951:
                                str2 = "ۛۥۖۘ۫ۜۖۘۗۙۜۘۛ۟ۘۡۜۦۘۤۖ۠ۘ۟ۢۦ۟ۧ۫۠ۧۨۜۘۘۧۘۢۥ۠ۢ۟ۖۡۘۦ۠ۢ۠۠ۧۨۦۘۘۨۜ۠ۦۧۖۘ";
                                break;
                            case -744227269:
                                str = "ۧۚۨۘ۫ۦۨۘۛۢ۠ۖۗۧۤۜۛۗۙۗۨۧۘۜۨۖۘ۠ۡۘۜۨۘۥۚۡۛۙۜۘۤۜۦۢ۫ۡ۠ۜۜۘۜۘۨۘ";
                                continue;
                            case 385402995:
                                str = "۬۟ۢۥۜۦۗۛۧۘۘ۟۫ۙۨ۠ۨۘۘۥۜۘۜ۠ۗۚۤۥۘۢ۟۠ۙۗۦۘۥۖۦ۟ۛۘ۬ۨۥۦۥۦۢۜۧۘ";
                                continue;
                        }
                    }
                    break;
                case 1903365616:
                    super.onResume();
                    str = "ۧۘۜۢ۬ۡۘ۬ۛۢۙۘۜۘ۬ۦۦۤۗۛۧۙ۫۫۫ۡ۠ۜۘۨۘۧۙ۬ۜۘۡ۠۠";
                    break;
            }
        }
    }
}
