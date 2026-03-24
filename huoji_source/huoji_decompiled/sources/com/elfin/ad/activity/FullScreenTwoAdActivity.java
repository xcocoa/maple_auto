package com.elfin.ad.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.expressad.foundation.h.m;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.elfin.ad.R;
import com.umeng.analytics.MobclickAgent;
import java.lang.ref.WeakReference;
import z2.a5;
import z2.b4;
import z2.ei;
import z2.l3;
import z2.m4;
import z2.mc;
import z2.me;
import z2.mh;
import z2.o0oo0000;
import z2.oh;
import z2.p1;
import z2.qh;

/* JADX INFO: loaded from: classes2.dex */
public class FullScreenTwoAdActivity extends BaseActivity implements View.OnClickListener {
    private static final String o00Oo0;
    private static final int o00Ooo = 5;
    public static final int o00o0O = 8;
    public static final int o00oO0O = 1001;
    public static final int o00oO0o = 3;
    public static final int o00ooo = 200;
    private static final int o0OO00O = 103;
    private static final int o0OOO0o = 101;
    private static final int o0Oo0oo = 102;
    public static final int o0ooOO0 = 1002;
    public static final int o0ooOOo = 1003;
    private static final int o0ooOoO = 100;
    public static final int oo000o = 1000;
    private ImageView OooooO0;
    private TextView OooooOO;
    private TextView OooooOo;
    private OooO OoooooO;
    private int Oooooo0 = 0;
    private int Oooooo = 0;
    private boolean Ooooooo = false;
    private OooO0o o0OoOo0 = new OooO0o(this, null);
    private boolean ooOO = false;
    private int o00O0O = 100;

    public class OooO extends l3 {
        public final FullScreenTwoAdActivity OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private OooO(FullScreenTwoAdActivity fullScreenTwoAdActivity, int i) {
            super(i);
            this.OooO0OO = fullScreenTwoAdActivity;
        }

        public /* synthetic */ OooO(FullScreenTwoAdActivity fullScreenTwoAdActivity, int i, OooO00o oooO00o) {
            this(fullScreenTwoAdActivity, i);
        }

        @Override // z2.m3
        public void OooO0O0(int i) {
            String str = "ۦۨۚۜ۠ۡۖۨۦۘۥۤ۟۟۠ۜۥۧۦۘۥۤ۠ۤۛۥۙۚۛ۠۫ۙۖۚۘۨۖۜۘۚۖۥ۠ۢۦ";
            while (true) {
                switch ((((str.hashCode() ^ 388) ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ 314) ^ 2090860952) {
                    case -1680938831:
                        FullScreenTwoAdActivity.OooOO0O(this.OooO0OO).setText(this.OooO0OO.getString(R.string.countdown_time, new Object[]{Integer.valueOf(i)}));
                        str = "ۥۛۤ۠ۘۘۖ۬ۖۘۜ۫۟ۗۜۙۢۘۖۥۢۥۛۙ۬ۜۗۨۦۢ";
                        break;
                    case -1542683013:
                        str = "ۥۖۡ۟۠ۤۧۡۛۗۖۨۘۘۤۦ۠ۘۦۘ۫ۢۦۘۛ۬ۨۤۛۥۘۜۙۘۧۨۧ۬ۗۡۘ";
                        break;
                    case -1132307083:
                        FullScreenTwoAdActivity.OooO(this.OooO0OO);
                        str = "۬ۡۢۤۥۚۢۚۨۢۛۘۛۘۦ۠ۢۘۖۘۛۤۙۗۚۥ۬ۦۤۥۘۧۤۖۘۚ۟ۡۘۢۤۜۡۨۘۘ";
                        break;
                    case -1118073986:
                        String str2 = "ۖۡۦۙۜۢۡۚۗۡ۫۟ۛۦۜۧ۬ۙۖۥۗۨۘۘۧۖۤۛۥ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1878124643)) {
                                case -2060012292:
                                    String str3 = "ۧۡۛۤۚ۫ۖۡۨۥۚۨۘۢ۟ۜۘ۫ۨۤۢ۫ۦۢۨۖۙۢ۬ۖ۫ۚ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1846245060) {
                                            case -1157377030:
                                                str3 = "ۜ۟ۙۥۨۢ۫ۖۥۢۥۦۘۗۡۦۘۙۦۘۨۦۜۘۨۘۧۖ۫ۘ۠ۦۙۘۘۦۘۨ۬ۘۘۛ۟۫ۢ۫۠";
                                                break;
                                            case -968873205:
                                                str2 = "ۢۡ۠ۨ۠ۜۘۥۡۨۘۜ۠۟ۜۤۙۥۚۧ۫ۖۜۨۦۖۨۙۗۙ۬ۦۘۙۜۥۘ۬ۚۥۘ۬ۚۜۚۥۛۖۥۖ۠ۖۥۘ";
                                                break;
                                            case -362760655:
                                                str3 = FullScreenTwoAdActivity.OooOO0(this.OooO0OO) ? "ۡۖۗۘۦۨ۠ۗۜ۫ۥۥۗۡۘۨۨۗۡ۫ۜۧۦ۟ۢ۠ۘۘۚ۫ۘۘۨۡ۫ۛۘۖۛۧ۬ۗۥۛۨۨۖۘۛۚۢۥۚ۠۟ۘۙ" : "ۙ۫ۡ۟ۗۚۗ۟۫ۧۙۚۖۜۧۧۡۜۘۚۘۘۨۢۡ۬ۡۡۧۚ۫ۖ۟ۖۘۢۚۢ۫ۜۤۢ۫ۤ";
                                                break;
                                            case -275364370:
                                                str2 = "ۢۖۧ۫ۘۗۛ۠ۡۨۨۜۗ۠۫ۦۥۧ۬ۢ۫ۖۘ۟ۙۧ۫ۧۖۢۛۖ۟ۧۤ۫ۛۚۙۜۚۜۢۦۘۜۙۗ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1941112494:
                                    str2 = "ۚۦۙۛۢۥۘۦۚۘۙۧۡ۟ۤۥۘ۠۫۫ۡۢۦۤۚۦۢ۠ۗۛ۫ۢ۫۫ۦۗۥ۫";
                                    break;
                                case -1399986349:
                                    str = "ۤۨۥۘ۫۫۟۬ۡۢۦۡۨۘۜۦۤ۠ۡۨۡۢۡۦۜ۠ۘۛ۠ۥۘ۫ۧۜۦۤۜۘۧۖۡۘۘۘۨۘۙ۫ۧۦۙ";
                                    continue;
                                case 1643287888:
                                    str = "ۤۛۖۘ۟ۢۡۘۢ۟ۨۘۤ۠ۦۘ۬ۛۦۘۧۥۥۡۖ۠ۙۜۗۤۤۜ۠ۜۘ۟ۤۨۘۙۖۡۘ";
                                    continue;
                            }
                        }
                        break;
                    case -548848550:
                        return;
                    case -118482006:
                        FullScreenTwoAdActivity.OooOO0O(this.OooO0OO).setVisibility(0);
                        str = "ۤۨۥۘ۫۫۟۬ۡۢۦۡۨۘۜۦۤ۠ۡۨۡۢۡۦۜ۠ۘۛ۠ۥۘ۫ۧۜۦۤۜۘۧۖۡۘۘۘۨۘۙ۫ۧۦۙ";
                        break;
                    case 849997637:
                        str = "ۗۡۜۘۨۡۛۨۡ۫۟ۚۧ۟ۙۖۘۙۢ۟ۥۛۡۘۥۚۨ۫ۛۙۛ۬ۦ";
                        break;
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            String str = "ۧ۠ۧۗۦۚۥۨ۠ۚۢۜ۟۟۠ۤۗۥۘۨۥۥۘۡۦۘۦ۠ۦۨۖۘ";
            while (true) {
                switch ((((str.hashCode() ^ 731) ^ 727) ^ 773) ^ 1038337150) {
                    case -526891708:
                        return;
                    case -38996792:
                        FullScreenTwoAdActivity.OooO0oO(this.OooO0OO);
                        str = "ۢۥۜۧۚۜ۫ۢ۟۫ۥۛۜۨۡۘۚۛۨۘۧۥۨۘۥۘۨۡۧۘ۫ۧۡۡۡۤۤۖۨۦ۬ۨ۟ۙ۫ۚۡۢ۟۬ۥ۠ۡۚۧۗۡ";
                        break;
                    case 1925771160:
                        str = "ۘۘۜۛۥۛۡۦۖۘۢۥۙ۟ۗۛۙۘۙۥۛۖۘ۬ۦۖۧ۬ۗۙ۠ۗ۟ۗۜۦۦۜۘ۠ۡۡۤ۟۫";
                        break;
                }
            }
        }
    }

    public class OooO00o implements Runnable {
        public final FullScreenTwoAdActivity OoooOoO;

