package com.cyjh.elfin.ui.activity;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import androidx.core.view.PointerIconCompat;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import com.ac.R;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.expressad.d.b;
import com.anythink.expressad.foundation.g.a;
import com.anythink.expressad.video.module.a.a.m;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.GameSwitchInfo;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.tools.utils.BootDexManager;
import com.cyjh.elfin.tools.utils.ThreadUtils;
import com.cyjh.elfin.ui.activity.ElfinFreeActivity;
import com.cyjh.elfin.ui.view.customview.RTDViewPager;
import com.cyjh.elfin.ui.view.viewpagerindicator.TabPageIndicator;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.umeng.commonsdk.proguard.v;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.ThreadMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.Marker;
import z2.a4;
import z2.as;
import z2.b5;
import z2.b7;
import z2.bh;
import z2.c5;
import z2.c7;
import z2.ca;
import z2.dh;
import z2.e5;
import z2.f6;
import z2.g5;
import z2.g6;
import z2.ga;
import z2.gc;
import z2.i7;
import z2.ii;
import z2.j3;
import z2.j4;
import z2.ja;
import z2.k3;
import z2.k6;
import z2.l10;
import z2.l8;
import z2.m7;
import z2.me;
import z2.na;
import z2.o8;
import z2.oa;
import z2.oi;
import z2.q7;
import z2.r10;
import z2.r6;
import z2.r7;
import z2.r9;
import z2.t4;
import z2.u8;
import z2.uc;
import z2.v3;
import z2.w3;
import z2.x4;
import z2.x8;
import z2.y4;
import z2.y8;

/* JADX INFO: loaded from: classes.dex */
public class ElfinFreeActivity extends BaseModelActivity<na> implements View.OnClickListener {
    private static final int o00000 = 1001;
    public static final String o000000;
    public static final int o000000O = 2;
    private static final Logger o000000o;
    private ja OooooOO;
    private View OooooOo;
    private int Ooooooo;
    private NotificationCompat.Builder o00O0O;
    private NotificationManager o00Oo0;
    private ImageView o00Ooo;
    private TextView o00o0O;
    private ImageView o00oO0O;
    private TextView o00oO0o;
    private GameSwitchInfo o00ooo;
    private uc o0OOO0o;
    private ca o0Oo0oo;
    private int o0OoOo0;
    private ImageView o0ooOO0;
    private boolean o0ooOOo;
    private oa o0ooOoO;
    private boolean oo0o0Oo;
    private boolean Oooooo0 = false;
    private float Oooooo = 0.0f;
    private float OoooooO = 0.0f;
    private Handler ooOO = new OooO(this, Looper.myLooper());
    private boolean oo000o = false;
    private boolean o0OO00O = false;
    private boolean o0O0O00 = false;
    private boolean o000OOo = false;

    public class OooO extends Handler {
        public final ElfinFreeActivity OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO(ElfinFreeActivity elfinFreeActivity, Looper looper) {
            super(looper);
            this.OooO00o = elfinFreeActivity;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str = "ۛۥۧۘۨۧۘۧۛۨۤۨۨۘۜۨۨۖ۠ۨۘۦۢ۬ۢۜۜ۟ۥۢۚۘ۠ۘۘۜۙۘۘۘ۠ۗ۠ۜۧۘ۬ۜۜۘۥۢ۬۠ۘۤ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE) ^ 19) ^ 302) ^ (-1010964421)) {
                    case -2105283174:
                        String str2 = "ۖۙۘۛۛۦۘ۟۬ۖۘۢ۟۬۫ۘۧۙ۟۫ۙۘۘۢۜۧۘۘۡ۫ۖۡۗ۠۠ۖۘۖ۫ۘۜ۠ۘۘۖۦۨۘۢۧۗۤ۠۟";
                        while (true) {
                            switch (str2.hashCode() ^ 663169919) {
                                case -198142445:
                                    String str3 = "ۚۚۡۘ۟ۖۜۦۗۖ۟ۡۛۥۜۧ۟ۗۨۘ۫۠ۨۘۖ۠ۜۘۤۢۜ۬۟ۡۘۡۦ۫ۤۧۥۘۖۛۥ۠ۙۢۨۖۘۜ۬۬";
                                    while (true) {
                                        switch (str3.hashCode() ^ 727088539) {
                                            case -1006390915:
                                                str2 = "ۜۧۖۨۨۨۘۙ۬ۛۦۡۖۘ۟۫ۢۖۚ۬ۘۖۥ۠ۥۗۡۖۡۘۨۥۥ";
                                                break;
                                            case -861723442:
                                                str2 = "۬ۙۨۘۢ۠ۖۘۡۚۗۙۘۜ۟ۘۘۦۜۢۘۘ۬ۢۡۡۘۥ۠ۚ۟ۥۤۦۢۖۦۡۘۖۦ۫ۚۨۘ۫ۦ۬۬۬ۛ۟ۙۖۧۚ";
                                                break;
                                            case 535458875:
                                                str3 = "۫ۦۘۜ۠ۨۥۢۜ۠ۙۨۗ۫ۡۙ۬ۜۙۗۦۡۜۘۘۜۗۦۚ۫ۨۨۘۜۗۡۨۚۢۛۥۚۜۛۡۨۦۗۗ";
                                                break;
                                            case 959374987:
                                                str3 = 1009 == message.what ? "۫ۚۥۤۧ۫ۥۙۦۘۘ۠۫ۖۜۜۘ۫ۧۥۧۤۤۜۗ۟۬ۥۚۤۢۦ" : "ۦۦۨۘۜ۟ۦ۫ۥۨۘۗۢۨ۬ۧۦۙ۠ۘۘ۬ۦۙۢۙ۫ۜۘۙۚ۠ۨۗ۫ۚۡۘ۬۫ۡۘۜۘۖۨۜۡۘۘۜۗ";
                                                break;
                                        }
                                    }
                                    break;
                                case 316531755:
                                    str = "ۥۘ۫ۛ۬ۥۙۦۚۛۦۙۘۨۘۘۥ۠۠ۗ۟ۧۙۗۜۤۙ۬ۖۢۘۧۡۨۘ۟ۡۗ";
                                    continue;
                                case 475858666:
                                    str2 = "ۜۤۛۚۨۘۘ۫ۧ۬ۛۥۜۛ۬ۤ۬ۛۘۨۥۦۘۨۘۘۜ۫ۡۘۛۦۥ";
                                    break;
                                case 713318532:
                                    str = "ۙۨۖۘۛۖۢ۬ۧۘۘۨۗۧۘۦۚۚ۫ۡۘۥۢۥۘۡۜۙۡۚۨۚ۠ۜ۠۟ۥۘۧۗۤۢۥۤۥۨۥۖۦۢۥ۠";
                                    continue;
                            }
                        }
                        break;
                    case -862250952:
                        return;
                    case -336538674:
                        str = "ۙۤۚۢۖۦۘۦۜ۬۠۬ۖۧۜۜۡۤۡ۠ۨ۠۟۠ۖ۟ۗۜۘۙۦۛۖۛۡ۠ۜۘۧۜ۫ۢۘۛ۠ۧۙ۫ۘۥۘ۫۬ۖ۫ۗۙ";
                        break;
                    case 631400404:
                        str = "ۢ۬ۚۤ۬ۘۘۙ۬ۦ۬ۘ۬ۧۨۘۘۘۢۗۛۥۜۘۚۗۥۘۨ۟ۨۧۨۖۖۖۚۨۗۘ";
                        break;
                    case 1173939637:
                        ElfinFreeActivity.OooOO0(this.OooO00o);
                        str = "ۙۨۖۘۛۖۢ۬ۧۘۘۨۗۧۘۦۚۚ۫ۡۘۥۢۥۘۡۜۙۡۚۨۚ۠ۜ۠۟ۥۘۧۗۤۢۥۤۥۨۥۖۦۢۥ۠";
                        break;
                }
            }
        }
    }

    public class OooO00o extends CountDownTimer {
        public final TextView OooO00o;
        public final ViewGroup OooO0O0;
        public final ElfinFreeActivity OooO0OO;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(ElfinFreeActivity elfinFreeActivity, long j, long j2, TextView textView, ViewGroup viewGroup) {
            super(j, j2);
            this.OooO0OO = elfinFreeActivity;
            this.OooO00o = textView;
            this.OooO0O0 = viewGroup;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            String str = "ۦۨۜۘۜۛۤۨ۟ۗۘۙۦۜۜۜ۫ۧۜۘۤ۬ۨۗۦۚۦۡۦۦۚ۠";
            while (true) {
                switch ((((str.hashCode() ^ 892) ^ 193) ^ 648) ^ (-1226662724)) {
                    case -1634942354:
                        this.OooO0O0.removeView(ElfinFreeActivity.OooOOo(this.OooO0OO));
                        str = "ۘۖۘۖۛ۟۫ۘۡۘ۟۫ۘ۟۟ۡۚۤ۟ۘ۬ۡۘۙۜۢ۫ۢۥۘۙۦ۠ۢۜۨۘ۠ۦ۬ۜۢۥۜۖۘۡۦۡۦۘۚ";
                        break;
                    case -1187350683:
                        return;
                    case -615479137:
                        ElfinFreeActivity.OooOOO(this.OooO0OO);
                        str = "ۡۜۨۧۗ۟ۙۥۥۘۤۤۥۘۥ۠ۡۘۧۧۗۢۘۥ۬ۤۖۜ۠ۖۙۖۖ۠ۘۢۡ۟ۡۚۦۘ۠ۗۛ";
                        break;
                    case -444212259:
                        str = "ۜۗ۬ۥۡۦۢۡۧۦ۟ۨ۟۬ۢۗۢۘۘۜۖۧۜۥ۠ۗۜۘۗۨ۫ۜۥۨۘۤۜۗۛۤۢۙۜ";
                        break;
                    case 281512465:
                        ElfinFreeActivity.OooOOoo(this.OooO0OO, false);
                        str = "۠ۥۧۘۢۖۡۙۦۡۘ۟ۜۜۘ۫ۜ۫ۡۥ۟ۢۚۢ۫ۚۜۘۢۧۡۘ۠ۛۢ۫ۤۖۜۖ";
                        break;
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            int iCeil = 0;
            String str = "ۢ۬ۦۗۜۦۗۢۥۘۜۧۖۡۧۨۛۤ۟ۙۛ۟ۗۦۦۘۜ۟ۨۘۚۙۡۜ۫ۜۘۡ۠ۧۙۥۢ۠۬ۜۘۧ۠۬۬ۨۦ";
            StringBuilder sb = null;
            TextView textView = null;
            while (true) {
                switch ((((str.hashCode() ^ 560) ^ 587) ^ 428) ^ 885799990) {
                    case -1276066717:
                        str = "۫ۨۡۘۙ۫۬ۚۧۨۘۜۜۖۘ۠ۦۧۙۢۘۘۙۧۘۘۘۧ۫ۦۜۧۦ۠ۖۘۧۘۤ۬ۥۚ";
                        textView = this.OooO00o;
                        break;
                    case -1103795004:
                        str = "ۗۢ۟ۥۡۦ۟۠۬ۧۖۦۥ۠ۘۘۨۢۢ۟ۧۧۦۥۖۘ۬۬ۨۜۛۦۢۘۡۘۚۦۜۘ۬ۢۥۨۡۜۤۧۘ۬ۧۧ";
                        break;
                    case -1076061130:
                        sb.append(iCeil);
                        str = "۟ۨۚ۫ۘۘۘۧۧۨۤۗۦۘۚۙۧۛۗۥ۠ۦۢ۟ۨۡۜ۠ۙۥ۟ۢۨۘۨۘۘ";
                        break;
                    case 476720019:
                        sb = new StringBuilder();
                        str = "ۖۜۗۜ۫۠ۥ۬۠ۖۗۨۘ۬ۗ۬ۘ۬ۤۤۥۨۘۘ۫ۙۤۙۤۦۡۧ۬ۜۖۘۢ";
                        break;
                    case 968516309:
                        str = "ۖۥۗۨۥۛ۬ۢ۬۟۫ۡۘۤۨۗ۟۟ۚۡۡۥۘۦ۠ۥۛۗۘۙۚۧۘۙۥۘۖۛۢۨۤۜۛۥ۬۫۬ۤۥ۟ۦۘ";
                        break;
                    case 1002092925:
                        str = "ۗۥ۠ۦۧۨۘ۠ۥۤۗۙۦۤۛۜۥۦۗۡ۟ۜۥ۬ۘۘۚۥۚ۠۟ۜ۟ۤ۫ۢۜۨ";
                        iCeil = (int) Math.ceil(j / 1000.0f);
                        break;
                    case 1860696216:
                        sb.append(v.al);
                        str = "ۖۤۘۤ۟ۗۡۖ۬ۘۙۚۘۧۗۛۦۡۤۤۢۢ۠ۜ۠۬ۡۥ۫ۥ";
                        break;
                    case 2007353897:
                        textView.setText(sb.toString());
                        str = "ۜۦۡ۬ۥۧۨۨۥۘۡۙ۫ۚ۟۫ۧۡۡ۠ۗۥۘۦۘۧۤۥۨۘ۬ۨ۫ۥۖۖۛۘۘۙۧۖۘ۬ۖۧ";
                        break;
                    case 2008958523:
                        return;
                }
            }
        }
    }

    public class OooO0O0 implements View.OnClickListener {
        public final CountDownTimer OoooOoO;
        public final ViewGroup OoooOoo;
        public final ElfinFreeActivity Ooooo00;

        public OooO0O0(ElfinFreeActivity elfinFreeActivity, CountDownTimer countDownTimer, ViewGroup viewGroup) {
            this.Ooooo00 = elfinFreeActivity;
            this.OoooOoO = countDownTimer;
            this.OoooOoo = viewGroup;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۧۤۤۧۡۡۘۢ۟۟ۢۢۡۘۛۖۜۨۥۤۤ۫ۨ۟ۢۤۢ۫ۦۘۖۡۤۗ۬ۡۘ۟ۚۖۚۜۨۢۢۤ";
            while (true) {
                switch ((((str.hashCode() ^ 568) ^ 641) ^ 316) ^ (-2078221379)) {
                    case -1748410885:
                        ElfinFreeActivity.OooOOoo(this.Ooooo00, false);
                        str = "ۡۨۦۗۨۘۨ۠ۗۤۚۙۥۚ۠ۖۙۥۘۜۡۡۘۥۧۖۘۜۙ۟۠ۜ۟ۙۙۥۘۧۡۨۘۧۢۦۘۛۦۧ";
                        break;
                    case -326534428:
                        this.OoooOoO.cancel();
                        str = "ۤۦۥ۬ۡۢ۠ۦۤۡۜۨۘۧۜۡۘۙۡۜۖۛۜۘ۟ۗۖۨۗۦۜۙ۠ۢۦۘۘۖۗۜۧۧ۟ۨۦۘ";
                        break;
                    case 475931172:
                        return;
                    case 556667065:
                        str = "ۡۘۜۘ۠ۦۨۘۖۧۛۤۤۜۘ۠ۨۗ۠ۢۛ۬ۨۜۢۥۦۤۗۥۘ۟ۙۥۘۡۦۗۨۛۙۙۙۦۘ";
                        break;
                    case 1761840782:
                        str = "ۚۧۥ۬ۨۦۘ۬۠ۨۘۖۙۦۨۘۘ۟ۖۧۘۖۦ۠ۗۖۧۡۦۢۘۖۗ۫۠ۨۗۤ۫ۛ۫ۖ۟۫ۖ۫۠ۡۘۢۤۗ۬۬ۥۧۨۘ";
                        break;
                    case 1826147530:
                        this.OoooOoo.removeView(ElfinFreeActivity.OooOOo(this.Ooooo00));
                        str = "ۡۙۨۘۘ۠۟ۥۥۧۘۖۗۖۘۘۦۘ۟ۛۢۤۢۖۧ۬ۥ۬ۤۜ۠ۚۡۘۤۛۡۧۖ۠ۖ۬ۗ۫ۙۡۥۘ۫ۛۦ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements View.OnTouchListener {
        public final ElfinFreeActivity OoooOoO;

        public OooO0OO(ElfinFreeActivity elfinFreeActivity) {
            this.OoooOoO = elfinFreeActivity;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            String str = "۟۟ۘۗۖۘۖۡۖۘۗۤۢۗۡۗۛ۠ۨۘۦۜۡۘۦۜۚۖ۠ۘۘ۬ۤۨ";
            int action = 0;
            while (true) {
                switch ((((str.hashCode() ^ 21) ^ 337) ^ 295) ^ 483855670) {
                    case -1623949859:
                        return true;
                    case -1489477813:
                    case -1152033922:
                    case 681980318:
                        break;
                    case -1484134010:
                        ElfinFreeActivity.OooOoOO(this.OoooOoO, view);
                        str = "۟ۤۖ۠ۖۙ۠۠ۜۡۜۘۧۚ۠ۢۤۘۘۜۖ۫۟ۡ۬۟ۖۤۘۘۥۦۜۖۛۥۘۥۛۦۘ۠ۢۘۧۨۤ۫۫ۢۚۢۦۘۜۙۧ";
                        continue;
                    case -1465273233:
                        ElfinFreeActivity.OooOo(this.OoooOoO, motionEvent.getRawY() - view.getY());
                        str = "۬ۙۗۙۧۥۘۘۙۗ۫ۥۗ۫ۜۧ۟ۥ۫ۦۚ۟۫ۡۦۗۘۛۦۨۜ";
                        continue;
                    case -1201698499:
                        ElfinFreeActivity.OooOoo0(this.OoooOoO, view);
                        str = "ۦۚۜۘ۟ۧۛۦۖۜۖۖۜۘۚۢۜ۟ۖۥۗۥۜ۠ۛۢۘۧۖ۠ۤ۠ۗۤۦۘۨۚۘۚ۠ۥۢۛۥۤ۫ۖۘۦۖ۫";
                        continue;
                    case -1177666081:
                        str = "ۥۙۖۧۜۖۚۡۦ۠ۧۙۨۗۦۙۙۨۨۜ۫ۧۘۘۢۘۙۤ۠ۥۘۢۚۜ۫ۛۛۘۘۦۨ۟ۦ";
                        continue;
                    case -1026104977:
                        str = "ۜۦۗۚۤ۠ۜ۬۫۬ۨۗۧۖۚ۠ۨ۟ۤ۬۫ۜۧۙۦۧۥۛۗۡۘۢ۠۬ۛ۠ۥ";
                        continue;
                    case -409289496:
                        view.setX(motionEvent.getRawX() - ElfinFreeActivity.OooOo00(this.OoooOoO));
                        str = "ۨۙۧۤ۟ۘۖۡۘۗۘۚ۠۫ۦۘ۟ۜۘۘۧ۟ۚۨۤ۬ۥۗۤۗۨۙ۫ۗۥۘۦۛۨۦۦۤۘۢۘۘ";
                        continue;
                    case 377860679:
                        String str2 = "ۧ۬۠ۢۘۚ۫ۧۖۘۙ۬ۘۘۚۜۦۤۤ۬ۨۖۙۙۖۨۘۖ۠ۢ۠۫ۗ۟۬ۗۢ۟ۢۘۦۘۜۚۥۘۗ۬۫ۚۥۦ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1649840539)) {
                                case -1549876300:
                                    str = "۬۠ۚ۟۟ۡۛۤۖۡۥۘۗۚ۟ۗۙۘۘۜۡۤۜ۠ۨۘۗۙۚۨۜۘۢۜۘۘۘ۬";
                                    continue;
                                    continue;
                                case 1199547897:
                                    str2 = "۫۫۬۫ۥۖۛۤ۬ۙۙۘۘۙۖۜۧۚ۠۫ۙۘۘۧۦۡۘۧۛۗ۬۠ۙ۬۫۟۠ۙۚۤۖ۠ۦ";
                                    break;
                                case 1974696958:
                                    String str3 = "ۙۥۗۤۗۚۥ۬۟ۡۚۥۘۦۨ۟ۡ۟ۡۘۜۧۙۢۖۘۢۖ۬ۡۥ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1443239463) {
                                            case -2111240489:
                                                str2 = "۠۟ۘۘۘۥۚۢۙۜ۠ۢۡۘ۟۠ۡۜ۟ۛ۫ۤۗۗۖ۠۫ۦۘۤۖۜۘۘۦۧ۬ۧۜۘۗۜۥۘۢۘ۟ۨۘ۠ۦۦ۫";
                                                break;
                                            case -574776731:
                                                str2 = "ۗۦ۟ۜۡۥۘۤۗۡۦۖۡۘ۬ۤ۠ۨۦۦۦۤۥۘۘ۫ۛۤۢ۠ۖۘ۬ۦۜۘ۠ۢۛ۫ۦۨۡۧۜۥۨۘۚ۬ۜۘ";
                                                break;
                                            case 1191961083:
                                                str3 = action != 0 ? "ۛۢۨۘۥۚۛ۫ۧ۬ۦۛ۟ۤ۠۠ۢ۫۟ۡ۠ۤۚۜ۠۫ۘۙ۫ۖۘۛ۠ۚۥ۠ۜ" : "ۤۦۖۘۧۗۖۛۨۡۘۡۘۛۦۛۥۘۢۥۧ۠۬ۜ۫۠ۨۙۗۡۘۨۦۚ۫ۘۙۥۨۡۘۨۗۚ۟ۢۛۥۙۡۘۜۖۨۘ";
                                                break;
                                            case 1358022118:
                                                str3 = "ۦۨۤۢۗۨۛۖۖۥۜۨۖۥۨۜ۠ۚۡۤۘۦۨ۫۠۟ۧۖۘۚ۬۟ۡۖ";
                                                break;
                                        }
                                    }
                                    break;
                                case 2098282021:
                                    str = "ۨ۟ۚۜ۬ۖۘ۠ۡۨۘۥۚۜ۟ۥۥۘۢۘۖۙ۬ۗۖۛۡۤۡۚۡۢۨ۬۠۠ۛۛ۬ۗۘۛۤۧ۟ۗ۠ۜۨ";
                                    continue;
                            }
                        }
                        break;
                    case 910216414:
                        view.setY(motionEvent.getRawY() - ElfinFreeActivity.OooOo0o(this.OoooOoO));
                        str = "ۡۗۙ۬۠۬ۗۧۨۥۛ۬ۥۡۘۘۡ۫ۢ۟ۘۘۘۧ۟ۨۘۜۨۜۘ۫ۗۦۧۢ۫ۖۜۘۨۨۨۘۚۤۗ";
                        continue;
                    case 1008183100:
                        action = motionEvent.getAction();
                        str = "۠ۖۡۘ۬ۗۛۡ۠ۙۖۧۘۛ۫۬ۥۡۦۛۥۦۢ۬ۡۨ۬۟ۙۤۜ۬ۡۚۧ۬۫۬ۘۦۤۘۨۘۙۜۥۡ۬ۜۤۗۖۦۛۡۘ";
                        continue;
                    case 1076811221:
                        String str4 = "ۖۛۨۘۛۛۗۢ۬ۨۘۛۥ۫۟ۛۖۘۛۚۢۥ۬ۥۘۗۡ۬۫ۨۨۛۧۘۘۜۡۘۘۢ۠ۡۘۨۜۨۚۦۛ";
                        while (true) {
                            switch (str4.hashCode() ^ (-1224695249)) {
                                case -737915799:
                                    str = "ۘۜۘۦۥۢۗۚۜۘۛۤۥۘۧۖۗۘ۟ۤۛۘۘ۠ۙۗۢۥۨۘۨۨۘۗۤۡۧۗۡۘ۬۟ۖۘۚۨۘ";
                                    break;
                                case -73157209:
                                    str4 = "۬ۤ۬ۘ۫ۛۨۨۘۦۦۥ۬۫ۡ۫۠ۜ۬ۤۧۘۥۧۘ۠ۗۘۘۢۚۨۘ";
                                    break;
                                case 1524431211:
                                    String str5 = "ۛۡۥۘ۠ۧۤۖۘۥۘ۠ۢۚۡۢۛۦۤۙۡۦۙۤۙۨۖ۫ۡۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1785818593)) {
                                            case -1966580834:
                                                str5 = "ۛۘۥ۬ۢۖۘۢۡۘۘ۬ۜۥۘۢۥۜۥۦۧۢۡۨۘ۫۫ۢۙۜۡۗۥۖۘ";
                                                break;
                                            case -1218866188:
                                                str5 = ElfinFreeActivity.OooOoO0(this.OoooOoO) ? "ۘ۠ۜۘۡۛۚ۠ۤۖۡۖۜۡۗۚ۫۫ۜۖ۟ۙ۬۫۫ۢۛۤۛ۟۫" : "ۢ۫ۥۙۢۜۘۚ۠ۘۨۗ۬ۚۨۜۡۢ۠ۗ۟ۗۧۨۨۗ۠ۨ۟ۦۘۗۧۖۢ۟ۡۘۡۛۨۙ۬ۚ";
                                                break;
                                            case -467789515:
                                                str4 = "ۘۖ۬ۖۗۨۦۨۖۘ۠۠ۘۧۨۧۘۦ۫۬۬ۨۢۘۤ۬ۢۦۨۚۗ۠ۥۤۥۘۥۨ";
                                                break;
                                            case 650994163:
                                                str4 = "ۚۢۖۘۡۢۘۘ۬ۧۖۘ۠۫ۜۜۢۙۨ۬۫ۙۜۚۗۗ۫ۦۦۡۨۨ۟۫ۘۡۘۥۚۘۘۥ۬ۘۨۖۡ۫ۥۡۖۨ۠ۥۨۤۛۗ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1636231971:
                                    break;
                            }
                        }
                        break;
                    case 1191217498:
                        str = "ۤۙۦۘ۬ۖ۟۠ۗۦۡۗۘۘۜ۠ۦۘ۠ۘۧۘ۬۟ۘۘۥۖۢۙۘۜۢۧۡۘۘۤ۟۬ۤۡۘۦۜۜۥۘۡۙۜۘۤۥۗ";
                        continue;
                    case 1403555513:
                        String str6 = "ۡۚۦۘۨۜۖۘۡۤ۫ۙۤۛۡۛۦۥۥۥۡۘۥ۬ۤۗۦ۟ۦۘۨ۠ۚۘ۟ۡۘ۬۟";
                        while (true) {
                            switch (str6.hashCode() ^ 1871307342) {
                                case -1673793477:
                                    String str7 = "ۤۗۦۘۖۘۦ۫ۥۧۖۥۜ۬ۖۚ۟ۙ۫ۘۦ۠ۗ۫ۘۘۖۥۡۘۙۧۤ۟ۜۧۘۗ۬ۡۤ۬ۖۖۗۘۗۨۖۘۥۚ۠ۘ۬ۨ۟ۧۨ";
                                    while (true) {
                                        switch (str7.hashCode() ^ 791379162) {
                                            case -791370357:
                                                str7 = "۠ۙۨۡۥۦۤۦۧۘۜۦۘۥۧۜۛۙۖۘ۬ۚ۠ۚۘۗۥۛۦۘ۬ۙ";
                                                break;
                                            case 1447734484:
                                                str6 = "ۧۦۥۘ۬ۜۧۘۜۗۦۘۧۙۥۘۜۜۖۘۗۡۨۘۨ۫ۧۚۘ۬ۥۧۥۚۧۧۢۧۢۤۥۜۘ۫ۡۘۗۖ۫ۙۗۤۗۢۢۖۧۙ۠۫ۜۘ";
                                                break;
                                            case 1480058004:
                                                str6 = "۠ۖۖۡۘۡۨ۟۠ۚۖۢۛۢۧۚۘۥۥۡ۫ۨۙۤۢ۬۠ۡۦۛۢۧۡۘۤۨۦۤۜۨۘۨۡۦۘۧۧۡۘۡۜۛ";
                                                break;
                                            case 1672798525:
                                                str7 = action != 2 ? "ۗۡۤۙۚۥۘۚۤۡۘۧۚۧۦۦۢۧۡۦ۟ۧۧۥ۠ۤ۟ۤۥۘۡۜۜۧۜۘۖ۬ۗ۬ۖۘۧۖۘۘۙ۬ۜۨۗۘ۫ۙۚ۬۟ۡ" : "ۧ۫ۙ۬ۨ۫ۖ۟۫ۗ۬ۛۧۚۖۨۢۤۤ۬ۖ۠ۚۚۜۛۙۛۤۨۘۡۛۡۘ۠۟ۚ";
                                                break;
                                        }
                                    }
                                    break;
                                case -439912308:
                                    str6 = "ۖۧ۫ۘ۬۫ۙۘۜۙۜۧۘۦۧۥۘۥ۠۬ۧۚۘۛۗۥ۬ۡۘۢۘ۠ۙۢۨۘۜۘۘۘ۬ۨۡۘۖۢۘۘۧۗۙۥۖۙ";
                                    break;
                                case -207183991:
                                    str = "ۧۥ۟ۛ۬ۖۘۧ۠۫ۢۥۦ۟ۦ۫ۚۦۗۜۥ۫۠ۜ۟۬ۥۦ۟ۘۜۘ۟ۧۥۗۢۥۘۤۨۦۘۤۥۛۘۤۥۘۛۙۘۙۙۧۛۜۖ";
                                    continue;
                                case 1160116594:
                                    str = "۟ۜۧۘۡ۠۬ۦۨۘۨۥۥۗۧۨۘۚۙۘۘۗۖ۬ۗۨۖۡۢۘ۟ۛۘۘ۟۠۫۠ۗ۬۟ۛۨۘۗ۟ۥ۠ۜۨ۠۟ۘۘۥ۫ۘۘۜۢۜ";
                                    continue;
                                    continue;
                            }
                        }
                        break;
                    case 1441163434:
                        String str8 = "ۨۚۨۘ۠ۤ۫۫ۤۥ۠ۤ۬ۚ۬ۗۚۥ۫ۡ۟ۖۘۚۦ۬ۚۤۨۘۛۜۘ۬ۡ۫ۡ۠ۤ";
                        while (true) {
                            switch (str8.hashCode() ^ (-957928910)) {
                                case -1215525482:
                                    str = "ۢۜۡۘۙۙۦۘۥۘۦۘۢۗۦ۫ۡۘ۠ۙۜۖۨۘۦ۟ۡ۟ۨۚۦۜۧ";
                                    continue;
                                case -571333190:
                                    String str9 = "ۚ۫ۨۥۥۚۥۢۤۦۙۛ۬ۦۘۦۨۘ۬ۧۦۘ۬ۙۜۘۘۜۙۚۨۖۘۚۛۖۥۖۖۜ۟۬۟ۧۡۘۤۘۜۘۥ۫ۖۘ";
                                    while (true) {
                                        switch (str9.hashCode() ^ (-50141551)) {
                                            case -1686488500:
                                                str9 = "۬ۘ۟ۨۖۙۢۨۧۘۦۘۘۗۤۧۥ۫ۡۘۥ۟ۡ۟ۨۨۘۤۧ۟۫ۜۙ";
                                                break;
                                            case -1237434307:
                                                str8 = "ۤ۠ۖۙۙ۬۬ۘۥۘ۠ۦۖ۬ۢۗۛۚۛۛۡۜۘۖ۟ۙۙۡۧۨۙۜۡۦۗۨۡۢ";
                                                break;
                                            case -1080887444:
                                                str9 = action != 1 ? "۫۫ۛۘۦۦۥ۠ۥۘۜۨۧۘۛۗۜۙ۬۠ۦۛۥۡ۬ۖۗۨۡ۫ۨ" : "۬ۨۢۚۢۖۘ۫ۨۡۖۘ۬ۤۗۡۘ۟ۙ۟ۙ۫ۚ۬ۚ۟۫ۛۘۙۗۖ";
                                                break;
                                            case 2085728559:
                                                str8 = "ۥۨۚۚۘۧۗۤۨۘۘۡۘ۟ۜۙۙۘ۟۠ۧۧۢۦ۟ۨ۬ۥۛۜۖۘۢ۬۬ۧۦۚ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1141390629:
                                    str8 = "ۖۥۢۚۗۦۤۛۘۥۢ۟ۡۨۛ۬ۤۥۘ۟۫ۜۘۛۗۦۘۖۤۨۢ۫ۤۛۙۨۘۙ۫ۢۢۢۗۚۖ۠۬۠ۨۘۧۧۘۘۥۧ۠ۨۥ۫";
                                    break;
                                case 1580469836:
                                    str = "ۥۤ۠۫۟ۡ۫ۜۘ۫ۙۤۘۘۜۨۚۙۛ۫ۖۙ۟۟ۧۨۢۡ۬";
                                    continue;
                                    continue;
                            }
                        }
                        break;
                    case 1604698052:
                        ElfinFreeActivity.OooOo0(this.OoooOoO, motionEvent.getRawX() - view.getX());
                        str = "ۖ۟۟ۗ۠ۘۘۜ۟ۖۖ۟ۖ۫ۘۦۘۤۚ۟۟ۥۘ۠ۗۡۚۨ۫ۙ۠ۖۘۨۜ۬ۜۧۚۜۡۦۘۛ۬۫۬۬ۧۙۚۤۘۘۘۜۛۦ";
                        continue;
                    case 1646594355:
                        ElfinFreeActivity.OooOoO(this.OoooOoO, true);
                        str = "۫۠ۗ۟ۧۘۘۛۗۥۘۢۚۗ۟ۛۡۘۦۛۨۡۡۜۘۜ۫ۦۙ۫ۛۡۖۥۘۗۥۜۢ۠ۦۘۚۥ۠ۗۙ۟ۥۥ۫۟ۨۧۘۘۧۡۦ۫ۘۘ";
                        continue;
                    case 2020120550:
                        ElfinFreeActivity.OooOoO(this.OoooOoO, false);
                        str = "ۙۙۨۘ۟ۚۢۨۢۥ۫ۘۖۘۢ۫ۖۘۦ۬ۘۦ۟ۥۘۦ۟ۡۘۢۧۛ۟۬۟ۘ۫ۘۘۡۡ۟ۢۢۛ۟ۨۤۦۘ۬ۛۡۘ";
                        continue;
                }
                str = "۫۠ۗ۟ۧۘۘۛۗۥۘۢۚۗ۟ۛۡۘۦۛۨۡۡۜۘۜ۫ۦۙ۫ۛۡۖۥۘۗۥۜۢ۠ۦۘۚۥ۠ۗۙ۟ۥۥ۫۟ۨۧۘۘۧۡۦ۫ۘۘ";
            }
        }
    }

    public class OooO0o implements Runnable {
        public final float OoooOoO;
        public final float OoooOoo;
        public final ElfinFreeActivity Ooooo00;

        public OooO0o(ElfinFreeActivity elfinFreeActivity, float f, float f2) {
            this.Ooooo00 = elfinFreeActivity;
            this.OoooOoO = f;
            this.OoooOoo = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "۠ۚۘۘۛۘۧۘۧ۬ۜۗ۠ۡۘۗۚۨ۬ۤۡۘۢۥۡۚ۟ۘۙ۫ۜۘۗۜۜۖۢۥۚۘۨۘۛۦۘۨۦۚ";
            while (true) {
                switch ((((str.hashCode() ^ 69) ^ 788) ^ 689) ^ 315807791) {
                    case -614243128:
                        str = "ۙۚۚۘۖۨۘۙۛ۟۠ۢ۠ۘۙۨۢۜۘ۬ۖۚ۫ۖۘۧۗۨۘۘ۠ۜۘۙ۠ۢ۠ۗۢ۬۫۟۬ۤۤۥۙۙ۟ۦۚ";
                        break;
                    case 1243793360:
                        return;
                    case 1650095973:
                        ElfinFreeActivity.OooOOo(this.Ooooo00).setX((ElfinFreeActivity.OooOoo(this.Ooooo00) * this.OoooOoO) - ElfinFreeActivity.OooOOo(this.Ooooo00).getWidth());
                        str = "ۤ۫ۜۘۖۘۘۤۧ۟ۙۚۙ۟ۡۨۘۙۘۧۘۧۡ۟ۤۘۘۙۖۙ۟۫ۖۘۗۤۚۜۘۦۖۥۢۖ۫ۘ";
                        break;
                    case 2123769672:
                        ElfinFreeActivity.OooOOo(this.Ooooo00).setY(ElfinFreeActivity.OooOooO(this.Ooooo00) * this.OoooOoo);
                        str = "ۚۥۥ۬ۧۧۢۡۚۜۨۘ۬ۧۦۥ۫ۖ۟ۢۜۚۡۙۥۖۜ۬ۜۧۘۥۤۤۨۦۗ";
                        break;
                }
            }
        }
    }

    public class OooOO0 implements Observer<RegCodeInfoResponse> {
        public final ElfinFreeActivity OooO00o;

        public OooOO0(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        public void OooO00o(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
            String str = "ۥ۬ۡۚۗۜۘ۠ۚۦ۫ۡۘۙۨۘۘ۫ۡۗۥۦۜۘۤ۟ۜۜۚۘۘۗۘۜۖ۫ۚۛۙۙۘۦۤۡۦۜۥۨۧۘۗۙۘ";
            while (true) {
                switch ((((str.hashCode() ^ 933) ^ 136) ^ 734) ^ 431447514) {
                    case -1277286656:
                        str = "ۡۜۥۙۥۨۘۢۨۥ۠ۢۗ۫۠ۙۦۨۦۘۚۖۜۘۖۜۖۘ۠ۚۨۘۥ۟ۡۢ۠۠ۗۘۨ";
                        break;
                    case -1087110449:
                        str = "ۧۛۙ۠ۤۘۛۖۦ۬ۡ۟ۘۘۘۚ۠۬ۢۢ۠ۘۘۖۘۢ۬ۤۦ۟ۥۡ۬ۥۤۧۘۘۤۥۧۛۚۜۘ";
                        break;
                    case 445415893:
                        return;
                }
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
            String str = "ۦۜۨۘۧۗۙۛۖۚۛۨۚۨ۠ۖۘۗۡۖۘۜۗۡۘۧ۟ۖ۬ۡۖۡۢ۟ۛۤۧۗۧۦ۫ۚۛۚۧ";
            while (true) {
                switch ((((str.hashCode() ^ 769) ^ 945) ^ as.OooO00o) ^ (-164372141)) {
                    case -2096589139:
                        str = "ۦ۟ۘۘ۬۠ۥۡ۠ۤۤۨۜۖۢۧۨۧۨۘ۟ۥۡۡ۫ۡۗۜۘۤۙ۫۬ۗۘۘۚ۟ۨۖۧ۫ۡ۫ۧۥۥۘۗۦۢۤۨۢ۬ۛۢ";
                        break;
                    case -2082788337:
                        return;
                    case 696245159:
                        OooO00o(regCodeInfoResponse);
                        str = "۠ۢۛۧۙۡۘۙۜۨ۠ۦۘۘۜۡۦ۫ۘۜۦۥۖۤۙ۟ۗ۫ۨۛۜۘ";
                        break;
                    case 1305661775:
                        str = "ۚۨۗ۬ۗۢۦۜۡۙۤۘۘۨۨ۫۬ۜۤۡۥۜ۬ۖۨۗۚۜۧۢۜۖۘۤۖۦ۟ۡۢۦ۬ۜۡۧ۫۫۬ۢ";
                        break;
                }
            }
        }
    }

    public class OooOO0O implements Runnable {
        public final ElfinFreeActivity OoooOoO;

        public OooOO0O(ElfinFreeActivity elfinFreeActivity) {
            this.OoooOoO = elfinFreeActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۥۦۖۘۤۨۘۖۚۢۗۢۨۙۛۜۡۨۚ۬ۜ۟ۘۤۗۢۜۡۚ۟ۡۘ";
            while (true) {
                switch ((((str.hashCode() ^ 83) ^ 984) ^ 729) ^ 762880441) {
                    case -148544939:
                        str = "ۚ۟۟ۙ۬ۤ۫ۛۦۚۤۜۘ۠۠ۙۜ۬۫۫ۤۥۘۛۧۘ۠ۙۖۧ۟ۛۗۦۘۚ۠ۤ۟ۧۚۚۧ۠";
                        break;
                    case 155161686:
                        return;
                    case 1215615454:
                        ElfinFreeActivity.OooOO0o(this.OoooOoO, false);
                        str = "ۙۚ۫ۨ۬ۚۥ۟ۚ۬۬ۖۡۙۥۤۢۘۡۨۛۚۢۜۘۗ۬ۨۛ۠۬";
                        break;
                }
            }
        }
    }

    public class OooOOO implements Observer<VersionUpdateInfo> {
        public final ElfinFreeActivity OooO00o;

        public OooOOO(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001a. Please report as an issue. */
        public void OooO00o(@Nullable VersionUpdateInfo versionUpdateInfo) {
            StringBuilder sb = null;
            String str = "ۤۛ۟ۧۛۗ۬۫ۧۙۨۛۛۤ۠ۙۛۨۘۗۚۜۘۜ۬ۙۦ۬ۘۘۘ۬ۖۤۨۢۗۖ";
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                switch ((((str.hashCode() ^ 74) ^ 381) ^ 68) ^ (-1506506877)) {
                    case -2105162532:
                        str = "ۗۧۦۘۖۤۜۘۜۧۘۙۗۡۘۧ۠ۜۗۢۨۘۚۜۜ۬ۘۜۤۢۥ۟ۚۦ۠ۢۘۘ۠۫۠ۢۚۧ۠ۢ۫ۦ۫ۡۖۡ۫";
                        break;
                    case -2045566793:
                    case -26836898:
                        break;
                    case -1739654400:
                        String str2 = "ۜ۟ۘۘۤۡۘۡ۬۫ۥۧۡۘۗۨۧۨۖۚۘ۟ۡۦۦۤۖۘ۟۟ۜۛۡۢ۫ۨۘۘۘۖۘۖۘۗۛۙۙۛۙۥۡۘۧۖۧۦۘ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1538890013)) {
                                case -1580627160:
                                    str2 = "ۖۨۙۢۡۨۜۥۖۥۥۨ۬ۢۨۘۖۘۡۥۖۤۧۤۖ۠ۖ۟ۡۖۦۘ۠ۗۗۘ۫ۦۘۧۤۥۦ۠ۖۘۧ۫۠ۦۗۙ۬ۗۜۘ۟ۧۢ";
                                    break;
                                case -665639111:
                                    str = "ۘ۟ۢۦۧ۠ۚ۟ۙۗۗۨۡۗۘۢۜ۟۬ۢۤ۬ۗۦۘۡ۠ۖ۫۠ۢ";
                                    break;
                                case 794412783:
                                    String str3 = "ۙۦ۠ۤۨۨۘۘۨۧۘۚۙۨۘۛۗۤۧۤۖۧ۟ۚۧۖۧۘۚ۟ۖۘۜۧۡۗۜۨۘ۠ۗۚۛۗۜۘۨۘۥ۠۟ۢۥۧ۬";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-1255889215)) {
                                            case -2001566356:
                                                str2 = "ۤ۟ۦۙۧۘۘۙۛۨۨۖۖۚۤۥ۫ۚ۫ۨۛۚۦ۠ۜۘۘۨۜ";
                                                break;
                                            case -685892929:
                                                str3 = "ۛۥۨۘۨ۟ۧۙۖۚۨۦۜۗۙۤۢۨۖۤۦۢ۬ۤۦۘۥۜۜۘۨۢۚۘۦۜۘۛۢ۠ۡۥۛۢۨۡۘ";
                                                break;
                                            case 421537674:
                                                str3 = 3 == versionUpdateInfo.UpdateType ? "۠ۢۜۘ۠ۗۦۘۧۧۛۡۥۧۘۤۨ۟۠ۗۖۗۡۢۜۘۘۙۨۨۘۚۧۛ" : "۬۟۬ۨۨۜۘ۠۟۬۟ۧۦۨ۠ۧۡۜ۠ۘۨۦۘۦۜۨۧ۟ۧۦۘۡۖۘۥ۟ۛۚۧ۫ۚۨۡ";
                                                break;
                                            case 462517729:
                                                str2 = "ۢۜۖۨۘۘۘۜ۟ۖۘۛۚۦۦۦۨۢۘۗۥۥ۟ۙۜۘۘۦ۬ۛۦۘۛ";
                                                break;
                                        }
                                    }
                                    break;
                                case 867638948:
                                    break;
                            }
                        }
                        break;
                    case -1724560659:
                        AppContext.OooO00o().OoooOoo = true;
                        str = "ۙ۫ۡۘۡۦۦۙۢۨۜۦۥۙ۬ۧۙۤۦۧۤۘۡۡۨۘۦۧ۫ۘۘ";
                        break;
                    case -1534485967:
                        String str4 = "ۜ۟ۦۘۜ۫ۗۧۤۖۖ۫ۖۙۚۢ۫ۛۘۘۡۨۡۧۛۢۡۗۖۘۖ۫ۛۦ۟۬ۢ۟ۚ۬ۢۨ۬ۤۖۘۖۢ۠ۥۛۢۘۖۙ";
                        while (true) {
                            switch (str4.hashCode() ^ 731827381) {
                                case -1389726032:
                                    String str5 = "ۤ۠ۜۘ۬ۨۧۜ۫ۧۘۤۨۘۤۡۜۘۡۘۛۤ۬۫۬ۨۙۘ۫ۖۘۤۘۛۘۗۘۖۗ۟ۦۧۖۖ۬ۖۘۢۤۘۘۢۥۜ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-725191381)) {
                                            case -2123132029:
                                                str4 = "ۢۖۥۚۜۧۘۙۙۤ۫ۜۗۙ۠ۥۘۛۤۖۚۥۡۘۜۘۤ۠۫ۚۧۚۥۘۙۛۢۢۚۢۥۥۙۗۢ۫ۜ۟۬ۨۧۘ";
                                                break;
                                            case -1367033770:
                                                str5 = versionUpdateInfo.UpdateType == 1 ? "ۜۥۜۗ۫ۢۢۤۨۘۦۧۧۧ۠ۨ۟ۙ۠ۛۢۥۘ۬ۛۜۥ۠۫۟۫ۗ" : "ۛۖۖۘۛ۠ۖۘۧ۫ۘ۠ۜۢ۬ۢۖۘۦۤ۟ۘۥ۟ۨۘۨۡۦۡۗۡۘۚۨۘۘۗۚۤ";
                                                break;
                                            case -297151732:
                                                str4 = "ۧۧۗ۠۟ۚۜۙۧ۫ۙۖۨ۠ۜۜۦ۠ۘۚۥۧۧۤۧۦ۬ۨۘۨ۬۟۬ۘ";
                                                break;
                                            case 1396769109:
                                                str5 = "ۖۡۛۖ۠ۤ۫ۦۦۧۖۤۚۡۘۗۤ۠۠ۗۥ۠۫ۛ۫۫۫ۙ۠ۖۜۘ۫ۚ";
                                                break;
                                        }
                                    }
                                    break;
                                case -765404344:
                                    str = "ۙ۫ۡۘۡۦۦۙۢۨۜۦۥۙ۬ۧۙۤۦۧۤۘۡۡۨۘۦۧ۫ۘۘ";
                                    continue;
                                case 692785278:
                                    str = "ۡۡۖ۫ۦۤۙۛۦ۫ۦۤۡ۟ۨۗۖۦۘ۬ۧۜۘۡۖۡۛۛۘ۬ۢۡۛۜۜۘ۟";
                                    continue;
                                case 893029354:
                                    str4 = "ۙۘ۟ۡ۟۠ۥۨۜۘۥۚۨۘۛۘ۠ۘ۬ۘۘۡ۠ۨۤۦۢۨۢۖۜۖ۫ۘ۬ۡ۠ۛ۟ۗۦۘۙ۫۠ۨۦۜۘۖۗۡۘ";
                                    break;
                            }
                        }
                        break;
                    case -1325999352:
                        i4 = c7.OooO0oo;
                        str = "ۜۨۜۘ۟۫ۘۤ۠ۘ۟ۖ۟ۡۛۥۘ۫۫ۨۘۧ۠ۥۗۡۤۡۛۛۧۧ۫۟ۤۖۘ۠ۥۤۚۛ۠ۦۚۚۘ۠ۦۘۚ۬ۘ";
                        break;
                    case -1234188381:
                        String str6 = "ۖۜۙ۫ۗۥۨۖۜۨۨۤۜ۫ۨۘۙ۟ۡۘۖۥۛۥۨ۬ۘۧۦ۠ۨۛ۫ۤ۠ۜۦۘۛۗۜۘ۬ۥۜۘ۫ۢۡ۠۠ۘۘ";
                        while (true) {
                            switch (str6.hashCode() ^ (-1841556270)) {
                                case -1709043001:
                                    str = "ۡ۫ۖ۟ۡۗۨۡۖۖۧۚۦۤۖۘۤ۟ۥۘۤ۠ۦۘۥۛۦۘ۟ۜۨۦ۫ۦۨۢۦۘ۟۠۠ۡ۠ۚۧ۫ۚۜۖۡۘۛۛۧۚۜۜۚۘ۬";
                                    continue;
                                case -1260497865:
                                    String str7 = "ۥۚۜۗۨۛۙ۟ۤۤ۟۠ۙۡۘۗۡ۫ۖ۟ۨ۟ۖۡۘۚۘۨۘ۠ۗ۫ۥۖ۬ۘ۫ۜۢ۫ۢۜ۠۟";
                                    while (true) {
                                        switch (str7.hashCode() ^ 1304918433) {
                                            case -1960425792:
                                                str7 = "ۨۘۘۛۖۘۘۤۡۡۘۜۥۧ۟ۗۙۤۗ۠ۦ۫ۖۘۖۢ۬ۡۢۜۨۛۥۘۚۖۘۗ۬ۦ۬ۗۜۘۛ۬";
                                                break;
                                            case -1606480614:
                                                str6 = "ۤ۟ۜۖۡۚۥۤۤۤۧۢ۬ۡۜۚۧۤ۟۠ۥۘۤۥ۟۠۫۠۫ۥۧۤۗۘۘۜۥۜۘۚۖۢۦۙ۬";
                                                break;
                                            case -838821595:
                                                str7 = versionUpdateInfo == null ? "ۜ۫ۢ۠ۛۗ۬ۤۖۘۦۥۙۤۢۢۚۗۗۙۢۖۢۡۘۘۙۜۘۖۥۘۨۡۙۘ۫ۧۚۨ۬ۡۡۘ" : "ۦۨۥۡ۫ۨۛۤۚۢ۠ۜۘۤۜۥۡۢۚۗ۬ۘۚۥۡۜۘۨۘۥۧۨۚۧۙ۟۫ۤۖۘۦۙۧ";
                                                break;
                                            case 728531881:
                                                str6 = "ۤۧۜ۬ۦۜۖۤ۫ۙۗۘۡۤۦۙۙ۟۫ۡۛۙۖۧۘۘۡۤۥۘۘۘۧۜ۟ۙۧۤ";
                                                break;
                                        }
                                    }
                                    break;
                                case 266053339:
                                    str6 = "ۜۚۨۜۛ۠۠ۘۧ۠ۡۤۤۤۡ۬۫ۛۛۘۤ۟ۨۨۘۙۚۨۦۢۙۨۡ۠ۘۙۤ";
                                    break;
                                case 1173721470:
                                    str = "ۙۦۚۜۛۦۘۛ۬ۨۘۗ۫ۚۧۡۧۘۥ۫ۨۘۦۛۨۗۗ۟ۧ۬ۖۦۖۥۘۧۛ۟ۥۦۘۢۗۖ۟ۛ۟";
                                    continue;
                            }
                        }
                        break;
                    case -989488943:
                        sb.toString();
                        str = "ۨۡ۬ۖۜۧۘۥۙۥۘۖ۠ۚۘ۫ۛ۫ۖۦۨۛۦۤ۬ۤۛۤ۫ۘ۫ۚۚۜۢ۬ۥۦۜۛۦۨ۬۫ۖۘۢۥۜۛۢ۠ۨۥ۟";
                        break;
                    case -925478465:
                        c7.OooO0oo().OooO(this.OooO00o.getApplicationContext(), b7.OooO0Oo().OooO0oO().getId(), i3).OooO0oO(versionUpdateInfo.UpdateUrl);
                        str = "ۧۚۚۘۛۥۘۗۨۧۘۤۜۛۖ۬ۦۘ۫ۖۘۥۛۚۛۙۨۖۜ۬۟۫ۜۘ";
                        break;
                    case -523052487:
                        str = "ۗۧۦۘۖۤۜۘۜۧۘۙۗۡۘۧ۠ۜۗۢۨۘۚۜۜ۬ۘۜۤۢۥ۟ۚۦ۠ۢۘۘ۠۫۠ۢۚۧ۠ۢ۫ۦ۫ۡۖۡ۫";
                        i3 = i;
                        break;
                    case -273479183:
                        str = "۬ۖۧۘۚۛۖۘۖۤۙۡۡۤۢ۫ۥۘۧ۟ۨۘ۠۠ۛۧۖۚ۬ۥۛۧ۫ۦۜۚۥۖۡۘۛۢ۟ۥۚۜ۫۫ۢۙۧۖ";
                        break;
                    case -233504601:
                        b5.OooO0OO().OooO0oO(versionUpdateInfo.AppVersion);
                        str = "ۛۗ۟ۤۖۥۘۢۛۧۚۨ۟۫ۡۡۘۦۘۧۧۘۘۚۤۚۘ۠ۡ۫";
                        break;
                    case -37307180:
                        str = "ۧۚۚۘۛۥۘۗۨۧۘۤۜۛۖ۬ۦۘ۫ۖۘۥۛۚۛۙۨۖۜ۬۟۫ۜۘ";
                        break;
                    case 60698811:
                        String str8 = "ۥ۠ۧۢۛۦۦۢۘۡۖۡۘۡۙۖۘۘ۟ۨۘۘ۟ۙۚۛ۠ۘۖۛۙۦۡ۟۟ۘ۫ۥۨۘۚۛۨۘۦۥۨۧۘۖۙ۟ۖ";
                        while (true) {
                            switch (str8.hashCode() ^ 1913360736) {
                                case -375351043:
                                    String str9 = "ۙۡۦۘۚ۫ۥۥ۟۟۟۠ۜۚ۫ۖۢۜۘۤۨۖ۫۬ۧۙۙۨۘۨ۠ۙۖ۬ۛ";
                                    while (true) {
                                        switch (str9.hashCode() ^ (-864635516)) {
                                            case -894669547:
                                                str9 = i5 == 1 ? "ۤۦ۫۠ۗۨۘۧۦۚۙۖۘۛۜ۫ۨۨۨۛۥ۟ۚۜۜۘۗ۫ۘۘ۫ۢۥۘ۟ۦ۠ۛۥۦۘۙۜۧۘ۟۬ۚۚ۟ۦۖۚۜۙ۫ۡۘۚۚۥ" : "ۤۚۨۘۗ۫ۡۘ۠۠۟ۤۚۜۘ۠ۙۦۥۘۡۨۦۘۘۢۚۦۘۥ۟ۦ۠ۛۡۤۧۡ۫ۨ۟۬ۡۥۗۡۨۘۜۛۘۘۖۚ۫۬ۧۥۗۚ";
                                                break;
                                            case -823921766:
                                                str9 = "ۧ۫ۛۚۤ۠ۢۖۖۧۚ۬۟ۥۘۚۦۡۙۨۨۗۖۘۙۙۨۘۛ۬۟۫ۦۢۜۧۜۘۜۙۜۚۛۦ";
                                                break;
                                            case 432080683:
                                                str8 = "ۧ۟ۙۛۥۦۖۧۘۘ۬۠ۙ۟ۖۖۘۧۜۨۘۖ۬ۘۤۘۧۘۡۢۡۘۥ۬ۢۨۙۛۦ۬ۡ۫ۗۨۘۢۘ۟";
                                                break;
                                            case 563657900:
                                                str8 = "۟ۗۨۘۤۧۘۘۦ۠ۡۙۚۘۘۛۚۨ۫ۥۨۛۚۨۚۙۢۜۗۧۜۢ۫";
                                                break;
                                        }
                                    }
                                    break;
                                case -345194283:
                                    str = "ۥۡۦۘۖۜۦۚ۬۬۟ۡۙۙۥۨ۬۬۬ۦۖۡۙۙۦۘۤۜۥۘۗۨۢ";
                                    continue;
                                case 83916457:
                                    str8 = "۬۬ۢ۫ۧۦ۠۫ۘۘۚۢۖۦۜۘۦۥ۠ۥۚۖۛ۟ۦۤۜۦۘۥۡۥۦۚ۫۟ۙۧۡۤۦۘۖۦۚ۬ۥۦۘۜۥۡۘ۠ۖۛۦۤۨ";
                                    break;
                                case 1558433547:
                                    str = "ۚۗ۟ۗۗۦۘۨۗۖۘ۠۟ۙۤۨۘ۠ۧ۬ۛ۬۬ۖۚۨۛۤ۬ۛ۫ۜۥ۬۬ۥۧ۟ۢۙ۠۠۟ۙۦ۫ۨۥۘۤ۬۟ۘ۠ۡۘ";
                                    continue;
                            }
                        }
                        break;
                    case 132850605:
                        ElfinFreeActivity.Oooo0OO(this.OooO00o).show();
                        str = "ۥۗۚۘۥۡ۟ۢۡ۬ۨۖۘ۫ۖۘ۫ۨۤۗۥۜۧۦ۠ۤ۫ۖۘۙۘۗۚۢ۬ۙ۠ۤ۟ۘۘۘۙۗۜ۫ۗۨۘ۬ۨۘۘۨۦۘ۟ۚۧ";
                        break;
                    case 453830581:
                        str = "ۖ۠ۘۘ۠ۛ۟ۛۢۦۙۥۗۘۖۤۤۛۗۡۨۖۚ۫ۡۘۚۦۘۥۗۥۧۦ۬ۤ۫ۤۡۖ۟ۘۘۧۥ۟ۙ۠";
                        i3 = i2;
                        break;
                    case 636782235:
                        sb.append(versionUpdateInfo);
                        str = "ۚۨۦۥۥۤ۠۠۠ۨۤ۟ۡۙ۟۠ۤۖۖۢۖۘۚۨ۫ۖۨ۟ۙ";
                        break;
                    case 821036406:
                        str = "ۛۡۤۨۖۖۥۧ۬ۖۛۡۘۙۧ۟ۥۨۨۦۢۛۥۨۥۘۦۤ۫ۘۛۛ۠ۘۜۘۤ۟ۡۘ۟۟ۖۘۘۜۨۘ";
                        break;
                    case 901881569:
                        sb.append("getVersionUpdateInfo:");
                        str = "ۤۦۚۨۜۡۘۗۧۜۜۗۚ۟ۢ۫ۛۗۤۖۦۦۘ۫ۢ۫ۘ۬ۛۘۖۖۘ";
                        break;
                    case 1015114722:
                        str = "۬ۗۦۘۗۘۡۘ۠ۤ۟ۗ۬ۙۛۙۦۘۨۗۚۙۛۘ۟ۤۡۤۦۘۜۢۛۢۨ۟ۛ۫ۗ";
                        i3 = i4;
                        break;
                    case 1085380966:
                        i = c7.OooO0oO;
                        str = "ۡۜۘۥۗۨۘۙۤۧ۠ۗۡۘ۫ۘۘۘۨ۠۟ۘۙۥ۬ۨۜ۠ۗۦۘۨۧۘۡۨۦۘۖ۬ۘۘۖۚۜۛۡۡۗۜۦۤۙۢ۟ۥۥ۬ۨۧۘ";
                        break;
                    case 1305739367:
                        i2 = c7.OooO;
                        str = "ۖ۠ۡۡۗۡۡۚۘ۫ۛۥۛۗۤۧۦ۠ۘۨۦ۠ۧۨ۬۠۠ۨۜۧۙۙۤ۫ۡ";
                        break;
                    case 1372366354:
                        String str10 = "ۛۥۦۘۙۖۖۤۡ۠ۚۤۦ۠ۚۦۘۖۦۖۘۘۗۥۗۙۖۥۖۘۘۦۛ۫۬ۚۦۘۗۦۢ۬ۨ۠ۗ۬ۦۘۦۙۥۜۨ۟";
                        while (true) {
                            switch (str10.hashCode() ^ 889135416) {
                                case -1570852399:
                                    str = "ۛۛۖۘۢۢۜۤۙۜۘ۫ۥۤۗۙۘۘ۬ۚۖۨۢۙۧۚۥۘ۠ۜۜۡ۟ۗ";
                                    break;
                                case -1198875184:
                                    str10 = "۟ۚۘۘ۫ۨۚ۬۫ۢۨۤۙۚۖۥۘۛۢۥۘۧ۬ۨ۬ۜۜۘ۫ۧۖۚۨ۬ۨۢۢۤۜۡۧۧ۟ۤۡۜۘ";
                                    break;
                                case -309971215:
                                    break;
                                case 991499972:
                                    String str11 = "۬۟ۜۡۤۥۚۢۡۘ۫ۧۘۨ۫ۥۘۜ۟ۖ۟۬ۤۡۤۙۚۢۜۡۧۘ";
                                    while (true) {
                                        switch (str11.hashCode() ^ (-876330957)) {
                                            case -779017655:
                                                str11 = "ۦۘۥ۠ۘۖۧۡۛۡۙۘۤۙۡۦۚۨۘ۫ۚۘۘۥۦۥۗۜ۟ۗۤ۠ۗ۟ۥۦ۫ۥۘ";
                                                break;
                                            case 531821020:
                                                str10 = "ۧۦۢۤۚ۬۬ۚۖۘۚۚۜۗۦۘۨۡ۟ۖ۬۠ۛۤ۠ۤ۬ۛ۫ۤ";
                                                break;
                                            case 896441541:
                                                str11 = i5 == 2 ? "ۤ۬ۦۛ۬ۧۧۥ۫۫ۛۦۦ۫ۖۡۢۜۢ۟ۡۘ۠ۡۛۦۚۨۢۡۘ۬ۖۛ۫۠ۢۛۦۤۥۦۦۙ۫ۨ۟ۖۖۘۘۚۙ۟ۙۤ" : "۫ۨۚۦۗۥۘۧ۬۫۠ۙۖۘۧۤۙۧ۠ۤۙ۫۠۫۫ۚۡۡۥۚۦۨۘۨۘۚۙۡۙ۠ۥۡۘۡۨ۠ۢ۬ۨۖۗۘۘ";
                                                break;
                                            case 1264946334:
                                                str10 = "۫ۙۥۘۥۚۘۛۦۗ۟۫۬ۛۙ۬ۜۘۘۘۛۥۦۘ۟ۘۙۥۘۥ۬ۛۚۚ۟ۙۖۦۛ۬ۙ۟۫ۡ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case 1522022727:
                        i5 = versionUpdateInfo.UpgradeMode;
                        str = "۠ۖۦۘۜۗۨۘۢۚۚۨۚۗۥ۬ۤۙۡۨۜ۟ۛۜ۟ۘۦۢ۟ۡۗۗۖۡۧۘۘۗۚ";
                        break;
                    case 1733443003:
                        ElfinFreeActivity.Oooo0O0(this.OooO00o, true);
                        str = "ۤۛ۫ۘۚۥۤۦۡۘۤۤۧۛ۟ۡۘۧۚۗۥۗۤ۟ۗۜ۟ۦۧۘۗۚۦۘۖۚۥۘۗ۫۫۠ۖۘۘۜۦ";
                        break;
                    case 2003159478:
                        String str12 = "ۜ۬ۧۢۦۨۘۚ۫ۦۙ۬ۢۛۙۚۛۛۦۗ۠۬ۧۙۖۘ۟ۗۨۘ۬ۜۦۘ";
                        while (true) {
                            switch (str12.hashCode() ^ (-1464603133)) {
                                case 158687869:
                                    str = "ۖۥۘۦۦۦۘۧ۬ۨۧۨۜۦۛۥۘۘۜۜ۫ۜۙۦ۫ۦ۬ۨۡ۟ۤۚ۟ۛۤۢ۬ۛۨۢۖۤۧۖۘۜۥۘۡۥۨۨۢۖ۠";
                                    continue;
                                case 949133745:
                                    String str13 = "ۨۛ۫ۧۡۨۛ۬ۨۨۥۨۘۗۗۨۘۘ۫ۨۘۖۡۖۘ۬ۛۘ۠۟۬۬ۨۗۡۢۦۧۢ۟ۛۧ۠ۧ";
                                    while (true) {
                                        switch (str13.hashCode() ^ 1309028868) {
                                            case -1909691941:
                                                str13 = "ۤۤ۠ۘ۬ۨۨ۟ۡۘ۠ۧۦۛ۫ۚ۬ۥۦۘۨۜۚۢ۠ۥۙۚۥۨۚۡۘۢۘۨۘۤۛۨۘ";
                                                break;
                                            case -190665249:
                                                str13 = ElfinFreeActivity.Oooo0o(this.OooO00o) ? "ۡۜۜۘۡ۟ۨۘۘۘۦۜۤۛۥ۠ۥۛۚۙۚۗۘۖۦۨ۫ۚۛۜۖۗۤۘ۠ۢ۬ۤۚۨ۬ۛ۬ۛۥۘۘۨ۬ۘۘ" : "۫ۖۙ۬ۚۡۚ۠۠ۗۛ۬۟۠ۥۢ۬ۛۖۤ۠ۥۤۙ۬۫ۧۧ۫ۧۨۨۤۨۖۘۢۥۡۘۖۙۘۘۡۡۘۘۗۤ";
                                                break;
                                            case 938681367:
                                                str12 = "ۚۢۡۜۗۨۘۛۙ۠ۜۚۚۨۗۨۛۗ۟ۙۥۥۡۗۨۘۥۧۡۨۧ۠ۡۤۛۖۧۢ";
                                                break;
                                            case 1537246693:
                                                str12 = "۬ۡۖۢۖۧۘۗۜۛۨۧۘۜ۠ۖۘۚۨۙۤ۬۬ۚۘۨۦۙۨۘ۠۠ۥۘۦۧۤۚۧ۠ۡۨۘۨ۠ۘۘۙۗۨۘۦۦۖۘۦۙۡۤ۬ۨۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1647775441:
                                    str = "ۧ۟۬ۧۜۡۘۧۢۥۘۜ۠ۥۘۗۥۦۘۦ۫ۗۤۦۢ۬ۗ۟ۜۚ۫۠ۘۤ۫ۘۜۘۘۗۧۦۤۜۘۛ۬ۘۘۛۜۨۤۙۦۘۢۧ۟ۚۦۘ";
                                    continue;
                                case 2075094038:
                                    str12 = "ۦۥۤۚۖ۟ۖۚۥۘۜۚۦۘ۟ۛۦۘۙۦۖ۫ۦۥۤ۬ۦۢۖۘۗۙۜۘۛ۠ۢۧۥ۬ۖ۟ۥۘۢ۠ۜ۠ۢ۟۠ۖۘ";
                                    break;
                            }
                        }
                        break;
                    case 2015999740:
                        sb = new StringBuilder();
                        str = "ۥۖۡ۠ۡۧۜ۠ۘۢۛۧۨۦ۟ۚ۫ۤ۫ۚۤۛۜۥۘۚۗۜۘۢۤۡ۟ۢۘۘۧۚۦ";
                        break;
                    case 2020593194:
                        ElfinFreeActivity.Oooo0o0(this.OooO00o, new ca(this.OooO00o, versionUpdateInfo, false));
                        str = "۬ۙۧۛۨۥۙۨۡۚ۟ۘۘۢۙۖۘ۫ۖ۟۫۠ۚۜۚۗۙۤۨۘۥ۟ۨ";
                        break;
                    case 2076928123:
                        ElfinFreeActivity.Oooo0oO(this.OooO00o, false);
                        str = "ۘۡۘۘ۬ۜۘۢۗ۠۠ۡۤۛۤۖۘۛ۠۫ۗۘۘۚۨۖ۫ۙۛۚۧۙۙۤۥۛۙۜ۠۟ۦۦ";
                        break;
                }
                return;
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable VersionUpdateInfo versionUpdateInfo) {
            String str = "ۘۦۡۧۡۡۦۡۘۙ۠ۨۙۡۧۘۨۛۦۘۖۤۥ۟ۘۨۥۦۦ۠ۦۥۘۙۙۘۘۛ۫ۥۘۧۛۖ";
            while (true) {
                switch ((((str.hashCode() ^ 522) ^ 729) ^ 827) ^ (-1584893951)) {
                    case -2009661205:
                        return;
                    case -1905784570:
                        str = "ۙۡۨ۬ۡۙۘ۟ۛۢۢۢۜ۫ۦۘۤۖۘۜۖۖۦ۟ۗۦ۬ۦۨۢۥ۬ۙۦۧۗۖۘۖۤۥۙۖۗۧ۬ۢۚۡ۬";
                        break;
                    case -667813441:
                        str = "ۖۜۦ۟ۚۘۧۛۢۛۙۨۘۖۖۚۨۖۨۘۛۦۜۘۜۙۜۜۗۖ۬ۖۡ۫ۜۖۖ۬ۤۚۦۥ۟ۢ";
                        break;
                    case 1446193009:
                        OooO00o(versionUpdateInfo);
                        str = "ۤ۫ۜۚۖ۫ۤۜۧۘ۠ۢۦۘۗۖۖۘۧۧۥۘۛۥۜۘۤۜۘ۟۬ۥۘۦ۟ۦۘۗۖۘۗ۬۟۬ۜۨۡۨۖ";
                        break;
                }
            }
        }
    }

    public class OooOOO0 implements Observer<NotifyMsgBean> {
        public final ElfinFreeActivity OooO00o;

        public OooOOO0(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        public void OooO00o(@Nullable NotifyMsgBean notifyMsgBean) {
            ElfinFreeActivity elfinFreeActivity = null;
            String str = "ۖۧۨۗ۟ۧ۟ۦۥۘۨۥۛۖۢۢۛۛۨۛۧۚۜۤۜۘۛۛۗۘۗ۬ۚۤ۟ۧۖۘۦۡۘۘۥۧ۫ۛۤۦۡۡۘ";
            while (true) {
                switch ((((str.hashCode() ^ 168) ^ 159) ^ 141) ^ 8103425) {
                    case -1843952699:
                        elfinFreeActivity = this.OooO00o;
                        str = "ۖۙۦۘۘۢۖۨۥۖۘۗۛ۟ۖۙ۠۟ۥۗۛۢۚۨۗۘۦۗ۠۬ۜۛۤۡ۫۟۬ۨۜ۬۟ۜۦۨۢۥۛۤۡۚ";
                        continue;
                    case -1403777642:
                        return;
                    case -948181270:
                        ElfinFreeActivity.Oooo00o(this.OooO00o).notify(1001, ElfinFreeActivity.Oooo00O(this.OooO00o).build());
                        str = "ۙۚۖ۟ۚ۬۠ۙۗ۫ۤۤۡ۠ۥۘۦۧۨۘۘۜۦۘۥۢۥۡۖۡۘ۫ۙ۟ۨ۬ۡۘۙۘۤۥۗۥۚ۬ۘۦۧ۫۠۠ۗۡۢ۠۟ۘ";
                        continue;
                    case -234365690:
                        ElfinFreeActivity.Oooo00O(this.OooO00o).setContentTitle(notifyMsgBean.NoticeTitle).setTicker(notifyMsgBean.NoticeTitle).setContentText(notifyMsgBean.NoticeTitle);
                        str = "ۗۜۘۘ۟۫ۘۘ۠ۙۖۦۛ۠ۡۧۜۙۖۨ۠۬۠ۤۙۚۘۜۡۘۗۖۚۛ۬ۦۘۤۗ۫ۖۚۥۛ۟ۧ۬ۗۥ۠ۙۜ۠ۜۛ۬ۡ۠";
                        continue;
                    case -136986409:
                        ElfinFreeActivity.Oooo000(elfinFreeActivity, ((na) ElfinFreeActivity.OooOooo(elfinFreeActivity)).OooOooO());
                        str = "ۛ۬۟ۥۥۖۥۤۗۢۚۥۛۙ۫ۦۧۡۤۥۘ۠ۥۨۘۚۨۜۘۤ۬۬ۙۥ۟ۡۛ۬";
                        continue;
                    case 365881120:
                        str = "ۦۚۧ۫۬ۘۘۖۘۧۖۖۘۗ۠ۘۘۛۦۘ۫ۤۨۘۙۧ۬ۗۢۚۛۥۙۖۧۨۘۡ۬ۚۧۤۥۤۧ۬۠ۡۨۘۢۨۤۜۙ۫۠ۜ۫";
                        continue;
                    case 715580044:
                        str = "۫ۨۖۘ۠ۨۡۘۢۤۜۘۡ۫۫ۥ۬ۙۙۜۙۛۢۖۘۜۦۥۘۚۡۙۤۚ۫ۖ۠ۜۘۜۦۖۡ۬ۨۤۦۥۘ۟ۘۡۘ۟ۢۥ۬۠۬";
                        continue;
                    case 1222154271:
                        String str2 = "ۚۙۨۘۗۤۙۥۥۧۘۢ۬ۖۘۦۥ۟۠ۥ۟ۥۧۜۘۜ۫ۦۘۦۚۙۙۘ۠۫ۦۘۧۖۡۘ۬ۥۘۨ۬۫";
                        while (true) {
                            switch (str2.hashCode() ^ (-716523884)) {
                                case -1876965867:
                                    break;
                                case 500813496:
                                    str2 = "۟ۦۦۘۢۡ۠۠۫ۡۙۛۢۧ۫ۙۨۨۦۥۚۥۥۨۘۨۖۘ۫ۘۚۦۧۚۦۢۢۢۡۢۜۚۨۘۦۛۥ۬۟ۖۗۢ۫۠ۗۛ";
                                    break;
                                case 836192424:
                                    String str3 = "ۛۢۖۘ۬۫۫۫ۨۦۦۛۨۘۘۨۙۦۢۢ۠ۗۥۘۚۡۥۤ۫ۜۚۦۚۦۛۦۚ۫ۨۦۦۖۢ۫";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-515973129)) {
                                            case -1999921020:
                                                str3 = "ۨ۬ۡۛۜۘۘۙ۫۠ۤ۫ۗۡۡۦۡۡۖۘۜۡۜۘۨۢۧ۬ۛۡۘۙۥۘۖۨۡۘۖۙۙۜۗۘ۟ۖۖۘ";
                                                break;
                                            case -1907988100:
                                                str2 = "ۜۥ۫۬ۦۖۨۢۨۘۢۜۙۖۤۖۘۦۨۜۘۗ۟ۡۥۛۜۘۚۦۨۘۦۚ۟ۘۤۨۘۨۢۢۤۡۨ۟۟";
                                                break;
                                            case -1715450912:
                                                str2 = "ۜ۠ۥۘۜۙۙۛۤ۬ۚۗۙۜۧ۬۠ۛۘۥۖۡۤۙ۫۫ۛۖۘۦ۬ۘۘۦۨۨۘۡ۠ۘۗ۟ۗۛ۫ۗ۬۫ۦۦۦۖۥۢۜۘۗ۬ۥ";
                                                break;
                                            case 633649795:
                                                str3 = notifyMsgBean.IsSendMessage ? "۫ۦۘۚۢۥۗۥۥۘۥۛ۫ۖۤۚ۟ۘۧۘ۫ۤۥۤۜۢۨۗۨ۬۫۫" : "۫ۚۙۘۜۨۘۢۙۤ۠ۚۜ۬ۦۨۘۛۖۘۘ۬ۖۘۧۤۘۚۙۙ۫ۛۜ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1330739940:
                                    str = "۬۫ۖۙ۠۠ۧۥۜۘۖۨۘۥۦۚ۫ۘۖۘۤ۠ۛۜۢۦۘۥۖۛۖۡۘۜۢ۫ۙۘۖۧۥ۟ۧۦ۟ۤۜۨۘۢ۫ۜ";
                                    break;
                            }
                        }
                        break;
                    case 1720673471:
                        String str4 = "ۤ۫۠ۙۢۤ۬ۤۖۘۘۖ۟ۗۛۘۛۦۛ۬ۘ۟ۤ۫ۜۘۡۘۘۢۦۛۙۤۥۘۢۨۘ۫ۥۢۦۦۡۦۗۧۛۘۨۛۖ۫ۨۦ";
                        while (true) {
                            switch (str4.hashCode() ^ 429885965) {
                                case -499808417:
                                    break;
                                case -23247206:
                                    String str5 = "ۛ۠ۡۘۡ۫ۡۘۖۚۘ۬ۘۤۡ۬۫ۚۢۛ۫۠ۖۘۗۚۦۘۦۡۧۘۗۧۘۧۖۦۧۗۥۢۢۤۙۧۘ۠۫ۖ۬۬ۦ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-702950164)) {
                                            case -1403205958:
                                                str5 = "ۡ۠ۙۡ۟۟ۤۧۖۘۦۧۢۜۡۖۘۨۧۥۛۙۢۦۡۛۛۙۦۘۨۨۨۘۢ۠ۦۦۧۨ۬۫ۡۗۦۘ";
                                                break;
                                            case -741682793:
                                                str5 = notifyMsgBean != null ? "ۘۘۨۘ۫ۢۦۡۢ۟Oۢۜۨۘۘۡ۬ۥۙۘۢۘۖۘۤۢۙ۬ۥۥۧۦۖۗۡۢۖۨ۬۫ۘۘ" : "ۡۥ۬ۨۜۖۘۚۢۢ۫ۦۤۤۚۜۘۧۗۨ۬ۙۧ۟ۚۥۘ۫ۘۘۘۛۘۥۘۤۦۧۜ۟ۜۘۛۙۨۘۢۨۥۘ";
                                                break;
                                            case -611269472:
                                                str4 = "ۚۥۖۘۙۜۜۨ۠ۛ۠ۨۖۘ۬۬۬۬ۚۘۤۘۥۢۚۡۥ۟۫ۧۗۢۛ۟ۥۙۚۙۖۧۜۘۙ۠ۛ";
                                                break;
                                            case 1378013875:
                                                str4 = "ۘۡ۬۬۟۫ۘۡۧۢۙۦۢۥۧۖۜ۠ۧۤۥۜ۬ۚۧۚ۫ۖۘۙۨۨۙ۠ۖۘۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1692368469:
                                    str4 = "ۦۛۘۘۨۛۥۘۚ۬ۧۙۧۖۘ۠ۦۥۘ۬ۢۡۡ۟ۥ۠ۡۤۘۨۧۢ۟ۚ۫۟ۖ۬ۗۧۘ۬ۥ۫ۥۙۡۨۢۢۡۨۡۚ۬ۖ";
                                    break;
                                case 1984122990:
                                    str = "ۦۢۡۘۧۜۘۘۗ۟ۖۘۧۘۥۘ۫۠ۦۚۛۖۘۖ۬ۥۖۨۢۥ۠۫ۥ۫ۛۙ۫۟ۢ۫ۗۗۥۘ۫۬ۡ۫۟۟ۜ۬ۨۘ";
                                    break;
                            }
                        }
                        break;
                    case 1886672075:
                        ElfinFreeActivity.OooOo0O(this.OooO00o).setVisibility(0);
                        str = "ۧۨۖۘۘۖۘ۬ۖۢۛۥۨۘ۫ۘۜۢ۫ۘ۬ۦۜۘۡ۠ۨۘ۠ۚۗۛۜۦۘۖۢ۫ۛۡۙ";
                        continue;
                }
                str = "ۙۚۖ۟ۚ۬۠ۙۗ۫ۤۤۡ۠ۥۘۦۧۨۘۘۜۦۘۥۢۥۡۖۡۘ۫ۙ۟ۨ۬ۡۘۙۘۤۥۗۥۚ۬ۘۦۧ۫۠۠ۗۡۢ۠۟ۘ";
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable NotifyMsgBean notifyMsgBean) {
            String str = "ۛۗۤۥۤۜۘۦۥۡۘۨۢۥۘۜۗۧۨۙۖ۟ۥ۫ۡۖ۫ۙۗۧۥ۫ۜۘ۬ۚۦۘۛۙۖۘ";
            while (true) {
                switch ((((str.hashCode() ^ 991) ^ 73) ^ 480) ^ (-919566562)) {
                    case -1648024212:
                        OooO00o(notifyMsgBean);
                        str = "ۜۥۖۘۙۜۖۨۤ۟۬ۛ۬ۨۙۜۘۡۜۧ۬ۡۘ۠ۛۡۖۤ۟۫ۜ۠۟ۥۡۗ۬ۦۤۡۜۘۖۘۧۘۛۛۡۘۨۥ۟۟ۚۧۦ۫۟";
                        break;
                    case -1631494831:
                        return;
                    case 292569546:
                        str = "ۦۡۡۘ۟ۧۖۗۡۡۙۖۗۜۚ۟ۜۦ۠ۨ۟ۤۦۘۘۦ۟۬ۚ۟ۚۢۥۨۘۡۚۦۘۚۙۥۘۨۜۧۘ";
                        break;
                    case 1283227571:
                        str = "ۡۡۦۢۥۨۘ۬ۘۧۨۘۜۘ۬ۥۛۦۦۦ۬ۗ۠ۚۧ۟ۜۜۜۘۧۖۥۘ۟ۤ۠ۖۘۦۘ";
                        break;
                }
            }
        }
    }

    public class OooOOOO implements Observer<Integer> {
        public final ElfinFreeActivity OooO00o;

        public OooOOOO(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        public void OooO00o(@Nullable Integer num) {
            String str = "ۨ۠ۦۚۜۜۦۙۛ۬ۡۥۖۥۘۦۜۨۗ۠ۗۦ۬ۚۜۡۘۙ۠۟ۧۙۥۘ۠ۖۢۛۘۨ۬ۙۥۖ۠ۡۨۚۥۘۧۥۢ۬ۗ";
            while (true) {
                switch ((((str.hashCode() ^ 469) ^ 112) ^ 989) ^ (-169002822)) {
                    case -1678962648:
                    case 1683884040:
                        break;
                    case -1597482241:
                        ElfinFreeActivity.OooOO0(this.OooO00o);
                        str = "ۚ۟ۨ۟ۗ۠۫ۚۖۘۡۢۜۖ۫ۚۢ۬ۨ۬ۧۜ۫ۚۥۖۧۖۘۖ۬ۦ";
                        continue;
                    case -1558481827:
                        String str2 = "۟ۙۥۢۛۘۧ۟ۨۘۡۘۙۨۤ۠ۢۧۜۘۗۧۖۘۢۥ۫ۡۘۢۢۢ";
                        while (true) {
                            switch (str2.hashCode() ^ 2004467294) {
                                case -921563926:
                                    String str3 = "ۧ۬ۚۙۘۖۘۧۘۧۥۘۘۗۖۖۢۤۦۨۤۖۧ۠ۦۘۚۖۦۘۢۗۡ۫۠۫ۙۚۨۘۤۗۜۧۙۖۥۗۙۜۡۘۗ۬ۥۡۚۥۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 2131496865) {
                                            case -1707928277:
                                                str2 = "ۗۜۜۤۨۖۘۨۙ۠ۢۘۙۧۜۥۡۙۛۥۦۧۥۘۧۘۡۗۘۜۘۘۚ۟ۢۤۚۥ";
                                                break;
                                            case -239985589:
                                                str2 = "ۤۚۥۘۦۧۘۘۚۙۚۤۙۥۘ۠ۙۦۧ۫ۙۖۛ۟۫ۘ۠ۗۨۘۥ۫ۡ۫ۙ۟ۢۤۤ۟ۦۖ۬ۨۗ";
                                                break;
                                            case 323603924:
                                                str3 = "۟ۜۚۜۧۤ۟ۧۥۘۗۘۜۘۢۖ۠ۗۜۦۘۚ۟ۚۦۥ۠۬ۡۖۗۥۡ۠ۡ۟۠۬۬۫ۖۢ۠ۥۗ";
                                                break;
                                            case 672908504:
                                                str3 = 1007 == num.intValue() ? "ۛ۟۫ۤۙۢۚۚ۠ۘۢۡۙ۫ۖۡۖۧۘ۬ۥۘۘۨۦۚ۬۟ۜۘۢۖۘ۠ۗۡۘۤ۟ۨۘ۠ۥ۟ۢۜۨۘۢۢۘۜۗۘۘۙۨ۟ۢۜۦۘ" : "ۜۦۥۘۡۘۧۘۖۥۡۘۦۡ۟ۜ۠ۧۚۨۗ۠۟ۛ۬ۥۨۘۜۖ۟ۗۢ";
                                                break;
                                        }
                                    }
                                    break;
                                case 178401311:
                                    str = "ۖۘۜۜۦ۬ۦ۫ۧۙۤ۠ۡۘۙۡۙۡۘۜۧۢۥۖۨۢۗۜۘۗ۫ۥۘۙ۟ۨۨۙۦۘۤۨ۬۟ۗۨۙۡۘ۫ۛۜۘ";
                                    continue;
                                    continue;
                                case 670783157:
                                    str2 = "ۧۛۨۘۨۦۧۢۖۘۚۖۡۘۨۚۥۘۨۤۨۘۙۤۗۦ۟ۘ۬۫ۥۗۛۥۘۜۢۖۢۛۖ۠ۢۙۗ۫۠ۗۚۛۡ۠ۨۧۘ۫ۧۨ";
                                    break;
                                case 2086768716:
                                    str = "ۜ۬ۤۖ۫ۥۚۡ۫ۛ۫ۘۘۖ۟ۦۗۘۧ۠ۗ۬ۚۡۡۘۚۖۨۧۢۘۘ";
                                    continue;
                            }
                        }
                        break;
                    case -1428649782:
                        String str4 = "ۖۨ۠۫۬ۢ۠ۧۚۧۨۦۘۗۜۥۘۗ۠ۦۥۖۤۡۙۖۘ۟ۘۘۧۗۘ";
                        while (true) {
                            switch (str4.hashCode() ^ (-1122841089)) {
                                case -1997376953:
                                    str4 = "۠ۧۤۧ۠ۡۘۧۘۦۘۥۡۧ۟ۗۘۜ۬ۜۘ۠ۦۡۘۦ۬۫ۡۙۦۘۨ۟۠۫ۙۙۤۥۜۘۙۨۜۘۤۖ۠۠ۜۡۦۛۖۙۜۙۘۧ";
                                    break;
                                case -211900901:
                                    String str5 = "ۤ۫ۜۘۢۦۖۦ۫ۢۡۤۗۛۦۦۘۗۨۖۘۢۘۙۦۚ۫ۤۨۤۧۡۙۤۡۗ۟۬۟ۦۨ۫ۧۙ۫";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1856951107)) {
                                            case -1549802385:
                                                str5 = "۟ۚۘۖۗۧۤۦۚۘۢۖۘۖ۟۬ۧ۫ۡۗۢ۬ۥ۫ۨ۟ۖۥۘ۫۠ۗۙۖۨۡۙۡ";
                                                break;
                                            case -766044788:
                                                str5 = 1006 == num.intValue() ? "ۧۙۢۘۢۥۤ۫ۤ۬ۖۘۙۡۚۖۨۘۙۙۨۚ۠۟ۡۡۖۘۚ۬ۧ" : "ۡ۠۬ۗۖ۠ۜۧۖۘۦۦ۟ۗۛۚۖۛۡۡۤۗۨۡۚۧۜۘۛۚۛ۬۫ۡۘۢۧۦ";
                                                break;
                                            case 1565668509:
                                                str4 = "ۖۛۖۘۜۚ۫۫۠ۙۗۧ۟۟ۜ۬ۥۤۘۘۚ۬ۢۘۦ۠۬ۦۘ۬ۖ۠۫ۢ۬ۤ۟۟ۙ۫ۨۙۡ";
                                                break;
                                            case 2139059388:
                                                str4 = "ۥۚۜۘۜۧۥۘۡ۠۟ۦ۬ۢۗۚۦۦ۟ۥۗۢۦۘۚۧۨۙ۬ۙۙۡۚۙۤۙۗۚۘۘۡۘۨۘۡ۠ۥۘۘۗۧ۟ۢۛ";
                                                break;
                                        }
                                    }
                                    break;
                                case 636037627:
                                    str = "ۙۨۗ۟ۧۥۘ۠ۧۜۘۥۛۜۘۚۦۜۘۤۖۘۡۦۘۚۥۡۘ۫ۨۤۘۧۦ";
                                    continue;
                                case 1869053881:
                                    str = "ۢۥۘۡۨۤ۬ۜ۟ۚۥۚۙۘۘۥۧۛۥۡۢۖ۬ۨۘ۫ۘ۬ۦۤۛۤۜۘۨ۬ۜۘۙۙۚۤۡۡۘ۟ۙۥۘۙۡۛ";
                                    continue;
                                    continue;
                            }
                        }
                        break;
                    case -1146110894:
                        str = "۠ۧۡۧۛۨۙۡ۟ۛۤۜۘۜۧۤۧ۫ۦۛۢ۬ۦ۠ۘۜۗۦۘۡۖ۫۬ۦۜۜ۟ۗۧۥۦۘۧۘ۠";
                        continue;
                    case -595403019:
                        return;
                    case -154933673:
                        String str6 = "ۙۘۨ۫ۡۖۘۢۤۨۖۥۥۘۤ۫ۜۢۛۚ۟ۙۨۧ۟ۘۘۚ۬ۧۤۢۢۖۧۛ۬ۙۘۘۙۤۙۡۧۡۘۥ۠ۨۜۜۦ۟ۚۤۛ";
                        while (true) {
                            switch (str6.hashCode() ^ 2088095940) {
                                case -1168353018:
                                    str = "ۘۦۜۘۗۤ۠ۧۤۛ۠ۚۗ۟ۛۖۘۙۙ۫ۢۨۗ۠ۡۜۘۗۧۨۡۧۘۡۖۡۘۗۨۨۘۨۜۡۘۢۘ";
                                    break;
                                case 260200898:
                                    break;
                                case 1388717029:
                                    String str7 = "۠ۤ۫ۖۙۨۘ۠۠ۘۦۥۦ۟ۘۨۗۛۦۥ۠ۢۧ۠۬ۖۢۡۦۥۘۤۘۙ۟ۜ۠ۡۙۜۦۖۘۛۘۘۘۢ۟";
                                    while (true) {
                                        switch (str7.hashCode() ^ 708438497) {
                                            case -2093245355:
                                                str7 = "ۖۗۦۘۛۤۖۡۨۡۘۤ۬ۗ۠ۗۨۖۘۖۘ۫ۢۨۘۢۖۛ۠ۘۘ۠ۢۗۥ۠ۖۘ۟ۧۜۘۘۨۘۢۖۙۚۨۧۘۡۤۤ";
                                                break;
                                            case -1267764918:
                                                str6 = "ۚۨ۟ۚۥ۠۬ۦۤ۫۠ۡۥۚۧۜ۫ۜۘۙۢ۟۟۠۬ۤۦۙۢۛۘۘۖۖۢۖۛۘۛۡۚۗۥۜۘۡۚۨۘۗۖۜ۠ۡۥ۟";
                                                break;
                                            case 1263120236:
                                                str6 = "ۤۦۗۥۢۙۘۨۤۢۦۖۘۨۦ۬ۘۘ۟ۤۦۜۦۡۗ۠ۗۙۘۖۘۤۘۥۧۜۧۚ۬ۥۥۗ";
                                                break;
                                            case 1377984809:
                                                str7 = 1008 == num.intValue() ? "ۛۘۦۘۨۨۦۛۚۗۦۗۨۜۢۖ۫ۖۘۙۘۨۘ۬ۙۛۥۜۜۘۜۢۘۧۦۥۡۚۨ۟ۢۚ۠ۢۡۘ" : "ۢۖۢۢۗۥۘۚۨۘۥۚۡۘۥۗ۬۬ۢۖۜۛۗۡۧۜۘۦۜۘۘۗۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1733636962:
                                    str6 = "ۤۢۡۘۜۧۘۚۙۥۤۙۤۜۚۘۘۜۡۡۧۦۖۙۡۘۡۜۡۘ۠ۤۙۗ۟ۜ۫ۦۖۖۧ۫ۥ۫ۘۖ۟ۜ۬ۛۘۘۦ۠ۨۜۙۗ";
                                    break;
                            }
                        }
                        break;
                    case 40998813:
                        str = "ۨ۟ۜۙۥ۫۬۫ۨۘۢۦۗۥ۫ۙۚۗۤۥۥۜۡۧ۬۟۟ۛۗۘۘۤۨۖۘ۟ۧۢ";
                        continue;
                    case 49334356:
                        ElfinFreeActivity.OooOO0O(this.OooO00o).OooOo0O(q7.OooO0o0().OooO0o(), 0);
                        str = "۬ۥۨۘۡۧ۫۟۫ۨۧۛۙ۠ۚ۠ۧۧۛۤۡ۫ۙۤۧ۠ۤۥۘۜۦۧۘ۟ۡ۬ۛۥۤۜۘۚۗۤۥۘۚ۠ۛۙ۫ۤۡۚۖۘ۬ۖ۠";
                        continue;
                    case 686620883:
                        ElfinFreeActivity.OooOOO0(this.OooO00o).OooO0OO(this.OooO00o);
                        str = "ۧۢ۫ۖۘ۫۫ۛ۬۟ۤ۬ۙۛۡۘۧ۠۟ۨۨۥۘۗۖۖۧۙۛۥۜۦۘ";
                        continue;
                }
                str = "ۧۢ۫ۖۘ۫۫ۛ۬۟ۤ۬ۙۛۡۘۧ۠۟ۨۨۥۘۗۖۖۧۙۛۥۜۦۘ";
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable Integer num) {
            String str = "ۤۛۥۚ۠ۧۨۢ۬۠ۚۨۘ۟۫ۦۜۙۜۖۦۘ۟ۤۨۛۧۖۘۜ۟۬";
            while (true) {
                switch ((((str.hashCode() ^ 567) ^ 34) ^ 278) ^ 997940978) {
                    case -2120910735:
                        str = "ۙۥۛۥۘ۠ۖۛۜۘۖۥۡۗۘۥۘۙۡۡۨۘۘۛۙۦۘۡ۟ۦۚۤۜۘ";
                        break;
                    case -1512583431:
                        OooO00o(num);
                        str = "ۖۥ۠ۗۙۥۘۦۗۘۡۧۨۡۨۘ۫ۥۧۡۦۘۤۨۥۘ۬ۥۛۥۛۜۦۨۜۘۘۢ۠۫۠ۡۘ۟ۥۨۘۗۜۨۙۚۤۡ۠ۖۘ۬ۦۨۘ";
                        break;
                    case -1410731259:
                        return;
                    case -695405885:
                        str = "ۢۜۤۜ۬ۙۘۦۘ۠ۗۖۨ۠۠۬ۨۗ۬۫۠ۘۜۧۛ۟۟ۚۜۙۧۡۜۥۧۖۜۧ۬ۨۖۘ";
                        break;
                }
            }
        }
    }

    public class OooOo implements ja.OooOOOO {
        public final ElfinFreeActivity OooO00o;

        public OooOo(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        @Override // z2.ja.OooOOOO
        public void onFinish() {
            String str = "ۨۖۛۜۖۜۨۘۢۚ۫ۨۘۖۤۦ۬۫۠ۜ۫ۘۨ۫ۙۚۙ۬ۖ۠۬ۨۜۡۘۨۤۜ";
            while (true) {
                switch ((((str.hashCode() ^ 21) ^ 230) ^ 677) ^ 1449044366) {
                    case -1501951763:
                        String str2 = "ۤۤۚۚۥۦۙۨۧۘۛۦ۟ۗۧۨ۟ۢۜۘۛۥۥۘۛۡۧۘۗۚۧۚۧۖۘ۫۬ۜۘۦۛ۟ۢ۠ۜ۟ۜۘۘ۠ۨ۫ۙۛۨ۫ۦۜۘۚۜۘۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1402960542) {
                                case -314060452:
                                    str = "ۚۙۥۘۗۦۤۛۢۧۥۗۥۥۨۙۢ۟ۨ۬ۡۥۧۜۚۜ۟ۖۗۘ۟۫ۛ۠۫ۨۘ۟ۚۦۥۦ۬";
                                    break;
                                case 323497435:
                                    String str3 = "ۦۜۡ۠ۚۖۘۦۦۜ۠ۙ۟ۥ۫ۤۥۚ۫ۢۧۦۘ۠ۘۥ۫ۙۨ۫ۘۡۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-1650983170)) {
                                            case -1610027889:
                                                str3 = ElfinFreeActivity.OooOOOO(this.OooO00o) ? "۫۬ۚ۟ۗ۬ۥۦۦۘۘۖۤۚ۟ۦ۟ۛ۫۠ۡۖۥۧۖۘۚ۠۬ۦۜۖۦۦۚۤۥۧۘۧۗۥۥۧۧۡ۫ۡۘۜۘۦۘ" : "ۡۤۡۘۨۧۦۘۥۙۡۜۛۡۘ۬ۗۛ۬ۧۚۡۧۦۥۙۘۘ۫۠ۜۜۗۖۗۜۜۘ۠ۖۖ";
                                                break;
                                            case -1243081248:
                                                str3 = "ۤۛۚ۠ۙۢۢۡۚۖ۟ۤۧۚۘۨ۠۠ۡۢۥۘۦۡۙ۬ۨۡۘ۟ۧۖ۟ۗۖۘۛۡۜۢ۬ۦۤۜ۟ۧۥۜۢ۫ۨۘ";
                                                break;
                                            case -402613856:
                                                str2 = "ۧۘ۟۟ۘۡۘۜۖۖۜۥۥۘۢۡ۟ۦۦۥۤ۫ۧۜۡۘۘۡ۠۫ۜۚۨۧۨۧۘ۟ۡۗۧۜۘۢۢۨۘ";
                                                break;
                                            case 1154183540:
                                                str2 = "ۤۤۧۗۧۨۘ۠۠ۛۜۡۦۘۧۥۘۧۙۚۘۜۖۘ۟ۘۦۘ۟ۤۢۥ۫ۚ۬ۜۖۧۙۢۨۤۡۘۧۤۤۧۙۗۤۢۖۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 606736138:
                                    break;
                                case 612724322:
                                    str2 = "۬ۥۦۘ۬ۜۡۨۧۗ۠ۖۦۘۙ۟۠ۥۖۛ۟ۨۜۜۨۜۚۘۨ۟ۚۘۘۘ۫ۗۜۘ";
                                    break;
                            }
                        }
                        break;
                    case -632917650:
                        ElfinFreeActivity.OooOOOo(this.OooO00o);
                        str = "ۜۥ۫۬ۙ۫ۚۖۦۦۗۜۗۜ۠ۖۛۙ۬ۦۘ۬۟ۧۢۖۜۖۖۜۦۧۘۙۚۙۖۗ۬ۘ۠ۖۘۡۗۡۛۜۡ";
                        continue;
                    case -450185771:
                        String str4 = "ۘ۠ۚۥ۫۟ۤۦۧ۟ۗۡ۟ۜۥۘۧ۬ۧ۟ۘۥۘۨۤۢۡۛۗۖۘ۬ۘۧۤۗۨ";
                        while (true) {
                            switch (str4.hashCode() ^ (-1819044574)) {
                                case 1051967658:
                                    str = "ۡۜۧۘۧ۫ۡۚۦۜۡۨۜۘۘۢۢۛ۠۫۬ۗۨۘۚۙۨ۠ۡۦۘۙۖ۠";
                                    continue;
                                    continue;
                                case 1595749446:
                                    str = "ۖ۟ۧۨۚۤ۫ۘۖۤۧۛۢۙۙ۫۟ۗ۟ۙۙۙ۟۠ۜ۫ۨۘۘۘۜۘۨۚۡۘۥۜۧۙۗ۬ۡۡۥ۬ۨۛۛ۠ۡۚۢۛ۠۠۟";
                                    continue;
                                case 1667718020:
                                    String str5 = "۫ۢۦ۬ۘۥۛۙۜۦۤۗۥۛۚۗۜۧۘۥۤۧۡۚۨۘۛۛۨۘۖۦۚۛۘۥۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 1810765655) {
                                            case -2112358727:
                                                str5 = ElfinFreeActivity.Oooo0(this.OooO00o) ? "ۗۘ۬ۛۘۨ۠ۖۛ۠ۨۚۙ۠ۡ۫ۥۨ۠ۜۛۛۜۘ۠۠ۘۘۡۨۚ" : "ۗۘ۟ۘۘۡۘ۠ۗۘۘۢ۠ۧۚۖۥۘ۠ۚۖۘۧۖ۫ۗۤ۫ۦۙۘۘۢۡۥ۠ۗۖۘۤۨۧ۟۟ۤ۬ۥۢۚۜۚۘ۠";
                                                break;
                                            case -1586146899:
                                                str5 = "ۜۘۧۘ۫ۗۖۘۘۤۖ۬ۜۤۧۘۦ۬ۡۦۘۢۢۧۜۨۥ۟ۙۨۨۧۘۛۙۤۤ";
                                                break;
                                            case 68204037:
                                                str4 = "ۦۤ۠ۛۨۦۨۚۜ۟ۗۨۘۥۜۦۥۥۘۘۜۨۘۨۗۛۛۧۢۚۜۦۚۧۡۤۚۗ۬ۜۘۡۙۘۦ۠ۦۘ۫ۖۙۙۢۜۡۧ۬";
                                                break;
                                            case 1853240493:
                                                str4 = "ۦۥۛۤ۫ۨۜۖۥۛۙۥۢ۬ۡ۬ۡۨ۠۫ۨۖۤۖۢۗۨۤۛۢۗۖ۠ۡۙۘۖۢۙۢۢۖ";
                                                break;
                                        }
                                    }
                                    break;
                                case 2011736460:
                                    str4 = "ۢۥۨۢۜۛۖۚۨۘۥۙۚۤۡۙۙ۫۠ۡۛۨۥ۠ۡۖۦۥۚۢۥ۟ۤ۠ۘۨۨۤۖ۠۠ۛ";
                                    break;
                            }
                        }
                        break;
                    case -402761493:
                    case 2067264017:
                        return;
                    case 939763924:
                        str = "ۢۦۖۘ۫ۛۙ۠ۙۚ۠ۘۚۦ۬ۘ۬ۡۘۚ۫ۨۢۖۡۨۨۦۘۨ۟ۜۗۢۦ۬ۗ۫";
                        continue;
                    case 1664377866:
                        String str6 = "ۚۛۚۧۘۧۘۚۜۜۘۚۜۘۛ۠ۘۧۜۚ۫ۖۨۥ۫ۛۧۡ۫ۜۢۙۡ۫ۜ۠۟۫";
                        while (true) {
                            switch (str6.hashCode() ^ (-728007900)) {
                                case -414935069:
                                    break;
                                case -234478997:
                                    str = "ۤۘ۫ۦۙ۟۟ۨۘۚ۫۟۟۠ۘۜۦ۬ۙۖۜۘ۫۠ۦۧۥۦۖۨۖ";
                                    break;
                                case 1092948349:
                                    str6 = "۠ۦ۠ۘۧ۟ۗۙۘۗۥۥۘۤۧ۫ۗۥۢۢۗۡۖۤۙۙۜۥۘۧ۬ۖ";
                                    break;
                                case 1389568775:
                                    String str7 = "ۡۧۙۛۥۖۨۢۨۘۗۗۙۥۘۤ۬ۡۦۘۛ۠ۨۘ۬ۘۨۘۧ۫ۦ۬۟ۦۘ۬ۜۚ۟۬ۜۘ";
                                    while (true) {
                                        switch (str7.hashCode() ^ (-439037041)) {
                                            case -1934147019:
                                                str6 = "ۚۜۡۡۗۦۘۜۧۦۥ۟ۚۥۚۨۡ۬ۡۘۥۦۗۖۥۙۛۙۙۖۥۦۡۡۘۚۚۖۚۘۡۘۖۡۨۘ";
                                                break;
                                            case -1109341317:
                                                str7 = "ۛۜۜۢۘۢ۬ۚۜۘۖۧۙۖۡۡۢ۟ۘۘۜۜ۬ۜ۫ۜ۫ۜۖۘ۠ۚۡۘۨۨۚۘۚۥۘۘۘۢۚ۬۫ۚۡۦ۬ۖۖۛۤ۬ۢۦۘ";
                                                break;
                                            case 662099158:
                                                str6 = "ۖۜ۫ۚۥ۟ۤۦ۬ۦ۟ۥۘۚۛۘۨۧۦۘۧۧۙۛۡۧۘۗۘۖ۠ۢۜۘۦۨ۟ۜ۠ۖ";
                                                break;
                                            case 2003955568:
                                                str7 = x4.OooO0O0().OooO00o(f6.OooOo0O, Boolean.FALSE) ? "۬ۤ۫ۤۙۜۤۖۥ۫ۨۛۢۡ۬ۗۡ۟ۚۦۦۖۘۙۘۤۘۨۥۘۦۚ۫ۚۨۦ" : "۫ۨ۫ۜۢ۠۠ۨۥۥۧۖۤۦۖۚۗۤۖۗ۟ۢۧۡۘۘ۠ۛۖۚ۠ۦۚۘۢۙۦۜۧ۟ۢۙۤۘ۟ۡۘۨۧۘۘۨۘۙ۫ۘۢ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case 1690335381:
                        ElfinFreeActivity.Oooo0O0(this.OooO00o, false);
                        str = "ۢۡۙۛۚۗۡ۟ۜۘۡۥۙۢۜۚۤۨۢ۫ۗۥۘۚۖۘۘۗۚۦۖ۠ۛۧۚۚۢ۬ۘۘۙۛ۫ۤۤۨۤۥ۟۟۫ۥۛۙۘۡۖۛ";
                        continue;
                }
                str = "ۜۥ۫۬ۙ۫ۚۖۦۦۗۜۗۜ۠ۖۛۙ۬ۦۘ۬۟ۧۢۖۜۖۖۜۦۧۘۙۚۙۖۗ۬ۘ۠ۖۘۡۗۡۛۜۡ";
            }
        }
    }

    public class OooOo00 implements Observer<Boolean> {
        public final ElfinFreeActivity OooO00o;

        public OooOo00(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        public void OooO00o(@Nullable Boolean bool) {
            String str = "۫ۤ۠ۦۜۙۥ۠۫ۤۤۛۦۤۜ۬ۙ۠ۡۚۥۧ۫۟ۜ۟۠ۧۨ۟ۘۨۖۚۡۥۚۢۡۘۙۧ۬ۜۗ۬ۧ۠۟ۦۘۧۚۨ";
            while (true) {
                switch ((((str.hashCode() ^ 366) ^ 333) ^ 329) ^ 922685078) {
                    case -1690325393:
                        str = "ۙۦۗۛۦۧۨ۬ۖ۬ۤۥۛۙۜۘۡۧۡۡ۠ۦۨ۟۠ۡۥۨۖ۟ۘۘ";
                        break;
                    case -1294924501:
                        String str2 = "ۥۥ۬ۗۧۦۡ۟ۦۘۢ۠ۖۘۗۖۨۖۡۦۘۛۜۦۘۢۘ۠ۗۦۤۙ۟ۡۘۧۙۜۜۢ۟ۢۦۦ۫ۨۘ۬ۛۧۦ۠ۥۘۦ۠ۥۙۡۜۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1582878583) {
                                case -2093405426:
                                    String str3 = "۬ۙ۟۠۠ۗۤۥ۟ۨۧۦۘۦۢۜۘۜۜۨۘۧۙۚۛۜۥۤۛۦۘۤۤ۟ۘۦۙۥۡۥ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1254547139) {
                                            case -1027061787:
                                                str3 = bool.booleanValue() ? "ۛ۠ۗ۠ۡۘۖۖۘۛۤ۫۟ۜۦ۟ۚۘۘۘۦۢۚۛۥۥۚۡۘۤۨۨ" : "ۥ۠ۨۥۦ۬ۢ۠ۙۧۥۜۘۖ۟۠ۧۚۜۘۦ۫۬ۨۨۡۘ۟۫ۜۘۘۦ۟ۙۧۡۘۥۨۛۚۤۘۢ۠ۦۜۚۜۖۚۜۘ";
                                                break;
                                            case -667955320:
                                                str2 = "ۘۡ۠ۡۤۦۦۗۡۘۜۘۘۦۖۡۘۧۚۨۘ۫ۦۛۗ۟ۨ۠ۜۡ۬ۧۡۘ۫۠ۧۨ۠ۨۦۘۙۛۦۜۙۥۜۘۗۥ";
                                                break;
                                            case -610405629:
                                                str2 = "ۤۢۖۜۛۦۨۙۤ۠ۛۘۘۗۘۢۨۡۖۘۛۖۖۙ۠ۨۚ۬۠ۙۢۘۥۙۘۜ۟ۙ۟۟ۗۢۛ";
                                                break;
                                            case -104239952:
                                                str3 = "ۥۤۗۘۜۡ۫۫ۜۘۡۦۨۘۦ۬ۜۢۥۤۧۡۡۘۦ۫ۦۘۥۚ۫ۖۖۨۘۦۖۨ۫۬ۖۤ۠ۡۥۥۗۦ۫۟ۛۧۚ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1360824211:
                                    str2 = "ۚۨۥۘۢ۟ۘۜۤۖۤۢۥ۫ۨۥۘۤۗۚ۫ۚۖۘ۫ۢۦۘۜۧۨ۠ۡۥۘۙ۟ۤۦۦۖۘۘۛۖۘ۠۫ۦۘۢۗ۬ۚ۫ۚۧ۬ۤۚ۫۬";
                                    break;
                                case -1077605228:
                                    str = "۟ۨۙۚۤۧۗۡۡۜۚۘۗ۬ۤۨۨۗۦۘ۟۟ۖۜۛۤۡۢ۬ۨۤۜۘۦۤ۫ۙۨۚ۠ۡۥۘۨۗۜۘۨۖۚ";
                                    continue;
                                case 1068678538:
                                    str = "۬ۦۜ۟ۥۗۦۨ۬ۡۧۗۘ۟ۖۧۚۡۚۧۡۜۢ۬ۖۘۚۦۛۜ";
                                    continue;
                            }
                        }
                        break;
                    case 1120200426:
                        ElfinFreeActivity.OooOOO(this.OooO00o);
                        str = "۟ۨۙۚۤۧۗۡۡۜۚۘۗ۬ۤۨۨۗۦۘ۟۟ۖۜۛۤۡۢ۬ۨۤۜۘۦۤ۫ۙۨۚ۠ۡۥۘۨۗۜۘۨۖۚ";
                        break;
                    case 1567459403:
                        str = "ۘ۫ۡۘۦۙۧۨۖۦۘۗ۠ۜۦۢۦۦۤۘۧۨۘ۟۟ۦۘۧۤۦۨۧۚۘۖ۟۠ۧۛۚۗ۠ۡۗۥۘ";
                        break;
                    case 1609680441:
                        return;
                }
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable Boolean bool) {
            String str = "ۙۘۤۘۗۡۘۨۡۖۘ۠ۥۖۚۦۨۘۖۨ۟۫ۖۡ۬ۜۥۘۤۜ۬ۗۥۨ۫ۡۡۘۛۖ۬ۦۨ۠۠ۛۢ۠ۢۦۘۢۤۜۗۢۜۘۘ۟ۚ";
            while (true) {
                switch ((((str.hashCode() ^ 114) ^ 170) ^ 678) ^ 399741054) {
                    case -713556566:
                        str = "ۥۨۖۘ۟۫ۦۤۢ۠۟۠ۜۦۤۢۖۡۧۚۧۚ۫ۦۘۨۦۥۘ۫ۨ۫";
                        break;
                    case 70768231:
                        str = "ۙۥۜۘۤۧۘۛۡۚ۬ۦۥ۫ۘۗۧ۠۬ۛۚۙۡۤۚۨۙ۬ۦۜۘ";
                        break;
                    case 583949361:
                        OooO00o(bool);
                        str = "ۢۦۘۦ۟ۗۤ۟ۡۘ۟ۥۦۙ۟ۖ۟ۥۥۘ۠ۧۥۨ۬ۨۘ۬۬ۢۜ۬۟ۜۨۗۡۛ۠۫ۛۚۨۘۜۘ";
                        break;
                    case 2138380193:
                        return;
                }
            }
        }
    }

    public class Oooo0 extends AsyncTask<InputStream, Void, Boolean> {
        public final ElfinFreeActivity OooO00o;

        private Oooo0(ElfinFreeActivity elfinFreeActivity) {
            this.OooO00o = elfinFreeActivity;
        }

        public /* synthetic */ Oooo0(ElfinFreeActivity elfinFreeActivity, OooO oooO) {
            this(elfinFreeActivity);
        }

        public Boolean OooO00o(InputStream... inputStreamArr) {
            String str = "ۨۦۧۘۖۢۡۤ۫۬ۛ۠ۛۤۚۥۘۨۨ۠ۗۘۙ۬ۦۙ۟۠ۛۚۚۗۜۖۖۘۚۧۥ";
            while (true) {
                switch ((((str.hashCode() ^ 553) ^ 1009) ^ 933) ^ 578682852) {
                    case -2078846047:
                        str = "ۘۨۘۤۚۢۥ۫۠۫ۡۘۘۙۤۨۤۢۥۨۨۨۖۖۨۘۧۛۛ۬ۘۖۥۡۢۦ۬ۤۧ۫ۙ۟ۢۗ۟۬ۥ۫۟ۤ۠ۢۘۘۘۧ";
                        break;
                    case -1961606343:
                        ElfinFreeActivity.OooOOo0(this.OooO00o);
                        str = "ۥۨۦۖۘۡۘۚ۬ۤۜۚۜۘۖۙۡۘۨۛۤ۫ۢۨۛ۟ۜۘۜ۟ۙۘۨ۬ۜۚۡۘ۬۫ۨۘۥۨۥۘۘۘۥۘۙۜ۟ۖ۠ۡۨۛ۬۠ۧۥ";
                        break;
                    case -1322330564:
                        str = "ۘۖۡۘ۟۠۠ۢ۟ۗۙۘ۬ۤ۠ۘۘۜۡۘۘۖۢۦۤۚ۟۠ۜۖۘ۬ۗۦ۠۬ۗۡۦ";
                        break;
                    case 1977711012:
                        return Boolean.TRUE;
                }
            }
        }

        public void OooO0O0(Boolean bool) {
            String str = "۫ۚۚۡۧۘۘۨ۟ۧۙۦۥ۟ۥۡۜ۫ۥۘۤۡ۫۬ۛ۫ۡۥۘ۫۬ۖۘۨۨۘۘۙ۠۬ۨۤۙ۠۟ۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ 789) ^ 543) ^ 707) ^ 1227923703) {
                    case -362170750:
                        return;
                    case 983522479:
                        str = "ۖۢۘۘ۠ۥۢۡۚۥ۟ۧۦۘۛۦۤۘۗۨ۟ۖۧۘ۠ۙۥۘۡۘۤۤۢ۟ۘۡۙ۫ۘۘ۠ۙۙ۟ۥۚ";
                        break;
                    case 1904821250:
                        str = "ۜۦ۠۟۫۟ۧۢۨۘۙۙ۟ۦ۟ۜۘۦۖ۫ۚۘۛۥ۬ۜۘ۬ۧۦ۬ۖۧ۫۠ۚۚۘۖۘۛۜۘۘۨۤۦۘ";
                        break;
                }
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ Boolean doInBackground(InputStream[] inputStreamArr) {
            String str = "ۘۚۜۧ۠ۜۘۛۧۖ۫ۜۦۘۡۢۡۘۧ۠ۛۢۘۧۖۦۘۙ۬ۨۘ۟ۙۙ۬۬ۗۤۙۜۘۢۥۦۙ۟۟ۥۨۘۘۗۢۨۘ۫ۚۗ۬ۥۗ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FONT_SIZE_LEVEL_VALUE) ^ 710) ^ 391) ^ (-2041565806)) {
                    case -743199817:
                        return OooO00o(inputStreamArr);
                    case -352678593:
                        str = "ۥۙۤۦۛۙۚ۟ۛۡۥۗۗ۠ۘۘۗۡۨۘۗ۠۟ۢۧۜۘۚ۫ۡۢۡۙۘ۟ۘۘۦ۬ۤۙۤۘۘۚۡۜۘ";
                        break;
                    case 435236510:
                        str = "ۗۡۨۘۜۨ۠ۖۙ۫ۜۡ۟ۦۜۗۘ۟ۡۘۥۦۘۖۡۖۘ۬ۤۨ۟۠۟ۚۤ۟۠ۦۧۜ۬ۡۘۜۙۖۘ";
                        break;
                }
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            String str = "۟۬ۖۘۙ۟ۡ۟ۘۡۘۖۦۜۡۧ۟ۖۢۥۗۦ۟۫ۘ۟ۤۡۜۘۧۜ۬۟۟ۙۚ۬۫ۧ۫ۖۘ۫ۧۨۘ";
            while (true) {
                switch ((((str.hashCode() ^ 629) ^ a.aU) ^ 279) ^ (-1180618232)) {
                    case -94453804:
                        OooO0O0(bool);
                        str = "ۨ۟ۛ۬ۜۘۥۡۘۘۡۧۜۘ۫ۡۢۢۥۘۤۤ۫۠ۖۦۘۖۨۢۖ";
                        break;
                    case -38642658:
                        str = "۬ۢۙۡۥۙ۬۬ۘۚۙۡۘ۠ۚۜۘۗۚۘۘ۫ۘۖۚۥۖۡۧۥۥۢۥۦ۫ۖۘۥۢۤۘۥۖۘۗ۠ۙ";
                        break;
                    case -19764661:
                        str = "ۤۖۡۘ۠ۢۡ۫۠ۨۘۙۦۥ۬ۧۨۘۙۤۖ۟ۖ۫ۢۗۧۡ۟ۡ۟۬۟ۗ۠۟ۙۖۘۘۖۘۘ۬ۖۨ";
                        break;
                    case 989900251:
                        return;
                }
            }
        }
    }

    public class Oooo000 extends ThreadUtils.OooO0o<Boolean> {
        public final r6 o00Oo0;
        public final ElfinFreeActivity o00Ooo;

        public Oooo000(ElfinFreeActivity elfinFreeActivity, r6 r6Var) {
            this.o00Ooo = elfinFreeActivity;
            this.o00Oo0 = r6Var;
        }

        public static /* synthetic */ void OooOOoo(r6 r6Var) {
            String str = "۫ۙۢۚۡۚۧۚۦۘۛ۠ۚۥۦۨۘۥۛۚۜۚۢۡۢۡۖۢۡۙۢۤ";
            while (true) {
                switch ((((str.hashCode() ^ 946) ^ 446) ^ 814) ^ 27928404) {
                    case -1829944388:
                        r6Var.show();
                        str = "ۧۤۡ۬ۥۧۜۚۘۘۥ۠ۗۥۨۥۙۧ۟ۜۧۢ۠ۜۚۜۡۥۨ۫";
                        break;
                    case -349944878:
                        str = "ۘۦۗۦۡۢۡۡۥۘۢۦۡۤۜۘۥۨۥۘۡۨ۠ۚۜۨۤ۫ۧۥۖۘ۫ۚۥۘۗۡۦۤۗۗ۟ۤۘۘۢ۠۫۟۠۬ۤ۬ۤۚۗۜۘ";
                        break;
                    case 1748265487:
                        return;
                }
            }
        }

        @Override // com.cyjh.elfin.tools.utils.ThreadUtils.OooOO0
        public /* bridge */ /* synthetic */ Object OooO0o() throws Throwable {
            String str = "ۖۚ۬ۧۨۘۘۧ۫ۨۦ۟ۜۘۗۚۤۦۤۙۜۢ۠۫ۦۘۡۦۦۛۧ۠ۢۤۢ۫ۗۛۚ۟۟۠ۡۘۤۧۥۘ۟ۗ۬ۜۦ۬ۖۖ۟";
            while (true) {
                switch ((((str.hashCode() ^ 36) ^ 935) ^ 440) ^ (-737029487)) {
                    case -1012815355:
                        str = "ۗۨۘۘۚۖۖۘۤۨۛۡۥۘۘۦۢۥۘۥ۫ۡۘۨۘ۠ۛ۠ۛ۬ۜۦۗۡۢۦۢ۠ۘۦ۫۫ۤۚۘۚۦۦۧۤۜۨۨۘ۟ۖۜۘۛ۬۟";
                        break;
                    case 205070610:
                        return OooOOo();
                }
            }
        }

        @Override // com.cyjh.elfin.tools.utils.ThreadUtils.OooOO0
        public /* bridge */ /* synthetic */ void OooOOO0(Object obj) {
            String str = "ۧۦۜۘۢۖۧ۬ۘ۟ۖۤۚۥۗۦۨۥ۫ۜۢۦ۟۠ۙۧۦۘۦ۠ۦ";
            while (true) {
                switch ((((str.hashCode() ^ 540) ^ 976) ^ 359) ^ (-1355983534)) {
                    case -240246053:
                        return;
                    case 700434154:
                        OooOo00((Boolean) obj);
                        str = "ۛۢۥۨ۠۠۠۫ۢ۟۬۬ۦۢۨۙۡۚۛۚۖ۬ۢۖۡۗۙۗۦۦ۟ۥۚۤۘۙۢۛۘ۟ۜۖۖ۟ۛۖۦ";
                        break;
                    case 1411415604:
                        str = "ۡ۟ۡۘۡۡۘۘۗۙۢ۠ۥ۠ۗۘۨۘۚۛۥۘۛۛۤۖۙ۠ۦۘۤۤۖۛۦۜۡۘۥۤۨۘۚۥۧۤ۟ۦۡۧۧۜۧۡۘ";
                        break;
                    case 1768944175:
                        str = "ۨۦۗ۟۠ۘۘ۠ۡۛۦۦۜ۬۠ۡۥ۟۬ۦۢۧۨۙۛۘۘۢۗۦۘۚ۫ۨۘۦۘۘۨۤۦۘۧ۫ۖۘۧ۬ۜۘۡۖۜۘۘ۬ۖۘۨۙۘ";
                        break;
                }
            }
        }

        public Boolean OooOOo() throws Throwable {
            String strOooO0O0 = null;
            StringBuilder sb = null;
            File file = null;
            String strOooOOo = null;
            String str = null;
            String str2 = null;
            StringBuilder sb2 = null;
            StringBuilder sb3 = null;
            File file2 = null;
            StringBuilder sb4 = null;
            boolean z = false;
            boolean zOooO0oO = false;
            StringBuilder sb5 = null;
            boolean zOooO0Oo = false;
            StringBuilder sb6 = null;
            boolean z3 = false;
            String str3 = "ۛۦ۬ۖۛ۫۠۠۫ۥۘ۬ۤۡۘۘۙۥۧ۠ۡۗۧۚۙۖۢۛۦۛ۠ۨۖۦۘۗۗۘ۟۬۬ۡۜۘ";
            while (true) {
                switch ((((str3.hashCode() ^ 755) ^ 956) ^ 307) ^ (-1093329293)) {
                    case -1823334279:
                        sb4.toString();
                        str3 = "ۦ۟۫ۜۡۨۦ۟۬۠ۢۡۘۛۧۖۗۧۖۘۙۘۖۘۜ۬ۘۥۖۗۛۡۡ";
                        break;
                    case -1689734252:
                        z = true;
                        str3 = "ۖۗۖۘۗۥۖۘ۠ۢ۬۫ۡ۟ۥۗۘۧۙۤۜۨۡۘ۟۬ۦ۬۬۟ۚۘۦۡۖۙۢۙۛۙۖۛۖۘۘۚ۠۠ۢۨۛ";
                        break;
                    case -1679015398:
                        sb5 = new StringBuilder();
                        str3 = "۬۫۠ۘۖۡ۠ۙۧۜۙۨۘۖ۟ۘۙۛۗۢۤۨۘۙ۟۬ۙ۠ۘۘۛۘۧۘ";
                        break;
                    case -1640378723:
                        sb6 = new StringBuilder();
                        str3 = "ۘۖ۟ۗۖۖۚۜۗ۠ۦۗۘۚۥ۠ۚۡۦۘ۬۟۟ۧۢۢ۫۟۫ۨۘۥ۟ۧ۠ۦ۬";
                        break;
                    case -1635860494:
                        sb.append(k3.o000000);
                        str3 = "۬ۙۢۛۧۤۖۤۢۤۢۨۦ۠ۨۘۗ۬ۙۦۦ۠ۚۢۨۘۥ۬ۜۚ۟ۥۖۧۦۨ۟ۨ۠ۛۖ۫ۡۡۚۤۦۘۗۢۖۗۧۦۘۨ۫ۗ";
                        break;
                    case -1554205094:
                        String str4 = "ۘۘۨۜۧۦۘ۫ۤۚ۠۟۟ۢۦۧۗۖۡ۟ۙۜۘۢ۬ۤۥۧۦۘ۫۠ۖ";
                        while (true) {
                            switch (str4.hashCode() ^ (-1113877116)) {
                                case -1904602808:
                                    String str5 = "ۢۥۙۤۢۡۘۙ۟ۖۗۛۢ۟ۘ۟۬ۢ۬ۢۢ۫ۘ۫ۡۘۢۗۨۘۘۜۨۘۘۡۦۘۢۤۚۛۢۘۘۦ۬ۘۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 2137624641) {
                                            case -1756182620:
                                                str5 = file.exists() ? "ۥۚۥ۟ۥۥۘۡۨۗۗۗۘۤۢۗۢۧۡۚۤۧۧۗۘ۬ۖۖۘۧۜۗۚۚۖۛ۠۟" : "ۘۘۧ۟ۥۗ۟۟ۤۥ۬۫۬۠ۡ۠ۡۢۤۡۧۘۚ۠ۚۛۢۥۙۖۡ۫ۛۛۘۧۘۧ۠۫ۙۛ";
                                                break;
                                            case -587333126:
                                                str5 = "ۗۦۛۨ۟ۦ۟ۢۖۘۜۛۚۖۘۦ۫ۙۥۘۜ۫ۚۘۧۨۘۙۚۦۜۘ۠۠ۘ۬۬ۢ";
                                                break;
                                            case 1574869266:
                                                str4 = "ۚۦۘۤۤۛۗۡۙ۟ۡۜۘ۬ۘۤۢۗۘۥ۬ۘۘۗۥۧۘۡۘۜۨۢۘ";
                                                break;
                                            case 1831399113:
                                                str4 = "۫ۥۡۘۜۚۡۘۦۤۘۧۘۧ۠ۛ۫ۜۡۢۡ۬ۗۨ۠ۛۤۛۖۘۖۖۜۢۦۧۘ۫ۥۙۢۖۘۘۡۥ۟ۦ۫ۗۖۢۦۨۧۧۗ۠ۨۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1668991166:
                                    str3 = "ۧۜۢ۠۟ۛۢۚۥۨۡ۠ۜۜۥۦۛۡۘۛۙۘۦۨۖ۟۬ۦۘۥۛۙۚۦۦۢۤۘۘ";
                                    continue;
                                case -374964756:
                                    str4 = "ۨۘۡۦۡ۟۫۬ۥۤۢۙۤۢۖۘۡۦ۫ۨۛۥۢۛ۫ۨ۫۫ۨۢ";
                                    break;
                                case -336992357:
                                    str3 = "ۦ۬ۥۘۥۦۡ۬ۛۡۘۢ۠۠ۙۤۤۧۘۥۘۨۜۦۙۙۨۡۚ۠ۘۗۜۘ۬ۙ۠۫ۨۤۥ۠ۚ۬ۨۘ۠ۨۛۛ۬ۚ";
                                    continue;
                            }
                        }
                        break;
                    case -1515055822:
                        zOooO0oO = u8.OooO0oO(file2);
                        str3 = "ۚۢۖۗ۫ۡۘۥ۫ۛۧۜۗۤۚۨ۫ۦۗۤۧۤۡۚ۠۬ۡ۟ۘ۟ۢۛۘۙۛۛ";
                        break;
                    case -1511571210:
                        sb.append(this.o00Ooo.getFilesDir());
                        str3 = "۠ۗۛۤۧۥۗۗۢ۠ۛۜۘۨۦۚ۟ۛۖۘ۟ۧ۟ۚۧ۫ۘۘۥۛ۫";
                        break;
                    case -1461196708:
                        strOooO0O0 = g5.OooO0O0(this.o00Ooo, "ocrex.zip", "ocrex/time.txt");
                        str3 = "ۦۧ۬ۨۘۖۨۙۨۢۨۨۘ۟۬ۦۘۥۥۦۤۜۛۢۜۜ۠ۜۨۘۘۛۡۗۨۙۢ۬ۘۘ۬ۖۘۤۚۨ";
                        break;
                    case -1449941330:
                        sb3.append(this.o00Ooo.getApplicationInfo().nativeLibraryDir);
                        str3 = "۟ۢۦۘ۬۬ۚۡ۫ۥۘۘۚ۠ۜ۬ۦۙۥۘۖۘۡۘۢۜۜۘۘۡۘۘۖۛۤ۠ۤۡۖۥ۬ۧ۫۠ۛۥۘ";
                        break;
                    case -1415944182:
                        String str6 = "ۥۨۤۗۖۤۜ۬ۦۘ۠ۙۥۡۚۥۘۢۡۡۗۜۜۜۨۦۘۧۗ۫ۨۦۚۡ۟ۧۦۜۚۤ۬۠ۙ۠ۜۜۡۘۡ۟ۚ";
                        while (true) {
                            switch (str6.hashCode() ^ 272329702) {
                                case -1930036415:
                                    String str7 = "۫ۗۦۘۤۛۡۘۗ۠ۧۙۛۦۧۢۖۘۢ۠ۡۘۦۘ۠ۢۚۦۦۜ۠ۦۛۧۧۨۘ۬۬ۨۘۚۢۥۘۙۨۥۘۥ۠ۨۘۥۨۦ";
                                    while (true) {
                                        switch (str7.hashCode() ^ 1602077939) {
                                            case -1203037481:
                                                str6 = "ۗۘۧۛۛ۠۟ۤۨۢۚ۠۫۟ۘۘۛ۟۫ۤۚۙ۟۠ۦۘ۟ۨۦۘۗۥۜ";
                                                break;
                                            case -400763604:
                                                str7 = "ۦۖۨۘۦ۬ۚ۟۟ۨۘۨۘ۠ۡۖۥ۬ۧۨۜ۫ۢ۬ۖ۬ۘ۟ۦۗۚ۫۬ۖۛ۠ۗۜ۫ۧۥۘ";
                                                break;
                                            case 370900263:
                                                str6 = "ۘۥۘۛۢۨۜۤ۠ۢ۬ۡۘۜ۠ۚ۬ۗۥۘ۟۫ۛۧۤۡۡۧۘۘۢۖۥ";
                                                break;
                                            case 635291027:
                                                str7 = file2.exists() ? "ۨۨۡۡۡۘۘ۠ۜۢۘۛۘۘ۬ۖۛۨۙ۠ۜۥ۬ۨۨۡ۠ۦۖۘ۟ۜۧۢۦ۠ۡۨۦۙ۬ۘ۟ۚۚ۟ۘۦۛۧۨۗۜۚۧۛ" : "۟ۙۗ۬ۥ۠۬ۗۜۘۗۜۡۧۘۖۘ۫ۖۘۖ۟ۘ۫۠ۦۘۘ۬ۛۜۡۙ۬ۖۘۢۥۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case -526199753:
                                    str6 = "ۗۗ۬ۦۘۜۥۢۙۦۨۖۙۧۥۧۨۙۥۧۙۖۥ۫ۢ۠ۤۦۡۥۖۙۡۘ۠ۚۜ";
                                    break;
                                case 136380227:
                                    str3 = "۠ۜۧۘۖۙۡۛۘۘۛۗۧۗۜۥۘۨۙۘۥۧۘ۠۫ۦۘۦۖۡۘۚۧۦ";
                                    continue;
                                case 2018003854:
                                    str3 = "ۘۘۘۥۗۥۨۖۘۙۚ۟ۘۡۚۧۡ۠۠ۚۥۦ۠ۦۘۙ۫ۡۘۖۗۚ";
                                    continue;
                            }
                        }
                        break;
                    case -1305600966:
                        sb5.toString();
                        str3 = "۠ۜۧۘۖۙۡۛۘۘۛۗۧۗۜۥۘۨۙۘۥۧۘ۠۫ۦۘۦۖۡۘۚۧۦ";
                        break;
                    case -1138301007:
                        str3 = "ۜ۠ۖۘۥۜۢۥۘ۠ۗۜۘۘۥۗۦۜۖۥۜۖۚۗ۬ۙ۫ۨۘۥۙ۟ۧ۫ۛ۬ۖۖۥۧۚۥۚۖۘۖ۫ۦۢۥ۬۫ۜۡۘۘۥۜۘ";
                        str2 = str;
                        break;
                    case -1088159391:
                        sb2.toString();
                        str3 = "ۖۗۛ۬ۖ۠ۧۛۦ۠ۡۨۡۦۘۘۜۜۗۦۢۨ۬ۚۨۘۘ۬ۜۙۨۦۨۡۘۧ۬ۗۧ۬ۘۛۚ۠ۡۘۖۡ۫ۦۥۤۙۥۘ";
                        break;
                    case -891460998:
                        return Boolean.valueOf(z3);
                    case -660508763:
                        sb5.append("copyOcrExLib 删除旧的文件夹：");
                        str3 = "ۢۢۗۧۛۡۙۢۖۖ۬ۦۘۧ۫ۘۘۗۨۦۘۜ۬ۗ۬ۗۨۘۢۦۢۥ۬ۨۚۙۗ۟۠ۜۨۧۨۘۙۥۗ";
                        break;
                    case -521123636:
                        sb4.append("copyOcrExLib: ocrexDir = ");
                        str3 = "ۛ۠ۡۘۨۡۜۘۧ۬ۧۤۖۧۘۡۧۘۘ۫ۢۨۘۤۗ۠۠ۖۥۘۗۦۘۘۡۜۦۚۢۧۨۗۡۘ";
                        break;
                    case -440742586:
                        sb4 = new StringBuilder();
                        str3 = "۫ۖۗۥۖۨۗۢ۠ۘۧ۟ۚۧ۟۬ۚۛ۬ۜۚۖۦۘ۠ۜۨۘۚۚۡۦۧۚۥۚۦۗۤۘۘۛۛۦۘۧ۬ۥۙۙۨۘ";
                        break;
                    case -362895185:
                        sb3.append("copyOcrExLib: nativeLibraryDir = ");
                        str3 = "ۥۢۙۚۨ۟ۛۧۥۘ۟۠ۜۘۛۘۡ۟ۙۦۘۙۘۧۘۤۨۨۘ۟ۜ۟ۤۖۨ۬ۦۡ۠ۚۛ۟۟ۘۨ۫ۘۘۤۙۗۧ۫ۘ۠ۡ۫ۡۤۨۘ";
                        break;
                    case -353359254:
                        str3 = "۬ۗ۫۬ۜۡ۠ۘۡۘۜۧۚۚۢۡۘۢۨ۬ۦۘۧۘۡ۬ۨۡۥ۠ۘۛۘۘۖۖۥۦۦۡۘۖۨۚۧۚۡۘ";
                        str2 = strOooOOo;
                        break;
                    case -182067048:
                        sb3 = new StringBuilder();
                        str3 = "ۦۨ۠ۖ۬ۜۘۙۗۛۚ۫۠ۨ۟ۡۘ۬ۨ۬ۖۤۦۖۖۜۡۨۡۙۢ۟";
                        break;
                    case -95485263:
                        sb4.append(file2.getPath());
                        str3 = "ۗۡۜۘ۠۫ۙۡۛ۟۫ۧ۠ۥۨۖۤۗۥۜ۠ۜۘ۬ۙۜۘۦ۟ۥۚ۟ۙۡۢۥۘۧۢۨۘۧۙۦۤۖۨۧۖ۟ۢۖۢ";
                        break;
                    case -88488944:
                        sb2.append(str2);
                        str3 = "ۘۛۢۜۚۦۘۗۡۡۘۙ۬ۡۙۗۘ۬ۙۘۙ۠ۛۛۘۢۘۢۥۘۢ۫ۢۦۘۚۖۜۜۘ";
                        break;
                    case 38250788:
                        String str8 = ElfinFreeActivity.o000000;
                        str3 = "۫ۚۤۦۤۡۨۤۗۘ۫ۦۙۚ۬ۘۖۘۦۡۦۦۖۧۘۗۖۥۘۚۢ";
                        break;
                    case 56767950:
                        return Boolean.TRUE;
                    case 380763577:
                        str3 = "ۦۦۨۘۗۥۦ۠ۡۧۚۘۙۤۖۡۘۘۘۘۨۡۜۘۙۨۡۘ۟ۦۖۥۙۦۙۘۧ۬ۜۨۘ۫ۖ۠۬ۥۧۘۦۨ۫۬۫ۧ۟ۖۡۦ۫ۘ";
                        z3 = z;
                        break;
                    case 429728228:
                        file2 = new File(this.o00Ooo.getFilesDir(), k3.o000000);
                        str3 = "ۜ۫ۡۤۡۥۘۜۡ۬ۢ۟ۘۧۥۜۛۘۙۦ۠ۥۙۖۤۗۖۘۘۜۥۥۡۡۛۖۤۨۘۙۢ۬ۤۦۢ";
                        break;
                    case 473103408:
                        str3 = "ۚۛۜۘۖۤۥۘ۫ۡۡۦۨۡۙ۠ۧۡۦۙۙ۫ۚۘۧۥۘۜۛۘۤ۫ۖۢۘۡۙۚۖ۫ۘۜۚۗۛ";
                        break;
                    case 614733644:
                        sb = new StringBuilder();
                        str3 = "ۦۨ۠ۗۨۡۤۨۧ۟ۜۤۡۢۨۤ۫ۢۚۢۥۘۢۨۘۘۨۖۘۘۤۘ۫۬ۡۨۗۖۘۧۤ۬۫ۦۤ۬۠ۡۘۛ۫۠ۢۨۚۦۡۡ";
                        break;
                    case 651487445:
                        strOooOOo = j4.OooOOo(file);
                        str3 = "۟ۥۖۘۘۛۥۦ۟ۥ۬ۦۛ۫ۦۜۘۜۘۖۜۧۘ۠ۗ۠ۘۦۦۘۚ۫ۦ";
                        break;
                    case 799517436:
                        str3 = "ۜ۠ۖۘۥۜۢۥۘ۠ۗۜۘۘۥۗۦۜۖۥۜۖۚۗ۬ۙ۫ۨۘۥۙ۟ۧ۫ۛ۬ۖۖۥۧۚۥۚۖۘۖ۫ۦۢۥ۬۫ۜۡۘۘۥۜۘ";
                        break;
                    case 837073031:
                        sb6.append(zOooO0Oo);
                        str3 = "ۙۙۚ۫ۥۘۘۨۚۡۦۨۧۘۗ۫ۦۤۘۖۘۚۦۜۘۤ۟ۘۦۚۜ۬ۙ۠ۡ۫ۖۨۡۢۨۛۢۙۤۡۘۡۘۘۘ۬ۥۥ";
                        break;
                    case 967929576:
                        sb6.toString();
                        str3 = "ۧۚ۟ۡۦۨۘ۬۟ۥۥ۠ۥۘۦۡۥۦۜۥۗۡۙۦ۟ۤ۬ۡۥۛۥۛ۟ۥۡۘۥۛۢۦ۟ۘۘۥ۟";
                        break;
                    case 991447182:
                        str3 = "۬ۦ۟ۤ۟ۢۘۢۦ۟ۚۜۘۢۦۜۨ۫ۡۘۖۚۘ۠۫ۥۘۤۢۡۘۙۡ۟ۘۥۜۨۙۤ";
                        z3 = zOooO0Oo;
                        break;
                    case 1167235643:
                        String str9 = "ۖ۟ۖۜۡۤۙ۠ۥۘۖۨۜۘۡۚۤۘۨ۬ۤۗ۬۟ۡۥۡۛۦۥۖۘۢ۬۠ۙ۠ۜۘۗۡۗۜۦۧۜۥۗ۟ۦۛۡ۫ۚۨ۟ۜۘ";
                        while (true) {
                            switch (str9.hashCode() ^ (-1108599325)) {
                                case -530272345:
                                    String str10 = "ۧ۠۫ۖۛۚۘۚۦۢۜۥۘۜۗۖۘۘ۬۠ۘۨۗ۠ۥۧۖ۫ۚۧۘۘۛۛۚۤۧۥۖۨۦۥۛ۟";
                                    while (true) {
                                        switch (str10.hashCode() ^ 1667200627) {
                                            case -2071484120:
                                                str10 = file2.exists() ? "ۙۚ۠ۤۗۗۨۘۥۧ۠ۘۘۢۥ۠۫ۤۦۘۘ۟۫ۨۤۙۥۖۥۘۗۥۨۤۤ۫ۢ۬ۛ" : "۟۟۠ۧۢۙۨۨۗ۫ۙۡۘ۟ۦۨۘ۫۬ۜۡۘۡۗۚۘۛ۠ۧۜۖۢۘۘۧۨۡۘ۬ۥۜۘۨۘۨۡۨۖۙ۬ۘۘۦۖۗۙۛۢ";
                                                break;
                                            case -1561805164:
                                                str9 = "ۘۖۨۘۗۙۖۘۦۦۥۨۘۜۚ۫ۦ۫ۥ۬ۡۡۘۙۢۗۛۤ۠ۚۜ۟ۚۡۚۘ۟ۥۘۚۦۦۜۦۧۘۖۘۤۘۡ";
                                                break;
                                            case 532886265:
                                                str9 = "ۜۡۡۤ۫ۡۘۗ۬ۖۘۗۡۡۘۖۨۗۖ۫ۨۘۦ۫ۨۘۧ۠۠۫ۤۖۦ۬ۜۜ۫ۦۤۧۧۡ۫ۥۘۡۘۛۦۗ۬۫ۨۚ";
                                                break;
                                            case 861677623:
                                                str10 = "ۧۥۖ۠ۙۖۙۜۘۘ۠۠۠ۚۗۧۘۗۚۛۦۧۘۧ۠ۤۧۧۥ۟ۘۥۘ۠ۦۘۘۥ۫ۡ";
                                                break;
                                        }
                                    }
                                    break;
                                case 51104618:
                                    str9 = "ۢۨۢۙۛۦۘۚۧۘۘۛۨۡۛۜۙۧۖۚ۟۬۠۟۬ۥۘۚۤ۬ۢۛۥ۫ۖۗ۫ۚۢۧۧۡۛۥۡۘ";
                                    break;
                                case 132274987:
                                    str3 = "ۛۡۨۘ۟ۗۚۢۦۤۗ۬ۘۡ۬ۙۧۦۤۘۘ۟۬ۗۥۗۜۘۢۚۜۚۥۖۤۚۤۨۦۥۨۜۜ";
                                    continue;
                                case 1337515602:
                                    str3 = "۫ۗۡۘۘ۟ۢۥ۟ۙۨۥۜۥۢ۫ۤ۟ۖۘۙۚ۫ۢۘۛۦ۬۠ۚ۟ۡۘ";
                                    continue;
                            }
                        }
                        break;
                    case 1210413576:
                        sb3.toString();
                        str3 = "ۚۥۗۖۢ۟۫ۜۤۙ۠۫ۛ۠ۨۘۦ۠ۡ۫۫۟۠ۜ۫ۘ۬ۘۘ۬ۧۖۙۨۚۡ۬ۦۘ";
                        break;
                    case 1285225758:
                        sb2 = new StringBuilder();
                        str3 = "ۗۡ۠ۨ۬ۦۨۥ۬ۨ۟ۖۘۜ۬ۖۤۗۖۜۡۗۘۖۥ۫ۡۧۗۜۛۤۤ۟ۙۥۘۛ۟ۡۘۗۖۜۡۤۜۘۜ۠۟";
                        break;
                    case 1337505655:
                        String str11 = "۟ۜۜۜ۬ۖۘۜۘۥۜۜۘۙۥ۬ۚۙۜۘ۫۠ۗۨۧۖۘۡۖۚۥ۬ۖ";
                        while (true) {
                            switch (str11.hashCode() ^ (-332752124)) {
                                case -1460142186:
                                    String str12 = "ۡۥۘۜۥۢ۟ۘۥۥۦۡۘۚۙۙۤ۫ۨۨ۠ۘۖۦۚۚۜۧۘ۟ۗۘۤۨۜۘۘۖۧۘۖۡۧۛۛۢ";
                                    while (true) {
                                        switch (str12.hashCode() ^ (-420714387)) {
                                            case -523571506:
                                                str12 = "ۡۜ۬ۜۙۧۦۢۦۘۛۜۦۘ۟۫ۘۘۥۧۨۦۡۘ۬ۜۥ۠ۚۨۘۙۙۡۘۖ۠ۛۗۗۘۘۗ۬ۢۡۡۘۗۙۗۜ۬ۜۘ";
                                                break;
                                            case 188395800:
                                                str11 = "ۙۗۘۡۦۚۗ۫ۜ۠ۜۤۖۜۘۗۦ۬ۚۦۧۘۚۤۘ۠۠۬ۖۚ۟ۢۚۢۥ";
                                                break;
                                            case 1306579551:
                                                str12 = TextUtils.isEmpty(strOooO0O0) ? "ۨۢۤۨۤۥۘۧۡۘ۟۫ۚ۠ۦۗۢ۟ۚ۫ۗۡۥۙۙۗۤۦۡ۬ۢ" : "ۙۤۖ۠ۤۢۚۖۥۘ۠ۤۜۘۡ۫ۡۘۘۧۗۥۖۧۧۨۦۨۥ۠ۡۡۡ۫ۜۘ۠ۧۨۘۢۙ۠۬ۘۤ۫ۡۧۥۛۡ";
                                                break;
                                            case 1608311283:
                                                str11 = "۫ۡۗۗۘۙۢۗۡۘۦۤۙۡۘۧۘۤ۬ۖ۠ۗۛۙۥۘ۠ۥ۫۟ۗۙ";
                                                break;
                                        }
                                    }
                                    break;
                                case -720433071:
                                    str3 = "ۤۗ۟ۗۙۗ۠ۙ۫۫۫۫ۚ۠۠ۦۢ۫ۤۤۛۡۢ۠ۧ۠ۘ۬ۖۦۦۦۡۨۥۦۖۖۥۜۚ";
                                    continue;
                                case -477017963:
                                    str11 = "ۚۚ۬ۡۙۛ۫ۦۚۙۜۥۘ۬۫۬ۚۙۘۘۦ۠ۨۘۙۧ۠ۧۙۢۘۧۦۘۚۗۢۖۗ۬ۗ۠ۥۗ۫ۧۖۘۚۤۨۘۧ۟ۘۨۤۚ";
                                    break;
                                case 2040223754:
                                    str3 = "ۗۜۧۤۖۡۨ۠ۡۗۥۥ۟ۧۡۘۗۜۡۨۛۨۡۜۧۘۡۨۢۗۨۗۤ۠۟ۚ۟ۡۘۖ۬ۢۢۤۡ۟ۧۛۢۖۖۘ";
                                    continue;
                            }
                        }
                        break;
                    case 1352882151:
                        ElfinFreeActivity elfinFreeActivity = this.o00Ooo;
                        final r6 r6Var = this.o00Oo0;
                        elfinFreeActivity.runOnUiThread(new Runnable() { // from class: z2.f9
                            @Override // java.lang.Runnable
                            public final void run() {
                                ElfinFreeActivity.Oooo000.OooOOoo(r6Var);
                            }
                        });
                        str3 = "ۤۖ۬۬۬ۙ۫۬ۡۘۖۙۖۘۥۧۧۛۗۖۘۡۨۘۛ۟ۛۦۚ۬ۡۦۘۤ۠ۖۖۦۘ۬ۗۜۤۜۘ";
                        break;
                    case 1467716226:
                        zOooO0Oo = g5.OooO0Oo(this.o00Ooo.getApplication(), "ocrex.zip", this.o00Ooo.getFilesDir());
                        str3 = "ۨۡۚۗۗۗ۠ۛۗ۬ۧۚ۫ۜۦۨ۬ۥۖۚۤۗ۬ۥۖ۟ۜۘۧۤۨۡۛ۟ۚ۠ۨۘ۠۟ۖۥ۠ۧۖ۫ۙۘۘۗ";
                        break;
                    case 1571910080:
                        sb.append(File.separator);
                        str3 = "ۢۜۘۡۦۦۜۦ۬۠ۜۗ۟ۢۗۜۥۘۗ۟ۙۛۦۧ۬ۦۢۛۗۛۥۘۜۘۙۨۘۘۤۥۘۨ۬ۡ";
                        break;
                    case 1574801821:
                        sb2.append(" localTime = ");
                        str3 = "ۛۥۜۘۛۛۨۛۦۘۘۦۘۦۗۥ۬ۡۥۘ۟ۚ۠ۡۨ۠ۨۛۦۦۖۢ۫ۢۦ";
                        break;
                    case 1589500350:
                        file = new File(sb.toString(), "time.txt");
                        str3 = "ۚۚۢۖۖۥۜۛۘۘۜ۟۫۠ۘۤ۫ۧۢۡۢۤۚۘۜۧۡۘۛ۟ۜۢۚۗۨۚۢ۫ۥۛۘ۬ۤ";
                        break;
                    case 1820826752:
                        String str13 = "ۦۤ۟ۜ۫ۥ۬ۗ۠۬ۥۖۘۨۛۨۘۘۗۛۨۘۚ۠۠۠ۚۢۖۦ۬ۘۘۜۧۦۘ۠ۥۧ";
                        while (true) {
                            switch (str13.hashCode() ^ 1729914970) {
                                case -1407615874:
                                    str3 = "۫ۗۡۘۘ۟ۢۥ۟ۙۨۥۜۥۢ۫ۤ۟ۖۘۙۚ۫ۢۘۛۦ۬۠ۚ۟ۡۘ";
                                    continue;
                                case -1262623105:
                                    String str14 = "ۢ۟ۤۙ۟ۚۦۛۖۡۦ۫ۢ۬ۥۘۛ۟ۦۘۨ۫ۘۘ۫ۦۙۧ۫ۖۛۛ۬";
                                    while (true) {
                                        switch (str14.hashCode() ^ 1998300972) {
                                            case -1827073817:
                                                str13 = "ۤۘۢ۫ۖۡ۟ۨۧۘۖۦ۠۬ۘۛۙۤۤۖۡ۟ۚۚۗۚۚ۬ۨۙۤ۫ۚۚۙۥۖۡۡۤۜۜۡۨۖۘۚۖۡ";
                                                break;
                                            case -1737888676:
                                                str14 = strOooO0O0.compareTo(str2) > 0 ? "ۧۧ۠ۡۛۦۗۥۘۛۘۘۧ۫ۡۘۨۚۡۘۡۛۡۘ۟ۨ۫ۘۢۗۦۨۜۢ۬۫ۚۖۦ۟ۛۚۥۥ۬۬ۡۛۚۚ۬ۜۧۘۥ۫ۚ" : "ۧۦۤۢۡ۟ۥۧۡۙۡۘۘۧۦ۠ۖۘ۟۬ۨۜۘۙۤۛۗۛۛۦۨۘ";
                                                break;
                                            case -164225139:
                                                str14 = "۫ۦۡۘۤۥ۫۬ۦۜۢۜۨ۠ۖۧۧۗۜ۟ۥۡۘۨۢۨۦ۫ۗۨۦ۫ۘ۫ۤۤۦۙۡ۠ۤۢۡۡۘۡۢۖۛۥۨۘۚۚۦۧ۟ۢ";
                                                break;
                                            case 861473859:
                                                str13 = "۟ۗۡۦۥۡۛۖ۬۬۬ۥۘۘۤۘۦۛۢۡ۬۟ۗۚۜ۟۬ۘۘۘۡۧ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1160155837:
                                    str13 = "ۥ۬ۡۘ۠ۖ۠ۛ۟ۤ۫ۢۨۘۙ۠ۥۘ۠ۢۥۘۡۘۧۘ۟ۘ۫ۜ۠ۡۦۡۜ";
                                    break;
                                case 1470901210:
                                    str3 = "۬ۦ۟ۤ۟ۢۘۢۦ۟ۚۜۘۢۦۜۨ۫ۡۘۖۚۘ۠۫ۥۘۤۢۡۘۙۡ۟ۘۥۜۨۙۤ";
                                    continue;
                            }
                        }
                        break;
                    case 1881318002:
                        sb6.append("copyOcrExLib OcrEx 解压是否成功：");
                        str3 = "ۚۢۦۦۢۦۘۥۜۥۢۡۦ۬ۘۖ۫ۘۖۘۚۖ۟ۧۙۤۜۤۥ۫ۡۦۘ۬ۦۥۘ۟ۧۦۘۖۚۡۘۖۚۖۘۦۡ۫۫ۜۦۡۤ۠۫ۛۦ";
                        break;
                    case 1881978494:
                        sb2.append(strOooO0O0);
                        str3 = "ۘۧۙۛۤۧۛۚ۬ۦۡ۠ۘ۠۫۬ۨۡۘۛۦۛۤۦۖۛۤۥۘۨۙ۠ۥۛۚۧۘۚ۬ۢۦۘ";
                        break;
                    case 1959162549:
                        sb2.append("copyOcrExLib: zipTime = ");
                        str3 = "ۖۨۜۜۤ۬۟ۡۡۘ۟ۦۦۘ۟ۚۡۥ۟ۚ۟۠ۢۗ۠۬ۤۡۦۜۖۡۘۚۡۖۘۥۤۥۘۙۜۘۘ۬ۨۧ۫ۛۡۘۧۦۚۚۢۦۥۚ۫";
                        break;
                    case 2024697444:
                        str = "";
                        str3 = "ۘۢۘ۟۬۫ۖۖۙۡۤۦۘ۬ۚۨۘ۫ۨۥۘۜۗ۫ۖۥۛۤ۟ۧۤ۫ۘ۬ۗۙۖۙۘ۟ۖۘۥۥۧۘ";
                        break;
                    case 2038188117:
                        sb5.append(zOooO0oO);
                        str3 = "ۢۖۗۨۚۘۘۘۖۢۖۚۛ۫۟۫ۜۦۥۖۖ۠ۙ۠ۜۘ۫۠ۗۜۧ۠ۚۥ۬ۚۚ۬";
                        break;
                }
            }
        }

        public void OooOo00(Boolean bool) {
            StringBuilder sb = null;
            String str = "ۢۥ۠ۥۤۙۛۚۨۘۖ۠ۘۘۖۚۚ۫ۡۗ۫ۜۨۛۤۧۜۗ۠۬۫۬";
            while (true) {
                switch ((((str.hashCode() ^ me.o0000Ooo) ^ 975) ^ 651) ^ 704408629) {
                    case -1274951192:
                        sb = new StringBuilder();
                        str = "ۡۜۛۛۚ۬ۜۧۨۚ۬۫۫ۦۡ۫۟۫ۧۗۘۡۘۤۢۙ۬ۖۥۘ";
                        break;
                    case -610708037:
                        str = "ۤۧۡۖۚۖ۟ۖۤۧۗۥ۫۬ۙۖۨۘ۬ۧۜۛۤۜۘۙۗۦۘ۫۟ۦۘۖۜۖۗ۬ۡۘۦۖۨ۬۬ۛۦۢۘۘۜۥۜ";
                        break;
                    case 136722471:
                        sb.append("copyOcrExLib 执行完成：");
                        str = "۬۟ۦۘۘ۬ۜ۟ۛ۬ۚۥ۟ۖ۠ۗۦ۟ۨۙۜۘۗۨۘۘ۟ۗۜۡ۫۫۬ۗۜۤۗۡ۬ۡۧۘۧۛۛۧۢ۠ۦۖۜۘۜۙۦۧ۬ۦ";
                        break;
                    case 149621497:
                        return;
                    case 245053941:
                        this.o00Oo0.dismiss();
                        str = "ۘۙۡۘۙۙۨۘۢۥۨۘۜۧۙۦ۠ۨۘۙۖ۬ۦۤۦۘۖۘۨۘۨۗۘۘۨۚۤۤۧۧۡۦۥۘ";
                        break;
                    case 806370180:
                        str = "ۛۨ۫ۛۤۢۦۖۨۡ۫ۚۤۡۨۘۦۦۚۡۡ۠ۖۥۦ۫ۖ۟ۜۥۖۘۧ۬ۙۥۛۡۘۜ۟ۤۢۨۛۨۦ۬ۚ۫ۘۘۡۜۥۡۧۡۘ";
                        break;
                    case 1052246836:
                        sb.toString();
                        str = "ۤ۫ۧۤۘ۬ۖۘۖۘۤۜۘ۟ۤ۠ۤۨۨۘۘۛۜۘ۫ۢ۠ۘۢۦۤۘۧۘ۬ۘۧۘ۫ۦۖۦ۠ۜۖۚۚۚۚۡۜۖۥ";
                        break;
                    case 1530245566:
                        String str2 = ElfinFreeActivity.o000000;
                        str = "ۨۗۜۘ۠۫ۧ۫ۖۘۛۤۜۦۧۡۘۖۤۜ۫ۖ۠ۡۖۦۤۛۙۛۡۨۘۡۗۡۘ۟ۘۨۘۧۥۤ۟ۧۦۜۗۡۘۘۚ۬ۘۨۘۤۙ۬";
                        break;
                    case 1540273518:
                        String str3 = "ۥۤۘۘۧۙۡۘۧۘۧۘۖۙ۬ۦۦۨۘۖۚۘۘۛۧۦۜ۟ۙۘۜۜۦۦۜ";
                        while (true) {
                            switch (str3.hashCode() ^ (-588691198)) {
                                case -1159814575:
                                    String str4 = "۟ۛۚ۟ۨۘۜ۬ۛ۬ۘۗۧۨۡۖۙۤۖۘۨۗۖۘۘۥۖۤۛۥۘۜ۫ۨۦۚۛ";
                                    while (true) {
                                        switch (str4.hashCode() ^ 2022072210) {
                                            case 159101102:
                                                str4 = this.o00Oo0.isShowing() ? "ۨۡ۫ۘۖۦۡ۟۬ۡ۟ۨۘۗۢۢۗۛ۟۠ۥۜۘ۠ۖۡۖ۠ۘۘ۫۠ۚۢ۫ۚۢۖۙ۫ۥۥۦۖ۟ۧۥۦۦۛۘۘ" : "ۤۜۗۢۡۚۛۖۥۘۜۥۘۙۜۜۘۦۢۛۙۙۢ۬۬۟ۘۗۙۤۛۦۢۚۚ۬ۢۜۘۡ۬ۘۘۚۥۘۘ";
                                                break;
                                            case 1334658159:
                                                str3 = "ۡۥ۠۟۠ۗ۫ۧۨۜۦ۟ۨۤۘۘۢۢۗۡۦۘۢۚۗۦۤۦ۫ۤ۟ۤۨۡۙۚۦ۫ۨۢۦۛۦ۟ۘۖ۟ۢۙۙۘۘ۬ۘۖ";
                                                break;
                                            case 1885235512:
                                                str4 = "ۗۤ۫۟ۛۦۛۖۜۘ۬ۦۜۘ۟ۗۗۖۖۢۤۡۡۘۡۖۚۛۗۢ۟ۘۗۙۧ۠ۙ۠ۤۙۦۙۘۡۘۨۧۥۘۙۨۥۘۜ۟ۙۘۜۖ";
                                                break;
                                            case 1960591033:
                                                str3 = "ۨۖۥۥۛۡۘۙۧۧ۬ۨۡۜۦۥۘۤۛۘ۟ۜۥۘ۬ۗۧۙۥۘۚ۠ۥۘۡۨۨۤۤۡۛۖۨۖۢ";
                                                break;
                                        }
                                    }
                                    break;
                                case -408965746:
                                    str3 = "ۚۙۘۢۗۥ۬ۘۙۗ۫۬۬ۜ۟ۘۥۧۘۨ۫ۘۘۨۢۖۘۢۧۙ۠ۚۡۘ";
                                    break;
                                case 1224778370:
                                    str = "ۘۙۡۘۙۙۨۘۢۥۨۘۜۧۙۦ۠ۨۘۙۖ۬ۦۤۦۘۖۘۨۘۨۗۘۘۨۚۤۤۧۧۡۦۥۘ";
                                    continue;
                                case 1737740953:
                                    str = "ۡ۟ۖۨۡۧۘۦۖۜۘۦۗ۫ۡ۬ۚ۬ۘۧۦۘۘۘۧۘ۟۫ۦۚ۠ۛۜۢۦۛۢۢۜۡۘۤ۟ۙ۠ۢ۟ۗۗ";
                                    continue;
                            }
                        }
                        break;
                    case 1659916459:
                        sb.append(bool);
                        str = "ۖۗۦۘۙۡ۠۠ۜ۟ۤۗۖۤ۟۫۫ۢۛۦۜۨۘۚۨ۫ۤۤۖۘۘۜۦۗۦۘۘۗۢۗۙ۠ۥۚۖ۫۫ۡۨۘۙ۬ۡۘۛۨۚۨۙۢ";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۖۢ۫ۖۙۢۙۢۙۗۥ۟ۥۛۛۤۘۖۛۨۗۡۨۘۛۛۙۥۧۜۢۡۙۗۖۧۘ۟ۛ۬ۨ۬ۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ com.anythink.expressad.video.dynview.a.a.w) ^ 14) ^ 620) ^ (-1217822781)) {
                case -1916474414:
                    o000000o = LoggerFactory.getLogger(ElfinFreeActivity.class);
                    str = "ۖۖۨ۠ۢۦۘۥ۟ۤۤ۠ۢۚۙۘۧۙ۫ۨۦۘۘ۠ۢۡۘۤۦۛ۫ۛۨۘ";
                    break;
                case -1719035610:
                    o000000 = ElfinFreeActivity.class.getSimpleName();
                    str = "ۥۢۥۘۜۚۘۘۢۧۖ۬۟ۘۘۥۚۢۤۘۛ۟ۙۨ۬ۚۗۘۥۨۘۖ۫ۡۜۧ۬ۘۜۘۦۦۥۥۨۖۘ۠ۤۦۗۛۘۘ";
                    break;
                case -1474920501:
                    return;
            }
        }
    }

    public static /* synthetic */ void OooOO0(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۢۘۥۘۢۡۨۘۧۘۥۘۚۖۦ۠۟ۗۘۖۡ۫ۤۜۘۢۤ۬ۘۜۨۘۗ۟ۡۘۨ۬ۜۢۧۥۘ۫ۡۥۘۛۢۨۚۙ۟۟ۛ";
        while (true) {
            switch ((((str.hashCode() ^ 351) ^ 653) ^ 517) ^ 237899275) {
                case -1830873667:
                    return;
                case -1346665783:
                    elfinFreeActivity.OoooO0();
                    str = "ۤ۠۫ۛ۠ۗۜۡۨۢۙۨۘۜۨۡۖۜۥۡ۠ۥۘۥ۬ۛۗ۟ۦۘۖۘۢۡ۬ۤۤ۟۠";
                    break;
                case 1425513369:
                    str = "۠۫ۘۘ۬ۡۤ۠۬ۡۘ۠ۜۛۖۦۤۘۦۘۜۗ۬ۗ۬ۙ۠ۢۡۗۘۧ۟ۤۜۘ۬۬ۥۘۥۙۖۘۗۢۘۘۧۚۖۨۥۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ oa OooOO0O(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۦۖۧۘۡۖۗۘۧ۟ۙۦۜۤۘۘۢۖۡۘۘۘۨۘۨۜۥۗۡۢۗ۟ۧ۬ۖۦۥۤۥۡۨۜۘۧۛۥۘۨۚۢۤۨۚ";
        while (true) {
            switch ((((str.hashCode() ^ 458) ^ 178) ^ 30) ^ 1603502849) {
                case 32230251:
                    return elfinFreeActivity.o0ooOoO;
                case 1424749524:
                    str = "ۢۦۦۘۚۨۡۘۢۤۘۤۙ۟ۗۙۢۢۚ۫ۖۛ۠ۖۜۗۤۨۛۢۦ۠ۗۧۖ۬۫ۨۘ۬۫ۧۨۨۥۘ۠۬۠۟ۦۡ۠ۚ۟ۢۙ۟";
                    break;
            }
        }
    }

    public static /* synthetic */ boolean OooOO0o(ElfinFreeActivity elfinFreeActivity, boolean z) {
        String str = "ۚۢۜۘ۠ۨۡۧۖۧۡ۠۠۟ۘۦۘ۬ۘ۫ۚ۟ۨۨۙۙ۠ۘۡ۟ۛۢۖۙۨۜ۫۬";
        while (true) {
            switch ((((str.hashCode() ^ 909) ^ 462) ^ 188) ^ (-1439235105)) {
                case -1528527699:
                    elfinFreeActivity.o0O0O00 = z;
                    str = "ۜ۫ۥۘۛۖۥۘۘۥۤۗۢۡۨۗۚ۠۠۠ۚۡۢۘۤۖ۬ۖۨۘۜۨ۠۫ۢ۬ۘ۫ۘۘ";
                    break;
                case -386498960:
                    str = "ۡۡ۠ۢۦۙۚ۫ۛۜ۬ۨۤۥۡۘۚۖۚۤۦ۬ۡۘۜ۫۫ۢۥۜ۫";
                    break;
                case -358760976:
                    str = "۬ۘۡۘۤۤۖۧۚۖۘۥۜۡۘۡۘۛۦ۟ۗۨۖۘۛ۫۠ۙۨ۟ۢۢ۫۟ۖۚۥ۠۟ۗۘ۠۠۠";
                    break;
                case 1648487969:
                    return z;
            }
        }
    }

    public static /* synthetic */ void OooOOO(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۛ۬ۚۘۥۥ۠ۛۥۥۦ۠۠ۜۦۘۛۤۨۘ۠ۘ۫ۤۚ۠ۢ۠ۜۥ۬ۖۜۘ۠۠ۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_ENABLE_VALUE) ^ 491) ^ 128) ^ (-1594633335)) {
                case -433047626:
                    return;
                case -338611686:
                    elfinFreeActivity.Oooo();
                    str = "ۨۥ۟ۘۨۖ۬ۨۧۛۤۖۘۚۨۦ۫ۧ۟ۛۛ۬ۢۡۥۢۘۥۙۤۡۘۜۢۥۙ۠ۘ";
                    break;
                case 1052531416:
                    str = "ۨ۠ۨۤ۫ۥۙۛۛۗۛۥۘۘۙۧۘۗۥۘۘ۬ۘۖۧ۫ۙۗۘۘۙۘۤۛۜۤ۠ۨۤۖ۠ۧ۫ۢ";
                    break;
            }
        }
    }

    public static /* synthetic */ uc OooOOO0(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۖۧۤۥۡۜۘۨ۫ۖۘ۫ۙۚۗۨۚۚۛۛۦۚۚۛۖۡۘ۠ۜۥۘۙۧۤ";
        while (true) {
            switch ((((str.hashCode() ^ 678) ^ 285) ^ 650) ^ (-1165197230)) {
                case 266631711:
                    str = "ۧۖ۫ۢۜ۟۬ۚۜۘۨۙۚۘ۫ۘۘ۫۠۟ۡۨۡۘۛ۟ۜ۠ۛۨۘۛۡۘۘ۟ۗۘۘ۬ۗۨۘۙۘۦۘۧۥۧۜ۠ۦۘۙۚۥۘ";
                    break;
                case 1005404550:
                    return elfinFreeActivity.o0OOO0o;
            }
        }
    }

    public static /* synthetic */ boolean OooOOOO(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۤۨۨۧۜۖۘ۬ۘ۬ۚۖۡۗۦۨۘۖۙۜۘۥ۟ۤۜۜۨۘۧۘۨۘۖۡ۠ۖۢۨۘ۫ۥۛ";
        while (true) {
            switch ((((str.hashCode() ^ 752) ^ HideBottomViewOnScrollBehavior.OooO0o0) ^ 112) ^ (-1259762211)) {
                case -1580585121:
                    str = "ۡۤ۬ۤۨۥۘۢ۬ۘۘۗۧۧۡ۠ۥۘ۬ۙ۬۠ۛۥۘ۬ۥۡۖۦۜۘۡۜۨۘۨۛ۠۫۟";
                    break;
                case -489640606:
                    return elfinFreeActivity.oo0o0Oo;
            }
        }
    }

    public static /* synthetic */ void OooOOOo(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۜ۫ۖۘ۟۫ۜۘۧۗۨۨۥۖۚۡۙۖۜ۫ۨۦ۟ۢۘۚۗۚ۟۟۠۫ۢ۫ۙۢ۬ۚۜۤۨۦۚ۬";
        while (true) {
            switch ((((str.hashCode() ^ 51) ^ 78) ^ 94) ^ 1486560546) {
                case -2093911216:
                    elfinFreeActivity.Oooo0oo();
                    str = "ۤۧۦۦۗۖۘۥۛۖۡ۫۟ۨۖۜۢۛ۫۬۟ۦۢ۫ۘ۫ۖۘۘۘۘ۬ۨ۟ۢۧۜۘۘۛۚۛۚۡۘۘ۠ۗۥۢۦ۬۟۟ۧ۟ۨ۬";
                    break;
                case -1953455113:
                    str = "۬ۛۥۘۤۜۜۘۙۜۨ۬ۘۨ۠۟ۘۚۧۤۙۥ۬ۙۢۘۘ۬ۙۨۛۜۥۘ";
                    break;
                case -193350610:
                    return;
            }
        }
    }

    public static /* synthetic */ View OooOOo(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۨۛۖۘ۠ۖ۫ۥۖۡۚۡۜۘ۬ۖۧۘ۠۟ۗۘ۟ۘ۠۟ۙۖۙۥۘ۠ۨۡۗۖۨۥۙۛ۟ۦۥۨۛۛ۠ۥۙۢ۬ۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 593) ^ 706) ^ me.o0000O) ^ 123319671) {
                case -1467807140:
                    return elfinFreeActivity.OooooOo;
                case -1037645372:
                    str = "ۤۖ۬ۜۨۦۘ۬ۖۥۘۡۧۖۜ۫ۙۧۨۖۘۤۧۛۦ۟ۥۘۢ۠ۜۙ۬۟";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOOo0(ElfinFreeActivity elfinFreeActivity) {
        String str = "۫ۘۧۘۚۦ۠ۥ۫ۦۜۤۛۗۢۥۘۜ۟ۨۖۨۘۚۛۤۜۙۥۘۜۢۧ۠ۗۘۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 176) ^ 165) ^ 353) ^ (-211053021)) {
                case 115610837:
                    str = "ۙۨۨۘۛ۠ۚۧ۠ۧ۟ۙۖۜۢۡۘ۫۟۟۬ۖۥۡ۬ۧۧۢۧ۫ۨ۠۠ۧۢ۫ۚۥۥۤ۠ۧ۠ۥ";
                    break;
                case 321443455:
                    elfinFreeActivity.o0OoOo0();
                    str = "ۧۜ۟ۥ۟ۜۧۦۦ۠۬ۛۢۡۛۜۜۤ۬ۜۡۘۖۘ۫۟ۡۖۗ۬ۜ۟ۘۗ۬ۤۥۘۗۘ۠ۗۧ۠ۤۦۛۧۨ۠ۨ۫ۧۘۡۘۘ";
                    break;
                case 1166914573:
                    return;
            }
        }
    }

    public static /* synthetic */ boolean OooOOoo(ElfinFreeActivity elfinFreeActivity, boolean z) {
        String str = "ۧۚۘۘۥ۬ۤۗۚۢۜۧۨۗۚۨۘۚۖۘۘۦۨ۟ۨ۠ۤۤۜۥۘۗ۬ۛۥۙۤۨۤ";
        while (true) {
            switch ((((str.hashCode() ^ 568) ^ 374) ^ 890) ^ (-2079834799)) {
                case -115405870:
                    str = "ۙۦۢۗۚۨۘۤۥۡۥۢۛۚۢۥۛۗ۠ۦۙ۫۬۟ۗۚۨۧۢۛۜۘۨۘۧ۟۟ۖۜ۬ۢ۬ۖۧۜۙۡۦۜۘ";
                    break;
                case 27704248:
                    str = "ۜ۟ۥۘ۬ۙۨۘۨۛۖ۠ۜۗۡۙ۬ۥۖۛۨۘۛ۫ۨۘۖۚۨۘۗۨۦۘۙ۟ۡۘ۟ۙۦۘۖۗۙۗۛۖۘۥۛۢۚۚ";
                    break;
                case 1466141114:
                    elfinFreeActivity.o000OOo = z;
                    str = "ۡ۬ۗۗۦۜۡۘۥۢ۬ۢۢ۫۠ۧۧۜۘۖۖۘۗۜۧ۠ۜۛ۟ۛۛۗۖۚۤۢۨۘۥۜۖۚۡ۫";
                    break;
                case 1498711001:
                    return z;
            }
        }
    }

    public static /* synthetic */ float OooOo(ElfinFreeActivity elfinFreeActivity, float f) {
        String str = "ۚ۫ۜۛ۫۠۟۫ۦۘ۠ۛۨۦۡ۬ۘۘۦۘۛۦۡۗۜۜۜۗۨۘۙۤۡ";
        while (true) {
            switch ((((str.hashCode() ^ 125) ^ 97) ^ 740) ^ (-512903410)) {
                case -821965819:
                    str = "ۘ۫ۘۢۦۡۘۜ۬ۦۚۛۧۡۧۢۛۦۚۛ۫ۨۦۢۥۘۥۚۤ۬۟ۡۧۛۦۨۤۗ";
                    break;
                case -407111883:
                    return f;
                case 796136967:
                    str = "ۥۚۢ۟ۤۧۖ۠ۛۧۙ۠ۖۢ۟ۨۨۨۘۛۨۥۦۘۙۖۘۜۢۛ";
                    break;
                case 1541256794:
                    elfinFreeActivity.OoooooO = f;
                    str = "ۘۡۜۘۘۧۤ۟ۚۢۢۖۨۘ۟ۤۦۘۖ۬ۜۘۦۡۘۘ۬ۥۙۨۜۖ۫۬ۚۙۗۙۡۛۢۤۡۘ۬ۦۥۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooOo0(ElfinFreeActivity elfinFreeActivity, float f) {
        String str = "ۧۦۜۘ۬ۜۙ۫ۙ۠ۖۥۖۨ۫ۖۨۗۖۘۢۧۨ۟ۚۥۘۨ۬ۖۤۖۘ۠ۗۚۚۧ۠ۙۨ۫ۚۡۚۗۗۖۘۚۘۜ";
        while (true) {
            switch ((((str.hashCode() ^ 816) ^ 39) ^ 771) ^ 1854342876) {
                case -730260241:
                    return f;
                case 987636244:
                    str = "۫۠ۤۨۘۡ۫۫ۡۘۛۡۧۥ۬ۥۘۖۙۢۢۦ۠ۛۘۡۧۗۥۘۙ۬ۦۘ۬ۗۦۘۖۜۜۤۙۜۘۗۛۘ";
                    break;
                case 1045352601:
                    str = "ۢۗ۫ۦۦ۟۬ۤۙۧۗۨۘۤۙۙۢۘۙ۫ۢۥۘۚۦۘۘ۬ۨۨۘۗۚۢۧۧۛۤۖۘۖۥۙۢۧۗۜ۬ۗۘۜۡۘۦۛۙۡۡۗ";
                    break;
                case 1509809535:
                    elfinFreeActivity.Oooooo = f;
                    str = "۫ۜۥ۬۠ۦۢۧ۬ۙۢۧۨۢ۠۬ۜۤۚۛ۫ۛۨۜۥۡۘۘۦۤۧۘۡۧۨ۠ۚۖ۫۠ۢۚ۬ۚۢۘۧۜۚ";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooOo00(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۤۡ۠ۜۢۖۙ۫ۙۘۤۡۙۤۧۢ۠۠ۤۛۡۗۧۗۜ۟ۜۘۥ۠ۙۥۙۧۧۦ۬";
        while (true) {
            switch ((((str.hashCode() ^ 824) ^ 54) ^ 116) ^ 2027747352) {
                case -1641522698:
                    return elfinFreeActivity.Oooooo;
                case 940762489:
                    str = "ۗ۫ۨۘۗ۟ۙۜۡۗ۠ۙ۫ۙۤۖۦ۫ۡۡۖ۠ۧۖۤۜۚۥۜۖۖۙۡۚۨۘۡۘۧۡۗۥۙۦۘۢۡۜۛۖۚۗۛۢۨۚۛ";
                    break;
            }
        }
    }

    public static /* synthetic */ ImageView OooOo0O(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۗۡۜۚۛ۫ۛۦۙۧ۬ۜۛۙۧۙۥۨ۬ۧ۟ۜ۟ۨۜۢۡ۬ۢۛ";
        while (true) {
            switch ((((str.hashCode() ^ 528) ^ 422) ^ 749) ^ 1907750312) {
                case -262157780:
                    str = "ۚۥۤۦۙۨۘۙۥۥۘۧۛۥۖۤۦۙۢۘۘۘۘۜۘۡۛۧۚۚۘۤۘۗۗۖ۟ۧۚۦ";
                    break;
                case 445493783:
                    return elfinFreeActivity.o00Ooo;
            }
        }
    }

    public static /* synthetic */ float OooOo0o(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۙۘۜۗۙۜۛۘ۫ۛۙۙۙ۬ۖۘۦۦۙۧ۟ۡۘۛۡۨۨۡۘۨۗۘۘۖۥۥۚۨۦۘۤۜۡۘۘۧۚ";
        while (true) {
            switch ((((str.hashCode() ^ 327) ^ 111) ^ 180) ^ 1496245186) {
                case -1869681481:
                    return elfinFreeActivity.OoooooO;
                case -150776251:
                    str = "ۘۥۧۜۘۖۘۜۤۘۘۗۦۡۘۡۜۘۛۤۛۦۛۢۗۚۥۗ۠ۖۗۖۘۧۥۥۘۢۜ۟۫ۨۥۘۢۖۥ";
                    break;
            }
        }
    }

    public static /* synthetic */ boolean OooOoO(ElfinFreeActivity elfinFreeActivity, boolean z) {
        String str = "ۜ۬۫ۚۧۜۘۦۥۜۚۘۛۜۧۡۡۖۘۚۦۦۘۖ۟ۘۘۡۧ۟ۛۘۤۦۨۜۘ۠ۤۙۘۦۛۛۧ۫ۘۥۗۛۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 934) ^ 107) ^ 743) ^ 125640123) {
                case -1792909615:
                    elfinFreeActivity.Oooooo0 = z;
                    str = "ۢۚۥۙۢ۟ۧ۫ۦۦ۬ۡ۟ۙۧ۬ۢۡ۬ۥ۬ۦۤۘ۠ۗۙ۟ۜۧۘ";
                    break;
                case 937725989:
                    str = "ۡۢۛۘۜۤۙۦۨ۫ۛۦۘۙۜۙۤۡۗ۟ۗۗ۟۫ۜۦۚۧۚ۬ۙۦۘۜ۠۟۫ۗ۟ۢۢۜ";
                    break;
                case 1158535299:
                    str = "ۥ۟ۙۤۗۙۦۘۢۤ۠ۛۛۥۗۛۘۡۥۡۛۡۖ۫ۙۙۨۜۘ";
                    break;
                case 1858889944:
                    return z;
            }
        }
    }

    public static /* synthetic */ boolean OooOoO0(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۚۙ۠ۖۘۦۘۚ۠ۦۘۜۤۙۡۗۥۘۧۨۧۘ۟ۨۨ۟ۘ۫ۥ۠۟ۜۘۛ";
        while (true) {
            switch ((((str.hashCode() ^ 769) ^ 197) ^ 549) ^ 1018960202) {
                case -486141018:
                    str = "۫ۥۥ۟ۙۙۤۦۘ۫ۘۥ۠ۙ۠ۖ۬ۛۗ۬ۡۛۥۨۙۢۦۘۖ۫ۥۜۙ۬ۦۡ";
                    break;
                case -393904560:
                    return elfinFreeActivity.Oooooo0;
            }
        }
    }

    public static /* synthetic */ void OooOoOO(ElfinFreeActivity elfinFreeActivity, View view) {
        String str = "ۖۚۜۙۤۥۚ۟ۡۘۨ۠۬ۖ۠ۛ۫ۜۘ۫ۗ۠ۡۖۖۘۚۡ۬ۨۘۜۘۙۥۧۘۨۥ۠ۗۥۖۡۙۚۨۥۘ۠۫ۜ";
        while (true) {
            switch ((((str.hashCode() ^ 539) ^ 872) ^ 899) ^ (-967364283)) {
                case -1748119820:
                    elfinFreeActivity.OoooO0O(view);
                    str = "ۨۗ۬۟ۨۙۨۛ۟ۤۖۗۦۢۖۧۛۘۘۖ۫ۧ۫ۜۘۘۘ۠۬ۡۤۚۢۖۘ۠ۦۦۘۗۙ۬ۖ۟ۨۘۥۢۦ۫ۥ۫";
                    break;
                case -1560159053:
                    str = "ۢۧۜۗۢۘۘۦ۬ۡۘۨ۬ۡۖۨ۬ۚۡۙۢۦۘۡۖۡۧ۬ۙۚۜۙۤۚۥۘۜۧۨۘ۠ۤ۟ۗۡۥۦۚۥۤۗۦۘ";
                    break;
                case 874020758:
                    return;
                case 1653163217:
                    str = "ۤۧۖۘ۟ۖۜۘۜۚۚۧۖۘۦۧ۬ۚۨۨۚۗۜۘ۟۫ۥۘۤۙۘۡ۠ۤۦۥۗۡۡۨۘۡۡ۠ۙۘۙۧۖۤۤۙۨۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ int OooOoo(ElfinFreeActivity elfinFreeActivity) {
        String str = "۠ۚۛۥۛۧۧ۬ۨۘۦۨۖۘ۟ۘۤۢ۬۫ۚۤۧ۟ۖۜۙۧۘ۬ۥۘ۫۬ۥۢ۟ۧ۫ۛۨ۬ۘۥۘ۬۟ۖۦۚۗ۬ۦۡۛۧۜ";
        while (true) {
            switch ((((str.hashCode() ^ 201) ^ 104) ^ 892) ^ (-1604515043)) {
                case -1081287101:
                    return elfinFreeActivity.Ooooooo;
                case -168592866:
                    str = "ۦۜۘۨۥ۠ۧ۬۫۟۫۬ۜۤۥۦۡ۫ۨ۬ۡۘۜۘ۟ۙۛۛۚۜ۫ۡۚ۬ۡۗۜۙۖۛۡۜۙۧ۫ۖۦۦۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOoo0(ElfinFreeActivity elfinFreeActivity, View view) {
        String str = "ۧ۬۟ۜ۫ۦۧۥۧۙۧۗ۟ۛ۟ۥ۠ۡۘۨۗۨۚ۠ۖۙۖۡۘۗۙ۬ۦۛۦۢۡۢۨۤ۬ۖ۫ۛۧۧ۟ۡۨۜۚۦۘ۟ۛۢ";
        while (true) {
            switch ((((str.hashCode() ^ 690) ^ 47) ^ 352) ^ 376637722) {
                case -659604035:
                    str = "ۥۙ۠ۨۦۧۘۤۘۗ۟۟ۗۚۢۡۘۡۙۜۙۙۛۘۢۡۘۖۡۨۘ۫ۘ";
                    break;
                case 663202537:
                    elfinFreeActivity.o00O0O(view);
                    str = "ۜ۠۠ۦۨۢۙ۬۬۬ۥ۬ۗۘ۟ۚۤۛۡۡۜۘۘۘۘۧۜۘۥ۬ۙ";
                    break;
                case 1592784765:
                    return;
                case 1768131384:
                    str = "ۚۢۜۚۘۦۘ۬ۙۨۡۙۚۛۗ۫۬ۨ۬ۘۨۨۘ۟۬۬۠ۘۡۗۛ";
                    break;
            }
        }
    }

    public static /* synthetic */ int OooOooO(ElfinFreeActivity elfinFreeActivity) {
        String str = "۫ۚۜۤ۟ۢ۬ۢۖۘۙۡۘۦۥۧۘۛۛۛۙۛۘۘ۬۬۟۬ۧۜۤ۬ۙۧۚۜۙۡ۬ۢۦۥۘۘۜۖ";
        while (true) {
            switch ((((str.hashCode() ^ 595) ^ 878) ^ 696) ^ 413383192) {
                case -1733656431:
                    return elfinFreeActivity.o0OoOo0;
                case 1337786429:
                    str = "۠ۜۜۘۦۡۛۘ۫ۡۘۨۡۜ۟ۦۘۤ۫ۗۗۚۦۥۦۢ۬۫ۘ۟ۧ۟";
                    break;
            }
        }
    }

    public static /* synthetic */ AndroidViewModel OooOooo(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۘ۟ۨۜۘۦ۫ۘۦۘۙۜۤ۟۠ۢۛۜۙۦۧۘۡ۫ۤۡۦ۬ۢۘۚ۫ۦۧۨۘۤۥۚۨ۫ۘۘۘۧۢۜۛۙۗ۠۠ۨ۫ۖۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 762) ^ UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE) ^ 890) ^ (-670756892)) {
                case 493197657:
                    str = "ۢۛۙ۫ۛۛۥۜۘۘۗۛۡۘۗ۟ۥۘۥۦۦۨۨ۬ۜۧۖۗۖۜ۠۟ۚۘ۠ۗۡۨۘۙۤۥۘۨۜۖۥۥۤۛۢ۟";
                    break;
                case 1993680122:
                    return elfinFreeActivity.OooooO0;
            }
        }
    }

    private void Oooo() {
        String str = "ۡۜۥۦۨۘۗۦۦ۬ۜ۠ۗۚ۫۠ۡۥۘۦۗۦۘۢۚۦۦۗۗ۫۟ۨۧۦ۟۬ۨ۫";
        while (true) {
            switch ((((str.hashCode() ^ 944) ^ 803) ^ 967) ^ (-1223850878)) {
                case -990714694:
                    this.ooOO.postDelayed(new Runnable() { // from class: z2.h9
                        @Override // java.lang.Runnable
                        public final void run() {
                            ElfinFreeActivity.OooooOo();
                        }
                    }, 1000L);
                    str = "ۖۦۖۘ۠۠ۜۘۗۨۡۨۖۜۖ۫ۦۘۥۡۘۘۢۢ۠۬ۘۛۥ۟ۢۛۚۧۜۛۥۧۛۥۖۥۗۦۛۥۘۦ۬ۜۘۡۗۛ";
                    break;
                case -466850393:
                    str = "۬۟ۚ۫۫ۢ۫ۦۤ۬ۤۥۘۢۗۢۗ۟۠۫۫ۜۛ۬ۤۦۗ۫ۥۥۦۘۦۤۚۘۖۡۘ";
                    break;
                case -305835786:
                    moveTaskToBack(true);
                    str = "ۦ۬ۤۜۨۘۦۖۛۜ۬ۡۙ۠ۦۖۚ۫ۨۘ۫ۧۙ۬ۖ۫۟ۗۛ۟";
                    break;
                case 1799573258:
                    return;
            }
        }
    }

    public static /* synthetic */ boolean Oooo0(ElfinFreeActivity elfinFreeActivity) {
        String str = "۟ۗ۬ۜ۠ۦۥۧۖۚۖۛۚ۠۠ۡۧۘ۟ۢۛۦۢ۫ۚۧۜۧۧۦۘۛۨۘ۠۠ۨۖۜۗۡۢۘۘۙ۟ۥ۫ۙۘ۠ۚۘۘ۫ۡۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 922) ^ 775) ^ 990) ^ 197004970) {
                case -2099499327:
                    str = "ۜۡۨۙۙۢ۫۟ۛۢۢۘ۫۫ۨۘۢ۠ۖۦ۟۫ۗۨ۟ۥ۠۬ۧ۫ۛۨۗۨۘۗۚۧ۫۟ۘۘۥۢۢ۟ۗۖۘ۟۫۬ۨۢۜۘ۬ۖۡ";
                    break;
                case 1094047208:
                    return elfinFreeActivity.o0OO00O;
            }
        }
    }

    public static /* synthetic */ void Oooo000(ElfinFreeActivity elfinFreeActivity, ArrayList arrayList) {
        String str = "ۤ۫ۗۙۚۙۛ۫ۨۘۦ۫ۧ۠ۢۨۛۥۜۨ۠۠ۡۘۧۖۜۜۙ۬";
        while (true) {
            switch ((((str.hashCode() ^ 780) ^ 785) ^ 727) ^ (-768055205)) {
                case -1639632224:
                    return;
                case 138373379:
                    str = "ۢ۫۟ۖ۬۟ۢۛۧۧۢۛۡۗۛۤۡۗ۟ۙۘۘۘۜ۟۠ۦۥۗۤ۠ۡ۟ۧۧۘۦۘۛۘۤۘۜۢ";
                    break;
                case 304203370:
                    str = "ۖۚۛۙۧۜۤ۫ۘۘۤۢ۠ۨۚۧۨۡۧۘۡۤۨۘۘۦۚۘۚۘۦۚۧۙۜۙۤۗۥۙۖۧۖۙۨ";
                    break;
                case 1925825337:
                    elfinFreeActivity.OoooOoo(arrayList);
                    str = "ۤۘۖۘۡ۠ۥۘۦۙۥۧۤۡ۠ۤۦۘ۫ۙۚۜ۬ۛۧ۫ۖۘۗۛۘۧۨۘۡ۫ۡۘۖۜۚۦۦۦۘ۫ۙۛۢ۟ۗ۫ۦۙۢۗ۠ۘۢ";
                    break;
            }
        }
    }

    public static /* synthetic */ NotificationCompat.Builder Oooo00O(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۜۤ۬ۦۗۢۧ۟ۚۖۘۡۗ۟ۦۘۖۖۥ۠ۥ۟ۧۗۧۘۙ۠۬ۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 42) ^ PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW) ^ 377) ^ (-1977556234)) {
                case -1672767487:
                    return elfinFreeActivity.o00O0O;
                case 1423443638:
                    str = "ۘۦۖ۫۟ۛۦۦۛۦ۫ۦۘۥۥۥۘۦۜۘۦۜۨۧۙۗۘۧۙۨۘۢۙۜ۟۠ۧۦۘۜۢ۬ۦۘۖ";
                    break;
            }
        }
    }

    public static /* synthetic */ NotificationManager Oooo00o(ElfinFreeActivity elfinFreeActivity) {
        String str = "۬۫ۘۛۡ۫ۜۚۨۧ۬ۧۥۥۖۘ۫ۦۘۡۨۖ۟ۥۨۘۜۘۖۘۤۡۖۘۦ۬ۡۘ۟۫ۨۘۦ۬ۢۛ۟۫";
        while (true) {
            switch ((((str.hashCode() ^ 620) ^ 997) ^ 540) ^ (-1501111934)) {
                case 851488024:
                    str = "ۡۗ۬ۧ۫ۛۦ۫ۙۦۜۦ۫ۙۦۘۜۚ۠۬ۤۦۧ۬ۧۦۛۢۨۨۛۜۨۧۘ۬۟۬ۢۢ۬ۚۨ۟ۦۡۦ۬ۚ۠ۚۘۨۘۘۘۗ";
                    break;
                case 1343448319:
                    return elfinFreeActivity.o00Oo0;
            }
        }
    }

    public static /* synthetic */ boolean Oooo0O0(ElfinFreeActivity elfinFreeActivity, boolean z) {
        String str = "ۤۦ۟ۛ۫ۘۘۦ۫ۡۨۖۜۛۘۜۡۙ۫۫۫ۖۘۙۚۦۘۜۖ۬ۢ۬ۧۥۘۘ۫۠۟";
        while (true) {
            switch ((((str.hashCode() ^ 45) ^ 664) ^ 966) ^ 390693974) {
                case -2121883331:
                    str = "۫ۖۦۘۙ۟ۘۘ۟ۨۨۘۘ۟ۨۖ۫ۙۚ۬ۤۡۥۦۘ۟ۦۨۚۦۡۘ۬ۛۚۥ۠ۗۛ۠";
                    break;
                case -865587436:
                    str = "ۚۡۙۤۜ۫ۜۚۤ۫۬۬ۘۚ۟ۦۗۗۨۙۧۨۥۛۘۖۥۘۜۘ۬ۧۛۤۘۛ";
                    break;
                case 198093518:
                    elfinFreeActivity.o0OO00O = z;
                    str = "ۖۢۤۨۨۘ۫ۨۚۘۡۦۘ۠ۗۢۛ۠ۢۢۡۢۙۙۨ۬ۙۛۨ۟ۤۨۨۨۨۛۛ";
                    break;
                case 1926269419:
                    return z;
            }
        }
    }

    public static /* synthetic */ ca Oooo0OO(ElfinFreeActivity elfinFreeActivity) {
        String str = "۟ۤۛۖۚۛۙۙۛۥۜۥۘ۠ۜۥۘ۫ۤۗۤۜۧۖۦ۫ۦۚۜۘۛۦۡۘ۬ۜ۫ۤۡۖۚۦ۬ۡۙۜ۬ۙ۫ۗۛۜۘۖ۬ۦۘ۫۠۟";
        while (true) {
            switch ((((str.hashCode() ^ 412) ^ 870) ^ 150) ^ 913869696) {
                case -1285538781:
                    str = "۬ۨ۟ۧۜۖۘ۬ۛۢۡۛۛۧۡۗ۠ۙۥۘۘۜۨۘۨۤۧۙۤۜۘ۟ۛۡۘۘۗ۠ۢۢۖۦۘۤۗۡۢ";
                    break;
                case 767644871:
                    return elfinFreeActivity.o0Oo0oo;
            }
        }
    }

    public static /* synthetic */ boolean Oooo0o(ElfinFreeActivity elfinFreeActivity) {
        String str = "ۦۥ۠۬ۙۡۛ۟ۦۘ۟ۡ۟ۜۧۢۡۙۖ۠ۚۥۘۗۡۖۤۥۜۘ۠۫۠";
        while (true) {
            switch ((((str.hashCode() ^ 678) ^ 1013) ^ 5) ^ 1237242969) {
                case -674733957:
                    str = "ۢ۬ۖۧۛۧۡۚۘۘۘۨۚ۟ۚۥ۟ۙۨ۟ۡۨۘۥ۠ۡۘۢ۠ۚۜ۫ۥ۟۠ۜ۫۫ۛۡۨ۠۠ۖۘۤ۬ۦۙۚ۟";
                    break;
                case 1247419738:
                    return elfinFreeActivity.o0ooOOo;
            }
        }
    }

    public static /* synthetic */ ca Oooo0o0(ElfinFreeActivity elfinFreeActivity, ca caVar) {
        String str = "۬ۖ۫ۚۨۜۨۦۘۤۡۡۥۘۖۢۧۖۘۜۥۙۡۢۜ۟ۘ۬ۤ۬ۙۛۘ۠ۤ۠ۚۨۗۥ۠ۡۨۜۙۧۢۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 795) ^ 39) ^ 593) ^ 1292739139) {
                case -1922795532:
                    return caVar;
                case -1671817991:
                    str = "ۙۡۘۥ۟ۧۙۛۧ۬ۙ۠ۛ۟۫ۖۙ۬ۚۡۖۢۢۤۘۡۨۘۥۛۘۗۡۤ۬ۚۨۘۨۘۦۘ۫ۖۘ";
                    break;
                case 421509172:
                    str = "ۧ۟ۤ۬ۙۤۘۥۥۚۛۗۖ۟ۨۤ۠ۜۘۘۙۨۘۛۡۧۛ۟ۖۘ۬ۤ۟";
                    break;
                case 1164564017:
                    elfinFreeActivity.o0Oo0oo = caVar;
                    str = "۬ۚۙۨۥۨۘ۫ۤ۬ۤۜۥ۬ۧۨۘ۠ۥ۠ۤۛۖۘ۠ۢۨۘۛۛۤ۫ۦۧۡۙ۟ۗۖۗۢۥ۬ۖۡۦۖۤ۬۠ۙۡۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ boolean Oooo0oO(ElfinFreeActivity elfinFreeActivity, boolean z) {
        String str = "ۨۡۖۨۚۨۘۛۡۜۘ۬ۜۘۘۥۥۡۘ۟ۛۖۤۥۤۤۛۛۡ۟ۜۧۦۙ۠ۘۢۤۥۢۗۗۦۤ۬ۢۙۜۢۚۡ۟ۥۗۦۜ";
        while (true) {
            switch ((((str.hashCode() ^ 590) ^ 754) ^ 802) ^ 2111171030) {
                case -1994123661:
                    str = "ۚۗۗۙۧۗۤ۫ۤۨ۟۬ۧۦۤۢۘۡ۟۬ۘۨۢ۫۫۠ۜۨۜ۫۟ۙ۫ۦۨ۫ۖۖۜۜۤۢۥۘۘۜۗ";
                    break;
                case -1173237441:
                    elfinFreeActivity.o0ooOOo = z;
                    str = "۬ۘۥۡۥۛۦۘ۟ۜۛۘۘۤۖۛۢ۬ۜۘۥۧۥۘۘۧ۬۬ۙۤ۬ۖۧ";
                    break;
                case 626940453:
                    return z;
                case 1912160399:
                    str = "ۦۡۦۖۤۘۦۤۘ۟۠ۤ۠۠ۤۘۨۘ۠۬ۛۧۧ۠۫ۘۘۢۛۦۢۥۙۖۢۧۜۖۨۚۧ";
                    break;
            }
        }
    }

    private void Oooo0oo() {
        String str = "ۦۨۧۜ۬ۛ۟ۛۛۛۧۧ۠۟ۗۡۢۙۙۖۥۘۙۡۚۨۜۖۘۘ۬ۘ";
        CountDownTimer countDownTimerStart = null;
        TextView textView = null;
        FrameLayout.LayoutParams layoutParams = null;
        View viewInflate = null;
        ViewGroup viewGroup = null;
        Point point = null;
        while (true) {
            switch ((((str.hashCode() ^ 509) ^ 463) ^ 352) ^ (-1048016638)) {
                case -2096996652:
                    str = "ۖ۬ۙ۠ۨۘۥۢۦۘ۠ۚۜۘ۟ۖۧۘۜۦۖۚ۟ۨۖۤ۟ۛۖ۠ۖ۠ۡۥۧۚ۠ۥۨۘۨ۟ۙۤۗۘۘۤۨۨۢۢ";
                    viewGroup = (ViewGroup) findViewById(R.id.mainContainer);
                    break;
                case -2007915106:
                    str = "ۜۢ۬ۥ۟۫ۧ۟ۡۘۧ۬ۖۗۗۤۢۜ۟ۜ۟ۘۘ۠ۧۙۚۦۜ۠ۤ۠ۚۛۘۧۚ۫ۧۖۗۨۛۜۘ";
                    break;
                case -1708270246:
                    str = "ۥۧۢۨۜۥ۫ۜۥۥۘ۠۫ۨۘۙۚۖۜۤۧۢ۟ۡۤ۫۟۟ۡۘ";
                    viewInflate = LayoutInflater.from(this).inflate(R.layout.float_auto_start, viewGroup, false);
                    break;
                case -1046750709:
                    viewGroup.addView(this.OooooOo);
                    str = "ۥۤۥ۠۬ۖۡ۬ۜۘ۠ۛۡۤۚۡۧۚۨۘۛۧۜۘۚۚ۠ۡۘۙۚۘۨۘۖۥۦۘۛۤۢ";
                    break;
                case -1029302401:
                    this.Ooooooo = point.x;
                    str = "ۘۡۦۘۚۗۥۘۙۖۤۙۖۗۜۡۘ۟ۗ۠ۨ۟ۙۗۨۥۘۧۦ۬ۖۗۖۘۘۗۚۜۥ";
                    break;
                case -908684822:
                    layoutParams.leftMargin = (int) ((((double) this.Ooooooo) * 0.7d) - ((double) this.OooooOo.getWidth()));
                    str = "ۦۛۛۥۖۜ۠ۨۘۧۚۜۘۨ۬ۖۘۤۤۙ۬ۦۥ۠۫۬ۨۗ۟ۛۥۘۚۧۜۖۘۦۘۧۘۨۘۥۡۘۡۙۢ۬ۦۘۜۦ۟ۛۙۦۘ";
                    break;
                case -238143593:
                    this.OooooOo = viewInflate;
                    str = "ۥۚۢۜ۫ۤۥۤۥۜۦۢ۬ۧۘۨ۠۠ۛۙ۟ۦۘۖۤ۬ۗۦ۫ۧۖ۬۟ۛۜۜۗۗۜۛ۠ۜۥۖۤۜۡۜۘۦۢۛ";
                    break;
                case -207552216:
                    countDownTimerStart = new OooO00o(this, ((long) x4.OooO0O0().OooO0OO(f6.OooOo0o, 5)) * 1000, 1000L, textView, viewGroup).start();
                    str = "ۘۢۚۖ۟ۧ۟۬ۗ۟ۧۥۖۧۛۥۦۨۘۡۦۧۘۛۢۡۘۧۤۦۘۗۡۙۚۘۢۧ۠ۚۜۤۖۘۘ۠ۦۘ";
                    break;
                case -111276259:
                    str = "ۛۜۡۘۜۦۘ۬ۖۖۦ۬ۙۡۨۤ۠۟۫ۢۤۨۤۖۦۨۖۨۗ۟ۨۘ";
                    textView = (TextView) this.OooooOo.findViewById(R.id.tv_countdown_time);
                    break;
                case 177246940:
                    layoutParams.topMargin = (int) (((double) this.o0OoOo0) * 0.2d);
                    str = "ۨۥ۫۟ۡۨۘۘۖۘۘۖۡۡۘۥۢۧۧۛ۟ۗۚۧۛۗۖ۬۠۬۫۠ۨۛۦۖۙ۟ۡۘ";
                    break;
                case 473390903:
                    this.o0OoOo0 = point.y - 280;
                    str = "ۘ۟ۘۤۗۨۘۧۚۚۤۗۧۨۤ۟ۚۨ۟ۥۦۤۨۡۡۘۙۘۧۡ۟ۦ";
                    break;
                case 533846819:
                    str = "۫ۨۜۘۦۚۨۨۡ۟ۧۙۥۘۖۨۢۦۗۗۖ۠۫ۧ۟ۡۢۨۦۥۢ۬ۨۢۦۘۛۥ۫ۧۧۥۘۦۛۗۛ۟ۘۚۢۨۘ۟ۥ۟ۘۛۥۘ";
                    layoutParams = (FrameLayout.LayoutParams) viewInflate.getLayoutParams();
                    break;
                case 603154614:
                    return;
                case 953476035:
                    this.OooooOo.findViewById(R.id.im_remvoe_view).setOnClickListener(new OooO0O0(this, countDownTimerStart, viewGroup));
                    str = "۬ۙ۬ۨ۟ۡۘۖ۟ۦۘۨۖۜۘۥۡۚۖۢۖۘۥۘ۫ۗۢۧۖۡۘ۬ۦۧۖۚۢ۠ۤۢۛۦ۬ۜۧۥ";
                    break;
                case 1178884041:
                    getWindowManager().getDefaultDisplay().getSize(point);
                    str = "ۙۘۚۤ۠ۜۘ۠۟ۥۘۜۨۙۜۨۖ۠ۨۨۧ۟۠ۗۛۗ۫۫ۙۤۨۧۘۜۘ۟ۡۚۙۡۜۤ۠ۨۜۢۦ۟ۖۗ";
                    break;
                case 1295454443:
                    str = "۟ۖۗ۟ۚۙۗۦۜ۫۟ۖۘۖۜۚۘۡۦۘۘۜۨۘۢۙۥۖ۬ۘۘۛۡۘۚۗۧۛۛۗۘۦ۫ۛۨۚۜۗۥ۠ۘ";
                    point = new Point();
                    break;
                case 1615528134:
                    this.OooooOo.setLayoutParams(layoutParams);
                    str = "ۙۗۖۘۘۢۙۦۨۦۛۘۧۗ۫ۨۡۦۘۢۨ۫ۖۢۛۢۙ۫ۚۢۨۘ۫ۗۢ۬۠ۤۧۦ۫ۥۤۙۛۚ۬۬ۜۢ";
                    break;
                case 1885577827:
                    this.o000OOo = true;
                    str = "ۤ۫ۖۘ۟ۦۛ۬ۧۖۘۙۙۨۡۙۜۘۖ۫ۘۨۙۜۘۗۢۘۡۧۙۨۤۥۘۨۢۦۘ۟ۘۥۘۡۘ۬ۚۚۡ۟ۦ۠۟";
                    break;
                case 2123101991:
                    this.OooooOo.setOnTouchListener(new OooO0OO(this));
                    str = "۫ۖۗۛۛۥۜۜ۬ۖۛۢ۟ۜۨۘۗۨۗ۠۠۠ۙۡۧۢ۬ۤۦۜۨ";
                    break;
            }
        }
    }

    private void OoooO0() {
        String str = "ۘۥۜۘۤ۠۠ۛۤ۠۫ۜ۫ۛۙۧۖۧۥۥۛۖۢۨۘۡۦۨۘ۟ۜۢۧۗۦۘ۠ۚۢ";
        Script scriptOooO0oO = null;
        while (true) {
            switch ((((str.hashCode() ^ 709) ^ 381) ^ 831) ^ 68996481) {
                case -1679164245:
                    break;
                case -1227545997:
                    dh.OooOo().OooO(this, getString(R.string.elfin_appid), scriptOooO0oO.getId(), gc.OooO0OO().OooO0O0.DeviceId, ii.OooO0oo());
                    str = "ۦۘ۠ۗۢۨۘ۠۫ۜۘ۟ۗۡۘۤ۟ۦۙ۬ۨۘۥۥۨۘۨۜۛۖۡۥ۬ۚۛۖۖۡۘۚۦۧۦۙۨۘۥ۠ۦۘۗۜۗ۬ۢۖۘۘۚۢ۟۫ۨ";
                    continue;
                case -1074894539:
                    String str2 = "ۖ۫ۧ۠ۛۛۢۜۢۗ۬ۨ۬ۚۦۘۨۥ۟ۧۚۖۘ۬۟ۜۘۡۜۤۧۤۖ";
                    while (true) {
                        switch (str2.hashCode() ^ 913082107) {
                            case -617212122:
                                String str3 = "ۥ۬ۜۜ۟ۖۘۛۛۛۙۖۖۡۖۚۨۗۦ۫ۤۢۖۤ۟ۦۗۦۘ۟۠ۨۘۤۧۛۛۡۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1253442042) {
                                        case -2045000081:
                                            str2 = "ۚۙ۠ۢ۫ۛۥۥۡۚ۬ۨۘۛۗ۫ۨۨۢۤۥۘۨۖ۟ۚۗ۟ۡۘۨۛۧۤۧۡۢۗۧ۬ۧ";
                                            break;
                                        case 720594201:
                                            str2 = "ۛۚۡۘۛۡ۟۫ۦۦۡۡۛۦۢ۬ۨ۠۫ۢۨۚۡۧۛۥۛۗۦۧ۟۠ۖۘۚۗ۠ۦۧۡۛۨ";
                                            break;
                                        case 1516805590:
                                            str3 = !this.ooOO.hasMessages(1009) ? "۠۠ۨۨۡۥۛۜۜۘۤۢۨۘۥۙ۬ۦۧۤ۬۬ۦۘۢۘۜۘۖۦۜ۟۫ۘۖۨۨۘ۟ۤ۠" : "۬ۡۙ۬۠ۢ۫ۜ۟ۧۜۘ۠ۘۚۧۥۨۘۖۤۗ۫۫ۡۡۧ۫۫ۥۙ";
                                            break;
                                        case 1698565825:
                                            str3 = "۫ۡۢۛ۠۠۠ۥ۫ۧۗۖ۟ۦۘۤۦۚۥۖۥۧۤۥ۬ۤۡۘۨ۠ۖۘۧۦۥۘۙۘۧۘ";
                                            break;
                                    }
                                }
                                break;
                            case -371541373:
                                break;
                            case 157332750:
                                str = "ۧۡۖۘ۬ۦۜۖۡۦۢۗۛۘۦۨۘ۫ۦۡۘۨۚۨۘۗ۠ۨۛۙۡۘۢۥۦۘ";
                                break;
                            case 773756914:
                                str2 = "ۗۚۘۗۨۜۘۢۤۦۜۗۢ۠ۦ۬ۖۧۛۦۘۘۡۦ۬ۥۨۘۡۚۨۨۚ۬ۡۤۥۜۢ۠ۧۘۙ۬ۧ۬ۦۤ";
                                break;
                        }
                    }
                    break;
                case -639835972:
                    str = "ۢۤۘۘ۬ۖ۬ۦۡۗۘ۬ۤۚۨۘ۟ۨۘۜۦۘۘۥۢۙ۟۫۫ۡ۠ۙۙۤۜۘ۠ۙ۠ۘۙۗ۬ۧۚ";
                    scriptOooO0oO = b7.OooO0Oo().OooO0oO();
                    continue;
                case 126586711:
                    str = "ۘۥ۬ۙ۠ۛۨ۟ۦۚۥۥۘۜۗ۠ۙۘۥۡۨۚۜۨۙۦۦۜۘۘۗ۟ۥۛۘ۬ۧ۠";
                    continue;
                case 491357536:
                    this.ooOO.sendEmptyMessageDelayed(1009, m.ag);
                    str = "ۘۘ۬ۤ۠۫ۘۚۡۘ۠۫ۧۙۘۗۙۨۜۥۚۗۖ۫ۢۘ۟ۤۚ۠ۨۘۡۙۡۘۥ۫ۖۥۚۘ۬ۨۥ";
                    continue;
                case 683111570:
                    return;
                case 1132282098:
                    String str4 = "ۤ۠ۨۦۗۨۦۡۡۗۤ۠ۥۖۛ۬ۘ۠ۗ۟ۧۥۘ۬۟ۦۘۛۜۨۘ۬۬ۗۨۙ۟۠ۖۧ۬ۥۦۘ۠۬ۡۘۥۧۖۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-726665765)) {
                            case -1318046771:
                                str = "ۢ۟۠۬۬ۦۖۖۡۘۦ۠ۥۨۢۜۜۤۖۘۦۢۨ۬ۛۥۘۛ۟ۛ۟ۘ۬ۦ۬ۡۗ۬ۧ۬ۖۛۛۛۥ";
                                continue;
                                continue;
                            case -1168126019:
                                String str5 = "ۨۚۥۘۗۨۧۘ۠ۘۨۚۙ۟ۡ۫ۨۤۘۧۚۖۦۘۡۗۦۘۦ۟۫۠ۖ۟ۚۖۖۢۡۖۚۨۘۜۤۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-410608807)) {
                                        case -1974344441:
                                            str5 = "ۖۡۘۘۧۜۦۘۘۙۜۘۖۥۘۘۙۦۦۘ۟ۨۡۘۤۨۜۨ۬ۥۘ۫۠۠۠ۥۥۘ۬ۘۤ۫۠ۖ۬۬ۨ۬ۤۨۘ۠ۧۘۘ۟ۡۘۘ";
                                            break;
                                        case 438836870:
                                            str4 = "ۜۡۜۢۖۛۙ۬ۚۖۢۥۘ۫ۖۨۛۙۨۤۗ۫ۡۦۤۧۡۗ۫ۙۗ";
                                            break;
                                        case 822595987:
                                            str5 = t4.OooOO0(this) ? "ۗۢۜۤ۫ۘۘۦۡۘ۫ۦۘ۠ۛ۠۬ۖۨۖۜۘۥۚۜۘۗۡۨۨۢ۬ۨۜۦۘۘۗۥ۬ۦۘ۬۫۫ۚۤۢۤ۟ۚۖۡۗۛ" : "ۥ۬ۡۘ۟ۨۘۚۢۨۧۙۤۦۦۤۙ۬ۦ۠ۛۧ۠۟ۖۨ۠ۧۘۚ۠";
                                            break;
                                        case 1666815925:
                                            str4 = "۫ۙۧ۫ۨۧۘۙۤۥۘۦۨ۠ۛۧ۬ۗ۟۠ۤۘۘۡۦۖۛۤۖۨۘۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1289667914:
                                str = "۟ۢ۠ۦ۬ۖۛۥۢۜۗ۟ۘۡۦۖۤۖۛۧۙۗ۟ۛ۬ۚۤۥ۟ۤۤ۠۫ۘ۠";
                                continue;
                            case 1673826733:
                                str4 = "ۘ۫ۡۛۛۨۘۜۨۜۦۜۘۚۗۨۥ۫ۧۙ۬ۗۗۜ۬ۧ۫ۨۘۙ۬ۦ";
                                break;
                        }
                    }
                    break;
            }
            str = "ۘۘ۬ۤ۠۫ۘۚۡۘ۠۫ۧۙۘۗۙۨۜۥۚۗۖ۫ۢۘ۟ۤۚ۠ۨۘۡۙۡۘۥ۫ۖۥۚۘ۬ۨۥ";
        }
    }

    private void OoooO00() {
        String str = "ۥۚۖۘ۬ۨۨۛۦ۟ۙۨ۫ۢ۟ۖۘۡۖۜۘۗ۫ۡۘۚۡۥ۠ۙۚۚ۠ۡۘۗۦۨۘۢ۬ۨۘ۬ۨۙ۠ۗۥۘ۟ۥۥۘۥۖ۬";
        int i = 0;
        TextView textView = null;
        int i2 = 0;
        TextView textView2 = null;
        TextView textView3 = null;
        String string = null;
        String string2 = null;
        StringBuilder sb = null;
        String string3 = null;
        StringBuilder sb2 = null;
        while (true) {
            switch ((((str.hashCode() ^ 59) ^ 584) ^ 993) ^ 1940620732) {
                case -2010476406:
                    sb.append(Marker.ANY_MARKER);
                    str = "ۨۗۗۢ۬ۡۙۛۜۘۧ۫۠۟ۥ۟ۥۜۘۥۗۨۘۦۦۦۙۛۚۗۦۢ";
                    continue;
                case -1992253418:
                    textView3 = this.o00oO0o;
                    str = "ۤ۬ۖۦ۟ۦۛۛۜ۫۬ۖۖۦۨ۬ۨۖۘۤۡ۬۠ۧۘۘۗ۟ۢۤۙۨۘ۠ۚۜ۠ۨ۟";
                    continue;
                case -1990927089:
                    String str2 = "ۛۢۨۘۡۚۥۤ۠ۤۡۦۘۖۜۛۢۡۖۥۖ۟۠۫۫ۡۛۡۥۨۖ۫ۘۙۢۜۤۢۗ۟ۗ۬۟۠ۘۖۢۛ";
                    while (true) {
                        switch (str2.hashCode() ^ 359112027) {
                            case -1171831582:
                                String str3 = "ۦ۠ۨۨ۬ۖۡۢۙۦۥۖۥۙۤۧ۬۠ۤۤۖۦۡۨۨۘۧۢۛ۫۫ۜۘۤۡۡۘ۠۠۬۠ۥ۫ۘ۬ۘۘۙۘۡۗۛ۟ۧۗۥ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1001953043) {
                                        case -1117205039:
                                            str2 = "ۤ۟ۦۘۛ۠ۛۢۡۜۨۧۨۘۘۗ۠ۖۡ۠ۧۘ۠۫ۚۖۘۧۗۘۘ۫۫ۘۥۤۚۛ۬ۨۨۦۢ۬ۥۥ";
                                            break;
                                        case -288401151:
                                            str3 = "۫ۗ۫ۥۘۚۚ۫ۨۧ۠ۖۘ۟ۘۥۘ۟ۗۖۘ۠ۢۙۤۛۙۙۖۥۘۘۗۙۛۗۚۙۛۨۙۖ۠ۢ۫ۦ۫ۦۖۘۥ۠ۦۙۡۙۦۨ";
                                            break;
                                        case 122916480:
                                            str3 = !string.contains(string3) ? "۟ۗۨ۬ۧ۟۠ۙ۟ۚۙۙۛۤۦۘۧۨ۫ۖۨۘ۫ۦۘۦۙۤ۫۫ۢۦۥۦۘۨ۠ۧۥۧۥۗۢۨۗۤۚ۫۠ۚۢۡۖۤ۠" : "ۦ۟ۜۘۘ۬ۗ۬ۡۛۦۘ۬ۡۙۦۘۨۘۘۘ۫ۡۖۙۤۦۘۙۨۦۢۨۗۡ۬ۛ۬ۛۤ۬۟ۗۥۘۙ";
                                            break;
                                        case 440957797:
                                            str2 = "ۢ۠ۡۤۘۜۨ۬ۛ۠۫۟ۖ۠ۛۦۘۤۖۥۡۗۗۥۚۜۘۖۘۜۦۗۡ۬ۥۖۧۘۜ۫ۤۙۜۖۢۡۡۘ۬ۡۡۧۖ";
                                            break;
                                    }
                                }
                                break;
                            case -734014184:
                                break;
                            case 6147026:
                                str = "ۧۘ۠۫ۢ۠ۚۚ۬ۢ۠ۥۘۘۧۜۚۜۥۤۚۢۨۜۛۨۦۦۖ۬ۙۜۨۦۦۚۥۧۙۘۧۜۦۧۙۦۖ۠ۗ";
                                break;
                            case 1978855764:
                                str2 = "ۚۙ۠ۦۜۨۘۖۥۖۘ۟۫۟ۙ۟ۚۧۡۙۢۦۢۖۤۢۙ۬ۦۚۤۦۧ۫۟۟۬ۜۘ۠ۨۤۚ۠ۢۨۡۡ۫ۦ۟ۦۙۗۥۥ";
                                break;
                        }
                    }
                    break;
                case -1916527690:
                    return;
                case -1888950429:
                    str = "ۦۘۡۘۛۘۨۘۛ۫ۚ۬۫ۘۘۘۢۖۘۖۤۜۘ۟۫ۦۘۢۤۗۧۙۥۘۜۘۡۧۖۘۖۛۨۘ۠ۘۥ۫ۘۥۘۦ۬ۗ۫ۛ۟";
                    string2 = sb.toString();
                    continue;
                case -1767113774:
                    str = "ۤۖۨۘۚۦ۬ۜۛ۠۠ۗۘۘۥۥۡۙۜ۠۠ۥۖۘۜ۟ۦۘ۟ۧۨۘۨ۟ۤۛ۠۫۠ۢۘۘۗ۫ۙۘۜۤۤۡۡۘۡۡ۫";
                    continue;
                case -1562781278:
                    sb2.append(w3.OooOoo0(this).y);
                    str = "۠ۘۦۘۡۤۘ۬ۡۙۜۛ۠ۦۤۨۘۛۡ۠۟ۤۙۙۧ۫ۦۤۢۘۜ۠ۤۤۦۘۧۦۥ";
                    continue;
                case -1504488967:
                    str = "ۘۦۦۘ۫۠ۥۘۖۙۡۘۨۘۥ۠ۢ۠ۦۢ۫ۚۗ۟ۘۘۗۤۖۗ۟ۧۦ۠ۨۘۡۢۥۘۜۗۧۛۛۤۚۥۘ۬ۨ۫ۘۜۦۘۘۙۡۘ";
                    textView2 = textView3;
                    continue;
                case -1345176159:
                    str = "ۤۡۙۥۚۥۘۙۡۦ۬ۖۘۘ۟۫ۨۥۖۨۘۥۨۘۖۙ۟ۡ۟ۚۦۗۘۘ۬ۥۦۤۥۛۚۛۖۘ۬ۧۗ";
                    string3 = sb2.toString();
                    continue;
                case -1334430319:
                    str = "ۗۨۖ۬ۚۦۘۥۖۨۘۖۙۥۜۛ۠ۧۖۘ۠ۦ۠ۡۜۘۘ۟ۙۢ۬ۘۡۘ۠۫ۦ۟ۘۘۧۖ۠۬۬۟ۗۦۜۤۖۘۢۚۖ۠ۦ۠";
                    string = getString(R.string.app_resolution);
                    continue;
                case -546641466:
                    sb.append(w3.OooOoo0(this).x);
                    str = "ۡۥۙۙۚۦۤۛۛۖ۬ۚۙ۟ۙۘۦۡۙ۬ۢۧ۠ۛۤۦۤۜۤۖۘۙ۬ۜۖۥ۟ۙۨ۫۫ۚۦۘ";
                    continue;
                case -317488207:
                    break;
                case -179069566:
                    str = "ۚۖۡۘۧۦۧۘۙۖۦۘ۠ۥۢۢۖۡۘۗۛۦ۬۬۠۟ۗۤۘۗۙۨۦۗۖۤ۫ۦۘۚۜۖۜۘۦۙۜ۠ۦۤۥ";
                    continue;
                case -178240920:
                    sb2.append(Marker.ANY_MARKER);
                    str = "ۚۦۜۘۦ۠ۡۨ۫ۥۙ۠ۗ۟۫۟ۥ۫۫ۨۖۖۘ۬ۨ۠ۘۤۥۘۛۥۗۡۡۜۚۚ۬ۗۛۦۘ۠۬۟ۚ۟ۡۘ۠ۘۥۡۡۤۧ۬";
                    continue;
                case 130010318:
                    sb2.append(w3.OooOoo0(this).x);
                    str = "ۘۗۦۘۗ۫ۖۘۢۨۚۤۛ۠ۨۨۘۨۖۜۘۨۖۘۗۤ۟ۛۤۦۢ۠ۦۦۧ۫۟ۘۡ۠ۥ۠ۖۤۘ";
                    continue;
                case 209372661:
                    str = "ۦۛۘۜۖۛۘۛۘۜۥۧۤۡۙۥ۠ۗۨۥۛۚۥۖ۟۠ۦۛ۫ۨۘۙۧۨۜ۟۬";
                    textView2 = textView;
                    continue;
                case 654806257:
                    str = "ۢ۠ۜۤ۬ۥۘ۬ۖۚ۫ۜۖۘۜۖۦۘۤۡۜۘ۟۬ۨۘۜۨۨۘۡۚۖۙۨۗۛۦۙ۬ۦۧۘ۠ۨۨۘۘۖ";
                    sb = new StringBuilder();
                    continue;
                case 719360804:
                    String str4 = "ۗۢۖۛۤۨۘ۬ۗۗۚۥۖۛ۫ۨۢۗۘۨۦۖۘۖۡۥۘۨۤ۠ۡۜۛۘۗۤ۬ۘۥۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-549909379)) {
                            case -1077030694:
                                str4 = "ۙۧۨۧ۫ۨۚۨۗ۟ۢۥۘۢۨۥۘۜۙۘۨۖۘۗۚۖۘۘ۬ۗ۫ۜۧۧۦۢ۟ۚ۟";
                                break;
                            case -953124725:
                                str = "ۢۗۛۛۖۥۘۖۧۧۦۗۡ۫ۛ۬ۥۦ۠ۦۧۘۗۘۜۤۙ۠ۥۦۘۨۚۖۦۚۘۘۘۥۤۡۘۜۘ";
                                break;
                            case 1106217329:
                                break;
                            case 1387532129:
                                String str5 = "ۧۢۡۦۤۙۛۘۧۘۧۘۡۘۛ۫ۙۜۘۛۦۨ۫ۢۚۚۤ۟ۦۥۜ۫۠۟ۖۖۥۡ۟ۜۘۚ۠ۨۤۨۥۖۚۜۦۢۚۜۘۖ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-2058284784)) {
                                        case -1514353016:
                                            str5 = !string.contains(string2) ? "ۚۡۥۘ۠ۥ۫ۡۛۦۥ۫ۢ۬ۧۢ۠۫ۜۢۥ۠۬۫ۖۘ۫ۨۧۜۛ۬ۨ۬ۚ۟ۧۡۘ" : "۠۟ۤۜۖۨ۠ۤۘۘۗۖۚۚۜۦۘ۬۫ۖۡۢۖۜ۠ۥ۠ۧ۫ۤ۠ۛۧۤۡۘ۠ۖۢۦۦۛۚ۟۫ۥ۠ۧ۬ۨۥۘ";
                                            break;
                                        case -535777116:
                                            str4 = "ۢۖۢۗ۬ۖۘ۫ۡ۠ۛۖۧۘۚۥۦۘۛۥۛۨۤۥۚۢۗۦ۠ۜۤۛۛۗۛۘۘۙۦۧۜۨۥۛۙ۬۟ۢ۬ۖۖۦۘۘۘۛ۬ۘۘ";
                                            break;
                                        case 1455200874:
                                            str5 = "ۙۜۡۙۗۡۙۤۧۧۗۛۗۨۥۘۦ۫ۥۨۛۜۥۗۥۘ۬۫ۚۥۖ۟ۨۦۘۦ۠ۜۘۥۨۙ۟ۙ۫ۢۙۘۤۤ۟";
                                            break;
                                        case 2041365888:
                                            str4 = "ۘ۟ۨ۟ۖۘۗۢ۫۫ۧۦۘۤۦ۫ۤۥۘۜۙۥۤ۫ۘۘ۬ۜۖۦۚۘۧۥ۠ۨۖۡۘ۬ۜ۠ۚۡۥۘۢۨۙۜ۬ۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 733127442:
                    sb.append(w3.OooOoo0(this).y);
                    str = "ۧۘۥۖ۬۫ۜ۟ۢۧۚۤ۬ۦۡۛۦۢۙۨۜۦۡۘۦۘۚۙۗۗ";
                    continue;
                case 1009000348:
                    textView = this.o00oO0o;
                    str = "ۘۥۚۖۜۘۖۨۧۢۧۘۙۙ۬۫ۖۜۛۘۘۨۚۖۘ۠۫ۜۗۘۘۚ۫ۥۘۙۜۡ۠ۡ۫ۚ۬ۦۥۚ۫۬ۦ۟";
                    continue;
                case 1267944581:
                    str = "ۦۛۘۜۖۛۘۛۘۜۥۧۤۡۙۥ۠ۗۨۥۛۚۥۖ۟۠ۦۛ۫ۨۘۙۧۨۜ۟۬";
                    continue;
                case 1550237117:
                    str = "ۡ۫ۛۧۗ۟ۜۖۨ۬ۨۜ۟ۗۗ۫ۚۦۘۡ۟۠ۘۘۗۖۡۨۜۜۘۤۨۦۦۡۙۜۦۗۨۖۛۥۨۡۘۘۡۖۘۧۘۨۘۦ۠ۗ";
                    i2 = i;
                    continue;
                case 1737451214:
                    textView2.setVisibility(i2);
                    str = "ۘۥۧۘ۫ۥۗ۠ۜۖۘ۫ۘۗۘۦۡۦۦۢۙۤۦۥ۟ۨۘۗۙۖ۠۟ۧۜۜۧۤۜۢ۫ۥ۟ۙۗۘ۟ۖۛۙۢ";
                    continue;
                case 1893431069:
                    String str6 = "ۖۤۡۡۨۘۗۜۙ۫ۜۘۙۧ۫ۤۚۘ۬ۘۧ۟ۘۖۦۙۡۘۦۗۦۘۚۙ۠ۙۦۥۚ۟ۚۘۛۨۨۨۘ۫ۤۡ";
                    while (true) {
                        switch (str6.hashCode() ^ 596592513) {
                            case -1992215090:
                                str6 = "ۨۢ۫۫۬۠۠ۘۥۘۜۗۜۜ۠ۗ۟۬ۘ۟ۧۤۙۚۥۘۜ۬ۦۛۖۧۘ";
                                break;
                            case -505149347:
                                String str7 = "ۛۛۦۤۙۚۘۦۗ۟ۚۥۘۘۘۨۘۦ۟۬ۘۡۘۢۖۖۛۛۗۘۜۘۥ۟ۦۘۜۗ۟ۡۨۨۘۙ۠ۜ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-637954209)) {
                                        case -1557343639:
                                            str6 = "ۗۥۥۥۛۚ۠ۜۚۙۙ۠۟ۘۦۘ۟ۦۨۛۜۡۨ۫ۖۜۖۥۡ۬۫ۥۗۥۘۨۗۨۛ۫ۜ۬ۙ۠۬ۧۡۘۥ۟۬ۛۢۡۘۡۜۜ";
                                            break;
                                        case 854226126:
                                            str7 = "ۤۢۙۘۙۖۘۗۚۨۘۗۚ۫ۤۙ۫ۙ۬۬ۡ۠ۥۘۦۜ۬ۗ۟ۢۡۚ۫۫ۧۥۗ۠ۨۜۖ۟ۥۢ۠";
                                            break;
                                        case 1227089246:
                                            str7 = TextUtils.isEmpty(string) ? "ۧ۫ۗ۠ۡۛۛ۬ۧۙۦۤۚۨ۠۬ۜۥۘۡۥۢ۫ۛ۫ۡۗۜ۫ۜۧۦۚۧۥۥۜ۬ۡۡۦۜ۫ۖۦۙۢ۠۟ۨۛۨۤۨۜۘ" : "۬۫ۥۘۦۦۧۘۘۤۥ۬۬ۚۙ۫ۖۦۧۜۘۧۖۘۘۢۘۖ۫ۤۤۤۥ";
                                            break;
                                        case 2096296103:
                                            str6 = "ۜ۬ۡۘۥۡۛ۬ۨۧۘۡۢۥۧۧۙۥۡۥۤۘۚ۟ۨۜۘ۠۫۬۬ۚۜۦۗۛ۟ۨ۟";
                                            break;
                                    }
                                }
                                break;
                            case -105572588:
                                str = "ۛۢۖۘۦ۟ۘۘۜ۟ۖۘۘۜۗۨۗۨۧۧۥۦۘۡۘۤۧۥ۬ۦۘ۫ۗۡ";
                                continue;
                                continue;
                            case 464138355:
                                str = "ۖ۠ۘۚۚۙۜۢۖۘۘۚۡۥۜ۫۟۠ۡۢۜۦۘۦۜۡۘۖۢۡۘۜ۠ۧۧۗۘۘۚۛ۟";
                                continue;
                        }
                    }
                    break;
                case 1903113864:
                    i = 8;
                    str = "ۘ۫ۦۙۛۡۘۖۥۥۨۚۛۦ۠ۥۘۦ۬ۚۨۗۨ۫ۜ۠ۦۜۦۘۚۡۚۖۛۨۘۧۡۦۙۤۖۘۧۥۨ";
                    continue;
                case 2023435958:
                    str = "ۦ۬ۡۙ۬ۥۘۛۦۨۙۛۥۢ۬ۨۨۡۙۚۥۦۘۥۜۙۡۧۘۧ۠ۡۚۢۖۘۤۧ۟";
                    sb2 = new StringBuilder();
                    continue;
                case 2124135860:
                    str = "ۤۖۚۥ۫ۤۤۚۤ۫ۧۜۜ۬ۖۘۤۛۧۗۗۥۖ۫ۙۛ۬ۨۘۗۦۜۦ۬ۘ۫۫۫ۗۚۡۙۜۛۡۖۗ۟ۖ۟۬۬ۥ۠";
                    i2 = 0;
                    continue;
            }
            str = "ۥۙۨۘۜ۫ۨۘۜۢۡۘۥۖۡۘۗۥۦۥ۫ۖۚ۠ۨۢ۬ۜۘ۟ۙۚۜۤۥۘۧۢۦۘۘ۬ۥۥۖۨۘ۟ۨۨۘۧۚۡۨۛۘۜۚۖۘۥۢۥۘ";
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0019. Please report as an issue. */
    private void OoooO0O(View view) {
        String str = "۬ۦۨۖۚۦۘ۠ۥۖۜۙۛۢۢۖۢۗ۟ۨۦۖۘۦ۫ۡۥ۟۬۠ۨۘ";
        float height = 0.0f;
        float f = 0.0f;
        float width = 0.0f;
        float f2 = 0.0f;
        float y = 0.0f;
        float x = 0.0f;
        while (true) {
            switch ((((str.hashCode() ^ 149) ^ 331) ^ 178) ^ 968440959) {
                case -1896363782:
                    height = this.o0OoOo0 - view.getHeight();
                    str = "ۦۦۨۖۛۗۚ۬ۡۘۚۖۘۢ۫ۘۖۥۦ۬ۙ۬ۢ۫۫۬ۨۥۘۘ۬۫ۗۥۧۗ۟ۚ۟۬ۧ۬ۡۢ";
                    break;
                case -1814614519:
                    str = "ۥۘۥۘۗۧۜۖۢۨۘۙۗ۬ۡۖۥۘۚۦ۫ۚۚۛۢۦۘۘ۠ۦۘ۬ۖۜۘۘۛۥۢۦۦۧۗۘۤۤۡۥۢۙۖۘ";
                    break;
                case -1319114357:
                    String str2 = "ۛ۠ۤۢۘۦ۟۬ۢۙۘۜۘۘۢ۫ۤۢۗۖۖۡۘ۠ۨۦۗۡۘ۫ۦۘۘۢۙۙۤۧۡ";
                    while (true) {
                        switch (str2.hashCode() ^ 814520902) {
                            case -643175351:
                                break;
                            case -172347000:
                                str2 = "ۚۨۙۙۙۤ۠۬ۨۧۢۦۢ۫ۥۘۚۘۡۘ۬۬ۘۘOۨۗ۠ۖ۬ۨۥۘۢ۠ۨۨۜ۬ۦۘۧۡ";
                                break;
                            case 238071411:
                                String str3 = "ۚۥۧ۠۟۫ۜۦ۠ۢۥۜۘۦۘ۫ۨۤۡ۫۟ۨۤۧۡۛۜۥۘۧۘۖ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1439065876) {
                                        case -1616538078:
                                            str2 = "۠ۨۖۧۡ۠ۖۤ۟ۧ۫۫ۖۢۢۦۜۧۘ۬ۘۥۘۛ۬ۧۨۖۘۖۨ۬ۛ۬ۙ۫ۙۥۖۛۦ۠ۜۘ۫۬ۚۢۜۘ۠ۨۡ۫ۗ۬";
                                            break;
                                        case -815151064:
                                            str2 = "۬۟ۙۡ۬ۦۙۖۨۘ۬ۛۘۙۖۧۜۚ۠ۗۧ۟ۡ۟ۗۤ۬ۚۥۧۨۗۡۧۘۗۨۨۢۗۛۛۛۖ";
                                            break;
                                        case 725466625:
                                            str3 = "ۙۥۨۘۖۛۡۘۧۨۘۘۧ۫ۨۘۖۧۦۚۢۧۡۙۨۙۦۡ۠ۛۗۢۦۘۗ۠ۜۘۡۙۚۖۗۥۘۤۙۦۘۖۚۧۘۗۛ۫ۖۗۡۤۧ";
                                            break;
                                        case 1419342402:
                                            str3 = x > ((float) (this.Ooooooo - view.getWidth())) ? "ۚۧۥۘۤ۬ۙۧ۟ۘۖۤۤۗۡۘۢ۫ۚۥۙ۟ۨۙۨۜ۫ۖۘۚۗۙ" : "ۢۡۜۢۚۚۚ۟ۗۗ۫۬ۧۡ۟۟ۤۢۥ۫ۙۡۡۜ۠۠۫۬ۙۨ";
                                            break;
                                    }
                                }
                                break;
                            case 821978338:
                                str = "۫ۖۧۘ۟۠ۥۚۦۙ۫ۗۜۙۙۛ۠۠ۥۘۜۤ۟ۢۥۧۘۡۢۜۖۚ۬ۢۨۛۧۙ۠";
                                break;
                        }
                    }
                    break;
                case -1133727555:
                    str = "۠ۘۛ۟ۛ۫ۢۘۤۙۛۗۚۦۨۘۚۛۖۘۧ۬ۘۛۢۤۚۤۚۖۢۦۚۦۖ۠ۨۥۙ۬ۥۘ۫ۢۘۘۚ۟ۜۘۜۖۜۘ";
                    break;
                case -946133894:
                    break;
                case -838422371:
                    width = this.Ooooooo - view.getWidth();
                    str = "ۖۛۡۙۖ۫۠ۡۘۧۤۡۨ۬ۧۤ۟ۤۛۘۖۚۚۤۜۦ۬۬ۦ۟ۡۗۦۘۛ۟ۘۘ۠ۦۛ۟ۦۥۘۗۗ۟ۗۗۘۘۗ۫ۖۘۙۚۨۘ";
                    break;
                case -637189050:
                    str = "ۗۗۥ۬ۘۜۤۧۜۜ۫۬۫ۥۛ۠ۙۤۘ۫۬ۥۗۡۘۥۥۨۘ۬ۜۙۛۥۡۨۨۡۖۘۜۘ۫۟۠ۥۜۨۗۧۤ";
                    break;
                case -543724242:
                    str = "ۨ۬ۚۙۘ۠۫ۧ۬ۦۗۜۖۡۜۥۦۖۘ۫ۢۘۧۘۗ۟ۥ۟۫ۥۘ";
                    f2 = x;
                    break;
                case -537750530:
                    str = "ۘ۬ۖ۫ۛۛۖۦۗۦۧ۟ۧۘ۠ۧۢۨۤۥۥۖ۠ۗۤۜۥۗۜۘ۬ۖۘۧۡۥۨ۠ۨۘۧ۠ۜۘۨۙۘۘۥۗۛۦ۟۫۬۬";
                    f = 0.0f;
                    break;
                case -457707945:
                    String str4 = "ۗۨۢۥۧۙۘۗۧۛۖۨۧۙۚۧۖۨۥۤۖۘ۟ۤۜۘۦ۠ۜۢ۠ۚۢ۫ۡۘ۫ۤۡۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 1891383930) {
                            case -720110752:
                                str = "۟ۥۙۡۜ۟ۨۙ۟ۘۡۘۨۡۨۘۙ۟ۘۘ۫ۨۢۖۧۧۚۙۤۜ";
                                break;
                            case -132172937:
                                str4 = "۠۠ۖ۫ۗۗۥۖۢ۟۠ۦۘۛۦۦۘۥۧ۫ۜۖۡۘ۟ۚۖۘۙ۫ۗۥ۫ۚ";
                                break;
                            case 978337533:
                                break;
                            case 2141823698:
                                String str5 = "ۚ۫ۖۘۤۙۚۘۗۤۧۚۚۙۜۤۨۚۥۘۜۦۦۘۡۚۡۦۜۗ۫ۘۦۘۥ۟ۚ۬ۖۘۘۖۖۘۚۖۖۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1052061815) {
                                        case 55764587:
                                            str5 = "ۛۥۢ۠ۧۨۨۘۖۗۜۢۨۜۦۧۥ۟ۘۡۡۡ۠ۛۦۡۡۘۢ۬۟ۛۧۥۗۧۨ";
                                            break;
                                        case 532268984:
                                            str4 = "ۗۜۧۨۜۡۘۢۖ۟۫ۛۖۧ۠ۗۗ۬ۡۘۢۖۚۙۦ۬ۙۜ۟ۤ۬۫۠ۜۨ۟ۚۦۘۜۢۗ۠ۗۨۜۜۨۛۨۧ۬ۥۧۚ۬ۤ";
                                            break;
                                        case 1212047429:
                                            str5 = y > ((float) (this.o0OoOo0 - view.getHeight())) ? "ۨۢۘۙۤۡۘۥۙۜۥۤۥ۬ۨۡۤۜۨۘ۬ۨۖۥ۬ۥ۫ۖۨۘ۬ۗۨۘۢ۫۠ۙۖۨۗۜۧۚۦۙ۫ۦۥۘۙۖۙۙ۬ۢۘ۫" : "ۡۚۖۘۢۜۥۘۚ۫ۘۘۡۖۥ۫ۚۘۚۖ۠۟ۛ۟ۡۙۙۡۡۤۛۡ۫";
                                            break;
                                        case 1939531622:
                                            str4 = "ۨۡۡۘۧۥ۬ۧۤۘ۠۠ۛ۟ۖۦۧۜۨۘ۫۟ۘۘۛۜۨ۬ۡۨ۫ۚ۬";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    str = "ۦ۬ۦۘۥ۫ۡۘۢۖ۬ۤۖۦ۠ۧ۬۠ۡۙۙۨۢۘۘ۫۫ۖۜۛۖۚۘۨۘۙۙۖۘ";
                    break;
                case -341771580:
                    str = "ۦ۠ۦۥۥۙۙۚۡۘۧۡۦۧ۟ۙۥ۠ۨۘۘۚۦۖۗۦۙۧۘۗۥۘۙۜۤۗۙۙ۟ۛۨۘۙۧۢ";
                    break;
                case -305262447:
                    view.setY(f);
                    str = "ۡۥۧۘۡ۠۟ۦۤۨۥ۠ۦۤۙۥۘۥۙۜۨۗۧۦۥۖۥۗ۫ۖۘۡۤۦۘۥۤۗۨۤ۫۟ۘۢۚ۬ۦۚۢۘۘۙۗۢۥۛۜ";
                    break;
                case -130535872:
                    y = view.getY();
                    str = "ۧۙ۫ۦۜۨۖ۟ۦۘۡۧ۬ۧۙۧ۫ۚۧ۫ۡۨۗۖۧۤ۬ۜۜ۬ۜۘۥۨۥۘۜ۠۬";
                    break;
                case 41101919:
                    x = view.getX();
                    str = "ۢۛۧۘۖۡۘۙۡۖۡۨۙ۟ۚۗۨۢۘۖۨ۬۬ۢۥۤ۬ۘۘۗۛۧ۟ۗ۬۬۬ۜۘ";
                    break;
                case 106438386:
                    String str6 = "ۛۡۜۘۥۗۘۥۚۗۢ۫ۦۥۚۜۘۢۗۢۛ۠ۘۙ۟ۦۧۘۥۧۨۘۙۡۜۢۢۖۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-1149746071)) {
                            case -1194656755:
                                str = "ۤۡۡۤۧۘۧۤ۟ۡ۠ۙۧۖۨ۟۬ۦۘۧۤۦۘ۫ۖۗۗۡۜۙۜۧۘ۟ۙۨۘۜۗ۠۫۟ۛ۫ۡۖۘ۫ۚۡۡ۬ۦ";
                                continue;
                            case -637712000:
                                String str7 = "ۦ۬ۡۘۗۙۦۘۛۧۙۖۚۘۤۡ۫ۙۘۘ۫۟ۥۘۢۛۦۥۡۗۜۥۨ۫ۡۜۘۡۤۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1927550426)) {
                                        case -472033697:
                                            str6 = "ۜۛۨ۠۫ۨۘۗۦۖۘۥۙۙۖ۫ۢۚۥۨ۟ۙۙۧۛۗ۟ۙۥۧۦۜ۟ۢ۫ۧۨۦۚۛۤۡۚۖۦۥۧۘۖ۫ۙ";
                                            break;
                                        case -198596673:
                                            str6 = "ۖۖۚ۠ۤ۠ۚ۬ۛۗۘۜۤ۫ۤۗۡ۫۬۠۠۫۫ۨۢۖۘۘۗۢۜۨ۫ۘۚۢۘ";
                                            break;
                                        case -118868837:
                                            str7 = "ۜۚ۠ۨ۠ۧۛۧ۬۫۠ۦۦۨۦۘۤۦۖۖۖۘ۠ۚۡۘۘۢۦۘۤۨۦۘ";
                                            break;
                                        case 1109634682:
                                            str7 = y < 0.0f ? "ۥۖۧۢۧۜۨۡ۬ۜ۫ۦۤۥۧۡۜۛ۟۬ۧۤۥۧۨۖۖۘۚۢ۟ۥۡۛۤۤۨۘۡۖۖۖۤۙ" : "ۢۘۜۜۤۜۘۦ۫۠۬ۧ۟ۛ۫ۘۘۚۚۖۘۖۨۢۤۧۜۘۧۥۗۢ۫ۥۤۖۘۚۛۨۘۚۧۢۤۛۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -589639954:
                                str6 = "ۗۤ۠ۨ۫ۜ۠ۛ۫ۗۙۜۘۧۘۚۦ۠ۛۖ۟ۤۖۜۖۘ۟ۢۜۘۦۘۡ";
                                break;
                            case 1271511268:
                                str = "ۜۘۥۙ۠ۜ۠۬ۤۨۤۨۘۘ۟ۡۘۡۡۘۧۖۦۦۤۨۧۜۛۥۢۜ";
                                continue;
                        }
                    }
                    break;
                case 188425810:
                    str = "ۦ۬ۦۘۥ۫ۡۘۢۖ۬ۤۖۦ۠ۧ۬۠ۡۙۙۨۢۘۘ۫۫ۖۜۛۖۚۘۨۘۙۙۖۘ";
                    break;
                case 210197974:
                    str = "ۙ۠ۗ۫ۜۜۡۨۨۖۧۜۘ۫ۡۧۙۛ۠۟۬ۜۘ۫۠ۚۜۚۛۦۤۡ۠۠ۗ۬ۛ";
                    f = y;
                    break;
                case 418790853:
                    str = "ۥۘۥۘۗۧۜۖۢۨۘۙۗ۬ۡۖۥۘۚۦ۫ۚۚۛۢۦۘۘ۠ۦۘ۬ۖۜۘۘۛۥۢۦۦۧۗۘۤۤۡۥۢۙۖۘ";
                    f2 = width;
                    break;
                case 783653574:
                    str = "۟ۖۥۘۗۥۢۙۡۡ۟ۢۖ۫ۚۘۘۚۜۤۜۧۢۢۗۦۤۙۚ۬ۧ۟ۡۤۖۘۨ۬ۖۘۤۧ۬ۥۘۧۘ";
                    f2 = 0.0f;
                    break;
                case 911676205:
                    str = "ۧۧۜۖ۫ۙۨۢۢۤۖۘۘۜۘۗۥۗ۟ۨۥ۠ۘۦۧۡۛۥۘۘۘۥ۟ۙۥۢ";
                    break;
                case 1266803054:
                    String str8 = "۟ۖۚۖۛۙۗۢۥۗۥۖۘ۫ۤۖۘۜۘۡۙ۟ۖۘ۟۟ۢۡۜۖ۠ۛۤۗۖۢۦۥۘۦۙۥۘۘۘ۟۠ۘ۟ۙۥ";
                    while (true) {
                        switch (str8.hashCode() ^ 846212022) {
                            case -1829578160:
                                str = "ۡۙۦۧ۬ۘۙۖۦۖۖۜۜۖۘۡۨۖۡۛۢۥۢۤ۫ۘۡۤۛ۠";
                                continue;
                            case -1614973151:
                                str = "ۗۚۤ۠ۥۙۥۜۡۥۦۙۡ۬ۜۘۡۚۨ۫۫۠ۜۖۧۤۨۥ۠ۛۡۘۦۜ۬۫ۢ۠ۧ۠۫ۘۤ۫ۛ۠۟۠ۖۘ۫ۦۘۥۘۧ";
                                continue;
                            case -924465112:
                                str8 = "۬ۥۦۘ۟ۦۡۘۥۚۦۜۨۘۘۧۨۥۢۚۛۡ۟۬ۘۤۡۘۤۛ۟ۖۘۨۘۖۤۖۘۥۨۧۘۡۧۤۘۦۖ۬ۡۘۢ۬ۜۙۦۘۘۥۢۚ";
                                break;
                            case 1013538801:
                                String str9 = "ۧۛۥ۠ۖ۟۬ۨۛۤۘ۬ۙ۟ۖۖۥ۟۟ۗۘۡ۫ۥۘۥ۬ۤۙ۠ۨۘۛۡۨۘۖۘۖۜ۫ۦۛۖۡۙۛۦۘۛۚۨۘ۠ۢۥۘۧ۟ۗ";
                                while (true) {
                                    switch (str9.hashCode() ^ 1634198087) {
                                        case -393135899:
                                            str9 = x < 0.0f ? "ۤۦۘۘۧۤۘۘ۫ۤۨۘۜۖ۬ۧۗ۠ۗۨۛۘۜۘۡۤۨۡۥۘۤۦۥۘ" : "۠ۖۙۡ۫ۚۜۚۜۘۡۜۡۘ۟۫ۢ۬ۚ۟ۢۚۥۦۧۦۘۢۡ۬ۗۜۦۨۙۦۨۨۦۦۙ۠ۚۜ";
                                            break;
                                        case -251799943:
                                            str8 = "ۜۘۡ۠ۗۙۨۛۜۘۚۘۧۜۘ۫ۧۖۘۘۦۗۥۘ۬ۘۜۘۜۜۖۘۢۙۥۛۖۘۘۡۖۧۘۘ۬۬ۜ۠ۢ";
                                            break;
                                        case 554343315:
                                            str9 = "ۡ۬ۡۘۧۚۜۘ۫ۡۙ۬ۧۧۤ۬ۥۘۡۖۘۗۛۥۘۖۤۜ۬ۢۘۘۡۤۘۘۤۜۧۨ۬ۛۗۡۥۢ۬ۖۧۖۡۘۘۢ۟";
                                            break;
                                        case 2086439539:
                                            str8 = "۫ۨ۠ۦۥۖۘۡۧۘۗۤ۠ۙۘۢ۟۟ۦۘۦۙۤۜۗۡۥۥۘۚۧۜۤ۫ۦۘۜۥۡۙۥ۠ۖۖۧۦۗ۟۬ۖ۠";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1598906643:
                    str = "ۦ۬ۦۘۥ۫ۡۘۢۖ۬ۤۖۦ۠ۧ۬۠ۡۙۙۨۢۘۘ۫۫ۖۜۛۖۚۘۨۘۙۙۖۘ";
                    f = height;
                    break;
                case 1632126323:
                    view.setX(f2);
                    str = "ۛۧۖۖۥۥۘۧۡۥۘۛ۫ۡۘ۫ۢۥۘۚۥۥۘۜ۬۬۟ۗۤۖ۬ۨۥۤۨۘۗۛۨۖ۬ۙۖ۟ۥۘۤ۟ۡ";
                    break;
            }
            return;
        }
    }

    private void OoooOOO() {
        try {
            this.OooooOO.Oooo0oo();
        } catch (Exception e) {
            e.printStackTrace();
        }
        o000oOoO();
    }

    private void OoooOOo() {
        String str = "ۚۦۡۥ۟۫ۛ۫ۛۡۚۘۡ۬۟ۚ۟ۚۨۤۘۡۗ۬ۙۙۘ۟۟ۦ";
        while (true) {
            switch ((((str.hashCode() ^ 145) ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 818) ^ (-422928729)) {
                case -2036855458:
                    String str2 = "ۨۤۧۜۖۖۡۨۛۙۧۘۘۦۢ۬ۜۧۛۙۙۧ۬ۤۘۘۖۨۚ۫ۜۥ";
                    while (true) {
                        switch (str2.hashCode() ^ (-21367267)) {
                            case -1479599450:
                                break;
                            case -797779097:
                                String str3 = "۟ۖۛۘ۠ۦۥۨۛۥ۠ۛۖ۠ۨۙ۫ۡۚۡۡۙ۬۬ۗۚۘۘۨۨۥۘ۟ۢۡۤۦۨۘۜۖۚ۟ۘ۬";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1700616637)) {
                                        case -1209577352:
                                            str3 = x4.OooO0O0().OooO00o(f6.OooOo, Boolean.FALSE) ? "ۜ۬ۥۘۘۢۦۘۗۜۘۘۢ۠ۥۘۙ۫ۗۘ۟ۧۜ۬ۡۘۗۤۛ۫ۡۜۜۚ" : "ۢۜۥ۬ۖۘۘ۬۬ۖۖ۠ۛۥۥۖۖ۫ۤۤۖۘۘۤۘۥۤۖ۬ۘۙۛۖ۫ۥ۟ۙ";
                                            break;
                                        case -530830034:
                                            str3 = "۠ۘ۬ۘۜۘۘۢۜۡۨۧۜۖۙ۫۟ۚۦۘۧۡۡۘۢۥۥۦ۬ۖۦۢ";
                                            break;
                                        case 492140449:
                                            str2 = "ۙ۫ۖۘۜۚۘۘۢ۠ۙۗۙۢۢۥۗۛۨۘۘۤ۟۬ۛ۠ۥ۟ۗۡۛۥۘۘۦۧ۟۟";
                                            break;
                                        case 1140278519:
                                            str2 = "ۛۢ۫۬ۙۘۖۚۨۘ۠۟ۦۘۖ۬ۡۘ۬۫ۛۛۛۤۜۖۚۘۧۜۧۨۧۚۢۥۘ۫۟ۗ۟ۚۡ۫ۙۖ۬ۢ۠۫ۗ۟";
                                            break;
                                    }
                                }
                                break;
                            case 173416975:
                                str = "ۚ۬ۧۡۙۜۘۛۡۘۖ۫ۥۘۢۦ۟ۡۘۙۗۧۜۧ۬ۖۥۛ۠۫۠ۛ۫ۥۦۗ۬ۚ۠ۦۘ۬ۨ";
                                break;
                            case 1996119078:
                                str2 = "ۨۨۨۘۨ۠ۖ۠ۖۖۘۚۤۡۘۦۡۢۗۜۤۡۗۧۗۨۨ۟۫ۚۥۢۘ";
                                break;
                        }
                    }
                    break;
                case -1873826292:
                    e5.OooO00o().OooO0o(new Runnable() { // from class: z2.i9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.OoooOoO.Oooooo();
                        }
                    });
                    str = "۟ۡۧۘۥۢۧ۟ۥۜۨۙۨۡۚۢۦۜۘۥۨ۬۫ۙۥۡۜۡۘ۫ۖۚ۠۫ۧۜ۬ۘۦۗۘۘۧۢۨۘۡ۠ۜۡۤۛۥۥۨۘۙۖۖۘ";
                    continue;
                case -652591296:
                    return;
                case 982830482:
                    String str4 = "ۖۡۡۚۧۡۘۙۙۧۗۡۨۘۥۧۗ۟ۘۘۦۢۦۘۛ۫ۚۛۨۦۘۥ۬۬ۚۙۥۡۦۗۗۥۡۨۜۘۛۥۜۘۛۢۜۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 594522776) {
                            case -554914812:
                                break;
                            case -340055656:
                                str4 = "۬ۙۨۘۚۨ۬ۜۜۜۗۜ۫ۜۡۨۗۤۘۘۤۗۡ۫ۜۡۘ۫ۡۛۧ۬ۜۘۦۨۖۤۛۢۗۤۗۛۨۖۘۗ۠ۖۘۧۜۡ";
                                break;
                            case 13864460:
                                str = "ۜۜ۟ۦۘۤ۫۠ۗۢۡۘۚۧۡۘۗۘ۟ۥۖۢۧۗۦۚۡۧۧۨۚ";
                                break;
                            case 129862649:
                                String str5 = "ۙ۫ۥۜۚۜۘ۫۠ۦۘ۠ۢ۬ۛ۬ۧۚۜۜۙۤۧۘۗۘۙ۬ۗۚۧۗۗۨۘۧۦۧۘۛ۫ۖۗۜۖۦۧۖ۠ۚۜ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1204051686) {
                                        case -1926224204:
                                            str5 = AppContext.OooO00o().Ooooooo ? "ۡۨ۫ۧۦۛ۬ۜۚ۟ۚۗۛۗۥۢۢۢۡۖۗۧۚۨۘۥۦ۫ۨۗۖۘۢ۫۬ۤۘ" : "ۨ۫ۜۘ۠۟ۧۨۙۡۘۡ۟ۦۥۢۘۘ۟ۜۘۢ۬۠۫ۡۜۢۡۘۙۚۙۗۨۜۘۦۨۜۚۨۨ۠";
                                            break;
                                        case -639590469:
                                            str4 = "۬۠ۡۘۚۖ۬ۜۙۘۘۜۛۗۙۚۜۛۡۜۘۥۡۢۤۥۘۘ۠۟ۧۧۢ۬ۙۦۘۨۦۜۦۨ۫ۢۚۡ";
                                            break;
                                        case 192156408:
                                            str5 = "ۖۨۥۜ۠ۗۧۗ۬ۙۗۗ۟ۛ۠ۚ۟ۡ۬ۥۘۢۜۙۢ۟۠ۢۥۧ۠ۨۗۙۘ۟ۖۛۡۗ۬۬ۡۡۤۨۢۥۘۙۘۜۘۚۢ";
                                            break;
                                        case 217863348:
                                            str4 = "ۙۤۗ۟ۤۘۢۙۙۜۜۧۘۛۨ۬ۙۚۜۡۧۨۜۧۥۚۘۜۢۘۧ۫ۜۨۖۘۜۦۤۙۥ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1448538185:
                    str = "ۚ۟ۥۘۗۨۜۙ۟ۨۘۥ۟ۘ۠ۖۡۚۖۘ۟ۧۢۨۤۥ۫ۛۖۘۜۙۦ";
                    continue;
            }
            str = "۟ۡۧۘۥۢۧ۟ۥۜۨۙۨۡۚۢۦۜۘۥۨ۬۫ۙۥۡۜۡۘ۫ۖۚ۠۫ۧۜ۬ۘۦۗۘۘۧۢۨۘۡ۠ۜۡۤۛۥۥۨۘۙۖۖۘ";
        }
    }

    private void OoooOo0() {
        String str = "ۖۜۦۧۘ۠ۦۜۖ۬۠۟ۜ۫ۚ۠ۡ۬۟۠ۨۘۙ۬ۙۢ۫ۘ۫ۙۙ";
        boolean zOooO00o = false;
        boolean z = false;
        while (true) {
            switch ((((str.hashCode() ^ 393) ^ 3) ^ 575) ^ 1112331949) {
                case -1778431479:
                    String str2 = "۬ۘۨۛۡۖۥ۬ۤ۟۠۟ۘ۫ۦۜۚ۟ۜۥۜۡ۠ۡ۠ۖۚۥ۠۠ۢۨۢۤۛۨ";
                    while (true) {
                        switch (str2.hashCode() ^ (-845232247)) {
                            case -1730391641:
                                str2 = "ۜۥۥۘۗۜۧۘۢۙۜۢۦ۬۠ۙۥ۫ۜۡ۠ۧۦۘۗۛۢۚۨۨۛۙۗۦۢۥۙۛۖۥۦۛۘ۠ۙۖۗۧۤۦۛ۫۬ۡۘۜۨۡۘ";
                                break;
                            case -912457331:
                                break;
                            case 130833906:
                                str = "ۖۥۖۘۡ۫ۜۛ۫ۤۤۚۜۘۙ۠۠ۤۖۗۢۛۛۡۨۤۨۤۗۚ۫ۜۘۛۨۦۘۦۘۙ";
                                break;
                            case 1099170465:
                                String str3 = "ۛ۬۟۠۬ۚۧۤ۫ۖۧ۠ۗۦۜۘۖۦۧۘۖۡۚۙ۠ۙۖۘۘۨۨ۟ۦۥۖ۟ۢۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1123808757) {
                                        case -507602907:
                                            str3 = "۠ۡۖۘۜۤۖۜۜۜۧ۟ۥۘۥۗۙۢۤۦۘۗۢۥۧۙۡۘۛ۫ۖ۬ۨۥۘۖۤۨۤۘۢۖۨۖۘۙۢ";
                                            break;
                                        case 539547351:
                                            str2 = "ۜ۟ۦۘ۫۠ۘۘۛۜ۠ۚۢ۠ۥۦۨۘۚۥۧ۫۫ۜۘۥۙۘۘۛۖۘۘ۠ۛۤۥۧۘۘۗۡۢۗ۠۠۟ۘۘۡ۫ۜۥۧۚ";
                                            break;
                                        case 648850063:
                                            str2 = "ۧۘۦۨۦۘۘ۫ۘۙۛۛ۠ۜۚۦۦۜۧ۫ۡۘۘۦۥۘ۫ۥۤۤ۬۟ۗۡۛ۫ۜۦ";
                                            break;
                                        case 1056162926:
                                            str3 = zOooO00o ? "ۛۧۘۤ۫ۡۘۖۛۨۘۙۧۧۘۤۥۘۛۙۚ۫ۢۧۘۦۛۦ۬ۢۧ۫ۦۘۜۘۘۢۛۗۢۦۥۘۢۢۡۙۚ۠ۤۦۛ۠۬ۚۤۖ" : "ۨۤۗۨۥۦۥ۠ۨۘۨ۫ۢۜۚۘۖۖۚۢ۠ۢۥۢۦ۫۬ۦۤۤ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1745073330:
                    e5.OooO00o().OooO0o(new Runnable() { // from class: z2.g9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.OoooOoO.Ooooooo();
                        }
                    });
                    str = "ۘۦۢۜ۟۠ۛۙۨۖۤ۫ۖۥۦۘۨۚۙۘۛۡۘۢۨ۟ۡۚۜۚ۫۠۬۬ۜۘۨۨ۫۬ۚ۠ۤۥ";
                    continue;
                case -1494097681:
                    str = "ۚ۠۟ۗۡۘ۬ۖۥۥۢۡ۫ۚۚۨۥ۠ۙۘۖۤۜۙ۬ۧۘۘۙۖۢۜۛۖۘ۠ۧۡۤۨۡۘ۫ۙۘۚۘۢ۫ۚ";
                    continue;
                case -1434567276:
                    String str4 = "ۡۖ۠ۨۢۦۘۤۢۖۤۥۡۘ۫ۡۡۘۖۚۜۘ۟ۦۦۙۦۥۧۜ۬۠ۗۖۨۤۗۢۛ";
                    while (true) {
                        switch (str4.hashCode() ^ 1902142823) {
                            case -924973462:
                                String str5 = "ۖۢۡۘۨ۠ۢ۠ۗ۬ۛۛ۬ۚ۟ۜ۫ۘۙ۫ۦۜۢۧ۬ۨۧ۟ۥۜۚ";
                                while (true) {
                                    switch (str5.hashCode() ^ 143315418) {
                                        case -2145470810:
                                            str4 = "ۙۦۨۖ۫ۡۘۡۥ۫ۢۗۗۧ۬ۨۘۧۢۛۦۜۦ۠ۧۤۧۢۚۗۖۗۚۜۖۘۜۧ۫۟ۛۨۨۜۧۘ";
                                            break;
                                        case -1553439296:
                                            str5 = "ۦۚۗۛۖ۟۠ۢۜۡۘۘۦۙۢ۬ۗۘۘۙۛ۠ۧۗ۫ۙۚۦۘ۫۫۫ۖۤۦۗۤۘ";
                                            break;
                                        case -374446184:
                                            str4 = "۠ۧۨۤۜ۠ۛۨۨۢۚۜۧۗۖۖ۫ۗۥۚۡۘۡۛۥ۟ۢۥۘۗ۫ۢ۟ۗۥۡۙۜۘۧۜ۟ۚۙۦۘ";
                                            break;
                                        case 700586342:
                                            str5 = z ? "ۤۖۜۘۧۜۡۛۤۢۖۖۛۗ۟ۦۘۙۜۘۘۡۤۤۨ۬ۘۘ۫ۗۖۘۧ۟ۨ" : "۟ۢۨۗۘۨۘ۠ۘ۟ۨ۟ۘ۫ۛۦۘۘ۬ۤۘۛۡۦ۬ۘ۟ۧۦۘۘۢۧۚۖۙ۬ۗۖۙۙۘۘۛۡ۫ۢۗۢۙۨۡۘ۫ۢۨۡۢۧ";
                                            break;
                                    }
                                }
                                break;
                            case -864999304:
                                break;
                            case -302079439:
                                str = "ۖۥۖۤ۟۬ۡۜۥ۠ۦۦۘۧ۬۫۫ۧۘۘ۬ۤ۬ۘۗۡۨۙۥۘۙۤۥ۫ۙ۟ۜ۫ۦۘۖۙۥۖ۬۫ۨۦ۬۬ۥۘۛۢۛۧۙۤ";
                                break;
                            case 1228602723:
                                str4 = "ۘ۬ۡۥۗۡ۠ۢۘۘۖ۬۟۠۬ۘۘۗۡۡ۬ۛۤ۬ۛۚۚۦ۟۬ۥۦ";
                                break;
                        }
                    }
                    break;
                case -1315488712:
                    a4.OooOoo(this, zOooO00o);
                    str = "ۜۦۛۙ۠ۨۗۧۜۘۖ۬ۛۜۖۥ۠ۚ۬ۥۜۨۚۙ۬۫ۗۘۢۜۚۥۧۦۗ۫۠۠ۦۡۦۘۥ۠۠ۤ۟۬";
                    continue;
                case -625415765:
                    str = "ۨۦۛ۠ۗ۫ۨۥۨۦۘۢۤۧ۟۠۟ۚۖۤۘ۬ۡۨۥۤ۟ۦۧۢۗۗۗۖۜۛۢ۟ۥۦ۟ۛ۠ۖۘۘۚۦۛۨۢۡۨۙ";
                    z = AppContext.OooO00o().OoooooO;
                    continue;
                case 931794500:
                    zOooO00o = x4.OooO0O0().OooO00o(f6.OooOOo0, Boolean.FALSE);
                    str = "ۥۘ۫ۧۛۛ۫ۡۖۛۘۧۦۢۚۚ۬۬ۢۤۖۦۗۥۤۖۚۖۨۦ۠ۛۜۚۘۨۨۖۘۗۗۘۘ";
                    continue;
                case 1488235869:
                    return;
            }
            str = "ۘۦۢۜ۟۠ۛۙۨۖۤ۫ۖۥۦۘۨۚۙۘۛۡۘۢۨ۟ۡۚۜۚ۫۠۬۬ۜۘۨۨ۫۬ۚ۠ۤۥ";
        }
    }

    private void OoooOoO() {
        String str = "ۖۛۘۧ۫ۧۨۘۜۛۖۦۥۙ۟۠ۚۤۧ۫ۖۛۙ۟ۗۨۖۘ۬ۥۚۜۡۜۘۛۖ۫";
        while (true) {
            switch ((((str.hashCode() ^ 569) ^ PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW) ^ 671) ^ (-43706219)) {
                case -1202896173:
                    ((na) this.OooooO0).Oooo0OO();
                    str = "ۥۙۖ۟ۗۚ۫ۧ۟ۙۙۜۨۛ۠ۧۖۡۘۚۥۧۦۙۖۡۡۥۨ۬ۜۘۡۜۥۘ۬ۗۥۘۙ۫ۗۢۢۘۘۜ۫ۥ۫۫";
                    break;
                case -676135003:
                    ((na) this.OooooO0).Oooo0O0();
                    str = "۬ۙۚۙ۫۬ۤۧۚۗۤۨۘۙ۟ۨ۬۬ۜۘ۬ۗۜۛۤۘۘۢۨۜۘۛۡۘۙۜۨۘۜۛۖۘ۫ۥۦۢۛۘۘ۬ۚۙۧۙۘۘ";
                    break;
                case -141105324:
                    str = "ۛۘۥۘۚۛۖۤ۠ۗۨۚ۫ۢ۠ۛۘۖۘۢۘۙۖۛۢۚ۠ۢۗۤ";
                    break;
                case 374935851:
                    return;
            }
        }
    }

    private void OoooOoo(ArrayList<NotifyMsgBean> arrayList) {
        String str = "۫ۡۧۘ۠۫ۢۥۗۗۧۢۥۘۢۚ۫ۚۢ۟ۢۗ۬ۡۘۘۘۥۜ۬ۨۥۙ";
        PendingIntent activity = null;
        Intent intent = null;
        while (true) {
            switch ((((str.hashCode() ^ 286) ^ 278) ^ 174) ^ (-443617452)) {
                case -1683161815:
                    return;
                case -1680523155:
                    str = "ۡۦۖۖۤۨۘۛۚۗۤ۫ۚۤۢ۬ۘ۟ۚۚۥۘۚۡۧۘۛۜ۟ۨۤۨۢۦۤ۟ۖۘ";
                    break;
                case -1049342061:
                    intent.putParcelableArrayListExtra(g6.OooO0OO, arrayList);
                    str = "ۖۦۖۘۖۦۦۘۙۡ۬ۛ۟ۧۥۤۙۖۥۖۘۜۗۥۘۦ۫۟ۙ۠ۧ۫ۗۧۜ۫ۖۖۦۛ";
                    break;
                case -1000899007:
                    activity = PendingIntent.getActivity(this, 0, intent, 134217728);
                    str = "ۘۛۛۗۦۦ۠ۨۦۛۙ۠ۧۚۨ۬۬ۨۚۚۖۘۦ۠۬ۙۚۜۧۡۥۘۙ۠ۙۙۦۖۗۨۗ۟ۘۦۘۡۛۚۦۘۧ";
                    break;
                case -928794390:
                    this.o00Oo0 = (NotificationManager) getSystemService("notification");
                    str = "ۨۗۨۖۥۘۘۚ۟ۦۘۜۗ۫ۗۨۢۡۜۘۢۖۨۘۤ۫ۜۗۤۘۛ۟ۜۘۡ۠ۢۦۖۜۘۨۜۙۥۛۜۘ";
                    break;
                case -856872205:
                    this.o00O0O.setSmallIcon(R.drawable.ic_launcher).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher)).setOngoing(false).setAutoCancel(true).setPriority(0).setDefaults(2).setContentIntent(activity);
                    str = "۬ۚۡۡۤۘۘۖ۫ۖۤۜۘ۫ۥۖۢۖ۠ۗۡۨۛۗ۫ۨ۫ۦ۬ۜۛۛ۫ۨۧۡۖۘۤۨ۫ۜۦۘۘ";
                    break;
                case 6269581:
                    str = "۫ۖۥ۬ۧۙۜۘ۬۬ۧۥۘۡۥۥۥ۟ۡۛۖۡ۟۫ۤۘۙۜۜۜۥۖۙۜۘۛۗۧۗۛۖۦۢ۟";
                    intent = new Intent(this, (Class<?>) MessagePushActivity.class);
                    break;
                case 180192284:
                    str = "ۖۧۚۨۛۖۘۛۚۦۘۤۥۙۢۜۗ۠ۨۡۘۗ۠۠ۤۚۘۖۙۘۘۨۢۖۡ۟ۡ۠۠ۧ۠ۥۖۘۦۜۘۗۨۥۘ۟ۙۢۙۜ۫ۜۛ";
                    break;
                case 1803550391:
                    this.o00O0O = new NotificationCompat.Builder(this);
                    str = "ۤۨ۠ۥ۬ۦۘۚۤۡۘۛۜۡۘۨۧۡ۫ۡۖۗۡۘۚۜ۬ۡۗۜۘۨۛ۟۠۟ۛۡۦۦۛ۟ۚۥۦۨۘۧۗ۫ۜۖۘۥۢۦ۫ۜ۟";
                    break;
            }
        }
    }

    private void Ooooo00() {
        String str = "ۜۛۘۘۙۥۤۢ۫ۘۚۗۡۢۙۨۢ۫ۖۘۘۧۨۘۦ۬ۤۦۖۙۜۘۚۚۛۦۘۡ۟ۦۙۦۧۙۤۥۘۚۖۧۥۧۘۘ";
        RTDViewPager rTDViewPager = null;
        r9 r9Var = null;
        ga gaVar = null;
        ArrayList arrayList = null;
        while (true) {
            switch ((((str.hashCode() ^ 700) ^ 891) ^ 464) ^ (-366183905)) {
                case -2106580996:
                    ((TabPageIndicator) findViewById(R.id.indicator)).setViewPager(rTDViewPager);
                    str = "ۡ۠۠۫۠ۘۘ۫ۡۗۢۜ۠ۙ۬ۢ۫ۜۙۦۦۚۦۨۜ۫ۙۘۨۗۙ۬ۨۘۧۖ۬ۖۛۥۖ۬ۥۖ۬ۖۘ۬ۨۖۘۤۙۤۡ۫ۜۘ";
                    break;
                case -1596866192:
                    str = "ۤۛۦۨۧۘۘ۫ۦۡۙۢۘۛۘۙۜۙۨۘۤ۠ۥۜ۫ۜۡۥۗۢۨۚ";
                    arrayList = new ArrayList();
                    break;
                case -969061566:
                    return;
                case -926610785:
                    this.OooooOO = new ja();
                    str = "ۡۧۡۘۢۘۥۘۚ۫ۡۘۥۥۘۘۚۘ۬ۨ۟ۜۦۛۙۡۖۘ۟ۦۢ۟۠ۦ۟ۧۧۖ۟۬ۧۦۧ۠ۜۥۘۜۘۖۘۘۧۦۘۥۥۡۜۥۧ";
                    break;
                case -813659790:
                    str = "ۢۧۗ۫ۥۗۜۡۖۘۙ۟ۙۦۜۜۘۘ۟ۘۘۦۦۖۘۗۛۚۚ۫۫ۦۙۡۨ۠ۜۘۜۚۥۗۖۦ۠۟ۡ۟ۥۥ۟۫ۜ";
                    r9Var = new r9(this, getSupportFragmentManager(), arrayList);
                    break;
                case -330398887:
                    str = "۠ۚۡ۠ۜۗۗۧۛۙۦۗۜ۫ۙۛ۠۬ۢ۟ۦۢۛۘۘۡ۫ۧۨ۬ۨۥۙ۟ۤۜۛۜۛۖۧۜۖۘۘۚۜۤ۟ۜۘۘۖۨۘ۬ۜۖ";
                    rTDViewPager = (RTDViewPager) findViewById(R.id.viewpager);
                    break;
                case -241522093:
                    arrayList.add(this.OooooOO);
                    str = "ۡ۟ۦۖۧۨۨۤۜۘۛۜۜ۫ۗ۠۫ۡۢۜۙ۬ۜۨۢۛۡۡۛۡ۟ۧۙۚۤۜۜۡۡ۫ۡۤۨۘ";
                    break;
                case 244957484:
                    str = "ۢۡۘ۫ۧۦۚ۫ۘۖ۟ۙۧۛۨۘۜ۟۟ۤۤۜۜۢۛۛۢۦۘ۫ۚ۫ۤۤۥۘۧۜ۬ۦۧۚ۠ۛۦۘۜۖ۠ۡ۫ۚ";
                    break;
                case 658670105:
                    arrayList.add(gaVar);
                    str = "ۘۤۤۚ۠ۜۨۖۚۚۗ۠ۧۡ۠ۙۢۢۗ۫ۥۘۤۗۜۤ۬ۘۚۛۨۘۛۦۙۧۨۙ۟ۦۘۢۙ۠ۦۥۢۘۘ";
                    break;
                case 782051465:
                    str = "ۘ۫ۥۘۡ۫ۚۖۘۢۛۤۧۢۨۖۙۖۛۨۙۥۖۛۗ۫۟ۤۜۨۧۘۗۜۘۘۡۜ۠ۗ۟ۖ۬۬ۖۚ۠ۡۘۗ۟ۖۘۖ۟ۖۘ۠۟ۛ";
                    gaVar = new ga();
                    break;
                case 1264907340:
                    rTDViewPager.setAdapter(r9Var);
                    str = "ۙۗۖ۫۟ۤۥ۟ۘۙۥۥۖۨ۫ۡۥۨۤۤۨۘۚۦۧ۠ۡۖۙۗۘۘۖ۬ۜۘۤۚۤۜۛۘۘ۬ۢۜۘۖ۠۠۬ۤۛ";
                    break;
                case 1379850035:
                    this.OooooOO.Ooooo0o(new OooOo(this));
                    str = "ۜ۠ۘ۫ۧ۫۬۫ۜۘۧۚۖۘۥۧۖۘۤۤۛۚۜۘۘ۟ۛۨۢۗۛۤۦ";
                    break;
            }
        }
    }

    private void Ooooo0o() {
        oa oaVar = null;
        String str = "۠ۖۛۢۚۢۧۡۜۘۢۛۨۘ۬۠ۨۙۦۛۧۥۢۤۗۧۧۚۡۜ۫ۖۢۢۦۘۖۧۢۛۦۧۘۙۢۡۘۨۙۜۙۗۜ";
        while (true) {
            switch ((((str.hashCode() ^ 950) ^ 472) ^ 422) ^ (-481665557)) {
                case -1175573444:
                    return;
                case -971885820:
                    str = "۬ۤ۠ۢ۠۫۬ۡۚ۫ۤۜۥۖۖۗ۟ۢۢۛۜۘۚ۫ۤۙۗۤۧۧ۟ۧۦۥۘۚ";
                    break;
                case -183765174:
                    str = "۠ۗۡ۟ۧۘ۬ۧۡۘۦۘۙۢۢۦۘۗۙۛ۬۠ۜۢۥۧۛۥۦۨ۟ۨۘۡۥۧۘ۠ۛۘۘۖۤ۠ۥۘۤۤ۟ۥۖۢ";
                    oaVar = (oa) ViewModelProviders.of(this).get(oa.class);
                    break;
                case 271833954:
                    oaVar.OooOo().observe(this, new OooOO0(this));
                    str = "ۜ۠۫ۖۙۙۡۡ۠۬ۢۦۘۤۛۢ۠ۚۖۘۢۘۖۘۘۢ۟ۢ۟ۦۘۛۚۖۖۢۜۘۙۧۚۚ۠ۘ۟ۥ۟ۛۧ۬ۛ۬ۘۘ";
                    break;
                case 1082621147:
                    this.o0ooOoO = oaVar;
                    str = "ۤۖۖ۟ۦۖۘۘۥۙۥ۟ۤۨۢۨۛۚۦ۠ۥ۠۬۠۫ۢۜۦ۟۬ۤۥۢ۬۬۬ۥ";
                    break;
            }
        }
    }

    private void OooooO0() {
        uc ucVar = null;
        String str = "ۘ۬ۙ۬ۧۨۧۧۥۘۖۦۡۗۗۙۛۥۦ۫ۢۨۜۢۥۘۘۡۘۘۡۤۖۘ۟ۨۥۘۡۖۙۨۧۘۥۖۚۡۧ۟";
        while (true) {
            switch ((((str.hashCode() ^ 368) ^ 681) ^ 892) ^ (-1474893310)) {
                case -2083547847:
                    OoooO00();
                    str = "ۧۖۥ۠۟ۨۘ۠ۨۛ۫ۦۨۙۘۙ۬ۧۦۘۨۨۜۖ۟ۖۘۛ۠ۛۘۡۦۗۧۢۥۜۙۢۤۥۗ۟ۢ";
                    continue;
                case -1838408143:
                    ucVar = new uc();
                    str = "ۗ۠ۡۘۚۢۜۨۗۡۤۚۖۚۗۜۨۜۗۙۨۦۢۖۢۖۘ۫ۤ۫ۧۜۧۗۚ۟ۧۙۖۛۥۥۘ۬۬ۦۘۥۚۦ";
                    continue;
                case -1581470277:
                    ((na) this.OooooO0).Oooo0o0();
                    str = "ۧ۬ۡۘۜۘ۠ۗۖ۠۠ۖۜ۟ۨۢۢۡۘ۬ۙ۠ۢۧۥۘۚۨۥۥۡۗۛۚۛ۬۟ۙۨۗۢ۫۠ۗۜۜۘ۠ۘۛ";
                    continue;
                case -1478234358:
                    Ooooo00();
                    str = "ۧۖ۠ۛ۫۬۫ۙ۟ۨۜۙۚۙۡۤۥۘۤ۟ۗۨۧۤۤۢۜۛۡ۟ۨۡۨۘۥ۫ۥۘ";
                    continue;
                case -1358251120:
                    OoooOo0();
                    str = "۟ۧۡۘۡ۟ۘۡۧۦۖۦۜۘ۠ۨۙۦۢۖۘ۠ۢ۬ۡ۟ۨۚۢۖۜۤ۟ۢۨۗۚۥۡۘ۬ۧ۬ۧۢۖۘ۬ۥۨۦۧ۠";
                    continue;
                case -1343681569:
                    AppContext.OooO00o().Ooooo00 = true;
                    str = "ۧۘۛۘۥۧۘ۫ۢۙۥۥۥۖ۬ۛۧۗ۟ۦۡۖۘ۠ۨۜۧۗۡۢۚۗ۫ۛۗۤۗ";
                    continue;
                case -1317696656:
                    ooOO();
                    str = "ۙۧ۠ۜۨۦۘ۟ۤۦۘۤ۠ۘۤ۫ۡۘ۬ۦۜۘۙ۠ۜۛۛۜۨۡ۠ۧۥۦ۟ۘۢۤۙۦۘۛۥۨۨۡۨۖۨۨ۬ۘۢۡۨۨ۫ۨ";
                    continue;
                case -634386337:
                    ((na) this.OooooO0).Oooo00O();
                    str = "ۘۥۖۘۥۛۡۛۨۥۘۢۗۥۘۨۖۙۖۜ۬ۥۦۜۚۨۦۘ۟۟ۗۖۨ۠۫ۗۨۚۨۤ۬۬ۜۦۦۘۡۘ۬ۥۦۧۘ";
                    continue;
                case -433690020:
                    this.o0OOO0o = ucVar;
                    str = "ۥۗۙۢۢۘۘۛۧۗۨ۬۠۬ۜۨۡ۠ۨۘ۟ۙۨۘ۟ۙۦۘۥ۫ۡۘۙۚ۟ۜۦۘ۠ۦۢۘ۫ۗۧۨۘ۠ۖۡۘ۟ۜۡ";
                    continue;
                case -308426131:
                    y8.OooOO0o(102);
                    str = "۫ۖۤ۫ۨ۠ۨۤۜۘۖۚۥۘۢۨۨۘۨۡ۠۠ۘۚۧۚۢۥۘۡۢۢ۫ۨۘ۟ۙ۠ۙ";
                    continue;
                case -234852663:
                    ((na) this.OooooO0).OoooO00();
                    str = "ۚۙۖۙۥۤۦۜ۠ۧۤۨۙۥۘۧۤۜۘۨۖۢۗۗۛۗۨۨۨ۫ۨۘۛۥۥۤ۬ۡۘۜۛۥ۫ۨۘۢۦۧۘۖ۟ۧ۬ۨۛ۫۬";
                    continue;
                case -101841195:
                    OoooOOo();
                    str = "ۦۧۜۢۤۙ۟۟۠ۧۖۧ۫ۤۤۗۛ۠۬ۜۘۨۛ۟ۚۗۜۨۜۡ";
                    continue;
                case -18864323:
                    OooooOO();
                    str = "ۧ۟۬ۖۡۙۗۖۡۘ۬ۥۘۚۦۥ۟۬ۧ۟ۚۢۙ۟ۨۘ۫ۤۧۦۖ۟";
                    continue;
                case 158684718:
                    String str2 = "ۢۤۡ۫۟ۤۚۖۘۚۦ۫۬ۢ۫۬ۤۖۘۡ۫ۚۗ۬ۡۜۛۡۘۨۘۢۦۧۜۘۜۙۥۘۚۚۦۘۢۖۨ۫۫ۥۦۙۙۤۗۙۡۙۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1297119047) {
                            case -759259576:
                                str = "۠ۘۥۛۖۘۡۢ۫۟۟ۗۦۖۘۗ۠ۛۙۡۡۘۚۡ۟ۜۛۢۥۡۤ۠۟ۢۦۧۧ۫ۚۤۗ۠ۙ";
                                break;
                            case 708486604:
                                String str3 = "ۥۢۘۘۧۨۧۘۚ۟ۛۛۖۖۘۘۢۤۙۚ۬۬ۥۘۜۦۥۘۖۜۨ۠ۥۥۦۡۥۘۖۘ۟ۦ۬ۖۦۦۜۖۧۘۗۛۡۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1328010855) {
                                        case -1675899989:
                                            str3 = !j3.OooO0oO("").toString().contains(x8.OooO0O0(l8.OooO00o(g6.OooOo, -7))) ? "ۧۦۜۘۜۨۚۤۙۜۘۦۖۦۡ۟ۦۤۥۥۖۖۚۘۡۧ۬ۚۜۘۦۤۙۘۘۜ۟ۧۥۛۜۧۢۖۚ" : "ۘ۬۬ۗ۫ۥۗۗ۬۠ۚۦۨۘۖۨۘۜ۟ۡۧۙ۠۬ۚ۫ۤۨۤ۠ۥۦ۠ۨ۠۟ۗۖۢۥۦۘۗۖۧۘۢۡۤۛ۠ۦۨ۟ۥۘ";
                                            break;
                                        case -264109785:
                                            str3 = "۬ۘۤۘۤۖ۬ۡۜۘۛ۠۬ۜۨۧۘۚ۠ۘۥ۬۬ۦۥۤ۫۬ۘۘۙۥۙ";
                                            break;
                                        case 458447461:
                                            str2 = "ۦ۟ۤۧۢۜ۠ۜ۠ۜۧ۬ۡۢۗۘۜ۠ۗۤۜۖۜۘ۟ۜۥۘۜۚۛ۠ۢ۫ۚ۠ۜۘ";
                                            break;
                                        case 1325553756:
                                            str2 = "ۥۢۖۘۜۛۘ۫ۨ۟ۗۨۜۘ۟ۧ۠ۧۘۖۘ۫۬ۥۘۦۨۧۛۛۘۧۗۦ";
                                            break;
                                    }
                                }
                                break;
                            case 772970046:
                                str2 = "ۨ۟ۖۘۦۛۥۡۜۡۘۙ۟ۖۘ۠۠ۛۦۘ۫ۧۙۜۢۖۜۧۘ۟ۙۥۖۘ";
                                break;
                            case 1981787357:
                                break;
                        }
                    }
                    break;
                case 372559901:
                    ucVar.OooO0OO(this);
                    str = "ۚۤۖۘۧۡۘ۠ۧۜۘۤ۠ۗ۬۫ۘ۠۬ۖۘۨۚۘۘۥ۟ۡۘۨۨۦۘۘۘ۬ۧۖۖۜ۬ۘۘ۟ۜۨۡۜۡۘ";
                    continue;
                case 413758654:
                    OoooOO0();
                    str = "ۢۧۖۥۥۜ۟ۘ۟ۗۥۦۧ۟ۜۘۦۗ۟ۤۨۛۛ۠ۗۧۥۡ۫ۧ۬ۧۨۜۗۨۖۨۧۦۘۖۘۖ۟ۧۛۜ۠ۚ";
                    continue;
                case 525016594:
                    String str4 = "ۚ۟ۥۘۧ۠۫ۨۚ۬ۜۦۘۘۚ۠ۛۧ۫ۖۘۜۥۘ۠۫۬۠۫ۢۥۘۧۘۚۗۗۨۛۨۦۜ۟ۙۢۛۡۥۘۦۡۙ۬ۢۙ۟ۜ۟";
                    while (true) {
                        switch (str4.hashCode() ^ (-1681175111)) {
                            case -2098020832:
                                str4 = "ۥۦۚۜ۬ۚۢۜۡۘۙۢۧۜۡۛۙۘۦۘۧۘۡۖۚۥۡ۟ۜۘۖۡۘۨۖۚۚۛۛ";
                                break;
                            case -2023474692:
                                break;
                            case 1257158300:
                                str = "ۧۖۦۘ۟ۜ۠ۘۨۥ۫۫ۡ۫ۘ۠۠ۧۢۖۦۘۚۨۨ۠ۧۨۘ۫ۙۖۘ";
                                break;
                            case 1454795772:
                                String str5 = "ۧ۫ۢ۫۟ۖۘۦۢۜۘۘ۠۟ۧۘ۫ۥۙۜۘۤۡۘۨۧ۬ۜۜۗ۠ۦ۠ۗۘۢۗۖۥۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1115473207)) {
                                        case -1743376874:
                                            str5 = "۫ۚۢۗ۠ۨۘۖ۫ۨۘ۬ۢۖۘۚۤ۟۫ۛۖۘۧۗۡۘۦۖۨۘ۠ۥۥۗۢۤۧ۬ۗ۠ۢۘۢۢ۟۠";
                                            break;
                                        case -1345333418:
                                            str5 = !j3.OooO0oO("").toString().contains(x8.OooO0O0(l8.OooO00o(g6.OooOoO0, -14))) ? "ۛۦۥۡۛۙ۠ۡۧۘۚۗۖۘ۟ۗۨۘ۫۫ۥۖ۫ۡۦۖۛ۠ۡۦۘ۟ۥۗۧۥۘ۫ۛۖۘۨۛۙۗ۬ۨۧۖۧۘۤۚۥۘۖۥۤ۬ۧۥ" : "ۙ۬ۡۘۤۘ۟۫۟ۤۚۡۖۙۚۗۚۙۜۚۤۦۘ۬ۡۚۖۢۛۚۥۙۗ۟۬ۘۦۤۥۜۤۜ۟ۥۘ۠ۡۨۘۧۡۦۙۡۥۥ۬";
                                            break;
                                        case -949695030:
                                            str4 = "ۘۥۤۖۢۡۗۦۖۤۥۘۘۢۤۡۘۤۥۦۘۘ۬ۥۗ۠ۛۦۥۛۧۙۡۘۥ۫ۡۘۥۚۛۜ۠۬ۥ۟ۖۢۖۧۘ۠ۗۚۜۜۖۘۡۜۥ";
                                            break;
                                        case 1149612176:
                                            str4 = "۠ۡۚۘۧۥۙۖۘۘ۟ۥۨۘ۫۬ۛۜۢۚۗۡۧۜۛ۬۫ۦۘۘۢۢۡۘۗ۫ۖۚ۠ۥۘ۬ۖۙ۬۫ۤ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 771690355:
                    String str6 = "ۧۨۥۚ۟ۤۚ۬۟ۦۧۨۨۤۨۦ۫ۜۘۤۦۗ۬ۨ۟ۥۨۡۘۘ۠ۘۘۛۙ۠ۡ۬ۜۘ۟ۡۘۥۨۥ";
                    while (true) {
                        switch (str6.hashCode() ^ (-125590621)) {
                            case -1369301122:
                                str = "ۡ۫ۘۘۡۥۖۘۦ۫ۨۘ۫ۘۤۛۥ۫ۙۖۜۧۧۦ۫ۘۢۨۢۦ۬ۗ";
                                continue;
                            case -565089406:
                                str6 = "ۙۤۦۘۧۘۤۥۘۜۗۙۘۢۛۦۘۧ۬ۚ۠۟ۡۡۜۨۘۦ۟ۥۘۡۥۗۦۗۘۘۘۡۦ۫ۗۙۡۚ۫ۗۨۖۘ۫۠ۡۧۘۤۛۜۦۘ";
                                break;
                            case 781634670:
                                String str7 = "ۜ۫ۜۘۙۘۛۚۥۡ۟ۜۧۘ۬۟۟ۢ۫ۜۘۛ۠ۘۨ۫۟ۡۛۜۘ۫ۗۖۜ۠ۖۛۢۖۘۚۧۜۘۤۢۦۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 1090875134) {
                                        case -136343730:
                                            str6 = "۬ۥۢ۟ۨۥۘۦۥ۬ۙ۬۠ۗۤ۟ۧ۬ۤۛۜۗ۟ۘۘ۬ۖۛۥ۬ۘۡ۟ۧۧۙۡ";
                                            break;
                                        case -29107431:
                                            str7 = t4.OooOO0(this) ? "ۙۖۤۙۢۙۤۚۘۘۡ۟ۘۥۗۜۘۜۜۦۘۙۚۤۡۖۚۢۜ۟۬ۡۜۘ۟۟ۤۛ۫ۧ" : "ۙۤۗ۬۬ۛ۫ۥۘ۬ۦۡۜ۟ۦ۠ۡ۠ۚۗۨۢۚۥۧۜۜۘۗۜۘۘ۬ۦۤۜۖ۫ۚۙۛۧۤ۟ۛۥۖ۟ۥۙ۠ۗۦۢۤۢ";
                                            break;
                                        case -16182766:
                                            str7 = "۬ۙۢۢۨۢ۫ۦ۟ۙۗ۫ۢۥۘۙۜۥۘۜۙ۟ۦۖۧۧۙ۫۫۬ۡۧۦ۠۫ۗۖۘۢۖ۫ۖۦۥۘۧ۟ۘۥۦۧۘ";
                                            break;
                                        case 469710991:
                                            str6 = "ۗۛ۬ۗۖۨۧ۬ۗ۠ۨۢۗۡ۠۟ۥۨۥۢ۠ۘۙۜ۟۠ۘۤۧۨ۠ۥۖ۬ۦۘۛۘۚۚۖ۠ۖۨۘۨۖۢۚۥ۠۬ۘۥۘ";
                                            break;
                                    }
                                }
                                break;
                            case 2031045076:
                                str = "ۘۥۖۘۥۛۡۛۨۥۘۢۗۥۘۨۖۙۖۜ۬ۥۦۜۚۨۦۘ۟۟ۗۖۨ۠۫ۗۨۚۨۤ۬۬ۜۦۦۘۡۘ۬ۥۦۧۘ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case 959103986:
                    r7.OooO0o().OooO0o0(this);
                    str = "ۙۤۨۛ۬ۖۢۦۧ۫ۖۘ۟ۡۡۘۦۧۨۖۤ۟ۨ۟ۜۡۚۘۦۘۤۘۘۘۙۡ۬۟ۨۘ۟ۦ۠";
                    continue;
                case 1133064385:
                    dh.OooOO0o(getApplicationContext());
                    str = "ۦۧ۫ۚۡ۟۟ۤۖۘۨۖۡۖۙ۟ۙۢۖۥۥۜۘۨ۟۟ۢۜ۠ۢۜۘ۠ۧ۬ۤۥ۠ۚۛۘۘ۫ۘۖۘۨۨۘۘ۫ۚۧۦۘۖۜۦ";
                    continue;
                case 1248134184:
                    y8.OooO0oo(l8.OooO0O0(7), l8.OooO0OO(8), l8.OooO0O0(8));
                    str = "ۡۜۗۢۧۡ۫ۜۚ۠ۚۘ۟ۧۘۘۡۙۜۧۧۨۘ۬۬ۢۛۥۘۖۧۛۤۨۤۦۘۥ۬ۦۛۚۥ۫";
                    continue;
                case 1628866818:
                    OoooOoO();
                    str = "۫ۤۧۙۦۘۦۦۨۙۗۜۘۥ۟ۢۘۤۨ۬۫ۨۦۦۡۜۙۙۨ۠ۜۦۨۙۛ۬ۖۡۚۜۜۜۛۘۡۦ۠ۚۖۨۙ۠ۥ";
                    continue;
                case 1750085609:
                    OoooO();
                    str = "۬ۖۘ۠ۖۢۢۧۘۘۘ۠۟ۜۖ۫ۘۦۘۘۢۙۛۨۘۜۚۗۖۘۨۖۜۤۨۡۦۢ۟۫۬۫۫۬ۨۘۨ۟ۖۥۖ۫ۚۨۚۛ۬ۘۘ";
                    continue;
                case 1800155399:
                    str = "ۙۛۦۘ۬ۖۥۤ۫۬ۧ۬۟ۛۥۚۧۗۜۤ۟ۥۛۤ۠ۤۥۘۤۢۗۨۤۡۘۖۧ۠۬ۛ۫۟۟۬ۦۗۧۡۙۢ۠ۙۥۘۤۨۡ";
                    continue;
                case 1877903454:
                    return;
                case 2107705665:
                    ((na) this.OooooO0).Oooo0o();
                    str = "ۗۗ۟ۤۡۨۘۙ۟ۥ۬ۢۥۘۖۜۧ۬ۛۚۦۨۘۘۢۜ۟۠ۘۡۘۧ۠ۛ";
                    continue;
            }
            str = "ۡۜۗۢۧۡ۫ۜۚ۠ۚۘ۟ۧۘۘۡۙۜۧۧۨۘ۬۬ۢۛۥۘۖۧۛۤۨۤۦۘۥ۬ۦۛۚۥ۫";
        }
    }

    public static /* synthetic */ void OooooOo() {
        String str = "۠ۡۧۘ۠۬ۘۤۥۧ۟ۛۛ۟۟ۥۘۢۦ۬ۘۖۢۧۛۥۘۨ۟ۥۘۧۖ۫۬ۨۨۚۨ۟ۢۢۘۘۢ۫۫۫ۢۦۘ۠ۦۧۘ۟ۘۨۘۤ۠ۛ";
        while (true) {
            switch ((((str.hashCode() ^ 357) ^ 623) ^ 326) ^ 584857479) {
                case 367298285:
                    return;
                case 2128698889:
                    y8.OooOO0o(11);
                    str = "۟۫ۨۘۗۖ۬ۚۢۖۗۦۢۖۧ۠ۚ۬ۖۘۧ۟ۛۛۚۖۨۚۨۘۥۜۦۘۨۢۦۘۧۘۤ۫ۖۖۘۗۙۘ۬ۙۘۘۘۜۥ";
                    break;
            }
        }
    }

    private /* synthetic */ void Oooooo0() {
        String str = "ۥۘۥۤۗ۟۬ۜ۟ۘۜ۫ۤۡۨۘ۟ۜۚۙۡۧۘۤ۟ۙ۫ۗۤۥۖ۬ۛۗۨۗۜۚۥ۫۬۠ۢۥۦۥۛۙ";
        while (true) {
            switch ((((str.hashCode() ^ 257) ^ 79) ^ 190) ^ 1598998498) {
                case -2001276292:
                    str = "ۥ۬۬ۧۥۥ۠ۢ۟ۗۙۥ۠ۤۨۘۧۤۖۘۜ۟ۘ۠ۥۦۘ۠ۢۨۘۦۧۘ";
                    break;
                case -1805379994:
                    String str2 = "ۙۚۜ۠ۦۨۘۚ۠۫ۢ۫ۡۢ۫ۥۖۦۦۘۗۜۧۤۛۜ۫ۢۡۡۘۦۨۘ۫ۥۘۤۙۤ۠ۚۗ۟ۥۖۥ۬";
                    while (true) {
                        switch (str2.hashCode() ^ 515300764) {
                            case -1422450945:
                                str = "۠ۤۜۘۤۙۦۘۗۚ۫ۨۖۘۢۗۗۖۥۧ۠ۛۨۘۢۡۨۥۡۤ۠ۧ۠";
                                continue;
                            case -855721219:
                                str2 = "۬ۤۤۤۨۖۛۥۘ۠ۚۘۘ۫ۢۛۤۧۛۘۢ۫۠ۜۨۘۥۦۙۧۦۚ۫ۤ۫ۚ";
                                break;
                            case 315371233:
                                String str3 = "ۧ۫ۦۘ۬ۜۚ۬۟ۢۘۥ۫ۛۗۖۘۙۙۡ۫ۢۥۘۧۤۥۘۚۢۖۤۦۚۨۥۛۙۖۦۡۘۢۦۡۘۢ۬ۧۖۧۖۘ۠ۜ۠ۤۢۚ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-652279906)) {
                                        case -1959124580:
                                            str3 = "ۜۨ۫ۧۨۘۘۗۧۦ۬۠ۗۥۥۘۛ۠ۨۘۧۗۜ۠ۢۜۘۙۨ۟ۤۘۘۧۥۡۘۙۗۖۘۗۨۦۘۧ۟ۖۦۥۛۗۨۜۘۚۡ۟ۛۘ۬";
                                            break;
                                        case -1857945095:
                                            str3 = AppContext.OooO00o().o0OoOo0 ? "ۙۢۚۗ۬ۡۤۥۢۨۥۘۗ۟ۦ۟ۢ۠ۤ۬ۥۧۚۨۛۢۥۘ۬ۨۙۘ۟ۜۘۘۤۡۘ۟ۦۨۘۗۧۨۖۛۥۢۥۘ۟ۢۜۖۡۡۘ" : "ۨۚ۠ۘ۫ۖۥۧۙۛۜۥۘۢۧۘۘۚۡۤۛۛۚ۬۠ۨۘۙ۬ۜۘ۫ۙۡۘۖۧۡۗۖۜۘ";
                                            break;
                                        case 692669158:
                                            str2 = "ۜۧۡۘۧۥ۬ۛۛۜۢ۬ۢۗ۠ۦۘۘۘۢۛ۫ۘۦۗۥۢ۫ۜۦ۫ۜۗۦۨ۬ۜۘ۟ۘۥۘۖۗۨۘ۫ۗۛ۟۠ۖ";
                                            break;
                                        case 1092302085:
                                            str2 = "۟ۥ۠ۥۖۨۘۨۤۜۛۨۘۘۘ۫ۘۘۘ۠ۨۘۜۢۧۦۤۘۥۨۚۨۢۨۙ۬۟ۚ۟ۤۚۤۖۘۨۚۛۢۗۜۢۧ۟ۛ۟ۜۛۖ";
                                            break;
                                    }
                                }
                                break;
                            case 2058618942:
                                str = "۠ۡۜۘۡۥۡۙۜۦۡۢۨۚۨۖۛ۟ۖۛ۬ۛۥ۠۟ۗۥ۫ۜۥۖۘۨۘۖۗۛۥۘۖۦۖۤۙۧۖ۬ۥۘۚۙۡۘ";
                                continue;
                        }
                    }
                    break;
                case 136251682:
                    ((na) this.OooooO0).OooOoO();
                    str = "۬ۜۨۘۙۦۜۘ۫۠ۜۘ۠ۜۦۛۦ۬۫ۙ۫۟ۥۤ۠ۘۙۨۗۗۧۘۥ۬ۖۘۘۘۘ۟ۜ۫۠ۛۖۡۨۜۦ۬ۖۙ";
                    break;
                case 724490879:
                    str = "ۥ۬۬ۧۥۥ۠ۢ۟ۗۙۥ۠ۤۨۘۧۤۖۘۜ۟ۘ۠ۥۦۘ۠ۢۨۘۦۧۘ";
                    break;
                case 1092187514:
                    SystemClock.sleep(200L);
                    str = "۟ۜۚۗ۠ۦ۫ۤۡۘۘۧ۠ۘ۠۫ۙ۟ۖۘۖۥۙۛۥۙۡۤۡۢ۟ۖۘ";
                    break;
                case 1372665598:
                    return;
            }
        }
    }

    private /* synthetic */ void OoooooO() {
        String str = "ۗۦ۠ۡۖۤۦۚ۬ۗۚۖۗۜۦۜ۫۫ۗۡۖۡۡ۬ۨۧۥۘۘ۫ۜۦۜۢ۬ۜۡۨۘۧۘۦۨۧۘۦۦۡۘۙۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 834) ^ 765) ^ 158) ^ (-144876524)) {
                case -946672416:
                    return;
                case 794645271:
                    str = "ۢ۬ۥۘۧۥۖۘۛۛۢۜ۬ۦۗۨۥۘۖۡۨ۫۬ۘۘۘۚۘۧۘۖۘۖۧۡ۠ۢۥۘۡۜۘ۫ۜۦۘۧۧۥۦۚ۠ۢۢۖۡۜۘۜۗۡ";
                    break;
                case 1116020987:
                    str = "ۢ۬ۥۘۧۥۖۘۛۛۢۜ۬ۦۗۨۥۘۖۡۨ۫۬ۘۘۘۚۘۧۘۖۘۖۧۡ۠ۢۥۘۡۜۘ۫ۜۦۘۧۧۥۦۚ۠ۢۢۖۡۜۘۜۗۡ";
                    break;
                case 1137208368:
                    ((na) this.OooooO0).OooOoO();
                    str = "ۚۜۡۨۚۜۢۛۜۘۖۗۜۘ۠ۜۗۧۡۦۧۢۖۘ۟ۤ۟ۧۥۥۧ۫ۨۤۖۧۘۜ۟ۧ";
                    break;
                case 1268940936:
                    String str2 = "۟ۜۖۘ۫ۚۨۘۘ۬ۦۘۧۨۙ۫ۦۗۙۢۗۤ۬ۥۘۘۨۡۘۧۨۘۨ۬ۢۜۡۖۦ۠ۜ";
                    while (true) {
                        switch (str2.hashCode() ^ (-60725264)) {
                            case -1479181450:
                                str2 = "ۢۤۦۥۥۛ۫۟ۢۨۚۚۡۧۨۥۜۧۘۢۘ۫ۨۛۘۘۦۨۘۢۛۜۘ۠ۧۦۘ۟۬۠ۡۜۧۘۘۢۚ۟۠ۥۧۥۜۘ۟ۙۖۘۤۗۦ";
                                break;
                            case -996629777:
                                str = "۟ۨۘۘۨۘ۠ۖ۟۫ۧۙ۟ۢۗۨۤ۬ۦۡۜۡۘۚۗۨۢۨۙ۬ۧۜۘۚۜۜۘۡ۟ۢ";
                                continue;
                            case 381163392:
                                str = "ۨۘۧۙۡۘۜ۬ۛۙۙۘۘ۟۫۠۠ۘۖۘ۟۠ۦۘۥۧۜۘۚۢ۬ۨۥۙۜۨۥۘۗ۬ۚۘۚۥۖۦۥۘ";
                                continue;
                            case 969590992:
                                String str3 = "ۧۘۥۘۨۚۧۘۗ۠ۛۖۖۘۧ۫ۥۚۨۜۤۛ۠۫ۢۘۘۛۧۢۨۡ۫ۢۜۘۨۢۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1970032922)) {
                                        case -459300135:
                                            str2 = "ۚۢۥ۬ۖۨۙۜۛۜ۟ۧۡۤ۫۟ۙۤ۬ۦۘۡ۟ۛۘۡۜۘۜۖۧۗۘۘ۫ۧۡۘ";
                                            break;
                                        case 1150468830:
                                            str3 = "ۥۢۥۘۖ۬۠ۥ۠ۦ۬ۖۜۘۡ۟ۥۛۖۘۨۦۘۦۚۗ۠ۖۘ۟ۥۡ";
                                            break;
                                        case 1342547817:
                                            str2 = "ۖۘۜۘۙۖۦۘ۫ۜۙۥۖۥۥۙۦۘۥۘ۠۬ۧۖ۫ۖۢ۬ۥۧۘۤۚۜۘ";
                                            break;
                                        case 2140984047:
                                            str3 = AppContext.OooO00o().o0OoOo0 ? "ۜ۟ۜۘۡۧۨ۫ۘۤ۫ۨۚۖۖۘ۠ۚ۬۟۬ۨۚۚۨۙۥۚۦۡۘ۬ۨ۬ۖۢۥۗۖۧ۬ۙ۠ۧۤۢۧۜ۟" : "ۖۗۛۛ۟ۚۚۡۥۗۖۢۙۙۘۜ۟ۖۥ۠ۘ۟ۨۡۜۤۨۘۤۦۜ۟ۥۢۤۨۚۥۦۨۖ۬ۥۘ۠ۦ۟۠۟ۢۦ۬ۖۘۙۗۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1603107181:
                    SystemClock.sleep(200L);
                    str = "ۚۛۦۘۦ۟ۘۘۙۜۧۥ۬ۨۛۜ۬ۥۜۛ۫ۥۖۘۙۚۥۘۚۨۧۧۘۦ";
                    break;
            }
        }
    }

    private void initListener() {
        String str = "ۜۚۖۘ۠ۜ۠۠ۡۡۙۢ۟ۛۦۜۥۧۨ۟ۧۤۘۖۤ۠ۨۧۜۨۨ۟ۨۨۘۖۘۖۤۨ۫۫ۥۘۥ۟ۡۢ۬ۨۢۙۗۢۥۙ";
        while (true) {
            switch ((((str.hashCode() ^ 537) ^ 986) ^ 891) ^ (-1449606950)) {
                case -1843444476:
                    this.o0ooOO0.setOnClickListener(this);
                    str = "۫ۘۛۦۚ۟۫۟۠ۤۨۤۘۡۦ۬ۗۜۘۛۚۚۡۘۧ۫ۥۥۛۦ۬ۜۜۤۤۥۥۨۚۚۨۥۨ";
                    break;
                case -710378983:
                    this.o00o0O.setOnClickListener(this);
                    str = "۠ۡۢۥۧۖۚۛۤۛۛ۠ۖۧۥ۫۟ۥۨۢ۠۟ۗۛۘۘۡ۫ۖۖ۠ۧ۬ۘۛۖۜۘۥ۫ۢ۬ۘۧۘۨۘۖۘۢۛۖ۠۟ۡۘ";
                    break;
                case 580082136:
                    l10.OooO0o().OooOo00(this);
                    str = "ۦۤۜ۠ۖ۠ۢۙۨۗۗۖ۫ۙۛۘۘۦۘۥۤۖۨۥ۟ۚۥۜۘۨۡ۟";
                    break;
                case 962208195:
                    this.o00oO0O.setOnClickListener(this);
                    str = "۫۬ۙۧ۬ۡۙۢۚۦۗۢۙۤۘۘۨۢۧ۟ۡۙ۟۠ۥۘۘ۟ۙۥۡۨۘۢ۟ۦۘۗۨۘۘۛۢ۠ۜۘۛۙۗۡۘۥۤۦ";
                    break;
                case 1233603595:
                    str = "۟ۥۙۡۧۚ۟ۜۧۦۘۥۘۖ۠ۙ۬۬ۗۖۚۧۧۤۙۢ۟ۤۤۚۨ۠ۖۘۗۥۨۦۦۤ۫ۥۚۗ۬ۥۤ۬ۤ";
                    break;
                case 1421171652:
                    return;
            }
        }
    }

    private void o000oOoO() {
        String str = "ۚۚۡۦۛۜۘۥۦۖ۠ۜ۠۟ۙ۫ۙۙۜۘ۠ۙۙۥۨۥۘۢۥۧۘۛۤۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE) ^ 719) ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_VIEW_VALUE) ^ 549724367) {
                case -2084961543:
                    AppContext.OooO00o().OooO();
                    str = "ۜۤ۠۠۠ۡۘۙۙۘۤۢۧۚۖۘۘۦۥۨۘۦۜۘۘۛ۬ۙۡۧۘۘۙۖۜۘۙۙۙ۬ۦۥۘ۟ۙ۬ۘۤۛۨۨۗ۫ۤۛۢۧۜۖ۠ۦ";
                    break;
                case 739048578:
                    return;
                case 1090592117:
                    str = "ۖ۟ۘۘۙۖۨۘۤۗۧۥۜ۫۟ۜۜ۫ۦۘۙۥ۟ۗۚۥ۟ۘۨۘۨۧۗۙۦۜۚ۟ۤۛۧۛۧ۠۫ۨۚ۠ۛۢ";
                    break;
            }
        }
    }

    private void o00O0O(View view) {
        int i = 0;
        String str = "ۛۜۜۨۨ۟ۙ۟۫ۡۦۨۘ۟۠ۖۛ۠ۡۘۡ۫ۨ۫ۥ۟ۘۨۚۚۥۘ";
        float width = 0.0f;
        float f = 0.0f;
        float width2 = 0.0f;
        float x = 0.0f;
        while (true) {
            switch ((((str.hashCode() ^ 602) ^ 891) ^ 735) ^ 1431073916) {
                case -1743807003:
                    String str2 = "ۢۤ۠ۦۢۥۘۢ۬ۚۘۚ۬۬۟ۦۘ۬ۚۚ۫ۙۘۚۡۧۘ۫ۖۢۤۜۙۘ۬ۡۤۤۘۘ۫ۚۢۨ۠۬ۛۖۗۤۜۖۗۖۖۘۡۧۨۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 197808402) {
                            case -1870312790:
                                str = "ۙۗۨۚۚۤۡۤۚۗۖۢۙ۟ۥۛۖۤۗۦۚ۫ۗۡۦۙۘۡۛ۫";
                                continue;
                            case -1790768158:
                                str = "ۚۗۥۤۜۦۘۗۡۙۡۢۨۘ۬۫ۘۚ۫ۦۚۘۨۘۘ۬ۖۨۡ۬ۙۖۚۢۦۘۙۦۤۙ۬ۛۗۡۖۘۢۢۨۙۢۥ۠ۥۘ";
                                continue;
                            case -1790595537:
                                str2 = "ۧۜۦۤۚۥۧۗ۠ۚ۠ۗۖۦۙۗۘۚۡۙۨ۠ۜۘۨ۫ۨۡۙۨ۫ۙۙۜ۬ۖۙ۠ۖۦۧۘۧۦۨۘ۬ۨۤ";
                                break;
                            case 729918441:
                                String str3 = "ۜۚۛۨۖۦۚۨۘۦ۟ۧ۫ۡۜۖ۟ۘۘۛۢۥ۠ۚ۠ۤ۠ۧ۠ۜۡۘۘۜۘۙۛۙ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1618142062)) {
                                        case -1865437253:
                                            str3 = x + width2 < ((float) i) / 2.0f ? "ۘۙۡۘ۬ۧۘۘۚۗ۫۠ۡۖۘۘۥۧۜۢۖۛۤۧۗۛۡۗ۟ۗۡۢۚۨۨۛۨ۫" : "ۛۤۦۘۙۡۨۘۗۚۥۘۘۦۦۘ۟ۥ۬ۙۘۖۤۘۜ۫۫۫ۜۛۧۨۤۧ۠۬ۡ۫۠ۖۙۢۗ۠۟ۖۡۘۖۤۙ۬";
                                            break;
                                        case -936525825:
                                            str2 = "ۥۨۜ۟۫ۘۘۦۥ۬۬ۛۚ۠ۘۜۘۜۖۖۧۙۥۘۗۖۨۥۜۜۘۤ۠ۨ۠۠ۗۜۘ۠ۚۧۡۘۧۖۡۘۙۡۤۘۖۘۘ۫ۦۚۜۦۘ";
                                            break;
                                        case 1029085835:
                                            str2 = "ۡ۬۟۠۟ۖ۠۠ۘۡۘۜۘ۬ۦ۟ۜۡۥۜۖۖ۠ۥۜۘۜۢۜۘۡۜۤۦۦۗۛۨۙۜۜۡ۫ۘۛۧ۫ۜۘۨ۟ۡۘ";
                                            break;
                                        case 1328148659:
                                            str3 = "ۙ۬ۖۖۧۢۜۥۘۘ۠ۦۘۘ۠ۗ۠۠ۢۦ۠۟۠ۛۚۤۨۚۚۢۡ۫ۢۡۘ۬۟ۡۘۚ۠ۛۜۤۢۛۛۤۖۛۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1638937156:
                    return;
                case -1587049692:
                    width = i - view.getWidth();
                    str = "ۘۘۧۘ۠۟ۗۥۜ۠ۜ۬۟۠ۗۥۚۗۡۘۜۨۛ۫ۡۘ۫ۙ۟۫ۤۘ";
                    break;
                case -1543429797:
                    width2 = view.getWidth() / 2.0f;
                    str = "ۛۧۧۥ۠ۗۖ۬ۨۘۨۛۛۖ۟ۥۥۡۖۘۗۨۨ۫ۨۦۘ۬ۨۦ۠ۘۢۖ۬ۛۗۙۦ۫ۖۘۙۗ";
                    break;
                case -1087326200:
                    str = "۟ۘۖ۬ۧۦۘۗۚۛۥۛۚۙۢ۬۬ۜۖۘۧۧۘۘۚۙۘۘ۠ۨۙۥۤۡۘ۟ۦۧۘۗۤۘۗۙ۫۟ۨۜۖۗۛۘۖۡۘ۟ۘۨۘۛۗ۫";
                    f = 0.0f;
                    break;
                case -980068921:
                    str = "۬ۢۗ۬ۙۦۢ۟ۨ۬ۧۖۢۜۡۖ۟ۥ۠ۜۘۤۘۨۘۗ۟ۡۘۘ";
                    break;
                case -818383488:
                    view.animate().x(f).setDuration(300L).start();
                    str = "۟ۙ۫ۜ۬ۨۦ۬ۙۜۤۜۘ۫۫ۘۡۚۖۘۚۥۚۜۜۖ۟ۗۦ۬ۦۦۢۘۛۘۨۗۢۢۢۗۙۘ";
                    break;
                case -234313534:
                    x = view.getX();
                    str = "ۜ۫ۗۤۤۦۜۖۧۘۤ۟ۥۘۤ۟ۨ۟ۖۨۧۚۨۗۥۦۦۨۨۘ۬ۨ۟ۦ۟ۡۘۦ۬۬ۧۜۚۥۜۘۘ";
                    break;
                case 68202196:
                    str = "ۚۙۦۘ۠۫۬ۥۨۗۡ۠ۨۚۨۧۗۗۢ۠ۧۛۘۨۥۘۤ۫ۡۘۨۥۙۤۨۢۦۘۖۜۜۙ۠ۙۗ";
                    break;
                case 954507680:
                    str = "۟ۢۗۤ۟ۡۘۡۘۖۜۤۥ۟ۜۗ۟۠ۙۢ۠ۧۜ۬ۨ۠ۗۜۘۤۛۗۛۢۧۦۗۥ۟ۛۨۦۖۤۛۖۛۚۦۛۖۡۘ۫ۛ۠";
                    break;
                case 1581111113:
                    str = "ۧۜۧۘ۟ۖۜۘ۬ۖ۟۬ۗۜۘۦۙۢ۫ۡ۫ۙۖۡۘۛۧۤۛۢۡۜۢۥۜۘۨۘۚۧۜۘۧۤۡۚ۬ۡۘۢۦۦۘۢۥۧۘ";
                    break;
                case 1714034228:
                    str = "ۧۜۧۘ۟ۖۜۘ۬ۖ۟۬ۗۜۘۦۙۢ۫ۡ۫ۙۖۡۘۛۧۤۛۢۡۜۢۥۜۘۨۘۚۧۜۘۧۤۡۚ۬ۡۘۢۦۦۘۢۥۧۘ";
                    f = width;
                    break;
                case 2141803517:
                    i = this.Ooooooo;
                    str = "ۜۥۖۙۡۨۘۗۡۡۨۡۥۚۧۜۧۢۖۘ۬ۡۡۡ۬ۖۢۖۖۖۜۤۖۖۘۨ۫۬ۚۥۜۡۡۚ";
                    break;
            }
        }
    }

    public static void o00Oo0(Context context) {
        Intent intent = null;
        String str = "ۧۦۨۘۤ۠ۡۗۛۢۤۛۦۘ۠ۖۖۢۘۖۧۥۜ۠ۙۡۡۘۥۜۧۥۘۖ۬ۘۘۨ۬ۘۗ۟۟۟ۧۘ۬ۙۡۤۨۘ۫ۚۖۡۨۧ";
        while (true) {
            switch ((((str.hashCode() ^ 460) ^ 583) ^ 825) ^ (-1850190775)) {
                case -2092325741:
                    intent.addFlags(268435456);
                    str = "ۙ۬ۢۖۤۖۘۗۡۗ۠۬ۧ۠ۡۥۢ۫ۡ۬۫۠ۢ۫۬ۦۘۦۙۥ۫ۜۗۘۧۦ";
                    break;
                case -1585134603:
                    context.startActivity(intent);
                    str = "ۦۤۨۨۜۘۘۢۥۚۥۥۧۘۜۦۤۖۤۥ۫ۗۗ۬ۨۘ۬۟۟ۛۦۡ";
                    break;
                case -1525922823:
                    return;
                case -994718543:
                    intent = new Intent(context, (Class<?>) ElfinFreeActivity.class);
                    str = "۬ۜۢۙ۬ۥۥۡۖۗۖۤۙ۬ۢۜۨۧۥۖۜۚۡۢۤۨۖۦ۟۬";
                    break;
                case -775487452:
                    str = "ۨۦۚۗۜۦۘ۬ۗۥۘۗۛۥۚۜۜۘۤ۬ۚۛۦ۫ۗ۟۟ۚ۬ۘۘۜۡۜ";
                    break;
            }
        }
    }

    private void o00Ooo(float f, float f2) {
        String str = "ۛ۟ۡۘ۫ۨۦۖۘۙۙۘۘۚۥۖۘۡ۬ۢۚۦۜۘۨۧۖۜۗۜۘۖ۬ۤ۟ۘۜۥۜۜ۟ۥۡۘۜۛۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 349) ^ 871) ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ 2016133096) {
                case -1676377274:
                    return;
                case -747377042:
                    str = "ۜ۬ۗۧۖۦۧۖۘۡ۫ۨۘۦۖۢۜۛۤ۠ۥۘ۟۫ۧۢ۟ۤۦ۫۟ۡۚۘۙۨۨۚ۫ۜۘۨ۟ۧ۠ۘۗ۟ۡ";
                    break;
                case 975554209:
                    this.OooooOo.post(new OooO0o(this, f, f2));
                    str = "ۤۖ۫۟ۦۦۛۖ۠۠ۖۘ۟ۢۖۘۦۖ۠ۜۤۤۨۜۥۤۤ۠۬";
                    break;
                case 1049514584:
                    str = "ۛۦۡۘۦۦۛۖۘۜۙۜۦۘۖ۫ۛ۟۠۠ۥ۬ۦۘۢۛۖۘۖ۫ۚۛۗۗۦۧۜۜۘۢۨۖ۟ۤ۫ۦ۬ۤۗۧۚۥۘۧۤۚۤ۟ۦ";
                    break;
                case 1603954390:
                    str = "ۥۚۜۘۗۜۧۧۤۦۘ۠ۦۤۢۨ۠ۥۜۨ۟ۙۖۗۙۘۘۨۛۛۡ۫ۗ";
                    break;
            }
        }
    }

    private void o0OoOo0() {
        String str;
        String str2;
        String str3 = "۬ۧۦ۠ۘۗۦۡۦ۫ۛۖۘۥ۠ۦۥۜۡۘۘۨۗۧۘۖۘ۟ۦ۫۬ۢۨۘ۬ۢۧۧۜۜ";
        while (true) {
            try {
                switch (str3.hashCode() ^ (-744934759)) {
                    case 75231996:
                        y4.OooO0OO("setenforce 0", true, 0);
                        x4.OooO0O0().OooO0o(f6.OooOooO, Boolean.TRUE);
                        getPackageName();
                        j4.OooOO0O(Environment.getExternalStorageDirectory().getAbsolutePath(), g6.OooOo0);
                        boolean zOooO0O0 = a4.OooO0O0(getApplicationContext(), g6.OooOo0, "/sdcard/app-release.apk");
                        int i = Build.VERSION.SDK_INT;
                        String str4 = "ۗۥۜۘۤۥۜۘ۬ۨۘۗ۬ۖ۬ۚۦۙۥۖۗ۫ۛۜۘۗۖۡۘۢۜۖۘ";
                        while (true) {
                            switch (str4.hashCode() ^ 1753744532) {
                                case -2041462693:
                                    str = "app";
                                    break;
                                case -567780519:
                                    str = "priv-app";
                                    break;
                                case 63765635:
                                    String str5 = "۠۠ۘۖ۟ۡ۟ۨۗۗۗۜۧۚ۫۟ۛۘۘۢۛۡۘۥۙۜۘۚ۫ۖۚۖۨۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 420618165) {
                                            case -1267641688:
                                                str4 = "۟۟ۦ۠ۜۦۦۧۥۘۢۦۘۨۗۚ۠ۖۥۘۢۨۧۘۗۗۡۦ۫ۦۘۨۢۡۘۡ۟ۡۘۢ۫ۘ۬ۛ۠۠ۢۖۘ۟۫ۘۘۥۢۨۘۥۡ۟۬ۖۦ";
                                                continue;
                                                continue;
                                            case -1177354307:
                                                str5 = "ۤ۟ۡۘۚ۬ۡۤۗ۟۟ۡۨۘۡۖۥۥۡۧۘۖۗۘۘۧۖۘۘۧۘۥۘۥۘۨۘۧۤۖۡۨۨۘ";
                                                break;
                                            case -633337829:
                                                str4 = "ۗۘۥۘۨۖ۫ۖۚۥۘۥۘۨۘۙۨۦۘۧۘۜۜۛۥۘۜ۫ۢ۠۠ۜۘۤۤۘ۬۟ۦۘۖۛۡ۟ۙ۫ۡۦۘۥۖۛۤ۠ۜ";
                                                continue;
                                            case 302080478:
                                                str5 = i > 19 ? "ۤۘۖۘۧۜ۫ۘۨۨ۬ۧۗۗۦۘۘ۠۠۠ۨۙۖۤۦۘۥۥ۟ۛۦۛۧۥۨۥۘ" : "ۛۢۨۥۢ۠ۥۖۥۦۘۙۢۛۧۨۘۨۛۤۤۚۘۥۘۜۧۥۘۨۢۘۘۢۘۘۘ۟ۨ۫ۦۤۖۘۥۧۦ۫۬ۜۘۚۜۤ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1571660723:
                                    str4 = "ۗۨۚ۫ۢۡۘ۬ۛ۟ۧۛۧۙۧۧۢۛ۟ۥۦۥ۬ۙ۫ۧۡۘۛ۬ۦۘۨۦ۟۬ۜ۬ۜۚۦۘ۬ۖۤ";
                                    continue;
                            }
                        }
                        String str6 = "pushApkToSystemApp --> filePath=/sdcard/app-release.apk,copyAppResult=" + zOooO0O0;
                        StringBuilder sb = new StringBuilder();
                        sb.append("mount -o remount,rw /");
                        String str7 = "۟ۥۤۗۥۙۦ۟ۚۥۢۥۘ۟۟۟ۦ۠ۛ۬ۛۛۦۗۜۘۦۜۛۛۛۥۘۡۛۚ۬ۘۖۘۖۘۖۘۘۖۨۘ";
                        while (true) {
                            switch (str7.hashCode() ^ 1638443738) {
                                case -2028680645:
                                    str2 = "system";
                                    break;
                                case -277162097:
                                    str2 = "";
                                    break;
                                case 571168391:
                                    str7 = "ۖۚۨ۫ۛ۫۠ۧ۟ۦۤۜ۫۟ۚۦۖۥۖۘۜۗۗ۬ۨۘۙۚ۬ۢۨۧۢۙ۫ۦ۟۠۠ۗۦۚۨۘۡۗۥۘۧۥ۫ۘ۬ۛ";
                                    continue;
                                case 1189570369:
                                    String str8 = "ۗۚۨۜۚۜۘۖ۬۠ۦۚ۟ۙۘۧۘۦۙۚۖۧ۟ۙۜۤۚۢۘۘۙۧۧ";
                                    while (true) {
                                        switch (str8.hashCode() ^ (-929475809)) {
                                            case -1780115869:
                                                str7 = "ۥۢ۟ۘ۬۠ۚۧۙۨۘۘ۠ۡ۬۬ۖ۟۫ۚۖۙۡۙۡۘۡۘۜۛۦۨۦۧۘۖۡۨۘۥ۫ۧ۬ۦۖۥۢۘۘۘۖۖۘ";
                                                continue;
                                            case 1045651629:
                                                str8 = "ۨۤۥۖۚۢۧۤۤۖۘۨۙ۠۠ۤۥۧۘۚ۬ۛۙۛۜۘۚۙ۬ۘۨۢۘۢۖ۬ۙۤ";
                                                break;
                                            case 1271848824:
                                                str8 = i != 28 ? "ۙۜۜ۬ۨۡۨ۠۬۬ۧۥۘ۫۟ۨ۟ۢ۬۫ۚۚۥۚ۟ۦۤۗ۫" : "ۦ۬ۜۘۦۡۤۗۛۢ۫ۡۙۦۧۥۤۡۗۦۛۘۢۥۜۘۛۙۚۖۛۡۢۧۗ۬ۖ۫ۜۦ۫ۦ۟ۦۛ۟ۡۖۛۢۚۙۖۙۢۗ";
                                                break;
                                            case 1297774623:
                                                str7 = "ۤۘۖۜۡۧ۫ۡۥۚۗ۫ۘۥۚ۠ۨ۫ۤۖۖۘۘۢۚۡۧۘۨۗ۬ۢۢۚ۠ۥۘۨۨۧۘۜۨۥ";
                                                continue;
                                                continue;
                                        }
                                    }
                                    break;
                            }
                        }
                        sb.append(str2);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("cat ");
                        sb2.append("/sdcard/app-release.apk");
                        sb2.append(" > /system/");
                        sb2.append(str);
                        String str9 = File.separator;
                        sb2.append(str9);
                        sb2.append(g6.OooOo0);
                        y4.OooO00o oooO00oOooO0oO = y4.OooO0oO(new String[]{sb.toString(), "chmod 777 /system", "chmod 777 /system/" + str, sb2.toString(), "chmod 777 /system/" + str + str9 + g6.OooOo0, "mount -o remount,ro /"}, true, 0);
                        boolean zIsEmpty = TextUtils.isEmpty(oooO00oOooO0oO.OooO0OO);
                        x4.OooO0O0().OooO0o(f6.OooOooO, Boolean.valueOf(zIsEmpty));
                        String str10 = "pushApkToSystemApp --> errorMsg=" + oooO00oOooO0oO.OooO0OO + ",successMsg=" + oooO00oOooO0oO.OooO0O0 + ",cmdResult=" + zIsEmpty;
                        String str11 = "ۘۘۡۘۨ۠۠ۜۚۜۘۛۛۘۘۧۧۨۧۙۨۘۛۚۖۡۚۨۚۤۜ۫ۧۘۘ۫ۙۢۧ۬ۨ";
                        while (true) {
                            switch (str11.hashCode() ^ (-1899919230)) {
                                case 656871922:
                                    y4.OooO0OO("pm uninstall com.cyjh.startapp", true, 0);
                                    return;
                                case 1098026180:
                                    String str12 = "ۙۚۖۙۤۙ۬ۥۚۦۢۦۥ۟ۥۘ۟۟ۡ۠ۡۧۚ۫ۚ۬۬ۥۜ۬ۥۨ۠ۡۘۧۗۘۘۧ۫ۙۤۗۥۘۢۘۤۛۨۘۘۨۤۥۘۖۥۘ";
                                    while (true) {
                                        switch (str12.hashCode() ^ 1044309953) {
                                            case -2105953161:
                                                str12 = "ۧۦۡۥۤ۠ۥۛۙۛۤۜۥۢۥۥۦۥۤ۟۠ۦۦۦۘۘ۫ۢۧۘۥۘۗۜ۬ۤۘۥۖۚۥ۠ۙۢۧۘۖۥ۠";
                                                break;
                                            case -1405433769:
                                                str12 = !o8.OooO0o0(this, "com.cyjh.startapp") ? "ۖۗۦۘ۠۫۟ۡ۟ۗۨۡۨۘۙۗۖۧ۫ۨۘ۠ۖۧۘۢ۠ۤۙۚۨۘۜۚ۬" : "ۨ۬۬ۡۥۦۘ۫ۡۧۚۨۡۘۗۜۧۘۤۗۖ۟ۤۦۘۘۖۧۘ۟ۖ۫۠۠ۖۚۤۦۘ۠ۢۤۤۜۖ۫ۥۘۢ۠۫ۧۥۘ";
                                                break;
                                            case 1348904296:
                                                str11 = "۠ۜۖۘ۟ۨۢۖۜۗ۬۠ۨۛۘۤۖۖۘۡۥۨۘۙۥۧۡۘۦۘۙۨۨۘۘۨۖۨۜۜۘۗۚۘۨۡۡ";
                                                continue;
                                            case 1917110790:
                                                str11 = "ۖ۟ۦۨۘ۬ۛۙۦۦۢۡۘۥۨۚۖۚ۠ۡۨۘۛۤۙۢۢۦۘۡۘۚۜۤ۟ۛۢۧۨۙۖۛۥۢ";
                                                continue;
                                                continue;
                                        }
                                    }
                                    break;
                                case 2004232975:
                                    str11 = "ۙۘۢۜۖ۬ۖۚ۟ۧۥۡۘ۠ۙۖۘۧۡۥۦۚۥۙ۫۟۠ۢۘۘ۟ۜ۠ۨ۠۠ۧۥۧۜۥۖۘۚۡۙ";
                                    continue;
                                case 2144671499:
                                    return;
                                default:
                                    continue;
                            }
                        }
                        break;
                    case 340009025:
                        return;
                    case 582144975:
                        String str13 = "ۤۙۥۘۤۖ۟۫۠ۢ۬ۥ۫ۘۡۦۘ۫ۡ۠۠۠ۛۚۘ۟ۙۢ۠ۜۥۘ۫ۡ۠ۖ";
                        while (true) {
                            switch (str13.hashCode() ^ (-1157194302)) {
                                case -127929844:
                                    str13 = "۟ۙۦۘۨۥۛ۟ۧۛۡۧۗۛ۬ۗ۫ۧۡۘۚۖۖۙۖۥۙۖۧۨۡۡۥۙ۫ۡۦ۟";
                                    break;
                                case 716075386:
                                    str3 = "ۤۡۤۨۛۨۤۛۛۛۢ۟ۚ۬۫ۘۛ۠ۤ۬ۗ۫ۛۥۛۢۥۨۜۙ";
                                    continue;
                                case 1038095533:
                                    str13 = !x4.OooO0O0().OooO00o(f6.OooOooO, Boolean.FALSE) ? "۟ۡۤۡۨۚۨ۠ۗۜۗ۠ۙۘۨۘۤۛۖۘ۫ۡۤۘ۠ۥۚۡۘۢۖۚ۟ۚ۟ۗۧۡۗۨۜۘ۟ۘۤ" : "ۘۨۦۗ۠۟۟ۜۦۘۤۛۖ۫ۢۨۘ۠۟ۛۧ۟ۨۛۦۢۗۛۨۘۢۦۖۘ۬ۧۜۢۚ";
                                    break;
                                case 1117347601:
                                    str3 = "ۦۗۧۗۜۜۘۡ۠ۦۘۜۗۗۢۘۘۗۧۘ۫ۨۚۡۛۡۛۢۦ۠ۧۨۙ۟۟۫";
                                    continue;
                                    continue;
                            }
                        }
                        break;
                    case 1751223914:
                        str3 = "ۚۖۨۘۚۤۧۧۙۜۘۜۜۘۡۡ۟ۗۙۛۘۗۗ۠ۖۘ۬ۙ۬ۚۦۥ۬ۗ۠ۙۖۖۘ۠ۥۡ۬۟ۥۢۧۨۢۥۘ";
                        continue;
                    default:
                        continue;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
            e.printStackTrace();
            return;
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void OooO() {
        String str = "ۦۤ۠ۖۨۚۤۚۖۥۚۘۘۙۘۡۧۤۘ۬ۛۚۚۨۜ۠ۛ۟ۦۡۘ۟ۦ۬ۖۤ۟";
        while (true) {
            switch ((((str.hashCode() ^ mobi.oneway.export.a.e) ^ 970) ^ 525) ^ (-709054986)) {
                case -1025858274:
                    ((na) this.OooooO0).OooOoo0().observe(this, new OooOo00(this));
                    str = "۫ۦۢۛۧۦۘۖۘۖۘۦۗۖۘۜۜۖۘۡۜۢ۬ۙۖۤ۠ۦۘۤ۫ۤۥۖۛۦ۠۬۬۠ۘۘ";
                    break;
                case -942251924:
                    ((na) this.OooooO0).Oooo000().observe(this, new OooOOO(this));
                    str = "ۡۙ۠ۦۢۛۡۡ۠ۦۛۘۘ۫۫۬ۗۢۜۘۢۦۡۘ۟ۘۖۘۨۡۙ۫ۗۖۨۨۤ۠ۦۖ";
                    break;
                case -670191091:
                    return;
                case 882652583:
                    ((na) this.OooooO0).OooOoo().observe(this, new OooOOOO(this));
                    str = "۟۟ۤ۟۫ۙۘۗۜۘۥۘۧۥۗۖۚ۟ۚۢۖۘۛۢۡۘ۫ۖ۠ۜۘ۫ۧۛۙۤ۬ۖۘۦۤۦۘۢۧۛۨ۫۫ۜ۬ۦۘ";
                    break;
                case 961900726:
                    str = "ۡۨۛۖۦ۠۟ۘۡۖۡۥۘۦۚۘۘۧۗۡۨۘۙۦ۠ۗۛۚۦۛ۫ۥۥۖۘ۬ۗ۠";
                    break;
                case 1904996197:
                    ((na) this.OooooO0).OooOooo().observe(this, new OooOOO0(this));
                    str = "ۢۛۨ۠ۗۘۗۡۙۥۤۖۡۖۘۘۦۢۧۡۙۥۘۧۥۜۤۥۨۢۘۤ۫۬ۛۛۖۡ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public int OooO0oO() {
        String str = "ۖۙۜۛۙۥۘۧۡۡۤ۠ۥۘۨۦۛ۠۠ۢۛۗۘۧۧ۫ۤۗ۬ۢۙۦۢ۬ۚۥ۟ۖ";
        while (true) {
            switch ((((str.hashCode() ^ 510) ^ 736) ^ 851) ^ (-1205034560)) {
                case -1855956753:
                    str = "۠ۡۘۗۦۨۨۦۥۘۨ۟ۜۛۖۘۘۖۗۜۚۘۗ۫ۤۘ۟ۢۥۘۖۦ";
                    break;
                case 503044311:
                    return R.layout.activity_main;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public Class<na> OooO0oo() {
        String str = "ۘۙۡۘۧ۬۫ۨۜۖ۫ۙۦۥۗۛۜۗۡ۬ۥۘۛۢ۠ۖۘ۟۬ۦۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 38) ^ me.o0000O00) ^ 868) ^ (-1574077407)) {
                case -1108185387:
                    return na.class;
                case 1247244098:
                    str = "ۢۜۖۘۤۜۘۘۘۢۗۥ۫ۖۘۤ۠ۦۘۙۧۛۤۡۥ۫ۥۤۙۙ۟۠ۦ۬ۤۖۡ۬ۨ";
                    break;
            }
        }
    }

    public void OoooO() {
        String str = "ۛ۟۬ۙۨۚۤۖۘۢ۟ۙۥ۫ۨۡۤۛۥۗۢۡۘۢ۬ۜۧۘۖۤۙ";
        while (true) {
            switch ((((str.hashCode() ^ 916) ^ 279) ^ 373) ^ (-1156472176)) {
                case -1610364789:
                    ThreadUtils.OooOO0O(new Oooo000(this, new r6(this)));
                    str = "ۥۨۥۘۜ۬ۥۘۧۘۖۘۧۗۜۥۡ۟ۗ۫ۥۜۗۘۘ۬ۜۥۘۙۤۡۙۡ";
                    break;
                case -758997132:
                    return;
                case 2004004294:
                    str = "ۤۤۖ۫ۥۘۘۖۙۜۤۤۜۡۢۖ۫۬ۡۘۢۨۘۚۜۦۙۗۦۘ۬ۖۦۚۜ۫ۥۥۗۧ۠ۥۘۜ۟ۨۘ";
                    break;
            }
        }
    }

    public void OoooOO0() {
        String str = "ۤۦۜۘۢۨۥۘۨۥۦۢ۠ۧ۫ۦۘۦۖۖۖۘۖۥ۫۟۠ۥۖۜۙۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 865) ^ 233) ^ as.OooO0O0) ^ 1033606565) {
                case -1728087937:
                    return;
                case -1283925562:
                    new Oooo0(this, null).executeOnExecutor(Executors.newCachedThreadPool(), new InputStream[0]);
                    str = "ۜ۠ۡۘۧ۟ۘ۬ۦۨۘۗۤۦۚۧۜۘ۟ۦۨۛۦۙۖۛۥۘۛۚ۫ۨۦۘۘ";
                    break;
                case 278859734:
                    str = "ۢ۟ۗۡ۫ۢۜ۠ۨۜ۠ۚ۬ۖۗۘۥۘۥۖۡۚۗۙ۟ۡۡۘ۟ۙ۬ۜۦۚ۬ۨۧۘۦۚۙۖ۠ۜۘۦ۟ۨۘۗۜۨۘ";
                    break;
            }
        }
    }

    public void OooooOO() {
        String str = "ۘۡ۟ۙ۟ۗۥۙۙۙۦۛ۟ۢۨۘۡ۠ۦۘ۬ۤۘۖۛۡۘۜۡۡۤۖۙ۠ۥۢۥۢۘۨۥۚۚۜۨۨۛۡۘۧۖۧۘۢۧۨ۫ۛۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 618) ^ 588) ^ 60) ^ (-2066721609)) {
                case -1592878194:
                    return;
                case -1138000813:
                    this.o00Ooo.setVisibility(0);
                    str = "ۤ۫۠ۢۗۧۜۚۚۙۦۡۡۧۡۘ۟ۘۖ۟۠ۨۘ۫ۜۘۚۘۜۘۥۤۖ۫ۛۚۢۘ۬ۚۥۨۚۗۜۘۛۛۖۧۦۖۘ";
                    break;
                case 426728734:
                    str = "ۢۗۜۘۤۚۛۢۡۘۤ۬ۨۚۚۛۦۖۘۘ۫ۦۘۘ۠ۗۖ۟ۘۜۘۦۢۢ۫ۧۜۙۛۦۢۦۘۗۘۘ";
                    break;
                case 752311145:
                    String str2 = "ۡۚۢۜ۟ۦۘۘ۫ۦۗۨۡۥۥۚۗۙۖۤۨ۠۟ۦۨۘۗۥۚ۠۠ۥۚۤۚۜ۫ۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 290282651) {
                            case 29685716:
                                str2 = "ۜۗۥۘ۠ۡۖۘۜۢۚۙۛۦۘۖۢ۟۠۬۬۫ۜۨۘۢ۟ۥۡۚۖۘۦۨۦۘۦ۟ۡۘۗۨۥۛ۬ۖ۫ۜۚۖۗۛۧۚۨ";
                                break;
                            case 1102793761:
                                String str3 = "ۨۢۖ۫ۜۙ۠۫ۜۘۗۜۢۢۧۧۨۥۖۛۛۦۥۢ۠ۡۥۘۦۦۡۘۛۜۜۘۥۥ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1830390889) {
                                        case -1708073720:
                                            str3 = "ۦۤۖۥۚۨۙ۫ۥ۠ۛۥۘۗۖۨۘ۫ۘۘ۬ۦۗۖۨۘ۫ۡۛۖۤۛ۬ۧۦۘۜۜۡ";
                                            break;
                                        case -316088541:
                                            str3 = x4.OooO0O0().OooO00o(g6.OooO0o0, Boolean.FALSE) ? "ۛۤ۬ۨۘۖ۠ۧ۬۬ۙۘۜۦۙۤۗۖ۬ۛ۫۟۠ۤۨۛۛۨۢۥۘ۬ۥۡۘۨ۬۟ۡۤۘۘۦۛۖۘۙۛۖۜۜ۟ۢۛۗۦۨ" : "ۡ۬ۤۨۥۢۧۧۨۚۧۘۡۖۧۘ۫ۨۡ۠ۗۖۢ۠۬ۧۖۜۘۦ۟ۛ";
                                            break;
                                        case 796678884:
                                            str2 = "ۥ۠ۨۙۥۖۨۤۛۢۘۗۚۦۥ۬ۚۥۘۤۡۖۨ۬۫ۨۤ۫ۢۜۜۢۙۥۜۤۜۘۨۥ۠۟ۘۤ۠ۗۚۤ۬ۖۘ";
                                            break;
                                        case 2088635760:
                                            str2 = "ۘ۫ۖۘۨۛۜۙۦ۫ۦۖۛۦۖ۟ۨ۫۫ۥۗۥۘۘۤۡ۟ۨۜۘۥۖۨۨۗۜۤۛۥۘ۫ۚۡۥۢ۫۠ۗۥۧۥۤ";
                                            break;
                                    }
                                }
                                break;
                            case 1698392404:
                                str = "ۤ۫۠ۢۗۧۜۚۚۙۦۡۡۧۡۘ۟ۘۖ۟۠ۨۘ۫ۜۘۚۘۜۘۥۤۖ۫ۛۚۢۘ۬ۚۥۨۚۗۜۘۛۛۖۧۦۖۘ";
                                continue;
                            case 2118997162:
                                str = "ۥۦۦۘ۫ۨۥۡۛۛ۟ۦۧۘۦۗۖۘۤۢۙۤۧۛۜۗۨۘۖۖۢۤۡۙۥۨۨۘۤۢۨ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    public /* synthetic */ void Oooooo() {
        String str = "ۥۥۚۥۡۧۘ۫ۘۘۥ۬ۡۘۗۖ۠ۡ۟۟۫ۚۨۘۗۙۖۚۗۨ۫ۦۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 284) ^ 665) ^ 637) ^ (-1810293033)) {
                case -1267643782:
                    str = "ۧۧۡۘۡ۫ۥۙ۠ۙۢۥۤۜۖۘ۟ۥۦۛۛۡۘۙۗ۠ۤۚۙ۠ۖۚۚ۫ۖ۬ۜۧ۫ۜۧۛۛۜۨۜۥ۠۟ۢ";
                    break;
                case -1055703735:
                    return;
                case 1824197198:
                    Oooooo0();
                    str = "۬ۡۛ۫ۨۡۘۖۨ۟ۧۙ۟ۙۛۘۘۦۖۧ۫۠ۚۦۥۚۘۢ۬ۛۥ۬۟ۦۘۘ۠ۗۘ۬ۘۗۡۥ";
                    break;
            }
        }
    }

    public /* synthetic */ void Ooooooo() {
        String str = "ۨۡۡۥۤۗۤ۟ۧۡۢۗۙۡۗۢۗۖۛۤۘۘۥۙۨۧۥۘ۬ۗۨ";
        while (true) {
            switch ((((str.hashCode() ^ 293) ^ 30) ^ 161) ^ (-1743173104)) {
                case -230190697:
                    return;
                case 422461032:
                    str = "۫۫ۚۤۗۡ۟ۗۖۢۗۘۜۘۜۘۘۚۥۤۡۗ۠ۥۖۘۤ۫۟ۨ۫ۗۘۤۛۤۚۗ۟ۖۜ۟ۗۖۗۤ۠۬ۥۢ";
                    break;
                case 1788418054:
                    OoooooO();
                    str = "ۦۘ۠ۡ۠ۤ۬ۘ۟ۛۧ۫ۦ۟ۙۙۚۗۥۡۦۘۧ۟ۤ۬ۥۘۖۚۛ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void initView() {
        String str = "ۛۖۘۜ۬ۖۚۜۧۘۜۗ۠۫ۚۛۙۢۚۗۗۙ۫ۜۘۗۙۡۜ۫ۖۤ۬ۚ۠ۖۥۘۖۗ۫ۥ۫ۙۦۚۢ۬ۘۥ";
        while (true) {
            switch ((((str.hashCode() ^ 499) ^ 321) ^ 284) ^ 1098156122) {
                case -1812033243:
                    this.o00o0O = (TextView) findViewById(R.id.tab_recommend_games);
                    str = "ۛۖۜۘۛۚۥۘۜ۟ۤۢۧ۟ۗۙۨ۠۫ۗۚۧۘۛۗۘ۟ۧۦۡۘ۫۟ۨۘۛۜۥۘۚۖۤۚۨۘۘ";
                    break;
                case -1709438518:
                    this.o0ooOO0 = (ImageView) findViewById(R.id.id_img_setting);
                    str = "ۦۚۨۢۨۧۘۖۗۗۨۡۗۥ۬ۦۦۖ۫ۙۛۘۨۛۡۥ۟ۧۢۘ";
                    break;
                case -1154940408:
                    this.o00Ooo = (ImageView) findViewById(R.id.id_img_dot);
                    str = "ۧ۟ۤۗۙۨ۫ۛۥۘۢۧۥۨۘۨ۟۫ۛۙۢۜۙۦۥۦۖۡۨۥۢۛ۬ۗۖۛۘۖ۫۫ۜۙۤۜۖۗۥۨۛ";
                    break;
                case 710516534:
                    return;
                case 997378776:
                    this.o00oO0O = (ImageView) findViewById(R.id.id_img_msg);
                    str = "ۚ۬ۖۛۤۨۚ۟ۦۘۛۥۨۖ۫ۦۨۘۥۘۚ۟ۡۜۖۨ۠ۜۘۗۤۙ";
                    break;
                case 1615482527:
                    str = "ۨۡۦۘۘ۬ۧ۬ۖۜۗۖۧۘۥ۫ۜۘۘۨۖۘ۫۠ۡۘۥۗ۟۟ۤۖۘۗۙۤۨۦۚۢۘ۠ۘۨۘۚ۠ۘۘ";
                    break;
                case 1650279564:
                    getWindow().setSoftInputMode(48);
                    str = "۠ۖ۟ۧ۠ۨۘۗ۫۠۟۫ۧۛ۠ۥۘ۟ۛۜۘۦۦۦۘۨۢۛۢۘۤۦۦ۫ۤۖۖۦۡۛۗۤۢ۫ۘۖۘۖۗۥۘۗۢۨۘۥ۬ۘۢۘۥۘ";
                    break;
                case 1979603102:
                    this.o00oO0o = (TextView) findViewById(R.id.tv_resolution_unsupport);
                    str = "ۤۗۦۘۗۢۨۥۤۡۘۡۤۨ۠ۖ۠۠ۧ۟ۙۛۧۡۛۖ۠ۤۦ۬ۥۥۘۨۧۙۥۛۧۗۥۦۘۢۥ۠۠ۢۙۦۙۧ";
                    break;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0016. Please report as an issue. */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = "ۢۨۚۖ۬ۥۡۧۢۡۢۡۨۡۘۘۧ۟۠۫ۨۡۥۘۜ۫ۛۥۘۢ۠ۘۘۖۦۦۘ۠ۙۖۘۦۗۙۜۘۧۘ۠۫ۡۛۦۡ۫ۘۘۘ۫۠";
        Intent intent2 = null;
        String string = null;
        StringBuilder sb = null;
        while (true) {
            switch ((((str.hashCode() ^ 809) ^ 895) ^ FrameMetricsAggregator.EVERY_DURATION) ^ (-351878271)) {
                case -2129891771:
                    intent2.setFlags(1);
                    str = "ۚۦۡۘۖۘۤۤۧۡۘۜۢۨۙۙ۟۟۫ۡ۟۬ۢۨۘۤۨۥۥۡ";
                    break;
                case -1953420037:
                    sb.append(Environment.getExternalStorageDirectory());
                    str = "ۙۙۧۘ۫ۜۨۧۨۘۛ۬ۙۡۜۜۘۙۨۦۜۢۨۨۨۘ۬ۘ۬۠ۖۖۡ۫ۨۛ۠ۨۥۧۦۢۥۥ۬ۡۦ۠۫ۧ";
                    break;
                case -1754037979:
                    sb.append(File.separator);
                    str = "ۨۜۧۘۧۛۘ۠ۘۘۘۦ۟ۡۘۙ۠ۥۘۦۚۙۥ۫ۨۘ۬ۖۨۙۘ۟ۙ۫ۘۢۗۛۛۨۘۘۡۙۡۘۘ۫ۚۥ۠ۨۨۜۖۡۘۗ۬۫";
                    break;
                case -1631052080:
                    String str2 = "ۦۦۖۘۙۛۗۛۤۖ۠ۛۦ۟ۥۥۡۦۢۛۥۙ۟ۜ۠ۗۨۛۦۨۤ۟۟ۙ۬ۨۨۘۤۢۜۘۡ۫ۜۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 2005688885) {
                            case -19727647:
                                str2 = "ۜ۫ۨۘۦ۠ۤۗۨۘۧۙۖۗ۫ۜ۫ۥۡۘۧۥۜ۟۬ۜ۟ۨ۟ۜ۠۫ۚۘۛۘۘۨ";
                                break;
                            case 970305503:
                                String str3 = "ۦۙۜۘۗ۠ۘۘۛ۟ۡۘۜۦۛۘۖۦۘۙۜ۬ۢۢ۠ۥۧ۫ۦ۬ۛۚ۫ۚۤۦۡۘۦۢۡۦۙۨۡۦۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-748536421)) {
                                        case -577790963:
                                            str3 = i == 2 ? "ۗۢۡۘۙۦۜۘۙۤۗۦ۫۠ۧۛۜۤ۫ۡۘۙۨ۫ۢۦۘ۬ۢۚۢۚۤۢ۬ۥۦ۠ۤ" : "ۢۥۥۘ۫۬ۘۘۡۛۛ۠ۛ۫ۢۦۢ۫ۙۦۘۖۦۖۘۦۚ۫ۥۛۖۤۜۙ";
                                            break;
                                        case 1358614485:
                                            str2 = "ۧ۠ۘۤ۟ۘۦۡۘۘۧۦۥۘۥۗۚۥ۟ۦۧۘ۫۫ۘۘۛۡۡۨۧۛ۫ۖۚۧۧ";
                                            break;
                                        case 1829314120:
                                            str2 = "ۙ۫ۡۘۢۗ۬ۗۧۧ۠ۛۖۡ۠ۘۙۗۛۖ۬ۙۗۦۜ۫ۚ۬۫ۢ";
                                            break;
                                        case 2072004256:
                                            str3 = "ۗۘ۫ۜۦۜ۠ۧۦۘ۠ۤۖۙۦۜۘۚ۬ۢۘ۬ۢ۫ۡۘ۠ۤۜۘۧۜۘ۫ۤۜۘۘۖۘۘۜۛۜۥۥۦۦۤۜۗۦۖۘۢۜۡۧۧ۠";
                                            break;
                                    }
                                }
                                break;
                            case 1294407259:
                                break;
                            case 1933368907:
                                str = "۠ۧ۟۫ۦۜۘ۟ۥ۠ۖ۠ۗۛۛۤۜۦۛۧۤۨۤ۟۟ۧۘۜۘۘۜۨۘۘ۠ۡۖۖۥۘۦۨ۬ۨۧۥۘۗۤۥۢ۠ۨۘ";
                                break;
                        }
                    }
                    str = "۟ۢۜۘ۟۬ۡۘۥۙۙ۠۬ۚۗۡۖۘۦۗۨ۫ۗۥۘۧۧۢ۫ۤۘ۬۬ۗۦۘۧۗ۫ۥۘ۠ۦۦۘۨ۫ۖ";
                    break;
                case -1403226367:
                    str = "ۤۢۡۥۦۜۥۦۢ۬ۖۧۛۚۜ۠ۨۗ۬ۜۜۡۢۧۤۗۖ۠ۘ۠ۘۦ۟ۚۤۜ";
                    break;
                case -1382486069:
                    intent2 = new Intent("android.intent.action.VIEW");
                    str = "ۢ۟ۧۜۜ۫۬ۤ۫ۨ۠ۗۢۘ۠ۛۙۙۛۥۨۘۤۜۘۤۦۗۖۥۘۢۧۦۘۥۘۦۧۜۤ۬ۦۧۛۖۡۘۘۦۘۦۙۡۘۤۖۡۘ";
                    break;
                case -1142436045:
                    String str4 = "۬ۥۖۘۙۥۤۗۜ۫ۢۦۚ۠ۨۜۘۙۜۛۧ۫ۡۘ۟ۗۖۘۗۘۖۚۙۚۛ۟۟۠۬۬";
                    while (true) {
                        switch (str4.hashCode() ^ (-1087103805)) {
                            case -1420877262:
                                str4 = "۫۟ۦۛ۬ۖۥۛۖۛ۟ۥۘۥۢۤۖۦۧۡۛ۫ۤۢۤۢۢۥۙۤۡ";
                                break;
                            case -639175100:
                                String str5 = "۟ۤ۠ۤۤۨۢ۟ۗۡۚۡۘۤ۟ۚۤۛۨۘۛۢۢۙۗۤۚۧۦۥۦۧۘۚۤۧۘ۟ۢ۫ۖۚۚۥۢۤۢۚۜۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1590873574)) {
                                        case -690892351:
                                            str5 = "ۨۗۜۖۖۛۥۧۨۘۚۢ۟۠ۧۢۖۧۖ۫ۛۨۘۚۜۚۤۗ۟ۖۚ۠ۦۛۥۘۗۧ۬ۚ۠ۨۡۥۗ۠ۤ۟ۧ۟";
                                            break;
                                        case -127316517:
                                            str4 = "ۥۡۦۘ۬ۘۚ۫ۜۗۙۚۡۘ۟ۥۜ۫ۦۨۘۖۨۗۡۥۡۘۚۡۖۥ۬ۡۘۤۙۜۢۜ۟";
                                            break;
                                        case 799866415:
                                            str4 = "ۦۢۨ۫ۧۘۘۡۢۡۘۡۙ۟ۧۜۦۗۙۛۢۗۖۙۛۥۘ۟۟ۖ۠ۚۜ۬ۥۘۨۡۜۘۤ۬ۥۘۨۨۙۙۡۜۘۙ۟ۘ";
                                            break;
                                        case 1791002113:
                                            str5 = i != 10000 ? "ۦۡۢۦ۫ۨۘۘ۠۟ۦ۬ۖۘۥۚ۫۬ۗۥۘۨۦۖۘۨۗ۠ۧۘۧۘۙۛۡۛ۬ۗۛۚۧۖ۫ۗ۬ۚ۬" : "ۤۚ۠ۢۚۨۨۧۧۘ۟۫ۢۦۛۤۢۤۤ۫ۦۘۛۗۖ۟ۙۗۤۙۥۘۘۗۨۘۘۜۜۗۡۖۘۚ۟ۨۢۨۧۘ۫۫ۡۘ۫۬ۧۛۖۧۘ";
                                            break;
                                    }
                                }
                                break;
                            case -601089543:
                                str = "ۤ۠ۙۤۘۥۙۖۘ۠ۥۜۘۢۗۘۥۥۥۘ۫۟ۜۘۜۖ۟ۗۦۨۘۤۚ";
                                continue;
                            case 443879213:
                                str = "ۙۜۨۦۡۤۦۚۖۤۚۡۘۘۦ۟ۤۙۘۘۙۡۤۦۙۡۘۡۥ۬ۡۧۦۥۜۘ۬۟۟";
                                continue;
                        }
                    }
                    break;
                case -914205138:
                    super.onActivityResult(i, i2, intent);
                    str = "ۨ۟ۨۘۨ۠ۦۘ۫ۖ۬ۛۢۘۘۜۙۡۘۡۢۥ۫ۨ۠۫ۤۘۘۢۖۖۗۧۧ۬ۗۤۢۦ۠ۗۖۡۛ۠ۗ";
                    break;
                case -362690333:
                    String str6 = "ۜۧۧۢۧ۬۬ۧ۬ۙۗ۬۫ۥۤ۠۫ۨۖۦۡۦۘ۠ۦۦۤ۬ۜۦ۬ۜۢۙۧۡ";
                    while (true) {
                        switch (str6.hashCode() ^ (-569794222)) {
                            case -311962165:
                                str6 = "ۢۜۨۢۗۨۘ۫ۤۗۡۚ۠ۦۚۚۨۨۥۘۨۘۦۜۦۧۘۧ۬ۖۘۘۧۜ۫ۛ۫ۘۨۘۤ۫ۜۗۢۖ۟ۨۧۘۖۜۥۘ";
                                break;
                            case 405921018:
                                str = "ۚۨۖۖۗۚۖۡۥۘۦۡۙ۬ۥۗۗۥۘۘۨۙ۫۬ۘ۠ۡ۠۬ۘۨۘۘۢ۟ۛ";
                                break;
                            case 970463481:
                                String str7 = "۠۫۫۬ۖۖۗۛۥۦۛۜ۠ۚۖۘۦۥۥۘۥۦ۬ۡۡۘۧۥۗۨۚۘۨۥۦۙۗ۟ۗ۬ۗۖۚۖۙۘۘ۬ۘ۠ۨۦۖۖۢۖۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 41558688) {
                                        case -1416801855:
                                            str6 = "ۥۜۦۘۘۛۗۛۢۢۦۖۧۘۙۡۙ۟ۛۨۦۘۥۢ۫۬۟ۚۘۜۡۡ";
                                            break;
                                        case -46930814:
                                            str6 = "۫ۗۧۚۢ۫ۙۜ۟ۨۧۘۙۘ۬۠ۘۘۦۘۜۘۗۛۦۘۘۜ۬ۙۢۜۘۙۖ۟ۙۥۥۥۥۖۚ۬ۙ";
                                            break;
                                        case 1678783699:
                                            str7 = "ۚ۬ۨۘ۬ۡۛۛۗ۫۬ۧۢ۫۟ۥۘۥۧۨۤۦۘۙۦ۫۠ۘ۫ۥۖۦۖۤۘۘۜۚۘۧۚۤۘ۬ۖۗۖۚۚۚۥۢۥۥۘۜۛۥۘ";
                                            break;
                                        case 2115301993:
                                            str7 = i2 == -1 ? "ۛۚۤۚ۬ۖۖۤ۬ۚۥۗ۠ۚۖۘۥۛۧۨۛۙۛ۟۫ۥ۬ۥۘۚۡۨۜۛۘۘ۟ۙۗۦۚۡۘۖ۬ۦۘ" : "ۙۡۚ۠ۥۧۖۛۖۘۨۨ۟ۗۨ۟۟ۦۘۘۘ۟۬ۦ۠ۜۘۡۧۡۨ۟ۗۚۖۦۤۥۙۙۦۧۘۢۡ۟";
                                            break;
                                    }
                                }
                                break;
                            case 1302118153:
                                break;
                        }
                    }
                    break;
                case -348763425:
                    intent2.setDataAndType(FileProvider.getUriForFile(this, getString(R.string.pay_appid), new File(string)), "application/vnd.android.package-archive");
                    str = "ۗۦۡۛۥۡۙ۟۠۫ۢۖۘۜۧ۫ۖۧۛۥۜۜ۠ۛۛ۬ۛۢ۠۟ۜۗ۬ۤۡۘۘۘۖۘۢۖۘۘ۟۫ۙۦۤۧ";
                    break;
                case -306893929:
                    str = "ۨۚۜۘۗۖۘ۫ۘۗ۠۫۬ۦ۟ۨۘۚۘ۬ۘۢۜۘۨ۬ۛۧۢۦۘۘۚۤۗۧۘۘۦۚۙۢۥ۠ۗۢۜۖۙۥ۬ۛۘۘ";
                    string = sb.toString();
                    break;
                case -61444602:
                    str = "ۧ۟۠۟ۡۗ۠۫ۧۨۖۧۘۚۛۨۚ۟ۨ۫ۤۘۘۖ۫۟ۜۘۖۘۙۜۛ";
                    sb = new StringBuilder();
                    break;
                case 25388218:
                    str = "ۧۛۖۘۘ۬ۚۗۧۜۙۘۚ۫ۛۗۜۤ۫ۖۘۧۙۦۛۙۧۙۥۦ۟ۖۨۚۧۛۘۤۧۤۦۤۜۤۢ۠ۛ";
                    break;
                case 182243623:
                    String str8 = "ۙۗۦ۠ۗۖۤۖۘۘۨۢۚۦ۠ۚۛۦۦۘۧۘۖۘۦۛۥۘۜۨۥۡۨۨۘۧۤۨ۠ۙۥ۬ۚۖۘۘۘۙ";
                    while (true) {
                        switch (str8.hashCode() ^ (-1986444533)) {
                            case -1649225036:
                                str8 = "۠ۥۗ۫ۙۢ۠ۜۥۥۧۦۚ۫ۘ۫ۦۡۘۢۜۖۘۜ۬ۨۨۗۙ۠۟ۥۤۖۜۘ۫۟ۜۧ۫ۧۡ۬ۜۘ";
                                break;
                            case -1502104121:
                                str = "ۤۗۥۡۤۡۜ۟ۜۘ۬ۤۜۘۘۢۙۗۛۡۘ۬ۜۖۗۚۚۡۛۙۥۘۜ۠ۨۜۘ۟ۗۡۡۧۡۘ۫ۧۧۨۨۥۧۤۨۘ";
                                break;
                            case -1208323278:
                                String str9 = "۟۫۠ۚۗۧۢ۟ۜۨۥ۟ۜۦۙۧۥۖ۬۫ۦۦۖۦۘ۠۠ۙۘۨۢ۫۠۟ۡۤۜۘۡۤۘۘۛۚۙ۬۬ۦۘۨۥۘۛۗۡ۠ۖۡۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-2101166815)) {
                                        case -794848586:
                                            str9 = new File(string).exists() ? "۬ۘۡۘۨۖۚۨۦۘۚۖۗۘۤۨۘۨۘ۟ۥۧۨۧۥۘۦۤ۟۠۠ۨۘۜۛۡۢۥۖۘۖۡۧۘ۫ۜۜ" : "ۛۢۦۘۨۘ۟ۦۤۢۢۢۨۘۡۘۜۘۖۗۤۖۢ۫ۤۘۜۧۗۜۤ۠ۤۧۘۢۢۙ۠ۤۗۨۘۜۤۚ";
                                            break;
                                        case 1066870877:
                                            str9 = "ۗۛۜۘۙۥۖۙۙۤۜۢ۠ۖۙ۟۬ۖۨ۫ۙۚۗۧۗ۫ۧ۟ۜ۬ۚۦۨۜۘ۟ۚۨ";
                                            break;
                                        case 1459905642:
                                            str8 = "ۗۧۦۘۥ۟ۥۘۚۛۡۘۗۖۨۜۖ۟ۢۨۡۘۗۢۜۗۛۦۡ۬ۛ۫۠ۥۘ۫ۡۚۛۚۚۚ۫ۦۘ۟ۖۨۤۤۖۖۙۨ";
                                            break;
                                        case 2145196193:
                                            str8 = "ۛۚۛۘۡۧۛۗۥۤ۠۟ۖۡۡۘۥۥۡۘۡۘۛ۟ۦۧۘۘۧ۬ۗۚۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -310266789:
                                break;
                        }
                    }
                    break;
                case 593656901:
                    oi.OooO0o().OooO0OO().OooO0Oo(this);
                    str = "۟ۢۜۘ۟۬ۡۘۥۙۙ۠۬ۚۗۡۖۘۦۗۨ۫ۗۥۘۧۧۢ۫ۤۘ۬۬ۗۦۘۧۗ۫ۥۘ۠ۦۦۘۨ۫ۖ";
                    break;
                case 1036199334:
                    sb.append(com.anythink.china.common.a.a.g);
                    str = "ۙۢۥۘ۬ۛۦۧۛۡۧۡۨۜۖۜۛۧ۟ۡۛ۟ۚۨۘۖۜۗ۠ۘۨۧۦۚۘۘۜ۠ۢ۠ۡۙۥۡ۬ۨۘ۠ۧۧۨۜۙۜۚ";
                    break;
                case 1198747589:
                    break;
                case 1282330259:
                    sb.append(getPackageName());
                    str = "ۚۧۦۘ۬ۛۚ۬ۗ۟ۜۙۡۦۜۨۚۨۘۜۥۙۡۡۨۘۘۖۡۥۡۥۢ۬ۢۙۦۚ۠۬۫۫ۧۖ۟ۧۨۜۜۦۘۗۚۚ۠ۦۛ";
                    break;
                case 1453564532:
                    str = "۬ۦۙۧۖۙۦۦۘۖ۫ۥۤ۬۟۟ۦۜۨۘۘ۟ۙۘۡۘۤۧ۟ۦۜۥۖ۫ۨۘۧۘۥۘۢۥۘۘ";
                    break;
                case 1758444269:
                    str = "ۤۙ۠ۜ۬۠۬ۤۤۧ۫۟ۙۘ۠۬ۦۘۚ۫ۨۘ۫ۜۦۘ۫ۦۘۘۥ۟ۜ";
                    break;
                case 1918855027:
                    startActivity(intent2);
                    str = "۬ۦۙۧۖۙۦۦۘۖ۫ۥۤ۬۟۟ۦۜۨۘۘ۟ۙۘۡۘۤۧ۟ۦۜۥۖ۫ۨۘۧۘۥۘۢۥۘۘ";
                    break;
                case 2007411916:
                    str = "ۦۤۛۧۦۖۧ۟۫۠ۡۘۖۗۚ۫ۧۚ۠۠ۙ۠ۥۨۨ۟ۘۘۙۘۖۖۗۙۢۢ";
                    break;
            }
            return;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        String str = "۫ۜ۠ۛۛۦۘۤۛۨۧۤۧۡۙۘ۟ۢۘۙۤ۠ۡۦۢ۠ۤۥۘۚ۠ۜۜۙۖۘۨ۬ۛۖۘ۟ۜۙۛ";
        while (true) {
            switch ((((str.hashCode() ^ 158) ^ 634) ^ 924) ^ 2042957160) {
                case -1994330249:
                    this.ooOO.postDelayed(new OooOO0O(this), com.anythink.expressad.exoplayer.i.a.f);
                    str = "ۛۥۘۘ۫ۙۗۦۛۥۘ۟ۦۥۘۚۛۧۤۙۢ۬ۤۙۥۦ۟ۨۖۧۗ۫۫۬ۡۘۘۥۚۗۜۘۚۜۨ";
                    break;
                case -1875499296:
                    OoooOOO();
                    str = "ۤ۬ۛ۟۫۟ۛ۬ۨۘۗۤۛۦۚۘۘ۫ۤۦۦۢ۟۟ۡۧۘۡۥۜ۠۠۬ۗۚۢۦۢۥۘ۫ۢ۟۬ۚۗۖۛ۬ۡۙۦ";
                    break;
                case -1169325412:
                    String str2 = "۟۟ۡۘۚ۫ۖۚۡۜۜۧ۫ۜۢ۬۫۫۠ۤۜۡۘۖ۠۬ۚۦۦۘۘۖۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1744081865)) {
                            case -682297571:
                                str2 = "ۥۥ۠ۚۗۗ۬۫ۗ۬۟ۧۦۨۢۧ۬۟ۖۨۥۡۢۛ۬۬ۥۘۡ۠ۨۘۨۙۨۘۜۦ۬۬ۘۨۥۚۖۘۧۨۘۡۥۖۙۥۧۨ۟ۨۘ";
                                break;
                            case -370263534:
                                str = "ۗۘۧۘۗۦۢۖۛۜۖۧۘۦۢۖۘ۬ۖۜۢ۠ۖۘ۬۠ۛ۬ۢۖۦۦۥ۠ۡۛۚۦۜۧ۠ۨ۫۠ۥۘ۬ۢۖۘ";
                                continue;
                            case 427974475:
                                str = "ۥۘۙۦۨۜۘ۬ۧۖۧۨۨۧۙۚ۬ۧۦۘ۬ۡۜۘۙۛۛۛ۠ۡ۫ۢۚۧۧۦۥۗۥ";
                                continue;
                            case 1917129801:
                                String str3 = "ۦۘۦۘ۫۬ۥۘۢۛۨۘۡۤ۠ۚۘۧۘۡۚۖ۠ۨ۠ۘ۠ۦۘۢۧ۫۠۫ۢ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1530871293)) {
                                        case -1814226614:
                                            str3 = "۟ۜ۠ۡۧۥۘۜۨۨۘۘۨۤۛۤۨۤۗۡۘۧۘۧۙۥۖۖ۫ۢۚۨۘۘ۟ۘ۠ۛۜۗۦ۠ۡۘۡ۬۬ۤ۬ۦۘۤۜ۟ۧۘۡۤ۫ۘۘ";
                                            break;
                                        case -1155685614:
                                            str3 = i7.OooO().OooOOO() ? "۟ۦۧۘۘ۟ۤ۬ۦۖۘۛۦ۬ۙۗۜۨۙۨ۬ۘۦۡۤۖۥۙۖۘ۟ۨۨۘ۫ۖۧۗۖۖۘۖۜ۟۠ۡۨۘۤۙۘۘۜ۬ۜ" : "ۜۦۜۘۘ۠ۛ۬ۛۖۘۘۢۡۘ۠ۙ۟ۥۘۧۦۜۦۘ۫ۡۙۚ۫ۜۘۚۗۡۘۦ۬ۤۗ۬۬۟ۛۛۤ۟ۦۘ۫۫۟ۖۖ۠";
                                            break;
                                        case 795845862:
                                            str2 = "ۨۥۜۖۤۖۚ۬ۡۘ۟ۛ۬ۨۦ۠ۢۥۥۘۤۖۜۘۖۦۥ۬ۖۗۧۡ۠ۖۨۗۥ۫ۖۘ۬۬ۛۗۘۚ";
                                            break;
                                        case 1803410610:
                                            str2 = "۠ۖۦۘۥ۬ۦۘ۟ۘۜ۠ۖۥۛۗۗۘۨ۬ۘ۬ۥۤ۟ۚۗۧۜۦ۬۟ۤ۫ۗۤ۠۬ۜۘۜۘۨۨ۫";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -95682297:
                    i7.OooO().Oooo0o0();
                    str = "ۗۘۧۘۗۦۢۖۛۜۖۧۘۦۢۖۘ۬ۖۜۢ۠ۖۘ۬۠ۛ۬ۢۖۦۦۥ۠ۡۛۚۦۜۧ۠ۨ۫۠ۥۘ۬ۢۖۘ";
                    break;
                case 122577224:
                    v3.OooO().OooO0oO();
                    str = "ۖ۫ۡۘۗ۟۫ۡۢۡۘۨ۬ۖۘۥۜۧۖ۬ۖۤ۬ۡۤۚۦۘۗ۫ۘۘۚۡۖۧۧۥۘۚۡۛۗۛۗۨۧۖۘۙ۠ۜۖۘ";
                    break;
                case 278742308:
                    this.o0O0O00 = true;
                    str = "ۜۖۗۤ۟ۚۤۘ۠ۤۤۤۚۨۘ۫ۘ۫ۗۧۜۘۗۥۖۡۢۗۡۡۚ";
                    break;
                case 588516578:
                    c5.OooO0Oo(getApplicationContext(), R.string.main_toast_exit);
                    str = "ۥ۫ۗۦۥۘۜۢۜۢۧۦۡۥۘۛۥۜۘۜۡۧۘ۠ۛۙۦۖۘۧۜۚۧۢ۠۠ۚۛۦۦ۬ۙۘۘ";
                    break;
                case 732870512:
                case 816637429:
                    return;
                case 1470297067:
                    String str4 = "ۥۦۗۦ۟ۖۨۤۨۘۢۧۡۙ۠ۙۜ۫ۘۘۧۢۥۡۛۖ۠۫ۨ۫ۡۘۛۗ۟ۤۚ۬";
                    while (true) {
                        switch (str4.hashCode() ^ (-407005133)) {
                            case -1246157186:
                                str = "ۘۤ۠ۧ۬ۢ۬ۛۘۘۡۨۧۥۛۘ۠۫ۗۜۦۡۘ۟ۗۧۤۨۡۘۘۧۚ";
                                continue;
                            case -1215348623:
                                String str5 = "ۛ۬ۦۘۧۛۛۛۤۜۘۤ۠۠ۡۛۥۦ۫۟ۢۚۘۘۦۘۗۥ۬ۖۘۘۧۥۘ۫۫ۦۘۚ۠ۘۘۧۡۖۘ۠ۜۘۚۨۦۗۛۖۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 894150695) {
                                        case -1672723511:
                                            str5 = "ۤۡۜۘۥۜۜۛ۠ۡۧۤ۟۬ۘۙ۫ۤۦۘۦۙۢۛۡۖۥۧ۫ۤۘۘۢۜۤۡۢۛ۫۫ۧۗ۬ۖۡۤۜۘۚۘۧۘۖۥۘۘۙۙۘۘ";
                                            break;
                                        case -1594467069:
                                            str5 = this.o0O0O00 ? "۟ۧۖۤۢۗۧۜۥۘۡۗۖۘۙ۬ۥۘ۠ۦۚۛۘ۠ۨۘۨۚۙۛۗۥۘۜۧۚ۠ۦۘۘۡۗۧ۟ۦ۫ۘۜۢۘۚۜۡ۠۫" : "ۙۖۢۘ۠ۛۗۘۦۘۢۚۦۤۖ۫ۗ۟ۜۡۙۦۥۧۤۖۦۢۛ۫۠ۦۛۘۦۖۦۚۙۧۥۜۘۨۙ۫ۖۢۢ۬ۤۘۘۧۖۡ";
                                            break;
                                        case 1224470047:
                                            str4 = "ۛۢۖۦۛۖۥ۫ۜۚۤۡۡۚۤۤ۠۠ۗۘۥۡۜۙۤۤۛ۫۠۫ۖۥۘ۫ۦۥ۟ۤۥۤۥۦۘۘۛۥۛۢۥ";
                                            break;
                                        case 1605935214:
                                            str4 = "ۨۦۧۜۖۦۖۜۜۜ۟ۘۘۨۨ۠۬ۦ۠۟۫ۢۖ۫ۘۘ۟ۡۨۘۤۗۥۘۡ۟ۙۤۘۦۘۗۡۢ۫ۖۜۡۢۦۗۧۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1568598557:
                                str = "ۙۡۜۤۦۘۥۥۨۘ۬ۛۡۢۡ۠ۧۤۚۚۚۡ۫ۛۗ۬ۤۜۘ۠۟ۖۨۗۜۜۜ";
                                continue;
                            case 2125598017:
                                str4 = "۠ۗۘ۠۫ۨۘۙۛ۬ۜۘ۟ۢۨۘۖۥۜۙۢۖۜ۬ۜۙۚۛۜ۟";
                                break;
                        }
                    }
                    break;
                case 1677357345:
                    str = "ۧ۟ۜۘ۟ۤۨۖۖۛۜۘۘۗۘۙۡۛۖ۟ۙۧۤۚۦۗۧۧ۟ۜۘۚۨۥ۬ۗۢ";
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = 0;
        String str = "۠۠ۥۙۘۘۘۜۙۡۥۙۡۘۚۛ۠ۡۡ۠ۤۚۙ۫ۜ۠ۜۖۗۢۘۘ";
        ArrayList<NotifyMsgBean> arrayListOooOooO = null;
        Intent intent = null;
        Intent intent2 = null;
        Intent intent3 = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE) ^ 733) ^ 489) ^ (-757340875)) {
                case -2072552102:
                    str = "۠ۢۦۖ۠ۥۘۙۘ۠ۢۘۘ۫۬ۘۡ۟۫ۙۢۥۥ۟ۦۨۨ۬۬۠ۡۘ";
                    intent2 = intent;
                    continue;
                case -1658270649:
                    str = "ۤۘۘۘۦۤۘۘۤۘۧۘۘ۫ۗۚۚۙۥۤۖۛۚۖۘۡ۬ۡۖۦۖۤۡۦۨۥۨۡۚ۫ۖۦۜۧۗ۬۠ۦۛۘۜۘۙۖ۟ۚ۬ۜ";
                    continue;
                case -1622136279:
                    String str2 = "۠ۦۡۘۙۜۘۡۗۘۘۧۦۙۙۛ۫ۛۜۜۘ۬ۢۦۘ۟ۜۤ۬۟۬ۢ۫ۗ۟۫ۗۗ۫ۦۦ۫ۜ۬ۚۧۜ۟ۗ۟ۡ";
                    while (true) {
                        switch (str2.hashCode() ^ (-2019689670)) {
                            case -2042320618:
                                str2 = "ۢۛۥۤ۠ۨ۠ۨۚۡۦ۬ۙۥۘۥ۬ۖۚۦۙۙۘۘۚۢۨۨۧ۟۬ۚۢ۬ۦۘۘۗ۫ۘۘۥۥۛ";
                                break;
                            case -820101258:
                                break;
                            case 249774279:
                                str = "ۙۘ۬ۗۢۖۘۗ۟ۘ۫۠ۜۧۙۨۘۡۘ۠ۗۥۘ۫ۥۦ۫ۦۡۘ۫ۥۡ۠ۨ۠ۚۢۜ";
                                break;
                            case 762633353:
                                String str3 = "ۚۦۥۘۛۖۙ۫ۘۥۘۥۡۦۘۨۢۘۜۥۨۘۙۥۦ۟۫ۤۤۖۘۢۦۡۘۜۚ۟ۢۢۚ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1809368521) {
                                        case -2039749619:
                                            str2 = "ۡۨ۬ۢۧۤۧۦۖۘۨۗۨۘۢۜۖۚ۠ۦۚ۬ۜۛ۟۠ۢۧۙ۟ۖۡۘ۠ۡۨۥۨۜ۫۫ۙۥۘۜۤۖۨۘۦۚۖ";
                                            break;
                                        case -953415171:
                                            str2 = "۠۬۠ۧ۫ۜۡۘۘۜ۫ۘۖۙۛۧۥۥۨۗ۠ۥۗ۫۬ۡۦۚ";
                                            break;
                                        case -435663031:
                                            str3 = "ۙۧۥۘ۫ۘۦۘۜۢۜ۬ۚ۬ۤۦۡۘۥ۟۫ۗ۫ۥۘ۬ۨۨۦ۬ۥۥۖ۠ۢۜۨۡۗۗۛ۟ۖ۟ۦۘۘۘ۫۫ۡ۟ۖۛۧۘۤۜۗ";
                                            break;
                                        case 984826555:
                                            str3 = arrayListOooOooO != null ? "ۡۜ۟ۜۚۧۙۢۙۤۜۦۙۡۖۘ۟ۢۜۘۚۦۘ۫ۧۤ۬ۖۨۙۧۜۘ" : "ۨۙ۠ۚۢۤ۫ۘۢۤ۫ۤۡۥۘۨۦۢ۟۟ۜۘۥۦ۟ۤ۫ۙۘ۬ۡۘ۠ۖۜۘۦ۫ۨ۫ۛۦۚۖۙ۫ۙۧۚۙ۬ۡ۟ۢۡ۫ۦ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1462293255:
                case -258052065:
                    str = "ۥۛ۫ۜۖۜ۟ۘۡ۟ۚۡۧ۟ۙۤۗۗۨۘۨۜۜۙۙۙۥۜ۟ۧۗۡۛۦۘ";
                    continue;
                case -1263647224:
                    str = "۟۠ۙۙۥۖۜۢۗۘۚۙۢۤۙۧ۬۬ۚۖ۠ۢ۬ۧ۠۠۠۟ۧۥۤۨۘ۟ۘۖۘۧ۟ۛۙۙۘۘ";
                    id = view.getId();
                    continue;
                case -1080246641:
                    this.o00Ooo.setVisibility(4);
                    str = "ۧۖۧۘۗۢۖۦ۬ۨۨۧ۟۠ۖۤ۟ۛۦۘۜۜۥۘۗ۠۫ۤۙۥۘۧۢۧۤۥۚ۬ۘۥۘۥۛۛۥۨۥۘۧۥۦۙۡۡۗۖۧۘۦۙ۠";
                    continue;
                case -859833278:
                    break;
                case -793751761:
                    str = "ۖۘۦۘۥۗۢۜۡۡۖ۫ۨۘ۬ۢۜۛۖۥۘۥۧۛۤ۠ۤۜۜۨ";
                    intent2 = intent;
                    continue;
                case -76373378:
                    str = "ۙۨۨ۬ۗۤۨۡۦ۠ۛۘۘ۠ۨۨۘۡۢۨۘۥۗ۫۟ۦۤۦۜۨۘۨۚۢۤ۠ۙۤ۫ۖ۬ۖۘۙۨۚ";
                    continue;
                case 52225397:
                    startActivity(intent2);
                    str = "ۧۛۡۥۜۙۚ۠ۘۦ۟ۗۦ۫ۥ۬ۙۨۥۦۖۘۤۜۥۜۙۦۘۧۦۗۚۘۤۗۗۥۢۥۘۥۦۨۙۧۥۜۢ۫";
                    continue;
                case 509682550:
                    return;
                case 598203052:
                    String str4 = "ۥ۠ۥۤۘ۠۬ۢۡۘۖۘ۬ۘۚۜۙ۟ۧۦ۫ۙۢۥ۠۬ۜ۠ۦ۬ۛۖۢۗۚۡۗ۬ۖۘۛۥۨۦ۟۬ۗۦۖ";
                    while (true) {
                        switch (str4.hashCode() ^ 617664184) {
                            case -1172223743:
                                String str5 = "ۧۚۘۘۜ۟ۧۥۢۥۥۦۜۘ۫۬ۚ۫۟ۧۡۦۥۘۤۜۚۚۗۡۖۘۛ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1804213262) {
                                        case -1895559880:
                                            str5 = "ۨۚۖۚۦۦ۠۬ۚۛۚۜۗۦۧۚ۬۬ۜ۟ۦ۟ۦۘۘۧۥۘ۫ۢۢۤ۬ۗۙۖۡۘۛۤۥۢ۠ۥۨۤۤۖۧۘ";
                                            break;
                                        case -1654907354:
                                            str4 = "ۦۜۡۧۚۙۛۡۨ۟ۜۗۜ۫ۢۛۖۘ۫ۤۙ۠ۙۡۙۖ۠۫ۖۨ";
                                            break;
                                        case 87171671:
                                            str4 = "۫ۘۘۘۙ۟۬ۜۜۜۘ۬ۦۡۦۖۦۘۥۖۦۘۤۦۦ۬ۢۨۘۖۦۢۖۨۜ۟ۚۙۜۖۨۖ۠ۧ۬ۧۡۗ۬۬ۤ۫ۖۘ۟۟ۜۘۧۘۜۘ";
                                            break;
                                        case 1508327199:
                                            str5 = arrayListOooOooO.size() > 0 ? "ۛۥۦۙۖ۬ۢۙ۠ۢۚۘۘ۠ۜ۟۟ۖۥۗۨ۟ۥ۟ۦۘۦۤۦۤۧۘۡ۠ۗۥۧۚۖۨ۫ۥۙۥۨۡۥۘۨۤۤ" : "۬۫ۖۧۤۙۙۗۥۤۨۚۜۖۘۡ۟ۢۘ۬ۘۧۚۙ۟ۜ۠ۥۘۗ۬ۡۘۤۛ۫۟ۧۘۘۧ۟ۦۜ۟ۖۘۨۨۥ";
                                            break;
                                    }
                                }
                                break;
                            case -844130379:
                                str = "۫ۦۡۘۦۖۢ۟ۚۗ۠ۨ۫۬ۡۢۡۤۡۦۢۥۤۚۗ۫ۘۘۗۚۨۘۤ۟ۛۘۦۧۘ";
                                break;
                            case 1043509031:
                                break;
                            case 1281186909:
                                str4 = "ۡ۟ۡ۟ۚۖ۠ۨۘۜۜۘۛۨ۬ۚۘۖۘۥۛۘۘ۫ۨۥۘۖۜۖۘۘۚۜ";
                                break;
                        }
                    }
                    break;
                case 713692273:
                    String str6 = "ۙۥۦۡۖۧۘۘۚۦۘۜ۟ۨۘۥۙۚۚۤ۠ۘۗۥۘۡۤ۬۬ۜۡۨۥۘۜۦۨۚۦ۠۫ۘۤۢۦۚۗ۫ۖۘۛۛۘ";
                    while (true) {
                        switch (str6.hashCode() ^ 357623853) {
                            case -1008274454:
                                str = "ۡۧ۟ۤۚۨۘۙۡۡ۬ۡۦۦۜۥۘ۟ۡ۫ۧۜۚ۫۟ۨۜۦۦ۬ۡۥۘ۟۠ۙۡۢۙ";
                                continue;
                            case 926038349:
                                str = "۟ۛۡۢ۬۟ۖ۠ۡۙۙۙۙۡۖۙ۟ۨۘۛۧۙ۬ۡۜۦۘ۠ۘۢۜۥۜۦۖۛۡ۬ۚۨۦۦ۠ۖۛۨۘۖۧۨ";
                                continue;
                                continue;
                            case 997600688:
                                str6 = "۬۟ۨۘ۬ۗ۟ۢۥۙۙۡۨۗۧ۫۟ۛۥۙۤ۬ۧۗۖۘ۬ۘ۫ۛۗۥۘۡۜۧۤۨ۬";
                                break;
                            case 1990597774:
                                String str7 = "ۘۡۤۖۜۤۨۘ۠ۚۡۧ۬۫ۥۨۨۜۘ۟ۨۤۦۦۘۖۤۜۘۢ۠ۥ";
                                while (true) {
                                    switch (str7.hashCode() ^ 1927114530) {
                                        case -1745139395:
                                            str6 = "ۥۘۜۘۨ۠۬ۥۥۘۧۡۘۘ۠ۖۤۛۜۧۘۛ۫ۥۘۦۤۙ۠۟ۗۛۙ۠ۜۧۙ۬ۜۚۚۜۢۡۡۘۘ۬ۨۖۛۡۜۘ";
                                            break;
                                        case -456362649:
                                            str7 = "ۛۡۤۨ۬ۛۚ۬ۡۧۗۢۙۨۘۜۡۜۘۗۚۚۚ۫ۨۘۨۘ۫ۛۚۧ";
                                            break;
                                        case -286874251:
                                            str6 = "ۦۢۜۘۢۘۤۢۨۚۗۢۜۤۛ۠ۜ۠ۡۘۤ۬ۦۡۜۨۦ۟ۨۘۙۗۘۖۘۖۢۜۘۘ";
                                            break;
                                        case 59474131:
                                            str7 = id != R.id.id_img_msg ? "ۜۤۖۘۥۘۡۖ۬۠ۧ۫ۜۘۤۖۦۥۦۥ۫ۜۧۘۡۤۛ۬ۡۖۜۜۘۦ۠ۡۘۤۘۘۦۧۛۥۨۗۦۧۙۥۖ۫ۖۘۡ۬۟۟" : "ۜ۠ۖۘ۠۟۠ۙۢ۟ۨ۠ۥۘۡۢۥۘۚ۟ۥۙۡ۠۫ۦۜ۫ۜ۫۫ۨۡۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 876756754:
                    intent.putParcelableArrayListExtra(g6.OooO0OO, arrayListOooOooO);
                    str = "ۚۚ۠ۥ۬۠ۙۤۦۘ۬ۡ۠ۥۚۢ۟۟ۤۢۦۡۘۖۛۧۚ۫ۘۥ۬ۚۤۙۜۘ۫ۛۤ";
                    continue;
                case 1178043783:
                    arrayListOooOooO = ((na) this.OooooO0).OooOooO();
                    str = "ۛۡۥۘۨۗۘۘۗ۫ۥۘۚۜۡۛۙۖۘۗۖۧۗ۬ۖۘۖۛۙۛۗۡۖۨۚۥۧۛۙۨ۬";
                    continue;
                case 1485555557:
                    str = "۠ۥۨۘۗۥۚ۠ۢۗۖۘۦۘۙۚۗۗۦۚ۠۟ۘ۬۠ۛۘۡ۫ۙۡۜۘۗۛۜۤۖۖۨۜۖۘۧ۟ۛۖ۫ۜۘۜۧ۬۠۬ۜ۫ۜۗ";
                    intent2 = intent3;
                    continue;
                case 1541575837:
                    intent3 = new Intent(this, (Class<?>) SettingActivity.class);
                    str = "ۙۡۧۘۦۧۘۢۡۡ۬ۖۘۛۧۜۘۨۗۦۧۤۡۘۥۜ۬۟ۥۚۜۧ۫۫۟ۧۙۦۘۦ۟۬۟ۜۤ۫ۨۛۤۖۡۤۘ۫ۗۙۦۘ";
                    continue;
                case 1674716831:
                    str = "ۡ۟ۖۛۚۨ۠ۥۗۦ۟ۖۤ۫۬ۦ۟ۨۘۨۤ۬ۖۢۧۘۦ۬۠۬۫۠ۥۦۤۧۦۘۛۦۡۘۧۨۚۤۥ۟ۗۧۘۘۘۨۥۘۙۢۜ";
                    intent2 = intent;
                    continue;
                case 1999121058:
                    str = "ۜ۫ۘۨۨۦۘۥۗۨۘۛۜ۠۟۟ۖۦۨۦۛۙۤۡ۫ۘ۫ۥۘۨۖۘ";
                    intent = new Intent(this, (Class<?>) MessagePushActivity.class);
                    continue;
                case 2030867612:
                    String str8 = "۬۫ۢۗۘ۫ۛۚ۫ۙۖۢ۬ۦۘۘۖۧۜۥۚۥۘۥۦ۟ۦۘۨۘۢۘ۟ۡۗۜۘۨۜۚ";
                    while (true) {
                        switch (str8.hashCode() ^ 645161070) {
                            case -1962875999:
                                str8 = "ۢۛۘۖۨۨۘ۫۟ۖۘۗ۬ۡۘۨۦۧۘۦۡۥ۬ۢ۬ۧ۫ۘۘۘۥۥۘۙۛۤ۠ۚۖۘ۠۫ۥۘۘۛۨۘۡۡۗۙۚۛۥۛۥۘۜۛۡ۠ۡۧ";
                                break;
                            case -1680550020:
                                String str9 = "ۢۗۘۜۦ۟۬ۧۖۚۚ۬ۘۘۖۘۖ۫ۨۡۧۖۘۛۘۧۥۙۖ۬ۙۨۛۡ۬۬۠۫ۙۙ۠ۖ۬ۦ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-392249213)) {
                                        case -1063328277:
                                            str9 = "۫ۤۡۛ۠ۦۘۡ۬۟ۗۦ۠ۤۥۘ۫ۨۥۨۦۡۖۗۛۦۜۛۤۥۧۘ";
                                            break;
                                        case -959861805:
                                            str8 = "۬۠ۗۜۗۧۥۜۤۛ۠ۘۘۙۦۨۖۗۘۢ۬۫ۤۡۦۘۥۖۢۢۖۧۢ۫۟ۚۦ۟ۛ۟";
                                            break;
                                        case -645412432:
                                            str8 = "۬ۧۘۘۜۜۥۦۜۙۤۥۘۗ۟ۚ۬ۙۛۦۖۘۘۡۛۗۘۙۙۘۥۙۦ۠ۥ۫ۥۧۘ";
                                            break;
                                        case -499270387:
                                            str9 = id != R.id.id_img_setting ? "ۤ۠ۖۘۦ۬۠ۙۥۥۘۚۥۘۤ۟ۡۘۖۦۧۘ۠ۜۢۦ۠ۖۤ۟ۥۤ۟ۘۘۥۖۘۘ۬ۤۛ" : "۫ۛۡۘۧۡ۫ۛۗۦۗ۠ۥۡۘۧۘ۟ۡۗۢۧۖۘۚۛ۬ۤۗ۫ۢۤۜۘۜ۠ۜۥۥۘۡۜۡۘۖۘۧ";
                                            break;
                                    }
                                }
                                break;
                            case -153271949:
                                str = "ۡ۠ۜۥۧ۫ۘۧۥۘۚۗۘۥ۠ۜ۠ۥ۟ۡۧۦۘۛۧۡۘۛۜۖۖۛ۟۟ۙۖۘ۫ۘ۫";
                                continue;
                            case 1864115968:
                                str = "ۢۙۖۢۘۧۘۦۛۙۡۚۚۗۨۦۤۨۥ۬ۚ۬۠ۖ۠ۘۦۢۧۘۗ۬ۦۨۢۗۧۜۤۡ۬ۨۖۘ۬ۢۦۨۦ۟ۨۨۙۜۘ";
                                continue;
                                continue;
                        }
                    }
                    break;
            }
            str = "۠ۥۨۘۗۥۚ۠ۢۗۖۘۦۘۙۚۗۗۦۚ۠۟ۘ۬۠ۛۘۡ۫ۙۡۜۘۗۛۜۤۖۖۨۜۖۘۧ۟ۛۖ۫ۜۘۜۧ۬۠۬ۜ۫ۜۗ";
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity, com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۦۚۤۧ۠۟ۡ۫ۘۘۡ۟ۦۘۛۨۡ۠ۜۥۘ۫ۖۜ۬۠ۨۘۛۙۢۦۗۦۘ۟ۜ۬۟۟ۤ";
        while (true) {
            switch ((((str.hashCode() ^ 550) ^ 113) ^ 171) ^ 1798572633) {
                case -1557985443:
                    str = "ۦۨۨۘۙ۫ۥۦۦۗۧۢۦۧۡۛ۫ۧۦۘۢۚۚۦۗۡۘۛۡۙ۬ۙۦ۬ۦۘۦۗۦۘ";
                    break;
                case -1243194056:
                    return;
                case -1150677057:
                    str = "ۦ۫ۡۗۚۡ۬ۡۘۢۧۛۡۗۧۗۦ۠ۘ۫ۘۗۜ۠۫ۧۡۘ۬۠ۖۥ۟ۢۖۘۨۙۦۧۘۨ۬ۜ";
                    break;
                case 501638551:
                    Ooooo0o();
                    str = "ۜۚۖۘۢۢ۠ۦۡۤۤۚۘۛۨۘۛۛۙۤۤۜۘۘۖ۟ۜۖۘۨۙۙۜۢۢۖ۫ۜۙۙۜۘۘۘ۬";
                    break;
                case 804638703:
                    OooooO0();
                    str = "۟۟ۙ۬ۚۥۤ۫ۘۘ۬ۚۜۘ۟ۨۨۘۘۛۦۘۤۦۜۦ۫ۖۘۖۜۧۘۖۧ۟ۜۦۘۘۙ۫ۖۧۦۨۢ۠۟ۧۡ۫ۛۙۥۘ";
                    break;
                case 881896262:
                    initListener();
                    str = "۟ۧۘۘۗۥ۬ۦ۬ۥۧ۠ۘۘ۟ۗۜۘ۠ۢ۬ۥۡۘ۠ۦۛۥۤۖۡۗ۠ۘۦ۫ۨۥ۬";
                    break;
                case 1828028206:
                    super.onCreate(bundle);
                    str = "۟ۢۦۘ۬ۙۥۚۢۤۘۦۚۦۢۥۘۢۖۦۘۚۡۦ۫ۨۡۢۦۗ۟۟ۨۧۙۥۛۜۡۘۢۛۖۘۖۜۖۘۢۢۨۘ۟ۚۡ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۥۨۛۨۖۢ۟ۦۗۘ۫ۦۘۗ۟ۦۘ۬ۖۛۨ۬۫ۢۘۖ۠ۜۘۦۚۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 70) ^ UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE) ^ 680) ^ 395802928) {
                case -1326735404:
                    AppContext.OooO00o().Ooooo00 = false;
                    str = "ۗ۬ۢۢۘ۬ۘ۠ۚۥۜۥ۬ۤۡۘ۟ۤ۫ۘۡ۟ۥ۟ۛ۫ۜۢۗۤۖۘۢۦۦۛۚۢۙ۟ۦۘۡۜۧۛۛۥۘۨ۫ۡۘ";
                    break;
                case -1315360082:
                    this.o0OOO0o.OooO0o();
                    str = "۬ۦۨۛۦۦۧۖۦۢۖۖ۠۟ۜۥۦۧۜۥۥۨ۠ۦۡۤۦۘۜۡۖۘۧ۠ۚۘ۠ۖۘ";
                    break;
                case -1185412958:
                    m7.OooO0o0().OooO0O0();
                    str = "ۧۨۘۘۘۖۦۜۗ۟۟ۧۢۛۗۥ۟ۖۥۘۦۤۨۚۥۛۜ۟ۖ۠۬ۡۤۤۙ۬ۘۖۘ";
                    break;
                case -1076674878:
                    return;
                case -22576838:
                    BootDexManager.OooO0OO().OooOO0();
                    str = "ۥۥۨ۠۠ۨۘۖۗۖ۬۠ۧۖۖۡۢ۠ۡۙۥۚۨۢۚۧۖۦۨۜۗ۠ۨۚۖۦ";
                    break;
                case 50757991:
                    dh.OooOO0O();
                    str = "ۧۥ۬ۛۖۥۗ۫ۡۘ۟ۧۚۗۨۡۘۡۗۖۘۜۧۦۜۡۨ۫۬۟ۛۥۜۘۨۤۚۛ۟۠۫ۖۡۘۥۘۜۘ";
                    break;
                case 155383682:
                    l10.OooO0o().OooOoO0(this);
                    str = "ۤ۠ۛۦ۬ۧۛۢ۠ۡۙۨۘ۟۟ۦ۬ۚۦۘۚ۠۟ۦ۟ۧۧۘۡۘۥۤ۬ۖۚ۬ۛۦۡۘۛۘ۬ۨۥۗ";
                    break;
                case 280374121:
                    this.oo000o = false;
                    str = "ۥۧۦۘۤۧ۠ۦۜۜۘۚۘۘۥ۬ۡۘۗۗ۠ۜۗ۠ۢۨ۫ۗۜۥۘ۠۠ۡۢ۟ۜۨ۟ۜۘۖۤ۠ۜۡۦۨ۬ۚۡ۟ۜۘۥۙۨۥۨۘ";
                    break;
                case 445013107:
                    k6.OooO0Oo().OooO0O0();
                    str = "ۤۢۢ۟ۖۨۘ۠ۘۙۗۜۦۘۖ۟ۥۘۗۤ۬ۖۦ۬ۜۙۚۚۘۘۥۜۦ";
                    break;
                case 452694890:
                    super.onDestroy();
                    str = "ۘۡۦۡ۟۬ۚۡۘۘ۬ۤ۬ۥۖۦۘۤۥۡۨ۠۟۬ۦۤ۟ۥۧۛۗۘۤۜۘ۠ۦۥۘۡۖۖۘ۠ۜۖۧۦ۟ۥۧۢۧۚۘۘۙۥۡ";
                    break;
                case 508125349:
                    str = "۬ۛ۟ۦۖۚۙۨۗۗۧۦۢۢۚۙ۬۟۫ۤۦۡۡۢۦۛۤۚۙۥۙۨۢۗۦۗ۠۫ۥۢۧ";
                    break;
                case 790630583:
                    this.ooOO.removeCallbacksAndMessages(null);
                    str = "ۚۙۜۡ۠ۨۘۢۡۨۘ۟ۡ۠ۗۤۜۚۢۥۗۖۤۡۧۤۘۜ۬ۛۖۘۚۨۜۘۖۘۧۘ۟۫۟ۢۘۜۦۨۜۘۚ۬ۥۘۙۖۦۧۤۥۘ";
                    break;
                case 856195736:
                    AppContext.OooO00o().OoooOoo = false;
                    str = "۬ۢۨۘۧۥ۟۬ۦۗۗۗۖۘۚۘۙۙۥۧۙۦۛۥۢ۟۟ۤۨ۬۬ۙۚۙۥ۟۠ۗۜۧۘۛۤۨۤۙۗ۫ۤۡۗۡۨۦۘ";
                    break;
                case 979584042:
                    r7.OooO0o().OooO0oo(this);
                    str = "ۦ۫ۘۧ۠ۦۢۙ۫۠ۜۢۥۙۘۧۦ۠ۛۘ۫ۗۖۥۢ۬۠ۡ۠";
                    break;
                case 2087296850:
                    AppContext.OooO00o().Ooooo0o = false;
                    str = "ۧۤ۫۟ۢۧۥۡۜۘۗ۟ۜۖۚۢۖۜۜۧۥۛۤۜۨۚۘۘۘۡۖ";
                    break;
            }
        }
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        int msgType = 0;
        String str = "ۘ۬ۚۚ۟ۦۘۧۦۘۘۦۦۥ۫ۖۘۘۖ۠ۦۨۡۨۘ۬ۧ۫ۜۚۡۘۙۤۢ";
        while (true) {
            switch ((((str.hashCode() ^ 700) ^ 973) ^ 684) ^ (-1351255760)) {
                case -1731984528:
                    msgType = msgItem.getMsgType();
                    str = "ۚۙۡۘۧ۟ۥۘۡ۫ۡ۫ۤۨۘ۫ۦۘ۟ۤۡۙ۫۫ۙۦ۬ۢ۠ۥۦ";
                    break;
                case -1463314002:
                    str = "۟ۘۢۗۤۢۛۨۘۚۧۥ۫ۤۗ۫ۜۚ۟ۥۤۡۢۘۘ۟ۛۖۗ۠ۘۘۜ۬ۘۘۦۜۘۘ";
                    break;
                case -1269239922:
                    String str2 = "ۛۛۥۘۜۡۙ۫ۦۡۘۧۥۥ۫ۥۤ۟ۚۜۜۨۦۧۖۛۗۚۘۘۦۖۙۛ۫۟ۖۖۘۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-589849655)) {
                            case -1422522545:
                                String str3 = "ۦۙۦۘ۠ۥۨۜۗۜۛۚۜۧۖ۫۬۟۠ۤۦۨ۠ۥۘۥ۬ۖ۬ۢۥ۟ۢ۠ۧ۟۟ۡۥۜ۠ۙۦۜۘۦۘۖۘۡۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-138814230)) {
                                        case -1897978092:
                                            str3 = msgType != 1001 ? "۟ۙۡۛ۠ۙۢۘ۫۬ۗۘۥۘۦۙۦۘ۠ۨۡۘۢ۬ۗ۫ۨۘۗۗۡۘۙۖۡ۠ۨۚۢ۬ۖ۫۬ۤ۬ۘۤۥۚۧ" : "ۢۗۙۥ۠۠۬ۧۤۢۜۡۘ۟ۨۦۘۢۧۛۥۜ۫ۨۥۘۖۛۨۘ۫ۨ۟۬۬ۨۘۜۙۧ۠ۢ۬ۧ۟ۨۘۢۥۗ۠۟ۗ";
                                            break;
                                        case -1354193622:
                                            str2 = "۟ۖۜۨ۠ۘۘۦۜۦۘۡۦۜۘ۟ۚۦۘ۬۬ۡۘ۫ۜۜۘ۠ۦۥ۬۠۠ۙۙۘۤ۠ۨۨۨۗۥۦ۟ۙۙۦۜۥۘۦۜ۫ۙۚ۟ۚ۟";
                                            break;
                                        case -1163355862:
                                            str2 = "ۜۢۚۤ۬ۦۧۗۜۜۜۡۘۡۡۛ۫ۢۦۘۢ۫ۡۘۛۧۜۘۡۖ۟ۧۤۡۘۢۡ۠۫ۗۨۘۜۛۛۡۡ۫ۛۜۦۘۖۜۘ";
                                            break;
                                        case -494179958:
                                            str3 = "ۛۖۖۘۘۘۜۦ۟ۙۡۥۧۨۙ۟ۨۢ۫ۙ۫ۛۨۗۥۘ۟ۜۢۤۗۥۘۦۤ۠۫۫ۤ۟۟ۤ۬ۖۧ";
                                            break;
                                    }
                                }
                                break;
                            case -916180641:
                                str2 = "ۘ۫ۨۘۖۡۛۙۚۦۘۦۦ۫ۨ۫ۘۘ۬ۦۛ۫ۛۧۢۗۜۘ۬ۜۛ۠ۗۧۘۚۘۘۡ";
                                break;
                            case -345440585:
                                str = "ۙۧۚۡ۬ۖۘۥۢۖۘ۟۬ۜ۟۬ۖ۟ۚۘۨۧۘۙۤۖۘ۬ۘۘۘۘۚۥ";
                                continue;
                            case 1222376844:
                                str = "ۧۢۨۖ۠ۖۘۚۧۧۜۧۘۘۘۥۚۥ۠ۢۛۦۖۥۚۛۘۡۘ۟ۙۖۤۨۧۘۢ۬ۗ";
                                continue;
                        }
                    }
                    break;
                case -667327393:
                    return;
                case 3354439:
                    String str4 = "ۚۢ۫ۛۘۖۙۜۢ۠ۛۘۘۗۛۖۢۡۨۡۚۦۘۢۡ۬ۚۙۙ۟ۧ۟۫ۧ۬ۤۦۡۗ۠ۥۘۘۡۨۗۖۜۘۙۢۤ";
                    while (true) {
                        switch (str4.hashCode() ^ 1235129530) {
                            case -1501272196:
                                str = "ۘۛۗۨۘۤۦۡۡ۠۠ۥۘ۬ۧۖۘۜۘۚۧۨۛ۫ۧۘۘۨۜۘۘۥۚۡۘۡ۠ۖۙۘۘۙۚۦ۠ۛۛۤ۫ۧۧۗۖۡۖۘ۠۬ۨۘ";
                                continue;
                            case 237175285:
                                str4 = "۠ۚۦۘۘۚۦۙۘۨۢ۬ۖۘۗۢۥۧۦۦۘۨۧۘۥۚۡ۠ۡۢ۫ۙۦۙۨۚ۠ۤۘۨۡۜۘ۬ۤۦۘۙۗ۬ۨۦۢۡ۟ۢ۠ۨۜ";
                                break;
                            case 1002307266:
                                str = "۬۬۬ۡۛۡۘۚۖۛ۬ۢ۬ۤ۬۠۬ۚۛ۟ۨۜۘۙۛۙ۫ۢ۬ۡۡۨ۠ۤۨۘۢۚۖۢۖۡۗۛۖ";
                                continue;
                            case 1370540746:
                                String str5 = "ۤۖ۬ۢ۟ۜۦ۫ۘۜۜۡۘ۫۟ۖۜۖۨۘۥۜۜۖۤۡۘۜۛۥۨ۟ۖۥۖۜۘ۬ۖ۫ۙ۬ۖۘ۠ۘۡ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1940427277) {
                                        case -1636511791:
                                            str4 = "ۙۙ۟۟ۚۦۘۛ۬ۜۡ۬ۘۢۘۚۤۜۘۦ۬ۛۗۨۜۘ۟ۥ۟ۢۜۗۦۡۡۡ۟ۨۘ";
                                            break;
                                        case -1396532879:
                                            str5 = msgType != 1003 ? "۟ۘۧۘۡۜۨۘۤۘۜۘۢۖۡۘ۫ۥ۠ۥۧۨۘ۫ۨۘۢۥۧۖۗۙۡۗۙ۟ۧ۠ۙۡۨۗۚۦۘۢۗۘۘۚۘ۫ۛۥۥۘۗۥ۠ۨۨۘ" : "۠ۥۦۧۛۛۢۛۜۤۢۖۘۛۗۗۤۗۜۨۡۦۥۚۢۥ۟ۧۦۧۜ۟ۥۜۘ۟۠ۥۘۢۖۛ۠۠۬۬ۖۘۖ۟۟";
                                            break;
                                        case -1172097794:
                                            str4 = "ۡۦۗ۬ۤۚۥۤۡۚ۠ۧ۫۠ۢۛۗۘۜۥۦۘۤۨۡ۠ۛۘۘ۫ۡۖ۬ۦۨ۟ۡۘۘ";
                                            break;
                                        case 1427539983:
                                            str5 = "ۤ۠ۚۢۢۘ۠ۧۢۦ۠۬۠ۛۢۧۢۨۘ۫ۧۡۡۖۤ۠ۡۙۛ۠۟ۗ۟ۦۤ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 506441356:
                case 783660451:
                    str = "ۙۢ۬۫ۥۦۚۚۨۤۜۘۙۚۥۥۖۘۘۙ۠۟ۧۡ۠ۦۗۙۜ۟ۛ";
                    break;
                case 1154261731:
                    str = "ۖۙۧۛۛۚۙۙ۬ۜۦۢۜ۠ۧ۬ۛ۟ۘۛۚۢ۬ۤ۬۠ۥۛۚۛ";
                    break;
                case 1350447070:
                    ((na) this.OooooO0).OooOoOO();
                    str = "۟ۨۧ۟ۨۘ۬۟ۜۘۦۚۘ۬۫ۖۘۘۦۖ۫۫ۖ۬ۥۘۜۡۢ۬ۜ۟ۧۚۘۨۘۘ";
                    break;
                case 2103420401:
                    this.o00Ooo.setVisibility(4);
                    str = "ۙۢ۬۫ۥۦۚۚۨۤۜۘۙۚۥۥۖۘۘۙ۠۟ۧۡ۠ۦۗۙۜ۟ۛ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        ca caVar = null;
        String str = "ۧۘۜۘ۠ۘۖۤۗۢۚۗۨۘ۬ۛۜۘۥۧۘۘۨۗۘۘۤۙۖۘ۬۟ۨۘ۫۫۬ۖ۫ۜۙۦۥ";
        while (true) {
            switch ((((str.hashCode() ^ 244) ^ b.b) ^ 323) ^ 1860502999) {
                case -2140954076:
                    String str2 = "ۨۙۨۘۚۤۙۖۦۧۙۥۗ۠ۥۥۘۗ۠۟ۛۡۜۗۨۤۚۤۘۘ۠ۙ۠۠ۤۦۘۦۘ۟۫۠ۙۤۤۧۖ۠۫ۙ۠ۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1110901994) {
                            case -1817252742:
                                str = "ۦۙۦۘۧۧ۫ۙۖۖۤۘۖۛ۟ۡۛۘۖۙۥۤۘۙ۫ۤۘۘۧۘۖۙۖۢۗ۫ۙۜ۠ۗۘ۟ۡۖۨۖۘۢ۫ۡ";
                                continue;
                                continue;
                            case -1450715711:
                                str = "ۘۢۚۦۨۡۜۜۦ۟ۦ۠ۗۨۥۘۚ۬ۛۗۦۧۘۨ۫ۗۛۛۛۛ۬ۚۡۜۦۘۚۧ۬";
                                continue;
                            case 164527558:
                                str2 = "ۘۦۚ۠۟ۦۘۗۤ۠ۡۚ۬ۛۡۚۢۙۨ۠ۨۘۤۧ۟ۧۚ۬ۖۖۧۗۤۤۗۥ۠۠ۜۖۨۨ";
                                break;
                            case 1156039102:
                                String str3 = "۠۬۠ۨۖۖۘۨ۫ۨۡۚ۟ۧۡ۠۬ۜۘۗۦۖۧۖۡۘۜۙۘۘ۠ۥۨۘۦۙ۬۟ۙۜۨۨ۫ۥۗۨ۟ۙۛ۠ۤۧۘۥۘۘۤۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-2034300239)) {
                                        case -2135719804:
                                            str2 = "ۚۗ۟ۥۙۖۡ۠ۤ۬ۤ۠ۖۘۜۘ۠۬ۦۤۢۙ۟ۗۘ۠ۖۧۘۤ۫ۡۘۛ۠ۛ۫ۥۙ";
                                            break;
                                        case -1959039268:
                                            str2 = "ۖۧ۟ۙۚۘ۫ۘۖۙ۠ۛۖۥۦۦ۬ۥۘ۫ۛۗۡۛۤۘۘ۠ۚۦۨۖۗۨۚۙ۬ۤۜۘۡ۬ۚ";
                                            break;
                                        case -932571238:
                                            str3 = "ۙۥۜۘۡ۬ۡۘOۤ۫۬ۖۜۧۧۧۜۤۚۡۘۥ۬ۚۘ۫ۡۘ۟۬ۦۘ۠ۘۖۘۚۧ۟ۡۙۧ۬ۤۤۖۜ۫ۥ۬۠";
                                            break;
                                        case -442099603:
                                            str3 = caVar != null ? "ۘۨۦۘۖۦۥۘۖۖۜۘۦۨۜۜۘۙۧۘۡۦۦۧۘۧۘۘ۟ۗۤۛۜۥ۟۠ۢ۫ۗۨۡۦۦ۫ۘۧۘ۫ۘۙۛۢۖۘۨۢۧۥۚۚ" : "ۜ۠۟ۨ۬ۖۘ۟۫ۦۦۧۜۖۜۚۢۘۧۘۗۖۘۦ۟ۡۘ۟ۡۧۖ۠ۦۙ۫ۗۥۘۖۤۘۚ۟ۧۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1940388919:
                    str = "ۨۙۜۘۧۛۗۤۦۨۨۡۡۦۥ۟۠ۨ۬ۧۡ۠ۥۢۥۥۦۢ۠ۗۙۛۥۡۖ۬ۜۘ";
                    continue;
                case -1723343769:
                    String str4 = "ۤۖۜۗۛۖۘۘۙۛۙ۬ۜۦۧۗۧ۬ۜۦۨۘۘۨۨۡۘۘۦۘۦۚۡۘۖۥۤۢ۟ۤۘۙ۫۟ۚۘۙۛۜ۟ۤۤ";
                    while (true) {
                        switch (str4.hashCode() ^ 1161165893) {
                            case -713511465:
                                str = "ۦۙۦۘۧۧ۫ۙۖۖۤۘۖۛ۟ۡۛۘۖۙۥۤۘۙ۫ۤۘۘۧۘۖۙۖۢۗ۫ۙۜ۠ۗۘ۟ۡۖۨۖۘۢ۫ۡ";
                                break;
                            case -9937859:
                                str4 = "ۙۧۨۘۘ۠ۘۗۡۛۤۦ۠ۦۙۡۘۧ۠۟ۥۘ۬ۥۡۘۘۨۜۗۨۨۙۙۙ۬ۤۥۗۖ۟ۡۘ۟ۚۥ";
                                break;
                            case 268244140:
                                break;
                            case 1109010563:
                                String str5 = "ۧۢ۟ۙۛۘۘۘۧۚۚۦۗۧۢۗۧۜۘۧۛۘۘۨۤۤ۠ۧ۫ۜۢۥۘۥۦۖۚۥ۬";
                                while (true) {
                                    switch (str5.hashCode() ^ 2020593147) {
                                        case -1214059879:
                                            str4 = "ۤۢ۫ۙۢۨۘۘۤ۫۬۟ۨۘۦۖۚۤۦۜۛ۟ۢۖ۠ۛ۫ۨۘ۠۟ۡۡۜۦ۟ۛۙ";
                                            break;
                                        case -166186907:
                                            str4 = "ۡۨۧۘۛۜۗ۟ۛۖۘۗۙۥۘۢ۠ۨۘ۫ۖۚۢۖ۠ۜۗۢۜ۫ۗۧۖۘ۬۫ۘۘۥۡۨۜۨۥۘۡۘ۠ۗۖۖۘۗ۬ۛ۟۫ۘۘ۬ۧ۬";
                                            break;
                                        case 101494169:
                                            str5 = !caVar.isShowing() ? "۬ۛ۠ۥۧۘۘۡۧۨۡۧ۬ۛۜۥۘ۬۠ۡۘۛۨۥۘۚ۬ۡۘۤۖۛۤ۫ۥۧۢۘۘ۫ۥۥۘۡۦۙۚۤۦۘۧۛۡۛ۫۠" : "۫ۘۨۘۡۧۡۘ۠ۦۛۜۖۘۘۡۘۥۘ۠ۥۙۚۢۨۤ۫ۜۛۛۜۜ۫۟";
                                            break;
                                        case 518208268:
                                            str5 = "ۛۧۗۤۡۡ۠ۡ۫ۗۥۨۜ۫ۧۛۜۡ۬ۜۥۡۤۧۨۜۧۖ۟۠ۤۗۦۘۜۖۥ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1460788298:
                    return;
                case -1306745867:
                    caVar = this.o0Oo0oo;
                    str = "ۤۚۢۧۜ۬۟ۖۖۙۡۡۖۗۢۘۡۜۡۧۥۢ۫ۡۚۚۡۘ۟ۨ";
                    continue;
                case -1299556002:
                    super.onNewIntent(intent);
                    str = "ۨۚ۬ۚۢۚۚۘۦۘۛۛۙۧ۫ۚۖ۫۠۬۟ۜۘۜۗۤۧۖۚۘ۫ۤۖۖ۟ۢۖۖۘ";
                    continue;
                case -1144595814:
                    String str6 = "ۖۗۡۘۛۖۥۘۤۖ۟ۜ۠ۢۤۧۧۤۧۡۥۜ۫۫ۨۦۘ۫ۡۥۚ۟ۦۘۥۥۧۗ";
                    while (true) {
                        switch (str6.hashCode() ^ 451960284) {
                            case -712434879:
                                str = "ۧۛۢۗۙ۬ۦۘۘۘ۫ۥ۠ۘۧ۠ۧ۫ۦۘۢۜۡ۟ۚۥۘۗۥۗۖۦۡۧۤۗۡۜۨۨۖۘ۫ۜۜۧ۫ۦۘۖۨۡۘ";
                                break;
                            case 120285478:
                                str6 = "۬ۚۘۘۧۤ۬ۧۗۥۘۢۦۨۘۧۖۢۘۥۤۗۦۡۘۖۗۤ۠ۛۤۛ۠ۨۘۘۦۧۘ۠ۛۢ۬ۘۦۛۖۤ۫ۗۡۘ۬ۙ۟ۦۜۨۘۗۘۙ";
                                break;
                            case 995809464:
                                String str7 = "ۡۛ۫ۡ۫۬ۜۚۘ۫ۦۦۦۚۖۘۧۜ۫ۘ۟ۨۘ۟ۖۘۘۖ۫ۜۥۘۜۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 89499419) {
                                        case -2041519990:
                                            str6 = "ۛۚ۟ۦۥۜۘۦ۬ۨۧۗۜۘۘ۠ۡۘۡۡۙۦۦۚۛۥۡۚۡۡۧۡۤۜ۫ۥۢۘ۠ۦۨۙ۬ۡ۟ۦ۫ۘۘۦۨۜ";
                                            break;
                                        case -1967178408:
                                            str6 = "۫ۤۖۘۖۡۖۚۥۡۜ۬ۨۘۡۤۖۛ۠ۢۤۢۡۘۛ۬۬۟ۦ۬ۙ۬ۘۘ";
                                            break;
                                        case -805357295:
                                            str7 = intent.getExtras().getBoolean("needUpdate", false) ? "۫ۗۦۧ۬ۥۙۙۡۡۛۨۘ۬ۛۡ۠ۢ۟۬ۜۗۤۘۡۘۜ۫ۗۤ۟۟۬ۥۤۧۡۙۡۜۨ۬ۛۖۙۤ۬ۧۤۥ" : "ۧۘ۬ۖ۬ۜۡ۫ۘۘۦۙۜۘۙۜۥۘۙ۫ۗۚۤۛۡۥۘۧۢۚۙ۟۠ۗ۠۟ۗۗ۠ۖ۬ۥ۟ۙۛۖۙۢ۠ۘۧۘ";
                                            break;
                                        case 799761064:
                                            str7 = "۠۫۠ۨ۬ۛۖۜۜ۫ۖۨۘۙۥۛۖۦۘۘۥۨۘۘۥۦۛۛۨۙۥۦۗ";
                                            break;
                                    }
                                }
                                break;
                            case 1175800830:
                                break;
                        }
                    }
                    break;
                case -1025677813:
                    ((na) this.OooooO0).OoooO00();
                    str = "۫ۚۤۘۚۦۘۡۜۡۤ۟ۜ۫ۤ۟ۨ۠۟ۙۖۗۦۨۘ۫ۤ۫ۨۡ۬";
                    continue;
                case 895706511:
                    String str8 = "ۗۘۧۦۙۨۘۨۚۢۙ۠ۜۢۧۗۖۤۨ۠ۦ۠۬ۚۘۨ۠ۢۙۧۨۘۡۤ۟ۜ۟ۤۜ۠ۥۤۥ۫ۜۘۘۘۚۜۜ";
                    while (true) {
                        switch (str8.hashCode() ^ 1715827117) {
                            case -827518461:
                                str8 = "ۡ۫۠ۘ۬ۜۘۡۚۘۙۢۘۘ۠ۖ۫۟۟ۢۤۢۙ۬ۨ۟۫ۘۢۦ۠ۡ۟۬ۥۘۦۧۥ";
                                break;
                            case -547811165:
                                String str9 = "ۥۘۛۦ۫ۤۨۖۗۧۚۦۥۖۚۦۥۤ۫ۥۤ۫ۘۘۡۨۘۘۢۢۖ۬ۦۗۗۢۥ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-824722264)) {
                                        case -1172386586:
                                            str9 = intent.getExtras() != null ? "ۖۥۦۚۛۧۡ۟ۜۖۚۖۡۘۢ۫ۚۡۙ۟ۘۖۖۘۨۧۜۖۧۦۨۗۙۙۦۢۨۘۧۘۡۘ" : "ۥۙۙۦۥۘۦۖۦ۬۬ۧۧۙ۬ۚۤۦۨۙۗۧۥۥۘ۟ۥۜۛۗۘ۬ۦۛ۬ۜۘۥۖۡۖۨۡۛۡ۟۬۬ۖۘۢۦۗۘۦۘ";
                                            break;
                                        case -168214109:
                                            str9 = "ۙ۬ۢۦ۬ۡۘۧۥۧۘ۟ۤ۫ۢۗۗۦۗۥ۠ۡۨۥۗۡۘۧۡۢۦۢۙۖۡۘۘۡۚۗ۫ۜۦۖۦۗ";
                                            break;
                                        case 764079582:
                                            str8 = "ۡۜ۬ۗۡۦ۠ۙۜ۬ۚۡۘ۟ۜۡۖۙۚ۠ۜۘۗۧۥۙۦ۬ۖۡ۬ۦۙۘ۬۠ۙۤۦۥۤۡۘۙۧۘۥۢ";
                                            break;
                                        case 1588640853:
                                            str8 = "۟ۘۚۘۥۨۘۘ۟ۘۦۨۘۜ۬۟ۤۥ۫ۨۖۚۖۦۦۘۙۙۖۥ۠۠ۧۚۡۙۨۧۚۗۖۘ۟ۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -151816855:
                                break;
                            case -121958378:
                                str = "ۛۤۗۙۦۧۚۦۥۘۨۖۨۘۛۜۗۙۖۘۗ۬ۥ۬ۨۡۘۘۙۤۜ";
                                break;
                        }
                    }
                    break;
                case 2090117864:
                    str = "ۚۢ۬ۙۘۛۜۧۚۜۨۜۦۖ۟۬ۥۘ۬۠۠۬ۚ۬ۦۨۥۙۖۙۖۤۤۖۤۜۘۜ۬ۡۢ۫ۦۡۨۖۥۚۡۨۤ۬ۘۙۙ";
                    continue;
            }
            str = "۫ۚۤۘۚۦۘۡۜۡۤ۟ۜ۫ۤ۟ۨ۠۟ۙۖۗۦۨۘ۫ۤ۫ۨۡ۬";
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۛۖۨۨۚۥۘۚ۬ۢ۟ۚ۫ۡۡۨۘۡۦ۠ۧۛ۟ۦۢۖۘۤۡۧۡۖۡۚۘۘۙ۠ۨ";
        while (true) {
            switch ((((str.hashCode() ^ 759) ^ 899) ^ 550) ^ 1733397035) {
                case -1795555007:
                    String str2 = "ۛ۟ۥۥ۠ۦۘ۬ۘۘۖۥۙ۟ۦۥۜۙۡۙۥۚۚۦۘۙۗۨۥ۫ۧۗۧۨۘ۠۟۟";
                    while (true) {
                        switch (str2.hashCode() ^ 1466834474) {
                            case -1034116706:
                                str = "۬۫ۖۘۨۙۖۛۢ۬ۡۥۘ۠ۧۘۥۥۤۨۧۜۘۜ۬ۦۛۙۥۢ۠ۥۘۖۗۢ۬ۢۤ";
                                continue;
                            case -253721477:
                                str2 = "ۦۡۦۘۥۡۘۜۜۡۢۖۨۘۙۧ۫ۗ۫ۤۗۜ۬ۤ۫ۤۧۗۨۘۘ";
                                break;
                            case 415224915:
                                str = "ۧۙۜۘۤۢۢۨۡ۟ۡۘۥۘۦۢۜ۬ۧۥۘۤۦۜۘۙۦۜۘۦۘۨۘۜۡۜۢۤۡۤۧ۫ۦۜۘۗۧۧۘ۫ۧۛ۫ۥۘ";
                                continue;
                            case 788644755:
                                String str3 = "ۨۥ۬ۦۤۘۘۜۢۙۧۦۘۖۚۦ۫ۢۧ۟۫ۤۜۨۙۚۦ۬۠ۛۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1277091819) {
                                        case -1869140971:
                                            str2 = "ۗۦۢۖۦۖۘ۠۫ۗ۠۫ۥۨۚۖۘ۠۟ۖۘۘۜ۟ۦۢۘۘۡۨۗۗۖۤۤۤۨۛۘۧۛۘ۬ۢ۟ۜۘ۠ۡۢۗۗۜۡ۬ۦۦۚۦ";
                                            break;
                                        case -359403747:
                                            str3 = "ۚۡ۟۫۫۟ۘ۠ۡۘۨ۫ۖۧ۫ۦۘ۬ۛۧۦۥۦ۟ۛ۫ۖۖۜۘۡۗۖۘۢۖ۬ۘۤۘ";
                                            break;
                                        case 19328791:
                                            str3 = this.o000OOo ? "ۢۙۚۦ۫ۘۘ۠ۦۘۧۗۢۜۤۖۙ۬ۨۘۜۛۦۤۡۘۖۜۡۤ۫۫ۢۦۜۘۤۛ۫ۖۦۡۘ۟ۜ۫۟ۗ۫ۦۘۧۜۧۤۤۜ" : "ۤۨۛۢۖۡۗۡۨۜۜۖۖۖۛ۫ۢۦۗۡۤۜۖۘۥۗۙۜۢ۬۫ۦ۬ۚۧۙۥۦۘۘ۟۠ۜۘ";
                                            break;
                                        case 1460518414:
                                            str2 = "ۛ۟۟۫ۗۘۧۦۛۧۤۖۥۦۘۖۚۜ۟ۡۦۘۖ۫ۘۘ۫ۚۚ۟ۖۙۗۡۙۨ۫ۛۗۡۡۘۥۘۖۘۖۦ۫ۤۦۖۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -235995991:
                    return;
                case -43426336:
                    str = "ۥۜۨۘۥۛۦۘۗۛۧ۟ۦۖۖۘۧۤۡۚۦ۟ۧۜۘۖۘۤۜۚۧ۠ۦۘۨۘۜ۬ۛ۬";
                    break;
                case 422741030:
                    this.OooooOo.findViewById(R.id.im_remvoe_view).callOnClick();
                    str = "۬۫ۖۘۨۙۖۛۢ۬ۡۥۘ۠ۧۘۥۥۤۨۧۜۘۜ۬ۦۛۙۥۢ۠ۥۘۖۗۢ۬ۢۤ";
                    break;
                case 1407033788:
                    super.onPause();
                    str = "ۥۗ۬ۢ۠ۚۢۢۜۘۗۚۙ۟ۖۘۘۦۥۖۘۨ۬ۨۘۖۧۥۘ۟ۢۖۙ۠ۦۜۘۘۘ۠ۗۗ";
                    break;
                case 1753231977:
                    this.oo0o0Oo = false;
                    str = "ۨ۬ۥۙۗۖۨۤۡ۬ۢۦۨۛۛۥ۠ۖۘۛۦۘۖۜۦ۫ۜۧ۬";
                    break;
                case 1849078293:
                    bh.OooO0o0(this);
                    str = "ۢۜۥۘۙۢ۠ۗۚۨۛۛۢ۬۬ۤۗۘۦۛۦۘ۟۫ۥۘ۟ۙ۬ۖۦۗۨۤۢ۟ۥ۫";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۚۡۥۘۤ۬ۘۘۡۤۡۘۚۙۜۘۢۧۘۜۗ۫ۙۗۙۥ۟ۜۘۚۜۖۘۧۨ۠ۢۨۙ۫ۛۚ";
        while (true) {
            switch ((((str.hashCode() ^ 915) ^ 198) ^ 70) ^ 125278952) {
                case -2063793057:
                    this.oo0o0Oo = true;
                    str = "۬ۜۨۨۙۧۚۥۗۤ۫ۘۘ۬۫ۖۘۗۜۡۘۤ۟ۚ۫ۥۖۡ۬ۧۨ۠۠ۥۦۙۛ۠ۡۗۘ۠ۜۘ۠ۡۙۨۗۢۦۦۚۚۘ";
                    break;
                case -1341978641:
                    return;
                case -757969106:
                    str = "ۗۤۥۗۜۡ۫ۙ۫ۥۢ۬۠۠ۖۗۢۨۘ۠۫۫ۡۧۦۗۜۜ۠۬۫۬ۡۢ۬۬ۡۡۘۡۚۥۘۚۡۖۘۘۘۘۘۦ۠ۧۧۦۧۘ";
                    break;
                case -722350246:
                    String str2 = "ۢۚۨۘۚۦۙۡۗۛ۟ۥۤۙۦۚ۟ۤۨۘۨۧۘۗۦۢۨۦۨۚۖۦۖۜۗۥ۟۬ۢۢۙ۟ۚۡ";
                    while (true) {
                        switch (str2.hashCode() ^ (-142373900)) {
                            case -332159097:
                                str = "ۗۛۖۘۥۚۜۘۗ۟ۜۗۢۥۗۤۘۖۧۧۨۛۛ۬ۦۜۧ۬۬ۗۨۥۤۖۢ۟ۢۗۢ۬ۨۘ۬ۤۢۚ۟ۨۘ۟ۦ۫";
                                continue;
                            case 139447223:
                                str = "ۧۚۨ۬۠ۡۘۘۤۤۙۧۦۡۤۚ۟ۢۥۘۨۚۜۤۛۥ۟ۘ۬ۚۢۦۘۥ۠ۘۧ۬ۖۘۛۜۙۘ۬ۙۖۦ۠ۨۜۘۘۖۦۥۛۨۧ";
                                continue;
                            case 472093912:
                                String str3 = "ۛۥۥۘۚۜ۬ۗ۟۟ۧۢۖۘ۟ۨۖۘۛۦۨۘۡۘۧ۟۟ۖۘ۠ۤۜۘۦۚۚۙۡۧۨۥۡ۬۬ۚ۫ۧۜۗۘۡۘۡ۟ۚۡۜ۟ۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-780933623)) {
                                        case -927552393:
                                            str3 = "ۡۥۧۘ۠ۜۦۧۘۖۘۘ۠ۜۜۙۤۙۘۨۖ۠ۡۨۨۡۘ۠ۜۡۙۖ۫ۛ۠ۦۘۨۨۖۨۖۧۦۦۘۘ";
                                            break;
                                        case 366414404:
                                            str2 = "ۨۜۚۡۖۚۚۤۙۧۨۡۚۚ۫ۙۧۦۘۚۗۖۘ۟۫ۨۘۨ۟ۘۦۤۖۘۖۚۦۥۗ۬";
                                            break;
                                        case 479509781:
                                            str3 = this.oo000o ? "۫ۘ۬ۥۥۥۖۗ۟ۢ۠ۤۚۧ۫ۢ۫ۘۦۘۡ۫ۢۦ۬۬ۥۡۙ" : "ۤۚۥۘ۫ۤۡۘۖۢۨۙۡۢۦۢ۟ۡۤۢۡۜۦۤۡۖۘۚۨۘۘ۟ۨۥۘۡۜ۠ۥۙۛۜۖۦۘۖۙ۟";
                                            break;
                                        case 1355709418:
                                            str2 = "۟۠ۙۖۙۥۡۗۛۚ۠ۘۨۥۘۨۗۦۤۗ۠ۛۛۜۘ۬۠ۥۘ۬ۧ۠ۙۨ۬۫ۨ۟";
                                            break;
                                    }
                                }
                                break;
                            case 902264057:
                                str2 = "ۥۢۖۨۗۘ۟ۢۦۘۨۦۚۢ۫ۜۘ۟ۧۥۛۚۙۙۜ۟۬ۗۘۚۖۙۨۢۢۗۗۨ";
                                break;
                        }
                    }
                    break;
                case -598419231:
                    super.onResume();
                    str = "ۗۨۦ۫ۜۜۘۘۙ۬ۦۖۘ۠۠ۙۡ۫ۙۜۘۜۙۥۡۜۧۖۧۡۨۘۛۚۚۗۥۛ۫ۛۙۨ۠";
                    break;
                case 1930870554:
                    bh.OooO0o(this);
                    str = "ۤۥۨۘۖۛۥۦۤۖۚۢۡۘۙۢۥۘ۠ۖۦۖۛۖۘۨۥۡۜۢ۫ۗ۫ۨۘۛۤۘۘۖ۟۫۫ۙۗۘۘۜۘۙۨۡ۬ۗۡ۬ۢۧۘ۠ۨۘ";
                    break;
                case 2018315881:
                    ((na) this.OooooO0).Oooo00O();
                    str = "ۧۚۨ۬۠ۡۘۘۤۤۙۧۦۡۤۚ۟ۢۥۘۨۚۜۤۛۥ۟ۘ۬ۚۢۦۘۥ۠ۘۧ۬ۖۘۛۜۙۘ۬ۙۖۦ۠ۨۜۘۘۖۦۥۛۨۧ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        String str = "ۙۨۧۘ۠۟ۚۢۦۘۜۡۜ۠ۛۡۘۢۥۨۘۦۢۡۚۨۡۧۜۜۘۚۖۗۡۦۘۗۡ۟ۡۡۨۘۖ۠۫ۗۢۖۘۚۖ۬";
        while (true) {
            switch ((((str.hashCode() ^ 359) ^ 613) ^ 321) ^ (-152820742)) {
                case -2103104268:
                    str = "۠ۢ۫ۧۛۜۙ۟ۤ۫ۖۘۜ۟ۜۘۢۤۛۢۛۗۙ۬ۘۥ۫ۦۘۥۚۛ۠ۙۗۗ۬ۧۧۨۗۗۖۘ۬ۙۦۤ۟ۗ";
                    break;
                case -1214177163:
                    return;
                case -906390164:
                    this.oo000o = true;
                    str = "ۨۡۘۘۙۜۧۘۖۖۦۘۜ۫ۚۨۛ۠ۢۧۜ۫۫ۦ۠۫ۤۧ۫ۡۘۦۜۦۗ۫ۙۤۙۖۘۘۨۦۘۛۚۚۧ۠ۜۘۢ۠ۨ";
                    break;
                case 1827712524:
                    super.onStop();
                    str = "ۧۚۥۘۘۘ۠ۗۛۤۖۗۧ۠ۚۦۙۛۦۙۧۚۧ۬ۡۘ۟ۙۛۦ";
                    break;
            }
        }
    }

    public void ooOO() {
        StringBuilder sb = null;
        String string = null;
        boolean zOooO0O0 = false;
        StringBuilder sb2 = null;
        String str = null;
        boolean zOooOOO = false;
        StringBuilder sb3 = null;
        boolean zOooO0O02 = false;
        StringBuilder sb4 = null;
        String str2 = null;
        boolean z = false;
        StringBuilder sb5 = null;
        String str3 = null;
        String str4 = "ۜۗۘۘۖۥۚۥۗ۬ۨۖ۠ۚۡۢۨۧۚ۬ۜۚۡۡۘۘۘۖۛ۫ۖۘۨۤۧۛۜۦۘۛ۠ۦۨۤۡ۬ۗۥ۫ۖۜ";
        while (true) {
            switch ((((str4.hashCode() ^ 332) ^ GuideToClickView.a.f) ^ 142) ^ 160585968) {
                case -2069553726:
                    str4 = "ۖ۠ۦۧۚۘۘۛۡۦ۫ۙۦۘۙ۬ۦۥۙۦ۫۬ۨۥۤ۟ۧ۟ۦۚۨۥۤ۬ۚ۠۫";
                    sb5 = sb2;
                    continue;
                case -1808194219:
                    sb5.append(str3);
                    str4 = "ۗۡۤۘۖ۟ۜ۟ۜۛۘۥۗۦۘۘۜ۫ۡۘ۬ۙۜۧۢۙۙۙۛۡۡۘۘ۠ۜ۟ۧۡ۬";
                    continue;
                case -1773427552:
                    str = "=====pushDexToSdcard: ";
                    str4 = "ۚۙۗ۟ۖۜۘۗۘۡۤۦۢۗۦۜۧۜۡۘۙ۫ۖۘۦۥۢۜۨۢۢۗۡۘۗۥۖۘۘۖ۫ۗ۬ۗۡۡۛۦۜۖۘ۟ۥۨۘۘ۟ۨۘۚۗۧ";
                    continue;
                case -1504362390:
                    sb.append(g6.OooOo0o);
                    str4 = "ۙۖۡۥ۟ۢۛۦۦۜۜۧۘۙ۟۠ۥ۫ۗ۬ۦ۟ۙۘۦۤۧۧۦۘۛ۟ۨۛۗ۠";
                    continue;
                case -1377620242:
                    sb2 = new StringBuilder();
                    str4 = "ۦۡۘۤۡ۫ۥۜ۠ۗۥۧۘۖۢ۟ۖ۟ۧۖۦۡۘۘۡۘۘۨ۟ۦۘۤۖۦۘ۠ۡۦۛ۟ۙۖۡۘۘۦۜۧۘۥۗۤ۠ۧۨۘ";
                    continue;
                case -1364958590:
                    sb4 = new StringBuilder();
                    str4 = "۠ۙۡۘۦۖۚۦۗۚۜۨۖۘ۬۬ۚۥۚۜۡۧۛۦۜ۫ۗۙۙ۟ۛۢ";
                    continue;
                case -1243183217:
                    str4 = "ۖۢۜۘۙ۬ۙ۫ۜۘۡ۬۫۟۠ۚۤۘۥۘۢۜۨۘ۠ۚۜۘۨۗۢۦۛۘۢۘۦ۠ۨۘۡۛۤۖۘۙ۟ۦۘۥۤۢۛۚۨۗ۠ۙ";
                    continue;
                case -1191327389:
                    String str5 = "ۡۚۦ۬۠ۜۢ۟ۨۘۡ۫ۖ۬ۨۙۢ۟ۜۨۘۡۚۜۘۡ۬۬ۤۛۥ";
                    while (true) {
                        switch (str5.hashCode() ^ (-1582099651)) {
                            case -868651782:
                                str5 = "ۤ۫۟۠ۥۛ۠ۜۘۗۨۘۢ۟ۚۖۢۧ۟ۜۨۜۘ۠ۥۧۥۘۦ۠ۡۘ";
                                break;
                            case -868290363:
                                String str6 = "ۘۗۤۖۢۥۖۖۧۘۛۖۥۘۙۡۙۦۗۨۡۧۘۘۙۡۥ۬ۜۖۘۗ۟۬۟ۡۥۜۖ۬";
                                while (true) {
                                    switch (str6.hashCode() ^ (-1947178754)) {
                                        case -292396472:
                                            str5 = "ۘ۬ۦۡۤۥۛ۠ۥۡۖۡۗۧ۬ۨۛ۫ۗۨۥۨۢ۬ۙۚۡۖۥۡۘۤۗۦۘۖۨۤۤۗۡۘۛۨۘۘۚۧۢ۬ۥۤ";
                                            break;
                                        case -290567395:
                                            str6 = !zOooOOO ? "ۡۚۨۘۚۜۥۢۖۘۧۚۥۘۚۤۖۖۡۘ۫ۧ۠ۡۛۛۙۢۙۡۚۤۢۙۥۙۛۖۘۜۘۨۘۡۗ" : "ۚۦۤۛ۠۫ۡۢۢۡ۫ۥۘۨۡ۬ۢۡۗۙ۟۫۟ۤۚۛۦۜۘۨۛۙۡۙۜۦۛ۬ۨ۟ۛۢۦۧۘۗ۫ۘۘ۟ۢۙۜۦۨۘ۟ۥ";
                                            break;
                                        case 223667198:
                                            str5 = "ۢۛۧۨۢۖۘۚۗۨۙ۠ۗ۟ۡۜۘۡ۠ۗ۠ۙۖۘۧۘۚۡ۬۬ۥ۟۬۟ۚۘۘ۠ۡۖۘۗۦۜۦۢۨۘ";
                                            break;
                                        case 1708094197:
                                            str6 = "ۚۘۚۤۚۜ۟ۡۧۘۙۛۢۚۢۢۥۛ۠۫۬ۗۖۤۦۘۚۜۨۘۡۦۧ۠ۜۜۘۦۗۖ";
                                            break;
                                    }
                                }
                                break;
                            case -556869321:
                                break;
                            case -70832325:
                                str4 = "ۜۧۡۘۦۥۤ۫۫ۨ۬۟ۥ۟ۘۙۗۛۘۘۙۚۘۤۡ۫۬ۖۡۘۤ۫ۤ";
                                break;
                        }
                    }
                    break;
                case -1155002851:
                    sb3.append("=====pushDexToSdcard: dex文件已存在,isSame:");
                    str4 = "ۛ۫۬ۜۢ۠ۥ۬ۗ۠۟ۜۘۡۨۘۗ۬ۛۤ۟ۢۡۛۦۘۚۛۦۘۥۗۜ۠ۧۘۜ۫ۘۚۡۘۢۨۜۦۢۜۘۙۗۜۢۢۖۘ۟ۢ۠";
                    continue;
                case -1013620349:
                    return;
                case -738412752:
                    sb3.append(zOooOOO);
                    str4 = "ۢۤۜۘۢ۠ۖۛۡۥۜۙۥۘۛۨۘۨۖۖۘۖ۟ۧۛۚ۟ۦۜۜۖ۬۬ۖۘۘۘۗۤۨۛ۫ۗۤۗۨۘ۫ۗ۠ۖۚۗۨۗۡۘۥۖۤ";
                    continue;
                case -520443539:
                    sb3.toString();
                    str4 = "۫ۙۨۘۛۦۨۘۧۦۘ۫ۚۨۘ۫ۜۧۨۦۥۘۘ۫۬ۢۗ۟ۥۨۘۘۖۘۢۛۙۖۛۛۡۘ";
                    continue;
                case -501694004:
                    str4 = "ۚ۠۟۟ۙۨۖۜۨۘ۫ۤ۫ۨ۟ۢۦۚ۫ۢۦۦۙۜ۫ۖۖ۫ۤۡۧۥۨۘۛۖۖۘ۠ۙۧۡۛۚ۬ۦۙ۟ۡ";
                    sb5 = sb4;
                    continue;
                case -415018315:
                    sb5.toString();
                    str4 = "۟۠ۘۗۚۜ۠ۡۛۙۢۚۙۚۨۘ۬ۥۘ۬ۚۧۨ۬ۡۨۛۜۘۧۤۘۘ";
                    continue;
                case -339432561:
                    sb.append(File.separator);
                    str4 = "ۜۙۘۘ۟۠ۨ۠ۘۦۤۡ۠ۙ۬۠ۦ۟ۜۥۛۖۖۘۜۖۥۨۜۦ۠ۥۤۛ۟ۦۘۘۙۗۥ۠ۜۘ۬ۤۤۜۡ۫۠ۥۢۙۢۖۘ";
                    continue;
                case -205261861:
                    String str7 = "ۡۜۥۙۧۤ۠ۨۜۛۧ۠ۡ۫ۨ۬ۥۢۗۚۜۘۡۢۗۜۧۘ۫ۧۙ";
                    while (true) {
                        switch (str7.hashCode() ^ 1454191980) {
                            case -1595040260:
                                str7 = "ۥۜۡۛۢۛۢۙۛۡۨۜۘۨۤۘۧ۫ۡۢۡۥۡۙۘۦۘۤۖۚۙۗۥۛۚۜۘ";
                                break;
                            case -1082736258:
                                str4 = "ۘ۟ۖۘ۬۬ۘۘۜۖۖۘۡۧۦۘۨۢۚۤۙۛۤۗۢۢۘۘۘۡۗۗۦ۟ۨۘۜۚۦۙۗۗۨۛۘ۟۬ۡۘۗۢۤۖۢۜۘ";
                                continue;
                            case -483443236:
                                String str8 = "ۡۥۥۘۛۛ۠ۨۛۤۡۛۛۛۚ۫ۚۜۤۤۨۦۦ۟ۥۘۤۙ۬ۡ۠ۥۘۛ۟۫ۚۛۥۘۚۛۖۧۦۗۢۨۛۖۘ";
                                while (true) {
                                    switch (str8.hashCode() ^ (-324702321)) {
                                        case -624455544:
                                            str7 = "ۦۖۛۧۖۥۘۗۛۥۘۥۢ۫ۛۙۘۘۜۢ۫ۙۖۖۘۧۤۢۥۖۧۘۘۖ۬ۢۥۧ۟ۖۢۗۚۖۘۛ۫ۜۘ۫ۨ۫ۛ۬ۖ";
                                            break;
                                        case -444190573:
                                            str7 = "ۨ۠ۖۘۡۥۚ۟ۨۙ۠ۨۤۡ۟۟ۡۥ۠ۜۢۛۥۖۢۘۙ۫ۜۖۥۘۗۖۡۥۖۨۡۜۧ۠ۙۨ";
                                            break;
                                        case 206291276:
                                            str8 = !new File(string).exists() ? "ۧۨۙ۠ۗۚۛۚ۫ۛۦۙۤۚۖۗۤۤ۫۬ۢۥۛ۬ۧۖۢ۫ۙ۟ۙۘۖۦۘۚ۠ۙۢۛۧۧۙۦۘۙۗۦۘ" : "ۚۖ۠۬ۙۛۥۦ۫ۙۨۘۘۛ۫ۧۧۧۥۘۘۚۦۘۨۥ۠ۚ۠ۧۗۧۤ";
                                            break;
                                        case 504425294:
                                            str8 = "ۖ۫ۙ۬ۙۥۘۡ۠ۜۜۜۧ۟ۢۥۘۦۡۜۗۥۘۢۖۡۘۡۘۦۘ۟ۦۦۦ۟ۥۤۘۤۥۖۨۧۜۦ";
                                            break;
                                    }
                                }
                                break;
                            case 2087095976:
                                str4 = "۟ۢۛ۠ۢ۠ۧ۠ۘۗۢۥ۠ۖ۫ۚۦۡۗۘۤۢۢۗۤۜۧۘۡۢۘۡۥۢۢۛۨۢ۟ۜۘۜ۫ۡ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -156203347:
                    sb.append(getFilesDir());
                    str4 = "۫ۘۨۘۤۨۡۖۤۧۤ۟ۢۧۛ۠ۛۡۙۘۙۜۥۜۚۤۤ۫ۗۚۤۗۤۖۡۜۘ";
                    continue;
                case 22866253:
                    break;
                case 56641817:
                    zOooOOO = u8.OooOOO(this, g6.OooOo0o, string);
                    str4 = "۫ۡۥۡ۠ۥۢ۠ۜۤۨ۟ۙۜۥۘۘ۟ۥ۫۟ۥۘۛۘ۟ۤۤ۟ۜۗ۬";
                    continue;
                case 146591483:
                    str4 = "ۛ۠ۧ۫ۗ۬ۛۨۘۘ۫۫۫ۚۧۥۦۜۨۘۡۧۘۜۜ۫ۘۦۨۥۗۚۛۤ۟ۧۦۡۗ۬ۢۚ۫ۡۘ";
                    z = zOooO0O02;
                    continue;
                case 206435517:
                    string = sb.toString();
                    str4 = "ۤۚۥ۟ۡۜۛۘۜۖۤۡۨۛۦۘۤۥ۫ۢۨۙ۬ۦۥۥۙۥۤ۬ۥۥۡۧۡۙۖۚۧۛۤۘۘ";
                    continue;
                case 477237031:
                    zOooO0O0 = a4.OooO0O0(getApplicationContext(), g6.OooOo0o, string);
                    str4 = "ۤۖۧۘۖۧۚ۟ۥۢۛۛۥۗۧ۟ۛ۠ۜۤۧۖ۬ۡۘۦۜۜ۬ۗۜۘ";
                    continue;
                case 483490744:
                    sb5.append(z);
                    str4 = "ۜۢ۬ۢ۬ۨۘۙۥۥۨۨۘۛۤۙۜۡۘۗۛ۬ۨۨۦۘۦۖۤ۠ۦۗۚ۠ۥ۠۫ۛۗۚۙۗۜۖۤ۬ۧۧۢۨۘۖۡۥۘۛۙۢ";
                    continue;
                case 1409649591:
                    sb = new StringBuilder();
                    str4 = "۟ۖۥۤۘۘۖۡ۠ۛۚۙۢۜ۬ۧۤۙۨۚ۠ۘ۟۫ۛۜۛۤۧۧ";
                    continue;
                case 1574502662:
                    zOooO0O02 = a4.OooO0O0(getApplicationContext(), g6.OooOo0o, string);
                    str4 = "۬۫ۦ۟۠۠۟ۢ۬ۧۜۢ۠ۦۧۘ۠ۖۧۘۘۚۚۗۗۙۤ۬ۜۘۜۗۤ";
                    continue;
                case 1625253073:
                    sb3 = new StringBuilder();
                    str4 = "۫ۢۨ۬ۘۘۖۘ۬ۥۗۦۘ۠ۘۘ۬ۤۢۨۜ۠ۜۖۧ۬ۤۥۘ۫ۖۚ۫۫ۖۘۦۥۜ";
                    continue;
                case 1639535288:
                    str4 = "ۡ۬ۨ۫ۥۜۘۚۢۗۙۙۤۤۢۙۘۨۥۘ۠ۦۦۘۘۤۖۤۤۨۜۤۜۘۜۤۨۘ۬۫ۘۘۥ۠ۘ۠ۥۥ";
                    str3 = str;
                    continue;
                case 1782811069:
                    str4 = "ۚۜۛۖۚۥۥۦۥۢۜۜۘۜ۫۟ۚۖ۟ۢ۬ۛۛۛۥۘ۟ۡۛۜ۠ۧۗ۫ۘۚۤ۟";
                    str3 = str2;
                    continue;
                case 1876741475:
                    str4 = "ۤۢ۠۠ۖۧۦۚۗۡۜۘۤۗ۠ۛۦۘۦۦۦۧ۟ۥۨۘ۠۬ۘۧۛۦۗ۠ۥۘ۟ۙۧ۬ۜۖۘ";
                    z = zOooO0O0;
                    continue;
                case 2009406097:
                    str2 = "====覆盖=pushDexToSdcard: ";
                    str4 = "ۥۘ۬ۧ۬ۘۘۚۧ۟ۢۦۤۥۖ۟ۗۚۛۖ۬ۘۘۗۢۙ۠۠ۘۘۧۜۥ۠ۤۜۗۖۙۤۧۜۘۗۨۥۘ";
                    continue;
                case 2116772466:
                    str4 = "ۤۢ۠۠ۖۧۦۚۗۡۜۘۤۗ۠ۛۦۘۦۦۦۧ۟ۥۨۘ۠۬ۘۧۛۦۗ۠ۥۘ۟ۙۧ۬ۜۖۘ";
                    continue;
            }
            str4 = "۬ۛۘۘۢۥۨۡۙۦۢۜۡۘۛۛۙۚۖۘ۟ۢۧۦۛۜۘ۬ۢ۟ۙۚۨۘ۟ۙۛۗۡ۫ۗۙۧۡۤۢ";
        }
    }
}