        public OooO00o(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
            this.OoooOoO = fullScreenTwoAdActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۙۧۡۘ۠ۥۤۙۡۖۖۨۡۘۘۧۖۧۥۢۨ۫ۨۘ۫ۙۖۘۖ۬ۧۖۖۥۘۢۡ۫۟ۢۦۘۚۡۡۘۚ۟ۗ";
            while (true) {
                switch ((((str.hashCode() ^ 758) ^ 757) ^ 738) ^ 312703547) {
                    case -1606163909:
                        FullScreenTwoAdActivity.OooO0oO(this.OoooOoO);
                        str = "ۘ۟ۙۛۨۘۘۦۜۜۤۤ۫ۢۜۢۖۦۖۘۨۘۛۛۙۗ۬ۦۨۧۧۜۘۢ۠ۘۛۨۖۘۢ۟ۜۘۙۨۛ۠۬ۚۖۘ";
                        break;
                    case -1376032806:
                        return;
                    case 1638477888:
                        str = "۠ۡۛۢۛ۠ۧۚۢۢۚۚۘۥۘۘ۫ۢۦۘۦۙۚۥۘۖ۠ۙۙ۠۟ۖۚۗۨۚۙۤۚۧۚۡۚۜ۠ۢۥ۟۟ۤۥ۫ۖۘۡۚۜ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final FullScreenTwoAdActivity OoooOoO;

        public OooO0O0(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
            this.OoooOoO = fullScreenTwoAdActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۧۦۖۥۥ۬۟ۜۚۚۛۡ۬ۗ۟ۤ۫ۥ۠ۡۚۛۥۡۘۖۥۥۖۘۧۦۖۘۘ۫ۤ";
            while (true) {
                switch ((((str.hashCode() ^ 585) ^ 181) ^ 957) ^ 1029213900) {
                    case -2066621272:
                        FullScreenTwoAdActivity.OooO0oO(this.OoooOoO);
                        str = "ۛۙۥۙۖۥۖۨۦۘۥۤۚ۬ۦۜۖۛۛ۫۫ۗۦۧۦۛۘ۟ۜ۬ۥ۠ۡۘۧۗ۟۟ۗ۬ۧۖ۠ۛۧ۟۫ۧۧ";
                        break;
                    case -167291395:
                        str = "ۤۨۦۘ۟ۜ۠۠ۛۖۖۜۢۘۢۜۘ۫ۨۖۘۧۘۥۥ۫۠ۨ۠ۖۘۡۨۙۖۨۖۘ۫ۧۛۡۡۨۘۛۖ۬ۖۚ۠ۥۙۖۘۙۢ۠۫۫۟";
                        break;
                    case 1909470773:
                        return;
                }
            }
        }
    }

    public class OooO0OO implements mc.OooO00o {
        public final FullScreenTwoAdActivity OooO00o;

        public OooO0OO(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
            this.OooO00o = fullScreenTwoAdActivity;
        }

        @Override // z2.mc.OooO00o
        public void OooO00o(Object obj) {
            String str = "ۧۤۧ۠ۛۡۙۡۙۢۘۖۘۗۦۘۚ۠ۗۦۧۧۖ۟ۥۢۛۗۙۚۥۘ";
            while (true) {
                switch ((((str.hashCode() ^ 844) ^ 302) ^ 36) ^ 1334340285) {
                    case -1703141306:
                        mc.OooO0oo().OooO0oO();
                        str = "ۥ۟ۦۘۜۘۤۚ۫ۜۜۤۦ۠ۢ۫ۦۗۙۜ۟ۗۛۖۜ۫۠ۛۤۖۥۘ۫ۥۤ۬ۙۛۗ۫۠ۧۤۦۡۚ۫ۗۥۢۦۛۘۘ۬۬ۥۘ";
                        break;
                    case -488007938:
                        str = "۟ۨۘ۠ۙۦۘ۫ۛۚ۫ۗۦۜۘۘۗۦۘۖ۫۫۟ۖۦ۬۟ۡۖۧۘۦۨۥۘۗ۟ۡۥ۠ۧۖۧۥۘ۬ۨۗۚ۬ۥۘۙۛۥۦۙۦۘ";
                        break;
                    case 547595420:
                        str = "ۤ۟ۚۚۥۙۖۤۘ۫۬۟ۤۘۘ۫ۜۛۤۢۤۢ۟ۦۘۧۗۦۜۧۘۚۧۥۘ۬۟ۗۜۙۘۘ۠ۗۨۘۜۛۧۧۧۖۘ";
                        break;
                    case 735246969:
                        return;
                    case 1920077824:
                        qh.OooO0O0().OooO0o0(this.OooO00o);
                        str = "۬ۡۦۛۘۥۘۙۚ۫ۤۗ۫۬ۙۘۘۨۨۘۥۡۖۛ۟ۘۧ۠۬۟";
                        break;
                }
            }
        }
    }

    public static class OooO0o extends Handler {
        private WeakReference<FullScreenTwoAdActivity> OooO00o;

        private OooO0o(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
            this.OooO00o = new WeakReference<>(fullScreenTwoAdActivity);
        }

        public /* synthetic */ OooO0o(FullScreenTwoAdActivity fullScreenTwoAdActivity, OooO00o oooO00o) {
            this(fullScreenTwoAdActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            FullScreenTwoAdActivity fullScreenTwoAdActivity = null;
            mc mcVarOooO0oo = null;
            int i = 0;
            long j = 0;
            mc mcVarOooO0oo2 = null;
            int i2 = 0;
            long j2 = 0;
            long j3 = 0;
            int i3 = 0;
            mc mcVar = null;
            String str = "ۖۜۖۘۤۛۙ۫ۘ۫ۜ۬ۜۧۦۦۘۜۜۜۘۡۘۛۨۨ۟ۙۘۡ۫ۚۡۘۨۢۚۙۛ۟ۘۛۜۛۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 23) ^ UiMessage.CommandToUi.Command_Type.SET_ENABLED_VALUE) ^ 189) ^ 53115846) {
                    case -1179490236:
                        i2 = 2;
                        str = "ۛ۫ۡۘ۬۟ۜۚۜۡ۬۬ۖۘ۠ۨۧۚ۬ۙۗ۟ۥۘ۫ۦۘۢۢۢۨۖۡۘۜۨۤۨ۟ۖ۠۠۫ۖۧۥۥۡۚۘۨ";
                        continue;
                    case -1129665561:
                        String str2 = "ۚۚ۬ۦۜۜۤۚۨۘۥۦ۫ۖۥۧۘۚۤۛۗۛۦۘۢۨۡۦۦۦۖۘۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 518942558) {
                                case -2049010463:
                                    break;
                                case -1192572049:
                                    str = "۠ۥۜۘۗ۟ۘۦۙۦۘۗۤۢ۟ۜۚ۫ۤۚۡۦۡ۬ۙ۟ۗ۠ۜۥۧ";
                                    break;
                                case -812912724:
                                    str2 = "ۛۖۢۙۡۗۛۡ۬ۤۗۖۘۖۥۡۘ۟ۥۨ۫ۚۤۦ۟ۜۘۛۥۜۘ۠۫ۘۘ۫ۖۖۚۙۛۖ۠۟ۥۤۛۧۖۡۘ۟ۙۛ";
                                    break;
                                case 704910960:
                                    String str3 = "ۚ۠ۨۘ۬ۨۚ۠ۢۘۘۜۛۗۜۢۨ۟ۢۜۨۜۜۥۥۖۘۧ۫ۘۘۡۧۙۤ۫ۥۥۚۘۥۨۨۘۢ۫ۦ۠ۢۛۖ۠ۦ۟ۘۡۗۡۨ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-1476976320)) {
                                            case -1851023515:
                                                str2 = "ۚ۠ۢۖۘۛ۬ۡ۬ۘۘۦ۫ۚ۟ۦۚۚۥۥۧۧۦۘۜۚۤ۬ۧ۟";
                                                break;
                                            case -1818378928:
                                                str3 = "ۘ۠ۡ۫ۥ۬ۢۥۘۛۖۡۗ۟ۜۘۜۡ۠ۚۜۡ۠ۜ۟ۖۤۘۘۙۜۧ";
                                                break;
                                            case 226647608:
                                                str2 = "ۗۗۜۘۗۥۖۚۗۦۘۤ۟ۘۤۘۙ۬ۚۥ۬ۦۥۘ۟ۦۡۛۦۤۗۥۦ۫ۦۥۘۧۦۘۨۨۘۘۦۧۧۛۦۛۜ۫ۥۘ";
                                                break;
                                            case 1120631732:
                                                str3 = fullScreenTwoAdActivity != null ? "ۛۦ۬ۜۘۧۚۦۥۧۚۡۢۦۘ۟۟ۦۘۖ۟۟ۙۡۨۖۥۥۡۥۧۦۡۜۥۢۜۘۙۜۚۧۛۤۡۘۘ۫ۤۙۢۤۤۤۦ" : "ۥ۟ۥۘۡۚۚۧۗۡۘۙۡۡۘ۫ۧ۠ۗۜۤ۠ۢ۠ۡ۬ۜۜۥۥۘۜۘ۠۬ۘۡۜ۟";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -1000401782:
                        fullScreenTwoAdActivity = this.OooO00o.get();
                        str = "ۥۨ۫ۙۤ۠ۧۦ۠ۥ۬ۡۘۧۦۨۥۗۜۡۦۧۡ۟۟ۜۧۡۘ۠ۤۨۘۢۗۢ۠۠۬ۦۜۢۨ۠ۖۘۚۢۦۦۧۦ";
                        continue;
                    case -791478387:
                        i = 1;
                        str = "۟ۘۘۘ۠ۙۘۘۢۜۦۘ۟۠ۡۘ۠۬۬ۦۗ۫ۗۗۖۘ۟۟ۙۛۨ۫ۖۧۘۚۛۧۚۙۖۘۤۤۦۘۨۚۦۚ۫ۦۘۙۛۜ";
                        continue;
                    case -756738337:
                        str = "ۢ۠ۜۘۛ۠ۢۗۗۨۗ۬ۨۘۜۗۜۖۥۧۘۗۖۧۥۦۖۤۧۥۘۚۖ۟۫۟ۦۦۨ";
                        continue;
                    case -714796317:
                        FullScreenTwoAdActivity.OooO0oo(fullScreenTwoAdActivity);
                        str = "ۧ۠ۙۙۤ۠ۙۘۥۧۢ۬ۧۧ۟ۗۚۧۛۡۦ۬۟ۖۥۤۤ۬ۗۖۘۖۘۘ۬ۖۨ";
                        continue;
                    case -565599601:
                        mcVarOooO0oo2 = mc.OooO0oo();
                        str = "ۡۘۛۤۥۖۘۥۥ۟ۤ۠۫۫ۤۡۘ۟ۘۧ۠ۛ۬ۗۦۘۘ۟۫۠ۖۤۖۘۙۧۖۘۛۘۥۘۥۨۧۘ۠ۜ۠";
                        continue;
                    case -291658234:
                        mcVarOooO0oo = mc.OooO0oo();
                        str = "ۖۖۙ۟ۚۜۘ۫ۥۧۘۨۤۖۧۡۘۘۜۛۥۘ۟ۗۖۘۙ۟ۨۘ۟ۡۧۦۘۤۢۛۙ۬ۧۡۤ۠ۘ۠ۧۨ۟ۨۥۦۖۥۘ";
                        continue;
                    case -177632150:
                        str = "ۤۨۛ۬ۛۡۘ۫ۗۨۘۙ۫۟۟ۧۛۨۦۦۘ۫ۙۧ۬ۢۘۤۦۚ۠ۤۘۘ۟ۧۜ۟ۗۢۥۙ۫ۤۧۚۖ۟ۜۘۙۗۖۘ";
                        j3 = j2;
                        continue;
                    case -132375917:
                        j2 = 2;
                        str = "ۚۘۡۘۘۧۨۦۖۡۘۛۘۛۜ۟۠ۤۨۘۘۧۚۤ۟ۗ۫ۧۧۥۘۤۥۘۘ۟ۢ۫ۡ۟۟۠ۤۡ۫";
                        continue;
                    case 173294381:
                        j = qh.OooO0O0().OooO0O0.Id;
                        str = "۟ۗ۬۠ۚۡۘۢۥۤۖۜۡۙۧۦ۬ۗۖۨ۬ۦ۬۠ۜۦۛۥۘ۫ۚۡۢۘۨۛۨۛۡۤۨۘۖۢۙۧۦۡۙۘۘۥۢۖۧۡ۟";
                        continue;
                    case 401697819:
                        switch (message.what) {
                            case 1001:
                                str = "ۛۚ۠۬ۥۡۘۙۥۨۘۛۗۢ۫ۛ۬ۘۥۖۥۧۘۤۗ۟ۢۤ۬ۡ۠ۖ۠ۧۦۜۜۤۗۨ۬۫ۛ۫";
                                break;
                            case 1002:
                                str = "۟ۚۥ۫ۗۡۘۨۤۧۗ۟ۡ۬ۨ۠ۤۖۧۨۤ۟ۘۛ۬ۛۗ۫ۧۥۨۖۛ۬ۜ۠۠";
                                break;
                            case 1003:
                                str = "ۡۡۖۘۚۦۨۤۦۡۘۜۜۥۘۨۨۡۘۥ۟۟۠ۗۢۚۙۢۙ۫ۘۤۘۘۗ۟ۨۚ۟";
                                continue;
                            default:
                                str = "ۤۢۨۘۘۘۡۥ۫ۥۘۖۡۢۨۨۘۚ۬ۢۚۢ۫ۢ۟ۗۚۧۥۚۖۘۙۜ۠ۚۚۢۨۡۤۤ۠ۛۗ۟ۛۦۤۥۘۛۜۚۙۗ۫";
                                break;
                        }
                        break;
                    case 424778327:
                        str = "ۙۨ۬ۡ۠ۛ۫۠۫۟ۡۥۘۡۤ۟ۘۨ۫۬ۡۥۥۡۧ۠ۜ۠ۦۥۡ";
                        j3 = j;
                        continue;
                    case 496833395:
                    case 833446656:
                        break;
                    case 623330120:
                        str = "۟۟ۙۧۦۥۘ۫ۙۡۘۦ۟ۤۜ۠ۦۘ۠ۚۜۤۖۜۘۛۙۘۛۥۥۘۚۚ۠۬ۘۖۚۥ۫";
                        continue;
                    case 1156161342:
                        str = "ۗۙۢۜۙۛۘۚ۟ۢۛۨۖۘۤۤۨۚۢۥۦ۠ۗ۠ۚ۫ۥ۟ۥۘۢ۬ۗۥۜۦ";
                        i3 = i2;
                        continue;
                    case 1191901115:
                        mcVar.OooO(fullScreenTwoAdActivity, i3, 2, j3);
                        str = "ۨۖۘۘ۟ۡۨۘ۬۫ۦۨۖۖۘۢ۟۫ۥۖ۠ۗ۬ۦۢۗۢۤۧۦۘۘ۠۠";
                        continue;
                    case 1201953294:
                        return;
                    case 1761659406:
                        str = "ۗۦۙۜ۠ۙۛۛۤۡ۠ۦ۫ۖۖۚ۟ۦۨۦۛۥۛۙۗۚ۟ۡۙۜۘۥۛۘۤۧۜۜۘۤۙ۫ۖۥۘ۟۠ۥۚ۬ۙۥۛ";
                        mcVar = mcVarOooO0oo;
                        continue;
                    case 1808646507:
                        str = "ۥۛۢ۠ۜۘۘ۬ۥۙۛۨۛۗۛۡۘۤۘۙۚۛ۠۟۬ۘۘۚۖۥۢ۫ۘۘ";
                        mcVar = mcVarOooO0oo2;
                        continue;
                    case 1861846661:
                        str = "ۥۛۢ۠ۜۘۘ۬ۥۙۛۨۛۗۛۡۘۤۘۙۚۛ۠۟۬ۘۘۚۖۥۢ۫ۘۘ";
                        continue;
                    case 2048636548:
                        str = "ۜ۫ۢ۫ۡۧۤۤۥۜۤۥ۫ۘۛۚۜۖۚۨۥۘ۫ۜۚ۠ۙۖۘۚۚۘ۬۠ۨۘۨۙۥۖ۟ۤۜۡۗ";
                        i3 = i;
                        continue;
                }
                str = "ۨۖۘۘ۟ۡۨۘ۬۫ۦۨۖۖۘۢ۟۫ۥۖ۠ۗ۬ۦۢۗۢۤۧۦۘۘ۠۠";
            }
        }
    }

    static {
        String str = "ۡۧۖۥۨۜۜۙۥۨۡ۬ۤۘۨۦۢۛۧۥۦۘۚۦۚۢۚۜ۟ۥۦۘۙۨ۟ۛ۬ۧ";
        while (true) {
            switch ((((str.hashCode() ^ 761) ^ 295) ^ 894) ^ 741057321) {
                case -1222012630:
                    o00Oo0 = FullScreenTwoAdActivity.class.getSimpleName();
                    str = "ۜۤۧۛۢۗۧۨ۠۫ۥۢ۫ۧۨۧۘۢۨ۫۟ۨۜۧۦۨۖۦۧۥۦ۬۫ۧۤۙۧۛۥۨۗ۟";
                    break;
                case -447027691:
                    return;
            }
        }
    }

    public static /* synthetic */ int OooO(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        int i = 0;
        String str = "ۗ۠ۙۜۗۖۛۧۦۘۜۦ۟ۗۥ۫ۦۤ۠ۦۗۚۜۨۧۘۡۘۦۘۨۘۜۘ۬ۡۥۜ۟ۗ۟۫ۗ۫ۜۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 352) ^ UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT_VALUE) ^ UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE) ^ 1976136695) {
                case -1529102522:
                    return i;
                case -36702276:
                    i = fullScreenTwoAdActivity.Oooooo;
                    str = "۬ۦۖۤۘۦۙۥۧۘ۟۫ۥۘۨۢۦۘۦۢۧۛۢۙۡۚۡۡۤ۬ۖ۫۬ۘۧ۫ۤۚۡۢۙۥۛ۬ۨ۬۠ۨ۬ۖۚ";
                    break;
                case 1436916980:
                    str = "۫ۢۙۚۗۤۛۥۘ۬۬۠ۥ۫ۜۡۨ۟ۖۨ۟ۛۜۡۘۙۖۢۧۦۜۚۗۖۘۛۗۡۥۚۥۘ۬ۡۘۘۧۢۡ۫ۜ";
                    break;
                case 1449596481:
                    fullScreenTwoAdActivity.Oooooo = i + 1;
                    str = "۫ۤۙ۟ۗۡۘۛۖۘ۬۟ۘۛ۠ۡۚۗۗ۫ۧۜ۠ۢۜۘ۬ۜۚۢۚۛ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooO0oO(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        String str = "۬ۤ۟ۛۡ۬ۜۜ۟ۡ۫ۖۙۖۧ۟ۧۗۗ۠ۘۨۚۦۘۗ۠ۦۢۙۡۗۨۛۜۖۛۗۜۘۖۗۢ۠ۙۥ۬۫۫ۘۨۥۘۘۛۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 343) ^ 92) ^ 551) ^ (-1738100259)) {
                case -1720068800:
                    return;
                case 151742368:
                    str = "ۙۧۚۧ۠ۖۗۥ۟ۧۛ۫ۜۥۨۘۚۙۢ۟ۘۘۙۦ۟ۜ۠ۗۧ۟ۘۥۙۢۙۥ۠";
                    break;
                case 793219880:
                    fullScreenTwoAdActivity.OooOo0o();
                    str = "ۘۢۧۖۨۛۛۢۜۡۨۦۘۡۜ۠ۦۙۘ۟ۘۦۡ۟ۨۡۜۡ۫ۚۢ۬ۖۘۥۗۦۡۧۨۘۙۛ۠ۛۗۘۙۜۦۘۡ۟ۚۙۡۚ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooO0oo(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        String str = "ۙ۬ۘۘۢ۠۠ۡ۠ۗۡۤۧۗ۠ۨۚۨۧ۬ۖۦۛ۫ۜ۠ۧۛۜۦۧۘۚۜۚۚ۫ۚۤۢۡۘ۬ۨۢ";
        while (true) {
            switch ((((str.hashCode() ^ 694) ^ UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE) ^ 599) ^ (-2069872097)) {
                case -1559952418:
                    fullScreenTwoAdActivity.OooOOOo();
                    str = "۬ۤۦۘ۫ۦۡۘۚۚ۬۬۬ۡۘۨۨۚۖۨ۟ۥۧۜۤۦۦۘ۠ۜۤۗۖۙۧۡ۫ۨۖۧۘ";
                    break;
                case 304620560:
                    str = "ۨۥۤۦ۬ۜۦۧۙۦۨۡۤۥۨۘ۠ۢۤۜۢۦۥۦ۟ۧ۟ۨ۫ۥۘۢۢۨۘۖۥۥۗۦۧۘ۠ۨ۟";
                    break;
                case 598993836:
                    return;
            }
        }
    }

    public static /* synthetic */ boolean OooOO0(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        String str = "ۥۥۦۘۜۗ۬ۢۨۘۤۢۘ۟۠ۨۡۘۚ۫ۙۡۘۗۧۨۘۖۨۛۤۧۜۘۛۚۖۘۢ۬ۗۢۜۗۦۢۦۗۖۜۘ۫۟ۡۘۚۗۥۘۖۛۗ";
        while (true) {
            switch ((((str.hashCode() ^ 925) ^ 851) ^ 445) ^ (-479243463)) {
                case 1008779511:
                    return fullScreenTwoAdActivity.Ooooooo;
                case 1909518569:
                    str = "ۧۖۨۘ۟ۢۨۖۢۚۛۨ۠ۢ۬ۖۘۤ۟ۧۦ۫ۙ۠ۨ۬ۡۤۥۨۜۘۙۢۘ۟ۡ۟ۗۡۨۘۤۦ۬ۨۦۥۘۥۡۡۘۥۘۡۢ۬ۖ";
                    break;
            }
        }
    }

    public static /* synthetic */ TextView OooOO0O(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        String str = "ۘ۬ۤۜۡۖۘۗۗۛ۠ۥ۫ۖ۠۫ۡۖۙ۫۬ۨ۠۬ۢۨۗۡۙۜۦۙۙۗ۫ۘ۬ۙۜۘۧۛۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 33) ^ UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE) ^ 141) ^ (-1614262567)) {
                case 193338947:
                    return fullScreenTwoAdActivity.OooooOo;
                case 986105481:
                    str = "۟۫ۦۢۘۧۡۙۥۘ۫ۤۛۢۤ۟ۨۖۤۢ۠ۦۘۜۦۧۘ۟ۛ۬ۛۗۡ";
                    break;
            }
        }
    }

    private void OooOO0o() {
        String str = "ۖۖۜۘۦۖۙ۟۟۫ۡۥۖۜ۟ۤۛۘۛۢۦۡۧۢۡۘۥۤۘۤۡۢۜۢۛ۟ۛۨۙۢۛ۫ۡ";
        OooO oooO = null;
        while (true) {
            switch ((((str.hashCode() ^ 222) ^ 583) ^ 668) ^ 160959500) {
                case -1735565007:
                    return;
                case -1378342226:
                    str = "ۙ۠ۥ۠۬ۨ۟ۗۨۛۖۛۧ۬ۜۖۜۘۧ۟ۥ۟ۧۖۦ۠ۚۨ۠ۨۘ";
                    break;
                case -940466857:
                    oooO = this.OoooooO;
                    str = "۫ۡۨۘ۬ۧۡۘۙ۟ۖۘۨۛۤ۫ۖۦ۟ۨۘۧ۠ۖ۬ۗۢ۫۫ۖۘۗۗۨۘۤۢ۠۠ۘ۫ۤۡۦۘ۠ۙۖ";
                    break;
                case -829819784:
                    oooO.cancel();
                    str = "ۧۤۢۗۛ۬ۜۦۡۘۨۚۗ۟۟ۡۘۚۗ۟ۚۘۡۗ۫ۖۥۜۜۘۥۧۡۙۗۡۘۤۨۦ۟ۢۚۜۖۘۤ۟ۥۘۗۛۜۘۡۛ۫ۡۛۥۘ";
                    break;
                case 297027709:
                    this.OoooooO = null;
                    str = "ۥۖۧ۫ۙۚۘۘۗۚۨۥۤۘۜۧ۟ۨۢۗۨ۫ۨۖۘ۠ۘۨۘ۟ۘۚۚۧۗۚ۫ۙۗۛۤۢ۫ۦۘ";
                    break;
                case 1219184901:
                    String str2 = "ۡۛ۬ۡۧۜۘۛۥۧۘۨۙۡۙۨۘۦۨۢ۬ۧۙۘۨۦۘۤۘۚۥۜۢۖۙۥۧۙۡ۠ۘۤۗۛۥ۬ۥۡۘۤۜۖۘۜۖۢۨۨۗ";
                    while (true) {
                        switch (str2.hashCode() ^ 1942956617) {
                            case -1574013510:
                                str2 = "ۦۗۥۘۚۖۗۙۨ۬ۖۦۜۘ۟۠ۡۡۢۛۤۙۡۘۖۛۦۘ۬ۤۧۡۤۦ";
                                break;
                            case -1496620447:
                                String str3 = "ۖۦۡ۫ۨۢۜۦۘۗۨۧۘۦ۬ۘۘ۟ۡۦۘۖۖ۫ۘۡۗ۬ۦۘۘ۠ۘۜ۫۟ۚۨۗۦ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-704007780)) {
                                        case -1338226872:
                                            str2 = "ۦ۬ۤۜ۫ۖۗۖ۬ۙۘۧۤۧۨۙ۬ۜۘۖۥۤ۬۫ۘۢۖۜۨۤۤۛۦۚۛۜۘ۬ۧۚ۫۬۬۬ۚۨۘ۫ۘۡۘ۠ۨۨۘۦ۠ۡۘ";
                                            break;
                                        case -971652706:
                                            str3 = oooO != null ? "ۚ۫ۨۘۤۗۖ۠۫ۗۛۚۜۨۙۦۘۢۛۖۘۜۗ۫ۜ۬ۨۗۢ۫ۛۤ۟۟ۛ۠ۧۧۡۘۧۦ۬ۛۜۗۖۛۜۧۨ" : "۠۬۬ۛۚۦۘۡۦۤ۟ۡۘۘۙۤ۟ۧ۟ۤۡۗ۬۟ۤۥ۬ۢۨۘۢۗۜۢۥۙۧۦ۫ۡۤۥۘ۬ۚۨ";
                                            break;
                                        case -386935773:
                                            str2 = "ۛۡۜۜۚ۟ۥۘۡۤۤۘۜۚۘۘۥ۬ۦۘۦ۫ۦۘۘۥۤۢۚۨ۫۬ۡۘ۠۬ۦۘۛۤۜۘۗۜۘۜۢۖۘۛۖ۫ۦۧۙ";
                                            break;
                                        case -353120353:
                                            str3 = "ۡۢ۫ۥ۟۟ۗۜۘۛۚۦۨۚۧۗۧۢۙۦۦۡ۟ۨۤۡۜۘ۫ۥۤ";
                                            break;
                                    }
                                }
                                break;
                            case 67148837:
                                str = "ۥۖۧ۫ۙۚۘۘۗۚۨۥۤۘۜۧ۟ۨۢۗۨ۫ۨۖۘ۠ۘۨۘ۟ۘۚۚۧۗۚ۫ۙۗۛۤۢ۫ۦۘ";
                                continue;
                            case 1342068362:
                                str = "ۚۨ۬۬ۧۚۖ۠۟ۧۢۤۜۙۧۙۚۦۗۨۦ۠ۖۙۘۨۢۦۥۧۨۡۖۘۙۙۖۘ";
                                continue;
                        }
                    }
                    break;
                case 1874790422:
                    this.Oooooo = 0;
                    str = "۠ۗۘۧ۟ۡۘۜۗۘۘۤۘۘۘۤۙۖ۬ۧ۠ۧۢۤ۬ۖۡۘ۬ۢۦ۬ۨ۬۬ۙ۫ۢ۫ۛۘۨۖۢۘۖۥۨۦۘۗۡۨ";
                    break;
            }
        }
    }

    private void OooOOO(String str) {
        String str2 = "ۜۦۥۙۛۨۘۜۤۧۘۧۛۛۛۨۘۧۤۥۗ۟ۙۜۤ۠۫ۨۚۨۚۙ";
        p1 p1VarOooO0OO = null;
        p1 p1VarOooO0OO2 = null;
        while (true) {
            switch ((((str2.hashCode() ^ 906) ^ 404) ^ 943) ^ (-533938699)) {
                case -1973436748:
                    p1VarOooO0OO.OooOOoo(o0oo0000.OooO0O0);
                    str2 = "ۧۜۨۘۡۧ۫۬ۦۧۘۥ۫ۡۧۜۦۨۘ۫ۜۦۘ۟ۨۥ۫ۛۢ۠ۢۜۚۚۙۥۗۛۚۨۜۨۤۢۨۧۘ۠ۘۨۨۗ۠۟ۥۨ";
                    break;
                case -1763992211:
                    p1VarOooO0OO = m4.OooO0OO();
                    str2 = "ۥۖۦۘۖۚۨۥۢۖۖ۠ۢ۟ۧۖۨۤۗۦ۬ۚۙۨۥ۫ۤ۫۬ۙ";
                    break;
                case -1747629339:
                    String str3 = "ۤۦۜۖۛۘ۫۟ۥۦۜۧۘ۫ۘۧۘۛۛۜۗۚۘۥ۫۫ۙۘۦۗ۬۫ۖۦ۬ۚ۟ۦۘ۫ۤۛ۫۬۫۫ۚ۬ۦ۫۟";
                    while (true) {
                        switch (str3.hashCode() ^ (-71828694)) {
                            case -220582064:
                                String str4 = "۬ۚۥۥۜۡۘۡۜۦۧۦۦۘ۫ۗۨۘۙ۫ۥۤۚۘۘۤ۠ۛۖ۟ۜۤۦۧۘ";
                                while (true) {
                                    switch (str4.hashCode() ^ 1227180899) {
                                        case -1775771275:
                                            str3 = "ۢ۫۠۟ۧ۟۠۠ۖۚۛۚۦۥۦۥۜۖۙۥۡۚۤۛۧۖۘۘۖۖۘۖۥۚۤ۬ۥۘ۬ۨۖۖ۠ۤۘ۠ۖۘۛۢۜۘۨۡۡۘۖۗۘۘ";
                                            break;
                                        case -737005739:
                                            str4 = "ۡ۬ۥۘۨۡۨۛ۫ۖ۫ۚ۬ۧۢۥۗ۫۟۫ۥۗۤۗۦ۟ۨۧۥ۫ۚۚۢۛۚۖۨۗ۫ۨۦ";
                                            break;
                                        case -709358909:
                                            str3 = "ۥۗۛۨۚۘۨۤۘۘۦۖۙۚۤۨۢۨۖۘۗ۠ۢۛۙۖۢۜۛ۬ۢۙ۟۫ۙۛۖۗۧۥۘۖۧۘۘ";
                                            break;
                                        case 1334433342:
                                            str4 = str.endsWith(".gif") ? "ۛۤۥۙ۬ۜ۠ۛ۫۠ۙ۬۫ۨۦۧۜۘۙۚ۬ۛۨ۬۬ۦۖۜۦۙۚ۠ۖۘ۬ۧۛ۬ۗۜۘ۠ۢۦ" : "ۢۙۦۢ۬ۚۖۦ۬ۡۛۢۖۤۨۗۡۘ۫۠ۦۥۢۚ۫ۦۖۛ۬ۗ۠ۨۘۘۡۥۛۧۤۢۡ۟۬ۗۚۗۖ۫ۤ۫ۦۘۢۤۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 877687151:
                                str3 = "ۧ۫۟ۘۨۡۢۨۘۘۚ۬ۖۨۘ۬ۙۤ۟ۘۥۛۛ۠ۖۚۦ۟ۚۦۘۜۙۨۘۥۙۜۘۤۚۦۤۥۖۘ۫ۤۙۜۤۦۘۧ۠ۚۡۘ۬";
                                break;
                            case 1054095256:
                                str2 = "ۤ۟۠ۥۧۖۘۨۛۥ۫۬ۘۜۤۚۦۘۤۛۘۘۜۗۜۥۛۤۘۛ۟ۚۖۦۘۤۦ۬ۖۢۙۙۜۧۘۤۙۗ۟ۖۛ";
                                continue;
                            case 1150727102:
                                str2 = "۟۫ۦۘۛ۫ۜۘۢۡۘۘۢۨۘ۠ۦۨۦۤۡۘۧۦۨ۬ۗ۟ۧۙۨۢۧۖۧۘۘ۟ۘۘۨۜۚۛۗۖۘۤۙۨۘۖۨۛۗۙۤۛۨۡ";
                                continue;
                        }
                    }
                    break;
                case -1195102981:
                    str2 = "ۛۜۧۚۘ۟ۥۛۘۢۥۚۢۚۡۦ۫ۧۖ۠ۦۚۙۡۡ۫ۘۘ۟ۘۥۘۤۚۘۘۢۨ";
                    break;
                case -920284431:
                    OooOOO0();
                    str2 = "ۢۥۥ۬ۥۚۜۢ۠ۦۛۖۘۖۗۡۘۢۜۡ۫ۘۙۡ۟ۛ۠ۦۧۚۧۧۗ۬ۤۛۖ۠۬۠ۘۘۖ۠ۙۦۡۢۧۘ۠";
                    break;
                case -620079302:
                    str2 = "۟ۗۖۧۖ۬ۨ۟ۗۤۗ۠ۖ۬ۛۜۚۦۡۦ۟ۚۗۦۘۢۡۡ۠ۨ";
                    p1VarOooO0OO2 = m4.OooO0OO();
                    break;
                case -507947614:
                    str2 = "ۜۤۛۘ۬ۙۖۜۨۘۚ۟ۖۘۛۘ۟ۖۥ۬ۚۢۢ۬۠ۙۛۡۘ۟ۦۢۨۗۜۘۚۥۗۦۘۦۤ۬ۘۥۦ۟۟ۢۙۜۘۖۗ۟۠";
                    break;
                case -332459964:
                    m4.OooOO0O(this, str, this.OooooO0, p1VarOooO0OO);
                    str2 = "ۜۤۛۘ۬ۙۖۜۨۘۚ۟ۖۘۛۘ۟ۖۥ۬ۚۢۢ۬۠ۙۛۡۘ۟ۦۢۨۗۜۘۚۥۗۦۘۦۤ۬ۘۥۦ۟۟ۢۙۜۘۖۗ۟۠";
                    break;
                case 815796213:
                    m4.OooOOO(this, str, this.OooooO0, p1VarOooO0OO2);
                    str2 = "ۛ۫ۦۘۡ۬ۜۘۘ۬ۡۘۗۛۛ۟ۢۢۥۗۗ۬ۦ۟ۜۜۘ۠۬ۖۡ۠ۥۗۘۘ۟ۘۚۜۜۙ۫ۧۙ";
                    break;
                case 1573870059:
                    str2 = "ۥ۬ۗۡۘ۠ۖۘۙۚۘۦۘۨ۫ۥۜۦۥۘۗ۟ۛۖۜۤ۬۫ۡۘۖۚۢۜۚۨۘۡۢۖۥ۠۬ۢۨۛ";
                    break;
                case 1593470260:
                    p1VarOooO0OO2.OooOOoo(o0oo0000.OooO0OO);
                    str2 = "ۦ۠۬ۨۥۜۖۗ۠ۥ۫ۛۘۙۦۘۤۥۛۚۥۗۦۥۥۘۗۖۡۥۨۦۡۦ۟ۜۥ۠ۧۦۘۘۘۜ۬";
                    break;
                case 2126971170:
                    return;
            }
        }
    }

    private void OooOOO0() {
        String str = "ۘ۫ۨۘۖۘۘۤۨۧ۬ۤۜۗۤۨۤۥۧۦ۬ۡ۬ۦۚۚ۬ۥۗۙۘۘ";
        int i = 0;
        OooO0o oooO0o = null;
        OooO0o oooO0o2 = null;
        int i2 = 0;
        int i3 = 0;
        OooO0o oooO0o3 = null;
        int i4 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 596) ^ 705) ^ 54) ^ 777964842) {
                case -2044560951:
                    str = "ۜۢۜۗۨۢۙۚۦۚ۫ۨۜۡ۟ۥۖۘۧ۬ۦۧۤۤۙ۬ۜۛۧۘۘۤ۠ۚۤۘۘۦۘ۫ۙ۫ۛۖۛۜۨۧۢۛۥ۫ۢۜۡۘ";
                    continue;
                case -1692949810:
                    i3 = 1001;
                    str = "۫ۜۡۚۛۘۘۚۛۘ۬ۡۥۘۚۤۛۘۥ۠۠ۘۗۢۘۡۘۧ۬ۖۘۢۖۡۘ";
                    continue;
                case -1665307087:
                    OooOO0o();
                    str = "ۧۖ۠ۥۢۘۦۛۗۛۖۙۦۚۨۘۧۙۖۘۧۘ۠ۧۦۡۘۡۢۡۤۨۖۘۡۤۡۡۦۤۛۙۘۦ۫ۛ۠ۦۦۜۧۡۘۨۥۚۨ۟ۜۘ";
                    continue;
                case -876335143:
                    oooO0o3 = this.o0OoOo0;
                    str = "۠ۧۙۤ۠ۤۡۛۚ۟ۙۥۘۦۦۘۙۢۨ۠ۘۜۙۛۜۘۜۦۨۘ۠۬ۨ۬ۘۘۘۦۢۗۖ۟ۢۗ۠ۘ";
                    continue;
                case -683727852:
                    str = "ۜۢۜۗۨۢۙۚۦۚ۫ۨۜۡ۟ۥۖۘۧ۬ۦۧۤۤۙ۬ۜۛۧۘۘۤ۠ۚۤۘۘۦۘ۫ۙ۫ۛۖۛۜۨۧۢۛۥ۫ۢۜۡۘ";
                    oooO0o2 = oooO0o3;
                    continue;
                case -566435958:
                    str = "ۚۗۘۨۧۖۛۖۙ۬۟۫ۥۖۥۘ۟ۗ۫ۜۖۡۘۡۜۖۘۙۛۡۚۢۙۧۢۙۖ۫ۛۘۤۘۗۦۡۘۛۧۦۦ۟";
                    oooO0o2 = oooO0o;
                    continue;
                case -289038132:
                    return;
                case 226026859:
                    str = "۫ۙۡ۫ۡ۫ۢ۫ۙۗۛۖۦۥۥۦۤۖ۟ۜۛۚۦۙۖ۠ۧۘ";
                    i2 = i;
                    continue;
                case 358031143:
                    str = "ۡۛۛۖ۟ۙۜۢۤ۫ۨۥۗۗۖۘ۫۫۬ۙ۬۬ۖۦ۟ۤۨۚ۬ۘۘ";
                    i2 = i3;
                    continue;
                case 566016268:
                    String str2 = "ۙۡۛ۠ۤ۫ۚۚۦۡۥۡۘۘ۫ۨۥۤۡ۠ۗۜ۟ۡۦۡۜ۬ۤ۟";
                    while (true) {
                        switch (str2.hashCode() ^ 1347999669) {
                            case -2080684749:
                                str = "ۦۜۨۘۖۨۖۘۨۜۖۘۘۨۜۘ۫۫ۡۙۚ۫ۚ۠ۨۛۚ۫ۗۦ۫ۚۥۚ۫ۚۘ۫ۖۘۥۧۢ۠ۜۖۘۛ۬ۡۢۗ۠ۤۘۨۘۘۦ";
                                break;
                            case -1806157018:
                                String str3 = "۟ۥۙۢۜۥۘۛۨۛۦ۠ۨۘۗۛۥ۫ۛۙۘۧۧۛۜۤۗۚۜۘۢ۬ۨۘۤۚ۠ۗ۬۟ۖۤۛۚۖۤۛۜۡۘۥۨۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1897408760) {
                                        case -1137181761:
                                            str3 = i4 == 102 ? "ۙۦۡۨۜۦۦۜۨۘ۟ۚۡ۬ۡۘ۠ۦۦ۟ۡۢۘۖۥ۫ۖۘ۠ۘۥۘۛۤۥۘۘۚۦۘ۬ۦ۟۬ۥۗۖ۬۠ۚ۠ۖ" : "ۛۛۡۘۚۧۖۡۘۨۗۗۗۗۚۡۘۛۛۛۤۥ۬۫ۘۥۡۦۛۤ۠ۡۘۨۤ۟ۗۤۘۘ";
                                            break;
                                        case 157972761:
                                            str3 = "۫۫ۥۘۛ۫ۘۛۗ۟ۤۨ۟ۢۤۗۜۛۡۘۧ۬ۨۘۢۧۧۘ۠ۥۢۥۢۡ۠ۦۦۗۗۤۜۜۤ۬ۙۖۘۧۗۘۘ";
                                            break;
                                        case 991464037:
                                            str2 = "ۛۤ۬۠۫ۙۗۡۛۘۦۚ۫ۙۚۛۤ۠۬ۡ۟ۧۥۧۧۚۙۡۗۤۗۦۧۘۛۜۦۘ۬ۗۡۘۥ۬";
                                            break;
                                        case 1733206391:
                                            str2 = "ۙ۟ۗ۬ۚۘۘۙۡۧۨۜۧۘۗۚۘۘۚۚۙۘۖۧۘۘۡۖۘۥۨۜۘ۬ۛۥۙۙۘۛۜۤۜۡۘۧۘ۠ۧۖۘۦ۫ۡ";
                                            break;
                                    }
                                }
                                break;
                            case -1753132141:
                                str2 = "۫ۥ۟ۘۛۧۗۦۧۢ۫ۛ۟۟ۜۘۖۤ۬۠ۙۧۚۛۙ۬ۘۛۥۢۖ۠ۘۚۙۤۖ";
                                break;
                            case 1684595873:
                                break;
                        }
                    }
                    break;
                case 648214544:
                    str = "ۘۡۗۜۨ۠۟ۗۜۖۢۚۜۚۙۜۛۖۤ۠۟۟ۚۚۖۤۛ۬ۢۡ۬ۧۙۧۖۦۜ۟ۢۙۧۦ";
                    i4 = this.o00O0O;
                    continue;
                case 669788908:
                    str = "ۦۡۨۡۦۡۘ۠ۜۦ۬ۡ۬ۘۢۖۘۙۦۨۧۚۡۘ۬ۧۨۚۢۦۤۘۘۗۤۜ۬ۛۘۘ۬ۛ۠۠ۗ۬ۚۨ۬ۙۥۥ";
                    oooO0o = this.o0OoOo0;
                    continue;
                case 783487282:
                    oooO0o2.obtainMessage(i2).sendToTarget();
                    str = "ۚۦۛۖ۠ۥۜۙۦۘۧ۫۟ۚۤۗۦۥۦۘۡۙۥ۟ۜ۟ۙۛ۫ۗۙۛ۫۬۫ۖۨ۠";
                    continue;
                case 873755747:
                    OooOo0O();
                    str = "ۚۜۛۚۘۧۘۦ۬ۨۘۥ۫ۦۘۙۨۧۥۢۡۘۧۥۢۛ۠ۨۘۧۦۧۘ۟۫ۥۘۙۛۘ۫ۤۖ۟۫۠ۘۙۖ";
                    continue;
                case 1060875889:
                    this.Ooooooo = true;
                    str = "ۤۧ۬ۨۗۖۡۢۜۘ۫ۧۗۡۦۨۘۥۘۢ۟ۤ۠ۖۖۘۜۛۙۗۛۡۡۗۛۜۖۜۘۖۘۥۙۙۡۘۧۦۡۚۨۙۧۖۦۘۛۥۥ";
                    continue;
                case 1358092369:
                    String str4 = "۟ۚۘۘۧۨ۬ۗۙۙۚۜۘۘۛۡۙۦۖۥۢۛۥۖ۫ۤۦۛ۫ۤۥ۟ۤۙۨۘ۠۬ۢۤۘۖۗ۠ۖۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 1720245588) {
                            case -313434041:
                                str = "ۦۖ۫ۨۜۘۘۙ۠ۙۛۡۘۘۦۘۛۙ۟۫ۙ۫ۢۧۗۧۥۥۘۦۘۤۦۦۙۡۧۡۘ";
                                continue;
                            case 210692376:
                                str4 = "ۖۨ۫ۛۧۛۥۢۨۘۤ۟ۜۙ۠ۨۘۜۨۨۘۖۨۦۘۜۥۤ۬ۜۤۖۛ";
                                break;
                            case 1627901360:
                                str = "ۤۦۙۨۚۦۛۚۨۘ۟ۥۦۚۛۡۢۦ۫ۗ۬ۗ۠ۘۘ۟ۡۗۧۚۜ۬۬۫ۘۡ۬";
                                continue;
                                continue;
                            case 1841280902:
                                String str5 = "ۚ۬ۚۙۦۖۘۢۖۛ۟ۦۡۨۛۤۜۜۨۘۥۙۢۧۨۧۘۥۨۡۡۢۤۗ۬ۨۢۢ۠ۢۦۦۘۤ۫ۨۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-151495043)) {
                                        case -1592376203:
                                            str5 = i4 == 100 ? "ۛۢۗ۟ۛۨۘۛۖۘۜۤۤ۬ۜۨۘۚ۠۟۟ۢۗۡ۟ۖۨۖۧۘۘ۟ۢۤۜۢ۠ۢ۠۠ۥۘۜۗ۠" : "۬ۘ۫ۨۧۘ۟ۤۘۘۜ۠ۨۧۥۘۤۡۖ۟۟ۧ۟ۥۡۗۡ۟۫ۦۥ۬۬ۖۢۘ۫ۙۤۢۖۘ";
                                            break;
                                        case -1268215543:
                                            str4 = "ۥ۠ۡۡۜ۬ۦ۫ۛۧ۟ۙ۬۠ۥۘۥۛۧۧۚۦۘ۠ۦۜۘۨۥۥۙ۫۫";
                                            break;
                                        case 1457992701:
                                            str5 = "ۖۧ۫ۛۘۜۘۜۜۖۛۦ۠ۗۚۘۜۖۨ۫ۙ۫ۥۥۢ۟ۦ۬ۧ۟ۜۖۘ۫ۤۘۧۘۥۡۨۧۡ۠ۡ۠ۡۘۘ۬ۗ";
                                            break;
                                        case 1632175152:
                                            str4 = "ۢۘۥۘۦۢۘ۫۟ۨۖۥۦۘۘ۫ۨۘۘۧۧۧ۟ۚۦۗۤۛۗۛۦۘۤۨ۬۬ۥۛ۫";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1405687928:
                    str = "ۨۚۚۡۢۦۘۖۢۗۡۨۘۙۨۡ۫ۗۘۘۨ۟ۘ۫ۢۦۙۤۢۡۛۢۗۚۗۙۜۖۘۥۦۖۘۚۛۡۘ";
                    continue;
                case 1665830766:
                    break;
                case 1756731908:
                    i = 1003;
                    str = "ۖ۫۬ۡۙۡ۠ۥۙۧۤۦۘۘۖ۬ۖۜۖۨ۫ۘۘۨۤۘۜۧۢۗۛۜۘۘۦۤۦۤ";
                    continue;
                case 2146370899:
                    this.OooooO0.setOnClickListener(this);
                    str = "ۛۧۨۘۖ۬۬ۖۜۡۖۙ۬ۢۨۜۤۛ۫ۜۗ۬ۘۙۗۡۜۤۚۥۢۥ۟ۡۛ۟ۛۜۧۨۜۥۖ";
                    continue;
            }
            str = "ۥۛۥۘ۟ۥ۬۠ۗۜۛ۫ۛۚۗۤۚۦۘۚ۠۠ۧۙۦۘ۠ۨۙۖۦ۫ۖ۬ۜۗۨۡۘۨۨۘ۬ۤۨۖۥۨۚ۬";
        }
    }

    private void OooOOOO() {
        String str = "ۦۜۙۤۘۦۘۚ۫ۗۡۢ۠ۢۜۛۨۘۢۡۦۘۧۙۡ۫ۘۡۘۖۚۜۘۥۘۖۘ۠۟ۖۘۨۛۤ۬ۧۡ۟۬ۡۘۛۜۚۙۙۤۥۡۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 736) ^ 590) ^ 423) ^ 199558078) {
                case -1384301126:
                    this.o0OoOo0.obtainMessage(1002).sendToTarget();
                    str = "ۧۖۢۜ۬ۨ۠ۘۨۨۜ۠۠۬ۙۙۧۨۚۨۥۚ۠ۥۘ۬۟ۘۘۧۙۘۘۤۥۤۢۚۡ";
                    break;
                case -275030499:
                    OooOOo0();
                    str = "ۖۥۖۘ۬ۡۘۘۖۖۙۦۤۛۙ۫ۚۛۧۘۘ۬ۚۘ۬ۛۜۖ۫ۥۜ۠۬ۢۦۦۤۚ۬ۡۧۜۘۛۥۥ";
                    break;
                case 615189463:
                    return;
                case 836993398:
                    String str2 = "ۗ۟ۥۘۘ۬ۨۤۜۘۨۜۜۥۙۖۘۢ۫ۨۗۙۗۚۨ۫۫ۛۦۖۙۡۘۥ۬ۥۗ۟ۜ۬ۙۦۘۥۨۧۦۧۖۗۖۧ";
                    while (true) {
                        switch (str2.hashCode() ^ (-315859463)) {
                            case -313264862:
                                str = "ۛ۬ۦۘۖۡۜۜۙۘۤۗۙۢ۫ۖۡۘۖۥۨۦۨۧۘۗۧۡۘ۫ۡۨ";
                                continue;
                            case 1016519376:
                                str = "ۛۢۜۡۦۜۥ۫ۗۙۢۢۢۙ۠۟ۥۙۙۖ۠ۚۤۦۘۨۢۖۧ۠ۥۦۨۙۢۙ۠";
                                continue;
                            case 1616194683:
                                String str3 = "۬۟ۢۨۢ۫ۖۤۥۤۢۤۥۥۖۤۘۢۨۜ۬۟ۧۥۦۛ۠ۜ۠ۖ۠ۥۦۡ۬ۗ۫ۥۥۜ۠ۖۚۗۨۜۦۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-332173903)) {
                                        case -2024072116:
                                            str3 = "ۢۡۨۘ۟ۡۥۦۙۖ۫۠ۛۛۖ۫ۧۡۦۧۡۘۘۡۙۚۦۢ۟ۘ۫ۥۘۤۚۧۤ۫ۤ۬ۘۧۡۧۥۘ";
                                            break;
                                        case -1256705497:
                                            str3 = b4.OooOO0o(this) ? "ۛۢۗۦۗۜۘ۬ۨۧۤۧۧۦ۫ۚ۬۠ۨۜۛ۫۠۬ۙۤۚ۬ۛۡۥ۫ۖ۬۬ۧ" : "ۜ۠ۤۤۛۘۘ۠ۢۧۦۜۘۛۡۧۘۧۛۦۘۥ۫ۘۘۜۤۜۘۡۡۤۙۜۥ۠۬ۜۘۡۙۖۗۨۨۤ۫۠";
                                            break;
                                        case -85688018:
                                            str2 = "ۤۤۙۡۦۤۗۡۨ۟ۨۘۙۥۨۗۗ۠۠۬۫۫ۛ۫ۤۥۙۦۤۥۥ۟ۖۖۡۘۨۗ۠۟ۦۜ";
                                            break;
                                        case 1580058085:
                                            str2 = "ۚۦ۠ۛۦۚۜۜۘ۟ۘۡ۬ۙ۠ۚۜۥ۫۠ۙۚۛۚۦۜۥۢۨۢۛۚۜۘۥ۬ۢ";
                                            break;
                                    }
                                }
                                break;
                            case 1718968794:
                                str2 = "ۜۘ۠ۘۜۨۤۛ۠ۗۨۧۘ۫۟ۢۦ۬ۘۘۚۗۚۢۦ۟ۙۦۢۥۖۜۘۚ۟ۖۘۦۧۗ۬ۛۜۘ۬ۤۜۢۥۙۢۨ۠";
                                break;
                        }
                    }
                    break;
                case 1236362636:
                    str = "۫۠ۙۘۚۡۡۥۘۛۧۜۘۧۙۜۘۦ۬ۘۙۙۙۧۚۧۙۡۖۜۚۦۘۗۥ۟۠ۧۜۘۛۦۖۘ۟۠ۛۡۤۙۤۖۘۤۗۦ۬ۚۙ";
                    break;
                case 2034462426:
                    str = "ۖۥۖۘ۬ۡۘۘۖۖۙۦۤۛۙ۫ۚۛۧۘۘ۬ۚۘ۬ۛۜۖ۫ۥۜ۠۬ۢۦۦۤۚ۬ۡۧۜۘۛۥۥ";
                    break;
            }
        }
    }

    private void OooOOOo() {
        OooO00o oooO00o = null;
        String str = "۫ۜۨ۟۠ۚۤ۠ۙۜ۠ۦۘ۟۠ۗۛۦۗ۫ۡۧۘ۟ۡۜۘ۫ۨۘۙۛۥ";
        String str2 = null;
        OooO oooO = null;
        while (true) {
            switch ((((str.hashCode() ^ 144) ^ m.a.a) ^ 669) ^ (-520535739)) {
                case -2085560480:
                    oooO = new OooO(this, 8, oooO00o);
                    str = "۫۠ۨۘۜۘۥۗۢۗ۫۬ۖۘۘۚۜۘۙ۫۫ۘۗۤ۫۬ۘۦ۬ۗۘۗۚۢۡۚۧۗۗ۠ۤۨۜۢۨۘۡۚۜۥۤۤ";
                    continue;
                case -1779906643:
                    a5.OooO0Oo(this, "后台广告加载成功");
                    str = "ۨۡۨۘۤۘ۟ۙۙ۠ۛۛۛۛ۫ۗۜ۠ۚۤۜ۟۟ۘۗۧۜۘ۠ۙۜۢۧۘۙۨ";
                    continue;
                case -1536811734:
                    String str3 = "۟۬ۜ۬ۥۡۘۛۦۘۧۢۖۛۙۖۘ۠ۙ۠ۥ۠ۛۡۜۛۜ۟ۡۜۡۚ۟ۤۖۘۜ۬ۦۨۛ۬ۡ۟ۛۡۚۚۡۥۧۘ";
                    while (true) {
                        switch (str3.hashCode() ^ (-412979970)) {
                            case -1799382498:
                                break;
                            case -1591100434:
                                str = "ۖۚۘۘۡۥۡۘۧۡۖۗۖۨۨۖۛۛۚۘۚۧۡۘۢۨۘ۠۫ۛۡۙۦ۫ۨۘۡۜۧۘۡۦۨ۫ۨۗۖۙۜ۠ۘۖۘ۟ۛۡ۠ۖۗ";
                                break;
                            case -1389819606:
                                String str4 = "ۘ۬ۛۛۗۥۘ۠ۛۖۘۢۙۗۥۛ۫ۤۗۗۧۡۚۧۜۛۡۘ۫ۥۜۜۘۥ۟ۢۘۗۚۙۙۨۜۗ";
                                while (true) {
                                    switch (str4.hashCode() ^ (-854792199)) {
                                        case 918644946:
                                            str4 = !TextUtils.isEmpty(str2) ? "ۥۢۜۘ۬ۚۖۘۡ۟ۚۖۧۥۘ۫ۦۦۡۤۘۖۦ۠ۨ۟ۢۢۥۖۘ۟ۘۛ" : "ۦۦۥۛۛۧۜۥۖۘۤ۠۬ۚۙۥۛۚۤ۟ۙۤۦۥۦ۬ۖۨۘۖۚۥۘ۫ۗۚ۫۬ۗ۟ۤۡۖۛۡۘۦ۟ۘۘۥۦۥۘۙۖۙۚۗۖ";
                                            break;
                                        case 1472228664:
                                            str4 = "ۢ۬ۨ۟۫ۧۖۦۛۛۗۚۙۡۢۤۧۖۘ۟ۖۥۙۧۥ۬ۦۙۦۙۜۗۥۧۛۥۙۜۚۚۨۜ۫ۥۥۘۧۗۗۤۥ۠۫ۛ";
                                            break;
                                        case 1972257171:
                                            str3 = "ۚ۫ۢ۟ۖۙۤ۠ۥۜۥۥۜۡۥۘۤ۫ۡ۫ۨۜۘۥ۫ۤۢۦۙ۠ۡۗ۠ۖۧۘۥۥۢۗۘ۠ۚۜۚۛۗۜ۫ۛۤ";
                                            break;
                                        case 2057930772:
                                            str3 = "ۥ۬۬ۖ۠ۢۧۢۘۧۤۥۙۢۥ۠ۜۘۢۥ۬ۘ۬ۨۨۦۘۘ۬ۢۘۘ۠ۧ۟ۖۛ۟ۖ۫ۡۥۛۙۧۜۨ۬ۧۧ";
                                            break;
                                    }
                                }
                                break;
                            case 1354141777:
                                str3 = "ۚۦۡۜۡ۠ۧۥ۟ۖۘۘۙۥ۟ۘۙۘۙۘۚۚۖۚۙۚۥ۫ۜۙۡۧۘۡۨۨۘۙ۠ۦ۫ۦۨۘۧۜۨۚۜۧۘۙۘۧۙۤۜۘ";
                                break;
                        }
                    }
                    break;
                case -1301866441:
                    OooOo0(102);
                    str = "ۙۨۥ۟ۖ۬ۦ۟ۗۚۡۢ۫ۛۦۧۧۨۘ۬ۗۥۜۘۘۘۡۜۥۨ۟۟ۚۨۘۡۖۚۗۖۧۘ۬۟ۗ۫ۡۘۜۨۘۘۜۚۗۡ۟۟";
                    continue;
                case -793243609:
                    String str5 = "ۢۥۥۘۧۖۜۚۧۨۗۖ۠۠۫ۘۤۢۧۙۗۘۖۘۘۖۦۥۙۗۜۘۘۙۦۘ۫۫ۤ۬ۗ۠ۘۙۦۘۧۡۤۧۡ۟";
                    while (true) {
                        switch (str5.hashCode() ^ (-1941936564)) {
                            case -1113578202:
                                break;
                            case -510005101:
                                str5 = "ۧۚۚۤۡۥۘ۠ۗ۬ۢۤۨۘۤ۫ۢ۬ۤۤۡۡۧۡۥۘۛۤۘۜۡۚۚۘۢۦۜۗۢۥۢۨ۫ۨۘۥۥۡۜۧۨۘ";
                                break;
                            case 359592983:
                                str = "ۜۘۨ۬ۘۘ۟ۥۖۙۙۜۘ۫۟ۧۙۥۧۘ۫ۘۘ۬ۚۥۘۜۛ۫ۖۘۖۘ";
                                break;
                            case 1388362016:
                                String str6 = "ۤۦۦۘۤۥۚۘۤۜۘۡ۬ۡ۠ۡۖۘۙۛۤۧۤۗۤۖۗۘۘ۫ۚۢۦۥۖۘۚ۟۫ۖۨۜ۠ۦۘ";
                                while (true) {
                                    switch (str6.hashCode() ^ 709982777) {
                                        case -1110252478:
                                            str6 = qh.OooO0O0().OooO0OO(2) ? "۬۬ۤۤۖۘ۬ۘۘۧۜۘ۬ۨۘۘۚۦۛۧ۟ۚ۬ۚ۫ۥ۫ۧۘۖۘۧۦۦۘۜۨۨۦۘ۬ۚۘ۫ۢۜۡۘۢۨۥۛۦۘۘۤۘۥۘ" : "ۡۡۜۘۛۖۦۘۘۖۡۖۡۥۡۙ۫ۦ۟ۖ۫ۤۢۢۘۨۜۥۜۙ۟ۦ۫ۚۨۡ۟ۗۦۥ۠ۨۙۘۛۢ۠ۖۘ";
                                            break;
                                        case -860692553:
                                            str5 = "ۘۡ۫ۗۢۛۢۦۘۖۖۜۤۦ۬ۧۚۜ۬ۤ۟۟۟ۗۨۘۚۙۧۚۥۘ۬ۘۥ";
                                            break;
                                        case -662398327:
                                            str6 = "ۢۢۧۚۗۚۙۚ۠ۜۖۘ۠۟۬ۗ۫ۖۙۨۘۥۜۨ۫ۙۜۤ۬۬۟ۚۜۨۨۡۡۜۖۘۖۦ۫ۗۚۧۧۨۖۘ۟ۨۙ۫ۨۦۘ";
                                            break;
                                        case 1332718764:
                                            str5 = "ۦۥۖۦ۠ۥۘۗ۟ۗ۟ۤۡۨۖۧ۠ۨۧۨۘ۠ۙۤۘۘۨۘۘۗۖۛۛۖۘۜۚۖۘۘۤۥۚۖۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -302559116:
                    OooOo0o();
                    str = "ۨۦۛۡۧۤۤۖۘۨۗ۫ۡ۬ۜۘ۫۫ۛ۠ۨۛۙۚۥۢۛۥ۠ۡۙ۬ۜۡۙۦۧۘۦۗۖ۠۫ۨ";
                    continue;
                case -63726718:
                    oooO.start();
                    str = "۬ۚۦۖ۠ۨۘۡۜۡۘۧۘۥۘۗ۟ۚۦۡۙ۟ۤۜۧۙۦۘۖۨۘ۬۬ۜۜ۬ۜۨ";
                    continue;
                case 336515953:
                    str2 = qh.OooO0O0().OooO0O0.ImageUrl;
                    str = "ۘ۠ۨۗۖۡۘۜ۠ۘ۫ۧۥۙۧۙۖۛۛۢۖۘۗ۫۟۟ۢۡۘۦۨۙۜ۟ۨ۬ۙ۟ۡۘۦۘۘۘۦۘۨ۠ۘۘۢۤۘۘ";
                    continue;
                case 548493340:
                    str = "ۘ۫۬۟ۥۛۥۚۨۘۗ۬ۦ۠ۙۦۤ۬ۥۘۨۦۜ۟ۜۨۘۨ۟۠ۚۨۖۘ۫ۚۖۘۚۡۖۘ۬ۤۤۥۢۥۘۛۨۘۦ۟۟۬ۙۙۙ۬ۗ";
                    continue;
                case 1362205100:
                    this.OoooooO = oooO;
                    str = "ۢۥۜۨ۠ۥۡ۠ۤۧ۫ۥۥ۫ۥۤ۠ۤۨۗۦۥۘۜۘۛۡۘۘۤۧۤ۟ۧۢ۫۫ۨۘ۟ۚۦۘۚۡۚ";
                    continue;
                case 1375043215:
                    OooOOO(str2);
                    str = "۬۫ۦۘ۟ۘۖ۬ۨۦۘۗۗۧۡ۠ۜۛۘۘۤۤۘۘ۬۫ۘۘۢۧۥۘۗۚ۬ۚۖۛۦۘۨۘۨۨۨۡۛۜۘۖۛۡۘۖۚۨۥۤۖۢۗ";
                    continue;
                case 1579206784:
                    str = "ۨۦۛۡۧۤۤۖۘۨۗ۫ۡ۬ۜۘ۫۫ۛ۠ۨۛۙۚۥۢۛۥ۠ۡۙ۬ۜۡۙۦۧۘۦۗۖ۠۫ۨ";
                    continue;
                case 1864554629:
                    return;
            }
            str = "ۤۛ۬ۙۢ۬ۙۖۙۨۗۨۛۗ۟۬ۖۢۥ۬ۨۘۢۙۜۜۡۘ۬ۖۚۛۤۘ۟ۜۡۢۛ۠ۡۗۙ";
        }
    }

    private void OooOOo() {
        String str = "۠ۙۛۥ۟ۛۥۦۘۢ۠ۧ۫ۧ۠۫ۥۙۡۨۛۡۦۜۘۜۨۦۗ۫ۛۘۡۘۦۡۛ۬ۚۘۘۦۖ۬ۚۘۛۜ۟ۘۗۨۙۘ۫۠";
        while (true) {
            switch ((((str.hashCode() ^ 331) ^ 524) ^ 732) ^ (-382803944)) {
                case -1991485643:
                    String str2 = "۬ۨۘۘۛۛۤ۬ۜۘۦ۬ۙۨۜۜۘۘ۫ۚ۠ۨۢ۬ۢ۬ۡۤۧۜۨۜۚۡۘۗۜۦۘۚ۫ۥۘۧ۠ۢ۠ۦۜۘۦۙۡ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1745157542)) {
                            case -1182379534:
                                str = "۟ۡۥۢۜ۟ۗۧۖۘ۠ۥۥۘۢۦۥۘۙ۬ۛۚۘ۠۠ۙۤۜۡۧۘۜۗۡۘۥۛۛۖۧۢۛۗۤۙۚۖۗۧۡۘۙۧۜۘ";
                                continue;
                            case 587654255:
                                str = "ۨۡۖۘ۟ۧۘ۟ۤۛۢۢۦ۠ۥۥۤۦۜۦۘۗۖۡۚۜۧۙۖۘۥۦۡۘۛۚۡ";
                                continue;
                            case 745155400:
                                str2 = "ۡ۬ۡۚۨ۫ۗ۬ۢۧۥۜ۬ۚۛۘۡ۠۬ۢۧ۠۫ۗ۟ۙۖۜۛۦ";
                                break;
                            case 1627323289:
                                String str3 = "۫ۘۖۘۛۚۙۗۢۘۘۤۘۙۖۜۗۥۨ۠۟ۚۧۛۛۨ۟ۖۦ۫۫ۨۘۙ۫ۜۘۙۡۜۡۥۦۘۨۧۖۘۗۢۦۥۦۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ 172527152) {
                                        case -1486914657:
                                            str3 = this.Oooooo0 == 3 ? "۬ۦۛۙۨۦۘۙۨۧۨۧ۠ۢۜ۠۠ۥ۬ۗۥۙۘۖۨۘۙۚۗۨۢ۫ۚ۫ۚۥۘ۠" : "ۙۦۗۗۗۙۢ۬ۧ۟ۥۨۘۤۗۨۗۤۘ۫ۖۘۨۗۖۘۢۖۦۘۦۛۜۘ۠ۜۙ۟ۦۦۧ۬ۛۥۢۖ";
                                            break;
                                        case -1210933808:
                                            str2 = "ۖۢۛۤۙۧۡۧۘ۫ۦۡۧۦۡ۟ۖۘۘۥۗ۟ۡۤۘۘۡ۠۬ۤ۠ۜۥۛۜۗۥۘۗۙۖۘ۟ۚۘۘۗۦۖۙۦۥۘۢۨۡۘۤۖۧ";
                                            break;
                                        case -664493958:
                                            str2 = "ۥ۠ۦۤۥۡۥ۠ۖۘۚ۠ۧۘۜ۫۬ۜۖۘ۬۠ۤ۟ۚۦۘۡ۬۟۬ۡۦۘۦۦۙۛۥۡۥۢۛۙۨۜۜۡۨۘۧ۬ۥۘۜۖۨۢۨ";
                                            break;
                                        case -160221700:
                                            str3 = "ۨۥۨۢۥۥۥۦۘۢۥۖ۫ۘۡۘ۠ۦۧۘۙۦۨۘ۬۟ۨۘۨۖۖۙۤ۟ۨۙ۬ۖۤۙ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1320421597:
                    this.o0OoOo0.postDelayed(new OooO0O0(this), 1000L);
                    str = "ۨۡۖۘ۟ۧۘ۟ۤۛۢۢۦ۠ۥۥۤۦۜۦۘۗۖۡۚۜۧۙۖۘۥۦۡۘۛۚۡ";
                    break;
                case 262774663:
                    str = "ۤۖۖ۫۬ۘۢۜۘۢۤۨ۬ۦۛۚۦۙ۬ۧ۬ۢ۟ۦۘۡۗۜۘۛۙ۟";
                    break;
                case 2144867872:
                    return;
            }
        }
    }

    private void OooOOo0() {
        String str = "۟۬ۡۘۘۛۘۘۚۡۤۜۗۘۘۨۧ۫۟۫ۡۧ۠ۡۨۢ۬ۚۦۢ۟ۡۘۛ۫ۧۥۘۡۘ";
        StringBuilder sb = null;
        mh mhVarOooO00o = null;
        while (true) {
            switch ((((str.hashCode() ^ 727) ^ 976) ^ 228) ^ (-1725570313)) {
                case -2131156286:
                    str = "ۛۚۘ۬۫ۜۨ۫ۖ۬ۧۨۨۜۘۨۘۘ۟۠ۘۜۡۧۘۘۡۘۦۢۤۧۖۘۘۤۡۖۗۢۚ۟ۢ۟۟ۦۖۘ۬ۚۘۙۜ۠ۙۙۡۘ";
                    mhVarOooO00o = qh.OooO0O0().OooO00o(2, oh.OooO0o);
                    break;
                case -1894755960:
                    return;
                case -449185794:
                    this.o0OoOo0.obtainMessage(1002).sendToTarget();
                    str = "ۙ۟ۛ۠۠ۥۘ۟۟ۗۛۙۖۧۜ۬۠ۦۘۖۨۡۗۨۘۙۡۘۘۘ۠ۨۘ";
                    break;
                case -386682071:
                    str = "ۨۚۡۘۗۨۡ۟۟ۜۛۘۘۘۜۨۖۘ۟ۜۦ۫ۨۡۘۨۥۦۘۢۖ۫ۚۥ۫ۨۙۡۜۛۨۚۘۦۚ۬ۨۘۘۘۨۨۗۙۥۗۦۚۚ";
                    break;
                case 579968523:
                    sb.toString();
                    str = "ۖۗۢۗۜۜۘۜۗۨ۫ۢۘۘۗ۠ۙ۠۠ۖۘۢۨ۬ۗۨۡ۬ۘۤۥ۟ۙۙۦ۠ۨۙۡ۬۫۠ۜۥۖ";
                    break;
                case 767768969:
                    sb.append(mhVarOooO00o.OooO00o);
                    str = "۠ۦۨۡۥ۟ۥۙۦۘ۫۟ۨۘۖ۫۬ۜۧ۟ۗۖۦۘ۬۫ۦۜۙۢۛۛ۫ۥ۠ۘۘ۠۠ۖ";
                    break;
                case 1227922448:
                    sb.append("loadIFLYAd --> ilfyAd.isDisplay=");
                    str = "ۖ۠ۦۘۥ۠ۡۘۡۗۙۘۖ۬ۥۜۜۙۧۨۗۙۥۤۖۖۘۧۨۡۘۜ۟ۖ۠ۡۛۗۥ۟ۢۗۚۤۢۡۘ۬ۗۥۘۗۡۖ";
                    break;
                case 1677771794:
                    sb = new StringBuilder();
                    str = "۠ۤۙۖۤۜۛۡ۟۫ۗۖۘ۠۬۫۫ۖ۟ۘۘۙۦۘۘ۬ۚۖۘۡۘ۠ۤۗۙۛۢ";
                    break;
            }
        }
    }

    private void OooOOoo() {
        String str = "ۢ۫ۢۥ۫ۙ۫ۗۢ۫۟ۢۢۙۜ۟۬ۖۘ۬ۙۛ۟ۜ۠ۗۢۜۘ۟ۙۖۘۙۤۨۨ۫ۡۙۤۜۖۨۘ۬ۗۜۘۛۛۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 632) ^ 1) ^ 484) ^ 1806863240) {
                case -1781261662:
                    OooOo00();
                    str = "ۨ۫ۦ۟ۡۦۘۜۧۤ۠ۚ۬ۛۙ۫۬۬۟ۢۡۚۢۖۛۖۘۢۙ۟ۨ۟ۢۙۜۥ";
                    break;
                case -609446062:
                    str = "ۜ۬ۨۥۧۧ۟ۦۘۙۚۥۤۡۧ۬۠ۙۦۙۧۤۢ۠ۜۖ۬ۗۖ";
                    break;
                case -264048358:
                    return;
                case 1129942397:
                    OooOO0o();
                    str = "ۢ۟ۖ۬ۡۜۘ۫ۖ۠ۛ۫ۥۥ۠ۦۘۘ۬ۨۥۡۘۛۚۚۧ۫۟ۘۖۘۖۦۨۢ۬ۨۘ";
                    break;
            }
        }
    }

    private void OooOo0(int i) {
        String str = "۟ۥ۬ۘۨۥۘۧۗ۠۫ۗۘۧ۬ۢۡۥۘۦۙ۬ۧ۫ۦۚۧۗۥۧ۟۬ۦۜۘۛۦۥۧۥۡۘۥۡۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 635) ^ 0) ^ 317) ^ (-82257418)) {
                case -2114747760:
                    this.o00O0O = i;
                    str = "ۨۙۖۗۥۡۘۨۚۚ۬ۥۙۨ۟ۘۘۥ۬ۖۤۦۦۘۤۚۖۚۥۨۘۘۧۦۖۗۜۘۚۤۦۘ";
                    break;
                case -1584592838:
                    str = "ۜ۠ۖۗۨۛۖۡۖۖ۠ۦۖۤۨۘۛ۫ۤۢۥۥۘۙۚ۬ۖ۫ۥۥۘۤۗ۟ۜۘۖۖ۬ۖۢ۬ۡ۠";
                    break;
                case 308338959:
                    return;
                case 995071204:
                    str = "ۚ۬ۗ۠ۧۨۘۦۤۘۘۤۧۡۘۖۡۡۜۦۗۦۚۧۙ۬ۗۛۡۡۘۦ۫۟ۤۥۦۘۚۘۧۘ۠ۛۡۨۖۘۥۘۛ۟ۖۗۙ۠ۥۘۜۙ۠";
                    break;
            }
        }
    }

    private void OooOo00() {
        String str = "ۡۥۘۘۥۡۨۘۘۧۗۙۚۡۥۚ۬ۡۘۙۥۢۦۗۤۜۘ۬ۨۘۘۜۧۡۢۜۨۤۛۖۖۗۥۥ۫";
        while (true) {
            switch ((((str.hashCode() ^ 859) ^ 993) ^ 248) ^ 1007535032) {
                case -1178302273:
                    mc.OooO0oo().OooOOO0(new OooO0OO(this)).OooO(this, 1, 3, qh.OooO0O0().OooO0O0.Id);
                    str = "ۘۚۥۥۖۧۘۚ۟ۜ۠۠۫ۡۚۡۨ۟۠ۨۘۗۨۗ۫ۦۖۘۛۛۖۧۚۨۘۡ۟ۙۚ۟۟ۨۥۨ";
                    break;
                case -308630058:
                    return;
                case 47905732:
                    str = "ۖۡۡۘۛۢۥۘۥۦۚۚ۬۬ۘۡ۬ۦۤۨۘۡۜۢۡ۠ۥۗ۬ۘۡۢۛۥۡۦۛۖۘ";
                    break;
                case 619480455:
                    this.ooOO = true;
                    str = "ۧۧۦۙۦۘۛۜۛۦۙۜ۟ۥۧۜ۫۫ۚۜۧۛ۫ۘۗۦ۟ۤۚۙ";
                    break;
            }
        }
    }

    private void OooOo0O() {
        String str = "ۡۗۨۘۨۦۥ۠ۦ۫ۥۘۗ۬ۜۜ۠ۢۡۧۥۘۛۙۚ۬ۦۨۦۙۜۘۚۢ۟۟ۨۚۖ۫ۙۧ۟";
        while (true) {
            switch ((((str.hashCode() ^ 829) ^ 431) ^ 0) ^ 545343497) {
                case -119756078:
                    return;
                case 68811852:
                    String str2 = "ۚۙۦۛۙۨۨۗۦۘۛۨۦۘ۟ۚۦۘ۟ۤۡۘۙۗۤ۫ۖۡۚۦ۫۟ۡۙۡۢ۠ۡۥۧ";
                    while (true) {
                        switch (str2.hashCode() ^ (-319895078)) {
                            case -617473342:
                                String str3 = "ۥۜۖۘ۠ۦۡۨۡۤۚۙۘۘۥ۬ۘۘ۫۠ۨۧۜۤ۟۠ۦۜۥۘۘۖ۬ۨۤۜۖۚۨۥۘ۟ۚۦۘۨۙۘۘۖۖۡۘ۠۠ۘۘ۫ۛۛۧۢ۬";
                                while (true) {
                                    switch (str3.hashCode() ^ 572546897) {
                                        case -1676244546:
                                            str3 = "ۨ۫۠۫ۘۢۥ۬ۜۚۨ۠ۥۦۦۘۚۨۘ۟ۚۘۗۗ۫ۢۚۜۚۖ۟۠ۨ۬ۥۜۡۢۚۤۗۚۥۘۚۚ۟ۦۧۘ";
                                            break;
                                        case -1573415244:
                                            str2 = "ۧۘۡۘۙۨۘ۠۫ۛ۟ۡۥۘ۠ۥۤۗۤۜۘۚۚۖۘ۫۠ۜۛۚۛۚ۫ۡۘۦ۠ۜ۟۠ۧۡۥۛۨۚ";
                                            break;
                                        case -1557027298:
                                            str2 = "ۛ۟۟ۙۤۨۘ۫ۤ۫ۤ۫ۘۦۘۧۛۜ۬ۚۙۨۗ۫ۦۘۢۚۚۢ۟ۧۘۨ۬ۚۗ۟ۘۜۚۖۦ۫ۛۧۘ۫۬ۦۘ";
                                            break;
                                        case 356057658:
                                            str3 = this.OoooooO == null ? "ۜۚۘۦۖۥۘۢ۟۠۫۫ۦ۬ۜۛۖۘۖۘۢۨۢۢۙۡۘۖۙ۫ۚۚۖۤۚۥۘ۬ۦۧۘ۬۠ۘۘۡۨۖۘۤۤۖۘۥۨۧۘۤۢۚۧۘ۬" : "ۗ۫ۤۗۦۘۙ۬ۦۘۘۤۖۘۛۦۨۚ۠ۚۨۤ۫ۖۧۥۡ۬ۥۛۧۜۚۢۘۥۤۖۦۜۡۢۗۙۖۗۡۚۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 723350534:
                                str = "ۢۥ۠ۙۦۢۖۧۜۚۙۥۘۙ۟۫ۚۢۘۘۢۨ۟ۥ۬ۡۥۚ۬۬ۖۤۚۚۦۙۗۡۜ۬ۛۤۛۛۜۨۖۥۙۧۥۜۜۘ۟ۧۤ";
                                continue;
                            case 853520344:
                                str2 = "ۧ۟ۡۨۨۛۡۢ۟ۙۘۨۘۚۖۧۘۤۤۜ۟۠ۙۢۤۙۤۙۙۘۦۜۜۜۨۥۖۘ";
                                break;
                            case 1776056946:
                                str = "ۗۦۥۛ۠ۛۛۦ۫ۨۘۜۨۛۧۥۢۨۤۛۗۖۖۘۨ۬۬۟ۗۧۨۚۚ۟۟ۦۘ۟۠ۨۧ۫۟ۥ۫ۢۧۛۦۘ";
                                continue;
                        }
                    }
                    break;
                case 98886465:
                    str = "۬ۧۢۜۖۥۘۡۖۢ۠ۤ۫ۙۘۥۘۤۧۖۦۛۜۘ۬ۧۢۥۛۗۗۥۨ۬ۘۚۚۚۖۖۖۛۢۖۤۤ۫ۥۦۗۤۤۙۤۛ۫ۨ";
                    break;
                case 320354477:
                    this.OoooooO.start();
                    str = "۬ۦۘۡۛۛۦۥۥ۠ۧۛۨ۬ۦۖۧۖۛۥۘ۫۬۬ۛۧۡۘۜۢ۫ۤ۬۬ۜۦۦ";
                    break;
                case 457634341:
                    this.OoooooO = new OooO(this, 5, null);
                    str = "ۗۦۥۛ۠ۛۛۦ۫ۨۘۜۨۛۧۥۢۨۤۛۗۖۖۘۨ۬۬۟ۗۧۨۚۚ۟۟ۦۘ۟۠ۨۧ۫۟ۥ۫ۢۧۛۦۘ";
                    break;
            }
        }
    }

    private void OooOo0o() {
        String str = "ۢۛۧۜۨۨۘۗ۟ۡۘۢۢ۬ۢۜۤ۬ۤۥۘۢۨۗۦۜۚۖ۠ۡۢۤۨۘۜۨۘۘۡۜۤۛۦۜۘۖ";
        while (true) {
            switch ((((str.hashCode() ^ 342) ^ 393) ^ 590) ^ 772826916) {
                case -1974126237:
                    finish();
                    str = "۬ۨۛ۟ۤۡۘۡۦۨۘۜ۬ۧۡۥۧۘۥۙ۬۟ۘۛۧۙۛۙۨ۬ۚۧۡۘۚۡۖۨۧۚۜۢ۠۬ۡۖۘ";
                    break;
                case -1786598958:
                    return;
                case 812769674:
                    ei.OooO00o(this);
                    str = "ۘۘۘۘ۟ۜۧۜۛ۫ۘ۟ۧۡۘۦۘۨۡ۬ۥۚۡۘ۬ۜۛۙۡۡۡۚۡۘ۠۬ۖۘ۠ۤۦۘۙۜۙۙ۠ۛ۬ۜ۠ۨ۟ۖۨۨۨۛۜۘ";
                    break;
                case 880942723:
                    str = "ۥۦۗۖۜۘۘۙۦۦۥۧ۬ۡۤۢۢۗۚ۫ۧۡ۟۫ۤ۫۟ۦ۫ۦۘۤ۟۬۟ۜۖۘ";
                    break;
            }
        }
    }

    private void initData() {
        String str = "ۥۜ۬۬ۘۘ۫۫ۦۘۚ۟ۤۨۥۧۘۥۘۘۘۚۗۛۛۦ۫۬ۖۘۡۚ۫ۙۗ۬ۤۖۚ";
        while (true) {
            switch ((((str.hashCode() ^ 322) ^ 349) ^ 336) ^ 1560113323) {
                case -1574267853:
                    str = "۬۠۠ۗۚ۫۬ۜۦۘۢ۫۟ۧ۠ۙۜۥۧۘۧۜ۬ۤۨۨۖۘۦۘۜۚۧۘۚۧۘۗۚ۫۫ۜ۫ۤۦ۠ۧۦۘۜۗۘۘ۠ۢۤۘ";
                    break;
                case -487124333:
                    OooOOOO();
                    str = "ۢۦۙۡ۟ۖۘۦۛۛۘۧۢۧۖۜۙۡۜۤۛۛ۫۫ۦۘۙ۫ۨۥۧۘۘۗ۟ۚۡۢۨۘۢ۠ۜ۬ۨۜۘۘ۟۟ۖۗۧ";
                    break;
                case 879080488:
                    return;
            }
        }
    }

    private void initListener() {
        String str = "ۘۤۚۗۤۗۛۛۙ۬ۜۦۥ۠ۗ۠ۥۢۨۦۖۘۙۡۧۘ۬۠ۘۜۦۥ";
        while (true) {
            switch ((((str.hashCode() ^ 974) ^ 101) ^ 400) ^ 977840284) {
                case -2102367817:
                    return;
                case -713557747:
                    str = "ۛۨۡۘۘ۫ۘۘۧۘ۬۬ۗۨۤ۫ۤۡ۟۟۬ۡۜۘۛ۬ۧۢ۬۟ۜۙۦۡۘۨۦۖۘۢۧۥۘ۠ۢۨۘۢۢۜۘۦۡۖۘۢۧۡۘۢۜ";
                    break;
                case 1175012555:
                    this.OooooOo.setOnClickListener(this);
                    str = "ۛۢۦۗۙۚۧۢۖۚ۠ۘۘ۠۬ۨۘ۠ۘ۬ۦ۬ۖۘۘ۫ۖۙۦۗ۠ۚۦۘۘۜ۠ۙۙۡ";
                    break;
            }
        }
    }

    private void initView() {
        String str = "ۧۨۦ۫ۨۘۘۨۡۜ۟ۛۧ۠۟ۖۖۖۗۖۡۡ۬ۧۜۘۛۡۜۧۦۗ";
        while (true) {
            switch ((((str.hashCode() ^ 111) ^ 267) ^ 395) ^ (-1622762006)) {
                case 336017389:
                    this.OooooO0 = (ImageView) findViewById(R.id.iv_splash_ad_fullscreen);
                    str = "۬۠ۧۧۜۦ۬۬ۗۦۗۧۙۛۘ۠۠ۛۤۛۧۚۢۜۘۡ۫ۘۘۢ۠ۘۖۜۧOۗۡۘۘۤۥ";
                    break;
                case 412294578:
                    this.OooooOO = (TextView) findViewById(R.id.tv_splash_ad_mark);
                    str = "ۚ۬ۡۘۧ۟ۖۘۢ۬ۡۘۘۚ۬ۧۛۚۡۧۖۘۙۧ۠ۤۦۤ۬ۡۘۘۡۛۛۗۙۡۘۖۤۗۛۜۘۘۙۘ۟";
                    break;
                case 474001824:
                    str = "۟ۦۧۘۜۚۜ۠ۜۘۚۙۗۧ۬ۖۘۨ۫ۗۧۨۥۖۢۤۥ۠ۨۜۨۘ۫۟۬ۛۖۜ۟۬ۨۙۧۘۘۛ۠ۦۘۧۜۖ";
                    break;
                case 1558524521:
                    return;
                case 1597347334:
                    this.OooooOo = (TextView) findViewById(R.id.tv_close_ad);
                    str = "ۖ۟ۚۨۧۚ۠ۘۦۘۜۘ۬ۙۗۘۘۧۘ۫ۤۥۜۘ۫ۚ۠ۘ۠ۧ۠۠ۨۘۦۥۙۚۘ۟۠۫ۜۘۡۗۥۘۘ۠ۡۢ۫ۚۤۖۧۘۛۘۖ";
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = 0;
        String str = "۟ۗ۠ۗ۠ۜۘ۬ۘۧۘ۫۟ۤۜۧ۫۫۟۫ۤۖۘۙۙۡۘۙۤۜ۬ۢۨۘ۟ۚۦۘۚۛۗۤۦۧ۬ۢۖۨ۟ۜۘ۫ۧۢ";
        while (true) {
            switch ((((str.hashCode() ^ 850) ^ 711) ^ 647) ^ (-1902754031)) {
                case -2001978723:
                    String str2 = "ۖۥۜ۟ۢۖۘۤۢۚۜۜ۬ۙ۫ۗۛۚۜۖۤۘۦۙ۟۬ۡۥۘۗۘۧۤۥۙ۟ۧۨۨۡ۠ۢ۫ۚ۟ۖۤۜۚ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1574014616)) {
                            case 209409154:
                                str2 = "ۙ۫ۦۡ۬ۦۚ۫ۦۘۦ۬ۖۘۘۨۦۜ۫۬ۥۥۖۘۧۤۤۘۗۛۖۖۨۘۦ۟ۖۘ۠ۖۧۧۥۦۘۚۛ";
                                break;
                            case 275410975:
                                String str3 = "ۜۦۨۧۧ۫ۢۛۤۢۛۦۘۧۘۦ۠ۤۜۘ۬۫ۗ۫ۨۢ۟ۦۨۘۡ۫ۡۘۘۥۘۘۢ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ (-897315372)) {
                                        case -1991929854:
                                            str3 = "ۤۧۗۘ۟ۡۖۜۗ۫ۤۖۘۦۖۛۚۗۡۘۘۨ۠۫ۛۖۨۤ۬۟ۙۙۢۧۥۘۙۢۦۘۛۚۦ۫ۢۖۘ۬ۖۦۘۜۗۨ";
                                            break;
                                        case -1590931352:
                                            str3 = id == R.id.tv_close_ad ? "۫ۧۦۘۡۚۤ۟ۚۘۘۘۦۚۗ۠ۙۧ۠ۘۘۦۢ۬ۗۘۜۖۡۖۘ۬۠۟ۢ۟ۨۨۡۘۘۜۥۖۘۖۖۨۘۜۘۦۤۢۘۘ۠ۛۜۗۜۡۘ" : "ۥۨۦۡۥۦۢۧۘۘۧۡۢ۬ۥۘۧۥۢ۠ۨ۟ۨ۟ۢۛۨۚۥۛۦۡۙۜ۫ۢۡۘۖۘۡۡۘ۠۫ۦۘ";
                                            break;
                                        case 916011606:
                                            str2 = "ۘۧۤ۬ۗۘۡۨ۬ۘۛۨ۠ۜۤۜ۫ۗۜۖۘۜۤ۟۠ۖۦۚۗۡۦۛۢۗۦ۬۫ۘۧۧۨۘۘۢ۠ۘ۫ۡ";
                                            break;
                                        case 1082382133:
                                            str2 = "ۦۢۢۤۨۗۡۚ۬ۚۚۡۘۗۛۢۨۨۡۘ۬ۚۙ۫ۛۘۘۡۖۨۘۗۘۗۥۖ۟۫ۖۗۚۗ۠۟ۢ";
                                            break;
                                    }
                                }
                                break;
                            case 452121586:
                                str = "ۗ۟ۢۙۗۚ۟ۢ۬ۢۗۚ۫ۡۘ۬ۡۥ۬۠ۜۖ۠ۚۖۘ۫۫ۛ۠۬ۧۛۢۛۡۨۚۤۙۦۦۧۖۘۦۗۨۘۦۥۧۖۤۨۘ";
                                continue;
                                continue;
                            case 536571439:
                                str = "ۜ۠ۧۗ۬۠ۜۡۤۚۙۛ۬ۚۦ۬ۗۜۘۙۘۥ۠۫ۨۦ۟ۢۦ۟۬۫ۗ۫ۨۦ۟";
                                continue;
                        }
                    }
                    break;
                case -1851363009:
                    str = "ۢۖۧۚۨۡۘۥۗۜۘ۟ۧ۬ۨۗۛ۟۫ۨ۬ۧۡۗ۫ۜۘۤۨۖۢۤ";
                    continue;
                case -1674743853:
                    id = view.getId();
                    str = "ۖۗۥۘ۠ۙۡۚ۫ۥۘ۬ۗۢ۫ۘۖۡۘۨۧ۬۬ۚۚۨۦۚۜۘ۫۬ۗ";
                    continue;
                case -1491128518:
                    str = "۟۫ۧۛ۠ۥۘۨۖ۬ۗ۠۬ۡۗۚۘۥۘۘۚۗۚۤۖۡۘۙۚۛۘۛۦۘۖ۬ۖۘۧ۫ۜۡۢۙ۫ۢۦۥۡ۫ۚ۬ۖۖۦۘۜ۬ۖۘ";
                    continue;
                case -1113303003:
                    String str4 = "ۨۘۘۘۧۢۖۜۥۥۖ۟ۛۨۥۦۘۢۤۗۙۗ۟ۨۜۡۙ۟۬ۙۜ۬ۜۧۖۙۖۗۖۦۜ۬ۦۜۤ۠۠۠ۘۧۘۗ۠ۡ۠ۦۤ";
                    while (true) {
                        switch (str4.hashCode() ^ (-332761733)) {
                            case -305116788:
                                str = "ۢۖۧۚۨۡۘۥۗۜۘ۟ۧ۬ۨۗۛ۟۫ۨ۬ۧۡۗ۫ۜۘۤۨۖۢۤ";
                                break;
                            case 461954063:
                                break;
                            case 1034125103:
                                str4 = "ۦۖۖۡۗۧۡۗ۬ۜۖ۫ۦۡۙ۟ۙۤۦۥۡۘۨۨ۫ۦۘۧۘۚۛۦۘۤۗ۬ۗ۫۫";
                                break;
                            case 1521430593:
                                String str5 = "ۛۨۢۦۙۥ۫ۜ۬ۜۚۤۨۘۜۘۜ۫۬۠ۦ۠ۥۘۡۙۦۘۡۤۤۦ۫ۖۥۘۥۘۜۜۢۛۦ۫";
                                while (true) {
                                    switch (str5.hashCode() ^ 767787550) {
                                        case -1965692938:
                                            str5 = "۟ۗۡۘۚۚۘۤ۬ۨۜۡۥۜۦۨۘۧۙ۠ۛۢۢۛۚۙۛۢۗۚۨ۫ۤ۟ۡۘۧۨۖۘۤ۟ۜۨ۬ۚۤۖ۬ۛ۠ۥۘ";
                                            break;
                                        case -792723217:
                                            str4 = "ۖۤ۬ۦ۟ۚ۬ۘۘۘۥۜۤۚۧۡۘۧۧۘۘ۠ۚۢۨ۬ۚۡۗۖۨۨۤ";
                                            break;
                                        case -584648932:
                                            str5 = id == R.id.iv_splash_ad_fullscreen ? "۠ۥ۫ۤ۟۠ۖۡۢ۬۬۫ۘۙۖۥۥۙۖۤۢۥۨۘۘ۟ۦۦۘۧ۫۬۫۫ۘۘۨۗ۠ۖ۠ۧ۟ۦ۫ۥ۫ۜ۬ۗ۠" : "ۜۖۦۢۨۖۘۙۤۡۘ۬ۨۘۛۦۘۘۚۗۖۘۥۦۗۘۢۛۥۜۘۘۜۥۡۘ";
                                            break;
                                        case 299267356:
                                            str4 = "۟ۗ۫ۘۨۘۡۘ۠ۗۤۛۨ۫ۡ۟۠ۛ۫۟ۧۛۚ۫ۤۨۘۡۜۢۘۘۡۘۢۦۡۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -991190707:
                    break;
                case 79357701:
                    str = "ۥۘۘۛ۠ۛ۫ۘ۫ۗۙۜۘۢۜۘ۬ۨۖۘۙۤۙ۫۬ۨۘۗ۠ۗۧۤۖۘۥۖۦۘ۫ۧۜ۠ۧۢ۟۬ۧۙۚۘۘۥۦۘ";
                    continue;
                case 336089603:
                    return;
                case 368872638:
                    String str6 = "۬ۜۡۘۢۢ۠ۙۜۜۘۖۦۘۘۡۛۥۤۡۖۘۖۤۨۖۦۖۜۦۗ۠ۤۦۘۛۥۚۖۖۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-115472690)) {
                            case -1085173980:
                                str6 = "ۥۛ۠ۜ۟ۦۗۡ۬۬۬ۥ۫ۘ۠ۖۘۦ۬ۗ۫ۜۘۦۨۖۤۢ۫۠ۘۨۘۙ۫ۗۚ۠ۖۘۢۡۘۘۥۛۦۥ۠ۛ";
                                break;
                            case -1050121133:
                                String str7 = "ۢۚۘۘ۬ۢۘۨ۬ۨۘ۠ۛۛۜۦ۟ۚۧۧۥۛۖۖۦۘۘۖۤۘ۟۬ۦۘۨۜۜۘۧ۠ۖ۫ۘۛۤ۠۫";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1448177514)) {
                                        case -1427154503:
                                            str7 = "ۚۜۜۧۡۨۤۚ۠۫۟ۚۙۧۥۘۢۨ۫ۖۗۢۘۖۦ۠ۧۘۘۙۜۤ۟ۨۥۘۨۥ۬ۛۜ۠ۡۛ۬ۜ۬۬ۢۡ۟ۢۙۚۜۗۜۘ";
                                            break;
                                        case -1327333746:
                                            str6 = "ۜۜۡۘۡۢۦۥۦۤۗۦۜۥ۟۬ۤۛۜ۫۫ۖۖۧۡ۬ۦۨۘۥۢ۫ۘۘۚ۟ۨۘۨۙۘۤۛۥۘ";
                                            break;
                                        case -734880584:
                                            str7 = this.Oooooo < 3 ? "ۡۧۚۥۤۨۘۧۥۙۢۘۨۖۗۥۘ۠ۤۨۘۧ۬ۜۘ۬ۘ۠۟ۨۖۘ۟۠ۥۦۤ۠ۢۘۧۘۡ۠۟ۥ۬ۜۛۨۙ۫ۥ۟" : "ۧۚۡۜۡۤ۠۫ۘۘۢۚۖۘۖۦۡۘۛ۠ۦۘ۠ۜ۬۫ۜۗۧ۟ۦۥۥۖۡۦۛۦۨۘۛ۬ۦۥ۟ۦۘۨ۫۫۟ۥۗ";
                                            break;
                                        case 1709864345:
                                            str6 = "ۘۚۖۥ۬ۤ۬۠ۛ۟ۤۗۧ۫ۨۘۗۘۨۘۘۙۘۘۖۖۦۤۙۜۥ۠ۘۗۡۦۘۦۥۨۘ۫۫ۛۧ۠ۖۡۘۨۤ۬";
                                            break;
                                    }
                                }
                                break;
                            case -233426605:
                                str = "ۘۙۜۨۙۡۘۘۛۨۚۥۘۙۤۖۘۢۤۨۙۜۥۘۤۙۨۨۡۜۘ۟ۤ۟ۛۙۛۧۥۡ";
                                continue;
                                continue;
                            case 5323810:
                                str = "۬۫ۦۢۥۛۡۢۢۖۡۘۘ۬ۖۗۤ۟ۦۘۢۚۦۜۚۤ۟ۡۦۘۙۖۤ";
                                continue;
                        }
                    }
                    break;
                case 448830959:
                    OooOOoo();
                    str = "ۗۥ۟۬ۗ۫ۛۢۘۚۦۜۘۘ۟۟ۤ۫ۗۜۨۧۜۘۢ۬۬ۘۥ۟ۡ۠ۨ۟۠ۡۜ";
                    continue;
                case 1157914463:
                    OooOo0o();
                    str = "ۘۗۨۚۜۖۘۢۚۢۛ۫۟ۛۡۡ۟ۥۘۜۡ۬ۨۤ۟ۧۙۖۘۦۙۧۙۛ۠ۨ۟ۨ";
                    continue;
            }
            str = "ۗۥ۟۬ۗ۫ۛۢۘۚۦۜۘۘ۟۟ۤ۫ۗۜۨۧۜۘۢ۬۬ۘۥ۟ۡ۠ۨ۟۠ۡۜ";
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "۟ۗۧ۟ۚۦۥ۬ۖۢۜۧ۫ۨۥۛۦ۟ۦ۠ۦۘۡۦۥ۫ۧۜۤ۬ۚۡۨۗ۬۟";
        while (true) {
            switch ((((str.hashCode() ^ 73) ^ me.o0000oo) ^ 200) ^ 867335447) {
                case -686827126:
                    str = "ۙۖ۫ۧۨ۟ۜۘ۫ۖۛۜۘۥۢۜۤۙ۫ۗۨۘ۫ۤ۟ۙ۟۬ۢۜۙۧۧۦۘۚۤۗۛ۟۟۟۠ۤ";
                    break;
                case -573595414:
                    initListener();
                    str = "۫۟۫ۛۤۛۤۘۘۚۗۜۘۜۤۧۦۖۢ۬ۙۦۘۤ۫ۦۘۥۖ۫۬۬ۥۤۘۥۘۢۡۨۘ";
                    break;
                case -511384964:
                    initData();
                    str = "۬۬ۡ۠۟ۢ۟ۘۢ۠ۙۗ۬ۡۤۢۥۘ۠ۗۛۘۥۙ۟ۙ۬ۡۙۥۢۢۛۢۛۥۦۡۨ۫";
                    break;
                case 186508767:
                    setContentView(R.layout.activity_fullscreen_ad_two);
                    str = "ۛۜ۫ۙۥۚۦ۫ۥۛۙۘۜ۠ۡۦۘۖۘ۬ۥۢۜۚۖ۟۠ۖۘۡۚۗ۟۠ۛ۠ۘۜۙۘۙۗۨۥۦۡۜۡۘۡ";
                    break;
                case 528131878:
                    str = "ۦۡۨ۫ۙۘۘۡۥۜۘۡۨۗۚۦۨۘۢۥۢۚۜۛ۟ۨۘۡۗۥۡۢۨۨ۟۟ۤۧۖۡۘۛۥۘۨۦۗۥۦۢۦۢۦۧۨۢ";
                    break;
                case 749643531:
                    return;
                case 778291825:
                    super.onCreate(bundle);
                    str = "ۙۘۥۘۙۡۘۜۦۧۘۢۙۤ۟ۦۖۘۥۦ۫ۡ۠ۢۖۖۡۘۧۗ۫ۧۡ۟۠ۚۡۧۜۛۜۤۘۖ۫ۖۘۘۗۖۘۨۚۤ";
                    break;
                case 1433223173:
                    requestWindowFeature(1);
                    str = "ۚ۟ۚۨۘۜۘۨۡۦۚۙۙۘۘۘ۬ۖۡ۬۟ۜ۠ۙۜۘۗ۬۬ۙۖۨۗۘۖ۫ۥۨ";
                    break;
                case 2133215715:
                    initView();
                    str = "ۗۤۨۜۛ۟ۚۖۥۘ۬ۤۥۘ۟ۦۢۖۦۡۘ۬ۜۨۡۢۜۘۥ۬ۜۘۡۖۙۤ۬ۤۦۘۘ";
                    break;
                case 2140352475:
                    getWindow().setFlags(1024, 1024);
                    str = "ۥۛۨۤۛۦۘۖۨۛۡۛۡۘ۬۬ۛۡۥۧۦۘ۟۠ۜۖ۫ۢۥۘۚۡۘۦۗۖۤۤ۬";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "۬ۚۤ۟ۧۨۙۚۜۘۘۖۖۘۧۖۜۤۘۖۘۦۥۡۘۥۜۧۙۧۤۤۧۖ۬ۨۧۘۨ۫۠۟ۚۘۘۡۤۜۘۛۤۛ۫ۗۦ";
        while (true) {
            switch ((((str.hashCode() ^ 283) ^ 980) ^ 984) ^ 563970462) {
                case -2070938050:
                    str = "ۥ۠۫ۦۛ۟ۦۜۤۨ۬ۧۤۛۘۢ۟ۦۘۢۙۙۥۘۘ۫۬ۦۘ۫ۜۜۘۤۘۢ۬ۨۛ";
                    break;
                case -1161287172:
                    super.onDestroy();
                    str = "ۨۚ۬ۘۤۗۢۖۘ۟ۦۨۘۛۤۥۘ۠۟ۦۨۘۖۘۨۡۧۘۚۙۙ۟۠ۨۚۖۤ۫ۤ۠";
                    break;
                case -741228704:
                    OooOO0o();
                    str = "ۖۡۖۘۢۥۦۨۖۤۥ۫۬ۖۖۢۤ۫ۖۛۜۥۨۡۧۨۖۡۘۚۦ۬ۨۙ۠۬ۢ۠ۘۙۘۘۧۧۗ";
                    break;
                case -239035148:
                    this.o0OoOo0.removeCallbacksAndMessages(null);
                    str = "ۜ۬ۥۘۗ۠ۙۜ۫ۧۜۨۨۛۤۧۜۧۘ۟۬ۚۦ۫ۖۘۗۛۙۧۘۧۘ";
                    break;
                case 808727292:
                    return;
                case 979159178:
                    this.Ooooooo = false;
                    str = "۫ۙۧ۟۬ۨۨۦۢۥۜۧۘ۫ۨۙ۫ۤۡ۫ۨۨۘۖۤۧۖۡۢۥۜۨۘۨ۫ۥۗ۟ۚ";
                    break;
                case 1434542011:
                    mc.OooO0oo().OooOO0o();
                    str = "ۚۜۖۘۤۢۨۥۧۢۧۢ۫ۤۨۡۘۚۢ۟۬ۘۡۘ۬ۗۚۗۧ۠۬ۚۤۚۗۛۗۚ";
                    break;
                case 1711818993:
                    this.ooOO = false;
                    str = "ۗۥۡۘۤۘۢۦۢ۬ۨۤۡۘۡۖۡۘۤۚ۟۫ۨۧ۟ۦۘۨۙۨۘ۟ۨۧۨۤ۠ۙۢۜۘۚ۫ۦۡۧۗ";
                    break;
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        String str = "ۘۖۤۨۤۗۛۘۘۤۦۘۘ۬ۢۢۖۥۦۘۢ۟ۙۢۨۘۗۥۙۡ۠ۘ";
        boolean z = false;
        boolean z3 = false;
        while (true) {
            switch ((((str.hashCode() ^ 418) ^ 30) ^ 617) ^ 435801852) {
                case -2110643206:
                    str = "۟ۧۚۡ۟ۨۗ۠ۘۘۚۛۙۢۖۘۖۚ۫۬۠ۖۘ۫ۖۧۘۦۛ۠ۨۜۙۘۜۥۘۡۙۘۘ";
                    break;
                case -1902314911:
                    z3 = true;
                    str = "ۗۢ۫۠ۛۚ۠ۙۦۙۘۥۨۜۘۗۤۜۡۚۙ۟ۘ۫ۚۧۤ۫۫۠ۡۛ۫ۡ۟ۦۘ";
                    break;
                case -1861285984:
                    str = "ۢۦۜۘ۠۫ۢ۟۠ۙۦۥۚۖۨۨۘۙۚۡۘۡۦۗۧۨۧۘۜ۟ۨۥۗ۟ۜۦۘ۟ۖۦۘۘۛ۟ۚۙۘۘ";
                    break;
                case -1844582276:
                    str = "ۧ۬ۤۘۧۛ۟۫ۜۘۧۢۖۛ۠۠ۢ۬ۥۘۙۤۢ۟ۖۚۦ۬ۚۙۖۧۘۤۤۥۘۦ۬ۘۦۢۡ۬۟۟";
                    z = false;
                    break;
                case -886145483:
                    str = "ۢۘۛۦۗۢ۫ۨۜۢۛۨۖۤ۟ۡۚۖۥۘۗۡۙ۬۬ۧۢۗۖۘ";
                    break;
                case -846848808:
                    str = "ۧ۬ۤۘۧۛ۟۫ۜۘۧۢۖۛ۠۠ۢ۬ۥۘۙۤۢ۟ۖۚۦ۬ۚۙۖۧۘۤۤۥۘۦ۬ۘۦۢۡ۬۟۟";
                    break;
                case -695078717:
                    str = "۫ۗۦۦۜۢ۠ۜۜۦۢۘۨۚۡۘۤۤۨ۬ۡۤ۠ۡۢ۠ۡ۟ۗۡۖۘۤۡۥۘۧۢ";
                    break;
                case -684030437:
                    String str2 = "ۛۢ۫ۖ۫ۙ۫۫ۜۘۘۢۥۘۡۚ۬ۡۨۘۘۙۧۗۡ۟ۙۛۘۡۗۙۗۜۚۘۘۜۥ۠";
                    while (true) {
                        switch (str2.hashCode() ^ (-383704053)) {
                            case -915820165:
                                str = "ۚ۫ۤۖۜۘۛۖۥۘ۫۟ۥۘ۠ۨۥۘۦۥۦۤ۠ۚۦۚ۬ۜۤۥ۟۟ۦۦۨۗۥ۫ۧۤ۬ۖۘۡۖۘ۫ۦ۟۠ۖۘۘ";
                                continue;
                            case 877366334:
                                String str3 = "ۤۧۡۘۤۢۙۨۜۚۚۦۦ۬ۢۡ۠۠ۥۘ۬ۨۘۙۨۙۡۥۢۤۙۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1902484181) {
                                        case -1740099162:
                                            str3 = "۬ۥۛۤۡۧۚۘۧۘۢۘۖۢ۠ۥۨۙۡۙۨۢۧۤۘۘۦ۬ۜۘۗۘۥ";
                                            break;
                                        case 1458878065:
                                            str2 = "۬ۦۛۨۛۜۘۤۢۥۘۖۛۗۛ۠ۛۙۗۚۦ۟ۖۨ۠ۦۘ۟ۧۨۨ۟ۨۘۦۖ۠۬ۜۤۧ۬ۥۢ۫۬ۛۙۚۧۦ۠";
                                            break;
                                        case 1975705968:
                                            str3 = i == 4 ? "۬ۤۦۛۘۘۨۘۘۡۡۘۘۦۤۛۧۘۛۡۛۜۘۛۡۘۘ۫ۧۖۧۧۚۨ۬ۘۧ۟۠۟۠ۡۖ۠ۦۨۡۗۡ۠ۜ" : "ۢۗۨۗۖۜۨ۠ۙۨۧۧ۬ۦ۟ۧۧۖۛ۫ۤۜۙۚۥۥۚۚۖۤۖۘۙ۟۟ۨۜۨۗۖ۟ۧۥۨۖۘۨ۫ۡۧ۫ۖ۟ۢۗ";
                                            break;
                                        case 2048823595:
                                            str2 = "ۨۛۦۘ۬ۖۧۘ۬۟ۨۗۖۘۘۦۚۙۦۢۨۖۘۘۛۘۦۘۚۦۘۗۙ۟ۡۜۜۘ۫ۤ۟ۜۦ۟ۥۡۥۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1095695816:
                                str2 = "ۘۖ۫۬ۦۘۛۜۦۤ۟ۢۚۢۘۚ۠ۘۖۘۘۦۘۖۘۢۙۡۡۚۖۘ";
                                break;
                            case 1883134587:
                                str = "ۖۖۦ۫۬۬ۜ۠ۘۘ۬ۚۦۘۦۥۙ۠ۢۗۖۗۘۘۛۙۥۘ۟ۨ۠ۢۚۦۨۥۦۘۥۥۡۘ";
                                continue;
                        }
                    }
                    break;
                case -366546934:
                    str = "ۜۚۧ۬۬ۢۖۥۜۥ۠ۜۘۢۤ۟ۡۢۦۤۛۥۘۦۛۚۗۖۘ۬۬";
                    z = z3;
                    break;
                case 620841163:
                    return z;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۢۖۧۘۦۢۥۥۗۜۥۦ۠ۨۘ۬ۜۨۡۘۘۧۡۛۨۘۡۚۦۘۦۙ۫ۙۤۡۚۗۢۤۤ۬ۥۤۚۖ۫ۖۖۗۧۨۡۥۘ۠ۚۜ";
        while (true) {
            switch ((((str.hashCode() ^ 228) ^ 170) ^ UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE) ^ (-197320973)) {
                case -1031435606:
                    str = "ۛ۫ۜۘۦۖ۫۫ۜۨۘۥۜۥۘۜۚ۠۫ۤۗ۬ۢۡۘۚۡۘۧ۠۫ۖۙۡۘۘۧ۫ۨۡۦۛۢۥۘ۬۬ۨ";
                    break;
                case 630860857:
                    return;
                case 1313680067:
                    MobclickAgent.onPause(this);
                    str = "ۦ۠ۜۙۙۦۗۤ۟ۛۚۡۘۨ۫ۛۚ۬ۤۜۥۖۘ۬ۛۘۙۖۖۡۘۦ";
                    break;
                case 1668389136:
                    super.onPause();
                    str = "ۧۧۙۙ۬ۘۘ۬ۡۥۦۙۜ۫ۙۜۘۧۤۥۘۗۖۛۙۜۙۤۤۘۗ۬ۤۢۤ۠ۥۛۦۤۘۖۘۦۡۥ۫ۦۤۖ۟۟ۜۧۜۧۡۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۘ۬ۖۘۗۙ۫۫۟ۧۘۤۢ۫ۙۦۗۡۘۜۙۥ۟ۥۤۤ۟۟ۤۦۤۥ۠ۖۛ۟ۡۘ۫ۨ۠۟ۦۥۘۙۡۗۜۙۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 273) ^ 339) ^ 125) ^ (-1614382043)) {
                case -2103449169:
                    str = "ۖۗ۫ۖۛۨۡۙ۠ۜۧۖۘۧ۫ۘۘۖۢۦۦۘۧۘۗ۫ۖۘۦۙۚۤۚۨۢۛۦۦۖ۫";
                    break;
                case -1134796533:
                    return;
                case -875965994:
                    super.onResume();
                    str = "۟ۛۜۘ۠ۚۘ۬ۥۖ۠ۚۦۢ۠۠ۚۗ۟ۦۛۡ۟ۜۜۤۙۦ۬ۛۤۚۨۖۦۛۡۘ";
                    break;
                case -251178859:
                    String str2 = "ۙ۠ۢۥ۠ۖۡۜ۫ۜۤۦۖۜۛۚۥۘۚۙۛۙۜۨۡۡۦۚۗۦۤۘۧۘۦۡۦۘۛۢۥۘۧۜۜۧۘ۠ۗۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1987199346)) {
                            case -2074682305:
                                str2 = "۠ۥۘۘۜ۫ۦۘ۟ۥۡۥۜۨ۫ۙۧ۫ۘۡۘۡۚۥۘ۬۬ۖۘۡۧۖ۠۫ۦ۬۟ۘ۫۬ۖۘ";
                                break;
                            case 1114484777:
                                String str3 = "ۧ۫ۨۡۦۧۘۤۨۨۘۘ۫ۥۘۦۥۧۗۤۤۥۘۙۖۖۨۜۧۖۜۖۘ۬ۙۥ۟۟ۦۘۤۘۘۥۙۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-2010322569)) {
                                        case -329513950:
                                            str3 = "ۗۨۘۗۦۘۢۜۖۧۖۙۨۦ۠۠ۧۚۨۜۡۘۢۖۢۙۨۡ۫ۚ۫ۛۘۨۘۜ۠۬۫ۖۧ۫۬ۡۘۦ۬ۥۘ۬ۨۘ";
                                            break;
                                        case 236997230:
                                            str3 = this.ooOO ? "ۧۚ۬ۡۗۨۘۧۧۥۛۙۨۘۗۦۘۛۥۜ۫۠ۚۢ۠ۤ۬۠ۜۘۧۚ۫ۜۛۤۥۛۧۦۗۖۢۤۤۡۥۘۙۛۘ" : "۟ۢۨۘ۬۠ۦۘۤ۟۫ۢۜۦ۫۬ۙ۫ۨۦۘۤ۠ۖۙ۫۟ۢ۟ۘۘۘۢۡۗۨۥۤۘۚ";
                                            break;
                                        case 526905833:
                                            str2 = "ۡۗۙ۫ۙۢۥۘۡۜۤۜۘۚ۟ۙۢۖۡۜ۫ۥۧۡۥۚۜۙۛۤ۬ۤۨۚۗۡۘۜۚۤۧۚ۠ۜۗۙۛۥ۟";
                                            break;
                                        case 834227088:
                                            str2 = "۫ۘ۟ۚۙۘۖۗۘۘۛۗۦۘۗۤۦۘۛۥۘۘ۟ۦۡۤۖۗۡۜۗۗۦۧۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1512275072:
                                str = "ۖۤۨۙۨۥۘۛۨۜ۫ۡۘ۫ۘۡۥۤۦۡۨۦۨۢۥۘ۟۠ۘۘۙۢۨۘۨۛۚ۠ۦۦ";
                                continue;
                            case 1859067452:
                                str = "ۚۜۛۤۖۦۖۙۜۘۜۦ۬ۗۦۥۦۡۡۖۖۨۘ۠۠ۘۚۦۘۛۘۙۛۖۨۘۦۦۥۦۗۗۖۙ۠";
                                continue;
                        }
                    }
                    break;
                case 956958183:
                    this.o0OoOo0.postDelayed(new OooO00o(this), 200L);
                    str = "ۚۜۛۤۖۦۖۙۜۘۜۦ۬ۗۦۥۦۡۡۖۖۨۘ۠۠ۘۚۦۘۛۘۙۛۖۨۘۦۦۥۦۗۗۖۙ۠";
                    break;
                case 1309623666:
                    MobclickAgent.onResume(this);
                    str = "ۖۜۨۘۜۧۤ۠ۧۡۜ۬ۦۡۨۧۜۚ۠۠ۖۤۡ۬ۖۗۤۙۦۖۘۘۘۧۜۘۛۢ۠ۥۧۛۘۖۜۤ۬۬ۛۨۥۘ";
                    break;
            }
        }
    }
}
