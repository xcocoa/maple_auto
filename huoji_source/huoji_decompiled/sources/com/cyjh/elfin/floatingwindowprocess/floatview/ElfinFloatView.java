package com.cyjh.elfin.floatingwindowprocess.floatview;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ac.R;
import com.anythink.expressad.d.a.b;
import com.anythink.expressad.exoplayer.i.a;
import com.anythink.expressad.video.module.a.a.m;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ElfinFloatViewEvent;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mq.sdk.MqRunner;
import java.lang.ref.WeakReference;
import org.greenrobot.eventbus.ThreadMode;
import z2.a5;
import z2.b7;
import z2.c5;
import z2.d8;
import z2.fc;
import z2.h7;
import z2.i7;
import z2.ii;
import z2.j7;
import z2.l10;
import z2.m7;
import z2.mc;
import z2.me;
import z2.q6;
import z2.r10;
import z2.r6;
import z2.s6;
import z2.t4;
import z2.t6;
import z2.w3;
import z2.y8;

/* JADX INFO: loaded from: classes.dex */
public class ElfinFloatView extends LinearLayout implements View.OnClickListener {
    private static final int o0000 = 1;
    public static final String o00000o0;
    private static final int o00000oO = 1001;
    public static final int o00000oo = 3000;
    private static final int o0000O = 2000;
    private static final int o0000O0 = 60;
    private static final int o0000O00 = 2;
    private static final int o0000O0O = 2;
    private static final int o0000OO = 5;
    private static final int o0000OO0 = 1000;
    private static final int o0000OOO = 1000;
    private static long o0000OOo = 0;
    private static final int o0000Ooo = 1000;
    private static final int o0000oO = 4;
    private static final int o0000oo = 3;
    private static final int o000OO = 5000;
    private WindowManager OoooOoO;
    private WindowManager.LayoutParams OoooOoo;
    private Context Ooooo00;
    private float Ooooo0o;
    private float OooooO0;
    private float OooooOO;
    private float OooooOo;
    private float Oooooo;
    private float Oooooo0;
    private ImageView OoooooO;
    private LinearLayout Ooooooo;
    private final View.OnTouchListener o00000;
    private Handler o000000;
    private Runnable o000000O;
    private CountDownTimer o000000o;
    private q6.OooO00o o00000O;
    private q6.OooO0O0 o00000O0;
    private int o00000OO;
    private BroadcastReceiver o00000Oo;
    private ComponentCallbacks o000OOo;
    private LinearLayout o00O0O;
    private LinearLayout o00Oo0;
    private t6 o00Ooo;
    private s6 o00o0O;
    public TextView o00oO0O;
    public ImageView o00oO0o;
    private r6 o00ooo;
    private mc.OooO00o o0O0O00;
    private Oooo000 o0OO00O;
    private DeleteFloatView o0OOO0o;
    private boolean o0Oo0oo;
    private LinearLayout o0OoOo0;
    public ImageView o0ooOO0;
    private boolean o0ooOOo;
    public boolean o0ooOoO;
    public TextView oo000o;
    private int oo0o0Oo;
    private LinearLayout ooOO;

    public class OooO implements Runnable {
        public final ElfinFloatView OoooOoO;

        public OooO(ElfinFloatView elfinFloatView) {
            this.OoooOoO = elfinFloatView;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "۬ۥ۬ۛۘۦۡۜۧۘۖۥۙۥ۬ۛ۟ۧۗ۟ۜۗۜ۬ۖۨۗ۟ۗۙ۬ۛۦۘۢۤۨۘ";
            ElfinFloatView elfinFloatView = null;
            WindowManager windowManagerOooOoOO = null;
            while (true) {
                switch ((((str.hashCode() ^ 638) ^ 856) ^ 976) ^ 630978237) {
                    case 342032502:
                        ElfinFloatView.OooOoO(this.OoooOoO).flags = 262176;
                        str = "ۘۦۡۨ۠ۨۘۗۡۜۘ۬ۚۤۜ۬۫ۜ۫ۛۘۘۙۧۦۡۙۗۜۘۥ۠ۗۦۘۧۥۙ";
                        break;
                    case 899496545:
                        elfinFloatView = this.OoooOoO;
                        str = "ۧۤۘۘۙۙۚۜۦۘ۟ۡۖۘۚۦۢ۬ۗ۫۠ۙۗۘۦ۠ۖۖۘ۫۠ۘۧ۫ۦۘۛۢۦۘۙ۟ۡ۬ۡۡۘۖۘۧۖۥ";
                        break;
                    case 1535133041:
                        windowManagerOooOoOO.updateViewLayout(elfinFloatView, ElfinFloatView.OooOoO(elfinFloatView));
                        str = "ۦۨۤۦۤۤ۟ۧۡۘ۫ۜۗۢۛۗ۫ۧۗۚ۟ۦۖۚۤۗۙۡۘۨۥۘۘۨ۟ۥۘۛۤۡۘ";
                        break;
                    case 1835165917:
                        str = "ۡۥۖۘۙ۫ۛۤۜۘۨۦۥ۠ۛۥۦ۟ۡ۟ۘۦۘۖۚ۫ۚۥۥۨۚ۫۟۟ۧۙ۟ۨۘۚۧۙۙۢۢۘۤۢۡۧۡۤۘۘۖۥۡ";
                        windowManagerOooOoOO = ElfinFloatView.OooOoOO(this.OoooOoO);
                        break;
                    case 2015032436:
                        return;
                    case 2121799965:
                        str = "ۙ۫ۨۨۥۘۥ۠ۘۘۥۧۧۤۗ۠ۖ۠ۛۦۗۜ۫۠ۤۛۦۘ۠۟ۡۜۘۧۚۛۚۤۛۜۡۗۦۘ";
                        break;
                }
            }
        }
    }

    public class OooO00o implements Runnable {
        public final ElfinFloatView OoooOoO;

        /* JADX INFO: renamed from: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0173OooO00o implements h7.OooOO0 {
            public final OooO00o OooO00o;

            public C0173OooO00o(OooO00o oooO00o) {
                this.OooO00o = oooO00o;
            }

            @Override // z2.h7.OooOO0
            public void OooO00o(Object obj) {
                String str = "۠ۘۦ۠۠ۧ۬ۚۦۡۦ۫ۛ۠ۗۦ۫۬۠ۖۜۘۚۖۗۖۤۜۘۡۖۙۤۦۚۙۦۧۤۖۖۜۚ۬ۙۤۖۗۢۨۘ";
                while (true) {
                    switch ((((str.hashCode() ^ 422) ^ d8.OooOOo) ^ 482) ^ 211939893) {
                        case -1075421291:
                            ElfinFloatView.Oooo000(this.OooO00o.OoooOoO, false);
                            str = "۟ۥۧۘۢۙۖۘۖۢۨۘۜۤ۬ۢ۫۟ۢۜ۠ۚۛۡۛۧ۟ۡ۫ۜۥۢ۫ۦۡۘۖۢۨۘۙۚۥۨۥۨ";
                            break;
                        case -918508351:
                            return;
                        case -862463175:
                            str = "ۢۛۨۚۢۖ۬ۘۥۘ۬ۢۙۚۧۨۚۖ۫ۛۤۙۡۤۤۥۙۛ۫۟ۖۦۛۚ۠۟۬ۙۨۖۘ۫ۦۥۘۙ۟ۦۘۚ۠ۧ";
                            break;
                        case 1857662821:
                            str = "ۥۨۚ۬ۦۥۘۜۘۖۜۚۘۥ۟ۧ۠ۚۜ۫ۖ۟ۤۛۛۗۚۨ۬ۦۘۛۧ۟ۗۗ";
                            break;
                    }
                }
            }

            @Override // z2.h7.OooOO0
            public void OooO0O0() {
                String str = "ۗۧۥۙۙۜۚۛۤ۬ۦۙۦۥ۠۠ۦ۬۟ۚۨۘۘۡۥۘۖ۬ۡۗۨ۬";
                while (true) {
                    switch ((((str.hashCode() ^ 707) ^ 462) ^ 777) ^ 1307663302) {
                        case -1123500035:
                            str = "ۙۢۙۘ۬۟ۚۖۧۘۙ۟ۦۘۨۖۢۛۛۨۘۛۖۜۧ۟ۨۦۜۘۡۘۚ۟ۚۡۥۜۥۙ۟ۚۛۥ۟";
                            break;
                        case 190465023:
                            ElfinFloatView.Oooo000(this.OooO00o.OoooOoO, false);
                            str = "۬ۘۜ۫۠ۖۙ۫ۧۡۖ۬ۜۨۜۘ۠ۙۖۘۨۢۢ۟ۨۨۘۤ۠ۜۜۧۘ";
                            break;
                        case 777914874:
                            return;
                    }
                }
            }
        }

        public OooO00o(ElfinFloatView elfinFloatView) {
            this.OoooOoO = elfinFloatView;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۖ۬ۜۘۨۨ۟ۥ۫ۨۘۦۥۧۘۖۧۘۖ۬ۘۘۖۘ۫ۜ۟ۖۘ۫ۗۙۢۤۥ";
            while (true) {
                switch ((((str.hashCode() ^ 40) ^ 490) ^ 661) ^ (-327876518)) {
                    case 345530103:
                        str = "ۖۡۨۘۥۜۚۡۜۥۧۛۡۘۗۚۡۘ۬ۤۜۘۗ۟ۗۢ۟ۘۘ۫۟ۨۜۦۥۘ۠ۚۗ۬ۦۘۘۗۦ۟۫ۘۘۦ۫ۡۥۢۖ";
                        break;
                    case 699645908:
                        return;
                    case 1055913538:
                        h7.OooO0o0(new C0173OooO00o(this));
                        str = "ۥۙۘۜۘۗ۫ۧ۠۠ۖۨ۟ۦ۬ۘ۫ۨۦۥۜۘۡۛۦۧ۟ۘۦ۫ۨۘ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 extends BroadcastReceiver {
        public final ElfinFloatView OooO00o;

        public OooO0O0(ElfinFloatView elfinFloatView) {
            this.OooO00o = elfinFloatView;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0013. Please report as an issue. */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str = "ۥ۫۬ۛۗۥۦۤ۫ۥۘۘۦ۫ۖۘۢۨۨۖۡۦ۬ۘ۬۬ۛۨۘۙۤۥۘۗۗۥۘ۫۟ۨۘۙۚ۠ۡۨۗ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE) ^ 488) ^ 754) ^ 1034062059) {
                    case -1801260000:
                        String str2 = "ۦ۠ۧۢۘۡۘۨۡ۠ۧۡۨۘۖۜۜۘۨۗۘ۫ۡ۟۬۟ۥۘۙۥۥ۬ۘ۟ۦۖۘۨۢۢۙۤۛۖۖۡ";
                        while (true) {
                            switch (str2.hashCode() ^ (-172183783)) {
                                case -1944197261:
                                    String str3 = "ۢ۬ۡۘۗ۠ۘۘۨۥ۟ۧۧۘ۬ۥۜۘۢۛۛۙۚۢ۫ۗۜۘۗۡۦۘۦۘۖۘۡ۫ۨۢ۫ۚۧ۟ۤۨۥ۟";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1405814501) {
                                            case -239805015:
                                                str2 = "ۘۨ۫ۚۖ۠ۛ۬ۥۘ۫۟ۡۘۖۧ۟ۗۜۜۙۢۥۘۚۥ۟ۨۙۗۦۤۧ";
                                                break;
                                            case 8798448:
                                                str3 = ElfinFloatView.OooOo0O(this.OooO00o).isShowing() ? "ۦ۫ۨۜۗۧۜۨۤۧۜ۫ۨ۫ۖۘۖۢۗۤۡۢۡۡۦۘۙۚۨۡ۬ۦۘۖ۟ۜۙ۠۟" : "ۛۘ۬ۙۡۡۘۢۢۙۡۚۦۘۢۙ۟ۢۙۡۢ۠ۢ۬ۛۦۘۜۤۤۚۜۦۘ";
                                                break;
                                            case 1223070982:
                                                str2 = "ۤۛۢ۟۫ۘۚۧۤۢۧۘۘۙۚ۫ۥۜۦۖۢ۬ۢۢۜۘۚۚۖ۬ۖۥۧۤۡۚۘۘۤۜۖۘۦۧۤ";
                                                break;
                                            case 1424652852:
                                                str3 = "ۘۘۨۨۙۨۘۥۜۤۚ۟ۜۘۙ۟ۘۙۡۘۛۗۥۚۥۗۗ۫ۡۚۧۗۥۥۛۨۧۡۖۨۘۢۘۨۖ۠ۦۘ۟ۥۤ";
                                                break;
                                        }
                                    }
                                    break;
                                case -910600140:
                                    str = "۬۬ۘۘۛ۟ۡۡۜۡۘۜ۫ۤۘۖۘۛۨ۠ۢۜ۟ۘۜۗۘۤۛۡۗ۫۬ۘۘ۠ۜۡۘ۠ۜۜۜ۫۠ۧ۫ۥۘۧ۟۟ۤ۬ۦۚۦۨ";
                                    break;
                                case -347453341:
                                    str2 = "ۚۡۗ۠ۙۢۖۘۡۨۘۖۦ۫ۦۘ۫ۤۡۘ۫ۧۥ۬۠ۖ۬ۚۜۘۗۖۚۜۗۥۘۧۡۘۘۖۘۥۘ۠۫ۦ";
                                    break;
                                case 631110091:
                                    break;
                            }
                        }
                        str = "ۢۛۗۚۙۜۘۡۛۖۧ۠ۗۧۛۚ۠ۜ۠ۤۙ۫ۧۙۖۗۚۜۘ۬ۗۗۨۦۘۘۛ۟ۧۡۤۖۖ۠۫ۛ۠۟ۢۧۦۘ۠ۖ۫ۚۗۥۘ";
                        break;
                    case -1625569305:
                        String str4 = "ۗ۬ۜۘۧۤۨۖۘۛۧۦۖۘۜۢ۠ۡ۬ۢۘۡۖۚۘۘۨ۫ۘۧۚۦ";
                        while (true) {
                            switch (str4.hashCode() ^ 191748723) {
                                case -440348879:
                                    str4 = "۠ۨۖۘۜۜۘۘ۠۫ۧ۠ۨۛۡۜۡۘۗۤۢۛۥۨۘۡۗۖۘ۟ۨۥۧ۫ۦۜ۠ۗۨۘۜۘۚۛ۠۬ۜۖۘۧۦۖۘۜۧۥۘ";
                                    break;
                                case -436564104:
                                    str = "۬ۛۤۤۥۘ۟ۤ۫ۢۘۚۧۚۥۘ۬۟۟۠ۚ۬ۘ۬ۡۤۛۡۘ۟ۤۘۘ";
                                    break;
                                case 354119675:
                                    String str5 = "۠ۗۧۗ۟ۨۘ۬۫ۙۘۦ۫ۛۙ۟ۗ۬ۖ۬ۘۘۗۢۤۨۚۢۦۦۘ۟۬ۘۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-525639800)) {
                                            case -1605985324:
                                                str4 = "ۘۦۛۚۦۖۘ۠ۦۥۖۡۚۛۡۘۙۧۢۗۧۢۛۢۜۘۘۥ۬ۧۡۚ";
                                                break;
                                            case -1518500359:
                                                str4 = "ۨ۠۟ۨۙ۟ۛۗۖۢۧۡۘۛۛ۬ۚۥۧۤۛ۬ۤۢۘۘۧۦۙۧۨۘۜ۟ۖۤ۟۟";
                                                break;
                                            case -372373275:
                                                str5 = ElfinFloatView.OooOo(this.OooO00o) != null ? "۬ۜۦۘ۟ۤۦۘ۠ۥ۬۬ۦۗ۟ۢۗۤۦۨۘ۠۠ۨۘۚ۠ۦۘۙۡ۟۫ۤۤ۟ۦۘۡۡۜۘۦۥۙۛۜۘ" : "ۤۤۗۚۘۦۙۢۧۗۡۖۚ۬ۖۥۚۨۡ۬ۗ۫۠ۥۗ۬ۚۛۛۥۛۜۚۚۨۚۥ۫ۜۘ۫ۜۘۘۦۢۧۤۢ۟ۦ۠ۤ";
                                                break;
                                            case -314677185:
                                                str5 = "ۗۨۘۤۜۨۘۥۧ۬ۖ۟ۜۥۖۦۘۛۘۚۨ۫ۥ۬ۢ۠ۢۥ۫ۤۛۡۥۚۛ۬ۡ۠";
                                                break;
                                        }
                                    }
                                    break;
                                case 1991113146:
                                    break;
                            }
                        }
                        break;
                    case -1513327779:
                        ElfinFloatView.OooOo(this.OooO00o).dismiss();
                        str = "۫ۖ۬ۥۚۙۚ۟ۖۖۢۙ۬ۥۜۘۦۨۙۢۙۖ۠ۜۧۘ۠ۙۡۘۚۛۚۢۜۙۙۢۙ۟۫ۛۛۧۨۗۛ۠ۘۙۙ۫۟ۛۧ";
                        break;
                    case -1441155241:
                        ElfinFloatView.OooOo0O(this.OooO00o).dismiss();
                        str = "ۢۛۗۚۙۜۘۡۛۖۧ۠ۗۧۛۚ۠ۜ۠ۤۙ۫ۧۙۖۗۚۜۘ۬ۗۗۨۦۘۘۛ۟ۧۡۤۖۖ۠۫ۛ۠۟ۢۧۦۘ۠ۖ۫ۚۗۥۘ";
                        break;
                    case -975053268:
                        str = "ۤۗۦۨۖۦۦ۠ۧ۬ۧۙ۬ۛۡۘۗۛۘۦۧۗۤۧۧۘۢۘۘ۬ۗۦۤۚۨۘۙۢۘۘۦ۫۟ۦ۟ۗ";
                        break;
                    case -798916398:
                        String str6 = "ۙ۫ۙۙۚۘۘ۠ۦۤۨۖۡۘ۟ۛ۫۟ۧۥۖ۬ۖۘۖ۠ۙ۬۫ۦ۠ۨۡۘۤ۫ۚۡۤۨۘ";
                        while (true) {
                            switch (str6.hashCode() ^ (-770593604)) {
                                case -1830630078:
                                    str = "ۢۖۧ۠ۡۡۧۜۜ۬ۚ۬ۛۦ۬ۤۗۧۘ۟ۗۦۙ۠ۤۖ۬ۧۥ۫ۢۜۥ۟ۘۘ";
                                    break;
                                case -275371270:
                                    break;
                                case 106907769:
                                    str6 = "ۧۚۛۢ۠ۨۘ۬ۨۘۨۡۧۘۘۢۤۛۦۖ۫۬ۘۘ۬۠ۧۚۙۙۦۡۜۘۤۧۙۚ۫ۥ";
                                    break;
                                case 1652918770:
                                    String str7 = "۟۠ۡۘۢۗۚۛۡۘۛۡ۟۫ۛۜۘۤۚۘۖ۫ۚۡۚۨۘۡۜۡۖۡ۠";
                                    while (true) {
                                        switch (str7.hashCode() ^ (-684186641)) {
                                            case -1288001144:
                                                str7 = "ۛۢۜ۟۬۬ۖ۫ۥۘۢۡۥۘۡۘ۠ۥۡ۬۠ۧۨۘۨۦۡ۫۬ۡۙۢۨۢۤۖۤ۟ۛۧۛ۟ۜۢۜۘۜۧۥۘۨۚۙ";
                                                break;
                                            case -797356652:
                                                str7 = ElfinFloatView.OooOo(this.OooO00o).isShowing() ? "۬ۡ۟۟ۢۛۙۛ۫۟ۧۡۘۡۘۨۘۥۤۘ۬ۚۧۡۘ۫ۧ۟۠ۙۛۜۘ۫۟ۡۘۤۥۦ" : "ۗۜۧۘۛ۫۟ۙۧۥۡۛۖۘۡۖ۬ۜۡۧۘ۠ۧۢۤۜۥۢۦۥ۟ۧۨۘ۬ۥۢۛۖۥۘ";
                                                break;
                                            case -521333076:
                                                str6 = "ۢۥۘۨ۬ۖ۟ۜۗۖۖۛۧۡۦۘ۠۫ۤۚۨۧ۫ۦۘۡۦۥۘۧۘ۠۬ۡۡۛۙ۬";
                                                break;
                                            case 974244967:
                                                str6 = "ۥ۬ۧۗۗۧۖ۬۠۟ۤۡۛ۠ۖۖۢۚۧۦۨۚۘۢۗ۟ۢۖۛۨۘۚۥۚۥ۫ۜ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        str = "۫ۖ۬ۥۚۙۚ۟ۖۖۢۙ۬ۥۜۘۦۨۙۢۙۖ۠ۜۧۘ۠ۙۡۘۚۛۚۢۜۙۙۢۙ۟۫ۛۛۧۨۗۛ۠ۘۙۙ۫۟ۛۧ";
                        break;
                    case -695395521:
                        String str8 = "ۥ۟ۘۘۜۛۦۘۗۖ۬ۡۥ۬ۡۘۥۘۜۧۦۜۨ۫ۥۧۦۘۧۥۦۘ۟ۘۘۚۨۘۘۧۢ۫ۤ۫۠ۖۛۨۘۗۨۙ۫ۧۢۙۢۜۘۚۧۧ";
                        while (true) {
                            switch (str8.hashCode() ^ (-1174618856)) {
                                case -1651498340:
                                    String str9 = "ۡ۬ۥۘۚۗۨۘۨ۠۬۠ۜ۬ۦۖۖۘۙ۬۟ۛ۬ۧ۫ۡۡۘ۠ۙۢۥۖۦ";
                                    while (true) {
                                        switch (str9.hashCode() ^ (-1503631944)) {
                                            case -1767571336:
                                                str8 = "ۨۢۘۛۛۥۚۧۜۘ۠ۚۨۘۛۘۛۤۖۤۗ۟۫ۗ۠ۘۘۘۘۙۚۘۡۘۢۚۨۥۡۧۜ۟ۛ۟ۖۖۘۛ۟ۙۗۧ۟";
                                                break;
                                            case -1567647819:
                                                str8 = "ۤۖۧۤۢۘۘۗ۬ۧۙۜۥ۬ۦۨۖۛۖۘۙۤ۠ۧۜۘۚۥۥۘ۠ۢ۟";
                                                break;
                                            case 437744917:
                                                str9 = "۫۠ۢۤ۬ۜۘۛۗۥۘۨ۫ۦۦ۬ۖۘۦۢۘۘ۫ۨۖۘۜۚۜۧۨۧۡۗۤ";
                                                break;
                                            case 1355013028:
                                                str9 = ElfinFloatView.OooOo0O(this.OooO00o) != null ? "ۙ۫ۘۘۙۙۡۥۘۥ۠ۘۘۡۦۛۛۗۚۚۜۜۡۡ۫ۘۧۜۘ۠ۙۖۘۦۚ۬ۧۖۖۘ" : "۫ۜۜۘ۟ۧۤۡۘۡۘۧۡ۠۬ۨۨۘ۟ۧۘۘۥۙۡۨۥۙۡۧۘۙۛۗۦ۠ۧۚ۟ۦۙۧۡۘۢۖۘ۬۬ۡ۫۠ۨۡۦۘۛ۬ۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 688974773:
                                    str = "۟ۢۨۘۧۗۗۛۡۡۘ۬ۘۗۥۤۜۢ۟ۘ۬ۗۗۚۡۘۜ۬ۙۧۥ۠ۚ۠ۜۘۨ۫ۜۘۧۥۘ۫ۢۖۜۙۜۨۥۦ";
                                    break;
                                case 739547111:
                                    break;
                                case 1918647064:
                                    str8 = "ۤ۫ۦۡۚۛۙۜۚۢۚ۫ۛ۠ۚۧۥۥ۟ۥۨۘۧۥۙۖۙۤۙۖۥۘۢ۫ۚ۫ۥۛ";
                                    break;
                            }
                        }
                        break;
                    case -327428756:
                        str = "ۦۥۦۗۖۥۗ۟ۖۘ۠ۡ۟ۜۧۙۥ۟۠۠ۦۧۧۡۖۨۥۛۜۚۡ";
                        break;
                    case -224357348:
                        ElfinFloatView.OooOo0o(this.OooO00o, null);
                        str = "ۚۧۥۜۙۢۘۛۨۘۗ۫ۦۘۥۗۨۛۦۛ۫ۘۗۦۜۘۡۦ۠ۜۤۦۘۗ۫ۥ۫ۨۨۚۧۚۤۨ۠۟۠ۘۜۢۦۤۖۜۡۧۨۘ";
                        break;
                    case 139514840:
                        break;
                    case 383416651:
                        String str10 = "ۚ۬ۤ۬ۜۦۘۛۡۖۢ۠۫ۦ۠ۙۥ۫ۢۘۜۘۘ۟ۙۧۤۛۜۡۖۚۙ۫۬ۢۖۜۘۛ۟ۨۘۡۗۨۘ";
                        while (true) {
                            switch (str10.hashCode() ^ (-559785963)) {
                                case -44522212:
                                    String str11 = "۬ۙۖۘۜۨۨۚۥۥ۠۬ۧۧۜۡۘۙۢۦ۫ۧۜۜۙۢۙۘۤۨۗۢ";
                                    while (true) {
                                        switch (str11.hashCode() ^ 1601953590) {
                                            case -1474776640:
                                                str10 = "۠ۡۚۙۖۨۘۜ۟ۡۘۢۗۡۘۖ۫۟۟ۖۗۚ۬ۖۘۚۗ۟ۢۜۖۘۨۤ۟۠۟۠ۜ۬۬";
                                                break;
                                            case -1403521643:
                                                str10 = "ۚ۫ۨۘ۬ۘ۫۬ۘۖۘۘۖۢۜ۫۫۟ۦۘۤۧۢ۬ۥۜۘۡۦۥۤۤ۠ۧۘۘ۫ۥۘۜ۟ۜۘۦۘۛۗۗۡۗۚۦۙ۫ۦۘۗۗۛ";
                                                break;
                                            case -914149714:
                                                str11 = "۫ۘۖۜۨۦ۬ۗۖۧ۠ۦۘۢۚۨۙۙ۫ۢۜۘۘۧۚ۬ۡۢۘۘۥ۫ۖۙۘۦۗۚۜۘ";
                                                break;
                                            case 2135978976:
                                                str11 = "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) ? "ۘۜۥۢۗ۫ۡۙۗۜۜۨۥۨۨۗۖۘ۬ۖۤۘۚۧۧۢۖۘ۟۫ۜۘ۠۟ۦۖۘ۟" : "ۧۡۚۤۥۨۦۗۨۘۗۢۡۧ۬ۢۘۦ۠ۚ۬ۖۘۤ۬ۦۨۤ۠ۧۛۦۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 320575996:
                                    str = "ۦۦۥۘۢ۬ۚۢۤۘۘۡۡۦۘ۟ۜۦۛۛۥۘۨۦ۬ۢۙۥۥۥۦۘ۫ۨ۫ۖۙۦۘ۫ۜۙۛۧۙ۫ۜۥ۟ۨۘۘۘۜۘۥ۫ۥۘۡۨۜۘ";
                                    continue;
                                case 431512003:
                                    str10 = "۟ۖۚۖ۠ۜ۠۬ۖۜۜۖۘۨ۟۠ۚۚۚۘ۫ۛۥ۠۬۟ۢۡۘۜ۟ۜۘۦۨۚۦ۬ۖۘ۬ۗ۠ۧۨۢۤۚۢ۬ۙۘۘ";
                                    break;
                                case 1424864072:
                                    str = "ۥۙۨۘۤ۫ۥ۫۟ۨۢۨۘۥۜۘ۫ۢۛ۠ۛۚۛۖۦۘۗۜۘۨۤۨۤ۫ۛۦ۫ۨ";
                                    continue;
                            }
                        }
                        break;
                    case 618188663:
                        ElfinFloatView.OooOoO0(this.OooO00o, null);
                        str = "ۦۦۥۘۢ۬ۚۢۤۘۘۡۡۦۘ۟ۜۦۛۛۥۘۨۦ۬ۢۙۥۥۥۦۘ۫ۨ۫ۖۙۦۘ۫ۜۙۛۧۙ۫ۜۥ۟ۨۘۘۘۜۘۥ۫ۥۘۡۨۜۘ";
                        break;
                    case 809483320:
                        str = "۬ۖۦۘۡۙۨۥ۠ۜ۠ۨۘ۬ۖۖۘۨۗ۟ۡۘۛۖۧۦۘۙ۠ۜۘۛۢۚ";
                        break;
                }
                return;
            }
        }
    }

    public class OooO0OO implements mc.OooO00o {
        public final ElfinFloatView OooO00o;

        public OooO0OO(ElfinFloatView elfinFloatView) {
            this.OooO00o = elfinFloatView;
        }

        @Override // z2.mc.OooO00o
        public void OooO00o(Object obj) {
            String str = "ۖۤۡۘۗۨ۠ۦۙ۠ۘ۫ۨۘۢۛۦۖ۫ۗۗ۟ۖۨۙۛۙۗ۬ۚۖۘۘ";
            while (true) {
                switch ((((str.hashCode() ^ 58) ^ 475) ^ 798) ^ (-1468834326)) {
                    case -1827700425:
                        ElfinFloatView.OooO00o(this.OooO00o);
                        str = "ۥۘ۠ۙۡۛۤۗۛۡۡۥۘۧۤۘۗۡ۫ۜ۠۠۫ۙۥۘۘۙۨ۠۬ۦۡۢۡۘۙ۟ۤۢۛ۠ۗۚ۠ۛ۟ۧۢۥۚ";
                        break;
                    case 613102254:
                        return;
                    case 974185456:
                        str = "ۥۜۥۘۜۜۧۘۚۙ۠ۘۜۡۘۧۜۜۘۦۨ۬ۚۡۡۘ۬ۙۙۜۜۘۤۡۡۘۖۗ۫ۧۗۗۧۚۥۢۥۧۚۗ۠ۚۖۜ";
                        break;
                    case 1393682950:
                        str = "۬ۗۢۜۦۢۥۡۨۘ۠۫ۡۘۨۘۥۥۡۥۘۙۘۛ۠ۡۥۘۘۢۤۗۘۥۖۤۧۚۡۡۘۛۘ۟ۗ۬";
                        break;
                }
            }
        }
    }

    public class OooO0o implements ComponentCallbacks2 {
        public final ElfinFloatView OoooOoO;

        public OooO0o(ElfinFloatView elfinFloatView) {
            this.OoooOoO = elfinFloatView;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
            String str = "ۘۘۨۘۦۡۦۘۦۧ۟۟۟ۤۤۙۦۨ۟ۢۦ۫ۖۘۥۤۖۘۧۜۘۢ۫ۙۤۙۜۚۨۨۘۙۤۜۗ۠ۡۘۨۘۘۘۚ۬";
            while (true) {
                switch ((((str.hashCode() ^ 859) ^ 524) ^ 434) ^ (-2119087001)) {
                    case -1215525950:
                        str = "ۘۥ۟ۙۢۘۘۤۖۧۘۢۜۢۥ۠ۘۢۚۖۧۧۚۧ۫ۜۜۧۦۢ";
                        break;
                    case -923021454:
                        str = "ۦ۟ۚۖ۬ۚ۫ۧۘ۟ۦ۟۠ۖ۬۠ۥۛ۫ۤۙۡۧ۫ۛۦۘۦ۠ۖۘۥۨۘۥۡۨ۟۠ۘۘۗ۫ۨۦۙۡۘۥۦۧ";
                        break;
                    case -390494009:
                        return;
                }
            }
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            String str = "ۙۤۙۚ۟ۨ۬ۛۜۦۙۘۜۧۥۛ۠۟ۥ۟ۘۘۗۨۜۡ۬ۛۤۢۧ";
            while (true) {
                switch ((((str.hashCode() ^ 710) ^ 626) ^ 283) ^ (-754031241)) {
                    case -1894996186:
                        String str2 = ElfinFloatView.o00000o0;
                        str = "ۚ۟ۨ۬ۥۤۘۢۥۤۖۛۤۨۖۘ۟ۙۨۖۥۗۦۦۡۜۡۘۙۚ۠ۥۛۢۖۢۦۘ۟۟ۥۜۗۦۘ۠ۙۥۤۦۙۙۧۖۖۖ";
                        break;
                    case -565338522:
                        return;
                    case 1760461861:
                        str = "۟ۛۦۘ۬ۜۘۘۖۧۥۗ۬ۛۦ۬ۦۘۤ۠ۥۖ۬ۗۙۢۜۘۥۦۡۖۢۛۙۤۦ۠ۘۖۘۨۖۛۤۖۘۤۖۡۛۤ";
                        break;
                }
            }
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            StringBuilder sb = null;
            String str = "ۘۛۡۘۙۤۡۧ۟ۦۘ۫ۨۖۘۥۤۘۘۙۧۢۚۖۜۛۙۥۘۘۦۡۤۗۚۦۤۦۡ۬ۧۜۥۧۖۨۘ۟ۥۧۚ۬۫";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_BG_VALUE) ^ 754) ^ 772) ^ 577471146) {
                    case -1465134362:
                        str = "۬ۗ۫ۧۡۡۘۙ۬۟ۨۘ۠ۘۡۖۘۢۙۗۨۦۜۘ۫ۥۖ۠ۤۘ۬ۗۚ۠ۥۚۡ۬ۢۛ۟ۙ۟ۥۡ";
                        break;
                    case -1310691729:
                        sb = new StringBuilder();
                        str = "ۖ۟ۥۘۙۛۤۗۛۨۘۖۘۜۤۚ۠ۤۚۖۘۘ۠۬ۜۦ۠ۚۖۘۢ۟۟ۨۘۡۢۚ۫ۛۢۨ۬۬ۙۡ۬ۦ۠ۛۡۘ";
                        break;
                    case 188413056:
                        str = "ۙۥۢ۬ۗۜۨۦۚۢۙۖۘۙ۟۟ۤۘۦۦۘۜ۠۠ۖۘ۠ۖۡۖۚۥۘۨۥۦۘ۠۠ۡۘ";
                        break;
                    case 625373040:
                        sb.append("onTrimMemory: ");
                        str = "۠ۜۛۤۙۙۖۚ۫ۡۙۦۘۛۥۥ۬ۦۤ۫ۨۙۛ۠۫ۧۢۜ۟ۨۘۖ۫ۙۦۤۘۘۢۙۙۥۙۨۖۥۙۧ۬ۗۗۘۧۘۡۥۖۘ";
                        break;
                    case 724406988:
                        String str2 = ElfinFloatView.o00000o0;
                        str = "ۛۢ۫ۤ۫ۖۛۢۘۧۧۘ۟ۧۧۖۘۘۜۗ۟ۧ۟ۨۥۧۘۨ۬۫";
                        break;
                    case 1396375496:
                        sb.append(i);
                        str = "ۦۤۜ۫ۘۛۘۡۜۘۡۧ۬ۛۗۙۤ۬۠ۨۙ۠۠ۛۛ۫ۥۘ۟ۨۖۘۡ۠ۨۘۨۢۤ۫۟ۨۘ۬ۤ";
                        break;
                    case 1692067803:
                        return;
                    case 1884440738:
                        sb.toString();
                        str = "۟ۜۜۘۘۤۖۘۤۥۚۛۖۡۘ۟ۘۥۘ۬۠ۗ۠ۢۖ۬۠۫۫ۛۡۘۚۦۧ۟ۨۜۘۖ۫ۢۨۥۥۘ۫ۤۖۘۚۛۗۙۖۜۘ۬ۜ۠۟ۨۥۘ";
                        break;
                }
            }
        }
    }

    public class OooOO0 extends CountDownTimer {
        public final ElfinFloatView OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooOO0(ElfinFloatView elfinFloatView, long j, long j2) {
            super(j, j2);
            this.OooO00o = elfinFloatView;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            String str = "ۦۘۚۖ۫ۛۖۨۘۧۜۖ۠ۤۤۤۚۘۘۖۢۨۜۢۡۘۨ۫ۨۘۥۨۖۘۨۘ۟ۥ۫ۙۨۘۚ۠ۥۦۘۦۦۘۛ۬ۙۗۖۦۘۖ۬ۖ";
            while (true) {
                switch ((((str.hashCode() ^ 295) ^ UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE) ^ 244) ^ 1829711252) {
                    case -286543379:
                        ElfinFloatView.OooOoo(this.OooO00o);
                        str = "۬ۖۢ۬ۧۜۗۛۗ۠ۦۢۘۚۘۗ۫ۥۘۛ۟ۦۡۦۡۗۗۨۘۖ۠ۤ۟ۥ۫ۨۨۜۘ۟ۦ۟ۖۤۘۘۙۨۡۤۖ۫";
                        break;
                    case 473215427:
                        str = "ۧۥۥۨۥۘ۬ۜۨۢ۫ۖۘۙ۫۟ۙۤۙ۠ۛۢۖۥۥۘۤۛۨۘۚۤۢ";
                        break;
                    case 982956708:
                        return;
                }
            }
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0012. Please report as an issue. */
        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            String str = "ۡۚۦۘۖۢۤۤۨۚۤۥۦۡۡ۬۟ۜۗۘ۬ۡۨۙۚۤ۠ۧۥۘۗۗۦۡۖۙۜۗۤۧۧۨۘۥۧ۬ۜۜۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 444) ^ 2) ^ 839) ^ (-1868399092)) {
                    case -1655475685:
                        String str2 = "۬۬ۦۜۦۜۥ۠ۙ۟ۖۗۧۘۥۙۦۤۦۖ۟ۤۘۢۙ۟ۘۘۘۘ۠ۢۘۡۦۘۙۜۡ۠ۛۛۙ۬ۗۜۙۤۜۜ۬ۚ۠ۧ";
                        while (true) {
                            switch (str2.hashCode() ^ (-525466957)) {
                                case 366979154:
                                    str = "ۨۚ۠ۛۨۦۘۖۙۤۖۧۘ۠۫ۙۤۧۡۘ۬ۘۖۘۘ۟ۦۢۖ۫ۥۤۦۧۘۤۙۡۜۖۥۘۥۚ۬ۛۨ۫ۧۚ۬";
                                    break;
                                case 527077551:
                                    break;
                                case 574780691:
                                    str2 = "۟ۢ۬ۤۛۥۡۖۦۘ۫۬ۥۘۢۧۨۛۚۥۚۨۡۘۥۜۦۘ۬ۙۘۗۢۦ";
                                    break;
                                case 770229662:
                                    String str3 = "ۖۙۡۤۙۧۜ۫۠۠ۥۙۢۢۙۦ۬۫ۧۚۗ۫ۨۨ۠ۦ۫ۘۤۗۢۦۘۘۚۧ۫ۛ۠ۦۘۡ۠۟";
                                    while (true) {
                                        switch (str3.hashCode() ^ 862704255) {
                                            case -1236813666:
                                                str2 = "ۚۦۛ۬۫ۤۥ۫ۥۛۜۥۘۢۖۨۘۖۛۦۜۧۚۖۨۚۚ۠ۦۤۗۦۘ۫ۙۘۦۦۜۘۢۜۧ۠ۛۦۘ";
                                                break;
                                            case 322661575:
                                                str2 = "۟۟ۖۤ۬ۥۘ۠ۙۖۘ۟ۤۧ۬ۗۚۡۙ۫ۧۖۦ۠ۚۖۘۤۚۡۘ۟۫ۥۘۦۖ۫ۤۦۧۘۤۗۧ۫ۙۖۘۖۧۜۡ۫ۖۘ";
                                                break;
                                            case 680691424:
                                                str3 = j > a.f ? "۠ۤ۬ۧۗۚۜۘۘۘۘ۠ۜۤۦۘ۫ۗۤۥۡۗۛۥۖۛۛۨۘۛۨۙۧۢۘ۫۠ۡۦۘۜۘۙ۫ۧ" : "ۦۗۦۦۘۢۢ۠ۖۙۤ۠ۢۨۡۘۡۦۨۜۧۙۢۦۡۜۨۡۘۨۖۢۘ۫ۦۘۦۛۖۘۗۗۥۡۤ";
                                                break;
                                            case 1529582330:
                                                str3 = "۫ۥ۬ۦۨۥۗۤۦۨۖۜۙۜۚ۫ۘۖۚ۠ۥۦ۫۠ۜۜۘۧۛۖ۠ۛۢۛۘۗ۠۫ۡۡۚۨ۫۠ۡۘۖۤۨۘۖۚۦ۠ۗۦ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        str = "ۢۙۧۥۢۢۜۜۨ۠ۡۙۜ۬۟۠ۡۥۜ۟ۚ۬ۦ۬ۙۘۤۧۜ";
                        break;
                    case -1356915067:
                        String str4 = "ۡ۠ۘۘۥ۫ۛۥۜۘۘۤۧۗ۠۠ۥۖۗۥۤۖۨۢ۫۟ۖۚۜۘ۠۟ۦ۬۟ۗۖۛۥۘۦۦ۟ۗۧۨۘۨۧۚۗۜ۟۫ۤۘۚ۟ۜۘ";
                        while (true) {
                            switch (str4.hashCode() ^ 536967526) {
                                case -1302661197:
                                    str = "ۘۤۦۙ۠ۧۗۖ۟ۛۧۗۗۥۗ۟ۜۢۦ۟ۘۘ۟ۙ۠ۘۧۡ۬ۤۧ";
                                    break;
                                case -1200504339:
                                    str4 = "ۤ۠ۡۘ۠ۥۘۥۧۡۘۙۘۜ۠ۜۙۡۛ۟۬ۥۨۨۛۧۚۜۘۖۢۧ۫ۙۘۘۨۦۥۘ";
                                    break;
                                case -600197061:
                                    String str5 = "ۨۜۡۜۢۡۘۜۜۜۤۗۦۤۥۡ۟ۥ۟ۡۘۡۘۤ۟ۖۘۛۗۦۘۘۨۢ۠ۥۦۘ۟ۙۡۘۘۡۚ۠ۢ۬۬۫ۖۨۧۥۤۖۨۢۢۜۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1971532561)) {
                                            case -1576577844:
                                                str5 = ElfinFloatView.OooOoo0(this.OooO00o).getVisibility() == 8 ? "ۖۢۧۘۥۧ۟ۛۨۘۙۛۖۘۜۢۡۘۧ۠ۨۘ۠ۨۜۘ۫ۙۜۘ۠ۨۜۘۙۗۘۘۜ۬ۡۘ۟ۧۡۘۢۥۖۘۙۚۡ" : "ۢۧۨۘۨ۠ۘۘۦۗۖۘ۠ۚ۬ۛۘۜۘۦۧۡۚ۫ۘۖۚۨۦۡۖ۫ۨۘۨۨۥ۟ۘ۫";
                                                break;
                                            case -1344641904:
                                                str4 = "ۚۚ۫ۨۧۖۘ۬ۖۖۗۨۜۥۖۡ۠ۦۘ۠ۘۧۚۥۜۘۗۜۡۢۤۢۥۘۥۨۙۥ۫ۘۜۘۦ۟ۘۘ۬ۙ۫ۖۢۢ";
                                                break;
                                            case -577002401:
                                                str5 = "ۗۧۖۧۛۙۖۙۗۥۜۤۢۧۡۘۗۙۡۘ۬ۨ۬ۜۛۜۧۡۘۖۖۙۨۙۨ۟ۥۛ";
                                                break;
                                            case 1756400636:
                                                str4 = "۫ۗۜۘۥۡ۫۬ۗۜۢۛۡۘۘ۟ۤۘۗۨۘۗ۫ۛۤۢۤۢۙۥۘۥۦۧ۟ۢ۟ۨۙۘۘۦۤۜۨۘۨۘ۟۬ۜۘۡ۬ۛ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1442700207:
                                    break;
                            }
                        }
                        str = "ۢۘۤۨۗ۠ۗ۟ۡۢۙۦۦۨۜۘۛۤۦۢۖۛۦۘۡ۬ۢۦۙ";
                        break;
                    case -1231715941:
                        String str6 = "۫ۡ۬ۡۤ۟ۥ۫ۛۥۥۨۢۜۛ۟ۖۗۦۜۡۨۖۘۛۥۘۨۢۛۖۙۢۢۗۨۘ";
                        while (true) {
                            switch (str6.hashCode() ^ 1647733996) {
                                case -1865345321:
                                    break;
                                case -817738350:
                                    str = "ۦۘۗ۟ۧۤ۬۠ۙۜۚ۟ۘۙۘۘۚۦۘۤۘۡۘۨۚۙۧ۠ۜۘ۠۠ۡۘ";
                                    break;
                                case 395244566:
                                    String str7 = "۠ۖۘۘۤ۫ۘۘۘۢۗۜۗۜۖۨۜۦۢ۠۬ۖۘۤۗۚ۟ۘۥۢ۠ۡۛ۫ۥۘۥ۫۟ۧۛۤ۬ۦۤ";
                                    while (true) {
                                        switch (str7.hashCode() ^ (-1703657898)) {
                                            case 133831427:
                                                str7 = b7.OooO0Oo().OooO0OO == 2 ? "ۛ۠ۡۚۘۘۦۘۡۘ۠ۗۛۤۛ۠ۢۦ۟ۛۤ۫ۤۨۘ۟ۥۚۜۡۡۘ" : "ۥ۬ۦۘۨۨ۟۟ۚ۠۫۬ۖۘۘ۬۟ۧۤۜۘ۠ۢۖۦۘۦۢۚۢۖۡۦ";
                                                break;
                                            case 557137381:
                                                str6 = "ۤۦۖۘۥۖۙۖ۟ۖۘۗۦۤۤۡۜۘۢ۠ۗۦۗۘۘ۟ۡۥۘۨۙۖۘۖ۫ۥۘ";
                                                break;
                                            case 1536591417:
                                                str7 = "ۦۧۙۘ۬ۜۘۨ۬۠ۧۦۨۨۧۦۘۦ۫ۥۘۗۦۦۘۢۛۡۘۨۤۦۘۦۘۗۧۜ۫ۜۨ";
                                                break;
                                            case 1690281260:
                                                str6 = "ۘ۬ۦۘۧۖ۟ۜ۫ۥۘ۬ۡۢ۬ۥۦۤۥۤۨ۠ۘۘۙۖۚۛۗ۠ۧۨ۠۫۫ۘۘ۬۫ۘۘۖ۠";
                                                break;
                                        }
                                    }
                                    break;
                                case 868099422:
                                    str6 = "ۦۗۚۥۛۨۖ۬ۗۥۛۘۖۜۥۙۙۤۚ۠ۥۛۨ۬ۡ۟ۖۧ۠ۦۡۤۦۗۦ۬";
                                    break;
                            }
                        }
                        break;
                    case -1094522584:
                        ElfinFloatView.OooOoo(this.OooO00o);
                        str = "۬ۧۛۡۧۖ۬۟۬ۤۧۦ۫ۡۢ۬ۨۜۘۢۗۧۙۙۤ۬ۘۚۨۨۘ";
                        break;
                    case -1063797021:
                        ElfinFloatView.OooOooo(this.OooO00o).setAlpha(0.5f);
                        str = "۫ۗ۫ۜ۠ۙۘۡ۟ۤۘۥۘ۠ۨۢۖۛۘۛۥۢۦۥ۫ۛۡۥۗۜۥۜۢۖۤۗۚۘۤ۬ۙۧ۟۠ۨۥۛۛۖ۫۫ۥۘۗۡۦۘ";
                        break;
                    case -681220802:
                        str = "ۙۚۥۥۦ۠ۜۥ۠ۛۘۗۥ۠۠ۡۛۗۢۘ۠ۖۡۘۤ۠ۘۛۛۗۧۙۘ۬ۨ";
                        break;
                    case -188090708:
                        str = "ۜۘ۟ۙۗۢ۠ۘ۫ۜۛۥۘۖ۠ۖۚ۠ۦۗۡۡۘۤ۠ۡۛ۬ۜۨۖۥ۫ۢۡۘ۬ۗۜ";
                        break;
                    case 409547120:
                        break;
                    case 951099152:
                        this.OooO00o.Oooo00o(false);
                        str = "ۢۙۧۥۢۢۜۜۨ۠ۡۙۜ۬۟۠ۡۥۜ۟ۚ۬ۦ۬ۙۘۤۧۜ";
                        break;
                    case 1004008770:
                        String str8 = "۟ۜ۬ۦۗ۟ۖۤ۫ۧۗ۠ۥۜۦۘۛ۠۫۬ۧۚۦۨۘۘۥۦۥ۟ۙۡۘۖ۠ۖۥ۫۬۠ۤۖۘ۟ۖۦۥ۫ۙۘۙۙ";
                        while (true) {
                            switch (str8.hashCode() ^ (-224593157)) {
                                case -1216403035:
                                    str8 = "ۢۚۚۦۧۦۦۘۥۘ۟ۡۧ۠ۖۥۘۡۨۧۙۙۦۘۛۧۖۘ۟ۖۥۘۨۥۢۤۨۛۗۛۗ۫ۦۨۘۦۦۦ";
                                    break;
                                case -368204498:
                                    String str9 = "ۚۗۘۘ۠ۢۥۘۦۗۨۘ۟۬ۨۘ۫۠۠۟ۨۗۖۢۛۜۗ۫ۘ۟ۖۜۢۢۦۘۦۙۖۘۘۙۜۘ۬ۦۢۧۛۧۛۜۙۘۖۘۗ۟ۗ";
                                    while (true) {
                                        switch (str9.hashCode() ^ (-952170370)) {
                                            case 60414883:
                                                str9 = j <= m.ag ? "ۡ۫ۦۘ۟۬ۡۢ۫ۦۛۡۘۦۛۤ۠۬ۥۤۤۖۗۢۘۘ۠۬ۥۘۚۡۧۘۤۙ۠ۡ۫ۗۘۥۘۤۘۚ" : "ۜۨۗۧ۫ۥ۟ۧۨۘۗۗۧ۠۬ۤۦۗۛ۟ۥۘۡۜۘۢۙۥۘۤۜ۟ۦۢۜۘۘۗ";
                                                break;
                                            case 79467328:
                                                str9 = "ۗۢۘۢۥۡۘۗۘۗۨ۠ۥۧ۫ۤۖۥۨۘۚ۬ۗۗ۠ۜۘۛۡۨۤۧۦۘۨۖۗۥ۬ۜۨۡۚۡۖۢ۟ۡۗۘۡۘۢۡۛ۟ۗۡ";
                                                break;
                                            case 986740467:
                                                str8 = "ۙۢ۬ۛۜۢۚ۫ۡۘۥۧۛۢۦ۫ۜ۬ۚ۠ۡ۠ۘۜۙۜۦۚۢۧۧ";
                                                break;
                                            case 1139995616:
                                                str8 = "۫ۤۖۘۤ۫ۦۘۜۛۢۙۤۙۢۨۤۡ۠ۥۘۦۧۜۦۗۜ۠ۖ۟۫ۧۧ";
                                                break;
                                        }
                                    }
                                    break;
                                case -75543336:
                                    break;
                                case 827105797:
                                    str = "۫۟ۢۜۤۚۜۚ۠ۘۡۘ۫ۜ۬ۢۢۤۖۧۚۥۢۖۗۨۖۖۗۜۡۥۦ۟ۘۘۙۢۦۘۘ۬ۙۨ۠ۥۗۥۜ";
                                    break;
                            }
                        }
                        str = "ۢۙۧۥۢۢۜۜۨ۠ۡۙۜ۬۟۠ۡۥۜ۟ۚ۬ۦ۬ۙۘۤۧۜ";
                        break;
                    case 1912756243:
                        ElfinFloatView.OooOooO(this.OooO00o).cancel();
                        str = "ۢۘۤۨۗ۠ۗ۟ۡۢۙۦۦۨۜۘۛۤۦۢۖۛۦۘۡ۬ۢۦۙ";
                        break;
                }
                return;
            }
        }
    }

    public class OooOO0O implements h7.OooOO0 {
        public final ElfinFloatView OooO00o;

        public OooOO0O(ElfinFloatView elfinFloatView) {
            this.OooO00o = elfinFloatView;
        }

        @Override // z2.h7.OooOO0
        public void OooO00o(Object obj) {
            String str = "ۨ۠ۜۨۨۧۘۗۜۛۦۗۚۤۗۗۗۜ۠۬۬ۥۘ۟ۨ۬ۘۦ۬۬ۥۜۘ۫۬ۧۦۖ۠";
            while (true) {
                switch ((((str.hashCode() ^ 651) ^ 327) ^ com.anythink.expressad.video.module.a.a.O) ^ (-630514708)) {
                    case -398707874:
                        return;
                    case -305538256:
                        str = "ۜ۬ۗۤۚۨۙۥ۬ۥۜۘۡۜۜۤ۟ۙۢۨ۫ۡۘۨ۫۬ۖۘ۠ۜۢۘ۬۠۠ۤۧ۬۟ۥۥۗۢۢۥۛۨ۫ۙۜۦۘۘۛۧۛ";
                        break;
                    case -191302376:
                        str = "ۤۡۨۘ۟ۛۘ۫۫ۦۘۛ۟۠ۘ۫۬ۨۢۖۘ۠۫ۚ۟ۗۜۗۚۨۘۛۡۧۘۨ۟ۗۚۤۗۛۚۖۘ۠ۨۛۤ۠۫ۡۗ۟۠ۚۛۧ۬";
                        break;
                    case 484481948:
                        ElfinFloatView.Oooo000(this.OooO00o, false);
                        str = "ۥۖۥ۠ۘۘۘۦۗۥۥۘۚۧ۫۠ۤ۠ۤ۟ۖۙ۠ۖۦۘۨۧۙ۟ۙۘۘۢۚۛ۠ۨۘ";
                        break;
                }
            }
        }

        @Override // z2.h7.OooOO0
        public void OooO0O0() {
            String str = "ۨ۠ۧۛ۬ۘۘۘ۠ۚۥۖۜۦۤۖۘۡ۠ۜۘۚۗۜۚۡۥۦۜۤۛ۫ۙ۠۬ۢ۬ۦۨۛۛ۟ۦۗۤۖۚۦۜ۬";
            while (true) {
                switch ((((str.hashCode() ^ 806) ^ 354) ^ 449) ^ (-474426944)) {
                    case 1155115517:
                        str = "ۦ۫ۨۗۙۖۘ۬ۚۜۤۦۜۘۡۡۘۘۦۤۦۨۧۗۙۧۖ۬۟ۨۘ";
                        break;
                    case 1712527379:
                        ElfinFloatView.Oooo000(this.OooO00o, false);
                        str = "ۛۜۥۦ۬۠ۖۖۛۛ۠ۛ۬ۚۛۜۢۛۦۗۜۤۡۖۘۨۨۙۙۜۗۥ۫ۧۜ۠ۛ۬ۧۡۖۘۘۖۦ۟ۙ۟ۨۘۦۜ";
                        break;
                    case 1896131180:
                        return;
                }
            }
        }
    }

    public class OooOOO implements q6.OooO0O0 {
        public final ElfinFloatView OooO00o;

        public OooOOO(ElfinFloatView elfinFloatView) {
            this.OooO00o = elfinFloatView;
        }

        @Override // z2.q6.OooO0O0
        public void onClick(View view) {
            String str = "ۛۘۖۘۦۨۨۙۥۨۦ۬ۜۘۡۗۘۢۙۦۘ۬ۚۥۘ۬ۛۦۘۙۥۤۨۖۥۘۜۨۨۙۥ۬ۥۡۨۘۚۢۗۗۙۨۘۧۚۢ";
            while (true) {
                switch ((((str.hashCode() ^ 484) ^ 2) ^ 178) ^ (-832846556)) {
                    case -1838606462:
                        return;
                    case -1258604591:
                        str = "ۚۨۡۙۥۘۦۡ۫ۦۘۨۙۦۙۖۙۤۜۙۥۧۜۡۚۢ۫ۦۢۚۜۗ۠ۧ۬ۙۢۨۧۘ۠۠ۡ";
                        break;
                    case 1917669845:
                        this.OooO00o.OoooOoo();
                        str = "ۚۘۧۘۖۘۦۘ۬ۡۢۤۡۜۙ۟ۙ۫ۘۨۡۛۨۘۙۦۖۗ۟ۡۘ۟ۦ۟۬ۦۘ۫ۜۗۚ۠ۖۘۢۙۖۛۚ۠ۦۥۚ";
                        break;
                    case 1992391320:
                        str = "۫ۥۧۘ۬ۜۦۗۖۚۤۢۢۡ۫ۡۘۡۚۤۡۛۙۛۗۛۢۢۥۘ۟ۘۧ";
                        break;
                }
            }
        }
    }

    public class OooOOO0 implements View.OnTouchListener {
        private static final int Ooooo0o = 5;
        private OooOo OoooOoO;
        private GestureDetector OoooOoo;
        public final ElfinFloatView Ooooo00;

        public class OooO00o implements DialogInterface.OnCancelListener {
            public final OooOOO0 OoooOoO;

            public OooO00o(OooOOO0 oooOOO0) {
                this.OoooOoO = oooOOO0;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                String str = "ۡ۫ۘ۫ۤۥۘۚۗ۫ۥۡۦۘۖۜ۠ۡۜۤۖ۟ۢۖۢ۠ۦۧۖۚۨ۬ۙۤۖۜۖۜۧ۫ۘۛۙۤ۟ۡۘۨۡ۟";
                while (true) {
                    switch ((((str.hashCode() ^ 790) ^ 516) ^ 94) ^ 226008645) {
                        case -550869721:
                            str = "ۢ۠ۨۘ۠ۖۚۖۗۨۡۧ۫ۤۜۙۜ۬ۢۚۡۘ۟۫ۡۘ۟ۨ۬۬ۙۦۢۨۜۘۚۧۦ۟ۢۨۘۧۘ";
                            break;
                        case -75849034:
                            return;
                        case 44710293:
                            ElfinFloatView.OooOo0(this.OoooOoO.Ooooo00);
                            str = "ۨۘۜ۠ۙۘۡۨۤۗۥۡۦۤۧۚۜۛۙۨۜۢۦ۠ۧۖۘۘۦۚۤۘۧۧۡۡ";
                            break;
                        case 1061798783:
                            str = "۟۬ۘۘۚۘۧۘۥۧ۠ۗۨۜۘۨۥۜۘ۬ۦۘۘۧۥ۠ۨ۫ۘۘ۟ۛ۟ۤۥۜۚۡۢۤ۠";
                            break;
                    }
                }
            }
        }

        public OooOOO0(ElfinFloatView elfinFloatView) {
            this.Ooooo00 = elfinFloatView;
            this.OoooOoO = new OooOo(elfinFloatView, null);
            this.OoooOoo = new GestureDetector(elfinFloatView.getContext(), this.OoooOoO);
        }

        public float OooO00o(float f, float f2, float f3, float f4) {
            String str = "ۤۛۖ۠ۛۛۜ۬ۤ۬۫ۜۘۦۘۗۜ۫ۤ۬ۧۦۨۢ۟ۥ۠۬ۙۜۧۡۚۧۚۨ۠";
            while (true) {
                switch ((((str.hashCode() ^ 25) ^ 382) ^ 308) ^ (-1982341959)) {
                    case -1909556539:
                        str = "ۨۙۛۛ۬ۜۧۗۧۗۖ۫ۚۦۖۘۖۤۙ۟۫ۡۢ۬ۚ۟ۚ۫۬ۧ۬۟ۛۥ۠ۘۥۡۤۥ۠ۛۡۘۨۡ۠۟ۚۧ";
                        break;
                    case -1224319641:
                        str = "ۥۘ۟ۤ۟ۙۢۚۜۨۘۘۦۚ۬ۚ۠ۧۖ۟ۜۘۛۖۧۘ۬ۗ۠۬ۜ۫ۦۖۥۦ۬ۤۛۢۜۤ۟ۤ۠ۛ۠ۖ۬۠ۖ۬ۛۛۦۧ";
                        break;
                    case -965588226:
                        str = "ۨۧۤۗۙ۠۟ۥۥۘۦۦۦ۟ۘۚۦ۬ۜۘۧۘۨۨۦۨۨۜۘۗۥ۫ۚۥۘۤۖۦ";
                        break;
                    case -8176059:
                        return (float) Math.sqrt(Math.pow(f - f3, 2.0d) + Math.pow(f2 - f4, 2.0d));
                    case 533650648:
                        str = "۫ۤۛ۟۫۠۟ۛۙۤۚۡۡۨۥۦۚۚۨۙۦۘۘ۟ۙۖۧۨۘۖ۫۟۠ۛۨۘ۬ۖۛۘ۬ۖۘۗ۫ۢ";
                        break;
                    case 1533099144:
                        str = "ۥ۬۬ۤۜۨۡۧۙۤۘۘ۟ۡۦۘۙۧۡۘۢۙۘۘۧۖ۠۫۫ۘۗ۬۬ۧۜۜۢۡ۬ۛۦۘۤ۠۬";
                        break;
                }
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = 0;
            int i = 0;
            ElfinFloatView elfinFloatView = null;
            ElfinFloatView elfinFloatView2 = null;
            double degrees = 0.0d;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            ElfinFloatView elfinFloatView3 = null;
            q6 q6Var = null;
            String str = "ۦۛ۫ۙۘۡۘ۠ۨۗ۫ۛۘۢۦۨۙۥۨۘ۫۫ۖۘۤۚۧۖ۬ۦۤۢ۠۫ۢۜۖ۠ۗۛۦۖۦ";
            while (true) {
                switch ((((str.hashCode() ^ 105) ^ 1010) ^ 678) ^ 670195916) {
                    case -2140013784:
                    case -1442331215:
                    case 1113990866:
                        str = "۬ۛۘۦۧۦۘۜۦۧۘۘۦۗۥۧۨۤۖۡۘ۫ۤۧۙۨۜۦۜۘ۫۬ۖ۫ۤ۫۬۫۠";
                        break;
                    case -2106675513:
                        String str2 = "۫ۦۦۢۗ۠ۡۨۢۧۨۧۘۤ۠ۦۘۧۨۜۤۜۥۖۡۘۘۗۢۖۦۖۘۢۤ۫ۨۦۡۘ۫ۨۦۘۚۤۡ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1887110201)) {
                                case -2141590184:
                                    String str3 = "۬ۥۛ۬۬ۡۘۛۚ۫۟ۡۨۖ۬ۨۘ۫ۧۜۢۦۘۘ۟ۡۜۚۗۢۚۦۨۘۚۗۧ۠ۙ۫۬ۦۤۢۨۚ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-829955568)) {
                                            case -2112462967:
                                                str2 = "۫ۗۨۘۙۘۦۜۘۥۧۡۜۨۚۛۡۥۨۖۜ۟ۤۡۥۢ۬ۨۦۛ";
                                                break;
                                            case -2097067832:
                                                str3 = "ۚۘۥۨۛۨۘۡۜ۫ۖ۟ۛ۫ۡۦۘۨۢۚ۟۫۬۫ۢۙ۠ۜۤۗۧۢ۠ۚۦۘۨۜۨۢۛۤۙ۫ۦ";
                                                break;
                                            case -1473827980:
                                                str3 = OooO00o(ElfinFloatView.OooOO0O(this.Ooooo00), ElfinFloatView.OooOOO0(this.Ooooo00), ElfinFloatView.OooO0OO(this.Ooooo00), ElfinFloatView.OooO0o0(this.Ooooo00)) <= 5.0f ? "۠ۤۗ۠ۧۨۘ۟۠ۨۘ۬ۛۨۦۚۨ۫ۚۢۦۧ۫ۗۥۘۤۦۧۘۡ۬ۙ۬ۗۦۦۡۘۘ" : "ۨۖۜ۬ۜۨ۠ۧۗۖ۟ۗۦۘۘ۠ۥۧۘۢۘ۬ۚ۬ۖۧۧۡۘ۠ۧۛ۠ۜۦۘۘۖۜ۬ۘۦۘۖ۟ۥۧۡۢ۬ۘۘۜۚۖۘۨۨۖۘ";
                                                break;
                                            case -506041601:
                                                str2 = "ۤ۠ۘۘۙۗۥۘۜ۫ۦۛۥۖ۠ۥۢۥۜۤۜۗۥۨ۫ۘۘ۬ۗۨۘۘۘۖۚۙ۬ۘۦ۟۬ۛ۬ۖۨۗ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1890455609:
                                    str = "ۜۖۡۘ۬۫ۦۜۥۢۚۗۧۨۦۘۚۘۙۜ۠ۡۤۢۚ۬ۘۜۖۘۘۦۨ۫ۧۤۨۚۗۤۦۦۨۘۦۢۘۘۘۙۗۚۘۗ۫ۚۨۘ";
                                    continue;
                                case 1066181986:
                                    str2 = "۟ۜۤۦۙۦۖ۬۬۬ۦۜۘۛۨۛ۠ۢۜ۟ۙۛۚ۫ۤۢ۟۠ۤۨۤۨۤۢۙۡۨۘۡۘۦ۬ۦۧۗۜۘۦ۟۫";
                                    break;
                                case 1210275115:
                                    str = "۬۠ۘۦۧۦۚۛ۫ۡۦۨۘۦۢۘۢۤ۠ۦۚۨۘ۬ۗۘۘۘۥۜۡۥۗۘۜۡ۫ۧۡۜ۬ۦۘ۬۫ۡ۬ۥۧۘۚۨۥ";
                                    continue;
                            }
                        }
                        break;
                    case -2021911135:
                        String str4 = "ۡ۫۟ۡۧۥۗ۬ۖۘۡۥۤ۠ۡۤۥۚۜۘ۠ۦۜۘ۬ۤۡۢۨۙۡ۟ۖۤۙۤۢۛۜۘۥۧۚۙۦ";
                        while (true) {
                            switch (str4.hashCode() ^ 2060815908) {
                                case -1353955812:
                                    String str5 = "۟۬ۘۙۤۚۦ۠ۘۗۗۖۘۗ۬ۜۘۜۛۖۘ۫ۥۖۧۦۥۘ۬ۘۚۦ۟ۢۨۗۜۘۧ۠ۜۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 656993375) {
                                            case 515363343:
                                                str4 = "ۨ۟۟ۗۦۗۘ۠ۥۧۢۤ۫ۗۗۢۜۛ۠ۨۜۘۗۤ۠ۙۧۘۘۦ۬ۛۢۚۥۘ۠ۜۨۘۤۨۘۥ۫ۢۖۙۨۨۙۗ";
                                                break;
                                            case 908551204:
                                                str5 = ElfinFloatView.OooOOOo(this.Ooooo00).getVisibility() == 8 ? "ۨۖۨۧ۠ۦ۫ۥۡۘ۟ۨۘۘۤ۫ۜۦ۠ۨ۬ۖۘۘۨۡۧۘ۫ۜۜ۠ۘۚۦ۠ۘۘۖۛۜ۬ۖ۠ۧ۫ۡۘۗۜۡۚۜۜۘۧۧۢۘۨۖۘ" : "ۤۚۘۥۨۜۘۚۢۚۦ۫ۦۖۨۛۢۦۦۘۥۦۘۘۗۘ۬ۤۨۘ۠ۗ";
                                                break;
                                            case 1422873248:
                                                str5 = "ۥۢۘۨۘۘۛ۠ۛۨ۫ۜ۬ۘۡۗۚۨۘۤۧۘۖۧۥۗۦۚۗۦۖۥۢ۠ۗۨۨۤۥۚۚۜۜۘ";
                                                break;
                                            case 1573653551:
                                                str4 = "ۢۙۦۜۢۥۘۨۛۦۗۜۨۘۜۜۜۢ۟ۘۢۡۚۘۖ۫ۥۛۡۘۥۚۧۤۚۙۚۘۜ۟ۚۧ۫ۙ";
                                                break;
                                        }
                                    }
                                    break;
                                case -795664561:
                                    str = "ۙۨۧۨۥۚۧۜۘۡۤۨ۬ۘۡۘۚ۫۟ۦۥۖۘۥ۫۠۟ۤۗۥۧۘ";
                                    continue;
                                case -60809569:
                                    str = "ۛ۟ۛۖ۫ۥۘ۟ۡۢۧۗ۫ۧۧۜۜ۬ۙ۟ۗۥۘ۫ۤۙۖۨۦۘۢۢۢ";
                                    continue;
                                case 588753854:
                                    str4 = "ۢۨۖۘۦۨۜۦ۫ۗۚۖۦۘ۫ۖۢۛ۟ۥۘۚ۟ۘ۠ۛ۠ۤۢ۟ۤۦ۬";
                                    break;
                            }
                        }
                        break;
                    case -1981055502:
                        ElfinFloatView.OooOOO(elfinFloatView2, ElfinFloatView.OooO0o0(elfinFloatView2));
                        str = "ۡۨۥۘۘۨۨۘۘۚ۫ۤۢ۠۠ۢ۠ۡۥۖۥۙۖۧۨۙۜۜۘۥۗۜۘۦۗۡۘۗ۠ۨ۬ۛۘۘۢۙۡۘ۬۫ۚ۠۠ۖۘ";
                        break;
                    case -1937540673:
                        String str6 = "ۙ۬۟ۘۤ۫۠۠ۦۘۨ۬۠ۦۨۦۢۜۘ۫ۨ۫ۢۙۖۘۦۚۗۡ۬ۦۘۨ۠۠ۥۢۚۛ۫ۥۥۜۥۤ۟ۥۘۘۦۡۘۨۗۡۡۡۚ";
                        while (true) {
                            switch (str6.hashCode() ^ (-407691049)) {
                                case -1633741049:
                                    str6 = "ۖ۟۠۠ۙۖۖۡۜۘۚۥۥۨ۠ۢۛۡۘ۬ۥۘۗۤۘۘۜ۠ۡۘ۬۫ۚ۟ۦۨۘ۟ۦۛ۫ۙ۬ۧۙۗ۠۬ۚۤ۬ۘ";
                                    break;
                                case -1182120152:
                                    str = "۠ۗۜۘۤۨ۟ۡۦۡۘۡۛۚ۫ۧۙۖۢ۠ۡۙۢۚۘۖۖۨۦۖ۫ۤۗۜۨۘۗۗۧۧۡۦ";
                                    continue;
                                case -88369526:
                                    str = "۟۟ۙ۫ۧۢ۬ۜۘۦۘۘۘۙ۟۬ۡۥ۫ۤۧۙ۫۬۟ۙ۠ۚۜۗۖۘۥۙۡۘ۠ۨۨۘۗ۫ۨۙۥۨۘ";
                                    continue;
                                case 58393732:
                                    String str7 = "ۢ۟ۧۗ۫ۖۘ۫ۗۚۡۗ۬ۛۤۖۘۜۦۥۤۧۘۘۨ۬ۤ۠۫ۧۖۧۘ";
                                    while (true) {
                                        switch (str7.hashCode() ^ 1382894197) {
                                            case -1260998493:
                                                str7 = "ۤۛۘ۫ۙۖۛۦۖۥۚۨۢۗۛۡۛۗۥۚۚۘ۫ۦۘ۠ۨۗۘۥۖ۬۟ۨۘ۫۬ۜۤ۬۠ۛۗۗۧۡ۟ۚۜۘ";
                                                break;
                                            case -341713899:
                                                str7 = degrees < 120.0d ? "ۧۤۢۦۦۦۘ۠ۗۜۡۚۥۘۧۛ۬ۖۛ۟ۚ۬ۗۧۨۘۧۚۛۥۦۖۘۥۥۥ۟ۖۘۗۖۦ۟ۤۨۘۤۖۡۨۧۡ" : "ۡۦۙۘۘ۬ۥ۠ۡۘۚۛۡۧۚۡۘ۬ۡۜۤ۫ۥۘۦۥۨۘۜ۠ۛۨۖۡۤۧۦۨۛۡ";
                                                break;
                                            case 1421488802:
                                                str6 = "ۘۘ۬۫ۧۘۥ۠ۡۘۘ۟ۢۛۖۨۖۢۜ۟۟ۧۜۤۤۙ۟ۧۛۘۘۤ۬ۜۛۘۦ۠ۥ۫ۚۖۙۚ۫ۗۖۤۖۘ";
                                                break;
                                            case 1893711643:
                                                str6 = "۬ۘۖۘۢۥ۠ۘۗۥۘۘۛۦۘۚۜۧۙ۟ۤ۟ۖۦۘ۫ۙۜۘۚ۫ۦۘۧ۠ۖ۬ۘۘ۫ۢۛ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -1915251573:
                        ElfinFloatView.OooOOOo(this.Ooooo00).setVisibility(8);
                        str = "۬ۜۦۘۦۘۨۘۢۛۚۡۡ۬ۦۨۜۢۡۚۛۡۘۨ۟ۤۛۗ۠۫ۡۘ";
                        break;
                    case -1743110013:
                        ElfinFloatView.OooO0Oo(this.Ooooo00, motionEvent.getRawX());
                        str = "ۛ۬ۢ۟۬ۡۜۨۘۘۜۡۛۤ۫ۜۘۛۖۛۖۢۙۗ۠۫ۡۥۥۛۢ۫ۘۡۘۢۙۤۗۜۘۚ۫ۛۖۦۗۨۦۘ";
                        break;
                    case -1708016305:
                        q6Var = new q6(this.Ooooo00.getContext());
                        str = "ۦۛۦ۠ۤۘۥ۫ۖۘۙ۫ۨۜ۫ۡ۟ۨۦۘۥ۬۠ۤ۟۠۬ۗۜۘۙۖۘۘۤۘ۟ۦ۟ۨۘ";
                        break;
                    case -1677704386:
                        ElfinFloatView.OooOO0(this.Ooooo00, motionEvent.getY());
                        str = "ۢۗۢ۫ۚۚۡ۬ۗۗۦۦۘۙ۫ۙۙ۠ۥۘۥ۟ۙۘۡۥۜۘۘۧۜۛۥۨۡۘ۬ۜۘۢ۬ۚ۟ۜۦۘۖۦۘۧ۬۬";
                        break;
                    case -1630381395:
                        i2 = 1;
                        str = "ۦۙۤۥۜۧۥۖۧۜۨۦ۫۫ۚۛۚۖۢۚۨۤۘ۟ۤ۬ۥۘۡۢۗۥۘۧ۬۬ۥۡۜۛ۫ۛ";
                        break;
                    case -1572618623:
                        ElfinFloatView.OooOOOo(this.Ooooo00).setVisibility(0);
                        str = "ۙۨۧۨۥۚۧۜۘۡۤۨ۬ۘۡۘۚ۫۟ۦۥۖۘۥ۫۠۟ۤۗۥۧۘ";
                        break;
                    case -1562768026:
                        str = "ۗۘ۬ۧۙۡۜۢۧ۠ۨۡۧۤۖۛ۠ۖۘۤ۫ۢۡۡۨۛۦۜۘۤۘۘۜ۫ۖۘۦۢۨۥۢۡ۬ۤۨۘۨۢۖۘ۫۫ۙ";
                        i5 = i3;
                        break;
                    case -1537228361:
                        break;
                    case -1532636113:
                        ElfinFloatView.OooOOOO(this.Ooooo00, i5);
                        str = "ۢۛۜ۬ۚۘۘ۠۠ۨۘۜ۬ۡۘۦۖۤۜۡ۟۬۠۫ۗۜۧۘۗۗۜۥۡۦۘۥۧۥۗۢ۟ۧۡ۠ۙۥۗ۠ۘۚ۬۟ۜۘ";
                        break;
                    case -1523246533:
                        q6Var.show();
                        str = "ۜۘ۠ۘۙۡۘۖ۫ۘۘۦۥ۠ۙۖۧ۟ۚۖۦۧۨ۟۬ۨۚۚۗۥۚۨۘۗۘۦۢۦۧۦۚ۫ۗ۠ۜۡۦۨۘۨۚۨۘۢۡۡۧۦۨۘ";
                        break;
                    case -1516911415:
                        String str8 = "ۤ۬ۤۖۦۛۘۛۜ۬ۜۦۘۜ۠ۥۘ۬ۛۘۥ۟ۥۡۙۥۥ۫ۥ۠۫ۢ۬ۢ۬ۨۢۜۧۜۡۦۙ";
                        while (true) {
                            switch (str8.hashCode() ^ 1547503232) {
                                case -725111539:
                                    str = "ۥ۠ۤ۠ۚۥۘۗ۟ۘۡ۠ۡۘ۫ۧۥۘۧۙۜۘۘۤۡۛۡۖۘۖۦۙ۠ۡۖۘۗۥۘۙ۟ۦۘۖۢۥۘۛ۬ۥۨۛۦۨۘۨۘ";
                                    break;
                                case 232684801:
                                    break;
                                case 752700147:
                                    String str9 = "ۡۡۖۘۜۢۚۢ۫ۙۖۦۡۘ۟ۨۜۙۧۘۚۛۨۛۚۢ۠ۦۚۡۢ۠ۚۚ۟۬ۙۥۙۗۡۘۡۥۡۘۜۗۘۘ۫ۤۥۙۦۡۘۘۢۙ";
                                    while (true) {
                                        switch (str9.hashCode() ^ 1573055451) {
                                            case -733119971:
                                                str9 = degrees < 120.0d ? "ۜۢۦۘ۬ۘۦۘۦۘۙۢۖۦۙۛۡۙۥۘۦۚ۫۫ۤۤ۟ۨۡۘۤۛ۠ۡۙۚۙۗۙۧۦۜۙۡۥۤۥۘۖۖ۬" : "۫ۥ۬ۥۘۧۘۗ۠ۦۚ۬ۦۘۡۦۛۨۢۥۘۛ۬ۧۗۗۡۤۙۜ۬ۛۘۘۨۨۦۘ۠ۧۖۘۜۜۡۚ۬ۚۦۨۘۛۜۚ";
                                                break;
                                            case -558989787:
                                                str8 = "۠ۥۡۤۘۥۘ۠۠ۚۜۡۢ۟ۘۥۙۙۢۛۥۢ۟ۦۤۗ۬ۖۘۦۘۗۡ۬ۥ۟۠ۨۨ۠ۘۘۚۧۡۢ۫ۗۗۡۤۚۛۦۡ۟";
                                                break;
                                            case 483817582:
                                                str9 = "ۖۖۜۘ۬۬ۜۚ۠۟ۖ۠۬ۚۨۘۘ۠ۧۘۥۙۥۨۛۖۛۖۙ۠۬ۥۡۥۢۢۗۦۘ";
                                                break;
                                            case 2078597891:
                                                str8 = "ۡ۠ۘۨ۫ۥۘۚۦۦ۠ۦۜۡۢ۬ۚۜۡۤۥۥ۫ۖۙۗۘۘ۫ۧۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1300678197:
                                    str8 = "۬ۘ۠ۡۡۧۚۚۛۥۘۖۗۜۨۧۤۖۦۗ۠ۛۗۦۘ۠ۢۙۜۤ۠";
                                    break;
                            }
                        }
                        str = "ۙۤۨۖۨۚۧۧۜۘ۟۟ۨۘۧۡ۠ۧۤۚۗۚۜۘۧۜۧۘۘۚۙۡۗ۠ۖۢۥۧۛۦۦۦۖ۠۬۠ۚ۠ۗۡ۟ۢۧۗۛۚۜۧۘ";
                        break;
                    case -1394348249:
                        String str10 = "ۖ۟ۙۖۦۦۤۚۙۥۥۘۢ۫ۗ۫ۖ۟ۜ۠ۗۨۙ۫ۙۛۛۡۥۛۡۚۦۘۗۨۥۘۦ۬ۥۘ۟۫ۦۘۚۜۦۘۗ۟ۡ";
                        while (true) {
                            switch (str10.hashCode() ^ 1228413034) {
                                case -137614477:
                                    String str11 = "ۡۗۨۚۗۜ۫ۛۧ۟ۖ۠ۛۥ۬ۢۦۤۨۨۙۥۛ۬۠۟ۧۖۜۤۤ۟ۥۗۚۗۢۧ۬ۗۦۘ۠ۙ۫ۛۘۢ";
                                    while (true) {
                                        switch (str11.hashCode() ^ 112508576) {
                                            case -795020785:
                                                str11 = action != 2 ? "ۢۗۘۘۧۦۡۘ۟۬ۡۘ۫ۦۘۦۜۧۘۢۙۡۥۜۘ۬ۤۙۢۦۢۖۗۨۤۜۤۧۦۥ" : "۟۟ۖۛۘۦۖ۟ۦۘۨۚۖۦ۫ۜۘۗ۟ۛۦۡۘۘۛۨ۬ۚۡۘۚۦۥۘۘۖۘۦۤۡ۠ۥۘۖۜۜۘۨۛۨ۫ۦۥۘۧۚۗۨۨۦ";
                                                break;
                                            case -512152857:
                                                str10 = "ۚۨ۬ۖۛۡۨۖۘۘ۬ۡۨۢۙ۠ۨ۫ۧ۫ۧۥۘ۠ۤۨۙۢۦۘۦۚۛۢۘۘۚۤۜۘۙ۫ۢۧۨۦ۟ۖۖۘ۟ۜۦۘ";
                                                break;
                                            case 385574017:
                                                str10 = "۟ۖۤۛۗۚۙ۬ۤۛۢۨۘۙۜۤۛۨ۬ۜۢۡۘۨۦۗۨۜ۬۫ۛۖۜۚۤ۟ۗۦۗۡ۠۫۠ۦ";
                                                break;
                                            case 894080632:
                                                str11 = "ۧۚ۠ۜ۬ۖ۫ۚۖۙۚۨۘۤۨۦۘۘۜۖۡۗ۬ۜۜ۬ۛۛۜۧۗۖۥۛۤۗۛ۠ۘۡۤ۬ۜۘۚۦۘۤۚۨۥ۟ۗۡۡۦ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1072015782:
                                    str10 = "ۜۚۚۘۙۤۖ۟ۥ۟ۨۖۘۚۥۖ۫ۢۘۘ۠ۢۢۥۧۘۧۦۨۘۖ۬۫ۨۘ۬ۧ۫ۗۛۚۤ۫ۖۥۦۖۘۘۡ۬ۗۢۚۜۘ۬ۡۡ";
                                    break;
                                case 1353321810:
                                    str = "ۘۘۧۘۚۤۢۗۛۖۘۚۗۥۘۙۢ۫ۗۥۡۜۖۚۢۖۘۘۧ۬ۤۢۙۧۢۡ۟۫ۤ۬";
                                    continue;
                                case 2047327484:
                                    str = "۬ۙۥۘۢۢۗۙۥۜۘۜۜ۫ۘۘۚۙۨۘ۫ۙۥۘۤۤۥۘۗۢۧۡۖۛۚۗۥۘۙۙۥ";
                                    continue;
                            }
                        }
                        break;
                    case -1359325354:
                        String str12 = "۟ۡۘۘۙۛۢۡۧۢۧ۬ۚۜۤ۠ۧ۬ۤۖۥ۠ۦۚ۫ۖۜۤۖ۠ۜۢۖۘۨ۟ۙ";
                        while (true) {
                            switch (str12.hashCode() ^ 475108510) {
                                case -1737150917:
                                    str = "ۘ۫ۧۙۧۖۘۡ۫ۜۘۢۨۡۛ۬ۦۘۙۨۦ۫ۚۤۖۢۤۜۧۙ۠ۜۦۘۤۜۨۘۘ۟ۢۗۥۖۘ۟۬ۘۘۢۦۘۙۙ";
                                    continue;
                                case -1354261144:
                                    String str13 = "ۛۨۛ۠ۗۨۜۙۤۚۖ۟ۦ۫ۛ۠۟ۦۧۛ۬ۦۨۨۖۧ۠ۗ۬ۨۤۘ۫ۨۚ";
                                    while (true) {
                                        switch (str13.hashCode() ^ 1166041703) {
                                            case -1017027197:
                                                str12 = "ۙۖۘۘۖۥۘۢۘۡ۬۟ۦۘ۫ۤۦۘۧۦۢۥۥۘۥۛۤۡۥۡۘۧۙۜۘۦۨۜۙ۟ۤۜ۟ۘۘۥۜۨۛۧۖۧۨۧۘ";
                                                break;
                                            case -753942864:
                                                str13 = "ۨۤۢۧۗۨۘۙۚ۠ۦۥۤۘۖۢۡۢۖۘۨۘۧۘۤۦۥۘۤۦ۠۫ۥۨۘۨۥۘۚۦۚ";
                                                break;
                                            case 293081568:
                                                str13 = ElfinFloatView.OooOoo0(this.Ooooo00).getVisibility() == 8 ? "۟ۡۨۦۗ۬ۛۨ۫۠ۡۥۘ۠ۘ۟ۢۛۜۚۛۥۘۤۢۡۘ۟ۥۜ۟ۖۢ" : "ۘۥۥۧۘ۬۟ۥۘ۬ۘۙ۟ۖۘۘۜۛۤۦۡۨۡۧۚۖۦۜۧۢۤۤۙۙ۟ۜۨۙۧۢۜۥۧۘۘۧ۠ۢ";
                                                break;
                                            case 1426237677:
                                                str12 = "۠ۨۘۘۡ۫ۥۘ۠۫ۘۘۧ۠ۘۢۙۗ۟ۦۤۖۤۖۧۥۛۥۛۧۧۗۨۦۘۜۙۥۜ۠ۖۘۥ۬ۜۘ۬ۨۘۖۥۗ";
                                                break;
                                        }
                                    }
                                    break;
                                case 633714653:
                                    str12 = "۫ۨۜۛۦۨۚۧۜۘۚۦ۬ۤۥۖۖۖۦۛۚۘۡۥ۫۬ۤۗۗۧۤۘۛۚۛ۟ۧۥۧۡۖ۟ۖۥۢۙ۬ۖ";
                                    break;
                                case 1622164001:
                                    str = "ۙۘۡۥۤۛۨۖۧۜۙۥۘۨۡۡۘۚ۟ۜۜۖۢۦۤۡۘۜۗۘۖۢ۫ۨۚۦۙۥۨ۫ۗۘۘۤۡۙۘۥۘۡۥۨۘ";
                                    continue;
                            }
                        }
                        break;
                    case -1355105492:
                        break;
                    case -1321893036:
                        String str14 = "ۖۜۚۤۙۤ۠ۜۦۘۛۦۘۘۢ۫ۖۘ۟ۙۜۘۧۚ۠۠ۤۦۙۛۤ۟۫۬۫۟ۨۘۧۦۨۘۤۥۜۦۖ۟";
                        while (true) {
                            switch (str14.hashCode() ^ (-1079383582)) {
                                case -1444676595:
                                    String str15 = "ۢۜۨۘۨ۫ۘۥۛۜۘۗۗۛ۬۬ۜۨۢۖۘۥۤۜۘۗۨۖۘۛۢۖۘۨۡۚ";
                                    while (true) {
                                        switch (str15.hashCode() ^ (-476674900)) {
                                            case -201166769:
                                                str14 = "ۜۡۗۜۚۡ۟ۘ۠ۥۚۨۘۗ۟ۗۖۜۤ۟ۤۨ۫۫ۧۧۡۘۡ۟ۢۢۨۖۘۤۡۡ۟ۤۜۘۡ۫ۜ۠ۚۥۤ۫ۗ";
                                                break;
                                            case 756044028:
                                                str15 = action != 1 ? "ۚ۠ۦۘ۫ۜۡۘۚۘۦۘۨۘ۫ۜ۫ۛۘ۠۟۟ۛۢ۟ۛ۫ۦۙۥۖۡۡۤۡۘۙۥۖ" : "۟۬ۘۘ۫ۗۦۨۤ۫۠ۛۙۥۛۢۤۤ۬۟۠ۥ۬ۚۥ۟ۥۖۤۢۨ۬۠ۚۧۢۥ";
                                                break;
                                            case 980185022:
                                                str15 = "ۨۙۡۘۥۢۘۘۖۥ۫ۧۙۨۛۜۥۧۙۘۘۦ۟ۚۧۤۜۧۡۥۧۚ۬";
                                                break;
                                            case 1551075329:
                                                str14 = "ۡۖۦۤۛۜۡۗۚۛۤۤ۬ۧۤۛۡۚۙۢۘ۬ۘۦ۠ۖۤۤۢ۫ۜ۬ۧ۠ۡۙ۟۟ۡ۠ۛۨۘۢۙۦۧ۠ۡۘ۬ۥ۠ۘۚۤ";
                                                break;
                                        }
                                    }
                                    break;
                                case -909392698:
                                    str = "۫۠۟۠ۨۘۖۘ۬۟ۗۤۜۦۥۘ۟ۜۧۗۤۦۨۦۦۗۚۜۘۘ";
                                    continue;
                                case -853118804:
                                    str14 = "۬ۛۧۡۜۢۘ۠۟ۡۚ۫ۚۗۜ۫ۧۡۘ۠ۘۜۦ۟ۚۦ۬۟ۜۢ۠ۤ۬ۥۘۥۦۖۘ";
                                    break;
                                case 2063614221:
                                    str = "ۤۚۜۗۧۥۘ۟ۚۤۡۥۨۘۤۥۗۧۡۖۥۖ۫۫ۡۡۜۥ۠ۚۦ";
                                    continue;
                            }
                        }
                        break;
                    case -1314954120:
                        str = "۫ۘۡۘۜۤۦۘ۫ۙۖۘۙۖۜۘۘۚۨۤۨۘۘۢۢۖۦۤۦۘۢۛۦۙۜۦۘۜۛۖۘۜۚۤ۬ۚۘۜۜۛۛۜۨۚۥۖۘ";
                        break;
                    case -1307303217:
                        str = "ۚۖۥۧ۟ۧۛۦ۬۠۬ۜۜ۠۟ۢۨۢ۠ۡۘۧۘۖۘۙۙۡۘۖۧۙۛۥۨۘ۠ۗۤۛۤۖۘۙ۟ۜۘ";
                        i5 = i;
                        break;
                    case -1242686284:
                        i = 2;
                        str = "ۛۘۘۦۜ۠۬ۜۛ۟ۨۨۜ۠ۙۙۖۚۚۨۦۘۛۘۦۜۨۥۘ۟۫ۨۘۘ۬ۨۗۜۘۧۘۗ۫ۙۜۘۗۜ۫۟ۖۛ";
                        break;
                    case -1145741704:
                        break;
                    case -1129457778:
                        str = "۬ۛۘۦۧۦۘۜۦۧۘۘۦۗۥۧۨۤۖۡۘ۫ۤۧۙۨۜۦۜۘ۫۬ۖ۫ۤ۫۬۫۠";
                        i5 = i4;
                        break;
                    case -1099659864:
                        String str16 = "ۦۗۘۥ۫ۘۢۖ۠ۦۛۡۘۙۛۨۘۦۗ۟۟ۜۖۘۡۡ۟ۨ۟ۡۚۖۧ";
                        while (true) {
                            switch (str16.hashCode() ^ 1697610013) {
                                case -1885629195:
                                    str16 = "۫ۜۡۘۗۤۨۘ۠۫۬ۗۡۥ۠ۖۘۜۗۤ۟ۛ۟ۦۢۦۘۨ۠ۥۛۜۚۨۜۡۜ۠۫۟ۘۘۘۡۙ۬ۘۢ۫ۚۢۜۘ";
                                    break;
                                case -1388259162:
                                    str = "ۙ۬ۢ۬ۡۚۢۦۘۘۤ۫ۜۤۜۧۥۥۥۘ۫ۡ۬۟ۖۛۨۦ۬ۙۘ";
                                    break;
                                case -1120345112:
                                    break;
                                case -205273937:
                                    String str17 = "ۢ۟۠ۢۦۙۖۗۡۘ۟ۤۦۦۨۡۡۨ۠۫ۜ۟ۜۦۖۦۡۤ۠ۖۘۘ";
                                    while (true) {
                                        switch (str17.hashCode() ^ (-1505397220)) {
                                            case -620028941:
                                                str16 = "۬ۦۖۥۜۘۦۗۧۗۧۤۡ۫۟۠ۛۡۘۛۙۡۘۚۗۥ۠۟ۡۧ۫ۙۤۛۦ۬ۗ۟ۧۥۘۨۨۛ";
                                                break;
                                            case -426254253:
                                                str16 = "ۙۖۦۤ۬۫ۛۧۢۥۗ۫ۖۛۗۧۗۤۧۡۦ۟ۖۘ۟ۤۢ۫ۥۘ";
                                                break;
                                            case 122334412:
                                                str17 = degrees > 60.0d ? "ۤۚۖۘۡۨۥۤۘ۬ۖۜۙۥۛۘۡۨۘ۫۠ۦۘۚ۫ۨۘۖۨۘۗۦۜ۬۬ۜۤۨۧۘ۠ۙۡۡۢۤۗۦۘۖۙۗ" : "۫ۢ۫ۤۘۨۨۙۙۚ۠ۘۘۚۦ۫ۢۧۦۥۧۜ۫ۦ۫ۗۗ۟ۖۘۛ۠ۤۚ۟ۙۗ۟ۖۗۛ۫ۦۧۡۧۤ۫ۦ";
                                                break;
                                            case 1576619140:
                                                str17 = "ۢۛۚۙۘۘۦۘۨ۬ۙۛ۫ۨۡۘ۫ۡۚ۟ۛۨۘۙۢۚۦۜۗۢۖۦ۟ۚ۟۬۟ۨۢۨۦۢۙۡۘ۟ۛۨۘ۟۫ۢۛ۬ۖ۬ۢۧ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -1095334226:
                        str = "ۜ۫۟۠ۦ۠۟ۛۨ۫۬ۡۘۚ۟ۘ۬ۛۜۘۙۛۘۜۧۛۗ۫ۙۥۜۖۖۗ۠ۨ۠ۘ";
                        i5 = i2;
                        break;
                    case -1093037869:
                        q6Var.OooO0oO(ElfinFloatView.OooOOoo(this.Ooooo00));
                        str = "ۖۙۡۘ۠ۦۥۘ۟ۘۗ۬ۗۦۨ۠ۖۘۜۦۦۨۜۥۚۙۙۤ۫ۤۚ۫۬";
                        break;
                    case -1037090869:
                        String str18 = "ۙۚۡۘۢۥ۠ۦۜۡۘ۬ۚۡۙۛۢۧ۟ۜۘۗۛۢۢۤۚ۫ۙۡۘۡۚ۫ۢۨۦۙۘۨۢۘۧۚۤۤۖۦۡۘۨۛۖۘ";
                        while (true) {
                            switch (str18.hashCode() ^ 1511026432) {
                                case -1745485426:
                                    String str19 = "۫ۛۖۙ۬ۤۛۘۙۥۢ۬۠ۦۘۙۛۦۜۦۘۘۦ۟ۥ۫ۢۘۘۘۧۢۜۨۦۤۚۚۢ۠ۡ۟";
                                    while (true) {
                                        switch (str19.hashCode() ^ 833341051) {
                                            case -1429962221:
                                                str19 = "ۖۡۘۘۢۡۥۖ۠۫ۜ۠ۥۦۤۨۙۥۙۥ۟ۧۦ۬ۘ۟۟ۤۥۢۘۙۦۛۙۛۥۨ۠ۧۛۦۘۤۘۖۤۖ۬";
                                                break;
                                            case 748455486:
                                                str18 = "ۦۙۜۘۦۧۡۛ۬ۗ۠۬ۢۗ۟ۚۛۡۢۛۚۖۗ۬۠ۚ۠۬۫۟ۡۜۤۜۤۢۦۘۧ۟ۡۘۘۘۜۘ";
                                                break;
                                            case 898625035:
                                                str19 = degrees > -120.0d ? "۠ۚۢۦۙۖۙۥۧۗ۟ۨۘۗۙۜۨۛۚۗۗۘۘۖۥۨۘ۫ۤۨ۠ۤ۬ۦۤۥۘۦۤۡۘۤۚۙۡۛۨۘۨۥۜۖۙ۠" : "ۖۤۡۘۖۢۖۘۚ۫ۖۘۡ۫ۛۜ۟۬ۧۖۚۖ۠۠ۦۘۛ۫ۜۡۦۡۗۤۙۧۦۙۦۦۥ۬ۦ۟ۖۢۦۦۘۗۜۡۡۜۦۘۧۜۚ";
                                                break;
                                            case 2040744404:
                                                str18 = "ۙۨۖۘۜۘۡۘ۟۬ۦۘۤ۬ۛۦۡۜۘۛۜۖۘ۠ۗۥۘۥۚۦ۫۬ۤ۬ۥۘۡ۠ۥۘۛۦۖۘۖۢۨۘۡۢ۬۟ۢ۠۠ۨۘ۠ۡۘۘۙۙۖۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case -456944663:
                                    str18 = "۠۬ۘ۬ۗۖ۬۬ۢۗۚۙۦ۫ۨۘۛ۬۠ۚۧ۠ۙ۫ۢ۟۠۫۟۫ۢۖۘۛۘۢۦۚۦۗۥۧۡۘۢۢ۟ۜۦ";
                                    break;
                                case 843247181:
                                    break;
                                case 1607921304:
                                    str = "ۖۚۨۤۖۨۘ۬ۧۧ۬۠ۜۘۙ۟ۤ۬ۤۗۘۧۜۗۤۦۘ۟ۙۙ۠ۨۥۙۖ۠ۨۤۨۘ";
                                    break;
                            }
                        }
                        str = "ۥۢۛۢۚۜ۫ۢۦۤۛۡۤۧۚ۬۬۫۠ۥۢۘۘ۬ۚۨۖۘۙۗۥ۟ۜ۫ۗۜۥۘ";
                        break;
                    case -768535649:
                        elfinFloatView2 = this.Ooooo00;
                        str = "ۡۘۨۨۜ۬ۤ۫۠ۢۛۤۖۤۗۧۡۘۘۢۢۨۧۜۦۢۡۧۙۘۗ";
                        break;
                    case -734419582:
                        String str20 = "ۘۧ۠ۡ۠ۗۘۗۨۘۘۗۖ۠ۦۖۘۗۦۜۨۡۚۨۨۦۨۗۦۘۜۨۘ";
                        while (true) {
                            switch (str20.hashCode() ^ 1157855259) {
                                case -2051046247:
                                    String str21 = "ۥۡۥۛۥۚۙ۠ۡۤۤۜ۠ۦۗۙۛۙۚۦۘ۬ۙۜۗۖۙۛ۟۫ۥۜۘۥۙ۬";
                                    while (true) {
                                        switch (str21.hashCode() ^ (-1207261653)) {
                                            case -1852995779:
                                                str21 = degrees <= -120.0d ? "ۢۙۥ۬ۤۧۢۗۦۘۦۢۨۤۛۖۘۥۢۖۘ۠ۙۚۖۖۥۘۖۥۖۘۖۚۤ" : "ۛۥۡۘۦۙ۬ۖۢۢۡۦۤۥۗۘۢۚ۠ۙۡۖ۠ۛۧۙۜ۠ۦۗۖ۫ۢۛۥۘۨ۫ۖۘۦۖ۬ۧۘ۫ۡ";
                                                break;
                                            case -1356880229:
                                                str20 = "۠ۡۥۘ۬۫ۧۧۗۗۡۦۘۤۖۙۚ۫۟۟۫۟۬ۛ۠ۥۨۦۘۡ۠۬ۨۦۡۘۗۤۘ۫ۚۢ۬ۜۙ۟ۨۢۡۨ";
                                                break;
                                            case 526861439:
                                                str20 = "۬ۗ۟ۙۛۨۘ۟ۜۦۘۛۖۨۘۛۚۧ۟ۛۡۙۦۙۗ۟ۖۛۙۤۧۨۘۨۤۥۘۗۥۗ۫۟ۙۢۥۤۘۗۖۘۥۚۥۘ۬ۘۘۘۨ۬۬";
                                                break;
                                            case 1208767868:
                                                str21 = "ۘۨۦۘۙۧۛۢۡۧۘۙۗۨۚۡ۬ۦۤۢۚۛ۬ۘۘۛ۫ۦۨۗۦۙۢۨۦۙ";
                                                break;
                                        }
                                    }
                                    break;
                                case -1060529412:
                                    str = "ۖۚۨۤۖۨۘ۬ۧۧ۬۠ۜۘۙ۟ۤ۬ۤۗۘۧۜۗۤۦۘ۟ۙۙ۠ۨۥۙۖ۠ۨۤۨۘ";
                                    continue;
                                case 782327581:
                                    str = "۠ۗۜۘۤۨ۟ۡۦۡۘۡۛۚ۫ۧۙۖۢ۠ۡۙۢۚۘۖۖۨۦۖ۫ۤۗۜۨۘۗۗۧۧۡۦ";
                                    continue;
                                case 1112179510:
                                    str20 = "ۗۨ۫ۚ۟ۦۘ۫ۥۦۘۘۘۥۤۦۦۘ۬ۛۛۤۥۥۘۦ۫ۥۙۥۤۖۤۥ۟ۛۗۡۗۨۘۖۦۘۙۘۙ۫ۙۦۥۛۨۘ";
                                    break;
                            }
                        }
                        break;
                    case -591430405:
                        elfinFloatView3.OooooOO((int) (ElfinFloatView.OooO0OO(elfinFloatView3) - ElfinFloatView.OooO0oO(this.Ooooo00)), (int) (ElfinFloatView.OooO0o0(this.Ooooo00) - ElfinFloatView.OooO(this.Ooooo00)));
                        str = "۬ۦۢۘۚۙۢۨۥۖۧۗۢ۫ۜ۫۬۫ۗۡۘۙۤ۫ۛ۟۬ۧۗۚۘۥۛۙۥۥۜۨۛۤۨۗ";
                        break;
                    case -581883765:
                        ElfinFloatView.OooOOOo(this.Ooooo00).OooO0o0();
                        str = "۟ۜۧۘۤۜۙۘۚۦۘ۫۫ۨۘ۠۟۫۠ۤۡ۫۬ۚۚۙۧۛ۫ۗۘۧۜۙۙۙۦۧۛۘۥۛۗۜۥ";
                        break;
                    case -514812712:
                        ElfinFloatView.OooOooO(this.Ooooo00).start();
                        str = "ۜۤۙۚ۬ۡ۫ۗۘۜۙۙۚ۟۟۬ۙ۫ۡۙۚۧۙۡۦ۠ۛۢۤۙۜۨۖۥۨۘۜ۫ۚۛۥۗۙۥۡۡ۫۟ۘۦۥۛ۟ۚ";
                        break;
                    case -450863275:
                        String str22 = "ۨۜ۠ۚ۫ۖ۫ۘۘ۬ۧۙۡۨۘۘۧۛ۠ۥ۠ۧۛ۬ۦۡۙۨ۬۠ۢ۠ۢۜۘ۟ۥۥۘ";
                        while (true) {
                            switch (str22.hashCode() ^ (-1321399667)) {
                                case -2110199473:
                                    str22 = "ۛۧۡۙۗۥۦۢۥۘ۟۫ۖ۟ۘۢۙ۫۟ۘۤۤۤ۫ۥۛۖۛۖ۬ۚۥۚۧۘ";
                                    break;
                                case -1289493936:
                                    str = "ۧۗۜۚ۫۟ۛۥۚۡۥۧۡۦۦۘۥۡۘۚۢۛۧۥۘۖۡۦۘ۫ۛ۬ۙۙۨۛۥۘۖۛۦۜۢۗ";
                                    continue;
                                case -786857023:
                                    str = "ۖ۬ۜۘۤۧۦۡۚۙ۠۟ۛۤۢ۬ۨۡۛۧۜ۟ۖ۟ۛۖۚۢۜۖۦۘۖۛۖۥۚۖۘ";
                                    continue;
                                case 580906074:
                                    String str23 = "ۡ۫ۦۘۗۙۖۘ۠ۘۤۨ۠ۦۘۤۙۡۘۧۥۧۗ۟۬ۖۜۘۙ۟ۜۘۢۚۜۗۚ۠۟ۤۡ";
                                    while (true) {
                                        switch (str23.hashCode() ^ (-713133811)) {
                                            case -1864857086:
                                                str23 = "ۧۖۙۤۤ۟۟ۚۤۖ۠ۘۘۖۖ۟ۡۤۙۙۙۧۙ۬ۡۘۧۦۤۜۧۦۘۢۗۜۘۖۘۨ۫۬ۖۛۖۚۡ۟ۢۚ۟ۖۘ";
                                                break;
                                            case -1078637546:
                                                str22 = "ۤۥ۬ۨۤۡۘۧۗۘۘۛۗۜۚۢ۫۟ۦۡۨۧۥۘۦۤۗۚۢۥۖۦۛ";
                                                break;
                                            case 1532826719:
                                                str22 = "ۦۗۦۘۤۘۥۘۜۚۘۥۢۡۡۘۦۢۨۗۜۖۘۢ۬ۘ۠۟ۘۘ۫ۨۘۘ";
                                                break;
                                            case 1896544961:
                                                str23 = ElfinFloatView.OooOOo(this.Ooooo00) ? "ۢۨۥۘۛۗۖۘۖۛۤۙ۠ۜۘۦۥۛۤ۬ۥۘۘۧۦۘۥۗۢۦۨۨۜ۠۬ۜۧۡۦۡ۬ۧۗ۫ۛۘۧ" : "ۙۜۙۡۜۡۘۖۖ۟۬ۤۥۛۚۗ۫ۚۤۚۢۙۥۡۘۘۤۗۥۘۧۡۗ۟ۧۧۥۢۖۘ۠ۗ۬ۦۥۛۦۗ۫۟ۥ۫۬ۦۨۜۢۜ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -351304197:
                        ElfinFloatView.OooO0o(this.Ooooo00, motionEvent.getRawY() - w3.OooOooO(this.Ooooo00.getContext()));
                        str = "ۗۦۧۛۜۚۦۗۢۨۗۘۜۙۗۥۚۚۜۜۘۙۧۗ۫ۢ۠۠ۘ۠";
                        break;
                    case -211381243:
                        ElfinFloatView.OooO0oo(this.Ooooo00, motionEvent.getX());
                        str = "ۚۙۖۘۛۘ۬۫ۘ۟ۚ۟ۖۘۖۚۖ۟ۡۥۘۦ۫ۚۧ۬ۨۘۥۢۨۚۢۦۘ۟ۜۡۘۤۨۘۘ";
                        break;
                    case -168435028:
                        elfinFloatView = this.Ooooo00;
                        str = "ۨۨۡۘۢۢۖ۠ۡۖۥۛۦۘ۫ۢۜۢ۠ۥۘۜۗۨۘ۬۬ۡۘ۠ۡۨۘ۟۬ۦ۫ۘۚۥۧۘۨۢۨۡۢۦۘۥۨۜ۬۟۟";
                        break;
                    case -125460624:
                        ElfinFloatView.OooO0O0(this.Ooooo00);
                        str = "ۨۜ۠۫ۨۡۛۤۖۘۤۘ۬ۨ۠ۧۙۥۛۤ۫ۢۚۖ۟۟ۨۗ۫ۢۨۢۨۘۙۥۗۛۢۖۧۚۘۘۜۙۥۘۧۙ۠";
                        break;
                    case -33605486:
                        break;
                    case -20996057:
                        ElfinFloatView.OooO0o(this.Ooooo00, motionEvent.getRawY() - w3.OooOooO(this.Ooooo00.getContext()));
                        str = "ۗ۟ۦۘ۬ۖۡۘۤ۫ۢۘۚۥ۬ۜۜ۠ۚۧۛۙۖ۟ۙۨۨۥۘۨۥۛۡۦۜۤۛۘ۟ۗ۟۬ۦۜۘ";
                        break;
                    case 70321640:
                        String str24 = "۟ۤۦۘۥۖۘۨۙۨۘۘۜۨۙ۟ۛۦۡۡۖۛۖۦ۫ۦۘۥ۠ۨۖۘۜۘۡۡۥ۟ۥ۬ۘۙ۟ۥۢۤ";
                        while (true) {
                            switch (str24.hashCode() ^ (-1520167626)) {
                                case -1288201614:
                                    str = "ۧۦۥۘۢۢۦۘۘۛۖۘۜۚ۫ۜۜ۠ۡۜۡۘۧ۟ۜۢۖۘۘۚۦۙۦۡۜ۬۟ۧ۟ۥۘۘ۬۟ۜ۠۫ۖۘ۠ۡۙۜ۟ۚۖۛ۫۟ۢۥ";
                                    continue;
                                case -838505129:
                                    str24 = "ۘ۬ۖۤ۠ۦۦۡۘۙ۫ۖۘ۫ۗۤۛ۠۬ۧۦۨ۬ۛۨۙۧۚۛۗۙۚۘۜۘۤۘ۟ۨ۬ۚۡۖۚ";
                                    break;
                                case -76091311:
                                    str = "۟۠ۧ۫ۙۘۘۗۥۘۨۤۖۘۨۢۧۢ۫۟ۙۦۧۘ۠ۤ۟ۧۙ۬ۛۜۘۘ۠ۘۜۘۡۨۧۘ۟ۗۡۘۧۘ۠ۢۥۡ۬ۤ";
                                    continue;
                                case 891388487:
                                    String str25 = "ۗۦۘۤۗۤۧ۟ۡۘۧۘۤۚ۫ۦۘۤۚۘ۠ۨ۟ۚۥ۟۠۬۬ۢۧۧۨۨ۟ۦۤۥۚۗۘۖۜۦ";
                                    while (true) {
                                        switch (str25.hashCode() ^ (-968781909)) {
                                            case -1558768668:
                                                str25 = this.OoooOoo.onTouchEvent(motionEvent) ? "۫ۨۘۘۛ۫ۦۘ۫ۤ۟۬ۤ۟ۙۨۡ۬ۡۦۛۛۧۧۦۗۧۧۨۙۦۗ۠ۘۘۤۚۨ۟ۘۧۘۛۙۘۘ" : "ۖ۬ۘۢۛۜۚۨۘۥۜۘۘ۬ۥۚۛۖۘۘۦۛۚۥۙ۟۠ۦۜ۟ۜۨۤۙۖۘۘۚ۫ۘۙۙ۟ۡۜۤۚۦۘۡۜۥۘۤ۟ۦۘۢۦۙ";
                                                break;
                                            case -22652865:
                                                str24 = "ۙ۬ۖۘ۬ۜۨۚ۠۟ۗۖۦۘۙۘۘۘ۫ۢۚ۠۫۠ۘۜۙۖۗۜۘۧۥۨ۟ۖۨۘ۬ۡۧۧ۫۠۠ۦۚۦ۠ۖۘۙۚ۫۟ۥ";
                                                break;
                                            case 360356711:
                                                str25 = "۟ۚۜۡۦۧۘۛۡۜۘۤۧ۠۬ۥۧۢۛۨۤ۬۟ۤۛ۫ۙۜۘۘ۫ۜۦ۫ۦۘۢۨۧ";
                                                break;
                                            case 770621982:
                                                str24 = "ۤۢۥۘۗ۟ۡۘۙ۟ۡۧۜۥۘ۬ۤۡۘۢۦۤۜ۠ۥۘۥۧ۬ۢۨۤۦۘۜۘ۬ۗۥۨۢۤۛۦ۠۟ۦۙ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case 84722276:
                        action = motionEvent.getAction();
                        str = "ۡۛۜۘ۟۠ۧۖ۠۟۫ۨۨۥۡ۠ۖ۠ۥۘۙ۠ۜۘۤۧۖۘۤۖۦۡۨۢۚۧ۫ۡۙۧ";
                        break;
                    case 146461900:
                        ElfinFloatView.OooOO0o(elfinFloatView, ElfinFloatView.OooO0OO(elfinFloatView));
                        str = "ۚ۬ۥۘۗ۫ۡۛۜۘۘۖ۟ۖۘ۬ۚۧۡۥۦ۠ۤۙۗۗۨ۬ۡۙۘۖۗۙ۟ۥ۬ۨ۠ۤۗۥ۠ۨۡ۬ۥۜۘۥ۟ۢۚ۫ۜۘۖۙۜۘ";
                        break;
                    case 176751465:
                        ElfinFloatView.OooO0Oo(this.Ooooo00, motionEvent.getRawX());
                        str = "ۘۛۗۙ۠ۤۢ۬ۖۘۛۗۨۘ۫ۖۧۘ۠ۚۘۧۧۜۙۤۛۛۜۡۘ۠ۘۦۚۚۜۘۦ۟ۦۤۢۨۘۤ۟ۙۙۤ۬ۨۖۨ";
                        break;
                    case 293126042:
                        q6Var.setOnCancelListener(new OooO00o(this));
                        str = "ۦ۬ۥ۬۠ۙۜۜۗ۟ۨۗ۫ۚۜۨ۠ۙ۫ۥۛۧۖۘۘۛۜۘۖۜۨ";
                        break;
                    case 293566870:
                        String str26 = "ۨۥۜۘۢ۠ۖۗ۠ۘ۫ۙۚۡۖۘ۫۟ۦۘ۟ۘۘ۟ۗۗۢۛ۬ۘ۬ۜۡۡ۫ۧۗۖۘۘۤۛۥۛ۬ۖ۠ۙۦۨۥ";
                        while (true) {
                            switch (str26.hashCode() ^ (-1392304288)) {
                                case -1840972115:
                                    break;
                                case -1231971210:
                                    String str27 = "۟ۤۥۘۥۨۗۛۜۥۘۛۛ۬ۙۘ۬ۛ۠ۙ۟ۙۨۛۚ۠۫ۤۥۘۗ۫۠ۦۢۘ۬ۘۙۙۤۢۙۜ۬۟ۜۤۗۚۢ";
                                    while (true) {
                                        switch (str27.hashCode() ^ 81799793) {
                                            case -1317848204:
                                                str27 = degrees <= 60.0d ? "۠ۜۘۘۥۘۜۤۥۥۢۙۧۙۥ۬ۜ۟ۧۗۨۧۘ۟ۖۘۘۗ۫ۧۨۘۖۨۢۢۜۘۧۘۡ۟ۥ۬ۚۢۦ۟۬ۡۘۚ۟ۤ۬ۙۚ" : "ۙۚۗۢۜۖۨۨۚ۬ۗۦۢ۫ۡۘۖۦۘۘۗۨۥۧۨۖۘۜ۫۟ۖ۠ۘۘ";
                                                break;
                                            case -1284563925:
                                                str26 = "ۜۘۜۘۢۗۘۘ۫ۢۥۘۙۥۙۜۗۖۥ۟ۢۤ۠ۙۧ۠ۜۡۧۘۡ۟ۥۘۦۙۗۘۙۖۘ";
                                                break;
                                            case 903931854:
                                                str27 = "ۗۙۗۦۙۡۘۜۨۙۢۜۧۘۨۧۡۖ۬ۨ۫ۖۜۘۧۚۛ۬ۨۨۢۡۢۗۜۚ۠ۤۡ۫۠ۦۚۗۨۘۡۘۨۨۤ۫ۗۦۡۥۡ";
                                                break;
                                            case 962173176:
                                                str26 = "ۨۤۡۘۛۚۜۘۦ۫ۡ۬ۖۗۡ۠ۜۘۜۥۚۖۜۡ۠ۡۜۘۤۨ۬ۛۦۦۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 387033028:
                                    str26 = "ۙۚۥۤۗۗ۠ۙ۟۬ۘۘۛ۫ۜۘۡ۬ۛۤۗۜ۬ۤۥۘۡ۫۫ۡۤۛ";
                                    break;
                                case 1775720269:
                                    str = "ۘۖۧۘۥۨۦۦۧ۠ۜ۬ۖۘۖۧۙۜۢۜۚ۫ۦۚ۠ۘۧۦۧ۠ۧۡۘ";
                                    break;
                            }
                        }
                        str = "۟ۡۢۨۙۙۨۙۥۤۘ۫ۙۙۦۧۘۥۘۤۥۧۜۨۦۘ۟ۢ۬۟ۘۦۘۙۥۙۗ۫ۡۡۨ۬۠ۡۧۤۖۛ۬ۖۜ";
                        break;
                    case 382360584:
                        ElfinFloatView.OooO0o(this.Ooooo00, motionEvent.getRawY() - w3.OooOooO(this.Ooooo00.getContext()));
                        str = "۠ۙۨۧۛۥۦ۫ۖۘۦۥ۠ۜۨۘ۫ۙۥۘ۟۬ۜۘۢ۟۫ۡۗۛۦۙ۬";
                        break;
                    case 432965064:
                    case 586649517:
                    case 2079346064:
                        str = "ۢۗۢ۫ۚۚۡ۬ۗۗۦۦۘۙ۫ۙۙ۠ۥۘۥ۟ۙۘۡۥۜۘۘۧۜۛۥۨۡۘ۬ۜۘۢ۬ۚ۟ۜۦۘۖۦۘۧ۬۬";
                        break;
                    case 436312921:
                        degrees = Math.toDegrees(Math.atan2(ElfinFloatView.OooO0o0(this.Ooooo00) - ElfinFloatView.OooOOO0(this.Ooooo00), ElfinFloatView.OooO0OO(this.Ooooo00) - ElfinFloatView.OooOO0O(this.Ooooo00)));
                        str = "ۜۡ۟ۤ۟ۘۘۙۜۡۘۜۤۤۙ۬ۗۥۙۨۘ۠ۢۥۘۖۨۢۜۡۥۘۢۡۦۘۥۖۧۘۦۡۦ";
                        break;
                    case 535977425:
                        str = "ۚ۬ۙۚۚۦۛۤۖۘ۟ۘۧۘۙۤۦۘۜۡ۠ۚۜۧۘۦ۟ۡۥۨۡۤۙۢ۫۫ۤۚۧۖۙۚۢۤ۠ۨۘۥۡۙۛۙۗ۟ۜۡۘ۟ۤۜ";
                        break;
                    case 599171345:
                        String str28 = "ۧۗۗ۬ۗ۟۫ۨۥۡۧۦۘ۬ۗۥۜۖۥۘۦ۫ۥۘ۬۠ۡۘ۠ۚۚۙۛۘۘ";
                        while (true) {
                            switch (str28.hashCode() ^ (-1751503275)) {
                                case -2014756452:
                                    str28 = "ۥۙۧۜۢۙۚۗۘۢۙۗ۟ۚۖۧۚۜۛۥۢۢۚۙۜۥۘۘ۟ۧۜۘ۬ۥۦۗۙۦۘ۫ۢۜۙۙۘ";
                                    break;
                                case -1211143197:
                                    break;
                                case -1068996610:
                                    String str29 = "ۗۥۚۤۘۥۘ۬۠ۤۨۢ۬۠ۥۖۧۢۦ۫ۢ۟ۨ۫ۥۘۚۤۗۖۗۘ۟۫ۜۘۨۚۧ۟ۙ۫ۚ۫";
                                    while (true) {
                                        switch (str29.hashCode() ^ (-1763207002)) {
                                            case -1304073602:
                                                str28 = "ۦۡۚۚۗۘۘ۫ۚۡۙۢۖ۟ۛۚۘۜۗ۫۬ۨۘۨۦۘ۫۬ۨۚۖۥۘۥۤۜۡۚۦ";
                                                break;
                                            case -197596135:
                                                str28 = "ۤۗۨۨۜۜۘۛۛۖۘۜۧۜۦۡۡۘۥۨۡ۫ۡۘۘۧۨۦۗۖۘۚۜۛۤۤۦۘۡۥۥۘ";
                                                break;
                                            case -33123159:
                                                str29 = "ۡ۟ۦۘۖۖ۫ۘۨۥۘۙ۬ۜۘۡۛۡۧ۫ۥۘ۟ۗۦۦۤۤۧ۬۠۫ۚۥۘۢۘۦۨ۬ۜۧۚ۠۫ۨۦ";
                                                break;
                                            case 312202216:
                                                str29 = degrees < -60.0d ? "ۨۢۜۘۧۡۥۥ۫ۦۡۧ۟ۤۥۦۘۖۜۥۤۢۤۘۧۘۧۥ۟۬ۗۚۙ۠ۜ۫ۗۨۘۜ۠۫ۥۤۥۧۦۦۘۖ۠ۜۡ۬ۖۘۚۗۙ" : "ۦۤۛۙۜۚ۠ۗۡۘ۠ۗۦ۟ۥۜ۠ۖۘۖۥۧۘۢۧ۫۠ۙۢۜۛۘۘ۬ۧۡۘۨۦۧۘۙۦۧۘۜۚۛ۬۟ۥۛۜۡۘۤۖۙۛۘۢ";
                                                break;
                                        }
                                    }
                                    break;
                                case 754777726:
                                    str = "۟۬ۨۘۚۤ۠ۧۘ۬ۙۖۘ۠ۦۢ۫۫۟ۤۦ۫ۘۚۦۘۖۨ۬ۜۡۘ";
                                    break;
                            }
                        }
                        break;
                    case 759978645:
                        i3 = 3;
                        str = "ۛۨۨۘۢ۫ۘۘۗۘۦۘۡۨۗ۟ۧۢۘۖۘ۠ۢۢۖۘۘۡ۠ۖ۟ۨ۬ۘۜۤۤۧۡۘ۬ۧ۟ۚ۬ۖۘ";
                        break;
                    case 841813064:
                        q6Var.OooO0o(ElfinFloatView.OooOo00(this.Ooooo00));
                        str = "ۖۖۜۘۘۡۚ۬ۙۡۘۚۡۧۜۦۨۘ۟ۥۧ۫۬ۡۦۡۦۘۡۤ۠ۜۨۧ";
                        break;
                    case 874563500:
                        str = "ۛۖۘۢ۟ۡۦۚۘۗ۠ۡۘ۟ۧ۬ۘ۬ۜۘۖۧۧ۠ۨۚۘۘۘۘۦ۠ۥۘ";
                        break;
                    case 914476950:
                        ElfinFloatView.OooOOOo(this.Ooooo00).OooO0o();
                        str = "۟۠ۥۘۙۦ۬ۙ۟ۘۘۛۖۢۦۘۘۤۤۦۘۖۖ۫ۙۥۗۛۡۖۙۤۨۢۨۦۘ۫۠۟";
                        break;
                    case 1200274991:
                        ElfinFloatView.OooOo0(this.Ooooo00);
                        str = "ۘ۫ۧۙۧۖۘۡ۫ۜۘۢۨۡۛ۬ۦۘۙۨۦ۫ۚۤۖۢۤۜۧۙ۠ۜۦۘۤۜۨۘۘ۟ۢۗۥۖۘ۟۬ۘۘۢۦۘۙۙ";
                        break;
                    case 1237598922:
                        String str30 = "۠ۨۘ۠۠۬ۡۢ۠۟۟ۡ۬ۡۡۘۦۖۦۧ۠ۨۖۖۘۤۨۨۘ۫ۥ۟ۘ۬ۡۘ۟ۢ۫ۢۧۘۖۙۖۙۡۧۜۜ۬ۥۥ۬ۡۢ";
                        while (true) {
                            switch (str30.hashCode() ^ 1889067587) {
                                case -1479558917:
                                    str = "۫ۧۡۢۛۡۖۗۦۘۘ۫۠ۢ۟ۖ۫۠ۨۦۗۢۙۖۥۧۥۨۗۡۚۙ۠ۤۛ۠ۤۘۜۜۢ۟";
                                    continue;
                                case -263292228:
                                    String str31 = "ۢۢۘۢۜۘۦۘۡۥ۠ۡۘۧۗۥۘۧۘ۟ۗۖۖ۟ۤ۠ۘۜۢ۫ۢۗ";
                                    while (true) {
                                        switch (str31.hashCode() ^ (-1626241395)) {
                                            case -1766055205:
                                                str31 = action != 0 ? "۟ۥۥۘۗ۠ۛۘۤۖۘ۠ۤۖۘۨ۫ۖۖۜۘ۫۟ۖۘۗۧۡۧ۠ۥۘۨۦۥۘۙۨۚۡۢۦۘ" : "ۢۘ۠ۗۧۤۚۧۙۢ۬۠۠ۗۖۘۢۨۖۘۛۢ۠۟ۙۘۚۦۤ۟۟ۜۡۙۙ۟ۗۗۨۢۧۨۨۘ";
                                                break;
                                            case -1566928833:
                                                str30 = "۟۬ۦۤ۠۬ۜۛۤۚۥ۬ۤۡ۫ۗۦ۟ۜ۟ۨۘۘۚۧ۫ۡ۫۬ۡۘۢۧۦۤۜۛۗۢۢ۫۠ۜۘ۠ۚۖۘۚۧۦۦۗۥۤۜۧ";
                                                break;
                                            case -580629537:
                                                str31 = "۟ۢۥۘ۠۬ۦۘۙۧۖۘۢۡۦ۟ۛۗۧۛۤ۟ۙۚۤۙۥۛۚۢ۟ۦ۫ۡۢ۠ۘۨۦۡۘۘۢۤۜۘۥۢۜ۫ۘ۟";
                                                break;
                                            case -431003382:
                                                str30 = "۟ۜۦۘۥ۬ۘۘۚ۬ۖۢۦۨۘۖۢۢۦۧۡۛ۠ۦ۠ۖ۠ۨۡۖۗۘۧ۫ۛۖۥۗۨۛۗۥۘۚ۬ۦۘۧۜ۠ۧۡۖ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1053864414:
                                    str30 = "۠ۜۥۘۡ۬ۗ۠ۦۗ۫ۚ۟ۗۨۡۘۢۚ۠ۧۡۗۢ۟ۚۖۙۧۗۗۨۘۗۥۥۘ۠۬ۢۛ۟۟۫۠ۥۙۗ";
                                    break;
                                case 1557367697:
                                    str = "ۘۦۙۥۘۘۘۤۛۜۘۧ۠ۦۘ۫ۜۜۤۘۡۗ۬ۜۦۦۨ۟ۢۗ۠ۦۡۘ۠ۥۙۚ۟ۗۡۖ۫ۗ۬ۦۘۚۚۙۡۘۦۘۧۚۦۘۢۧۖۘ";
                                    continue;
                            }
                        }
                        break;
                    case 1451837588:
                        break;
                    case 1543895746:
                        String str32 = "ۗۤۨ۫ۘۨۘۧۤ۫۟۫ۦۘۦۥۜۘۢۨ۫ۙ۫ۜ۫ۗۘۘۖۦۦۨۖۥ";
                        while (true) {
                            switch (str32.hashCode() ^ (-1579484082)) {
                                case -1091471537:
                                    String str33 = "ۤۢۨۥۚۜۙۢۙ۫ۦ۬۠ۡۧۧۙۡۘۥ۟ۛ۬ۙۜ۬۫ۛۛۤۨۘ";
                                    while (true) {
                                        switch (str33.hashCode() ^ (-375969391)) {
                                            case -1788507655:
                                                str32 = "۫ۢۖۘۚۛۜۚۨۡ۫ۥۖۘۜۛۖۢ۠۫ۖۤۘۦۛۨۘۡۛۧ۫۟ۖۗۘۧۥۗۚۛۡۨۘۚ۫۫";
                                                break;
                                            case -1751488097:
                                                str33 = "۠ۨ۠ۛۤۙۙۨ۟۫ۤۜۘۗۛۖۘۦۧۢ۟ۖۢ۬۬ۜ۬ۢ۬ۦۖۡ۬ۘۥۘۜۘۥۘ";
                                                break;
                                            case 393811687:
                                                str33 = degrees >= -60.0d ? "ۖ۠ۥۘۖۙۘ۬ۘۤۜۡۥۥۨۡۖۚۦۜۤۖۘ۬ۥ۬۬ۗۨ۫۟ۚ" : "ۜۖۦۘ۟ۥۢۙۗۧۨۖۧۧۘۙۡۗۜۡ۫ۙ۟ۛ۠ۙ۟ۧۦۢۜۘۙۖ۟ۘۢۥ";
                                                break;
                                            case 768998926:
                                                str32 = "ۨ۟ۦۘۗۜۙ۫۫ۜۘۖۨۢۚۢۜۤۛۖۥۖۛۘۥۘۘ۫۠۬ۖۡۢۖۢۛ۬ۨۥ";
                                                break;
                                        }
                                    }
                                    break;
                                case -872503469:
                                    break;
                                case 48264335:
                                    str32 = "ۛۥۖۘ۫ۛ۫ۤۛۚۚۢ۬ۘۧۥۘۛۦۧۢۘۡۦۧۖۘ۠ۗۜۘۙ۠ۦۧۢۚۜۛۖۘ";
                                    break;
                                case 650747894:
                                    str = "ۗۚۡۘۜۚۧۧۜۡ۬ۦۜۧۢۡۘۤۤۢۘ۟ۛ۟ۖۖۘۧۥۡۤۗۛ";
                                    break;
                            }
                        }
                        break;
                    case 1578512516:
                        ElfinFloatView.OooO0Oo(this.Ooooo00, motionEvent.getRawX());
                        str = "۠ۗۥۘۗ۫ۗۙۡۛۙ۟۟۟۟ۡۛۢۥۘۛۦ۬۟۠۟ۦ۬ۨۘۥۗۘۘۙۙۨۘۡ۟ۙ";
                        break;
                    case 1650353511:
                        i4 = 4;
                        str = "ۘ۠ۡۖۦۛۙۘۧۧ۠ۜۤۖۘۦۧۖۘۤۤۖۘ۫ۤۨۡۡۦۘۢۢۦۖۛۧۦۘۜۘۡۜ۠ۖۖۖۘۤۚۜۜۘۧ";
                        break;
                    case 2015173723:
                        String str34 = "ۗ۬۬۬ۢۜۨۜۧۘۙۘ۫۟ۛۘۘۦ۬ۘۘۗۖۡ۟۟ۘۢۥۘۗ۫ۘۘۜۨ۠ۗ۠ۡۘۥ۠ۡۘۥ۟ۢ";
                        while (true) {
                            switch (str34.hashCode() ^ (-1499618631)) {
                                case -414332752:
                                    str34 = "ۚۛۡۘ۫۠ۛۤۥۘ۫ۜۖۘۧ۫ۘۘۦۧۢۥۙۜۤۡۧۗۡ۟ۗۘۜۗۤ۟ۛۡۘ";
                                    break;
                                case 458836400:
                                    str = "ۧۖۘۘۡ۠۠ۗۨۘۨۡ۫ۙۜۖۗۘۗۧ۠ۙۗۘ۬ۢۖ۬ۙ۠ۧۗۙۜۘۙۦۡۘۨۜۚۡۘۤۥۧۖۗۙۛۚ۟۟۟۫";
                                    continue;
                                case 1051956482:
                                    String str35 = "ۗۚۛۡۢ۠ۜ۬ۤۡۘۘۖۖ۫ۥۙۨۦۥۘۖۨۜ۟ۡۡۘۤۜۦ";
                                    while (true) {
                                        switch (str35.hashCode() ^ 1954364554) {
                                            case -1715800492:
                                                str34 = "ۦۜۜۘ۠ۛۘۚۡ۟۬۟ۨۘۨۚ۬۬ۡۘۘۢۡۜۧۦۛۙۖۚ۬ۚۥ۬ۨ۫۠";
                                                break;
                                            case -1524007730:
                                                str35 = "ۥۘ۫ۚۛۖۨۢۥۧۚۢۤۧۦۘۨۥۧۗۡ۟ۢۨۥۘۛۡۤۡۨۙۙۢۗۛۗ۠ۥۥۜۡۘۡۤۜۡۙۜۘ";
                                                break;
                                            case 83740253:
                                                str34 = "ۦۤۖۘۙ۬ۤۨ۠ۜۡ۫ۜۘۙۥ۠۠ۧۜۗۖۖۘ۠ۘ۠ۦۦۖۚۥ۟";
                                                break;
                                            case 1045125965:
                                                str35 = ElfinFloatView.OooOoo0(this.Ooooo00).getVisibility() == 0 ? "ۙۗۖ۟ۜ۟ۜ۠ۡ۬۫ۨۘۡۨ۫ۢۚۥۡ۟ۥۚۚۨۦۡ۫ۤۡۘۧۤ۫ۗۘۚۚ۟ۖۙۨۢ" : "۬ۢ۟۠ۙۧۖۨۥۖۛۖۘۤۜۙۨۦۥۖۘۡۛۦۧۘ۟ۘۥۗۥۥۙۚۧۨۢۛۧۖۨۗ۬ۜ۠ۡۤۥ۠ۨۡۛۧۡۜۡ";
                                                break;
                                        }
                                    }
                                    break;
                                case 2101514962:
                                    str = "ۚۧ۠ۧۜۜۘۡۖۖۘۛۛۘۘۘۢ۬ۗۙۛۙ۬ۨۘۧۦۧۙۦۘۘۚۢۜۘۤۖۘۛۢۚۦۧۗ۬۬۠ۜۥۨۘۧۘۢۨۖۡۗ۬ۦۘ";
                                    continue;
                            }
                        }
                        break;
                    case 2071181665:
                        str = "۟۠ۥۘۙۦ۬ۙ۟ۘۘۛۖۢۦۘۘۤۤۦۘۖۖ۫ۙۥۗۛۡۖۙۤۨۢۨۦۘ۫۠۟";
                        break;
                    case 2071190305:
                        elfinFloatView3 = this.Ooooo00;
                        str = "۫ۛۘۨۨۥ۬ۛ۫ۙ۟۬ۢۡۛ۬ۧ۫ۜۛۙۤۤۜۗۥۘۢۜۦ۠ۢۘۘۦ۠ۥ";
                        break;
                    case 2133065384:
                        String str36 = "ۚۘ۟ۛۡۧۘۧۖ۠ۚۥۢ۟ۥۛۧۗۦۚۘۦۜ۟۠ۥۖۡۘۧۢۦۘۚۜۡۧ۠ۜۥ۟ۡۖۖۘ";
                        while (true) {
                            switch (str36.hashCode() ^ (-520664839)) {
                                case -1046737561:
                                    String str37 = "ۙۚ۠ۖۘۨۘۥۤۦۗۧ۬۫ۤ۠ۡۜۚۛ۬ۘۨ۫ۛ۟ۢۙۖۡۜ";
                                    while (true) {
                                        switch (str37.hashCode() ^ (-1985639087)) {
                                            case -582636941:
                                                str37 = "۫ۥۥۦ۬ۚۚۘۡۘۙ۠۠۫۫ۚۜۤۧۘۜۨۘ۬ۜۘۖ۠ۜۖۙۙۗۗۜۜۖۛ۬ۤۡ۫۫ۜ";
                                                break;
                                            case -76537695:
                                                str36 = "ۚۦ۫ۜۧ۫۟ۤۘۤ۬ۥۘۛۚۜۢ۫ۜۙ۫ۧۥۢۥۖۨۙ۟ۜۨ";
                                                break;
                                            case 767132059:
                                                str37 = ElfinFloatView.OooOOo(this.Ooooo00) ? "ۗۛۡۘ۠ۚۦۘ۠ۧۘۨ۬ۢۘۥ۬ۘ۫۠ۘۘۨۤۥ۠ۦۛۤۚ۬ۧ۟ۙۜۖۙۜۧ۠۟ۥۨۧۘۘ۟ۧۨۢۘ۬ۗۗ۬ۘۘ" : "ۛۤۧۢ۟ۥۖۨۡۘۤۦۖۜۙۙ۫ۦۘۚ۬ۘۥۘۛۖۢۨۘۙۜۘۘ";
                                                break;
                                            case 1550649234:
                                                str36 = "۟ۨۤۧۤۛۚۜۘۨۢۘ۠ۧۛۘ۫ۘۘۡۜۗۛ۫۠ۚۦۧۚۘ۫۟ۨۘۜۜۥ۫ۢۖۘۙۙۥ۟ۙ۠۠ۘۚ";
                                                break;
                                        }
                                    }
                                    break;
                                case 636339929:
                                    str = "ۡۖۤۧ۬ۤۘۘۤۢۦ۠ۗۛۥ۟ۥۤۡۛۘ۟ۦۢۤۦ۬ۖۦۘۥۖۧۘۦۖۤۦۡۥۨۡۥۜۛۜۨۜۛۛ۬ۦۡۢۖۘ";
                                    continue;
                                case 1235115209:
                                    str = "ۖۡۦۦۙۦۘۢۨۜۡۥۜۘۗۙۛۢۛۖۨ۠ۖۘۚۘۨۘۧ۟ۛۡۜۚ۫۫ۛۧۘۤۙۦۦۘ۠۫ۧۙۤۖۘۤۗ";
                                    continue;
                                case 1983052963:
                                    str36 = "۟ۤۜۘۤۤۘۗۥۤۜۗ۠ۘۛ۟ۢ۫ۡۘۛۨۜۘۜۡۜۘ۠ۚ۠ۨ۬ۤ۟ۜۖۖۙۢ";
                                    break;
                            }
                        }
                        break;
                }
                return true;
            }
        }
    }

    public class OooOOOO implements q6.OooO00o {
        public final ElfinFloatView OooO00o;

        public OooOOOO(ElfinFloatView elfinFloatView) {
            this.OooO00o = elfinFloatView;
        }

        @Override // z2.q6.OooO00o
        public void onClick(View view) {
            String str = "ۢۨۥۘۙۦۥ۬۫ۨۜۚۚ۠ۚۥۤۢۘ۟ۖۘ۟ۚۙ۟ۛ۠۫ۥۛۗۦۥۙۘۖۘۢۜۘۜۥۥ";
            while (true) {
                switch ((((str.hashCode() ^ me.o00000oo) ^ 165) ^ UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE) ^ 29743401) {
                    case -972123860:
                        ElfinFloatView.OooOo0(this.OooO00o);
                        str = "ۤۛۢۖ۟ۤۡۨ۫ۖۡۦۛ۬۬۫ۦۛۥۡ۠ۙۙۦۘۛ۬ۥۘۚ۫ۦۘۛ۟ۙۨۖۙۨۨ۟ۚۖۘۦۧۛۘ۫۫ۗ۟ۜۘ۠ۥ";
                        break;
                    case 509838294:
                        return;
                    case 1428802247:
                        str = "ۧۤۦۜ۫ۧ۫۟ۜۘۚۨۛۘۖۘۖۖ۫ۡۗ۬۬۬ۖۦۚۧۜۢۦۤۙۤ۬ۛ۫ۥۦۖۘ۠ۛۤۦۧۧۛ۟ۜۘ۫۬۠۠۬۠";
                        break;
                    case 1693218963:
                        str = "ۚۡۘ۟ۥۥۘۢۛۚۜۜ۬ۛۛۘۘ۬۠ۗۜ۫۟ۨۜ۬ۚۨۦۘۡ۬۫ۙۛۜۘۘ۠ۛۢ۬۠۟ۖۢۛۥۥۘۡۗۤ";
                        break;
                }
            }
        }
    }

    public class OooOo implements GestureDetector.OnGestureListener {
        public final ElfinFloatView OoooOoO;

        private OooOo(ElfinFloatView elfinFloatView) {
            this.OoooOoO = elfinFloatView;
        }

        public /* synthetic */ OooOo(ElfinFloatView elfinFloatView, OooO0OO oooO0OO) {
            this(elfinFloatView);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            String str = "۬۬ۥ۟ۧۦ۠ۚۘۜۗۨۤۤۡ۫ۙۜ۬ۘۥۖۛۘۧۗۥۘۘۡۨۡۦۜ۬ۛ۠۬ۥۡۥ";
            while (true) {
                switch ((((str.hashCode() ^ 352) ^ 174) ^ 241) ^ 1561551847) {
                    case -1511698212:
                        str = "ۧۦۘۘ۬ۧۜۘۢۤۦۘۨۜۨ۟ۤ۬ۜۘۖۥۛ۬ۨۦۘ۬ۗۥۥۡۡۘۗۤۘۥ";
                        break;
                    case -1201043138:
                        return false;
                    case -853411172:
                        str = "ۨۢۚ۠ۢۤ۟۫۬ۙۛۘۘۥۖۡۘ۟ۦۗۙ۟ۖۡۡۖۘۚ۫ۦۘۜ۬ۜۘۚۙۙ۟ۥۘۛ۟ۙ";
                        break;
                }
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            String str = "ۙۖۛۧ۬ۚۦۥۨۘۙۙۨۡ۟ۥۘۡۜۜۘ۠ۤ۫ۚۥۘۖۧۙۧ۬۫";
            while (true) {
                switch ((((str.hashCode() ^ 971) ^ 108) ^ 910) ^ 1537955456) {
                    case -2122470196:
                        str = "۠ۛۤۥۧۡۚۜۘ۬ۢ۠۫ۚۜۛۤۘۥ۠ۨۘۛۗۦۘۤۘۨۘۗۥ۠ۗ۫ۙۨ۠ۧۤۙۥۛۥۛ۠ۚ۟ۙۘ";
                        break;
                    case -906919303:
                        str = "ۥۙ۫ۜۙ۠ۚۘۤ۬ۨۨۨ۬ۘۖۨ۠۟ۜۢۚۥۥۗۜۙۖ۬۠";
                        break;
                    case -307411682:
                        return false;
                    case 366758194:
                        str = "ۡ۫ۧۧۜۨۡ۠ۤ۠ۧ۠ۨۤۖۘ۬۬ۧۥۧ۟ۛ۟ۨۘۦۧۘۥ۠ۥ";
                        break;
                    case 1357058663:
                        str = "ۥۥۥۨ۟ۡۘ۫۫ۜۘۢۡ۠ۙۘۘ۟۬ۘۘۗۡۗۛ۟ۦۙ۟ۧۢۖۧۘۢۛۧ۟ۢۧۛ۬۠۬۫ۜۖۖۘۘۥ۬ۛ";
                        break;
                    case 2021719322:
                        str = "ۗۜۥۛ۠ۗ۬ۘ۠ۥۖۥۘۦۚ۟ۤۦۥۘۖۢۜۘۤۡۤ۠ۥۢۘۙۡۡۚۧۢۢۜۢۚۗۗۘۧۘ";
                        break;
                }
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            String str = "ۢۤۦۘۙ۟ۢۢۚۥۘۗۙۛۡۨۗ۟ۜ۠ۚۧ۫ۘۖ۠ۧۨۘ۬ۜۨۗۙۚۥۚۙ";
            while (true) {
                switch ((((str.hashCode() ^ 114) ^ 486) ^ 797) ^ (-1300604063)) {
                    case 106483202:
                        str = "ۜ۟ۤ۫ۙۜۘۨ۠۟ۨۤۨۘۖۢ۠ۖۘۘۨۨۖۘۘۨۤ۠ۗۥۘۘ۫ۘ۟ۧۜۥۡۤ";
                        break;
                    case 145581743:
                        str = "ۖۙۨ۫ۚۧۧ۬ۙۥۖۡۘۚۜۘۜۤۚۗۦۢۖ۬ۜۦ۫ۗ۬ۗۦ۠۠ۖۖۨۘ۟۠ۥۜۗ۠ۡۜۧۚۜ۬ۨۜۛۖۘۧ";
                        break;
                    case 525800262:
                        return;
                }
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            String str = "۟۠۫ۘۡۥۘۨۤۨ۟۫۫ۨۦۢ۟ۛۛۗۘۡۘۦۜ۫ۨ۟ۦۖۘۦ۠ۡۨۨۨۨۨۙۥۢ۟ۛ";
            while (true) {
                switch ((((str.hashCode() ^ 487) ^ 497) ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_VIEW_VALUE) ^ 1743024077) {
                    case -1658222492:
                        str = "ۖۡۖۘ۠ۚ۬ۜۢۨۨۦۘۘ۬ۗۢۡۖ۠ۚۡۥ۬۟ۖۘ۟۫ۙۥ۠ۥۡۦۘۘ۠ۡ۬۠۟ۢۥۡۖ۬ۦۤۦ۟۠";
                        break;
                    case -1421454925:
                        str = "ۗۗۦۢۧ۟ۜۦۜۘۚۙۤۦ۬ۡۙۥۧۘ۠ۛ۟۬ۖۡۖۡۡۚۨۖۙۖۥ۠ۤۧۖۚۥۘۜ۬ۢۜۗۦۘۦۚۡ";
                        break;
                    case -1239870757:
                        str = "ۘۨۢ۟ۧۨۥۛۤۙۧۧ۫ۘۦۛۚۗ۟۠ۖۤۨۘۤۤۨۘۗۗۡۘۙۗ۫۟ۚ۠ۡۘۢۥۧۜ۫ۥۢۘ۬ۦۖۘۨ۟ۜۥۘ";
                        break;
                    case -503819750:
                        return false;
                    case 45805930:
                        str = "ۡۚ۬ۧۘۧۘۨۘۡۢۢ۫ۜۚۡۘۙ۬ۜۘۦۙۧۚ۬ۡۜۥۙ۬۟ۡۘۧۛ۫۬ۜۡۧۨۗۡۡ";
                        break;
                    case 549450449:
                        str = "ۨۙۥۘۜۙ۟ۙۗۨۥ۟ۦۘۚۥۤۡۥۤۖۜۡۘۡ۬ۚۦۡۘۤۥۥۘۨۦۖۡۥۖ";
                        break;
                }
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
            String str = "ۗۘۥۘۘۥۖۘۗۥۖۚۥۡۨۗ۠ۚۥۧ۬ۨۗ۬ۨ۬ۘۧۗ۟ۚ۫ۦ۫۟ۤۚۖۚۢۦۨۡۘۥۦۤۗۥۧۥۗ۠ۖۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 834) ^ 414) ^ 802) ^ 1593235336) {
                    case -1766046930:
                        str = "ۛۜ۠ۨۗۗ۫ۢۜۘۜۡۡ۫ۡۨۤۚۚۜۜۥۘ۟ۘۡۘۦۦ۫ۧۥۘۘۘ۟ۖۧۛۛ";
                        break;
                    case -1480217190:
                        return;
                    case -1274744538:
                        str = "ۦۤۦۘ۟ۖۘ۬ۨۜۜۙۚۤۖۧۘ۠ۛۨۢ۬ۦ۟ۚۛۗۧ۟ۦۤۜۢۢۡۧۤۧ";
                        break;
                }
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            String str = "ۖۚۛۧۖۢۤۥۥۤۢ۠ۤۢۥۤۡۨۤۥۨۘۚۖۘۖۧۗ۟ۘۢ";
            while (true) {
                switch ((((str.hashCode() ^ 471) ^ 432) ^ 33) ^ (-1680934488)) {
                    case -1141420660:
                        this.OoooOoO.Oooo00o(true);
                        str = "ۘۤ۬ۗ۟ۖۘۖ۟ۢۜۥۢۦۥۦ۬ۗۖۚۧۡ۬۬ۖۨۤۜ۫۬ۘۧ۠ۛ۬۟";
                        break;
                    case -643385959:
                        this.OoooOoO.Oooo00o(false);
                        str = "ۖۥ۟ۜۤۥۖۡۜۚۦۡۧۘ۠ۚۘۚۜۘۦۘۖۥۧۘۡۗۨۘۘۦۘ";
                        break;
                    case -356209716:
                        String str2 = "ۜۥۜۦ۠۬ۤۚ۟ۥۢۨۘۜۚۢۢۜ۟۬۬ۗۚۜۖۜۢۗۘ۠۬ۧۡ۟ۦۨۥۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 666925795) {
                                case -1804608216:
                                    str = "۠۫ۨۘ۟ۜۥۘ۟۫ۨۖۜۧۘۥۚۦۘۚۦۘ۠ۡۥ۬ۡ۠ۧۗۚۜۘ";
                                    continue;
                                case -1549039263:
                                    str2 = "۫ۦۡۤۘ۫ۢۗۡۚۛ۫ۖۤۙۚۜۘۛۚ۬ۦۤ۠ۧۡۚ۬ۦۦ۠ۧۢۜۚ";
                                    break;
                                case -1291044035:
                                    str = "۫ۡۥ۬ۗۚ۫ۦۦۥ۫ۘۘ۬ۨۘۧۨۛۨ۫ۗۖۗۜۘۢۛ۟ۘۧۡ۟ۚۤۙۢۘ۟ۡۨۘۡۖۜۘ";
                                    continue;
                                case -639749135:
                                    String str3 = "ۖۗۜۥۤۨۘۨۢۡ۟ۛۙۡۥۡۥۨۖ۫ۜۜۘۤۙ۠ۥۜۡۘۥۖۧۘ۠ۤۘۘ۬ۛۙۥۡۘۦۜ۬ۧۡۡ۬ۤ۟";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1594113042) {
                                            case -1962902457:
                                                str2 = "ۢۛۨۥۦ۫ۗۧۡۡۧۥۘ۫ۢۚۦ۫ۡۧۘۜۘۗۙۗۡۡ۫ۜۧۚۤۗۘۘ۟ۤۨۘۘۖۖۘ۟ۜۖۢۚۡۘۨۛۜۘ";
                                                break;
                                            case -757702566:
                                                str3 = ElfinFloatView.OooOoo0(this.OoooOoO).getVisibility() == 0 ? "ۗۙۨۘ۠ۗ۠۟ۙۦۘۧۥ۠۠۬ۛۛ۠ۥۘ۟ۡۡۘۨ۫ۥۘۥۥ۠ۚۨۥۘۢۘۜۘۤ۠ۖۘۖۚۦۙۢۜۘ۫ۢۙ۟ۛۡۗۨۥۚۘ۟" : "ۡۤۘۘۧ۫ۖۙۜۛۢ۫ۢۜۢۜۘۥۗۤۤۜۧۘۢۖۖۘۖۥۜۘۘۘۧۨۜۙۥۤۖۥۨۚۖۘۘۛۖۢۗۤۛ";
                                                break;
                                            case -410710067:
                                                str2 = "ۨۚۘۘۗۚۗۖۛۨۘ۬ۛۖۤۤۡۘۡۘ۟ۧ۠ۧ۟۫ۚۢ۬ۜۗ۬ۢۤۧۧۘ۟ۤۖۖۢۗ۠ۥۨ۬ۛۗۡۨۘ";
                                                break;
                                            case 726414799:
                                                str3 = "ۚۛۚ۟ۖۥ۬ۦۜۘۨۢۚۗ۠ۢۘۡۥۚ۟ۨۘۖۘ۫ۗ۟۠ۧۘۛۙ۬ۦۚۗ۬ۢۧۦۖۦۦ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case 352130070:
                        str = "ۘۤ۬ۗ۟ۖۘۖ۟ۢۜۥۢۦۥۦ۬ۗۖۚۧۡ۬۬ۖۨۤۜ۫۬ۘۧ۠ۛ۬۟";
                        break;
                    case 736196101:
                        return true;
                    case 753150688:
                        ElfinFloatView.OooOooO(this.OoooOoO).start();
                        str = "ۤۛۘۘۗۢۖۤۖ۬ۥۥ۬ۦ۟ۜ۬۬ۚ۫ۦۤۚ۠ۢ۠ۘۛۜۡۘۘۦ۠ۥ۟ۖۛۡۡۗۜ۫ۤ۬ۥۘۨۤۚۨۦۤۘ۬ۗ";
                        break;
                    case 939840095:
                        ElfinFloatView.OooOOOo(this.OoooOoO).setVisibility(8);
                        str = "ۨۧۡ۟۬۫ۥۜۘۨۥۖۜ۟ۖۥۢۛۨۛ۟ۧۧ۫ۥۡۘۡۘۦۘۙۘۛ۫ۖۧۘۥۢۨۘۥۙۥۗۗ۠ۤۗۢ";
                        break;
                    case 1092053216:
                        String str4 = "ۢ۟۠۬۫ۡۘ۫ۡ۟ۜۡۗۘۧۡۧۧۜۥۚۚۛۡۘۨ۫ۖۘ۠ۖۡۘۜۢ۠ۦ۬۫";
                        while (true) {
                            switch (str4.hashCode() ^ 488545187) {
                                case -256593196:
                                    str = "ۦۡۡۘ۟ۧۡ۟ۛۖۗۘۙۗۦۘۘۖۤۦۘۖ۠ۖۤۦۗۢۙۘۘۤۚۦۘۛۘۧۥۤۗۥۛۜ۬ۤۙۛ۠ۢۨۥۛۛۘۜۘۨ۟ۧ";
                                    continue;
                                case 529029326:
                                    str = "ۨۧۡ۟۬۫ۥۜۘۨۥۖۜ۟ۖۥۢۛۨۛ۟ۧۧ۫ۥۡۘۡۘۦۘۙۘۛ۫ۖۧۘۥۢۨۘۥۙۥۗۗ۠ۤۗۢ";
                                    continue;
                                case 1055283541:
                                    String str5 = "۠ۦۡۘۙۚ۟ۖۛۡۚۥۘۛۨۘۖۡۡ۠ۚۨۘۤۙۡۘۥۗ۟ۢۨۡۘۡۜۡۡۜۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-1685618869)) {
                                            case -2133879067:
                                                str5 = ElfinFloatView.OooOOOo(this.OoooOoO).getVisibility() == 0 ? "ۙۙۨۘۜۨۘۙۢۖ۠ۙ۫ۜۧۖۜۙۗۤۜۘۖ۟ۜۘۙۙۜۘۙۛۤۤۨۧۗۦۤۤۗۘۘۨۦ۬ۥ۫ۖۨۘ" : "ۘۙۥۚۡۘۙۖۛۚۡۙ۫۟ۛۨۛۦۘ۬ۧۦۦ۫ۡۘۖ۟ۗۖۗۢ";
                                                break;
                                            case -314893656:
                                                str4 = "ۚۖۜۧۛۖۢۖۤۥۖۢۗۖۘ۠ۘۡۘۤ۫ۥۘۦۨۢۘۖ۫۟۫ۢۢۖۨۘۖۚۥۘۗۘۜۘۜۙۥۤۧۨۡۖۥۛۥ۟ۨ۬ۗ";
                                                break;
                                            case 1042886980:
                                                str4 = "ۧ۟۟۫ۨۨۘۥۤۢ۠۬ۛۖۤۨۘۖۤۧ۫ۛ۬ۙۘۖۧ۫ۘۘۘ۟ۘۧۜۛۡ۬ۥۘ";
                                                break;
                                            case 1405152931:
                                                str5 = "ۗۡۙۤۖ۬۫ۤۤۦۙۦ۬ۧۙ۬۠ۛۜۡۗۨ۠ۥۘ۠۬ۘۘۡ۬ۡۚۥۗۥ۟۠";
                                                break;
                                        }
                                    }
                                    break;
                                case 1574059244:
                                    str4 = "ۖۨۧۘۛ۟ۦۢۥۜۘۦۤۜ۠ۡ۠ۨۡۘۧ۠ۢۡۘۧ۠ۘۤ۬ۗۖۘۘ۠ۙۖ";
                                    break;
                            }
                        }
                        break;
                    case 1188985177:
                        str = "ۙ۬ۤۙۗۘۘۘ۫ۜۘۜ۠ۧۖۙۥۡۛ۬ۘۙ۟۫۠ۗۢۦۖۘۘۜۧۥۦ۬ۗۛۗ۫۬ۗۖۚۜ";
                        break;
                    case 1445371422:
                        str = "ۚۘۛ۠۫ۗۢۖۖۘۤۙۘۘۘۘۡۗۗۥۘۚۦۜۘ۬ۢۗۤۤۛ۬ۗ۬ۡۦۖۙۘۢ";
                        break;
                }
            }
        }
    }

    public class OooOo00 implements h7.OooOO0 {
        public final ElfinFloatView OooO00o;

        public OooOo00(ElfinFloatView elfinFloatView) {
            this.OooO00o = elfinFloatView;
        }

        @Override // z2.h7.OooOO0
        public void OooO00o(Object obj) {
            String str = "ۤۧۖۦۤۘ۫ۚۢۛۧۥۗ۬ۜۢۦۦ۟ۢۥۘۘۙۧۥۙۢۡۖۚۖۤۨۘۡۗۘۖۦۥۘۤۘۥۘۗۛۤۘۜۦۚۚۗ۟ۙۡۘ";
            while (true) {
                switch ((((str.hashCode() ^ 761) ^ 390) ^ 932) ^ (-846009564)) {
                    case -1939908472:
                        str = "۟۠ۗۘۤۢۧۧۡۖ۟ۚ۠۫ۛۦۘۘ۫۟ۨۘۖ۟ۦۘ۫ۦۦۜۖۦۘۥۥ۟۟ۤۨ";
                        break;
                    case -778947861:
                        ElfinFloatView.Oooo000(this.OooO00o, false);
                        str = "۫ۗۨۧۛ۬ۛۜۡۘۧۦۥۢۧۦۧۨۘۛۧۗۢۡۗۙۚۜ۬ۢۙ۠ۜۖۥ۬ۤۜۚۘ۫ۜۡۘۗ۟ۥۥ۠";
                        break;
                    case 570494633:
                        return;
                    case 981839305:
                        str = "ۖۙۗۡ۠۫ۙۛۘۧ۟ۦۘۡۜۖۦۗۛۥۥ۠ۘۛۥۘ۫۟ۜۘۤۖۥۘ۟ۥ۠۫۬ۛ";
                        break;
                }
            }
        }

        @Override // z2.h7.OooOO0
        public void OooO0O0() {
            String str = "ۦ۬ۖۥۥۡ۠ۜۛۚۖۡۘۙۙۥۛۖۘۢۛۤۗۘۨۥۜ۟۠ۜۦۢ۬ۨ";
            while (true) {
                switch ((((str.hashCode() ^ 574) ^ 539) ^ 2) ^ 1714323593) {
                    case -1925647193:
                        ElfinFloatView.Oooo000(this.OooO00o, false);
                        str = "۫ۥۡۘۖۤ۠۠ۘۦۘۘۧۖۨۛۡۘۚۤۤ۟ۤۛۚۡۜۥۦۛۗۤ۬ۦۘۤ۬۬";
                        break;
                    case 1153220553:
                        str = "ۨ۠ۙۤۙ۠ۤۥۨۘ۫ۥۙۗۚۘۡۡ۠ۢۨ۬ۢۙۥۛۛۖۘۚ۫ۖۘۖ۫ۜ۟ۢۦۙ۫ۛۦۘۘۢۘۘ۬ۢ۫۫ۚۦۘۡۗۘ";
                        break;
                    case 1692267956:
                        return;
                }
            }
        }
    }

    public static class Oooo000 extends Handler {
        private WeakReference<ElfinFloatView> OooO00o;

        private Oooo000(ElfinFloatView elfinFloatView) {
            this.OooO00o = new WeakReference<>(elfinFloatView);
        }

        public /* synthetic */ Oooo000(ElfinFloatView elfinFloatView, OooO0OO oooO0OO) {
            this(elfinFloatView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ElfinFloatView elfinFloatView = null;
            int i = 0;
            String str = "۬ۥ۬ۜۦۜۘۦۧۡۘۡۢۥۙۖۗ۬۫ۛ۫ۜۦۘۘ۬ۡۘۡۖۙۨۙۖۘ";
            while (true) {
                switch ((((str.hashCode() ^ 947) ^ 765) ^ 961) ^ 452000003) {
                    case -2049660459:
                    case -396581861:
                        str = "ۛ۫ۖۘ۬ۖ۫ۙۧۡۘۦۥۘۘۨ۠۟ۛۤۡۤۤۚۡ۟ۘۘۢ۟ۘۥۡۨ";
                        break;
                    case -1721991193:
                        str = "ۤۛۦۘ۬ۜۦ۬ۦۖ۬۟۠ۡۙۚۖۘۡۘۜۘۨ۫ۥ۫ۧ۠ۖۢۤ";
                        break;
                    case -1262520527:
                        super.handleMessage(message);
                        str = "ۛۙۖ۫ۦۜۘۙ۬ۖ۠ۧۜۘۚ۫۟ۡۤۨۘۤۚۘۥۡۖۘۧۦۖۘۦۚۘۘۥۛ۬۫ۙۖۤۚۡۜۧۘۘۡ۠ۦۢۛۜۘ۠۬ۧۛۧۦۘ";
                        break;
                    case -1196538596:
                        String str2 = "ۢۥۗ۬۫ۨۦۘۜ۫۟ۗۥۘۤۥۦۚ۬ۗۘ۟ۦۜۜ۠ۦۡۖ۬ۛۡۚۥ۠۟";
                        while (true) {
                            switch (str2.hashCode() ^ 1197526773) {
                                case -1930789348:
                                    str = "ۥۧۚۚۚ۫ۜۚ۬ۨ۬ۜۘۦۘۜۢ۬ۧ۠ۡۖۨ۫ۤۚ۟ۡ۬ۜۘۧۖۗۢ۠ۖۘۢ۬۟ۜۡۦۘۗۢۘ۟۫ۤ";
                                    continue;
                                case 462843178:
                                    str2 = "ۙۘۘۤ۠ۛۥۙۥ۟۟ۡۘۚ۬ۡۘۙ۠ۜ۟۠۬ۗۚۚ۟ۢۤۙۨۧۘۙۥۗۤۖۧۘۛۖۦۗۚۙۗۧۥ۠ۨۘ";
                                    break;
                                case 1736017942:
                                    String str3 = "ۧۖ۟۬ۨۗۥۧۖۚۜۦ۬ۥۦۘۤۗۨۘ۟ۡۛ۠ۛۦ۠ۜۚۨ۫ۨۘۤۘۜۡۥۨۘۦۨۦۢۘۖۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 858961102) {
                                            case -1965360857:
                                                str2 = "ۚۖۨۘ۬ۛ۠۟ۙۧۧۜۤ۬ۦۘۢ۫ۥۗۗۤ۠ۙ۠ۤۖۧۥۛۡۨۡۥۨۦ۫";
                                                break;
                                            case -1931081553:
                                                str3 = "ۧۤ۫ۨ۟۟ۙۖۙۙۢۤۦۛۦۙ۬ۚۙۨۨ۟ۤۖۜۦۚۧۨۘۚ۬ۥۡ۠ۛۛۤۤۘ۠ۢ۬ۦۧۘۢ۬ۡۚۖۥۘۤۨ";
                                                break;
                                            case 400377208:
                                                str3 = i != 1000 ? "۟ۙۗۘۛۙۦۚۚۧۤۚۤۥۡۙۚۙ۫۬ۜۘۥۡۦ۠۫ۖۧۜۛۗۡۦۥۢۚ" : "ۚۗۘ۠ۙۘۘ۟ۢۨۘ۫ۨۖۘ۫ۖۖۘۧۤۛ۠ۧۦۘۨۗۧۚۢۧۛۥۧۘۥۧۨۘۦۚۖۘۜۥ۠ۜۗۜۘۧۧۥ۠ۖۚ";
                                                break;
                                            case 1998922129:
                                                str2 = "ۖۦۖۘۜۗۨۨۙۦ۬۠ۨۘۨۜۜۘ۠ۥۗۖ۫ۙۡ۫ۧ۫ۡۨۘۤ۟ۜۘۘۜۦۜۥۜۤۖۙ۫ۛۜۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1842782269:
                                    str = "ۗۜ۫۬ۙ۠۫ۙۨۘۤۥۥۘ۬ۚۡۘۛۢۜۤۜۛ۠۬ۘۘ۟۟ۤۥۖۤ۟ۢۧۙ۬ۢ";
                                    continue;
                            }
                        }
                        break;
                    case -503942025:
                        i = message.what;
                        str = "ۥۦۥۘۛۡۗۛۗۛۗۧ۟۫ۦۗ۫ۖ۫ۨۙۥۥۜۡۥۛۘۢۛۤۤۖۗۜۘۦۛۥۗۛۢۡۘۜۘۛۢۥۘۗۧۦۤۚۨۘ";
                        break;
                    case -356950519:
                        return;
                    case 862817944:
                        str = "ۤۥۥۢ۟ۜۘ۟ۨۧۜۡۜ۠۬ۥۤۦۦۜۛۨ۠ۨۗۖۛۤۧ۟۫ۢۖ۬۫۫ۨ";
                        break;
                    case 1711922682:
                        str = "ۙۗۖ۬ۧۥۘۛۖۜۘۛۖۙۙ۫ۗۜ۟ۜۘ۟ۤۥ۫ۗۡۘۗۙۥۚۖۚ";
                        elfinFloatView = this.OooO00o.get();
                        break;
                    case 1746024025:
                        String str4 = "۠ۚۥۘۧ۫ۤۡۗۘ۬ۦ۠ۚۦۡۘۖۛۜۘۡۢۜۘ۟ۤۦۘۗۢۥۜۧۗۙۡۥۘۥ۫۬";
                        while (true) {
                            switch (str4.hashCode() ^ (-252314851)) {
                                case 1181713278:
                                    str4 = "ۜ۫ۨ۫ۤۖۘۚ۫ۖۥۖۘۗۖۜۙ۟ۦۗ۠ۜۘ۟ۥۡۛۛۦۘۡ۠ۘۘۥ۟ۨۡۖ۠";
                                    break;
                                case 1256103543:
                                    String str5 = "ۦۡ۟۠۬۟۫ۦۨۘ۬ۗۖ۟ۨۘۜ۫ۙۘۚۜۘۡۜۤ۫ۤ۫ۥۗ۠۫ۨۥۘۦۗۨۘ۠ۧۘۛۘۦۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 346942824) {
                                            case -1704115396:
                                                str5 = i != 1001 ? "ۢۘۨۨ۠ۛۖۦۢۢۖۘۨۜۖۘۥۦۜۨۛۖۗۡۜۘۜ۠ۥۖۧۡۘ۫۠۟ۛ۠ۨۤۖۜۘۨۘۜۜۨۖۘۨۗۜۖۢ۠ۘ۠۬" : "ۨۖۙ۠۬۟ۤۡۦ۫ۢۘۘۘۧۨۦۗ۟ۚۜۢۜۜ۠ۤۧۨۖۗۨۘ";
                                                break;
                                            case -9592988:
                                                str5 = "ۘۧۨۨۖۜۘ۬۫۫ۦ۠ۤۙ۫ۜۘۧۖ۠ۗ۟ۡۡۡ۬۬ۗ۬ۦۖۘۘۡۧۨۘ۟ۡۘۘ۫ۖ۬ۙۧ";
                                                break;
                                            case 879904115:
                                                str4 = "ۤۤۗۥۢۖۙ۫ۨۘۥۨ۠۟ۗۚ۠۟ۛۡۥۘ۟ۨۘۘ۟۫ۦۘۡۖ۠ۜۚۘۘۗۗۢۘۨۥۘۜۛۘۘۖۤۤۡۢۗ";
                                                break;
                                            case 1590303841:
                                                str4 = "۫ۡۦۘ۠ۨۧۜۨۘۨ۫ۢ۠ۡۙۚۡۦۘۢۜۧۘ۟۠ۨۘ۫ۙۥۚۗۗۚۜۧۨ۫ۙ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1515994218:
                                    str = "ۛۦۖۘۘۤۖۘۖۖۘۘۘۥ۫ۜۖۦۚۗۧ۫ۘ۟ۗۥۛ۟ۧۚۧ۟ۘۢۨۛۢۨۥ۟۫ۨۘۨۦ۠۫ۘۨۘ۫ۛۜ";
                                    continue;
                                case 1663126326:
                                    str = "۬ۚۤ۫ۙۧۙۧۙۤۚ۫ۙۘ۟ۗۥ۫ۥۗ۬ۙۖۖۥ۠ۛۡۦۢۨۛۦۢۙ۫ۘ۫ۢۚۖۛ";
                                    continue;
                            }
                        }
                        break;
                    case 1782845969:
                        ElfinFloatView.OooO00o(elfinFloatView);
                        str = "ۨۤۦۘ۠۟ۥۘۗۚۦۜۦۢۥۥۥۙۥۥۘ۠ۘۘۨۡۥۚ۠ۜۘۚ۟ۛ";
                        break;
                    case 1970282772:
                        ElfinFloatView.OooOOo0(elfinFloatView);
                        str = "ۛ۫ۖۘ۬ۖ۫ۙۧۡۘۦۥۘۘۨ۠۟ۛۤۡۤۤۚۡ۟ۘۘۢ۟ۘۥۡۨ";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۦۛۙۧ۬ۢ۠ۨۙۦۘۦۘ۟ۖۥۧۤۨۧۨۜۧۥۖ۟ۥۨۧۧۡۗۚۜۘ۟ۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 150) ^ 23) ^ 111) ^ 1620526569) {
                case 77704954:
                    o00000o0 = ElfinFloatView.class.getSimpleName();
                    str = "۟ۘۧۘۢۧۤۨۚۡۡ۫ۜۘۤۛۗۦۖۖ۬۟۬ۨۦۥۘۘۘۙۨۦۛ۫۫ۚۧۚ۫ۨۡۜ۫ۨۘ";
                    break;
                case 576070467:
                    return;
                case 965544633:
                    o0000OOo = 0L;
                    str = "۠ۦۤۨۘۨۘۖ۬ۛ۟ۘۛۨۨۢۦۘ۠ۛۥۦۗ۠ۚۢۘۥۨۙ";
                    break;
            }
        }
    }

    public ElfinFloatView(Context context, DeleteFloatView deleteFloatView) {
        super(context);
        this.o0ooOOo = true;
        this.o0ooOoO = true;
        this.o0Oo0oo = false;
        this.o0OO00O = new Oooo000(this, null);
        this.o0O0O00 = new OooO0OO(this);
        this.o000OOo = new OooO0o(this);
        this.o000000 = new Handler();
        this.o000000O = new OooO(this);
        this.o000000o = new OooOO0(this, 7000L, 1000L);
        this.o00000 = new OooOOO0(this);
        this.o00000O0 = new OooOOO(this);
        this.o00000O = new OooOOOO(this);
        this.o00000OO = 0;
        this.o00000Oo = new OooO0O0(this);
        this.Ooooo00 = context;
        Oooo0oo();
        Oooo();
        this.o0OOO0o = deleteFloatView;
        this.o000000o.start();
        l10.OooO0o().OooOo00(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        this.Ooooo00.registerReceiver(this.o00000Oo, intentFilter);
        this.Ooooo00.registerComponentCallbacks(this.o000OOo);
    }

    public static /* synthetic */ float OooO(ElfinFloatView elfinFloatView) {
        String str = "ۥ۫ۛۧۥۘۖ۟۫ۗۦۥ۟۬۠ۡۜۦۘۧۚۦۘۗۨۢ۟ۗۗۙۗ۟";
        while (true) {
            switch ((((str.hashCode() ^ 782) ^ 472) ^ 721) ^ 595848600) {
                case -1979829640:
                    str = "ۚۦۨۘ۠۫۬ۙۤۨۘ۟ۡۘۘۧۨۥۚ۫ۜۘۖۧۤۜۨۘۘ۬ۨ۟ۧۧۙۖۢۗۨ۠ۡۘۗۡۚ۬ۜۨۙ۟ۡۦۥۤ";
                    break;
                case 1060793337:
                    return elfinFloatView.OooooOo;
            }
        }
    }

    public static /* synthetic */ void OooO00o(ElfinFloatView elfinFloatView) {
        String str = "ۗۦۡۛۖۗۙۗۡۗۖۡۘۗۖۧۢۡۥ۫ۨ۠ۧۨۨۘۧۧۘۦۢۤ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE) ^ 693) ^ 867) ^ (-289554412)) {
                case -1300588915:
                    elfinFloatView.Oooo0o0();
                    str = "۫ۧۡۙۢ۫ۤۘۚۨ۫ۛۙۚ۟ۤ۬۠ۤۧ۟ۚۧۜۦۘۗۖۛۡۡۚۦۘ۠ۗۙۤۖۧۘۚۤۡۥ۬ۤ";
                    break;
                case 943832690:
                    return;
                case 1055581416:
                    str = "ۦۡۤ۟ۛۤ۠ۢۚۦۛۥۘۤۡۜ۬ۥۙۧ۟ۥ۫۫ۗ۬۟ۜۧۚۢۧۧ۠ۧ۫ۤ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooO0O0(ElfinFloatView elfinFloatView) {
        String str = "ۨۢۘۘۤ۟ۘ۠ۢ۬۠ۨۘۧۧۚۦۛ۬ۨ۟ۥۘۦ۟ۥۘۗۙ۠۬ۡۛ";
        while (true) {
            switch ((((str.hashCode() ^ 818) ^ 446) ^ 925) ^ 106817904) {
                case -1387298215:
                    return;
                case 29115269:
                    str = "ۥۚۦ۬ۦۨۘۙۗۖۘۡۦ۫ۥۨ۬ۦۡۢۚ۬ۖۘۨۚۘۘۨۨۧ۟ۢ۬ۗۚۡۢۛ۟ۗۥۧۦۛ";
                    break;
                case 1573841620:
                    elfinFloatView.OoooOOO();
                    str = "ۛۘۧ۟ۤۘ۠۠۠ۙۨۙۧۨ۟ۙۧۗۗۧۨۚۨۜۘۤۢۖۗۡ۟ۙۦۡۧۛ۟";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooO0OO(ElfinFloatView elfinFloatView) {
        String str = "ۤۥۜۤۘۧۘۛۥۘۘ۫۟۟ۚۥۘۜۜ۬ۙۦۘ۬ۚۨۘۖ۟ۨۘ۟۟ۚۗ۟ۘۡۢۗ";
        while (true) {
            switch ((((str.hashCode() ^ 37) ^ 630) ^ 399) ^ 687404406) {
                case -1611211526:
                    return elfinFloatView.Ooooo0o;
                case 718383508:
                    str = "ۛۦۡۚۥۛۗۨۦۦ۠ۜۤۡۛۜۡۛ۟ۘۡۘۙۧۥۧۤۗۡۥۦ";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooO0Oo(ElfinFloatView elfinFloatView, float f) {
        String str = "ۢۙۥۜ۠ۢۦۥ۟ۖۘۚ۫۟۟ۢۙ۬ۦ۫ۙ۠ۦۡۘۥۛۚۘۚۡ۬ۦۧۘۧۖۥۘ۠ۦۖۘ۫ۙۦۦۦ۠۫ۖۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000oO) ^ 663) ^ 286) ^ 1604282850) {
                case -2003126866:
                    str = "ۜۜۚۖۦۧۦۛۛ۠ۦ۠ۘۖۨ۬ۧۙ۫ۥۤۧۨۡۘۗۦۘۘۦ۠ۘۢۛۡ۟ۦۜۨ۬ۥۘۡۧۤۘۚۖۘۗۘ۟ۖۛۘۘۤۙۤ";
                    break;
                case -1265851449:
                    elfinFloatView.Ooooo0o = f;
                    str = "ۥۡۙۢۦۜۘۘۗۦۘۨۢۡۘۙۜۧۘۧۚ۬ۘ۬۫ۧ۠ۨۙۨ۫ۢۤ۬۟۫ۥۘۖۤۡ";
                    break;
                case 386491997:
                    str = "ۧۧ۟۠ۙۥۘۚ۟ۨۘۚۖۡۘۖۥۜۡۡۙۜۨۜ۠ۨۘ۫ۖۥۘۖۖۜۤۨ۠ۜۥۙۡۛۘۜ۟ۥۘۚۛۙۥ۟ۦۘۢۚۛۛۥۛ";
                    break;
                case 1206623799:
                    return f;
            }
        }
    }

    public static /* synthetic */ float OooO0o(ElfinFloatView elfinFloatView, float f) {
        String str = "ۤۧۨۘ۟ۜۡۘۜۙۛۘۜۧۤۤ۫ۡۧۘۘۤۢۢۜۥۖۤۧۚۗۧۥۧۗ۬ۦۛۤۗۥۡ۬";
        while (true) {
            switch ((((str.hashCode() ^ 697) ^ 300) ^ 104) ^ (-504131292)) {
                case -2134202463:
                    str = "ۤۦۦۘۗۥ۬ۧۨۧۨۜۦۘۥۧۦۙۢۘۘۛۨ۬ۖ۟ۥ۟ۗۡۦۗ۠";
                    break;
                case -1699792778:
                    elfinFloatView.OooooO0 = f;
                    str = "۟۠ۗۤۤۦ۠۠ۖۘ۬۠ۧۨۥۖۘ۟ۗۚ۫ۘۢۡ۟ۨۚۥۧۘۨۧۖ";
                    break;
                case -849728131:
                    return f;
                case -518078569:
                    str = "۫ۖۨۘۗۛ۠ۡ۠ۘۘۥۧۛۜۛۘ۬ۛۥۘۗۦۧۘۚ۫۫ۨ۬۬ۗۤۦۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooO0o0(ElfinFloatView elfinFloatView) {
        String str = "۠۟ۡ۠ۗۙۚۚۜ۟ۦۜۚۨۗۧۨۘۧۚۧ۠ۤۥۢۖ۬ۨۖۚ";
        while (true) {
            switch ((((str.hashCode() ^ 481) ^ 385) ^ 273) ^ (-202083475)) {
                case -1618192492:
                    str = "ۚۡۨۖۡۛۖ۠ۘۦۢۘۘۘۖ۫ۡۢ۟ۜۙۡۘۧ۠ۘۘۨۤ۟ۧۥۦۜۦۧۨۡۘۧ۬ۤۤۦۘ";
                    break;
                case 675473323:
                    return elfinFloatView.OooooO0;
            }
        }
    }

    public static /* synthetic */ float OooO0oO(ElfinFloatView elfinFloatView) {
        String str = "ۡۜۥۡۛۗۘۢۙۖ۟ۘۢۦۨۦۜۜۘۜۖۢۦۢۡۜۢۨۧۦۖۗۨۦۘ۠ۜۧ۟ۨۘۘ۟۠ۧ";
        while (true) {
            switch ((((str.hashCode() ^ 632) ^ 694) ^ 629) ^ 582885216) {
                case -2085391791:
                    str = "ۧۚۡۜۢۡۢۡۖۘۛۢۦۙۢ۟۫ۘۧۗۡۦۨ۬ۛۙۜۜۘۨۖۥۗۦۡۘۡۥۙۗۢۡۘۚۘۦ۟ۖۦۧۛۦۘ";
                    break;
                case 1322698413:
                    return elfinFloatView.OooooOO;
            }
        }
    }

    public static /* synthetic */ float OooO0oo(ElfinFloatView elfinFloatView, float f) {
        String str = "ۛ۠ۖۘ۠ۥۖۘۡۚۜۨ۫ۘۙۖۤۡۢ۫ۤۛۡۡۡۨۘۗۧ۠ۘۨ۠ۨۗۢۥۖۨۘۨۛۗۘۥۧ";
        while (true) {
            switch ((((str.hashCode() ^ 948) ^ 98) ^ 104) ^ (-700600689)) {
                case -1970487368:
                    elfinFloatView.OooooOO = f;
                    str = "ۘ۬۬ۖۥۗۛۖۢۘۗۥۘۨ۬ۗۜ۬ۜۗۤۤۨ۫ۗ۬۟ۥۘۛ۫ۢۗۡۘۢۡۢ";
                    break;
                case -1781507181:
                    return f;
                case 933846010:
                    str = "ۚۧۥۘ۬ۧۥۢۥۚۜۚۘۘۨ۬ۛۘۘۗۜۖۧۤۚۤۧۚۜۧۛ۠۠ۘۥۘۥۦۤ";
                    break;
                case 1434122530:
                    str = "ۡۗۜۘۧۧۡۘۖۙ۬ۛۘۦۢۜۙۢۘۡ۟ۢ۫ۚ۬ۘۜۧۢۨۦۦۧۥۗۦۖ۬ۧۜۙۨ";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooOO0(ElfinFloatView elfinFloatView, float f) {
        String str = "ۖۙۜۘ۟۠ۦۚۡۘۧۛۡۚۜ۬ۛۤۢۧۢۡۥ۬ۛۡۧۖۘۦۨۢ۟ۦۜ۟ۜۗۜۘ۠ۥۥۘ۫۠ۦۘۤۧۛ۟ۗۚۨۨ۟";
        while (true) {
            switch ((((str.hashCode() ^ 271) ^ 730) ^ 186) ^ (-389011744)) {
                case -1557898391:
                    elfinFloatView.OooooOo = f;
                    str = "ۥ۟۫ۜۚ۟۟ۘۘۗۡۥۘۦۘ۠ۖ۬ۚۥۤۧ۠۠ۦۘۜۡۦۘۗۚۨۡۛ۫ۢۚۘۘۗۛ۫ۥۤۡۘۛۜۜۘ۬ۗ۬ۙۨۗۖۙۤ";
                    break;
                case -1446621676:
                    str = "ۛۧۘۖۖۨ۫ۦۘۥ۠ۧ۠۫ۢۧۛۚۘۖۘۨۥۦۙۤۜۘ۟ۛۘۘۤۛۗ۫ۜۧۘۚۘۧۚ۫۫ۖۥۡۘۡۚ۬";
                    break;
                case -440847309:
                    str = "۬۠ۘۖۢۖۘۨۧۘ۬ۦۜۚۦۘ۠ۢۡۘۥۥۦۜۢۨۘۜۥۢ۠۠ۗۜۦۗۗ۠ۡ";
                    break;
                case 1161035420:
                    return f;
            }
        }
    }

    public static /* synthetic */ float OooOO0O(ElfinFloatView elfinFloatView) {
        String str = "ۡۛۜۢ۠ۜۘۜ۫ۘۥۘۧۘ۟ۜۙۡ۬۠ۤۚۗۖۢۦ۟ۚۧۛۗۘ";
        while (true) {
            switch ((((str.hashCode() ^ 914) ^ 330) ^ 651) ^ (-2101697767)) {
                case 1923179956:
                    return elfinFloatView.Oooooo0;
                case 1945475257:
                    str = "ۛۥۗۘۨۦۘۡ۠۟۟ۚۘۜۤ۬۫۠ۘۘۙۡ۟۬۟ۛۡۚ۬ۧۘ۬ۧۧ۫ۘۘ۬ۥۛۜۘۧۛ۫";
                    break;
            }
        }
    }

    public static /* synthetic */ float OooOO0o(ElfinFloatView elfinFloatView, float f) {
        String str = "ۜۘۘۤۜۘ۠ۧۚ۟ۙۨۘۜۦۢۨۜ۟ۛۖۜۨۥ۬ۧۖ۠۬ۥۧ۠ۢ۫ۖۥۤۘ۟ۛۨۢۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 526) ^ 167) ^ 558) ^ (-1524706087)) {
                case -1460723206:
                    elfinFloatView.Oooooo0 = f;
                    str = "ۖ۫ۖۡ۠ۜۗۡ۫۫ۧۧۢۧ۟ۚ۟ۥۤۨۗۢۧۤۡۢۜ";
                    break;
                case 784728227:
                    str = "ۦ۬ۘۘۛۖۛۧ۬ۡۘۙۤۨۘۗۤۨۘ۠۠ۘۘۖۘۢۦۥۘۘۦۘۥ۫ۥۘ۬ۤۨ۫ۛ";
                    break;
                case 1616202842:
                    str = "ۦۢۚ۟ۜۗ۫ۢۘۖۤۘۘۜۡۦۘ۠ۦۡۘۖۤۨۘۢۘۖۘۛۤۖۘۛۛۨۘ۫ۛۨ۟ۡۦ";
                    break;
                case 2055111645:
                    return f;
            }
        }
    }

    public static /* synthetic */ float OooOOO(ElfinFloatView elfinFloatView, float f) {
        String str = "ۖۗۛۢۛۚۛ۟ۥۘ۫ۥۡۛۡۤۡ۫ۖۤۥۘۗۙ۬۠ۡۘۗۤۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 434) ^ 1000) ^ 231) ^ 1112733978) {
                case -1582217280:
                    elfinFloatView.Oooooo = f;
                    str = "ۨۛۖۘۧ۠ۖ۠۟ۧۡۦۧۘ۫ۦۧ۬ۛۥۛۧ۬ۧۘ۫ۙۙۦۘ۬ۙ۟ۘۚۨۘۖۛۥۘ";
                    break;
                case -83233788:
                    str = "ۧۙۘ۠ۧ۬ۚۖ۠ۨۖۧۢۨۨۘۗۦۖۤۘۦۜۘ۟ۜۗ۫ۗۥۡۘ";
                    break;
                case 671368283:
                    str = "ۨۜۛۛ۠۟ۧۡۛۡۙۦۖۖۜۢۤۛ۟ۚۖۥۗۖۦۖۨ۫ۛۨۗۦۖۘ۫۫ۘۡۦۛۢ۠۠ۡۡۨۘ۬ۡۗۙ۬ۨۖۙۨۘ";
                    break;
                case 1132223895:
                    return f;
            }
        }
    }

    public static /* synthetic */ float OooOOO0(ElfinFloatView elfinFloatView) {
        String str = "ۧۥۖۘۤ۟ۙۙۚ۠ۡۡۘۡۨۘۤۜۖۘۤۦۜۧۨۤۢۖۖۘۢۡۛۡۥۜۥۗ۠ۤ۠ۙۥ۠ۦۤۢۜۜۤۙ";
        while (true) {
            switch ((((str.hashCode() ^ 146) ^ 369) ^ 870) ^ 356201707) {
                case -1583959832:
                    return elfinFloatView.Oooooo;
                case -345448018:
                    str = "ۦ۟۫۠ۥۡۨۢ۠ۥۚۙ۠ۥۘ۟ۤ۟۠۟ۨۘۖ۫۬ۘۧۙۘۘۨۘۧۘ۠۫ۙۢۚۘۛۡۛ۬۠ۛۘۘۥۢۛ۟ۡۚ۬ۛۥ";
                    break;
            }
        }
    }

    public static /* synthetic */ void OooOOOO(ElfinFloatView elfinFloatView, int i) {
        String str = "ۖۘۦۘۡ۬ۘۤۙۗۨۦۥۧۥ۫ۨ۬۫ۖۘۗۧۘۘۚۤۦۢ۫ۚ";
        while (true) {
            switch ((((str.hashCode() ^ 91) ^ 759) ^ 822) ^ 341950227) {
                case -1034862216:
                    str = "۬ۙۘۖۦۦۘۖۦۥۨۥ۬۟ۢۜۘۙۚۚۨۛ۠ۤ۠ۤۘۖۛۦۜۘ";
                    break;
                case -420405062:
                    elfinFloatView.OooooO0(i);
                    str = "ۥۡ۬ۥۛۖۘ۬۫ۘۡۖ۫۫۠ۨۘۖۛۗۨۛۨ۟ۚ۠ۦۚۗۧۗۧۙۚ۬ۥۘۨۘ";
                    break;
                case 558931766:
                    str = "ۧۙ۬ۚ۫ۚۢۡۖ۠ۦۤۦۧۖۦۛۧۘۤۛۙۖۘۜۤۨۘۜۛۧ";
                    break;
                case 1885634059:
                    return;
            }
        }
    }

    public static /* synthetic */ DeleteFloatView OooOOOo(ElfinFloatView elfinFloatView) {
        String str = "ۨ۠ۙۨۤۙۗۙۛۡۚۖ۟۫ۖۜۜۙۚۗ۟ۛۙۘۨۥۧۘۜۥۦۛ۫ۖۘۙۜۚ۫۫ۘۘۦ۠ۦۘۤۖۛۧ۟ۘ";
        while (true) {
            switch ((((str.hashCode() ^ 706) ^ 136) ^ 426) ^ 228394575) {
                case -1941279473:
                    str = "ۘۙۜۖۧۜۛ۟ۤ۠ۧۨۧ۠۟۬ۧۖۤۨ۟ۢۥۘۧۨۢ۟ۢۘۘۚۡۧۘۙۙۙۙۜۥۘۧۚۖۘۥۤۨۖۡۗۢۥۛۛۦۖۘ";
                    break;
                case -541037259:
                    return elfinFloatView.o0OOO0o;
            }
        }
    }

    public static /* synthetic */ boolean OooOOo(ElfinFloatView elfinFloatView) {
        String str = "ۚۜۦۘ۠ۜۡۡۜ۠ۜۥۚۤۦۨ۬ۖۛۖۘۨۙۦۧۜۙۡۘۤۚۗۚ۟ۢۘۘ۫ۘۧۖۨۨۢۚۗۨۦۚۤ۫ۤۦ۠۬";
        while (true) {
            switch ((((str.hashCode() ^ 105) ^ 786) ^ 630) ^ (-1228782311)) {
                case -1387986898:
                    str = "ۛ۟ۡۘۗۢۖۦۖۦۘۙ۫ۖۘ۬ۨۥۡۗ۫۠ۧۘ۟ۨۘۤۜۘ۠ۨۛۚۨۙۦۘۜ۠ۤۡۗ۫۠ۨۡۘۙۤۘۗۨ۫ۛ۫ۖۘ";
                    break;
                case 311148569:
                    return elfinFloatView.OoooO00();
            }
        }
    }

    public static /* synthetic */ void OooOOo0(ElfinFloatView elfinFloatView) {
        String str = "۫ۨ۠ۢ۬ۥۛۢۢۤۤۨۗۥۜۖۢۜۘ۟ۘۜۘۚ۠ۖۘۖ۬ۥۘۖۡۤۖ۟ۢۧۨۘۨۤۖۘۜۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 767) ^ 975) ^ 469) ^ 137545967) {
                case -1091512240:
                    str = "ۜۥۨۘۙ۫ۘۘۢۙۤۤۡۧۘۘ۠ۛ۠ۖۤۜۨۡۤۤۘۧۚۥۘۡۗۡۧۨۨۘۢۗ۠";
                    break;
                case 797145669:
                    return;
                case 887825225:
                    elfinFloatView.OoooO0();
                    str = "ۧۥۢۧۤۘۘۨۜۘۘ۟۠ۗۧۧۡۘۤۚۦۢۨۖۢ۬۠۬ۚۡۘۘۛۥ۬ۦۛۧۨۙۛ۫ۘۘۦ۬ۦۘۙۢۜۘۨۢۦۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ q6.OooO0O0 OooOOoo(ElfinFloatView elfinFloatView) {
        String str = "ۛ۠ۨۘۤۦۥۘۡ۬ۗۚۡۘۤ۫ۘۨۘۜۗۛۥۦۤۤ۠ۖۖۘۨۦۢۛۦۘۢۚۖ۫ۙۨۘ۟ۗۙ";
        while (true) {
            switch ((((str.hashCode() ^ 466) ^ 138) ^ 504) ^ 245684216) {
                case 538651565:
                    str = "ۨۨۧۘۢۜۡۘۙۢۖۘۨۥۨۘۦۤ۬ۤۢ۟۟ۧۨۖۢ۬ۘۜۖ۬ۖ۟ۤۢ۬ۗۜۖۨۧ۫ۚ";
                    break;
                case 1070851257:
                    return elfinFloatView.o00000O0;
            }
        }
    }

    public static /* synthetic */ s6 OooOo(ElfinFloatView elfinFloatView) {
        String str = "۬۫۫ۡۙ۠ۧۡ۠ۗۛۖۘ۠ۧۡۘۜۤ۟ۚۦۢۦۖۙۜۡۗۚ۠ۘۘۘۨۨۛۘۢۜ۬ۚۢ۫۫ۢۘۛ۬ۨۢۧ۬ۢ۬ۢۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 953) ^ 18) ^ 232) ^ 1036025510) {
                case -333226074:
                    str = "ۦۛۧۨۨۚۙ۬ۥۘۙۡۚۡۦۖ۫ۜ۠۟ۙ۠ۤۨۚۗۤۦۦۗۨۘ";
                    break;
                case 1491622893:
                    return elfinFloatView.o00o0O;
            }
        }
    }

    public static /* synthetic */ void OooOo0(ElfinFloatView elfinFloatView) {
        String str = "ۤۤۦۘۚ۬ۛۘ۬ۘۘ۟ۦۘۘۦۘۦۗ۠ۤۡۘۢۨۛۛۗۗۨۘۢ۫ۥۘۢ۬ۘۘۙ۬ۙ۫ۡۛ";
        while (true) {
            switch ((((str.hashCode() ^ 419) ^ 940) ^ 324) ^ (-992880313)) {
                case -164518283:
                    return;
                case 190028815:
                    elfinFloatView.OoooOO0();
                    str = "ۗۖۖۘۜ۟ۤۖۨۤۗۦۗۦۘۨۘ۫۬۫ۗ۟ۢۡۤ۟ۧۥۦۨۗۜ";
                    break;
                case 1922986215:
                    str = "ۗۤۥ۟۫ۢۥۙۜۘۡ۟۬ۦۜۨۜۜۛۚ۠ۤ۟ۥۘۗۥۜۘۦۦۜۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ q6.OooO00o OooOo00(ElfinFloatView elfinFloatView) {
        String str = "ۡۨۖۘۦۨ۠۫ۧۙۜۘۜۘۥۨۡۙۚۖۘ۟ۢۢۨ۠ۡۤۦۦۗۨۘۗ۫ۥۘۗۥۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 108) ^ 474) ^ 740) ^ 1371246997) {
                case -1224220579:
                    str = "ۗ۫ۦ۠ۢ۟ۙۙۘۘۜ۫ۨۢۤۦۘۤ۠ۥۘۤۤۗۗۦۡۘۘۗ۫ۖۦ۫ۤۤۘۘ۫۟ۛ";
                    break;
                case 111059947:
                    return elfinFloatView.o00000O;
            }
        }
    }

    public static /* synthetic */ t6 OooOo0O(ElfinFloatView elfinFloatView) {
        String str = "ۖۘۖۘ۠ۙۦۘۥۖۛۚ۬ۙۗۦۜۧۦ۫ۨۗۢۜۗ۫۠ۡۘۤۘۦۘ۫۟ۡۚۜۡۘۦۙۥۘۗۙۚۥۥۢۙۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE) ^ 325) ^ 777) ^ (-281928628)) {
                case -2047885636:
                    return elfinFloatView.o00Ooo;
                case -1470228984:
                    str = "۟ۢۨۚۙۛۛۤ۠۟ۙ۟ۛۦۨۘۛۙۥۘۧۧۥۘۢۗۜۘۛ۫ۗۥ۠ۥۘۚ۫ۦۘ۫ۥۖۘۧۚۥۘۘۨۡۘ";
                    break;
            }
        }
    }

    public static /* synthetic */ t6 OooOo0o(ElfinFloatView elfinFloatView, t6 t6Var) {
        String str = "۫۟۬ۧۤۥۥۙۖۘۡۚۨۘۚۦۖۗۤۡۗۤ۬ۛۡۨ۟ۤۥۘۜۘۚ";
        while (true) {
            switch ((((str.hashCode() ^ 855) ^ 415) ^ 195) ^ 1357196289) {
                case -1450798095:
                    return t6Var;
                case -133171921:
                    str = "ۦۗۜۥ۫۫ۖۢۥۘۚۧۗۜۤۡۙۡۘۖۧۚۚ۟ۡ۠ۘۘۛۤۘۘۦ۟۟۬ۛۘۘ";
                    break;
                case 509631565:
                    elfinFloatView.o00Ooo = t6Var;
                    str = "۫ۛۜۘ۠ۨۘۖ۬ۥۧۘۥۘۡۡۧۢۢ۫ۜۖۘۖۦۛۚۖۗ۟۫ۘ۟ۧۘۘۛۚۥۢۗۦۘ۠ۥۘۗۙۙۘۗۗ۬ۦۤۚۙۦۘ";
                    break;
                case 1921303008:
                    str = "ۜۚ۟ۦۢۜۡۧ۫ۨۛۡۘ۫۬ۡۘ۟ۨۗۨۧۥ۬ۧۘۡۨۨۘۥۘۘ۬ۜۘ۟ۧۡۜ۟ۚۖۥۧۘۛ۬ۗۛ۫ۦ";
                    break;
            }
        }
    }

    public static /* synthetic */ WindowManager.LayoutParams OooOoO(ElfinFloatView elfinFloatView) {
        String str = "۫ۢۦۘۧۧۧ۫ۗۥۙۜۧ۟ۧۜ۬ۤۥۘۦ۬ۖ۟ۡ۠ۡۖۙۖۛۨۘۨۧۡۘۢ۠۟۠ۛ۟ۘۢۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE) ^ 966) ^ 681) ^ (-797865137)) {
                case -2041318447:
                    return elfinFloatView.OoooOoo;
                case -1508788240:
                    str = "ۤۙۘۢ۟۫ۤۥۘۘۙۥۘ۫ۡ۫۠ۡ۫ۧۗۢۗۡۡۥۡ۟ۛۨۘۢۦ۟ۦۦۚ";
                    break;
            }
        }
    }

    public static /* synthetic */ s6 OooOoO0(ElfinFloatView elfinFloatView, s6 s6Var) {
        String str = "ۙۖۨۜۗ۬ۡۙۡۘۜۥۨ۫۟ۚ۠ۛ۫ۦۡۡۢ۠ۦۨۘ۟ۚۢۛ۟ۚ۟ۥۡۘۡۨۥۨۘۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 658) ^ 552) ^ 547) ^ (-2045256326)) {
                case -2087174566:
                    str = "ۛۘۗ۠ۧۤۤۢۖۜۢۖۘۙۤۘۘۙۙۖۛۛۗۡ۬۠۟ۧۙۜۘۖۛ۟ۗ۠ۧۘۙ۟ۚۥۡ۠ۙ۟ۨۘ۠ۥ۠ۛۜۦۘ۠ۥۘ";
                    break;
                case -1781454851:
                    elfinFloatView.o00o0O = s6Var;
                    str = "۬ۙۢۧۙۘۘۨۗۥۧ۬ۡۤۦۜۜ۬ۦۗ۬ۡۘۙۛۡۥۡۛۡۗۛ۟ۦۨۘۦۧۖۥۖۜۘ۠ۗۚ۬۫ۧۢۗۦۘۗ۠ۜۘۢۙۛ";
                    break;
                case 720544571:
                    return s6Var;
                case 1122235839:
                    str = "ۥۤۖۛۢۨۡ۠ۥۘۥ۫ۢۖ۬ۖۘۢۛ۟ۗۘۚ۟ۙۡۢۗۘۘ۫ۢۡ";
                    break;
            }
        }
    }

    public static /* synthetic */ WindowManager OooOoOO(ElfinFloatView elfinFloatView) {
        String str = "ۗ۬ۦۙۦۖۘۡۨۢ۫۟ۨۖ۟ۨۦ۫۬ۨۡۘۨۙۤۚۤۨۘ۫۟۠ۧۙ۬ۛۨۛ۬ۖۦۚ";
        while (true) {
            switch ((((str.hashCode() ^ 308) ^ 575) ^ 707) ^ (-1604437953)) {
                case -1285625992:
                    str = "۟ۧۙ۫ۛۡۘ۟ۨۤۖۦۧۢ۫ۜۙۡ۠ۧۖۡۘۙ۟ۧۢۢۙ۟ۥۘۡۨۛۗۦۖۘۛۜۜۘ۬۟ۖۙۘۡۘۛۡۡۦۛۦۨ۬۫";
                    break;
                case -516868792:
                    return elfinFloatView.OoooOoO;
            }
        }
    }

    public static /* synthetic */ void OooOoo(ElfinFloatView elfinFloatView) {
        String str = "ۡۥۢۛۥۚۨ۫ۛۛۚ۠ۧۧ۫ۧ۫ۨۘۤۗ۠ۨۜۦۘ۟ۨۦۘۥۛۘ";
        while (true) {
            switch ((((str.hashCode() ^ 803) ^ 142) ^ 1) ^ (-1458624450)) {
                case 262727440:
                    return;
                case 895524136:
                    elfinFloatView.Ooooo0o();
                    str = "ۡۜ۠ۧۦ۠ۧۧۡۚ۬۫ۥۦۗۧۜ۠ۤۢۜ۬ۤۡ۫۟ۢۢۦ۠";
                    break;
                case 1777574026:
                    str = "ۡۦ۟ۗۖۥۘۥۜۛۜۢۚۧۘۙۙۘۡ۠ۡۡۦۢۘۡۗۤۗ۬ۚۜۨ۬ۗۦ۫ۡۗۛۧۨۛ";
                    break;
            }
        }
    }

    public static /* synthetic */ LinearLayout OooOoo0(ElfinFloatView elfinFloatView) {
        String str = "۠ۖۡۛ۫ۥۘۨ۠ۚۥۘۛۗۡۜۘۦۖۦۦۦۢۡۦۥۢ۫ۜۘۥۛۜۘۤۨۨۘۧۦۧ";
        while (true) {
            switch ((((str.hashCode() ^ 240) ^ 176) ^ 995) ^ 250378116) {
                case 426386756:
                    str = "ۢۗۡۘ۫ۨۗۥۜۗۦۦۤ۬ۢۖۘ۠ۧۜۗۖۤۨۘۘۘۦ۟ۗۖۥ۠ۦۗۥۘۧۘۖۘ";
                    break;
                case 1062371379:
                    return elfinFloatView.o0OoOo0;
            }
        }
    }

    public static /* synthetic */ CountDownTimer OooOooO(ElfinFloatView elfinFloatView) {
        String str = "ۛۢۘۘۥۗۜۚ۟ۚۜۨۘۦۤۘۘۦۢۧۗۙۗ۫ۖۘ۬ۚۗۙۨۛۚ۟ۛ۠۬ۨۘۢۙۦۡ";
        while (true) {
            switch ((((str.hashCode() ^ 724) ^ 729) ^ 639) ^ 2002386595) {
                case 506079144:
                    return elfinFloatView.o000000o;
                case 1635760327:
                    str = "ۚۧۤ۠ۡ۟ۥ۟ۧۙۦۙۚ۠ۜۡۘۖ۬ۚۢۨۡۨۗۘۘۖۥۘۡۡۡۢ۠ۢۜۜۥۘۤ۫";
                    break;
            }
        }
    }

    public static /* synthetic */ ImageView OooOooo(ElfinFloatView elfinFloatView) {
        String str = "ۧ۫۬ۤۥ۬ۨۗۜۘۙۨۥۘۥۡۘۥۦۘۚۙۦۘۗۚۤ۬۠ۧۥ۟ۘۗۡۥ۫ۧۘ۬۠۟۬ۙۡۥ۫ۥۘۖۘۘۘۦۢۛۛۚۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 911) ^ 538) ^ 655) ^ (-444917896)) {
                case -7442786:
                    str = "ۛ۫ۜۘۘۦۖۖۢۜۧۢ۫ۜۦۘ۫ۡۦۘۢ۫ۥۖۛۡۦۖۜۘۙۘۨ";
                    break;
                case 1690370113:
                    return elfinFloatView.OoooooO;
            }
        }
    }

    private void Oooo() {
        WindowManager.LayoutParams layoutParams = null;
        String str = "ۖۧۨۘۜۥۜۛۦۛ۫ۦۨۘ۫ۛ۟ۚۡۦۛۖۘۙۖۘۘۢ۬ۛۨ۟ۤ۠ۚۙۖۘۡۡۜۡۧۘۛ۟ۛ۬ۨۜ";
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE) ^ com.anythink.expressad.video.module.a.a.O) ^ 420) ^ 222092572) {
                case -2133589065:
                    return;
                case -2117076106:
                    this.OooooO0 = w3.OooOoo0(getContext()).y / 4;
                    str = "ۗۜۖۙۡۨۘۙ۟ۥۦۘۘۖۡۨۘۖۛۨۥۥۘۚۛۧۜۚۛۙ۫۟ۜۢ۬ۚۨۧۘۙۨۤ۠ۢۨۘۘۦۢۖ";
                    continue;
                case -2087750745:
                    layoutParams.gravity = 51;
                    str = "ۢ۬ۡ۬ۨۥۡۛۦۗۨۥۚۧۙۤۡ۫ۤ۠ۢ۟ۧۡۘۡۜۡ۠ۘۨۘۥۢۥۘۙۨۨ";
                    continue;
                case -2057578102:
                    str = "۬ۨۡۘۖۗۜۛۙۗۨۖۘۘ۫۫ۥۘ۬ۦۥۘۙۖۨۗۙ۬ۨ۫۬ۛ۠ۛ";
                    i2 = 2005;
                    continue;
                case -2033625272:
                case 942117727:
                    str = "۠ۨۥۘۧ۟ۦۡۤۨۤۨۜۘۛۖۜۘۛ۠ۘۙۡۘۘۢۧۧۢۜۡۛۦۡۦۧۦۘۡۛ۠ۢۜۨۘۘۙ۫";
                    continue;
                case -1300233405:
                    layoutParams.type = i3;
                    str = "ۙۡۧۥۜۡۘ۟ۚۙۗۧۖۘۢۚۡۗۛۖۘۧۜۡۥۜۗ۫ۖۡۚ۠ۢۘۛۛ۬ۛۜۘ";
                    continue;
                case -1287979516:
                    str = "۠ۨۥۘۧ۟ۦۡۤۨۤۨۜۘۛۖۜۘۛ۠ۘۙۡۘۘۢۧۧۢۜۡۛۦۡۦۧۦۘۡۛ۠ۢۜۨۘۘۙ۫";
                    i3 = i4;
                    continue;
                case -714256722:
                    i = 2002;
                    str = "ۥۖ۠ۗۡۚۖ۫۠ۡۜۖۛۧۗۨۗۦ۟ۢۥۘۚۗۜۡۜۨۗۨۘ۟ۗۖۖۖۘۚۢۨۘۜ۠ۚ";
                    continue;
                case -518572821:
                    i4 = 2038;
                    str = "ۘ۬ۗۖ۠ۚۡۤۖۘ۬ۛۡۘ۟ۦۗۜ۟ۛ۠ۚۖۧۗۥۘۨۚۚۘۨۦۘ";
                    continue;
                case -337654921:
                    String str2 = "۬ۦۤۗۚۛۚۘۥۘۗۨۗۙۢۥۖۦۦ۠۟ۦۘۖ۠ۘ۠۠ۜۚۚ۠۬ۡۘ۟۫ۚۥ۠ۖۘ۫ۢۘۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-905085058)) {
                            case -1533322242:
                                break;
                            case -1375972483:
                                str2 = "ۘۗۜۛۦ۬ۜۧۜ۠ۥ۬ۛۙۘۘۨۗۗۨۗ۬ۥ۠ۜۘۖۧ۫ۦۤۛۧۜۜۘۘۧۙۗ۬ۡۘۘۘۜۘ۫ۨۘ۬ۧ۫";
                                break;
                            case -636510159:
                                str = "ۨۛۡۙۜۚۦۛۤۧۨ۬۠۬ۚۚۜ۟۠ۥۧۦۡۘۖ۫ۦۘ۠ۥۛ";
                                break;
                            case 683841217:
                                String str3 = "ۙۜۧۘۘۨۢۨ۬ۘۚۨۡۘ۟۬ۛۥ۬ۥۢۙۖۥۛۚۦۜۢ۠۟ۧۦۙۙۥ۠ۦۘۘۤۥ۫ۨ۟ۖۘۤ۫۫ۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1579180867) {
                                        case -1484567489:
                                            str2 = "۫ۡۙ۟ۡۜۗۡ۫ۨ۟ۤۜۜۛۧۛۥۘۤۤ۫ۥۗۛۨۤ۫۫ۜ";
                                            break;
                                        case -486033303:
                                            str3 = i5 >= 19 ? "ۖۚۦۘۜۥ۬ۨۧ۫۬ۘۖۤۨۗۜۡۦۖۘۦۥ۬ۤۨۥۙۗۖۨ" : "ۙۧۙۡۥۨۘ۠۠ۖۘۘۢۜۘۤۢ۫ۡۥۨۗۜۧۘۥ۫ۙۘۖ۠۠۬ۥۘ۟ۖ۠ۡۘۢۧۡۘۧۙ۫ۙ۬ۚۤۗ";
                                            break;
                                        case -96644004:
                                            str3 = "ۗۢ۠ۨۢۛۡۘ۬۟۬ۥۘۤۡ۠۟ۤۗۜۖ۟۫۠۠ۘۖۥۘۚۧۛۤۤۨۘۧۛۡۛۨۥۤۖ۫ۨ۬۬ۨۛ";
                                            break;
                                        case 613081208:
                                            str2 = "ۡ۫ۧۖۚۙۜ۬ۦۘۙۘۧۡۗۖۗۖۜۘ۬ۛ۟ۦۙۘۘۘۤ۫ۖۦ۫ۘۛۡۜۖۘۖ۠ۢۧۡ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -133088064:
                    this.OoooOoo = layoutParams;
                    str = "ۚ۬ۧۚۜ۬ۤۧۛۥۜ۠۠ۨۤۦۥۥۘۢۨۦۘۨ۟ۘۘ۬ۡۛ۬ۖۥۘ۫ۥۤۛۜۨۘ";
                    continue;
                case -125764394:
                    layoutParams.flags = 40;
                    str = "۠ۖۙۘۘۤۨۗۦۖۙ۠۫ۤ۬ۖ۠ۡۨۘۦۤۨۧۘۘۜ۬ۥۗۢ";
                    continue;
                case 112673371:
                    this.OoooOoo.height = this.Ooooooo.getLayoutParams().height;
                    str = "ۨۦۧۗۡۦۘ۟۠ۦ۠ۘ۬ۜۘۡ۫ۨۨۨۥۙۧۤۛۦۘۛ۠ۨۜۘۜۛۢۚۧ۠ۦ۬ۚ۬ۙۘ";
                    continue;
                case 480119492:
                    str = "۟ۚ۫ۢ۬ۧۧ۠ۖۨۧۧ۬۫ۤۙۖۦۦۤ۫ۤۡۘۢ۠ۛۜۙۖ۟ۤۘۘۦۖۥۚۜ۟ۙۤۨۥۤ۠ۢۧۡۘۚ۫ۡۘۦۨۥۘ";
                    i3 = i2;
                    continue;
                case 513869932:
                    str = "ۗۨ۬۫ۛۙۡۛۥ۫۫ۨۘ۫ۙ۠ۙۧ۫ۢۚۜۘۡۤ۫ۦۘۢ۬ۘۛ۬ۡ۠ۖ۫۬ۧۚۦۜۨۛۙۛۜۘۦۘۦۘۙۡۢۖۥ۫";
                    continue;
                case 758999791:
                    String str4 = "۟ۛ۠ۧ۬ۛ۟ۚۨۘۦ۫ۖۨ۬ۛۥۡۛۥۙۙۥ۠ۜۘۥۖۚۙۡۘۥۧۦۘۨۘ۠ۤۨۘ۬ۤۤۤ۠ۨۧ۟";
                    while (true) {
                        switch (str4.hashCode() ^ (-489500038)) {
                            case -1978141715:
                                String str5 = "ۜ۟۫ۥۥۥۛۨۖ۫۟۠۟ۙۥۧۨۗ۠ۧۨۘۙۡۛۛ۠ۗۤۙۤۤۖۖ۟ۢ۬۫ۤۙۙۙۖۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-714767442)) {
                                        case -1676314119:
                                            str4 = "ۘۗۨۘۛۛۨۘۚۤۡۘۧۙۛ۬۬ۛ۬ۦۤۡۦۖۜ۬ۙۛۥ۫ۢۘۨۘ";
                                            break;
                                        case 6420225:
                                            str5 = i5 < 24 ? "۠ۘۧۘۛۗۢۖۗ۫ۥۧۡۦۡۦۨۤۥۘ۬ۗۢۗۙۦۘۥۘ۬ۙۖۚۦ۬ۥۘۗۨۧ۟ۨۨۢۖۡۜ۫ۨۖۨۗ۟۠ۥۥۢ" : "۠ۦ۫ۗۗۘۘۙۦۦۘۥۚ۬ۢۗۧۚۗۛۤۘۙۛۦۙ۟ۦۡۘۗۜۢ";
                                            break;
                                        case 136542143:
                                            str5 = "۠۬ۖۦۗ۟۟ۙۨۘۤۜۧۖۘۢۚۧۛۡۛۨ۫۫۠ۙۦۘۨۤۙۘۚۢۥ۫ۢۘۢۧۙۘۤۜۦۢۚۡۡ";
                                            break;
                                        case 971108951:
                                            str4 = "ۛۗۘۤۨۡۘ۫۟ۦ۠ۨۘۘۢۚۥۥۛ۠۠ۚۖۛۤ۟ۤۡۖۤۥ";
                                            break;
                                    }
                                }
                                break;
                            case 476662925:
                                break;
                            case 872817119:
                                str = "ۢ۬ۗ۟ۡۢۡۗ۫ۦ۟ۗ۬ۘۡۨ۬ۧۚ۬ۦ۫ۤۜۘ۬ۧۨ۟ۖ";
                                break;
                            case 1583233946:
                                str4 = "ۢۥۦۘۡۛۙۡۤۧۚۘۙۙۥۖۦۘۗۥۙ۬ۡۜۤۦۘ۬ۖۨۨۤۡۘۗۚۤۘ۠ۗۤۘۧۘ";
                                break;
                        }
                    }
                    break;
                case 767293650:
                    str = "ۗۖۧۜۚۡۘۘۡ۫ۦۛ۬ۥۢ۬ۢۜۘۘۦۢۧ۟۫ۧ۬۫ۢۘۖۚ۟ۘۘۢۙۢۚۢۘ۫۠ۤ";
                    continue;
                case 1023134664:
                    this.OoooOoO = (WindowManager) getContext().getSystemService("window");
                    str = "ۡۧۛۚ۠ۛۖ۬۟ۦۚۡۘۡۖۦۥۚۢۤۚۛۚ۫ۙ۫ۖۨۘ۟ۛۛۛ۬ۗ۟ۜۘۗ۟ۢ۟۠۫۬ۛۨۘ۠ۧۜ";
                    continue;
                case 1183103509:
                    this.OoooOoo.width = this.Ooooooo.getLayoutParams().width;
                    str = "ۢۖۜ۟ۢۧۦ۟ۜۘۙ۟۫ۖ۟ۜۜۚ۟ۚ۬ۖۤۨۦۤۢۦۘۦۢۛۙ۬ۡۘۛۨۚ";
                    continue;
                case 1319292313:
                    String str6 = "ۘۖۧۘۡ۬ۛۛۨۧۘۢۢۨۗۘۡۘ۠ۥۡۘۛ۟ۡۘۘۙ۟ۤۙۖۥۨۡۖۗۜۧۦۤ";
                    while (true) {
                        switch (str6.hashCode() ^ (-937453772)) {
                            case -798038742:
                                str6 = "ۤۜۦۘ۠ۢۚۥ۬ۚ۠ۧۜۘۧۦۖۘۛۗۘۘۚۥۘۢۙۧۖۚۢۧۚۨۚۦۖ۟ۛ۬ۖۘۚ۠ۖۧۛ۫ۜ۠ۢ";
                                break;
                            case -704140513:
                                str = "ۦ۟۬ۙۥۥۘۨ۟ۚۚۗۦۦۤۧ۬ۙۦۨۦۢ۬ۗۡۘۜۨ۟۬۬ۜ۫ۜۥۘۨۗۡۘۘۥ۟ۨۖۛۡ۠ۡۘۜۦۤ";
                                continue;
                                continue;
                            case -279655388:
                                str = "ۤۢۤ۟ۥۙ۟۫ۨۘۗۤۘۤ۬ۡۡۡ۠ۗۗ۟۟ۢۢۥۡ۠ۡۖۘ۫ۚۘۗۧۚۛۦ۫ۦ۠ۖۘۧۢۦۦۛۖۘۧۛ۬۬ۧ";
                                continue;
                            case 1186786361:
                                String str7 = "ۚ۫ۨۗۙۜ۫ۢۥۘ۟ۛۥۘۖ۬ۖۘۢ۠۬۬۟۬ۙۗ۟ۚۘۨۧۡۘۘۧ۠ۧۥۚۤۢۘۖۘۙ۬۟ۦۛۗۧۚ۬";
                                while (true) {
                                    switch (str7.hashCode() ^ 533880311) {
                                        case -1905686903:
                                            str6 = "ۘۤۗۘۙۦ۠ۗۥۧۡۥۘۧۛ۬ۙۘۡۘ۬ۜۚۗۥۦۘ۫۠۫ۖۘۘ۬۟ۨۘۧ۠۫ۜۙۥۦ۬ۚ";
                                            break;
                                        case -1752791788:
                                            str6 = "ۖۡۥۧۖۖۘ۫۟ۨۜۚۤۥۗۜۘۘۛۧۢۡۧۗ۠ۘ۟ۨۖۖۛۤۦۙۥۘۥۢۗۛۡ۠۠ۘۛ";
                                            break;
                                        case -1556732289:
                                            str7 = i5 >= 26 ? "۟۠ۛۥ۟ۜۚۜۡۘۖۧۥۢۙۜۨ۬ۥۚۛۤۖۢۢۙۚۖۛ۫ۚ۬ۤۨۖ۠ۜۨۜۦۘ۬ۘۦۤۦۙ۫ۦۙۜۚۖۖۦۗ" : "۟ۜۥۘۡۜۖۛۖۨۘۢۧۜۗۜۘۜۧ۠ۜۦ۬ۚ۟ۧۢۜۜۘۗۚ۟";
                                            break;
                                        case 562479046:
                                            str7 = "ۙۛ۟ۢۜۘۘۥۢۘ۫۟ۡۡ۠ۥۘ۟ۖۧۘۤۙۥۘۚۙۡ۫ۚۖۘۨۤ۠ۜۨ۫ۦۘۘۨۡۘۥۢۢۧۦۧ۫ۙ۫";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1321567313:
                    str = "ۨۙۢۡ۟ۗۘ۬۠ۤۖۚۖۘۖۘۦ۟ۡۛۗۧۛۘۥۛۥۦۚۢ";
                    i3 = i;
                    continue;
                case 1847752612:
                    layoutParams.format = 1;
                    str = "ۥۙۥۘۤۧۧ۫ۡۘۘۤۡ۠ۥۖۚ۬ۢ۠۠ۛۜۘۤۧۜ۟ۘۘۛۦ۫۟ۙۘۙ۟۠ۙۤۚۜۗ۬ۖ۠ۧۗۨۗ";
                    continue;
                case 1858357995:
                    layoutParams.x = w3.OooOoo0(getContext()).x - this.Ooooooo.getLayoutParams().width;
                    str = "ۧۧ۬ۜۜۧۘۥۢۡۘۘ۫ۜۘ۫ۚۖۘۙ۟۟ۨ۟ۤ۟ۤۖ۠۫۠ۢۖ";
                    continue;
                case 1887043168:
                    str = "۠ۨۘۜۤ۟ۗۜۘۧ۫ۡۢ۟ۛۨۦۜۘۦ۟ۡۘۛ۫ۘۘۚۡۖۘۗ۠ۘۘۘ۬ۗۖۛۨۘۙۡۘ۫۬ۨ";
                    i5 = Build.VERSION.SDK_INT;
                    continue;
                case 1992431378:
                    this.OoooOoo.y = w3.OooOoo0(getContext()).y / 4;
                    str = "ۜۧۧۜۜۖۜۥۘۘۙۥۜ۟ۡۚۦۨۥۘۖۜۡۘۘۡۗۚۡۘ۫۠ۚۗۘۛۦۦۧۘۤ۬ۨۧۛۧ";
                    continue;
                case 2140448463:
                    str = "ۗۙۚ۟ۡۚ۫ۡۦۥۚۙۚۜ۠ۜۡۥۡۤۨۨ۟ۖۗۘۙۡ۫ۗۡۤۡ۟ۙۡۘ۫۠۫ۡۡ۠۬ۥۜۛۥۨ";
                    layoutParams = new WindowManager.LayoutParams();
                    continue;
            }
            str = "ۤۥۡۘۜۢۥ۠ۡۧۘۛۚۥۤۡۚ۟ۚۖۡۘۥۦۡۡۘۨ۠۬ۦ۟۟ۛ۫ۤۧۙۖۘ";
        }
    }

    public static /* synthetic */ boolean Oooo000(ElfinFloatView elfinFloatView, boolean z) {
        String str = "ۢۢۚۨۢۚ۬ۛۗۧۘۥۘۚۡۨۘۡ۬ۨۘۥۙۥۘ۠ۘ۬۬ۘۧۘ۬۠ۘۘ۫ۤۚ۬ۖ۟ۦۡۨ۠۬ۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 811) ^ 858) ^ 676) ^ 1442186282) {
                case -1062110690:
                    elfinFloatView.o0Oo0oo = z;
                    str = "ۛ۫ۥۘۦۙۙۡۤۥ۠ۧۢۨۥۢۙۛۚۥۢۤۙۛۦۘۘۧۛۖۨۚۤۨۥۘ۟۠ۗۛۙ۫ۘ۠ۙۗۤۚۥ۫ۘ";
                    break;
                case -909927106:
                    str = "۟ۦۤۢ۬۟ۚۚۥۘۖۘۜۘۦۛۗۘۜۤۦۧۜ۫ۛۥۢ۠ۙ۟ۦۨۧۤۧۧۧۛۢۨۜۘۦۧۦۙۛۨۥۦۖۘۖ۠ۤۜ۫ۥۘ";
                    break;
                case 488294431:
                    return z;
                case 992725121:
                    str = "ۦۘۧۘۧۚۗۙۦ۬۠۠ۖۜۘ۫ۖۤۨۖۤ۠ۜۖۘۤۧۖ۠ۡۜۘ";
                    break;
            }
        }
    }

    private void Oooo00O(boolean z) {
        boolean zIsScriptStarted = false;
        int i = 0;
        j7 j7VarOooO0O0 = null;
        String str = null;
        boolean zIsScriptStarted2 = false;
        int i2 = 0;
        j7 j7VarOooO0O02 = null;
        String str2 = null;
        j7 j7Var = null;
        int i3 = 0;
        String str3 = null;
        String str4 = "ۗۖۗۛۤۖۘۦۡۧۘ۫۠ۨۘ۟ۚۨۘۡ۟ۘۦ۠ۚۤۡۧ۫۠ۨۜ۬۟";
        while (true) {
            switch ((((str4.hashCode() ^ 503) ^ 960) ^ 492) ^ (-1387530129)) {
                case -2126406527:
                    String str5 = "ۦۖۖۦۥۦۖ۫ۖۙ۟ۘۦ۫ۥۘۦۖ۟ۨۥۡۘۘ۟ۘۦۘۖ۫ۡۥ۬۟۠ۤۤۜۗۢۛ۠ۦۖۙۗۢ۠ۡۢۗۢ۟ۗۥ";
                    while (true) {
                        switch (str5.hashCode() ^ 445145657) {
                            case 226537690:
                                str4 = "ۚۘۢۥۗۤ۬ۦۤ۠۫ۚۧ۟ۖۦۙۢ۟ۜۧۗۜۨ۠ۡۘ۫ۦۙۗۗۦۘ۟ۢۡۘ۬ۘۘۘۡۥۡۘ";
                                continue;
                            case 865309640:
                                str5 = "ۙۧۛۦۜۨۛۨۖۘ۫ۢۨۘۥۡ۫ۚ۫ۦ۫ۗۖۘۤۡۘ۬ۖۜۘۖ۠ۙۧۚ۟ۛ۬ۢ";
                                break;
                            case 1323348074:
                                String str6 = "ۛۡۡۘۘۚۦۘ۟ۚ۟ۙۧۜۘ۬۟ۖۘ۠۬ۖۘۙۘۧۚ۬ۢۦۗۜۖ۟ۥۢۧۥ۫ۚۙ";
                                while (true) {
                                    switch (str6.hashCode() ^ (-110709899)) {
                                        case -1528491782:
                                            str5 = "۟ۡۖۘۡۖۖۘ۫ۥۙۛۤ۬ۗۨۜۤۦۗ۟ۤ۫ۗۘۥۘۙۡۡۘۥ۫ۥۘۤۖۨۘ۬۟ۥۘ";
                                            break;
                                        case -552427857:
                                            str6 = "ۗۥۗۥۛۨ۫ۛ۫ۘۧۛۚۗۦۧ۠ۨۙۖ۟ۧ۬ۡۨ۬ۡۥۗۤ";
                                            break;
                                        case 115676292:
                                            str5 = "ۖۤ۬ۘۖ۫۬ۙۧۢۢ۠ۧۢۥۘۧۙۦ۟ۜۨۘ۟ۚۜۡ۫ۡۘۘۙۨ";
                                            break;
                                        case 1019832918:
                                            str6 = !t4.OooOO0(getContext()) ? "ۤۧ۟ۨۢۜۘۢ۠ۤۗۦۘۚۦۡۡۢۥۤۤ۟۬ۚۡۧۡۡۘۨۤۘۥۡۦۚۖۥۧۚۦۨ۫ۛۛۜۘ۫ۜ۫" : "ۜۨۘ۠ۚۗۚۘ۫ۘۜۨۘۘ۬ۡۛۛۘۙۨۥۙۦۤۗ۫۬۬ۦۧۗۜ۫ۜۡۘۙۤ۬۫۫ۘۘۨۘ۟ۢۥ۠";
                                            break;
                                    }
                                }
                                break;
                            case 1593288475:
                                str4 = "۬۫ۜ۠ۢۙۢ۟ۥۘۚۘ۠ۖۥۨۨ۫ۘۧۡۦۖۜۜۜۦۛۤۖۘ";
                                continue;
                        }
                    }
                    break;
                case -1835587704:
                    zIsScriptStarted2 = MqRunner.getInstance().isScriptStarted();
                    str4 = "ۢۤۦۘۚۤۡۘۛۤۤۤۢۘۘۖ۫ۘۘ۬ۚۜ۠ۨۡۘۛۦ۬ۙۨۦۤۚۡ۟ۚ۟ۥۧۦۘ۠ۢۖۘ";
                    break;
                case -1697097194:
                case 673401202:
                case 1771937616:
                    return;
                case -1627969930:
                case 393579011:
                    str4 = "ۖۛۡۛ۫ۡۦ۠۟۬ۚۜۘۛۛۤۧ۫۟ۛۘۛۧ۫۫ۖۜۤۤ۠ۘۗۘ۬ۗۥۧ";
                    break;
                case -1597311019:
                    str4 = "ۚۙۘۨۖۗۛۥۛۚ۫ۦۘۘۘۥۡۨۢۖ۫ۙۤۤۨۗۡۜۘ۠ۖۢۡۤۦۥۗۛۥ۬ۥۧۖۥ۟۟ۖۘۦۨۧۘۥۖۡۘ";
                    break;
                case -1384870013:
                    str4 = "ۘۖۢۧۨۘۘ۟ۖۗۙۡۖ۬ۢ۟ۧ۟ۨۧۙۡۤۛ۬ۙۤۖۘۜۦۡۘۙ۫ۨۘۗۨۦۗۢ۫ۘۘ";
                    str3 = str;
                    break;
                case -1174533416:
                    str = "脚本正在运行中……";
                    str4 = "۟۫ۖۢ۠ۘۜۨۨۘۘۧۡۘۙۘۨۡۚۥۘ۟ۡۜۘۙۙ۠ۧۡۤۢۛۤۨ۫ۚ۬ۤۨۘۥۧۦۘۤۥ۫";
                    break;
                case -1095642714:
                    String str7 = "۟۬ۤ۠۠۠ۤۙۦۦۡۤۧۤۛۢۛ۠ۢۖۘ۟۬ۦۘۥۛۡۖۜۗ۫۠ۨۖۨۖۘۧۗۥ۬ۢۡۘۥ۠ۤۗۚۖۘۙ۬ۙۙۘ۟";
                    while (true) {
                        switch (str7.hashCode() ^ (-598960169)) {
                            case -2054740928:
                                str7 = "ۘ۠ۡۘۧۥۨۛۡۥ۬ۛ۫ۘۚۦۘۘۗۤۚۗۘۧۧۥۘ۫ۧۨۘۥۙ۬ۨۙ۬۬ۙ۠۠ۙۦۨ۟ۥۘ۠ۡۨۢ۟ۡۙۨۨ۬ۛۥۘ";
                                break;
                            case -1155972871:
                                String str8 = "ۚ۠ۤ۟ۚۥ۬ۛۡ۬ۖۡۘۚۥۤۥۦۨۘۚۜۥۤۖۛۡۜۦ۫۟ۥۚۛۖۦ۬ۙۢ۫ۤۖ";
                                while (true) {
                                    switch (str8.hashCode() ^ (-1951189005)) {
                                        case -1897111557:
                                            str8 = this.o0Oo0oo ? "ۡۘۨ۠ۙۘۘۢۗۖۘۘ۬ۧۗۙۛۨۡۥ۬ۡۥۘۜۘۚ۫۬ۖۘۘۤ۠۟ۥ۠ۜۤۨ" : "ۧ۟ۡۤۚۦۘۖۨ۠۠ۡۧۘۙۢۨۗۛۨۘۦۛۥۘۨۚۥۘ۫ۧ۫ۦ۬ۡۗۥ۫ۤۚۡۘۙۨۡۘ۫ۗۡۙۥۥۧۢۥ";
                                            break;
                                        case -1141277233:
                                            str7 = "ۚۛۚۚۙۦۘۤۢۤ۟۬ۜۘۜ۫ۥۘۘۗۥۘۡۡۙۘۧۦۘۛۤۥۗۖ۠ۥۧۧۦۧۡۘ";
                                            break;
                                        case -931680043:
                                            str8 = "ۡ۠ۚۚۗۡۙۤۧۦۡۢۥۦ۬ۗۘۥۖۡ۟ۖ۬ۜۙۤۧۡۖۘ۟ۙۚ۟ۚۖۘۨۢۖۘ۟ۢۥۘۗۧۗۛۙ";
                                            break;
                                        case 1928940512:
                                            str7 = "ۙ۬ۨۖۚۦۘۥۤۥۘ۠ۥۡۘۢۙۦۗ۫ۘۡ۫ۦۙۢۡۘۧ۬ۗۖۘۖۡۤۨۘ۠ۛ۬ۖۢۖۙۨ۫ۨ۠۬ۚۜۧ";
                                            break;
                                    }
                                }
                                break;
                            case -180513487:
                                str4 = "ۤۢ۠ۛۗۢۥۚۜۚۥۜۘ۫۠۟۟ۛ۫ۧ۟ۡۦۗۗۘۤۘۥۤۙۛۧۨ۟ۢ۫ۧ۠۫ۖ۠۬۟ۖ۬ۡۧۗۥۛ۫ۧۦ";
                                continue;
                            case 932318310:
                                str4 = "ۜۗۖۘۦۜۥۗ۟ۡۘۤۛۡۤۘۦ۬ۘۙۥۘۚۢۘۖۜۤۥ۠ۗ۬ۗۢۦۘ۫ۖ۫ۙۢۜۘ۬۟ۘ۬۠ۚۗۢۦۢۖۜۖۨۙ";
                                continue;
                        }
                    }
                    break;
                case -951525346:
                    String str9 = "ۘۡۛۙۗۨۘۗۛۤۜۗۚ۟ۥۘۥۥۙۘۗۦۘۦۖۦ۫ۦۦۘ۟ۧ۟۠۠ۘۘۦۖۢۘۢۥۢۥۢۛۢۖۘ۫ۧۨ";
                    while (true) {
                        switch (str9.hashCode() ^ 580707981) {
                            case -236704596:
                                str9 = "۬ۖۘۘۖ۟ۗ۟ۗۖۘۢۨۗۡۖ۠ۥۗۨۘۢ۟ۢۙۧۜۤۧ۫۠ۗۧۛۥۚۥۘ";
                                break;
                            case 1902953415:
                                str4 = "۠ۧۖۘۡ۠۟۟ۘ۠۫ۛۖ۬ۘ۫۠۟۬ۛۧۚۗۨۦۘۦۛۜۙ۫ۨ";
                                continue;
                            case 1956906165:
                                str4 = "ۢۢ۬ۦۜۤ۫ۦۤۗۥۡۧۥۦۜۖۘۡۥۡۛۡۙۗۙۖۢۧۥ۫۫ۚۨۘۘ";
                                continue;
                            case 2143651605:
                                String str10 = "ۨۦ۫ۖۤۛۘۙۨ۠ۗۡۘۨۖۙۡۛۜۘۥ۟ۥ۠ۛۡۨۚۧۙۧۖ۫ۚۥ۟ۜۚۨۜۥۦ۬ۜۢ۫ۤۗۢۤۜۘۘۖۨۘ";
                                while (true) {
                                    switch (str10.hashCode() ^ (-846270502)) {
                                        case -1102751148:
                                            str10 = z ? "ۤۘۢۘۦۧۘ۫ۚۙۢ۟ۖۘۛۙۡ۠ۡۧ۠ۦ۬۠ۖۙ۟ۖۘۗۙ۠ۡۖۢۖۦۡ" : "۬ۧۛۤۖۡۘۚۢۦۘۧ۠ۚۘۜۘۘۨۗ۫ۡۛۡۚۘۘۥۤۘۥۦۘۡ۠ۥۘۜۡۖۚۜۥ۠ۛۛۙۘۦۧۦۧۘۦۙۖۢۢۖۘ";
                                            break;
                                        case -418135835:
                                            str9 = "ۛۥۧۡ۟ۜ۠ۚۨۘۘ۫ۦ۟ۧۚۦۘۨۘۜۡۥۘۧۢۙۡ۠۬ۡۤۘۧۘ۠ۚۤۡ";
                                            break;
                                        case 335795015:
                                            str10 = "ۗۡۤۜۚۘۘۨۘۘۘۨۗۡ۫ۜۚۘۖۖۘۘۙ۠۟ۢ۟ۨۜ۫۟ۛۖۢۘۘ۠ۜۨۘ";
                                            break;
                                        case 476572245:
                                            str9 = "ۙۛۡۘ۫ۧۦۗۘۥ۫ۚۨۘۛ۬ۦۛۖۧۘۛۙۨۘۗۡۘۘۥ۫۟ۚۥ۠ۛ۟ۦۚۢۨۨۗۧ۫۫ۜۘۧ۟ۜۥۘ۟ۘ۬ۨۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -873909274:
                    zIsScriptStarted = MqRunner.getInstance().isScriptStarted();
                    str4 = "ۥۧۨۥۡۖۜۥۦ۟ۚۗۨۨ۟ۚۥۡۧۡۙ۬ۜۤۦۡ۠ۤ۬";
                    break;
                case -796468710:
                    j7VarOooO0O02 = j7.OooO0O0();
                    str4 = "ۦۘۡۡۧۢۤۨ۠ۗ۫ۢۥۥۙۙۨۧۢۙۡۡۖۗۦۡۘۗۖۥۘ۫۟ۤۡۨۗ";
                    break;
                case -795522983:
                    String str11 = "ۤۧۥۘ۠ۧۖ۠۠ۧ۫۬ۦۘۨۛ۟ۘۜۧۘ۫ۦۛۤۘۦۘ۬ۛۖ۬۫ۗۥۢۜۡۗۡ۫ۥۨۘۥ۬ۤ";
                    while (true) {
                        switch (str11.hashCode() ^ (-960161769)) {
                            case -1944349288:
                                str4 = "ۗۥۖۘۨۢۥۘۢۙۤۗۘۛۡۦۨۨۡۡ۟۬ۜۙ۫ۘ۬۫۟ۘۚ۟ۛۚ۠ۚۛ۟ۨۖۖۦۢ۬";
                                continue;
                            case -1479945004:
                                str4 = "ۨ۬ۘۖۨۛ۟ۚۡۘۦۙۚۥۘ۫۬ۥ۠۫۟۫۬ۜۘۢۥۥۘ۟۟۬ۘۤۘ۟۟ۗۖۖۜۘۦ۫ۛ۟ۜۦۘۗۥۛۜۨۛۜۖۖ";
                                continue;
                            case 345850119:
                                String str12 = "ۘۚۛۥۦۡۨۦۘۙۛۢۡۛۦۗ۠۠ۖۜۡۗۤۡۧ۫ۖ۫ۢۢ۫ۥۨ۫ۘ";
                                while (true) {
                                    switch (str12.hashCode() ^ 395863941) {
                                        case -1519260089:
                                            str11 = "ۜۡۦۙۦۧۘ۟ۢۜ۫ۜۡ۬ۨۘۘۥۥۛ۫ۨۦۘۥ۟ۖۗ۠ۦۘۚۤ۬";
                                            break;
                                        case -1432282166:
                                            str12 = "ۧۢۨۚۖۢۛ۟ۜۨۜۨۘۧۨۦۘۢۧۚۗۦۘۤۗۗ۠ۙۧۚۧ۠ۛۧۨۗ";
                                            break;
                                        case -1195669793:
                                            str11 = "۟ۛۘۙۛۖۘۘۖ۠ۗۙۛۜۛۛۦۥ۫۫ۜۚۘۨۚۧۥۘۚۖۨۦۡ۫۫ۖ۟";
                                            break;
                                        case -655163340:
                                            str12 = zIsScriptStarted ? "ۥۧۨۦۙۗۜۥۨۖۘۘ۫ۙ۫ۚۛ۠ۘۖۦۖ۠ۘۘۦۡۢۗ۟ۖۘۗۢۥۙۨۛۥ۟ۡۘۙۨۢۘۛۢۘۚۖ" : "ۦۖۥۘۦۢۖۧۦ۬ۨۢۤ۟ۜۜ۬ۨۜۘ۟۟ۨۧۛۧۥ۠ۥۤۡۜۘۡۘۛۡۜۧۘۧۖ۠ۘۨۦۘۘۜۖۛۚۜۨۤۥۘ۟ۤۙ";
                                            break;
                                    }
                                }
                                break;
                            case 1331149961:
                                str11 = "ۧۜۧۗ۬ۦۘۥۘ۟۬۬۠ۢۢۛۢۢۘۘۧۜ۬ۨۢ۠۬ۖۢۤۘ";
                                break;
                        }
                    }
                    break;
                case -420790796:
                    j7.OooO0O0().OooO0oO(6, 1002, "脚本停止运行！");
                    str4 = "ۧۙۧۛۜۥۘۧۜۖۘۙۗ۠ۡۢۖۘۘۦۚۦۙۢۘۢۦۡۜۧۢ۬ۙ";
                    break;
                case -385720734:
                    str4 = "۟ۘۧۖۧۜۚۗۖۖۘۗۜۨۘۡۚۛۚۖۡۢ۬ۧۤۢ۟ۢۚۚۜۗۘۖۢۡۧ۬ۧۢۢۘۘ";
                    j7Var = j7VarOooO0O02;
                    break;
                case -315620908:
                    str4 = "ۧ۟ۤۛۢ۬ۚۧۥۡۙۡ۠ۧۛۤۥۚۥ۠۬ۗۤ۬ۗۗۛۖۧۥۜۘۜۙۧۡ۟ۖۘۨ۫ۥ۫ۡ۟۫ۚۖۘۢ۠۫ۗۢۚ";
                    j7Var = j7VarOooO0O0;
                    break;
                case -292425661:
                    h7.OooO0o0(new OooOo00(this));
                    str4 = "۟ۛۚۗۙۨۘۨۤۢۤۚ۬۫ۤۙ۫ۚۛۢۡۤۥ۬۠۫۫ۙ۬ۗۦۘۚۗۛۚ۠۟ۥۦۛۡ۬ۖ";
                    break;
                case -153675256:
                    j7Var.OooO0oO(5, i3, str3);
                    str4 = "ۖۛۡۛ۫ۡۦ۠۟۬ۚۜۘۛۛۤۧ۫۟ۛۘۛۧ۫۫ۖۜۤۤ۠ۘۗۘ۬ۗۥۧ";
                    break;
                case -67875952:
                    str4 = "ۛۖۥۘۙۚۙۤۢۦۘۙۚۡۥۘ۟۬ۘۘۘۦۛۡۖۖ۫ۦۘ۟ۜۜۘ";
                    str3 = str2;
                    break;
                case -55281209:
                    c5.OooO0OO(getContext(), getContext().getString(R.string.network_off));
                    str4 = "ۡۘۘۘۜۥۨۙۚۛۗۖۘۥ۠ۛۘۥۚۛۘۨۘۜ۟ۖۚۗۛۘ۠۟۫ۗۚۧۘۛۨۥ۠ۥۛۘۘۛۜۧۘ۬ۡۘۘۗۗۖۘۧۛ۬";
                    break;
                case -18218653:
                    j7.OooO0O0().OooO0oO(5, 1001, getContext().getString(R.string.network_off));
                    str4 = "۠۬ۨۙۖۜۘۛۘۙ۬۬ۦۘ۠ۚ۟ۙۦۖۘ۟۬ۜ۟ۜۧۢۘ۟ۜ۟ۚ";
                    break;
                case 256429609:
                    this.o0Oo0oo = false;
                    str4 = "ۗ۫ۦۙ۟ۡۖۧۤۖۤۡۘۛۢۦۘۘ۬۬۠ۚۜۘۚۢۧۖ۠ۛ۬ۥۦ۠ۖۨۥۧ۫۫ۤۤۙ۟ۦ۟ۤۥۖۗۡۘ";
                    break;
                case 519400687:
                    str4 = "۟ۛۨۘ۠۠۠ۘۥۜۚۨ۠۠ۖ۟ۢۧۡۜۚۧۙۗۛ۫ۗ۬ۤۢ";
                    i3 = i;
                    break;
                case 660681423:
                    i2 = 1002;
                    str4 = "ۜۥۖۘۙۢۦۘ۟ۖۦۘۢ۬ۘۘ۠۟ۜۘۨ۬ۡۘۡۡۛۜ۟ۡۘۗۚ۟ۘۧۡۢۚۜۘۦۚ۬";
                    break;
                case 741980889:
                    this.o0Oo0oo = false;
                    str4 = "ۜۗ۬۟ۜ۠ۙۜۨۨۥۧۘ۬۫ۗۜۙۗۨۥۖۘۦ۠ۗۢۡۖۤ۠ۖۤۛۨۘۧۘۖ";
                    break;
                case 753001133:
                    str2 = "脚本未在运行状态！";
                    str4 = "ۡۡ۠ۧۛ۟ۛۛۦۘۨۚ۫ۚۨۥ۫ۨۨۛ۬ۙۧۘۨۧۥۜۡۘ";
                    break;
                case 988204742:
                    str4 = "ۛۖۥۘۙۚۙۤۢۦۘۙۚۡۥۘ۟۬ۘۘۘۦۛۡۖۖ۫ۦۘ۟ۜۜۘ";
                    break;
                case 1435980476:
                    String str13 = "ۡۦۥۙۖ۫ۜۙۦۘۘۢۛۖۗۘۢۙۤۤ۟ۖۘۥۥ۫۠ۦ۟ۙۖۨ۟۠ۡۘۙۧ۠ۜۖۡۦۖ۠";
                    while (true) {
                        switch (str13.hashCode() ^ (-207495903)) {
                            case -973133492:
                                String str14 = "ۗۜۘۘ۫ۙۛۢۖۚۡۡۙ۫ۙۛۦۧۖۘۖۙۧۚ۠ۘۜۢۢۘۢۨۘ۠ۤۡۘۖۧۜۘ";
                                while (true) {
                                    switch (str14.hashCode() ^ (-956186985)) {
                                        case -1592036466:
                                            str14 = "ۛۧۡۘۙۜۜۘ۠ۜۗ۬ۗ۟ۘ۬ۥۘۗۗۨۜۧۢۧۦۜۘۤۜۨۘ۬ۖۧ۫۫ۘۘۙۡۥۘۤۧۧ۬۬ۘۘۛۥۖۢۤۙ";
                                            break;
                                        case -1332402836:
                                            str14 = zIsScriptStarted2 ? "ۦۨۤۡۗۖۘۨ۟۠ۨ۬۟۟ۨۘ۬ۥۘۖۛۗۘۖۖۘۗۦۥۘۢۛۥ۫ۚ۫۬ۛۖۙۦۛۘ۠ۖۘ" : "ۧۢۦۥۤۧۛۘۗ۫ۧ۟ۢۤۖۘۨۨۜۤۢۥۘۧۥۘۢۜۤۜۢۥۘ";
                                            break;
                                        case -702998981:
                                            str13 = "ۙۛۦ۫ۙۥۘۜۙۦۦۡۢۥ۬ۥۘ۫۠ۧۦۙۚۖۨۚۤۡۘۖۛ۟";
                                            break;
                                        case 1454739580:
                                            str13 = "ۛۗۡۚۜۘۘۙۧۥۧۦۘۜۙۥ۠۫۬ۡۢۦۘۢۘۥ۠ۢۜۘۥ۠ۢۤ۫ۧۨۘۘ۠ۜۦۘۨ";
                                            break;
                                    }
                                }
                                break;
                            case 1233737890:
                                str13 = "ۨۤۗۖۦۢ۬ۚۥۨۗۨۤۢۖۨۜۘ۬ۚۜۘۨۦ۬ۛۙۥۗۥۢ۬ۥۦۥۙۡ۠ۖ۬ۜۨۤۡۤۦۖ۬ۨۘۧۧۗۦۨۦۘ";
                                break;
                            case 1619929361:
                                str4 = "ۤۧۤۗ۬۫ۜۗۚۚۛۚۧۤۨۖۜۡۜۨۘ۬۬ۥۚ۟ۡۘۢۛۥۘ۫ۘۨۘۧۦۥۛۜۘۘۨۦۨۤۙ۟ۖ";
                                continue;
                            case 2070516404:
                                str4 = "ۢۥ۟۠۬ۗۥۜۤۧۤ۬ۥۧ۫ۚ۟ۧ۟ۛ۟ۚۙۨۘۙۚۨ۬ۥۗۧۨۦۖۜۖۘ";
                                continue;
                        }
                    }
                    break;
                case 1566910934:
                    str4 = "۠ۦۧۦ۟۬ۡۚۗۧۚۤ۟۠۫ۗۧ۟ۖۤ۬ۤۥۛۜۙۜۡ۬ۙۡۧۢ۫ۘۘ";
                    i3 = i2;
                    break;
                case 1679320258:
                    this.o0Oo0oo = true;
                    str4 = "ۘۗۘۛۘۙۘۛۢۡۛۗۡۡۗ۠۠ۛۧ۬ۤۡۦۤۦۘۢۨۨۚۤۜۖ۫۟ۛۧۛۡۤ۠ۜۚۤۚ۟ۡۜ";
                    break;
                case 1772446844:
                    j7VarOooO0O0 = j7.OooO0O0();
                    str4 = "ۨۘۚ۬ۦۙۖۡۥۧۖۤ۟ۚۘ۬۠ۙۥۗ۟۟ۦۨۨۙۗۤۖۘ";
                    break;
                case 1919676663:
                    str4 = "۠۠ۙۡ۟ۨۘۗۧ۠ۧۜۗۘۗ۟ۜۙۢۨۦۗ۬ۙۨۘ۠ۥۧۘۤۧۖۘۚۗۜۘۙۖ۫ۦ۠ۚ۫ۗ";
                    break;
                case 1947675928:
                    MqRunner.getInstance().stop();
                    str4 = "ۢۙۡۚۡۖ۫ۦ۬ۘ۠۟ۗۤ۠ۛۖ۫ۜۤۛۚ۫۬ۢۗ۬ۦۧ۟ۚ۟ۥۘۥۡۖۘ";
                    break;
                case 2031036826:
                    i = 1001;
                    str4 = "ۦۨۙۜۧۖۘ۬ۦۤۥۛۜۘۙۘۨۘ۬ۙۛۛۡۨۘۨۦۦۘۖۢۦۘۦۗۘۘۛ۠۟ۘۥ۬ۖۢۖۘۚۙۛ";
                    break;
            }
        }
    }

    private void Oooo0o0() {
        String str = "ۜۧۨ۬ۖ۫۬ۙۡۘۖۘ۠ۛۦۧۘۘۗ۠ۛ۟ۘۘۛ۫ۥۘۖۢ۫ۙۗۨۘۙۤۛۧۤ۬۠ۥ۠۬ۤۗۛ۟ۡۡۖۢۚۨۤۘۚۘ";
        while (true) {
            switch ((((str.hashCode() ^ 970) ^ 86) ^ 433) ^ 286762523) {
                case -1963200820:
                    ii.OooO0O0();
                    str = "ۦۗۚ۫ۦۤۦ۠ۧۦۤۥۥۖۖۘۜۗۥۘۨۚۖۘۡۖۘۙ۬ۥۘۦۢۨۦۙۗۧۤۦۘۘ۠ۦۘۘ۟ۗۡۤۛۨۖ۫ۦۦۛۧ۟ۘۘ";
                    break;
                case -1881395344:
                    l10.OooO0o().OooOoO0(this);
                    str = "ۖۙۖۘۡۖۛۧۚۥۘۛۨ۠ۗ۫ۘۘۤۙۢ۠ۙۡۘ۟ۖۚ۬ۖ۫ۚۚۧۛ۠ۥۘۘۙۦۘۢۦ۫ۙۥ۠";
                    break;
                case -1490918096:
                    return;
                case -1216086074:
                    String str2 = "ۜۜۛۛۥۖۙۛۨ۟۬ۦۘۥۖۧ۫ۤۜۘۥۘ۟۬ۙۖۘۗۥۛۡ۫ۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1154466254) {
                            case 665143716:
                                String str3 = "ۛۗۛۢۙۗۙۙۛۡ۫ۢۛۖۥۚۢۡۤ۟۫ۗۨۘۜۘۜ۫ۜۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1965003391)) {
                                        case -1703964949:
                                            str2 = "ۢۦۗۚۧ۟ۡۥۨۡۖۢۖۛ۫۬ۚۤۨ۬۫ۜۖۘۧۛۦ۬";
                                            break;
                                        case -681202242:
                                            str3 = "ۗ۠ۜ۠ۙۖ۟ۥۜۘۥۨۘۙۖۨۖۗۡۘۡ۫ۧۧ۠۟ۤۜۡۡۚۚ۬ۗۚۖۜۧۧۨۛۚۡۘۙۢۨۥ۬ۙۖۘۖۙ";
                                            break;
                                        case 986790909:
                                            str2 = "۠ۨۧۘ۫ۙۘۘ۟ۥۖۧ۠ۜۘ۫ۡۘۘ۠ۡۘۘ۟ۤۦۘۡۨۛۥۚۥۘۢۙۡۥۦۛۛ۫ۗۨۥۘۗۦۤۥ۫ۡۘ۟ۛ۫";
                                            break;
                                        case 1494401386:
                                            str3 = i7.OooO().OooOOO() ? "ۚ۬ۘۤۨۢۚۨۡۘۛۜۘۚۜۥۘۧۙۛۛۢۜۘۤ۫ۨۘۡۛۜۘۚ۟ۜۘۧۘۨۨ۟ۜۘۥ۬ۖۥۛۙ۫ۘۖۘ۫ۨ" : "ۦ۠ۡۤۧۜۧ۬ۦ۬ۤۡۘۚۤۛۡۧۥۘ۬ۗ۠ۙۗ۟ۜ۬ۖۘۚۚۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 717786909:
                                str = "ۚۤۛ۬ۨۖۘۗۧۚۤ۠ۘۢۡۘۚۛۡۢۜۥۘۘ۫ۙۚ۫ۖۢ۫ۦۘۖۤۖۘۡۥ۬ۘۧۗۢ۬ۨ۟ۜۘۘۗ۫ۢۦۡۡۚۚۢ";
                                continue;
                            case 1313660703:
                                str2 = "ۗۘۥ۠ۢۥۘ۟ۗۖۘۜ۠ۢۖۤۜۘۧۨۢ۟۫ۖۘ۬ۧۨۘۢۚۡ۬ۤۜۘۜ۠ۦۘۧ۠ۧۨۖۨۘۤۨۧۘ";
                                break;
                            case 1765318535:
                                str = "ۡ۫ۧۤۛۙۖ۟ۗ۠ۚۥۙ۬ۢۢۥ۬۫ۜۘۨ۠ۛ۠ۦۚ۟ۦۨۦۨ۟ۤۜۘۘ";
                                continue;
                        }
                    }
                    break;
                case -1121367999:
                    this.Ooooo00.unregisterReceiver(this.o00000Oo);
                    str = "ۤ۟ۡۗۦۥۘۗۨۜۥۗۘۘۤۡۢۤۘۘۡۜۦۦۙۦۙۦۜۘۤۢۥۢۡۨۘۦ۬ۙ۟ۘۜۘۚ۫ۜۛ۟ۖۖۦۧ";
                    break;
                case -1064206073:
                    ii.OooOo0O(getContext());
                    str = "ۢۛ۬۟ۖۜۘۙ۫۬۠ۦۘۨۦ۟ۢۛۜۘ۫ۤۥۘۨۛۙۛۧۗۜۦۘۘۢۚ۟ۧ۟ۦ";
                    break;
                case -917702692:
                    str = "ۘ۫ۙۤۢۧۙۗۦ۠۬۫ۙۛ۬ۤۘۨ۠ۖۦۦۦ۠ۧۖۖۘۗۤۖۘۤۚۗۦۤۦۘ۠ۨۜۘۚۡۘ";
                    break;
                case -516409649:
                    y8.OooOO0O();
                    str = "ۢ۬ۜۢ۬۠ۢۗۜ۫ۧۜۘۥۢۢ۫ۙ۫۫ۗۙۚۦ۠ۨ۫ۢۖۡۢۦ۫۫ۚ";
                    break;
                case -234870280:
                    i7.OooO().Oooo0o0();
                    str = "ۡ۫ۧۤۛۙۖ۟ۗ۠ۚۥۙ۬ۢۢۥ۬۫ۜۘۨ۠ۛ۠ۦۚ۟ۦۨۦۨ۟ۤۜۘۘ";
                    break;
                case 653241074:
                    Process.killProcess(Process.myPid());
                    str = "ۜ۫ۚۤۘۧۦۦۘۘ۟۟ۙۜ۫۫ۜ۬ۜ۬ۙ۫ۢۡ۫ۨۨۗۜۤۢ۫ۨ۟ۢ۠ۖۜۖ۫ۢۖۡۖۤۦۘۖۘ";
                    break;
                case 698592623:
                    this.Ooooo00.unregisterComponentCallbacks(this.o000OOo);
                    str = "ۗۘۛۤۙۡۧۦۛۖۥۘۦۢۡۘ۟ۦۥۙۢۦۘۜ۠۬ۖ۬۫ۜۘۛۧ۬ۜۗ۫ۢ۬ۦ۟ۜۨۨۘۗۨۦۘۙۢ۠۠ۛۧۥۘۛ";
                    break;
                case 1455549798:
                    this.o0OO00O.removeCallbacksAndMessages(null);
                    str = "ۥۚۛۛۖۙۦۙۤۜۙۦۘۡ۫ۥۘ۬ۘۘۢۤ۠۬ۗۤۦۖۤۙۖۧۘۥۡۖ۟ۗ۫ۛۛۨۘۚۥۥۥۡۥۜۙ۬";
                    break;
            }
        }
    }

    private void Oooo0oO() {
        String str = "ۗ۠ۢ۫ۖۖۘ۟ۡۧۘ۠ۨۢۨۦۦۘ۟۬ۥۡۗۤۙۧۗ۠۠۟ۧۧۜۗۦۘ۫۬ۦۘۡ۟ۥۛ۟ۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 350) ^ 395) ^ 465) ^ (-1726839205)) {
                case -2117987942:
                    this.OoooooO.setOnTouchListener(this.o00000);
                    str = "ۨۚۥۘۦۛ۬ۜۛۖۘۗۧۛۥۜۨۘۡۤۨۘ۠ۤ۟ۥۨۥۡۨۛۙۖۜۜ۫۟ۨۖۚۛۡۘۖۢۘۘ";
                    break;
                case -973020884:
                    Oooo0();
                    str = "ۤۘۖۡۢ۫ۗۖۛۘۘ۬ۤۨۘۢ۟ۥۘۖۨ۬۠ۤ۬ۛ۫ۤۛۚۚۧۦۡۙۢۛ";
                    break;
                case -526037227:
                    str = "ۗ۬۬۬ۛۦۡ۫ۡ۠۬۠ۜ۟ۖۗۖۢۛۥۘۧ۟ۛ۫۟ۖۛ۠ۥ";
                    break;
                case 520724161:
                    return;
                case 1408152703:
                    this.OoooooO = (ImageView) findViewById(R.id.floatview_elfin_imageview_elfin);
                    str = "ۡۦۙۢ۬۬ۨۦۘۦ۟ۛ۫ۢۢۖۜۚ۠ۦۘۘۢۙ۬۫۟ۖۦۨۘۘۖ۟ۜۚۜۘ۟۫ۚ۠ۛۥ";
                    break;
                case 1844439534:
                    this.OoooooO.setOnClickListener(null);
                    str = "۫ۚۘۘۘۨۧۘۧۧۢۖۥۗۢۜ۠ۘۖۜۖۖۜۛۢۘۘ۬ۦۜۘۥۖۡۘۜ۟ۛۜۙۖۘۨۗۖۘ۠ۘۡۘۗۙۡۘ۠ۖۖ۠۠ۚۡۜۗ";
                    break;
            }
        }
    }

    private void Oooo0oo() {
        String str = "ۡ۠ۚ۠ۡۙ۟ۤۥۘ۠۫ۘۗۡۘۘۧۦۨۦ۫ۙ۟ۤۡۥۜۤۤۤۚ۬ۖۙۚۗۖۘ۬۬ۛۨۧۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 484) ^ UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE) ^ b.by) ^ (-1554863001)) {
                case -1708322122:
                    findViewById(R.id.floatview_linearlayout_exit).setOnClickListener(this);
                    str = "۫ۤۚ۠ۧۛۤ۠ۗۥۨۡۘۚۤۚۚۨۡۘۦۢۘۘۥۧۘۤۡۤۜۖۥۥۖۗۙ۫۠";
                    break;
                case -1317883093:
                    this.o00oO0O = (TextView) findViewById(R.id.id_tv_setting_and_stop);
                    str = "ۜۙۢۘۢۚ۠ۧۥۘۦۦ۬ۥۙۘۧۢۥۘۜۥۡۢۨ۟ۦۡۤۗۥۧۘۚ۠ۥۘۗۤۚۛۗۖۧۙ۬۟۟۟ۡ۟ۨ";
                    break;
                case -1298128088:
                    this.o00O0O.setOnClickListener(this);
                    str = "ۜ۟ۘۘۗ۠ۜۧۖۖۘ۠ۙۥۘۢۛۦۖۨۧۘۢۛ۬ۤۚۦۥ۠ۜۡۛ";
                    break;
                case -1203396369:
                    this.ooOO = (LinearLayout) findViewById(R.id.floatview_linearlayout_run);
                    str = "۠۫ۡۘۘۢۚۡۨۖۦۖۜۘۙۢۤۛۖۗۦ۬ۧۖ۬ۗۚ۬ۧۖ۟ۧۥۘۘ۠۫ۨۜۡۤۡۜۖۘۦۖۥۘۘۥۨۘ";
                    break;
                case -959101791:
                    this.oo000o = (TextView) findViewById(R.id.id_tv_run_and_pause);
                    str = "ۦ۬ۥۘ۫ۧۜۘۨۦ۫۠ۨۙۖ۫ۚۨۛۚۛۥۚ۬ۥۦۘۢۦۛ۫ۖۘۤۜۜۧۨۜۘۛ۟۬ۡۥۨۘ۫ۧۨۘۚۜۡۚۧۘۘۜۡۘ";
                    break;
                case -841688283:
                    this.o00O0O = (LinearLayout) findViewById(R.id.floatview_linearlayout_info);
                    str = "ۖۧۥۚ۬۠ۜۖۚ۠ۨۧۘ۟ۙ۬۟۫ۦۚ۬ۨۛ۬ۗ۬ۧۥۘۘۤۘۘۢ۠ۛۡۥۙ";
                    break;
                case -719023968:
                    this.o00oO0o = (ImageView) findViewById(R.id.floatview_imageview_run_and_pause);
                    str = "ۤۨۨۘۨ۟ۘۘۘۡۡۘۚۢۤۧۗۢۢۙۙۛۨۜۜ۫ۗۛۧ۟ۤۖۡۘۛۜۗۜ۟ۚ";
                    break;
                case -572334501:
                    Oooo0oO();
                    str = "ۤۖۛۗۖۨۘ۫ۛۜۧ۫ۜۘۥ۠ۨۘۤۗ۬ۥۧۜۘۙۢۡۘۛۢۨۤۦۖۨۨۖۜۢ۬۬ۖۧ۫ۡۥۘۗۡۢۚۗۚۙۤۜۤۙۦۘ";
                    break;
                case -571481301:
                    this.o0ooOO0 = (ImageView) findViewById(R.id.floatview_imageview_setting);
                    str = "ۥۢۥ۠ۛ۠ۡۨۨۘۦۡۜۘۧۚۡۘۤۧۡۢۦۛۖۗۘۘۨۗۦۘۡۖۛ";
                    break;
                case -343265115:
                    LayoutInflater.from(getContext()).inflate(R.layout.floatview_elfin, this);
                    str = "ۤۙۗ۬ۥ۠۫ۘۛۚۘۧۘۡۘۢ۟ۗۘۖۧۜۘۚۥۜ۬ۤۘۘۥۧۘۘ۠ۨۘۥۗۢ";
                    break;
                case 137622361:
                    this.Ooooooo = (LinearLayout) findViewById(R.id.floatview_elfin_liearlayout_elfin);
                    str = "ۚۤۖۘۧۗۛۙۧۘۘۜۢۗۧۗۖۡۦ۟ۘۦۤۢۨۨۨۖۢۤۧۤ";
                    break;
                case 1382745561:
                    this.o0OoOo0 = (LinearLayout) findViewById(R.id.floatview_elfin_liearlayout_tools);
                    str = "ۦ۬ۚۤۥۘۦۜۨۘۖۗۜۦۚۦۘۙۚۙۜ۟۬ۧ۫ۙۚۥۢ۠ۜۥۘۥ۠ۥۘ۫ۚۨۘ";
                    break;
                case 1544640704:
                    return;
                case 1692810384:
                    str = "ۗۛۤۢۘۡ۫ۤ۫ۘۥۖۘۤۙۛ۫۫ۨۛۚۛۥۛۧ۠ۜۢۛۤۡ۟ۢۨۤۤۨۗۖۜۘ۬ۖۜۨۜ۟ۤ۬۫";
                    break;
                case 1841551955:
                    this.o00Oo0.setOnClickListener(this);
                    str = "ۜۥۦۦۨۥۤۙۚۦۡۘۨ۫۫ۘۢۨۘۧ۠ۙۥۥۨۘ۟ۤۨۘ۫ۜۨۨۛۗۘۚۡۘۧۥۜۘۘۨۘۘۜۡۡۘۤ۠ۧ";
                    break;
                case 1859646433:
                    this.o00Oo0 = (LinearLayout) findViewById(R.id.floatview_linearlayout_setting);
                    str = "ۗ۟ۚۚۚۜۜۧۨۨۧۦۘ۫ۛ۟۟ۖ۫۬ۨۗ۬۠ۙ۟۬۬ۘ۬ۡۢۛۤۖ۫ۖۘۡۚۜۘۚۚ۟";
                    break;
                case 2036351870:
                    this.ooOO.setOnClickListener(this);
                    str = "ۡۗ۬۬ۤۖۘۤۛ۠ۢۡ۟ۥۜۛۨۡۘۥۚۜۘۖ۬ۤ۫ۗۡۗۚۙۘۧۦۘ۟۫ۡۘ";
                    break;
            }
        }
    }

    private void OoooO0() {
        String str = "ۙۜۨۛۡۜ۠ۡۥۘۙۙۙۜۧ۠ۢۗۜۘۛۚۥ۟ۥ۟ۖۙ۟۬ۡۦۧۘ۠ۚۖ۬۟ۗۨ۬ۙ۬ۛۢۙ۠ۦۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 542) ^ 92) ^ 892) ^ (-931385288)) {
                case -1555236757:
                    String str2 = "ۚۥۡۘۙۗۙ۟ۖ۬ۘۧۜ۠۠۬ۗۛۖۘۨۜۛۢۙ۠ۛ۠ۧۨۧۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1598101868) {
                            case -1989736671:
                                str = "ۤۖۤۖۙۨۘۚۘۥ۟ۗ۬ۛۙۛۦۘۖ۟ۡ۫ۢۡۘۛۡۦ۟۠ۦۡۦۘۘۤۜۜۘ۟ۧ۠ۗ۠ۡ";
                                continue;
                            case -702962441:
                                str2 = "۬ۚ۫۠ۗ۟۬ۖۥۘۜۜۥ۟ۖۨۥۤۡ۫ۙۡۘۜ۟۟۟ۦۥۘۨۛ۟ۖۛۨۘۜۘۧ۬ۖۚۥۖۡ۫۬ۥۦۜ";
                                break;
                            case 1306442204:
                                String str3 = "ۜۨ۫ۛ۟ۗۛۨۡۗ۠۬ۡۗۦۢۤۤۖ۟ۗ۠ۧۜۘ۟ۧۧۥۨۜۖ۬ۦۘ۟ۘۦ";
                                while (true) {
                                    switch (str3.hashCode() ^ 383767439) {
                                        case -1971490656:
                                            str3 = this.o0OO00O.hasMessages(1000) ? "ۥ۫۟۟ۛۢۢۦۥۘ۬ۜۥۘۦۖ۫ۗ۟ۜۘۘۤۛۥۙۡۘۛۜۧۙۖ۠ۙۥۤۜۨۢۜ۫ۙۗ۫ۨۤ۠ۢۤۖۙ" : "ۦ۟ۢۤۖۙ۟۠ۘۘۡۘۡۘۚۦۥ۟ۛۡۘۖۤ۠ۚۨ۟ۘۦۥۘۥ۠ۙ۬ۢۨۦۨ۬ۥۥۘ۬ۖۖۚۡۚۡۦۦ";
                                            break;
                                        case -966309194:
                                            str2 = "ۢ۟۠ۚۙۖۘۢۤ۟ۤۡۧۘ۟ۙ۬۠ۙۜۘۨۚۙۦ۟ۘۘۡۨۦ۟ۡۚۗۖۡۘۢۧۚۨۛۖ۬۟ۢ۠۫ۜۨۦۥۚۨۡۘۢۧۖ";
                                            break;
                                        case 836041195:
                                            str2 = "ۥۖۘ۬ۘ۬ۚۢۨ۠ۜۧۘ۠ۧۨ۫۫۬ۧۜۨۗۨۜۘۚۧۧۢۚۢۢۛۡۤۖۦۘ";
                                            break;
                                        case 1430076391:
                                            str3 = "ۥۚۥۘ۠ۗۥۘۤۡۥۘۘۧۜۘۡۗۤۚۘۘۘ۫ۨۖۢۦۙۛۡۤۤۛۙۧۢ۬ۖ۬۟ۥۖۗ۫ۚۖ۟۬۟ۦۖۗ۟ۖۘۥۢۥۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1463434824:
                                str = "ۜۦۦۖۖ۬ۤ۫ۡۢۛۛۧۙۦۜ۬ۡۢۛۘۘۢ۟ۦۘۨۙۥ۟۟ۡۘۥۚۡۘۥۨۖۘ";
                                continue;
                        }
                    }
                    break;
                case -1359366175:
                    this.o0OO00O.removeMessages(1000);
                    str = "ۜۦۦۖۖ۬ۤ۫ۡۢۛۛۧۙۦۜ۬ۡۢۛۘۘۢ۟ۦۘۨۙۥ۟۟ۡۘۥۚۡۘۥۨۖۘ";
                    break;
                case -1053638703:
                    String str4 = "۬ۧۖۚۥۥۘ۠ۧۖۘۥۡۡۘۘۧۘۚۢۥۛۛۥۗۛۖۘۨۤۥۘۦۚۖۥ۬ۚ۠ۛ۠۠ۥۧ۠۬۠ۗ۟ۦۘۗۨۘۘۢۗۥۜۦۚ";
                    while (true) {
                        switch (str4.hashCode() ^ 41380175) {
                            case -1543399128:
                                str = "ۜۡۥۘۗۥۜۘۗۘۢۨ۫ۤۗۥۥۡۡۤۛۛۛۤۖۖۘۙۖۗۚۡۘ۟ۛۧۗ۟ۥۗۗ۫۫ۡۜ";
                                continue;
                            case -1034302345:
                                str = "ۦۘۥۘۧ۟ۥۘۖۛۦۧ۬ۢ۬ۚ۬ۙۧۦۘۦ۬ۘۖ۠ۘۘ۟۟ۜۗۘۘۘۧۗ۫ۦۡۛۥۛۦۢۢۤۙ۠ۖۜۗۦ";
                                continue;
                            case 1023679982:
                                str4 = "ۢۘۖۗۢ۬۬۫ۨۘۜۨۜ۫ۢۦۘ۠ۧۙ۫ۗۖۜۗۛۨۤۨۚۙۥۧ۟ۨۖۖۨۘ";
                                break;
                            case 1988005583:
                                String str5 = "ۖۤۥۖۧ۬ۤ۫۠ۛۤۛۜ۠ۦۘۚ۠۬۫ۤۜۙۢ۟ۡۡۡۨۧۘۙۧۢۗۛۢۤۜۧۛۢۜۘۢ۫ۘۘۡ۠ۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ 475750601) {
                                        case -30498066:
                                            str4 = "ۧۚۡۚۛۙۘۛۥۘۥۥۙۧ۟ۛۨۛۜۘ۬۬۬ۗۜۘۢۢۨۡۜۤ";
                                            break;
                                        case 1309176857:
                                            str5 = "ۢۖ۫ۘۜۖۘ۬ۚۜۢۧ۬۟ۤۛۛۥۥۜۨۢۙ۬ۨۘۢۤۢۙۜۢۜۛۘۦۤۡۘۡۛۥۡ۠ۛۥۖ۠ۚۜۘۘ۠ۥۘۗۨۜ";
                                            break;
                                        case 1346615165:
                                            str5 = AppContext.OooO00o().OooooO0 ? "ۗۡۨۘ۟ۖ۫ۥۜۛۦۖۖۢۥۦۧۜ۫۬۬ۙۥۧ۬ۤۙۦۘۧ۬ۜ" : "۫۟ۖۘۜۤۦۘۦۦ۬ۡۗۡۢۘۨۨۨۖۘۦۤۧۢ۬ۥۤۗۘۨ۠ۥۗۥۦۛ۫ۛۨۙۨ۟ۛ۫ۡۘۨۥۚ";
                                            break;
                                        case 1437807477:
                                            str4 = "ۛ۠ۦۘ۟ۢۥۖۡۢۖۡۜۘۥۦ۠ۤۧ۬ۚۜۥۖ۫ۨۘۨ۫ۨۖۡۡۙۖۘ۠۬ۘۗۤۡ۠ۡۙۤ۟ۘۘۦۨۚۛۥۥۘۜۜۡ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -869869150:
                    this.o0OO00O.removeMessages(1000);
                    str = "ۛ۟ۨۚۙۗۥۘۘۖۗۛۜ۫ۘۘ۟ۦۜۘۨۗۨ۟ۛ۫ۤۥۥۦ۠ۜۘ";
                    break;
                case -728708299:
                    str = "ۖ۬ۜۘ۬ۥۧۘۦۡۡۘۜ۫ۦ۠ۦۨۘۗ۫ۦۚۚۚۤۙۛۤۗۛۥ۟ۦ۟ۛۗۗۙۦۢۨۨۦۛ";
                    break;
                case -682647955:
                    return;
                case -569395736:
                    this.o0OO00O = new Oooo000(this, null);
                    str = "ۜۗۥۦۛۨۘۚۧۖۘۢۦۥ۟۫۬ۛۚۛۜۡۘ۫ۘۥۧ۫ۢۢۤ۠ۜۡ۬ۡۖۘۘۛ۬۠ۗۙۛۛ۬ۥۚۙۨ";
                    break;
                case -438740732:
                    String str6 = "ۥۡۛ۠ۗ۠ۖ۬ۥۘۛ۠۠ۗۘ۠۬ۢۙۥۘۙۨۧۘۚ۟۠۟۬ۦۢۨۖۢۧۡ";
                    while (true) {
                        switch (str6.hashCode() ^ 1827616221) {
                            case -1769884043:
                                str = "۫ۜ۬ۗۖ۫ۤۦۘۘ۫۫ۜۘۧۗۨۘۢ۫ۜۙۚ۠ۨۧ۠ۙ۟۫ۛۤۜۘۘۦۥۘۥۤۥۡۛ۟ۥۛۦۘۢ۫۫ۦۢۙۦ۠ۦۘۡۚۖۘ";
                                continue;
                            case -1303300170:
                                str6 = "۫ۨ۫ۖۛۥۘۨۥۛ۬ۥ۠ۤۢ۫ۢ۠۬۟ۚ۬ۥۘۡۦۘۘ۫ۤۜۖۥ۟ۢۥۜ۫۠ۖۘ۠۠ۨۘۧۥۥۘۥۨۖ";
                                break;
                            case 402122708:
                                String str7 = "۠ۤ۠۠ۛۦ۟ۗۙ۠ۙۨۘۘۥۖۘۘ۟۬ۡ۠ۦۘۗۡۜ۫۠ۥۘ۠ۙۙۘۡۧۘۥۦۧ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-954644661)) {
                                        case 230871153:
                                            str7 = this.o0OO00O == null ? "۫۬ۘۘ۟ۦۥۘۚۘۡۙ۠ۚ۬ۦۘۡۧۥۦۨۘۘۦۡۖۘۜۧۤۗۖۘۘۥۥۧ۫ۢۜ۟ۡۘۙۢۖ" : "۫ۙۤۛۡۖۙۥۖۘۧۧۘۘۗۚۖۤۚۥۨ۠ۛۦ۫ۢۧۗ۫ۧۨۗۚۨۖۢۨ۫ۤ۫ۛ۠ۡ";
                                            break;
                                        case 285243401:
                                            str7 = "ۗ۬ۦۛۖۤۜۨۧۥۙۖۧۘۦۨۥۜۘۨۙۜ۟ۚ۟ۥ۠ۥۙۛۧۗۥ۬ۘۖۧ۠ۛۖۢۖۘۘۗۥۢ۫۬ۛ";
                                            break;
                                        case 1323417684:
                                            str6 = "۠۬ۖۙۥۛۙ۟ۡۘۛۗ۬ۙۛ۠۟۟ۡ۠ۜۥۙ۠ۡۚۜ۠ۥۦۛۛۧۦۘۢۚۢۗ۬ۙۛۡۥۘۖ۫۟ۘ۠ۚ";
                                            break;
                                        case 1614870284:
                                            str6 = "ۢۧۢۡۘۘۜۥۖۚۧۛۗۡۨۘۘ۫ۜۘۨ۬ۖۛۜۤۧ۠ۧۛۗۖ";
                                            break;
                                    }
                                }
                                break;
                            case 806242634:
                                str = "ۜۗۥۦۛۨۘۚۧۖۘۢۦۥ۟۫۬ۛۚۛۜۡۘ۫ۘۥۧ۫ۢۢۤ۠ۜۡ۬ۡۖۘۘۛ۬۠ۗۙۛۛ۬ۥۚۙۨ";
                                continue;
                        }
                    }
                    break;
                case 274607429:
                    String str8 = "۬ۨۧۤۖۥۘ۠ۨۧۘۗۥۙ۫۠ۜۤۗۥۡ۠۫ۤۚۗۗۧۡۗۖۥۘۗۚۢۢۦ";
                    while (true) {
                        switch (str8.hashCode() ^ (-943698894)) {
                            case -1241706009:
                                str8 = "ۙۢۨۛۚ۬ۧ۟ۧۢ۫ۥۘۙۛۜۘۨۢ۠ۗۥۨۚ۟ۜۘۜۡۘۙ۠۠ۜۢۖۛۖۛۤ۬ۖ۠ۖۘۢۨۖۖۖۨۘۘۜ۠ۡ۠ۘ";
                                break;
                            case -676707247:
                                str = "ۧۗۛۙۡ۠ۦۘ۟ۡۢۖۘ۠ۚۖۢۤۙۗۥ۫ۡۜ۟ۚۤۘۘۖ۟۫";
                                continue;
                            case 1012606928:
                                String str9 = "ۨۦۦۙۚۚ۠ۡۢ۟۠ۤۢۡۡ۠ۛۗۘ۫ۥۙۤۨۘۗۜۜۘۗۤۜۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-915183409)) {
                                        case -957346605:
                                            str8 = "ۖ۟ۢ۟ۘۖۘ۬ۤۚۤۚۤۡۛۨۡۙ۟ۢۛۤۤۦۙۢۦۜ۠۬ۡۨ۬ۛ";
                                            break;
                                        case 791962618:
                                            str8 = "ۘۤۖۘۙۖۜۘۥۦ۠۬ۚۢۚۧۦۚۡۢۡۙۙۜ۠ۡۧۢۙۚ۫ۜۙۨۧۡۘۜۡۨۘ۫ۥۢۡۨۥۜۘۗۗ۬ۗۦۘ";
                                            break;
                                        case 1409410629:
                                            str9 = this.oo0o0Oo >= 5 ? "O۟۠ۥۜۙۚۙۚۖۖ۫ۛۦۢۗ۠ۜ۫۫۫ۙۜ۟۟ۛۘۜ" : "ۡۚۥ۠ۛۢۛ۬ۤۢ۠ۖۜۘۛۗۜۘ۟ۖۛ۟ۢۡۚۜۦ۟ۜۘ۟۫ۖۘۤۗۛ";
                                            break;
                                        case 1664116512:
                                            str9 = "ۢۗۦۘۙ۬ۨۘۚۥۡ۠ۘۦ۠۠ۗۨۚۨۙۦۡ۟ۙ۫۟ۜۜۘۙ۟ۙۡۘ۟ۚ۠ۜۚۚۘۘ۠ۖ۠ۡۙۛۢ۫ۡۘۤ۬ۜ۫ۖۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1041760062:
                                str = "ۤ۠ۥۘۜۡۥۘۦ۬ۥ۟ۘۗۜۧۘۨ۫ۦۨۗۖۘۥۢۧۗۡۘۘۚۜۜۘ۟۬ۦۘۧۨۢۗ۫ۖۘۧۚ۫۠ۘۤۨۡۢ";
                                continue;
                        }
                    }
                    break;
                case 584662255:
                    OoooOo0();
                    str = "۫ۢۗۗۢۢ۠ۘۢۨۜۖ۟ۙۥۘۖۦۡۤۡۖۘۡۦۨۙۦۘۘۜۤۗ";
                    break;
                case 667686510:
                    this.oo0o0Oo++;
                    str = "ۨۢۖۧۘ۫ۢۘ۟ۘۘۖۘۘۥۡۦۛۦ۟۬ۦۧۡۥۜ۬ۦۘۦۘۗۖۙۦ۫ۖۧۘۘۗ۬ۧۦۙۡۧۨۘۦۢۢ۠ۗۡۗۥ";
                    break;
                case 938820217:
                    this.o0OO00O.sendEmptyMessageDelayed(1000, m.ag);
                    str = "ۖ۬ۜۘ۬ۥۧۘۦۡۡۘۜ۫ۦ۠ۦۨۘۗ۫ۦۚۚۚۤۙۛۤۗۛۥ۟ۦ۟ۛۗۗۙۦۢۨۨۦۛ";
                    break;
                case 1528499637:
                    i7.OooO().Oooo0o0();
                    str = "ۚۥۦۛۧۡۚ۫ۥۘ۬ۨۜۘۦۙۖۘۜۜۧۘۜۡۤ۟ۖۙۘۥۖۘ۠ۛۢۥۚۡ۫۠ۦۘۧۖۘۘ۟۠ۡ";
                    break;
                case 1642730166:
                    str = "ۛۗۤ۫ۙۘۥۤۤۚۗۜۡۥۖۘۨ۠۠ۙۖۡۘۖ۫ۗ۠ۛۘۤ۟ۖۢۗۡۘۦۜ۟ۧۥۡۖ۠ۙ";
                    break;
                case 2027568785:
                    this.oo0o0Oo = 1;
                    str = "ۤ۠ۥۘۜۡۥۘۦ۬ۥ۟ۘۗۜۧۘۨ۫ۦۨۗۖۘۥۢۧۗۡۘۘۚۜۜۘ۟۬ۦۘۧۨۢۗ۫ۖۘۧۚ۫۠ۘۤۨۡۢ";
                    break;
            }
        }
    }

    private boolean OoooO00() {
        String str = "ۢۖۙۙ۫ۢۚ۫ۜۖۘۗۖۦۡۦۖۚۡۖۨۤۥۥۧۥۛۛۚۨۥۘ۟ۗۜۖۧ۟ۥۤۜۘ";
        int[] iArr = null;
        int[] iArr2 = null;
        while (true) {
            switch ((((str.hashCode() ^ 351) ^ 768) ^ 586) ^ (-951403676)) {
                case -2088571343:
                    this.o0OOO0o.getLocationOnScreen(iArr);
                    str = "۬ۚۚۖۦۥۘ۟ۚ۬ۡۡۜۘۘۛ۫ۛۛۨۘۖۡ۟۫ۡۤۥۦۧۙۛۘۚ۫۠ۢۗۥۘۛ۠۟ۛۚۤ";
                    continue;
                case -1803424758:
                    this.OoooooO.getLocationOnScreen(iArr2);
                    str = "۬ۚۨۘۘۖۨۘۗۘۥۨۙ۫ۡۜۧۘۚۗۘ۟۬۫ۛۦ۠ۜ۟ۜۘۢۢۥۗۦۨۦۨ۫ۢۥۦۘۛۢۖۘۗۖ۟ۦۚۚۨۦۗ۬ۛۥ";
                    continue;
                case -1630357265:
                    String str2 = "ۛۥۥۚ۫۫۠ۘۜۘ۫ۨۡۜۜۢۦۙۚۢۢۤۘۙۨۘۨ۬ۥۘ۬ۖۧۘۢۦۢۡۢۧۛۡۖۘ۟ۚۢ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1885060672)) {
                            case -1233649795:
                                str2 = "ۜۙۥ۬ۖۘۘۧۤۛۛۘۘۥۥۖۘ۟ۛۡۙۧۤۚ۠ۤۤ۫ۥۘ۬۟ۦ";
                                break;
                            case -275520387:
                                str = "ۙۗۤ۠ۚۥۘۦۘۚۦۚ۠ۢۖۧۘ۬ۜۙۙۥۨۧۚۤۦۜۖۘۦۚۚۨۖ۟ۨۧۢۢۨ۫ۚۦ";
                                break;
                            case 1539317273:
                                break;
                            case 1815404166:
                                String str3 = "۠ۥۚ۟ۚۨۤۥۖۘۘ۬ۨۘۚۚ۬ۤ۫۟ۚۛ۠ۖۗ۠۬ۨۘۜۢۖ۠ۙۤۖۢۛۙۜۤۧ۟ۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-531426248)) {
                                        case -1814551509:
                                            str2 = "ۦ۟ۛۙۗ۟ۦۖۘ۬۫ۚۤ۬ۖۘۥۧۤ۬ۗۨۚۙۙۘۖۡۘ۟ۚۗۤۘ۬ۙۘۘ۫ۗۙ۠ۛۦۤۚۤۙۙۘۘۨۨۤ۠۠ۖ";
                                            break;
                                        case -1143594797:
                                            str3 = iArr2[0] > iArr[0] ? "ۥۧ۟ۢۤۨۢۜۥۡۨۖۚۙ۟ۘۚۘۘۧۖ۫ۥ۟ۜۘۛۤۛۧۗۡۘۧۚۦۨۥۜۘۤۡۛۙ" : "ۦۦۙ۠ۜۖۖۙۢۜ۟۟ۙ۟۟ۢۢۘۘۢۜۧۘ۫ۘۘۢۙۥۘ۬ۤۖۘۥۖۤ۬۬ۤۘۗۡۨۗۨۘ۫ۚ۟ۨ۟ۥ۠ۛۖۢۗ۬";
                                            break;
                                        case 852478009:
                                            str2 = "ۦۙۜۘ۟ۜۥۜ۬ۚۜۧۜۘۗۜۧۦ۠ۙۗۖۦۘ۟۬۠ۧۢۗۚۘۨۢ۬ۡۙۜۘ";
                                            break;
                                        case 1953754995:
                                            str3 = "ۘۦۚۜۤۜۘ۠۠ۘۘۛۨۜۘۖۘۥ۠۠ۨۥۧۧۢۙ۟ۢۛۖۘۙۘۗۘۗۛۢۨ۫ۧۡۦۘۜۗ۟";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1017305725:
                    return false;
                case -688965022:
                    String str4 = "ۡۦ۟ۢۚۦۘۧۛ۬ۙۡۖ۫ۛۦۘۧۦۘۘۘۖ۟ۖۖۘۧۧۢۨۚۘۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 440892687) {
                            case -1796926393:
                                str4 = "ۙۙ۫۟ۨۘۘۙ۠ۡۘۜۛۙۘۚۥۘۗۚۘ۬ۢۚ۟۫ۖۘ۬ۤۡۘ۠ۚۚۗۡۘۘ۫ۘۨ";
                                break;
                            case -1265421323:
                                str = "ۥۦۚۦ۫ۘ۫ۚۡۘۨۧ۠ۜۡۗۗۦۥ۟ۗۢۗۖۡۘۘۢۢۗ۟ۗۤ۬ۚ۫ۤۨۙۛۦۘ۬ۡۘۘۨۖۘۜۡ";
                                break;
                            case 1430134284:
                                break;
                            case 1523676205:
                                String str5 = "۫ۦۜۗۤۚ۟ۖۥۗۖۘ۟ۨۙ۟ۦۤ۠ۧۥۘۥۛۧۘۛ۠ۧۧۢۜ۬ۗۗۚۖۘۢ۟ۛ۬ۨۢۚۗۖۘۖۦۥۨۤۨ۟ۛۛ";
                                while (true) {
                                    switch (str5.hashCode() ^ 286081658) {
                                        case -2049593732:
                                            str4 = "ۡۡۨۘۥۘۨۘ۟۟ۥۚۙۘۜۙۥۦۛۤۗۙۘۘۧۛۦۢۙ۫ۘ۠ۜۜۛۖۘۙۧۢۧۗۘۚۖۨۘ";
                                            break;
                                        case -1551699769:
                                            str4 = "ۧۘۛۛۖۥۘۜۛۤۜۛۡۥۡۡۘۧۛۡۘۛ۬۠۠ۚۚۘۨۛۛۨۨ۠ۥۨۖ۟ۨۘ";
                                            break;
                                        case 1336501111:
                                            str5 = iArr2[0] < iArr[0] + this.o0OOO0o.OooO00o() ? "ۜۨۡۘۚۧۥۤۛ۬ۨۦۨ۟ۧۡۘۥ۟ۗۖۗ۟۫ۦۘۢۡۦ۬ۛ۟ۢۘۧۥۡۡۘۘۢۢۤۥۨۘۚ۫ۨۘۗۦۚۥۡ۠ۛۛۜ" : "ۖ۠ۖۘۤ۟ۖۗ۬ۥۘۗ۠ۘۚۚۥۙۡۨۘۤۜۨۘۜۥۡۘ۟۬ۚۧ۠۟";
                                            break;
                                        case 1887817691:
                                            str5 = "ۨۗۘۘۨۗۦۦۦۡۘۖۧۦۘۘۦ۫ۖ۟ۧۨۢۜۘ۟ۨ۬۫ۙۢۡۡۥۘۚۘۘ۫ۦ۫ۡۜ۫ۛۗۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -686758846:
                    iArr = new int[2];
                    str = "ۦۡۢۛۡۡۡۨۘۗۛۚۤۖۡۘOۜ۟ۥۘۥۛۙۚۨۢۖۢ";
                    continue;
                case -582597914:
                    String str6 = "ۤۥ۬ۙۤۡۘ۫۬ۥۖ۠ۜۘۦۖ۠۟ۡۥ۠ۧ۬۫ۖ۠ۨ۠ۡۘۧۘۦۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-1907796507)) {
                            case -1027891890:
                                str = "ۜۢۤۜۜۤۨۚۤۙۛۦۗۡۤ۟ۙۡۨۢۤۖ۬۠۟ۧۡۜۢۗۖۘۨۥۙ۬ۜۘۤۙۗ";
                                break;
                            case 349660055:
                                String str7 = "ۢۘۖۘۜۦ۠ۘۧۥۥۛۤۨ۬ۧۡۡۙ۫۫ۨ۟ۘۘ۫ۢۛۗۡ";
                                while (true) {
                                    switch (str7.hashCode() ^ 675077301) {
                                        case -654582253:
                                            str7 = "ۖۨۛۘۖ۠ۖۚۨۘۥ۠ۙۨۡۡۘۛۖۨۦۨۚۛ۫ۥۘ۬ۖۖ۟ۖۘ";
                                            break;
                                        case 172922846:
                                            str7 = iArr2[1] > iArr[1] ? "ۜۜۜۘۨ۟ۚ۫ۢ۟۬ۙۙۖۚ۠ۘۡۦ۬ۘۚ۫ۜ۟۠ۜۚۖ۟ۙۙۡ۠ۛۘۘۤۖ۟۬ۗۜۘۥۡۘۜۧۧۚۦۡۘۚۗۥۘ" : "ۡۤۖۚۢۥۘۨۗ۟ۦۢۜۘۨ۟ۨۢۥۨۢۖۚۗۧۖۤۢۜۘۜۙۡۚۥۗۚۘ۠ۛ۬۠ۡۙ۫ۙۘۜۘۚ۟ۖ";
                                            break;
                                        case 493834065:
                                            str6 = "۫۫۠۬۬۟ۛۢۖۘۗۛۦ۬ۗۜۛۙۦۥۘۗۗ۬ۜۘۗۛۨۘۨۧۥۘۘۖۘۚۤۖۜۢۘ۠ۢۖۡۜۜۖۦۘ۟۟ۨۚ۫ۗ";
                                            break;
                                        case 1326097397:
                                            str6 = "ۤۜۧۨۧ۟۠ۢۖۘۤ۬ۦۧۙۙۦۛۖۜ۟۬ۘۗۛۚۦۘۛۘ۠۠۟ۧۙۗۗ";
                                            break;
                                    }
                                }
                                break;
                            case 450492102:
                                str6 = "ۘ۠ۘۘۡ۬ۥۦۢۡۘ۫ۚ۟ۨۛ۬ۨۡۡ۬ۧۤۘ۠ۡۘۤۙۨۢۥۧۘ۠ۤۗۨۜۙ";
                                break;
                            case 2117614875:
                                break;
                        }
                    }
                    break;
                case 13440306:
                    str = "۠۠۫ۖۛۦ۬۟ۦۛۖۜۘۙ۫ۜۘۛۗۢۢۚۘۡۚۜۘۚۤۙۛۦۗۧۖۤۧ۬ۡۢۛۤۖۦۘ";
                    continue;
                case 273721187:
                    str = "ۖ۟ۚۖۤۘۧۚ۫ۜۘۨۘۨۛۧۜۚۖۘۢۙ۫۫۬ۗۢ۫۠ۥ۬ۚۖ۫ۛ۬ۖۤ";
                    iArr2 = new int[2];
                    continue;
                case 1480211654:
                    return true;
            }
            str = "ۜ۬ۜۘۖۤۥ۟ۘ۬ۨۡۦۚۦۙ۟۠ۧۥۘۗۛ۬ۥۛۜۦ۠ۖۧۨۙ۫ۧۨ۠ۦۨۥۘۥ۠ۚۧۦۖۘ۬۟ۗ۬ۥۜۜۤۥ";
        }
    }

    private /* synthetic */ void OoooO0O() {
        String str = "ۡۦۗۘۥۚۦۛ۬ۦۗ۬ۧ۬ۤۥۤۜۨۛۘۘ۬ۢۗۤۖۢۨ۠ۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 240) ^ 956) ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ (-128069623)) {
                case -150669864:
                    return;
                case -77761331:
                    this.o0Oo0oo = false;
                    str = "ۙ۬ۨۘۨۚۖۛ۬ۢ۠۠ۛۧ۬ۘۘۘۦۡۘۛۙۗۛۛۜۘۗۤۘۘۚۡۘ۟۟ۚۤۤۥۘ";
                    break;
                case 1199476022:
                    str = "ۢۤۜۘۙۛۘۜۛۡۚۙۙۤۥ۠ۙۤۤۘۢۜۗۧۙۤۧ۠ۚۨۘۗۡۡۘۢۖ۟";
                    break;
            }
        }
    }

    private void OoooOO0() {
        int[] iArr = null;
        ImageView imageView = null;
        int i = 0;
        ImageView imageView2 = null;
        int i2 = 0;
        ImageView imageView3 = null;
        int i3 = 0;
        int i4 = 0;
        ImageView imageView4 = null;
        String str = "ۜ۫ۖۘ۟ۧ۫ۨۨۦۘۨۦۢۤۖ۟۟ۤۛۚۧ۟ۦ۫۬۠ۖۘۨ۫۬ۤۡۨۘۧۨۤۗۜۛ۬ۜۧۘ۬ۤۥۛۜ۬ۥۡۨۘۧۖۧ";
        while (true) {
            switch ((((str.hashCode() ^ 466) ^ 397) ^ 744) ^ 593730906) {
                case -2147228409:
                    String str2 = "ۖ۟ۜۛۦۡۘۛۤۦۢ۫ۘۘۚۛۜۖ۬۟۬ۜۘۙۨۨ۠ۚۦۚۧۥۦۧۜۘۙ۠ۡۘۧۧۨ۟ۛۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1617630257)) {
                            case -2116209941:
                                String str3 = "ۤ۟ۗ۬ۛۗ۬ۚۨۘۗۥۡۘۤ۠ۧۢۥۙ۬۠ۗۤۥۜ۠ۖۦ۠ۘۗۥۛۗۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 900183859) {
                                        case -2043039605:
                                            str3 = this.o0OOO0o.getVisibility() == 0 ? "ۦۤۛۤۨۗۤۘۧ۬۠ۙۡۛ۟ۢۜۖۘۙ۬ۙۤۢ۟۫ۙ۬ۖ۬۟ۦۘۖۗۖۘۢۙۜۘۥۧۥۘ" : "ۘۜ۠ۙۙۖۖۨۧۘۢۦۥۘۘۘۘۘۜۧۗۥۙۢۤۢۙ۠ۥۘۘ۫۟ۢۚۙۨۘ۟ۖۥۖۧۚۜۜۥ";
                                            break;
                                        case -1104801604:
                                            str2 = "۟ۜۜۘۙۤۖۘ۠ۜۙۧۖ۫ۘۥ۟۠ۨۨ۠ۡۤۜۢۙۡۗۡۘۖۖۡۘۨۖۡۤۗ۫";
                                            break;
                                        case -1025212273:
                                            str3 = "ۗۚۢۢۖۗۡ۬ۛۨۧۜۘۘۡۧۘ۫ۘۦۘۧۨۧۘ۬۠ۡۘۖ۬ۜۘ";
                                            break;
                                        case -208018716:
                                            str2 = "ۚۨۧۘ۟ۙۖۘۖۖ۠ۥۡۦۨۗۥۘۘۨۦۡۚۢ۬ۗۡۘۤۨۥۘۖ۬ۜۖۗۧۦۡ۬ۧۛۛۜۧۖۘۧۥۦۘۨ۬ۙ۫ۢۥ۟ۖ";
                                            break;
                                    }
                                }
                                break;
                            case -1570334481:
                                str = "ۙۘۡۢۜۘۘۥۨۖۘۤۡۡۘۜۤۦۙۛۚۨ۟ۦۘۦۡۜۛۙۡۛۢ";
                                continue;
                                continue;
                            case -941437223:
                                str = "۫۫ۛۢۧۢ۠ۤۡۘۙۨۘۘۧۚۨۚۦۙ۠ۧۨۗ۟ۧۙۨۘۖۗۘۘ۬ۚۖۘۢۦۘ";
                                continue;
                            case -729273117:
                                str2 = "ۗۤۚۦۜۢ۟ۜۤۢۘۘۘۖۗۡۘۛ۠ۤۡۖۡۘۗ۠ۙۚۚ۬۫ۢۙۦۙۧۜۤۧۦۦۘۜ۠ۘۘ";
                                break;
                        }
                    }
                    break;
                case -2117893778:
                    imageView3 = this.OoooooO;
                    str = "ۘۦۜۘ۬۟ۨۨ۠ۦۘۥۨۘۥۙ۫۫ۧۡۘۚۥۜۘۘۡ۫۬۠ۡۘ۬۫ۜۛۧ۟ۥۜۥۘۖ۫ۛۨۛۤۡۤۡ۟ۥۙۡ۠ۖ۫ۥ";
                    continue;
                case -1668211412:
                    String str4 = "۬ۥ۠ۛۡۖۖۧۙۛۚۤۤ۫ۗۨۖۘۥۧۘۧۘۚۧۦۗۗۗ۫ۦۘۨ۠ۢ۬ۛۥۛۧۙۧۡۚ۠۬ۜۨۨ۫ۡۘۗ۫";
                    while (true) {
                        switch (str4.hashCode() ^ 467069288) {
                            case -1939006764:
                                str4 = "ۨۤۨۖۧۤۙۖ۬ۡ۫ۖۘۘۛۦۖۘۙۗۢ۬ۚۖۘۨۘۜۘۡۘ۠ۖۘۘ۫ۡۢۧ۬ۥۘۚۙۘۘۛۜۘۘۚۦۘ";
                                break;
                            case -1611468724:
                                str = "ۢۖۗ۟ۦۘۘ۠ۚۙۜۙۖۦۢۥۦۧۘۜۧۘۡۖۤۙۖ۟ۡۘۗۘۢۥۘۖۘ۠ۖۧۘۨۨۛ";
                                continue;
                            case 792248757:
                                String str5 = "ۖۖۛۜۛۡۘۚۤۛۨۚۨۘۦ۠ۜۛۜۥۥۧۘۧۚۦ۫ۤۢۛۛۥ";
                                while (true) {
                                    switch (str5.hashCode() ^ 569442380) {
                                        case -1798361142:
                                            str4 = "ۧ۬۟ۧۚۧۚۙۜۘۗ۬ۚ۟ۨۘۘۜۢۜۘۨۡ۫۫ۛۘۘۙۨۡۘۢۖۧۘۦۚۧۥۥۥ۫ۢ۟۟۠ۛۧۥۨ۫۫";
                                            break;
                                        case -1177866223:
                                            str5 = b7.OooO0Oo().OooO0OO == 4 ? "۠ۘۡۘۜۛۤ۠۟ۚۦۚ۫ۙۦۧۚ۫ۨۘۛۦۛۨۡ۫ۧۛۨۨ۠ۨۘۡۚۦۙۡۘۜۚۨۦ۬ۖ۠ۤۡۘۖۨۥۘ" : "ۨۤۜۘۙۡ۟ۧۖۦۘۘۨۨۘ۠۟ۖۘۧۖۘۘ۠ۙۢ۬ۖۢ۬ۧۥ۫ۜۖۦۘۧۘ۬ۚۨۘۙ۟۟۟ۗۜ";
                                            break;
                                        case 340424920:
                                            str4 = "ۖۤۥۘ۫۬ۥۦۧۘۡۙۗ۫ۨۨۘ۠۠ۡۤۚۨۘ۫ۨۥۘۛۢۗۚۤۜۘ۬ۗۦۘۚۧۥۘ۟ۘۡۙ۠ۗ";
                                            break;
                                        case 869198070:
                                            str5 = "۬ۥۨۘ۬ۥۘۧۖۡۜۨۦۘۙۧۙۥۚۚ۠ۢۧۡۢۡۖۨۧۘۚۜۨ";
                                            break;
                                    }
                                }
                                break;
                            case 1277263900:
                                str = "۫ۘۖۜۤۖۘۙ۟ۖۘۛ۠ۥۙ۠ۨۘۤ۫۟ۗۢۖۨۦۛ۫۠ۜۘۗۧۢۥۡ۠ۗۙۦ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -1565323532:
                    str = "ۚۨۡۧۢ۠ۚۥ۟ۖۘۦۛ۠ۥۘۖۛۙۥ۫ۘۥۖ۫ۦۖۤۙۥۗۢۧۖۚ۬ۤۙۙۥۘۖۧۡ";
                    imageView4 = imageView2;
                    continue;
                case -1306951218:
                    break;
                case -1299587855:
                    iArr = new int[2];
                    str = "ۚۡۧۨۙۡۢ۟ۜۚ۫۫ۛۜۧۦۦ۬۟۬ۜۤ۬۟ۜۥۢۡۙ۟ۡۨ۟ۤۨۨۘ";
                    continue;
                case -1240553042:
                    str = "ۥۨۢۘۜۧۛۧۜۘۚۦۡ۫ۥ۟ۗۚۡۘۧ۬ۥۥۢۘۘۖۤ۠ۦ۫ۡۛۚۦ۫۟ۡۜۚۤۜۧۨ";
                    i4 = i2;
                    continue;
                case -1212953493:
                    str = "ۛۛۤ۬ۨ۬ۦۛ۬ۗۧ۫ۜۙۚۥۙۘۘ۟ۤۜۥ۬ۘۘۧۡۥۘ۠۟ۚۧۡۥۡۨۢۘ۠۠ۧ";
                    i4 = i3;
                    continue;
                case -1013123303:
                    this.Ooooooo.addView(this.o0OoOo0, 0);
                    str = "۬ۥۜۘۦۧۘ۬۫۠ۜۤۖۤۥۡۘۦۨۨ۬ۚۜۧۚۥۖۢۘۛۡۚۢۜۚۦۖۘۘۨۨۨۜۗۦۥۜۜۙۚ";
                    continue;
                case -925855916:
                    this.Ooooooo.addView(this.o0OoOo0, 1);
                    str = "۟۠ۖۘۚۗۢۗ۬ۖ۟۟ۥ۫ۡۧۘۦ۫ۙۙۙۢۦ۫۠ۨ۠ۘۧۢۨ";
                    continue;
                case -840135072:
                    return;
                case -704961915:
                    str = "۫ۛۚ۫ۧ۠ۚۖۘۗۙۥۖۥۥۘ۠۬ۖ۫ۡۜۘ۠ۛۜۘۛۛۙۨ۬ۨ۫ۥ۟۬ۗۙ۟ۙۨۖۘ۬ۖۛۤۙۤ";
                    continue;
                case -593622701:
                    this.Ooooooo.removeView(this.o0OoOo0);
                    str = "۬ۘۖۘۥۡ۟ۛۖۖۧۜۘۦۦۜۢۛۡۘۨۡۧ۫ۖۖۥۜۧۜ۠ۖۧۨۦ۠ۜ۟ۙۤۧۚۜۦ";
                    continue;
                case -587395117:
                    this.o0OOO0o.OooO0o();
                    str = "۫۫ۛۢۧۢ۠ۤۡۘۙۨۘۘۧۚۨۚۦۙ۠ۧۨۗ۟ۧۙۨۘۖۗۘۘ۬ۚۖۘۢۦۘ";
                    continue;
                case -327379394:
                    String str6 = "ۢۡۜۥۙۜۛۥۤۡۧ۟ۦۘۥۛۦۘۡۥۖۘۧ۠ۦۨ۬ۨۘۙ۠ۡۘۡۘۨۘۤۙۗۗۡۜۘۦۗۜۜۦۜۜۚۥۘۘ۠۟ۢۢۧ";
                    while (true) {
                        switch (str6.hashCode() ^ (-2029665966)) {
                            case -1531999526:
                                str = "۠۟ۡۘۦ۠ۚ۟۬ۙۡۖۘۤۙۖۛ۬ۦۨۜۧ۫ۨۜۤ۟ۙۘۡ۫۬ۛۘۘ۫۠۬";
                                continue;
                            case -1183623343:
                                str6 = "ۙۖۖۘۖۗۖ۫ۙۚۦۢۗۥ۟۠ۖۜۥۘۤۧۚۗۘۙۗۨ۫ۥۖۘ";
                                break;
                            case 1225172262:
                                String str7 = "ۖۘۢۖۧۖۘۘ۫ۦۚۦ۫۬ۚۨۘۡ۫ۥۘۚۥۧ۠۟ۚۗ۬ۧۨۚۛۜۢۚ۠۫ۨۘۜ۫ۢۚۛۗۜۛۥۡۡۜۙ۟ۥۚۚۖۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 454388524) {
                                        case -2097909518:
                                            str7 = "۫ۨۥ۬ۤۛۛ۠۠ۨۛۡۘ۬ۡ۫ۤۜۤۨ۠۟ۚۛۥۢۥۛ۬ۖ";
                                            break;
                                        case -1817930459:
                                            str7 = b7.OooO0Oo().OooO0OO == 3 ? "ۖۧ۠۫ۤ۬ۛۧۚ۟ۨۤۙۜ۬۬ۡۗۖۡۘۙۛۚۦۥۘۚۤۚ۟ۜۤۦۛۙ۠ۖۢۥۡۥۤۘ۠ۢۚ" : "ۦۧۙۚ۠ۜۘۡۖۨۘ۫ۤۤ۫ۦ۫ۦ۫ۢۥۦۘۚ۠۫ۧۢۜۘۗ۟ۥۘۙۚۚۦۘ۟ۚۙ۠ۜۦۘۗۚۡ۠ۥۡ";
                                            break;
                                        case -1308781516:
                                            str6 = "ۤۡۥۘۗ۠ۚۖۤۖۛۛۥۘۜۜۦۘ۠ۚۡۥ۟ۗۨ۠ۧۚۗۨۥۧ";
                                            break;
                                        case -1080277111:
                                            str6 = "ۛۖۗۜۖۘۘۦۛۨۛۡ۬۬ۙۨۖ۠ۖۤۙۖۡۙۖۘ۬ۤۜ۬۬ۦ۟ۘۡۤۡۥ";
                                            break;
                                    }
                                }
                                break;
                            case 2113013874:
                                str = "ۜۤۘۚۙۘۘۚۘۖۘۢ۠ۦ۫ۦۖۘۚۗۡۘۡۗۨۘۙۢۖۘۘ۬ۢ۫۟۠";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -189765549:
                    str = "۟۠ۖۘۚۗۢۗ۬ۖ۟۟ۥ۫ۡۧۘۦ۫ۙۙۙۢۦ۫۠ۨ۠ۘۧۢۨ";
                    continue;
                case -19362717:
                    this.Ooooooo.removeView(this.o0OoOo0);
                    str = "ۗۛ۬ۥۧ۬۟۟ۖۘ۟۟ۢۜۛ۫ۧۦۡۜۦۘۧۡۦۘۘ۬ۢۗ۠ۘۘۨۖۜۡ۟۠ۢ۠ۖۢۜۦ";
                    continue;
                case 267157777:
                    imageView4.setImageResource(i4);
                    str = "۠ۡۖۡۛۦۖۗۢۗ۠ۤۢ۬ۡۚۜۢۗۨۖۗۤۡۘۚۚۨۦۧۧ";
                    continue;
                case 303560705:
                    String str8 = "ۦۦۜۧۢۜۜۦۙ۠۬۟ۡۨۖۘ۬ۛۜۘۥ۟ۗۗۡ۬ۤ۠ۛۗۨۘ";
                    while (true) {
                        switch (str8.hashCode() ^ 1709545224) {
                            case -797063070:
                                String str9 = "۟۠ۖۘ۫۬ۜۡۥۧۢۜۨۘۨۖۖۘۖۘۡۛۘۜۘۜۜۤۜۘۗۚۗۡۜۢۘۘ۬ۥۤۘ۬ۨۨۜ۟ۡۜۜۘ۟۠ۥۘۗۧ۬ۙۚ۬";
                                while (true) {
                                    switch (str9.hashCode() ^ (-2135463440)) {
                                        case -174511807:
                                            str8 = "ۨۜۧۘۗۜ۠ۗۨۙۗۗۥۗۜۛۦۡۡۘ۟ۢۨۨۧ۠ۨۧۨ۫ۙۘ۬ۛۡۗۡۡۡۦۘۘ۬ۡ۟";
                                            break;
                                        case 775791514:
                                            str8 = "ۦۡۘۜۚۗۡۦۘۙۧۧۥۗۨ۫۬ۖۘۧۢۜۘۚ۫۟ۘ۟ۗۧۙۧ";
                                            break;
                                        case 1180376194:
                                            str9 = "ۙۛۥۛۖ۠۠ۛۢ۟ۢ۬۟ۦۚۤ۟ۥۤ۫ۜۡۛۜۘۤۡۗۙۖۘۘ۫ۖۘۦۜۦ";
                                            break;
                                        case 1550241836:
                                            str9 = ((float) iArr[0]) >= (((float) w3.OooOoo0(getContext()).x) - this.OooooOO) / 2.0f ? "ۨۡۢۚۨ۬ۙ۟ۗۡ۫ۜ۟ۖۡۘ۠ۨۘۘۧ۟ۙۜۨۥۨۨۜۚ۫ۘۘۚۧۜۘۚۜۦ" : "۬ۧۖۘۛ۫ۨۘۡۧۘۤۡۨ۫۬۠۟ۥۖۛۜۛ۫ۚۨۡۙۨۛۘۥۚۤ۠ۤۘۖۖۨۥۘ۠ۚۚ";
                                            break;
                                    }
                                }
                                break;
                            case -632021690:
                                str = "ۗ۫ۘۘۧۤ۠ۤ۫ۘۘۦۘۥۘ۠ۛۖۘ۬۫ۛۡۚۡۘۛۘۚۦ۬ۢۗۗۦۡۜۦۘۛۨۧۘۖۡۥۤۡۥۘ";
                                continue;
                            case 556123917:
                                str8 = "ۛۙۘۥ۬ۘۙ۬ۨ۟ۨۜۤ۫ۛۖۖۢۛۚ۬ۗۨ۫۠ۤۥۡۥ۟ۙۛۦ۠ۘۢ۬ۘۛۢۢ۠ۨۗ۫ۢۨۜۘ";
                                break;
                            case 2031492181:
                                str = "ۚۦۚۨۜۖۘۦۖۖۘۚۨۖۢۙۦۘۥۙۥۘ۬۫ۡۘ۟ۨۚۨۘ۬۫ۢۛ۬ۨۤۚۦ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case 408216672:
                    String str10 = "۟۫۟ۦ۫ۥۘۙۨۦۘۗۚۖۘۨۦۙۗۜ۠ۢ۠۬ۨۘ۬۠۫ۘۘۙۦۙ";
                    while (true) {
                        switch (str10.hashCode() ^ 433105841) {
                            case -2060598455:
                                break;
                            case -1333806061:
                                str = "ۜۢۛۥۡ۬ۚۡۘۘۢۙۗۥۤۗۛۙۡۡۗ۬ۗۗۖۥۡۖۙۧۢۙۚۢۙ۠ۦ";
                                break;
                            case 893535149:
                                str10 = "ۤۦۗۡۤۢۘ۟۫ۚۨۛ۬۟ۙۖۥۧۡۜۡۘ۠ۨۜۘ۬ۖ۬ۗۗۘۜۧۨ۫ۘۛ۬ۦۘۧۚۥۘ";
                                break;
                            case 898761459:
                                String str11 = "ۘۜۢۜ۟ۦۘۚ۟ۡۤۚۙۙۥۜۙ۫ۧ۬ۖۖۘۖۤۤۤۤۘۢ۠ۨۖۙۜۘ۠۠ۡۡۜۘ۠ۚۖۘ";
                                while (true) {
                                    switch (str11.hashCode() ^ 1964634589) {
                                        case -1281751941:
                                            str10 = "ۤۚۥۘۚۧۚۙ۠ۢۡۗۗ۬۟۫ۛۥ۬ۢ۬ۤۨۜۘۘۘۡۦۢۜۙ";
                                            break;
                                        case 401794281:
                                            str11 = b7.OooO0Oo().OooO0OO != 2 ? "۟ۖۡۘۧۙ۫ۢ۬۠ۢۥۤۚۤ۟ۙۘۘ۫ۧۧ۫ۢۤۢۢۜۘۖۗۡۘۛۗۢۦ۬ۨۘ" : "ۗ۠۬ۚۡۦۜۢۖۘۘ۟ۦۛۜۚ۠ۨۡۘۤ۬ۥۨۘ۫۟ۤۨۘۜۥۜۘ۟ۥۡۘۦۗۥۘۧۧۥۜۢۨ۟ۚۡ۠ۡۦۘۥۦۙ۟ۨۚ";
                                            break;
                                        case 929217777:
                                            str11 = "ۢ۫ۚۘۚۡۘۜۧۦۘۨۧۜۘۖۢۙۚۡ۬ۢۨۙ۫۫ۘۘ۟ۚۚۡ۬ۗ";
                                            break;
                                        case 1244651874:
                                            str10 = "۟ۗۧۡۢۛۢ۫ۡ۠ۧۨۛۖ۠ۗۘۡۙ۫ۤۡۛۥ۫ۖۘۘۦ۬ۚۧۙۘۨ۫۠";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 624970337:
                    str = "۬۠ۖۘۖۡ۬ۜۧۨۧ۟۫ۦۘ۫۫ۢ۟ۖۗۙۜۦۗۧۧ۟۬ۦۥۘۨۥۧۘۖۢۛ۠ۧۤۦۘ۫ۤ۟ۧۦۛۨۚ۠۠ۨۘ";
                    imageView4 = imageView;
                    continue;
                case 655228040:
                    this.OoooooO.getLocationOnScreen(iArr);
                    str = "ۥۢۗۗۜۡ۟۟ۨۘ۠ۖ۬ۙ۬ۖۙۚۗ۬ۨۤۚۥۡۡۥ۟۫ۜۦۘۤۡۡۘۘ۠۫ۦۧۜۡ۬۬ۨۛۦۘۨ۠ۥ";
                    continue;
                case 681541949:
                    str = "ۥۦۤۨۖۧۡۛۙۘۘۥۘۚۦ۬ۖ۬ۦۢۡ۫ۤ۠۠ۧۙۡۘ۬ۘۘۘۦ۬ۢ۟ۚۚ";
                    imageView4 = imageView3;
                    continue;
                case 796989172:
                    imageView2 = this.OoooooO;
                    str = "ۢۖۥۘۚۖۗۗۡۘۤۛۚۤۧۖۘۨ۟ۡۜۘ۫ۛۛۙۖۜۚۥ۫";
                    continue;
                case 873410745:
                    i2 = R.drawable.elfin_normal1;
                    str = "ۛ۬ۚۧ۬ۡ۠ۜۘۘۢۡۤۘۜ۟۫ۤۡۘۘۜۗۦۧۡۘۘۚ۠ۧۡۡۘ";
                    continue;
                case 1072389809:
                    i = R.drawable.elfin_pause1;
                    str = "ۥ۫ۡۧۡ۫ۨۙۜۘۘۢۤ۬ۜۘ۫ۨۡۙۡۘ۫ۗۜۤۜۧۘ۬۫ۜۘ۠ۨۘۘۥ۠۠۠ۧۖۘۚ۟ۥۛۨۖۘۜۦۖۘ";
                    continue;
                case 1134341504:
                    str = "ۘۥۤ۠ۚۢۛۧ۠ۡ۟ۗ۠ۦ۬ۡۧۙ۫۠ۢۡۥۘۖۘۦۚ۠ۡۘۧۚۗۢ۟۟ۚۢۘۘۨۘۗۦۥۘۢۨۥ";
                    i4 = i;
                    continue;
                case 1295340088:
                    i3 = R.drawable.elfin_run1;
                    str = "ۡۘۧۘ۠ۖۗۦ۬ۧۘۖ۫ۧۧۦۙۖۧۘۘۜ۠ۦۢ۬ۤۦۤۛۖۢۙۗۛۗۙۨۛۚۚۘ۟ۦۨۜۘ۟ۥۛۙۡۧ۟ۨۨ";
                    continue;
                case 1345506956:
                    this.o0OOO0o.setVisibility(8);
                    str = "ۘۘۖۘۛۢۡۘۦۦۛۨۙ۬۠ۖۢۛۧ۬ۙ۠ۦ۫ۧۥ۫ۧۧۧۘۜ";
                    continue;
                case 1595180099:
                case 2002814493:
                    str = "ۥۦۤۨۖۧۡۛۙۘۘۥۘۚۦ۬ۖ۬ۦۢۡ۫ۤ۠۠ۧۙۡۘ۬ۘۘۘۦ۬ۢ۟ۚۚ";
                    continue;
                case 1645268350:
                    OooooOO(w3.OooOoo0(getContext()).x, (int) (this.OooooO0 - this.OooooOo));
                    str = "ۛۤۗ۫ۤۦۛۥۥۘ۟ۦۥۗۖ۟ۦۧۙ۟ۥۘۘ۟ۛۧ۬ۚۨ۬ۛ";
                    continue;
                case 1683441550:
                    imageView = this.OoooooO;
                    str = "ۦۧۨۘۥۨۦۘۚۙۦۘ۠ۛۥۘۚۧۢۛ۬۟۠ۜۨۘۥ۟۟ۤ۫ۧ۫ۛۥۖۥۖۘ۠ۧۤ";
                    continue;
                case 2091142401:
                    OooooOO(0, (int) (this.OooooO0 - this.OooooOo));
                    str = "ۤۤۦۘۗۜۜۘۙۙ۟ۘۨۘۘۥۘۨۚۛ۬ۡۤ۫ۚۢۙۚۥۗۤ۟ۚ";
                    continue;
            }
            str = "ۦ۠۬۟ۤۥۘۙۖۖۘۡۙ۠ۛۜۨ۫ۥۦ۬ۦۜ۟۫ۡۤ۫۫ۙۙۛۚۧۘۢ۫ۧۗۨۢۙۜۖ";
        }
    }

    private void OoooOOO() {
        String str = "ۥۖۡ۠ۙۙ۫ۗۥۗ۟ۗۦۨ۠ۧۜۘۢۖۙ۫ۘۢ۬ۘۖۘۢۖۤۨۘۧۨۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT_VALUE) ^ 292) ^ 940) ^ 2034050566) {
                case -876431319:
                    str = "۬ۜۧۘۘۜۥۘۙۨۜۛۤۜۘۚۛۤۨۖۨ۬ۙۤۨ۟ۛۨۜۛۧ۟۠۟ۙۘ۟۠۠ۙۦۖۘۧۙۡۧۨۥۙۡۛۥ۬۟ۢۤ";
                    break;
                case 76729750:
                    this.o000000o.cancel();
                    str = "ۙۧۢۚۘۨ۬۟ۘۘ۠ۛۡۘۧۨۨۡۛۥ۬ۨۧۘ۫ۜ۬ۢۚۚۧ۠ۤۘۡۘۖۥۘۘ";
                    break;
                case 548227424:
                    return;
                case 1234835803:
                    this.OoooooO.setAlpha(1.0f);
                    str = "ۡ۫ۤۤ۠۠۫ۢ۠۟ۖ۫۠ۜۖۘۤۢۜۜ۫ۥۥۗۗۗ۫۠ۗۥۥۘۦۜۘۘ۫ۗ۬ۚۦۗ۫ۘۡۛۘ۟ۛۧ۫";
                    break;
            }
        }
    }

    private void OoooOo0() {
        OooO0OO oooO0OO = null;
        String str = "ۜۜۧۧۖۖ۠ۨۙ۠۫ۡۘۥۧۛۧ۟ۘۘۡۢۤۖ۫ۨۘۜۤۗۛۜ";
        while (true) {
            switch ((((str.hashCode() ^ 954) ^ 890) ^ 429) ^ 864904304) {
                case -1963778151:
                    String str2 = "ۥۚ۬ۚۘۛۛ۟ۗۚۙۖۗۥۡۘ۬ۘۥۘ۬ۢۛ۟ۙۦۘ۫ۗۡۘۧ۟ۡۦۨۛۗۦۚۜ۫۠ۜ۠ۨۗۙۚۡۢ";
                    while (true) {
                        switch (str2.hashCode() ^ 1566559094) {
                            case -1756000847:
                                break;
                            case -1728656729:
                                String str3 = "ۘۜۤۖۥۘۖۧۨۘۤۛ۬ۨۦۦۘۜۡ۬ۜۨ۬۬ۚۢۦۚۧ۠ۨۛۚۛۤۦ۟ۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ 2104225359) {
                                        case -1749182564:
                                            str2 = "ۢۦۜۖ۫ۡۘۨۘۧۢ۫ۙ۬ۘۧۦ۬ۦۗۘ۠۬ۚۡۘۢۜۚ۠ۛۤۤۙۨۖۦۡۛۙۡۜۦۘۥۢۨۘ";
                                            break;
                                        case -1399116643:
                                            str3 = "ۥ۬ۜ۬۠ۤۨۤۙ۬ۖۦۘۚۜۖۘۗۤۨۘۘ۟ۖۘۚۖۡۚۡۤۚ۠ۗۘۦۥ۟۫ۥ";
                                            break;
                                        case -1265436650:
                                            str2 = "ۢۦۧۘۛ۠۟۟ۤۥۘ۫ۧۦۘ۠ۖۦۘۜۖۛۡۜ۫۠ۚۚۜ۠ۘۘ۟ۘ۫ۙۧ۠ۙۖۥۤۜۙ۫۫ۢ";
                                            break;
                                        case 377624932:
                                            str3 = b7.OooO0Oo().OooOO0O() ? "ۢۖۢۨۗۡۘۤۤۥۥۚ۬ۜۜۥۘۖۗۚۥ۠ۥۥۛۗۘۘ۫ۛۖۥ۠ۡۖۢۡۥۙۘۘۥ۫ۖ۟ۘۛۨۦۨۘ" : "ۜۜۢۛۙ۠۠ۦۥۚۥۡۘۧۙۙۘۨۗۚ۠۫ۖۘۡ۫۫ۖۤۤۢۘۘۘ۬۠ۤۧۘۖۨۧۖ۠ۚ۠ۙۧۜ";
                                            break;
                                    }
                                }
                                break;
                            case -1562413385:
                                str = "ۡۙۦۥۢ۟ۜۛۘ۫۬ۧ۬ۜۨۤ۟ۛۘۥ۬ۙ۟ۙۢۗۖۤۢ۟ۙ۟ۙۚۤۛۖۜۘۢۛ۠۟۟ۘ۠۠ۘۘۗۤۖۘۜۚۧ";
                                break;
                            case -1100720201:
                                str2 = "ۦ۟ۥۤۥۘۘ۬ۤۛۨۜۙ۬ۗ۫ۜۛۜۚۦۗۜۨۙۧ۫ۨۘۤۜۚۚۜ۟ۚۚۥۘۧۨۚۨۖۘ";
                                break;
                        }
                    }
                    break;
                case -1953730978:
                case -1364656630:
                case -645495803:
                case -470745219:
                case 566075987:
                case 1266592606:
                    return;
                case -1839624250:
                    String str4 = "ۦۖۘۘۚۖۛ۟ۢۤ۫۫ۢۡۧۙۚۧۙۡۗۖۘ۟ۖۗۖ۫ۘۘ۠۟۠ۦۥۚۨ۠ۦۚۨ۠ۗۖ۫۠۬ۥۘۥۙۦ";
                    while (true) {
                        switch (str4.hashCode() ^ 2060182035) {
                            case -1572295987:
                                str = "۟ۗۖۦۧ۠۫ۚۧۜ۟ۚۚ۟ۖۨۧ۟ۦۛۥۘۦۡۥۘۡۘۤۙۘۜ";
                                continue;
                                continue;
                            case -652372053:
                                str4 = "ۜۙۥۘ۠ۡۥ۫ۖۘۖۥۧۙ۠ۥۙۤۢۖ۠۟ۨۥۡ۫ۙ۬۟۬ۚۜۥۦۧۙۖۘ";
                                break;
                            case -132607128:
                                str = "ۥۛۙۛۥ۠ۦۨۘۧ۟ۗ۬ۚ۟ۨۥۙۛ۫۫ۙۜۤۖ۬ۙۨۘۧۘۤ۫ۦۘ۫ۦۖۘ۬ۨۖۘۚۖۖ";
                                continue;
                            case 1499081098:
                                String str5 = "ۡۤۦۥۙۡۨ۬ۘ۟ۧۘۥۙۗۤۙۨۘۤ۫ۥۘۗ۫ۦۘۖۧۢۜۦۡۥۗۥۧۤۡۘ۫ۢۦۘۗ۟ۦۘۗۨۚۧ۟ۜۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1425918872)) {
                                        case -1913386739:
                                            str5 = "ۦۚ۟ۚۧۢ۬ۤۚۙۦۡۘۘۜۢۙۙۥ۟ۧ۟ۜۖۥ۟ۤ۫ۛۛۘۙۚۡ۫ۡۧۦۖۦۘ۠ۜ۠";
                                            break;
                                        case -821438061:
                                            str5 = AppContext.OooO00o().OoooOoo ? "ۦۙۙۗ۬ۜۘۨۢۦۘۢۜ۫۫ۖۚ۠ۘۜۥۥۛۡ۠ۥۘۤۤۦۘۖۡۘۘۚۧۜۘۖ۬ۦۘۥۜۧۘۥۤۦ۟۠ۘ۫۠" : "۠ۚۢۖۦۖۨ۫۬ۡۛۥ۟۬ۜۘۧۗۥ۠۫ۜۘۗۢۧۥۧۚۚ۫ۜۥۨۧۘ۬ۜۙ";
                                            break;
                                        case -431042656:
                                            str4 = "۬ۢۖۘۥۨۥۘۡۤۖۢۦۦۤۡۦ۫ۛۖۤۦۧۘ۫۫ۛۚۖۜۘۥۤ۬ۡۘۦۘ۠ۤ۬";
                                            break;
                                        case 1737701169:
                                            str4 = "ۙۗۡۚۨۧۘۢۥۢۤۚۛ۫۟ۢۧ۬ۢۗۙۥ۫۟ۨۛۡۘۘۨۗۗۥۡۧۜۧۘۘۨۖۘۧۢۗۛ۠ۙ۬۬ۦۘۛ۠ۦۘۙۖۦۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1824353884:
                    this.o0Oo0oo = false;
                    str = "ۦۖۨۦۨۨۤۘۥۘۜۚۤۦۖ۠۬۠ۤۖۛۚۧۖۙ۬ۚۙۙ۠ۨۥۛۨ۠ۛۖۘ۟ۡۥۘۛ۠ۛ";
                    continue;
                case -1616881071:
                    String str6 = "ۘ۫ۘۨۦۘۘۨ۟ۖۚۗ۫۬۫۬ۦۚۨۤۦۖۚۘۢۘۤۜۘۡ۫ۛۗۥۦۘ۠ۘۨۘ";
                    while (true) {
                        switch (str6.hashCode() ^ 1712558417) {
                            case -1862295729:
                                str6 = "ۦ۬ۢ۠ۡۘۚۡۘۘۢۦۦۚۦۨۘۤۖۜۘۡۧۘۦۘۗۧ۠ۡۙۛۖۡۦ۫۬ۧۙۨۚ۫ۗ";
                                break;
                            case -1345474831:
                                str = "ۘ۫ۜۨۗ۟ۡۗۡۘۜۨۢۘ۠ۚۖۧۖۘۥۥۡ۠۫ۢ۟ۥۘۛۘ۠";
                                continue;
                                continue;
                            case 1217256046:
                                str = "ۛۜۢ۬ۖۡۨۧۡۘ۠ۗ۟ۧۘۜۘۨۛ۬ۦۜۘ۬ۢۧۢۛۚۤۜۘۦۜۘ۫ۢۦ۟۬ۦۢۙۜۛ۠ۡ۬ۨۜۘ";
                                continue;
                            case 1625525433:
                                String str7 = "ۦۘ۠ۙ۟ۤۙۚۢۤ۫ۨۘۜۘۚۢۤۡۘۢۦ۬ۢۥۗ۫ۡۨۧۘۘۘۦۥۘۗۦۜۘۚ۟ۢ۟ۖۦۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 1856771465) {
                                        case -2089188253:
                                            str7 = i7.OooO().OooOOO() ? "ۚ۠ۨۤۖۗ۬۟ۗۧۨۖۘۙۧۡۘۡۧۧۥۛۤۥ۫ۨ۫ۖ۫ۡۛۨۘۧۡۖۘۙۜ۟" : "ۡۡۦۧۘۡۘۘۨ۟ۧۥ۠۬ۡۦۘۢۚۛۢۚۛ۫۬ۤ۬۬ۛۙۢ۬ۗۛۧۚۤۢۥۤۥۦۤۘ";
                                            break;
                                        case -356651099:
                                            str6 = "ۤۢۜۧۚۢۨۡۖۘۛ۬ۢ۬ۖۤۡ۠ۡۜۚۛۧۚۖۤۛ۠۫ۚ۟ۙۘۛۥۜۙ";
                                            break;
                                        case 1543157451:
                                            str7 = "ۘۡۨۘۛۥۗۡۢۙۚۜۦۘۢۖۡۘ۟ۤۜۘۛۦۦۘۙۨۦۖۗۦۧۘۡ";
                                            break;
                                        case 1560009992:
                                            str6 = "۫ۗۦۛ۬ۖۦۘۛۢۥۢۗۧۘۘۧۧۜۘ۠ۜۨۨ۟ۡۨ۬۬ۤ۠ۤۛۦۤ۠۠ۙ۫۟ۦۛۨۧۘ۠ۧۛۥ۫ۥۡۥ۟ۧۘۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1616385519:
                    String str8 = "۠۟ۜۢۡ۬ۧۖۜۘۛۨۛ۠۠ۡۘۦ۬۠ۢۖ۫ۙ۫ۡۘ۫۠ۦۤۤۢۙ۠ۗۘ۬ۚۘۘۤۤۖۘۛۧۘۡ۫ۛ";
                    while (true) {
                        switch (str8.hashCode() ^ 1682099645) {
                            case -1439882083:
                                str8 = "ۧۚ۫ۦۨۙۦ۟۬ۥۧۜۤۚۥۦ۟ۦۤ۫ۦ۬ۖ۟ۙۙۤۛۖ";
                                break;
                            case -1101710464:
                                str = "ۚۧۨۘ۠ۧۧ۠ۙۢۗۤۦۘ۫ۖ۠ۥۢۢۖۘۨۡۨۥۘ۬ۧۨۘ۬ۨ۠ۦۢۛۖ۠ۚ۟ۙۙ۟ۦۧ";
                                continue;
                                continue;
                            case -987003752:
                                str = "ۘۧۢ۟ۡۥۘۦۦۦۘۨۡۥۘۦۢۥۘۤۦۤۧ۠ۡۨۖ۫ۢۦ۫ۨ۫۬ۡۛ۟ۜۖۥۘ۬ۛۗۗ۫ۡۘۛۛۛۧ۬ۡ";
                                continue;
                            case -750119421:
                                String str9 = "ۥ۬ۖۘۧۖۨۡۘ۠ۗۖۥۘۦۤۖۘ۟ۖۗۤۜ۫ۛۢۦۚ۬ۥۘ۫ۖۘۘۛۜۖۧۛۦۘۥۚۗۙۚۙۨ۫ۡۘۚۙ۬";
                                while (true) {
                                    switch (str9.hashCode() ^ 1003302296) {
                                        case -247529525:
                                            str9 = this.o0OO00O == null ? "ۦۚۦۘۖۚۧ۬ۥ۬ۜ۟ۡۜۢ۟۠ۗۘۧۦۡۘ۫ۗۜۘ۟ۛۜۧۙۦۙۡۧۘۧۧۗ" : "ۨۗ۫ۧۤۜ۠ۡۧۘۘ۬ۨۗ۠ۜۘ۠۫۟ۙۥۗۗ۠ۢۦۦۘۨ۠ۦۖۤۥۡ۠ۡۘۤۘۛۗۥۢ۬ۖۦ۫۠";
                                            break;
                                        case -208207117:
                                            str8 = "۠ۦۡۜۛۜۘ۟ۥۘۘۤۖۧۤۡۧۘۗۗۙۧۗۨۦۛۥۢۚۤۚۦ۫";
                                            break;
                                        case 595455524:
                                            str9 = "ۡۛۤۡ۟ۚۥۘۜۤۛۡۘ۬ۛۖۢۖ۫۫ۘۤۦۖۥ۟ۨ۬۟ۧۚ۬ۦۧۘۤ۬ۚ";
                                            break;
                                        case 1718409245:
                                            str8 = "ۛۙۚۤۜۢۙۖۥۥۥۖۘ۟ۨۡۗۖ۠ۛۡۨۛۚ۫ۡۥۘۜۖۢۢۧۢ۬ۤۖۘۧۨۦۘ۠ۙ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1052873344:
                    i7.OooO().Oooo0o0();
                    str = "ۦۨۜۘ۫۠ۖۤۗۦۥۤ۠ۦۖۙ۫ۨۘ۠ۚۡۘۤۘۥۘ۬ۦۥۘۜۧۨۗۘ۟ۦۦۘۨۘۜۘۖ۠ۡۤۗۧۜ۫ۦ";
                    continue;
                case -698373893:
                    this.o0OO00O = new Oooo000(this, oooO0OO);
                    str = "ۚۧۨۘ۠ۧۧ۠ۙۢۗۤۦۘ۫ۖ۠ۥۢۢۖۘۨۡۨۥۘ۬ۧۨۘ۬ۨ۠ۦۢۛۖ۠ۚ۟ۙۙ۟ۦۧ";
                    continue;
                case -366505567:
                    String str10 = "ۜۧۥۘ۠ۘۨۧۛ۫ۢ۟ۤۛۜۛۖۘۘۨۢۡ۠۫۠۟ۘۘ۬ۤۡۘۡۘ۟ۨۡۘ";
                    while (true) {
                        switch (str10.hashCode() ^ (-528485194)) {
                            case -2131590291:
                                str = "۫ۖ۬۟ۧۨۘۚۡۚۛ۫ۗۢ۠ۚ۬۟ۜۘۚۗ۠ۦۗۘۘ۟ۥۨۘ۫ۜۥ۟ۤۨۥۖ۬ۢۧۜۥۦ۠۫ۜ۬ۧ۠ۨ۠ۧۖۘ۬ۜۘ";
                                continue;
                            case -1054626801:
                                String str11 = "ۛۗۧ۫ۘۛۙۙۘۛۚۖۘۜۜۖۢۥۦۡۚ۬ۖۛۦ۟۠ۙۡۤۢۥ۠ۢۤۤ۠ۗۚۙۦۤۦ۬ۖۥۘۡۤۡ";
                                while (true) {
                                    switch (str11.hashCode() ^ 449034645) {
                                        case -1585071285:
                                            str11 = this.o0Oo0oo ? "ۡ۬ۘۘۛ۠ۨۘۨ۠۠۫۬ۘۘۛۢۦۘۖۧۗۙۖۥۘۧۚۤۗۦۖۙۗۢ" : "ۜ۟ۡۘۧۘ۟ۛۤۜۘۨۨۘۢۨۡۡۢۜۖۡۘ۬ۥۖۘۚۗۘۢۦ۬ۦ۠ۡۛۨۧۘ";
                                            break;
                                        case -1502747846:
                                            str10 = "ۙۦۢۖۨۧۢۢۧۙ۫ۚۤۢۖۦۨۘ۫ۨۤۢۖۘۛۢۥۚۜۧۘۛۙۢ۠۬ۚۤۡۥۤۥ۬ۤۧ۬ۦۨ";
                                            break;
                                        case -1298246580:
                                            str10 = "ۖۥۘۘ۠ۚۖۘ۬ۛۖۘۗۘۨ۬۟۠ۢۗۛۜۤۨۘۚۗۤۗۡۤۦۜ۬ۗ۬۬ۨ۫ۘۘ";
                                            break;
                                        case -297117809:
                                            str11 = "۫۬ۖۦۙۘۘۜ۫۫ۢۡۖۘۖ۫۟ۖۨۛۗ۟ۧۧۘۨۘۤۚۡۘ۫ۧۙۧۦۨۦۛۡۘ۬ۘۙ۟۠ۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case -108185569:
                                str = "ۥ۫۬۬ۘۜۘ۫ۖۥۘۜۡۜۘۦۛ۠ۥۦۖۥۙۨۤۗۦۘ۬ۜ۠۬ۘۨۘۤۙۢ۬ۛۥۢ۟ۜۘۢۢۚ۬۫ۦۘۚۧۤۢۥۢ۫ۛۨۘ";
                                continue;
                                continue;
                            case 570158149:
                                str10 = "۫ۡۘۨۤ۠ۧۦۖۤۧ۬ۖ۠ۜۧۨۗ۟ۘ۟ۢ۟ۙۚۙۤۤۚۨ";
                                break;
                        }
                    }
                    break;
                case -226566098:
                    str = "۬ۧۥ۟ۘۤۧۛۤۢۖۨۘۘ۟ۗۜۖۥۦۤۦۤ۫ۢۜۨۘ۫ۦۜۡۘۦۘۘۡۦۘ۟۬ۙ۬ۥۘ۟ۤۜ۟ۡ";
                    continue;
                case -151490531:
                    this.o0OO00O.removeCallbacksAndMessages(null);
                    str = "۟ۨۛ۟ۛۥۘ۬ۘۜۘ۫ۨ۬۟ۛۤ۠ۗۙۖ۫ۜۛۨۘۡۜۦ۫ۡۗ۟۫ۗۨۙۖۢۜۘۗۤ";
                    continue;
                case -7367872:
                    a5.OooO0O0(getContext(), "runScriptOperate -->\u3000停止引擎");
                    str = "ۗۜۖۡۨۢۗۥۧۡۥۢۤ۬ۨۘۙ۬ۨۢۖۘۘۧۗۨۘۥۙۜۘ۬۟ۢ";
                    continue;
                case 2653890:
                    c5.OooO0Oo(AppContext.OooO00o(), R.string.script_file_verify_failure);
                    str = "ۙۙ۟ۖۡ۟ۖۘۜۡۘۙۢۖۥ۟۫ۧۚۢ۠ۧۤۡۗۙۙ۟ۙۙۨۤ۫ۘۥۘ";
                    continue;
                case 266127240:
                    String str12 = "ۜۧ۠ۧۜۨۢۧ۫ۦۨۥۘۙۙۚۢۛۖ۬۟ۡۘۡ۫ۚۜۘۙۢۡۘۖۨۙۖۨۘ";
                    while (true) {
                        switch (str12.hashCode() ^ 38357067) {
                            case -1783425465:
                                str = "ۜۖۖۧۤۛۤۗۛۜۜۜۘ۠ۛۦۗۥۖۘۨۧۥۘ۟۟ۙۤۜ۬۫ۘ۟ۙۦۘۘ۫ۜ۟ۧ۟ۦ";
                                continue;
                            case -1028086289:
                                str = "ۧۙۙۜۜۘۨ۟۬ۧۧۖۨ۟ۗۘۚۙۦ۬ۡ۠ۚۖۦۡۜۗۥۜۘۤۦۚۦۨۘۘۛۙۘۘۗ۟ۥۘۢۢۚ۫۟۠";
                                continue;
                                continue;
                            case 1176750282:
                                String str13 = "ۥ۠ۥۘۗ۫ۖۙ۫۟ۤۤۛ۟ۛۜ۫ۡ۫ۙۗ۟ۦۜۖۖۗۜۘ۬ۧۨۘ۫ۤۤۛۖۦۘۘۙۖۘۗۤۡ";
                                while (true) {
                                    switch (str13.hashCode() ^ (-1437674295)) {
                                        case -330822018:
                                            str13 = fc.OooO00o().OooO0OO(AppContext.OooO00o()) ? "ۨۧۤۢۢۙ۠۫ۡۘۢۙۨ۠ۡۗۤۜۢ۠ۛۙۤ۫۬ۗۢۢۧۛۜۘۤۖۢ۬ۧۛ۬ۨ۬ۛ۠ۘ" : "ۛ۠ۦۥۡۡۘۜۜۙۜۖۘۘۢ۫۬ۡۘۧۘۙۖ۠۠۟ۨۦ۬ۖۘۦۘۖۘ";
                                            break;
                                        case 51712276:
                                            str12 = "ۡۛۘۘۘۗۦۙ۟ۙۤۖۦۘ۫۠ۦ۬ۤۖۖۨۧۨ۫ۧ۠۬ۛۙۖ۠ۢۚۡۘۗۜۘۚۘۡۚۡۦۘۤۥۗۧۡۧۤ۟۟ۧ۫";
                                            break;
                                        case 1314465991:
                                            str12 = "ۜۦ۬ۥۘۡۘ۬۫ۦۘۛ۠ۚۖ۫ۖۦۗۖۦۚۤ۫۠ۧۤۧۖۘ۫۬ۘۨ۫ۘۘۤۧۘۘۦ۬ۤۗۘۘ۬ۘۜ۠۫ۢۨۥۡۘۥ۟ۜۘ";
                                            break;
                                        case 1388726829:
                                            str13 = "۫ۖۗۘۗ۬۠ۜۡۘۜۚ۟ۦۙۜۘۙۚۜۘۛۜۘۘۚۧۢۘۦ۠ۚ۠";
                                            break;
                                    }
                                }
                                break;
                            case 1800665044:
                                str12 = "ۘۛۡۚ۠۠ۧ۫ۧۡۖۖۘۥۧۛ۬ۘۧۘۦۗ۟ۡۦۘۥۥ۬۫ۖۢۡ۠ۜۘۦ۟ۘۥۥۘۢۦ۬";
                                break;
                        }
                    }
                    break;
                case 301911895:
                    String str14 = "ۤۧۦ۬ۗۧۜ۟ۙۛۗۢۙۦۥ۠ۥ۫ۥۜۨۘۢۤۙۢ۬ۖۢۚۦۙۜۘ۫۬۠۫ۧۦ۟ۡۥۚۛۤ۟۟";
                    while (true) {
                        switch (str14.hashCode() ^ 1505086276) {
                            case -1978208155:
                                str = "۬ۘ۬۟۫ۧۧ۬ۖۧۧ۫ۖۚۘۘۗۘ۬ۗۨۖۘۛۤۢ۫ۛۧ۟ۗۧۥۨۧ۬ۙۨۚۖۖۘ۬ۗۦۘۛۘۙۢ۟ۡۘۘ۟ۤۚۢۨ";
                                continue;
                                continue;
                            case -483391895:
                                str = "ۦۜۖۨۘ۫ۛۤۦۘۤۧۜۜۘ۬ۘۧۘۦ۫ۥۘۡ۟۬ۛۛۡۚۥۜۜ۟ۤۙۜۘ";
                                continue;
                            case 673252353:
                                String str15 = "ۧۧۤۧۙۗۙۙۖ۫۟۟۬ۨۜۘۡ۠ۖۘۨۢ۠ۖ۫۫۬ۚۜۘ۬ۦۖۤۗۜۨۙۜ۫ۦۤۘ۟ۖۘۜۖۘ۟۟ۧ";
                                while (true) {
                                    switch (str15.hashCode() ^ 931440863) {
                                        case -1235941712:
                                            str15 = "ۜ۠ۚ۬۠ۧۤ۟ۦۘ۠ۚۘۘ۬ۡۘۙۙۥۘۤ۟۫ۛ۬ۥۧۘۘۘ۫۠ۘۘۗۥۧۘۘۖ۟";
                                            break;
                                        case -950713049:
                                            str14 = "ۘ۠۟ۚ۬ۧۚ۟ۚۗۚ۠ۡۥۘۤۧۡۛ۫ۖ۫ۦۗۡۙۜۘۦۡۦۘۡۘۡۢۧۘۘۧ۟ۖۘ۠ۘۥۢ۬ۧۧۚۦ";
                                            break;
                                        case 128090617:
                                            str14 = "ۢۤۘۜۡۚۜۨۗۤۡ۫ۘۘۚۖۗۘۤۚۜ۫ۗۛۦۗۡۘۛۙ۟ۙۘۛۙ۠ۜ";
                                            break;
                                        case 996655449:
                                            str15 = !t4.OooOO0(getContext()) ? "ۤۛۘۡۙۡۦۧۦۡۜ۬ۚۙ۠ۚ۠ۤۖۚ۫ۤۧۚۡۨ۫ۖۢۘۘ" : "۠ۢۥ۫۬ۡۚ۬ۗۢۦۧۘۖۘۦۘۡۜ۟ۘۙۦۘ۫ۡۘۘۗ۟ۗ۠ۥ";
                                            break;
                                    }
                                }
                                break;
                            case 1110004014:
                                str14 = "ۚۙۡۘۜۘ۫ۧۧ۫ۡ۬ۜۨۤۙۖۗۥۡۘۦۘ۫ۦۧ۬ۡۖ۠۟ۤ۫۟ۡۚ۟ۖۛۘۘۜۙۚۢ۟ۜۨۛۧۜۚۡۘ۟ۙۘ";
                                break;
                        }
                    }
                    break;
                case 451546226:
                    c5.OooO0Oo(AppContext.OooO00o(), R.string.version_too_low);
                    str = "ۡۙۥۤ۟ۤۙۘۚ۬۠ۖۜۗۖۘۢۨۗۚۘۙۗ۫ۗۜۧۦۜۙۗ";
                    continue;
                case 508861288:
                    h7.OooO0o0(new OooOO0O(this));
                    str = "۬ۧۥ۟ۘۤۧۛۤۢۖۨۘۘ۟ۗۜۖۥۦۤۦۤ۫ۢۜۨۘ۫ۦۜۡۘۦۘۘۡۦۘ۟۬ۙ۬ۥۘ۟ۤۜ۟ۡ";
                    continue;
                case 759922683:
                    str = "۠۠ۜۚۖ۠۬ۜۢ۠ۛۥۗ۬ۘۗۥۥۤۗۡۘۗۥۦۘ۟ۗۡۜۚۦۘ";
                    continue;
                case 954578019:
                    c5.OooO0OO(getContext(), getContext().getString(R.string.network_off));
                    str = "ۜۚۙۤۢۡۘۤۧۛ۫ۙۙ۫ۢۢۡۨۚۗ۫ۘۘۖۗۡۚۗۗۦۙۘۘۨۛۥ۟۬ۘۘۥۤۥۘۤۛۙ۬ۡۨ۟ۢ";
                    continue;
                case 1145038314:
                    this.o0OO00O.postDelayed(new Runnable() { // from class: z2.w6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.OoooOoO.OoooO();
                        }
                    }, m.ag);
                    str = "۠ۘ۬ۥۤۜ۠ۖۜۦۧۤۛۦۡۘۧۡ۬ۜۦۜۘۦۗۙۚۖۚۗۨۥۚۛۘ۟ۗ۠ۦۜۛۘۢۨۘ";
                    continue;
                case 1591979170:
                    this.o0Oo0oo = false;
                    str = "ۦ۬ۤۥۢۨ۠ۜۧۦ۫۠ۗۨۥۘ۫ۘۨۤۘۡۖ۟ۧۜۜ۫ۤۧۜۘ۫ۤۖۜۡۨۘ";
                    continue;
                case 1659398138:
                    this.o0Oo0oo = true;
                    str = "ۖ۠ۤۛۖۥۖ۠ۥۜۖۚۢ۠ۜۖ۠ۖۜۚۙ۫ۤۦۨۘۡۘۢۧۛۜۘۖۘۢۛۡۚۢۤۖۘۢۨۥۛۗۡۡۥۦۚۘ";
                    continue;
                case 1800192911:
                    String str16 = "ۗۗۖۧ۬ۜۥۧۦۘۨۗۜۗۜۘ۠ۙۘۙۛۥۤۘۖۤۤۨ۬ۜۡۘۡۗۨ۟ۛۜۘ۬ۘۧۢ۬ۘ۟ۡۛۢۤۥۙۜۘۜۖۨ";
                    while (true) {
                        switch (str16.hashCode() ^ (-1527956719)) {
                            case -1497056571:
                                String str17 = "ۖۜۦۙۢۛۛۥۨۤۧۛ۬ۗۖۜۗۛۧ۟ۚۛ۠ۖۡۦ۠ۥۨۜۥۘۧۦۤۤۜۤۛ۠ۙ۬۠ۢۜ۬ۖۘ";
                                while (true) {
                                    switch (str17.hashCode() ^ (-1495947476)) {
                                        case -708193776:
                                            str17 = "ۙۗۛۚ۠ۦۘۨۜۡۘ۬۬ۦۘۧ۟ۖۤۢۢۡۤۛۙۡۥۘ۠ۧۥۘ۬۫ۥۘۦ۠۬ۨۜۖۢۧۚ۫ۛۧۗۛۨۨۧۘ";
                                            break;
                                        case 670500024:
                                            str17 = !b7.OooO0Oo().OooOO0o() ? "ۛۡۘۖۦۜۨۦۨۥۡۙۨۥ۫ۤۖۚۛۖۖۘۜۚۨۘۛۥۗۗۙۨۥۧۦۘۧۨۜۘ" : "ۨۧۨۘۤ۫ۥۘۦۜۤۗۛۡ۫ۘۦۘۜۦ۟۫۫ۘ۫۬۟۟۬ۦۘۧ۬ۤ";
                                            break;
                                        case 1208345442:
                                            str16 = "ۜۦۨۘۥۡۙۢۤۤۘۤۦۘۥۤ۠۬ۦۦۘۢ۬ۥۘ۠ۧۘۘۨۦۥۘۧۘۧۘۨۡۢۥۛ۟";
                                            break;
                                        case 1647222896:
                                            str16 = "ۘۨۛۚۘۖۨۙۘۘۚۚۤۛۖۘۢۚۦۨ۠ۧ۬ۚ۟ۛۙۜۘۚ۬ۦۘ۬ۧ۬ۡۥۡۘۢ۟ۙ۫ۢۚۛۨۗۦ";
                                            break;
                                    }
                                }
                                break;
                            case -1446579223:
                                break;
                            case -109500874:
                                str16 = "ۜۛ۟ۧۙۨۘۦ۠ۤۦۛۗ۟ۚۧۚۥۤۦۛۧۙۦۖۘۦۜۡۘۢۘۚۢۚۨۢۚۖۛ۟ۘۘ۟۠ۛ";
                                break;
                            case 842451706:
                                str = "ۨۤۦۘ۠ۗۦ۟ۜۜۥ۠ۢۚۡۗۢ۫ۢۨۡۘ۠ۙ۬۬ۢ۬۟ۚۢۜ۫ۨۘ۬ۘۛۡ۬ۨۘ۟۬ۥۘۤۤۘۘۡۖۥۥ۟ۢۤۙ۠";
                                break;
                        }
                    }
                    break;
                case 1935360388:
                    c5.OooO0Oo(AppContext.OooO00o(), R.string.environment_init_failure);
                    str = "ۗۙۗ۠ۗ۬ۛۙ۫ۧۗۢۤۛۡۚ۫۫ۡۘۖ۟ۡۗۖۘۘۙۙۡۜ۫ۦۘۧۢۚ۠۠ۦۘۚۛۘ۫۬ۚۘۧۛۡۖۥ۬۫ۢ";
                    continue;
            }
            str = "ۨۖۡۘۜۨۨۡۤۗۡۧ۟ۘۦۤۡ۟ۦۥۜۢۚۗ۫ۖۧۜۗۜۦۘۚ۬ۤۜۥۛۤ۠ۘۖۧۘ";
        }
    }

    private void OoooOoO() {
        String str = "ۗ۟ۥۦۖ۠ۥۤۗۧۨۘۢۥۧۘ۫ۡۥۘ۫۬۟۟ۦۛۜۦۘۘۗۥ۬ۛۗۡۚۘۛۥۢۤ۬ۥۚ";
        while (true) {
            switch ((((str.hashCode() ^ 975) ^ 825) ^ 497) ^ (-1668060240)) {
                case -1519091786:
                    str = "ۨۖۗۤۜ۠ۨۖ۬ۦۦۦۜۤۡ۫۟ۢۖ۫ۛۨۥۧۘ۫ۜۘۘۘۡۥ";
                    break;
                case -1267321063:
                    return;
                case -1033234790:
                    h7.OooO0oO(this.o0O0O00);
                    str = "ۚۜۤۨۦۦۘۘۘۛۙۢۥۦۜۛۤۘۜۧۖۘۡۘۦۘۡۢ۫ۙ۟ۥۘۧۥ۫ۘۗۖۘۜۥۛ۠ۨۚۛۤۚۖۡۙۥۥۡۖۢۖۘ";
                    break;
                case -285106052:
                    this.o0OO00O.sendEmptyMessageDelayed(1001, m.ag);
                    str = "ۜۧۢۙۖۦۘۜۙۗۜۢۨۧۚۦۤۦۡۘ۠۬ۖ۠ۖۖ۟ۜ۟ۜ۠ۖۘۚۦۙۢۚۥۘۘۗۘۘۨۨۛۚۖۨۘ۟ۧۚ";
                    break;
                case -231581116:
                    String str2 = "۠۠ۘۘۥۙۦۘ۬ۜۤۤ۟ۡۚۜۘۘۨۘۘۘۨۖ۠ۗۘۘۘۜۜۢۦۘۘۛۖۧۘۛۥ۠ۢ۠ۡۦۨۜۘۡۘۦۧ۟ۢ۟۬ۧۤ۟";
                    while (true) {
                        switch (str2.hashCode() ^ 973763860) {
                            case -1649443013:
                                str2 = "ۖۥۤۥۦۦۦ۠ۜۘۧۖۨۘۡۘۥۘۦۜۘۘۗۢۨۘۥۗ۫ۡ۫ۘۘۤۨۘ";
                                break;
                            case -1166902043:
                                str = "ۧۤۜۘ۫ۡۜۛ۠ۚ۟۠ۨۘ۫ۧۜۧ۫ۥۘۜۨ۠ۙۜ۟ۨۡۙۨۖۧ";
                                continue;
                            case -838883997:
                                str = "۠ۚۖۢۧۖ۬ۚ۟۫ۨۘۛۖ۬ۢۡۦۘۤ۠ۥۚۘۤ۠ۥۘۘۢۧ۟ۖۧۖۘ۟ۨۜۘۘۨۡۘۦۘۘۜۗ";
                                continue;
                            case -524216510:
                                String str3 = "ۡۘۥ۟ۜۚۧۧۖۧۜۘۗۦۨۥۧۙۨۦۨۘۛۘۘۘ۟ۜۢۦ۠ۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ 6429784) {
                                        case -2097763826:
                                            str2 = "ۙۦۥۘ۟ۤ۬ۤۥ۠ۛۢۦۘۖۘۧۥۜۙۘۙۚۘۧۘۡۥۥ۬۠";
                                            break;
                                        case -1424311698:
                                            str3 = "ۘۛۥۘۛۖۦۡ۟ۚۗ۟ۖۘ۬ۦۧۘ۬ۢۛ۫ۥۢۥۗۖۘۡۤۗۙۥۖ۫ۤ۟۠۬ۧ";
                                            break;
                                        case -646164449:
                                            str3 = m7.OooO0o0().OooOO0 == null ? "ۢۘۜۘۜۥۢۦۙۘۘۗۙۤ۫ۛۖۥۙۦۘ۠ۘۧۘۖۢۘۘ۬ۥۜۘۡ۟ۢ" : "ۤۙ۬ۖۡ۟ۤۥۦۘ۠ۤ۠ۧۨۖۘۦۖۗۜ۟ۦۥۚۨۘۢۢۚ۠ۥۜۘۦۡۦ۬ۢ";
                                            break;
                                        case 407282822:
                                            str2 = "ۨۤۖ۟ۤۡ۫۬۟ۜۨۦۜۥۘ۫ۥ۫ۢۢۙۚۘۚ۬ۤۛۨۡۨ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 7433832:
                    Oooo0o0();
                    str = "ۨ۠ۤۥۥۖۥۘۘ۟ۨۚۚۨۥۖۚۘۤۛۖۨۚۦۘۨۥۦۘۘۡۘۘۥۦ۫ۖۛ۠ۤۘ۠ۛۥۛۢۦۧۘۛۧۢۤۜۧۙۢ";
                    break;
                case 359501346:
                    str = "ۜۧۢۙۖۦۘۜۙۗۜۢۨۧۚۦۤۦۡۘ۠۬ۖ۠ۖۖ۟ۜ۟ۜ۠ۖۘۚۦۙۢۚۥۘۘۗۘۘۨۨۛۚۖۨۘ۟ۧۚ";
                    break;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0029. Please report as an issue. */
    private void Ooooo0o() {
        int[] iArr = null;
        ImageView imageView = null;
        int i = 0;
        ImageView imageView2 = null;
        int i2 = 0;
        ImageView imageView3 = null;
        int i3 = 0;
        ImageView imageView4 = null;
        int i4 = 0;
        ImageView imageView5 = null;
        int i5 = 0;
        ImageView imageView6 = null;
        int i6 = 0;
        int i7 = 0;
        ImageView imageView7 = null;
        String str = "۬۠ۤۘۜۛ۟ۖ۠۫۟ۜۘۛۙۙۢۡ۠ۤۜۗۡۦۨۡ۠ۘۘ۫۟ۦۘ۬ۥۖۘ۬۬ۤۦۥۗۚۗۚ۬۟ۘۘۦ۟ۧ";
        while (true) {
            switch ((((str.hashCode() ^ 976) ^ 219) ^ 88) ^ (-217107572)) {
                case -2127131146:
                    str = "ۚ۠۟۫ۨۥۘۥ۠ۨۧۢ۟ۤۖۘۚ۟ۥۤ۬۫ۖۖۘ۠ۛۥۘ۟ۤۛۖۡۚۛۚ۬۬ۛۗۢۥۘۘ";
                    break;
                case -2108426840:
                case -744204491:
                case -523313319:
                case 1143030081:
                case 1208507705:
                    str = "ۢۛۖۘۢۤۚ۬ۙۦۘ۫ۙۥۘ۠۫ۖۧۨ۟ۦۢ۫ۗۢۙۢۡۤۚۘۨۧۗۛۧۚۜۘ";
                    break;
                case -2071309332:
                    str = "۟۬ۘۘۙۖۚ۫۬ۛ۠ۥۢ۫ۦۥۘۡ۫ۘ۟ۤۦۘۙۡۜۘ۬ۜۡۘۢۥۜۢۢۗۗۢۘۘۨۖ۫۠ۙ";
                    i7 = i5;
                    break;
                case -2061971926:
                    iArr = new int[2];
                    str = "ۚ۫۫ۧۜۜۨ۬ۖۘۡ۟۬۟ۚۖۘۤۜۜۘۜۡۦۘۗۧۘۧۡۜۨۥۛ۬ۗۘۗۜۜۥ۫۟۬ۡۜۧ۬ۛۗۖۖ";
                    break;
                case -2039079822:
                    String str2 = "ۗۖۘۢۜۛۦ۟ۗۥ۫۟ۥۘۡۘۡ۟ۘۘ۟۠ۦۡۗۙۙ۫ۨۘۘ۫ۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1012278994)) {
                            case -762199012:
                                str = "ۜۚ۠ۧ۟ۦۢۦ۟ۖ۬۠ۡۨ۬ۛۤۖۘۨۧ۫ۛۜۡۘۤۥ۫ۡۦ۟ۘۨۦۛۙ۠ۡۡۘۡۘۚ۟ۦۘۗۦۗ";
                                continue;
                            case 4319630:
                                String str3 = "۫ۦۘۘۤۖۜۘۜۦ۠ۦۜۥ۟ۛۛۥۘۢۦۙۦۘۖۛۘ۟ۧۥۘۖۡۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 487323849) {
                                        case -2082313889:
                                            str3 = b7.OooO0Oo().OooO0OO == 4 ? "ۡۘ۠ۢۜۧۦ۠ۜۘۦۤۦ۠ۧۜۜۗۥ۬۫۬ۙ۠ۜ۬۟ۖۚۚۜۘۧۤ۬ۤۤۜۘۥۢ۬ۧۧۤۤ۟۟ۥۥۥۘ" : "ۡۦۥۘۘۧۘۘ۟۫ۨۘۗۙۦۥۗۜۙ۠ۙۙۦۡۘۧۨۘۛۥۚۤۙۧۦ۬ۡۡۛۘۘۡۗۡۘۨۥ۟ۗۗۧ۠ۢۖۘ";
                                            break;
                                        case -1722272554:
                                            str2 = "۬ۦۘ۫ۥ۫ۧۨۡۚۧ۫ۦۥۧۥۖۦۘۘۗ۬۠ۧۧ۠ۡۘۘ۟۠ۡ";
                                            break;
                                        case -1391765630:
                                            str3 = "ۧۛ۠ۛۨۡۦ۫۠ۜۧۙۗۧ۟۠ۗۛۧ۬ۤۘۡۡۚۨۛۚۘ۠ۛ۫ۡۖۜۖۖۘ۠ۦۨۘ۟ۧۡۜۛ۟";
                                            break;
                                        case 1591543509:
                                            str2 = "ۛۙۖۥۧۥۘۡۗۨۘۡ۬ۨۘۛۥۜۘۚۚۚۢ۫ۚۧۗۛۧۦۘ۠ۥۦۙ۬۟۟ۛۙۥۜۘ۟ۚۡۘۜۛۦۘ۠۠ۜ۫ۧۚۨۙ۟";
                                            break;
                                    }
                                }
                                break;
                            case 1031794501:
                                str = "ۨۗ۠ۘۘ۠ۦۛۢۛۨۦۘۘۘۙۧۗۖۘ۟ۚۦۡۛ۠ۘۧ۟ۧۖ۟";
                                continue;
                            case 2052819119:
                                str2 = "ۗۤۦ۫ۘۗ۫۫ۡۘۖ۫ۖۙۧۘ۠ۗۨۘۤۖۤۛۙۜ۬ۦۧۘۖ۟ۥۘ";
                                break;
                        }
                    }
                    break;
                case -1850118339:
                    String str4 = "ۦۜۥۘۚ۟ۤ۟ۡۨۘۦۘۙۦۥۘۧۖۘۖۥۖۘۡۘۘۘۥۡۨۘۛۘ۫ۗۚۥۤ۟ۤۤۛۨۘ۠ۥۘۜۜۚۧۢۢ";
                    while (true) {
                        switch (str4.hashCode() ^ 1777918424) {
                            case -702397684:
                                str = "ۙۡۘۘۧۤۡ۟ۥ۟۠ۙۡۘ۟ۘۥۘۦۧۘۘۖ۠ۜۧ۫ۡۘۗۧۜۘ۫ۡۘۤۘۤۢۢ";
                                continue;
                            case -5115838:
                                str4 = "ۡۜۖۦۛۗۗ۬ۚ۠۟ۤۢ۫ۚۢۦۙ۫ۜۙۛۧۚۡۘۛۦ۬ۘۥۘ۫ۢۜۢ۟ۘۨۤ۟ۛ۠ۨۙۡۖۘ";
                                break;
                            case 440975658:
                                str = "ۨۜۦۘۨۥۙۛۙ۬ۢ۠۠۫ۜۘۗۗ۟۫ۨ۬ۖ۟ۤ۠۟ۙۤ۬۟ۡ۠۫ۦ۠ۦۘ۠ۗۢۡۚۖ";
                                continue;
                            case 1138649247:
                                String str5 = "ۚۛۛ۬۫ۘۢۨۘ۬ۨ۬۫ۤۥۖۥۤۦ۬ۗۦ۬۬ۢ۟۬ۨۘۛۖ۟ۘۘۢۡۥ۬ۦۜۘۛۘۥۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1166788143) {
                                        case -2004891293:
                                            str5 = ((float) iArr[0]) >= (((float) w3.OooOoo0(getContext()).x) - this.OooooOO) / 2.0f ? "ۚۡۜۡ۬ۨۘۦۗۗۗۤ۠ۤ۠ۨۘ۬ۜ۠ۦۚۦۥۨۦۘ۠ۨۛۙۘۗۦۘۥۡۛۘۥۥۘۚۗۥۘۤۙۘۘۨۢۡۘۙۛۦۛۙۛ" : "ۧۛۛۧۡۥۘۦۖۖۘ۟ۚۨۨۜۖۘ۠۬ۡۘۡۘ۟ۧۡۨۘ۬ۦ۟ۖ۫ۡۘۧۧۦۤۗۗۤ۫۠۫ۨ۟";
                                            break;
                                        case -1914043095:
                                            str4 = "ۚۢۘ۠ۚۖۨۢۗۨ۟ۢۚۛۨۘۖۙۖۘۡۚۛۗۜۘۙۦۖۘۥۡ۠";
                                            break;
                                        case -586707194:
                                            str4 = "ۗۤۘ۫ۗ۬ۚۨۤۢۘۘۘ۠۠ۖۗۡۢۦۙۖۘۛۜۙ۫ۛۘۚۥۥۛۧ۬ۧۨ۟";
                                            break;
                                        case -293394376:
                                            str5 = "۫۠ۗۡۘۢۚ۬ۨۘۜۜۜ۠ۧۡ۫ۚۧ۫ۜۜۡۢۗۤۧۚۜۘۙۧۛۗۧۤۤۤۥۘۦۥۨۚۢۛۨ۫۠ۖۨۥۘۘۜۘۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1339884066:
                    i = R.drawable.elfin_pause_left_edge;
                    str = "ۦۡۘۘۚۖ۫ۜۡ۟ۥۢ۟۬ۖ۟ۡ۫ۖۖۜ۬ۙۚۦۧ۟ۡۜۨۘۘ";
                    break;
                case -1305019856:
                    i5 = R.drawable.elfin_normal_right_edge;
                    str = "ۥ۠ۛ۟ۥۦۡۥۥۘۘۧ۬ۦ۬ۙۡۦ۠۠ۘۧۡۧۦۘۙۗۥۘ۟ۤۦۚۚۘۘۙ۫ۨۜۤۨ۬ۦۨۘۗۤۜۘۗۢۗ";
                    break;
                case -1249112292:
                    str = "ۢۤ۫ۘۥۥۥ۫ۤۗ۬ۡۖۗ۠ۗ۬ۜۙ۬ۖ۫ۡۚۤۨۦۖۡۘ";
                    imageView7 = imageView;
                    break;
                case -1188844037:
                    str = "ۢۛۖۘۢۤۚ۬ۙۦۘ۫ۙۥۘ۠۫ۖۧۨ۟ۦۢ۫ۗۢۙۢۡۤۚۘۨۧۗۛۧۚۜۘ";
                    imageView7 = imageView6;
                    break;
                case -1071788110:
                    String str6 = "۬ۘۖۙ۟ۦۘ۟ۚۥۘۚ۬ۨۘ۠۠ۖۘۚ۟ۚۗۗ۫ۘۧ۬ۖ۬ۥۚ۟ۜ۠ۙۨۡ۟ۘۖۤۦۘ۠ۗ";
                    while (true) {
                        switch (str6.hashCode() ^ (-1282310980)) {
                            case -1196102431:
                                String str7 = "ۙۘۥۡۗۨۢۘۥۜۢۥۘۤۤۧۚۨۜۥ۟۠۟ۖۡ۫ۗۖۘۜۨ۠ۥ۠۟۟ۧۦۛۖۦۘۛۤ۫۫ۘۜۤۧۥ";
                                while (true) {
                                    switch (str7.hashCode() ^ 964338865) {
                                        case -1885587804:
                                            str6 = "۬ۥۘۘۨۙۨ۟ۥۡۢ۠ۥۘۛۤ۫ۚۘۨۘ۟ۥۧۦۙۥۘۖۦۘۙ۟۬";
                                            break;
                                        case -1090561282:
                                            str7 = b7.OooO0Oo().OooO0OO == 3 ? "ۗۙ۬ۗۛۖۖ۟ۜۘۢ۫۫ۗۡۖۘۘ۫ۦۘ۬ۘۛ۬ۥۡۤ۠ۙۚۚۙ۬ۖۥۚۦ۠" : "ۧ۬ۜۘۡۥۧۘ۫ۖۘۘۥۥۥۦۢۖۘ۠ۘ۟ۖ۠ۖۦ۟ۚ۬ۘۡۘۨۙۨۘۖۛۙ۠۬ۡۘۡۡ۫ۥۧ۫ۦۗۘۘۨۚۡۘ۫ۦۗۡۗۖ";
                                            break;
                                        case 1294759518:
                                            str6 = "ۡۤۛۜۘۙۤۦۥۚ۬ۚۘۖ۫ۖۗ۫ۜ۠ۡ۟۟ۨ۠ۡۦۢۨۚۤۛۖۛۦۛ";
                                            break;
                                        case 1988213893:
                                            str7 = "ۙ۫ۡۘ۬۠ۨۡۚۤ۬ۨۘۡۤۘۗۤۙۖ۟ۚۚۗۗ۟ۢۤۤۦۘ۬ۘۨۗۚ۫۠ۘۡۗۜۜ۫۟ۖۘ۬ۚۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 395029390:
                                str6 = "ۗۥۧ۬۫ۜ۬ۨ۬۠ۥۧۜ۟ۙۜ۠۟ۙۗۢۙ۟ۗۗۡۘ۬ۤ۫ۤۦۡۘۛۖۖۘ";
                                break;
                            case 1016215999:
                                str = "۫۫ۨۛۨۤ۟ۖۖۘۖ۬ۜۘۧ۟ۖۘۖۡۡۧۛ۟ۥۖۡۘۘ۠۟ۗ۫ۨۘ";
                                continue;
                            case 1664349695:
                                str = "۬ۗۨۦۙۨۜۗۚ۫ۡۥۘۜۨۦۗۜۙۛ۟ۖۙۦۦۘ۠ۘۘۘۡ۬ۦ۬ۥۖۡۚۤۘۚۨۖۦ۫۟ۢۚ۟ۘۧۘ";
                                continue;
                        }
                    }
                    break;
                case -898422997:
                    i6 = R.drawable.elfin_run_right_edge;
                    str = "ۜ۬ۚۙ۫ۚۗۧۡۘۜۜ۟ۛۚ۬ۖۤۢۖۨۘۨۤۦۢۗۤۛۦۙۦۦ۟ۢۚ۟ۨۧۨۢۥۘۢۦۤۦۘ۟ۗۤۚ۫ۧ";
                    break;
                case -615960069:
                    str = "ۙۛۙۜۗۥۘۜۥۦ۬ۦ۬ۥۦۚۜۗۜ۟ۗۚۚ۠ۗ۫ۢۗۗۧ۫ۖۨۗۨ۫ۦۘ۬ۙۢۖ۬ۨۥ۬۠ۜۚۙۘۘۜۗۜۘ";
                    i7 = i6;
                    break;
                case -608820821:
                    imageView6 = this.OoooooO;
                    str = "ۗۜۙۤۢۥۘ۫ۦۤۘۘۜۚ۬ۧۜۜۘ۠ۖۢ۟ۗ۟ۡۤۧ۠ۤۦ";
                    break;
                case -554081388:
                    String str8 = "ۙۧۖۦ۟ۦۘۡۨۜۘۛۧۨۢۨۘۧۙۚۥۢ۫ۛۖۥۗۡۖۨۛۧۖۧۘۤۖۜۘ";
                    while (true) {
                        switch (str8.hashCode() ^ 1923318576) {
                            case -26049097:
                                str8 = "ۧۢۦۘ۟ۛۦۛۥۧۘۗۥۗ۠۟ۛۤۘۘۘۜ۠ۧۦۦۘۘۢۙۥۢۗۚۨۖۜۜۗۖۘ۫۠ۥۘۢ۟ۡۜ۟ۨۛۤۥ۬ۜۘۘۧ۠ۡۘ";
                                break;
                            case 255589533:
                                str = "۫۟ۖۘۤۡۡۘۤۙ۬ۙۤ۫ۚۦۙۡ۟ۡۢۖۜۘۜۘۧۘ۠ۧۚۛ۠ۧۖۜ۠ۡۨۜۘۙۥۗۘۥۘۢ۫ۖۢۗ۬ۡۨۧۘ۫۟ۤ";
                                continue;
                            case 464572307:
                                str = "ۦ۠ۙۨۘۥ۬ۖۛۦۡ۟ۦۦۘۖۛۚ۟ۜۥۘۦۧۡۘۘ۠ۚۛۛۜۘۧۤۧۥۗۜۡ۟ۡۖۨۛۤۛۗ۠ۗ۫";
                                continue;
                            case 2142025861:
                                String str9 = "ۙۖۧۘۘۜ۠ۘۚۖۘ۬۬۟ۢۤۙۖ۫ۡۘۛۢۨۘۡ۟ۜۘۥۚۥۨۘۡ۫ۢۛۨ۬ۢ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-44460482)) {
                                        case -1086752475:
                                            str8 = "ۙۥۖ۟ۦۦۘۘۙۖۖۡۖۘ۫ۡ۟ۗۧۚۙ۬۟ۛۜۦۦۗۥۜۜۘۡۥۦۛۧۢۛۛۘۘۚۘۜ";
                                            break;
                                        case -119688228:
                                            str9 = b7.OooO0Oo().OooO0OO == 4 ? "ۗۚۢۜۜۡۤۜۘ۫ۚۛۥ۟ۘۚۙۢۡۙۤ۠۬ۘۘۖۙۥۢۛۡ" : "ۤۢۖۘ۠ۙ۫ۥۦۗۤۙۖۨۧ۠ۧۗ۠۫ۛۗۥۖۛ۠۬ۡ۟ۗۢۥ۫ۚۦ۫ۨۘۡ۠ۖۤۦۖۘۢۘۜۘۧۨۤ";
                                            break;
                                        case -31455499:
                                            str9 = "ۜۖۤۘۘۨۘۙۙۖۥۙۤۡۨۘۨۧۘۥۨ۬ۢۧۙۘۧۡۘۥۥۨ";
                                            break;
                                        case 1798037861:
                                            str8 = "ۜۦۧۙۛۛۢ۟ۦۨ۟ۚۥ۬ۗۡ۠ۡۘۤۜ۫۬ۖۦۘۗۙۘۖۤۜۚۘۘۨۙۨۘۖۙۗۗ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -462147330:
                    str = "ۤۦۧۘۡ۠ۘۗۖۘۖۦۘۜۙ۬ۜۤۖۢۤ۟۟۟ۜۘۚۨۧ۟۠ۥۥۦۧۘۤ۠ۨ";
                    i7 = i4;
                    break;
                case -412796760:
                    imageView2 = this.OoooooO;
                    str = "۟ۚۖۘ۫ۙۧۥۘۡۤۤۢۛۨۥۘۛۡۙ۟ۧۨ۠ۤۜ۫ۛ۠ۖۘۢۢۦ۫۟۫";
                    break;
                case -397541525:
                    i3 = R.drawable.elfin_run_left_edge;
                    str = "۠۫ۡۙۨ۟ۨۘۥۘۚۡۖۜۢۧۥۧۨۗۚۦۚ۟ۧ۟ۢۧۦۡۥۛۨۡۨ۠";
                    break;
                case -272276761:
                    str = "ۗ۬ۦۘۢ۫ۡۘ۫ۥۖۘۚۜۘ۬ۖۘۘۙ۬۠ۡۜۖۘۛ۠ۚ۬ۤۦۖۨۙۡۢۜ۬۫ۜۘۚۢ۫۬ۜۖۗۜۘ۟ۙۨ";
                    imageView7 = imageView5;
                    break;
                case -172143410:
                    str = "ۢۚۚۥۘۨۘۗۨ۟ۢۚۘۘۙ۬ۨۗۛۨۗۦۚ۫ۗ۫ۜۖۗۖۧۖۙۙ۬۠ۚ۠";
                    i7 = i;
                    break;
                case 73537441:
                    imageView = this.OoooooO;
                    str = "ۨۚۖۘ۫۠۟۬۟ۖۘ۟ۤۖۦۜۙ۠ۤۨۘۙ۫ۤۦ۟۟ۛ۟ۛۜۦۦۨۗ۟ۙۨ۠ۛۘۘۢۗۦ";
                    break;
                case 107149613:
                    str = "ۨۜۙۥۜۘۘ۟ۢۢۢۘۦۗۜۨۘۜۚۗۗۛۦۨۜۧۘ۠۫ۨۘۙۧۘۘ۠ۖۡۘۡۘۜ";
                    imageView7 = imageView2;
                    break;
                case 149298560:
                    str = "۫ۘۘۘ۬ۙۨ۟ۗ۟ۜۙۚۙ۟ۡۘۘۖۚۛۢۥۘۙ۠ۘۛۘۨۙۥ۬ۧۢ۫۫ۧۜۘ";
                    i7 = i2;
                    break;
                case 296453465:
                    imageView7.setImageResource(i7);
                    str = "ۛۘ۠ۛۜۨۖۘ۬ۚۢۥۡۘ۫۫ۙۨۧ۫ۜۢۗۖۘ۠ۜ۫ۤۚۨۜۙۨۘۨۤۡۘۡۙۖ۫۟ۖۘۤۗۗۚ۬۠ۘۢۙ۬۫ۜۘ";
                    break;
                case 383955493:
                    str = "ۖۖۗ۟ۡ۟ۡۧۘۘ۫۬ۚۧۦ۟ۤۥ۠ۗۖۖۡۡۨۘۙۢۦۚۖۥۘ";
                    break;
                case 478649266:
                    String str10 = "ۙۢۙۢۖۤۜۥۡۗۚۦۘ۟ۤۧ۟ۤۢ۠ۛۡۨۘۦۘۜۧۙۛۙۖۢۧۥۘۡۧ۟ۙۜۗۥ۠ۡۘ";
                    while (true) {
                        switch (str10.hashCode() ^ 995790162) {
                            case -873050339:
                                String str11 = "ۤ۠۬ۥ۠ۜۥۖۘۥ۬ۢۜۦۦ۬ۦۧۧۧۖۘۤۥ۫ۨ۟۠۟۠ۚ۠ۗۤۤۗۨۙ۬ۜۡۡۘ۬ۘۘ۬ۤ۠";
                                while (true) {
                                    switch (str11.hashCode() ^ 2029160956) {
                                        case -2112803594:
                                            str10 = "ۦۦۦۘۨ۫ۨۘ۫ۥ۫ۨۦۡۘۡۤۥۖۗ۠۟ۜۨ۫۬ۛۨۤۙۦۥۘ";
                                            break;
                                        case -1600860884:
                                            str11 = "ۛۤۜۘۡۤۜۘۤ۟ۥۘۥ۠۬ۧۘۖۥ۠۬۟ۚۖۨۡۘۤۦۘۘۧۜۜۘۨۡ۠ۗۨۖۚۗۨۧ";
                                            break;
                                        case -192750336:
                                            str10 = "۬ۘۦۘۙۘۥ۟ۧۨۧ۬۠ۗۡۥۘۤۡ۬ۦۡۙ۠۫ۥ۫ۡۘۘۦۘۘ";
                                            break;
                                        case 1199923657:
                                            str11 = b7.OooO0Oo().OooO0OO != 2 ? "ۖۙۧۘۧ۟ۜۖۘ۬ۙۘ۬ۨۛۖۡ۫ۜۧۥ۟ۙ۬ۜۥۜۘ۫ۥ۟ۙۡۘۥۢۛۜۢ۫۬ۗۢۗۗ۫ۥۖۧۘ۬ۦۨۘۢۢۙ" : "ۦۜۗۨۜۡۘ۬ۛۖۘۨ۠ۚۗ۬ۗ۠ۢۢۥۡ۠ۗۛۥۘۨۡۢۗ۠ۚ۬ۖۥۚۛ۫ۜۜۘۘ۠ۢ۬۟ۙۖۡۜۦ";
                                            break;
                                    }
                                }
                                break;
                            case 720391127:
                                str10 = "ۡۘۗ۫ۡۨۘۦ۬ۦۤۥۘۙ۫ۘ۬ۚۡۘۚۢۢۤۤ۬ۧ۠ۚ۠ۥۘ";
                                break;
                            case 1310494144:
                                str = "۬۟ۢۙۙ۫ۜۜۜۗۥۗۦ۫۟۟ۘۦۘۗۛۙ۠ۨۛ۬ۢۡۘۛۥۜۘ";
                                break;
                            case 2081082715:
                                break;
                        }
                    }
                    str = "ۚ۠۟۫ۨۥۘۥ۠ۨۧۢ۟ۤۖۘۚ۟ۥۤ۬۫ۖۖۘ۠ۛۥۘ۟ۤۛۖۡۚۛۚ۬۬ۛۗۢۥۘۘ";
                    break;
                case 622950960:
                    str = "۠ۢۦۘۙۗۚۗ۠ۚ۬ۤۨۘۨۖ۠ۗۧۡۘۜۨۡۘۖۥۜۗۘۦۤۙۤۢۘۨۖۘۖۢۜۘ۫ۗۢ";
                    i7 = i3;
                    break;
                case 634801469:
                    imageView5 = this.OoooooO;
                    str = "ۧۘۢۛۘۜۙ۬ۛۢۖ۟ۗۘۗۨۜۖۢۖۘۢ۬ۜۘ۟ۢۘۘۦۢۛ";
                    break;
                case 1148534255:
                    str = "ۥۛۦ۬۠ۥۘۡۖ۫ۦ۠ۢۗۨۘ۠ۙۥۗ۬ۢۦۜۢۢۗۘۘۖۨۖۤۤۡۘۚۢۖۘۡ۠ۘۡۧۥۘ";
                    imageView7 = imageView3;
                    break;
                case 1175449006:
                    imageView3 = this.OoooooO;
                    str = "ۜۦۘۗ۫ۖۖ۟ۘۘ۠۠۟ۦۜۗ۠ۖۧۘۖۛۗۖۢۨۗۖۦۡۛۖ۬ۨۘۦۢۧ";
                    break;
                case 1205989829:
                    this.OoooooO.getLocationOnScreen(iArr);
                    str = "ۚۨۘۧۦۥۛ۫ۥۘ۟ۥ۫ۧۙۧۤۛۥۘۙۜۦۘ۫ۚۘ۬۠ۥۘۢۜۘۘ۬ۚۡۜۧۦۘۥ۫۟۬ۚۘۥۨۥۥۖۘۛ۟ۚ۟ۗۦ";
                    break;
                case 1211067553:
                    str = "ۖ۠ۛ۠۫ۥۡۚۡ۟ۡۧۡۤۙۗۦۤۨۧۜۘ۠ۡۧۨۘۚ۟ۤۖۘۢۧۡۧۛۨۥ۫ۜۨ۟ۡۘ";
                    imageView7 = imageView4;
                    break;
                case 1648309777:
                    str = "۬۟۠ۛۡۘۙ۠ۨۦۦۚۛ۬ۡۘۤ۠۠ۢۚ۠۫۟ۨ۠ۤۨۜۖۛۖۚۖ۬ۙ۟ۨ۬ۙ۠ۙۜ";
                    break;
                case 1697902933:
                    imageView4 = this.OoooooO;
                    str = "۬ۜۛ۬ۜۗۡۢۨۢۚ۟ۤۚۨۘۢ۟ۙۖۢۢۢۡۙ۬ۨۚۘۛۚۨۗۨۘۤۦۘۥۖۘ۬ۜۤ۬۟۫ۧۗۖۘ۠ۧۙۛ۫ۜ";
                    break;
                case 1835819488:
                    String str12 = "ۖۤۛۦۨۦۚۧۘۘۛۛۘ۬ۨۖۘۡۛۧۛۦۚۘۖ۬ۗۤۖۗۤۘۙۜۘۜ۫۟";
                    while (true) {
                        switch (str12.hashCode() ^ 1309805389) {
                            case 429057686:
                                str = "۫ۤۙ۠ۙۡۘۜ۬۠ۤۦۦۘۤۦۡۗۤ۬ۥۛۙۡ۬ۥ۬ۗۨۘۤۚۜۘ۫ۖۙۚۙۡ۬ۗۨۜۚۦۘۚۦۨۘۖۖ۫ۡۤۥۥ۠ۚ";
                                break;
                            case 747420273:
                                str12 = "ۖۖۢۢۥۢۦۗۨۘۙۜۦ۬۠ۘ۬ۛۧۛۧۚۚۗۛۜۗ۬ۗۙۘۘۚ۟ۘۘۛۛۚۛۖۜۚۡ۫ۦۗۘۦۨ";
                                break;
                            case 1362987177:
                                break;
                            case 1576062714:
                                String str13 = "۫ۗۘۚۜۡۧ۫ۗۨۧۘۙۥۡۙۢۤۦ۫ۖۘۦۗ۟ۨۨۥۘ۠ۤ۟ۨ۫ۗۤ۫ۨ۬ۗۤۨۤۡ";
                                while (true) {
                                    switch (str13.hashCode() ^ (-1843401281)) {
                                        case -921275215:
                                            str12 = "ۘۖ۠۬ۡۧۘۜۤ۫۠ۦ۟ۢۚۡۨۧۧۢۢۚۦۨۛۜۙۥۗۗۘۘۤۙۦ۠ۘۤ۬ۜۥۡۦۘ۫۬ۙۥۖ";
                                            break;
                                        case -732384621:
                                            str12 = "ۨ۠ۤۦۙۗ۠ۤۧ۠ۨۜۘ۫ۚۦۘۗۙۡۘۘۗۦۘ۬۟ۤۤۦۡۜۛ۫۠ۜۦۘۡۘۥۘ";
                                            break;
                                        case 1034424459:
                                            str13 = "ۤۢۥۘۧۖۦۘۦۢۦۘ۫ۢۗۢ۟ۦۙۦۥۜۖۢۗۙۨۥۧۜۤۘۥۡۚۧ۟۫ۢ";
                                            break;
                                        case 1809783974:
                                            str13 = b7.OooO0Oo().OooO0OO != 2 ? "ۦۢۦۘۨۙۜۘ۠ۜۚۥۛۥۡۙۦۥۗ۫ۚ۟ۦۦ۫ۧۚ۫ۜۘۥۤۦۘۡۦۧۙۡۨ" : "ۨ۬ۨۛۨۦۘ۫ۖۖۜۖۘۘۘۙ۬ۥ۫ۙۢۡۗ۬۠ۚۧۥۡۤۥۘ۬۫ۧۤۛۡ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1859095848:
                    i4 = R.drawable.elfin_pause_right_edge;
                    str = "ۦۘۦۖۧ۟ۛۜۨۘۡۜۨۜۧۘۘۚۥۢۖۧۢۤۛۙۡ۠ۢۨۖ۫ۤۚۨ۠ۡۡۡۜۢۥۥۢۜۥۥۦ۫ۘۗۦۘ۠ۚ۬";
                    break;
                case 1890359223:
                    i2 = R.drawable.elfin_normal_left_edge;
                    str = "ۤۤ۬ۙۢ۠ۥۧۧۨ۠ۡ۫ۦۤۘۦ۟۠ۡۙۘۦۘۤۥۦۘۧۗۥ۫ۜۚ۬ۤۖ۫ۦۥ۫ۘۗۖۨۘ۫ۥ";
                    break;
                case 1899571097:
                    String str14 = "ۜۛۡۘ۟ۛۖۗۡۤ۫ۦۘۘ۠۬ۥۘۢۙۖۘۛۙۥۧۧۖۘۛۥ۫ۦ۠ۖ";
                    while (true) {
                        switch (str14.hashCode() ^ 1003893945) {
                            case -1311012926:
                                String str15 = "۠ۥۚۙ۠ۥ۠ۚۡۥۥۡ۬ۜ۠ۨۧۤۥۘۥ۟ۖ۬ۖۗۧۗۤ۟ۦۡۘ۠ۙۜ۬ۨۜۢ۠ۙۡۤۦۢۚ۬ۛۡۧۘۘۧۦ";
                                while (true) {
                                    switch (str15.hashCode() ^ (-257374383)) {
                                        case -1571156033:
                                            str14 = "ۡۗۘۜۙۗۖۚۖۧۦۘۛۘۤۜۘۥ۠ۤۨۤۦۙۡ۠ۘۧۥۤۛۗۡۘۨ۟ۖۘ";
                                            break;
                                        case -630862368:
                                            str15 = "ۥ۬ۨۧۧ۫ۛۨ۬ۨۗ۟ۗۡۘۚۨۢۘۨ۬۫ۗۤۦۜۨۘ۠ۧۘ";
                                            break;
                                        case 204789440:
                                            str14 = "ۗۖۧۜۤۥۖۗۗ۠ۙۜۥۤۖۧۧ۬ۤۥۥۘۨ۠ۡۧ۫۫۬ۛۨۘ";
                                            break;
                                        case 461968086:
                                            str15 = b7.OooO0Oo().OooO0OO == 3 ? "ۧ۟۫۬ۦۧۘۜ۬ۤۧ۫۬ۙۚۥۦۤۢۧۖ۠ۨۜ۠ۗۧۤۚۧ۠ۧ۟ۥۤۗۛۤۜ۫۠ۨۘۘۧۘۘۘۙۛۘ" : "۟ۙۨۥۨۤۚۡۘۘۗ۟۫ۤۗ۟ۤۥۜ۠ۨۗۛ۬ۦۘ۠ۛۙۨۦۦۜۢۚۖۗ";
                                            break;
                                    }
                                }
                                break;
                            case -695173711:
                                str = "ۗۚۨۘۛۦۨۘ۫ۢ۬ۖ۬ۜۙ۟۠ۚۥ۟ۦ۬ۘ۠ۗ۫ۖ۠ۙ۠ۜۘۖ۟ۖۡۗۜۘ";
                                continue;
                            case 79500404:
                                str14 = "ۗۗۡۘۡۥۨۘۧۤۘۤۛۖۚۖۨۘ۠ۢۗۤۖۘۢ۟ۡۘۛۛۧۤۘۧ۟۟ۡۜ۫ۚ۠۠ۥۥۢۤۙۡ۫ۤۨۨۦۘۜۨۜۘ";
                                break;
                            case 405529482:
                                str = "ۦۧۡۗۜۖۜۙۚۧۗ۬ۘۦۦۘۙ۫۫ۤۧۦ۟ۙۥۡۥۢۨۜۥۘ۠ۦۙۖۗ۠ۖۚۥۡۢۜۘۤۖۥۘۢۥۤ";
                                continue;
                        }
                    }
                    break;
                case 2098147390:
                    break;
            }
            return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0040. Please report as an issue. */
    private void OooooO0(int i) {
        ImageView imageView = null;
        int i2 = 0;
        ImageView imageView2 = null;
        int i3 = 0;
        ImageView imageView3 = null;
        int i4 = 0;
        ImageView imageView4 = null;
        int i5 = 0;
        ImageView imageView5 = null;
        int i6 = 0;
        ImageView imageView6 = null;
        int i7 = 0;
        ImageView imageView7 = null;
        int i8 = 0;
        ImageView imageView8 = null;
        int i9 = 0;
        ImageView imageView9 = null;
        int i10 = 0;
        ImageView imageView10 = null;
        int i11 = 0;
        ImageView imageView11 = null;
        int i12 = 0;
        ImageView imageView12 = null;
        int i13 = 0;
        ImageView imageView13 = null;
        int i14 = 0;
        String str = "۬ۧۥۘۥۘۗۨۤۡۢۧۨۘۛۖۖ۟ۧۥۘۗۜۧۘۚۘۙ۟ۡۙۤ۫ۥۢ۫ۥۥ۫ۡۜۖۚۦۛۥ۬ۘۘۗۙ۟";
        while (true) {
            switch ((((str.hashCode() ^ 163) ^ 463) ^ 178) ^ (-1538322003)) {
                case -2145645767:
                    i10 = R.drawable.elfin_run_right_up;
                    str = "ۚۙۦۘ۠ۗۖۢۦۨۘۧۖۘۘۢۜۘۥۤۛۙ۬ۘۘۛۛ۬ۨۗۘۢۚۡۖۜۥۘۨۙۨۤۦۧۘۛۡ۟ۥۧۘۛۘۗ";
                    break;
                case -2133821959:
                case -1516852328:
                case -1438550159:
                case -908542093:
                case -768312473:
                case -512915314:
                case -431522922:
                case -422072758:
                case -102253228:
                case 180498959:
                case 725942692:
                    str = "ۡۗۚۢۜ۠ۢۗۘۘۙۡۦۘ۟ۤ۠۠ۥۘ۫ۡۗۨۙۜۘۧۦۜۘۤۡۘۘۦۥۢۡۨۖۤۜۙ۫ۥ";
                    break;
                case -2113379855:
                    String str2 = "ۧۗۖۘۗ۫ۥۘۘۖ۠ۚۙۙۤۢۥۘۘۗۖۖۘ۟ۜۙۤۜۘۥۚۦۦۚۜۘ۫۠ۘۘۙۚۛ۟ۚۖۚۤ۟ۧۛ۠ۡۜۛ۠ۜۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1297197402) {
                            case -1608860615:
                                str2 = "ۢ۬ۖۥۚۙۙۖۡۘۧ۟ۙۚۨۦۘۙۙۡۘۧۡۥ۫ۡۧۙۘۙۤۨۙ۠ۤۡۘۖ۫ۜۘۗۘۘۧۢۖ";
                                break;
                            case -918301515:
                                String str3 = "۫ۡۨۘۥۘۥۘۧۢ۠ۙۦۡۘۥۧۙۥۚۜ۠ۜۖۤۖ۫ۡ۠ۛۙۜۧۘ۫ۦ۟۟۫ۡۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1101134241) {
                                        case -1129473933:
                                            str3 = "ۧۨۧۤ۬ۛ۟ۦ۟ۥۡۛۨۙ۫ۢۤۖۖۙۖۦۛۖۧ۫ۗۦۗۜۛۙ۠ۡ۠ۦ۠ۡۛۢۛۛۦۘۨۗۧ";
                                            break;
                                        case -420643580:
                                            str2 = "ۤۦۡۘۡ۟ۥ۫۟ۥۘۢ۫ۚۥۦۡۘۛۧۗۢۡۘۧۦۢۖۡۙۢۜۡۗ۟ۨۘۖۚ۬ۥۥۖۘ۬ۡۙ۬ۘۨۘۙۤۨۘ";
                                            break;
                                        case -272736862:
                                            str3 = b7.OooO0Oo().OooO0OO == 3 ? "ۛۦۨۘۤۚ۠ۡ۟ۜۘ۠ۨۖۥۘۘۛۛۨۘۛۘۡۘۦۗۖۜۨۡۘۙۧۢ۫ۖۖۘۙۖ۬" : "ۢۨۜۘۙ۬ۧۤۗۧۡۢۢ۟ۗۗ۬ۥ۠ۨۦۖۨۦۦۨۢۘۧۖۛۦۗۙۢ۫۬ۗۗۗۡۛۥۘ";
                                            break;
                                        case -148880795:
                                            str2 = "۫ۘۧۥ۟ۢۢۥ۟ۚ۬ۘۘ۟ۢۜ۫ۛۡۘ۫ۗۚۛۤۨۘۡۖۥۚۢۧۡۚۜ۟ۦ۬۠ۧۖۤ۠ۡ۟ۚۚۛ۫";
                                            break;
                                    }
                                }
                                break;
                            case -75991993:
                                str = "۠ۖۥۘۢۗۗۜۦۦۙۖۥ۬ۛۥۛ۠ۨۧۢۗۨۚ۟ۘۦۘۥۙۖۘۡۨ۬ۚۢۥۘۤ۫۬ۥۖۘۘۙۖ۫ۡۚ۬۠ۤۨۜۜۘ";
                                continue;
                            case 645908699:
                                str = "ۘۘۡۛۘۡۘۥۢۖۘ۬ۡۜ۟۫ۨ۠۫ۘۘ۬ۡۗ۟۠ۛۚۘۧۘۙۥۨۘ";
                                continue;
                        }
                    }
                    break;
                case -2083936051:
                    str = "ۗۚۤ۬۟ۖۜۘۥۤۨۘۤۥۖۘۚۡۜۢۡۦۘ۫ۛۛۖۢۨۘۚ۠ۧ۠ۤۖۢۜۘۘ۫ۚۗۖۡۖۘۢۢۨۨۙۙ";
                    i14 = i4;
                    break;
                case -2077720314:
                    str = "ۡۦۧ۬ۢۗۥۨۡۘ۠ۦ۟ۡۙۙۤۙ۟ۢۗۗۨۖ۠ۢۤۘۥۖۗۤۘ۬ۧ";
                    i14 = i7;
                    break;
                case -2072897458:
                    imageView = this.OoooooO;
                    str = "ۤۜۜۜ۠ۥۘۥۚۘۙۥۤۚۗۤۧۘۘۧۛ۬ۚۡۥۥۥۨۘۘۡۖۢۨۨۘۜۚۡ۫ۤۤۘۙۤۦ۠ۖۜۨۘۡۗۨۥ۬ۖۘ";
                    break;
                case -1936653291:
                    String str4 = "ۙۧۨۘۛۙۖۘۧ۫ۨۘۜۡۜۗۦ۟۠ۜۨۘ۟۟ۙ۠ۙۢ۬ۜۘۙۥۘ۬ۤ۫ۦۢۤۚۖ۠ۜۜۘۦۛۢۚۚۨۘۛۜۖۘ۫ۡۡۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-499078791)) {
                            case -640165678:
                                str4 = "ۖۨۦۚۖۥۗۨۤۖۢۘۘۚۗۢ۬۬ۖۘۖۗۨۘۛۚۨۥۤۧۛۜۧ۟ۘۢۜ۟ۜۘ۠ۨ۫۟ۜۘ۟ۥۡۘۙۚ۠";
                                break;
                            case 50488864:
                                String str5 = "ۡۤۥۘۦۚۥۡۧۡۜۚۚۘۨ۫۫۠ۜۘۢۨۤۖۚ۟۠ۖۤۢۨۢ";
                                while (true) {
                                    switch (str5.hashCode() ^ 2114759796) {
                                        case -482859025:
                                            str5 = b7.OooO0Oo().OooO0OO == 3 ? "ۨ۟ۗۖ۟ۦۘۚۖۡۘۖۙۙۖۤۘۛۧۦۗۥۤۜۜۖۙ۬ۥۚ۫ۜۢۥۦ۬ۖۘۚۛ۬ۖۡۖۘۤۛۡ۬۬ۡۘ" : "ۤۛۡۢۖۢ۫ۛۤۤۢۢۤۥۧۗ۟ۚۦ۟۬ۤۜۚۘۢۘۛۨ۬";
                                            break;
                                        case 1563639771:
                                            str4 = "۟ۡۥۘ۬ۥۨۤۙۨۘۖ۠۠ۢۗۦۢۦ۟ۖۧ۠۫۬ۤۙۤ۫۠۠";
                                            break;
                                        case 1626944145:
                                            str5 = "ۖۙۨۘۦۧ۠ۤ۠ۥۙۧ۫ۙۖۗۧۘۧۨۙۘۘ۟۟ۦۛۥ۬ۜۥۡۚۡۙۢۦۘۙۨ۟ۡۙۚۖۗۢۧۡۧ";
                                            break;
                                        case 1822400980:
                                            str4 = "ۜۧۖۘ۟۠ۗۖۨۥۘۤ۬ۨۢۜۡ۠ۚۧ۟ۦۖۘۚ۟ۥۘۛۤۗۡۜۘۘۚۨۙۖ۟ۢ";
                                            break;
                                    }
                                }
                                break;
                            case 140859623:
                                str = "ۜۦۖۧۗۥۘ۠ۧۜۘۧ۠ۦۘۨ۟ۦۘۘۛۨۘۦۢۦۘۤۚ۠ۖۥۘۨۡۧۥۖۖۜۢۚۛۡ۠۬ۥۘ";
                                continue;
                            case 1118341858:
                                str = "ۨ۠ۧ۫ۦۚۡۙۘۘ۠ۢۦۘۤ۟ۖۦۦۗۢۗۢۙۦۚۢۦۥ۬ۜۖۘ۬ۨۘۘ۟۠ۥۘ";
                                continue;
                        }
                    }
                    break;
                case -1932626167:
                    str = "ۘۖۖۦ۟۟ۧۨۛۛۨۗۤ۟ۛ۟ۗۜۗۦۥۙ۫ۥۘۡۜۘۙۗۨۘ۟۠ۘۤۢۥ";
                    imageView13 = imageView9;
                    break;
                case -1884687604:
                    i13 = R.drawable.elfin_run1;
                    str = "ۥۨۘۘۚ۟ۦۘۜۥۗۡۡ۠۠ۤۢ۫ۗۨۘۗ۟ۘۥۘۚۨۨۚ۟۬ۨۘۘ۬ۥ۫ۙۦۖۡ۬۠ۙۦۘۧۛۘۧۡۨ";
                    break;
                case -1745885783:
                    str = "ۢۘۨۜۤۖۘۧ۟۟ۖۤۛۜۨ۠ۙۤۦۙۡۧۗۜۙۚۜۢۙۨۢۥۙۤ۟ۧ۟ۢۢۥۘۡۧۗ";
                    break;
                case -1726478591:
                    imageView13.setImageResource(i14);
                    str = "ۖۨ۠۫ۢۨۘ۬ۨۗۚۥۤۛ۟۫۬ۛۘۗ۬ۨۘۙۛۨۘۧۜۦۧۗۥ۬ۛۘۨۜۘۢۤۢ۫ۘۘ۟ۙۜۘ۠ۧۜ";
                    break;
                case -1702602796:
                    str = "ۧۥۗۥۥۢۢۙۦ۟۟ۡۘۖۛۥۘۥۘۨۚۡۖۗ۫ۖۡۡۘۤۖۦۙۤۦۘۜۜۖۘۖۧۖۧۘۘۘ۫ۢۡۘۡۢۖۗۜۦۙۖۦ";
                    break;
                case -1697450192:
                    str = "ۡۗۚۢۜ۠ۢۗۘۘۙۡۦۘ۟ۤ۠۠ۥۘ۫ۡۗۨۙۜۘۧۦۜۘۤۡۘۘۦۥۢۡۨۖۤۜۙ۫ۥ";
                    i14 = i13;
                    break;
                case -1694631592:
                    i8 = R.drawable.elfin_pause_right_up;
                    str = "ۨۘۧۘ۠ۛۗۤۖۦۖۦۘۜۘۦۜۚ۬ۘ۟ۦۖۦۡۦۢۦۘۢۛ۠ۗۗ۫۬ۢۨۛۜ۟۫ۡ۬۠ۙ۠ۦۡۨ";
                    break;
                case -1684827407:
                    i3 = R.drawable.elfin_normal_left_up;
                    str = "۬ۥ۫ۗۨۦ۟ۛۨ۫ۙۗۜۚۜۤ۫ۘۙۧۥۙۘۡۤۙ۬۟ۧ۠ۡۧۨۘۖۤۜ";
                    break;
                case -1667041485:
                    imageView7 = this.OoooooO;
                    str = "ۛۚۘۘۖۨۨۘۥ۠ۦۛۙ۟ۢۦۜۘۡۖۛۢۢۡۘ۫۫ۖۖۨ۬ۥۦ۬۬ۖۜۖۜۥۘۧۘۛۢۜۥ";
                    break;
                case -1570055214:
                    str = "ۖۨ۠۫ۢۨۘ۬ۨۗۚۥۤۛ۟۫۬ۛۘۗ۬ۨۘۙۛۨۘۧۜۦۧۗۥ۬ۛۘۨۜۘۢۤۢ۫ۘۘ۟ۙۜۘ۠ۧۜ";
                    break;
                case -1540939294:
                    String str6 = "ۜۚۜۧ۠ۦۘۙۢۖۘۚ۬ۜۘۤ۬ۤۤۜۡۘۥۚۖۨ۫۬ۙۧۗۥۚۦ۟ۘۖۘۤۥۨۘ۬۬ۥۘۥ۫ۖۘ۬ۘۘۗۜ۬ۘ۬ۤۥۘ";
                    while (true) {
                        switch (str6.hashCode() ^ 164641381) {
                            case -1924579490:
                                str6 = "ۘۜۜۧۛۨۚۘۦۢ۬ۥۘ۫۬ۥ۬ۚ۫ۗۙۖۡۚۤۘۛۚۘۧۘۢۧۜۧ۫۫۫ۥ۠ۢ۬";
                                break;
                            case -369223827:
                                String str7 = "ۥ۬ۥۗۧۖۨ۬ۜ۫ۛۡۘۢۖۘۘۧ۟ۘۘ۬ۨ۟ۖۙ۟ۥۛ۬ۚ۟ۗۘۡۚۗۡۙ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1053582816)) {
                                        case -966874094:
                                            str7 = "۬ۡۘۚۧۜۙۦۤۦۡۘۦۨۥۜۛۦۘۡۨۘۤۤ۟۬ۛۖۨ۟ۦۘ";
                                            break;
                                        case 873214742:
                                            str7 = i != 3 ? "ۧۧۛۥۘۡۘۛۚۚۙۛ۬ۡ۫ۛۘۜۗۙۡۥ۟ۡ۬ۖۙۚۜۛ۠ۡ۬ۤۨۖۜۘۘۚۤۗۧۡۤۘ۫" : "ۦۤۢ۟ۦۜۜۦۢۚ۬ۦۙۦۘۡۘۘۖۤۜۨۜۙۖۦ۟ۧۘۨۘۢۢۦۘۚۢۚۧۙۖۘۖۘۘۘۥۢ۬ۤ۠ۘۘ";
                                            break;
                                        case 1632503979:
                                            str6 = "ۗ۬ۧۚۤۘ۠۠ۜۘۡۢۦۘ۠۠ۛۛۦۘۦۨۜۙۢۥۘۚۨۦۘ۬ۨۗۧۖ۠ۧۧۦۘ";
                                            break;
                                        case 1641455904:
                                            str6 = "ۛۙۚۥۡۜ۟۫ۖۗۥۡۘۜۙ۬ۥ۟ۤ۟ۥۙ۬ۢ۫ۖۤۖ۫۬ۜ";
                                            break;
                                    }
                                }
                                break;
                            case 774988336:
                                str = "ۧۦۧ۫ۦۜۧۙۨۘ۟ۚ۬۬۬ۧۗۨۢ۟ۨۧۘ۟ۨۜۘ۬ۜ۫ۖۘۙۚۦۚۧ۠ۜۘ۠ۡۡ۟۠ۙ";
                                continue;
                            case 1865799556:
                                str = "۠ۗۥۚ۫ۛۗ۠ۘۘۢۨۨۘۦ۠ۥ۫ۧۜۧ۠۬ۘۢۘۘ۠ۧۨۘ";
                                continue;
                        }
                    }
                    break;
                case -1446964253:
                    String str8 = "۫ۚۘۘۖۗۡۘۦۚۤۢۥۘۦ۬ۡۘۡۘۡۚ۬ۛۖۖ۠ۥۘۦۡۜۘۙۘۛۖۡۥۢۤۡۘۚۥۖۖۜۨۘۤ۟ۨ";
                    while (true) {
                        switch (str8.hashCode() ^ 480229106) {
                            case -2111783087:
                                str8 = "۟ۧ۠ۙۗۘۘۧۤ۟ۡ۟۫۠ۨۥۘۤۢۛۖۦۦۘۚۨۢۥۛۤۧ۠ۖۤۗۖۨۛۚ";
                                break;
                            case -2022607052:
                                str = "ۗۥ۟ۡۛۧۦۡۧۜ۬ۦۙۖۜۜۙۡ۠ۡۚۡۙۡۘۖۢۦۗۖ";
                                continue;
                            case -964310409:
                                String str9 = "ۧ۠ۥۚۢۡۜۨۤۖۜۘۦ۬۫ۢۡۜۘۘۖۨ۬ۛۘۘۜۢۦۘۢۥۢۙ۟ۗۖۙۙ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-116484069)) {
                                        case -1354675163:
                                            str8 = "ۧۚ۫ۜ۠ۤ۬ۗۙۜۖۨۘ۫ۡۖۘۡۜۨ۬ۦۖۘ۬ۥۡ۬ۜۛ۠ۡۜ۟ۤۥ۬";
                                            break;
                                        case -952392553:
                                            str9 = b7.OooO0Oo().OooO0OO == 4 ? "ۘۡۚۨۤۤۦۜۦۘۦۜ۟۟ۖۨۢۥۥۥۙۦ۠ۥۘۘۡۖۧۘۨۤ۟" : "ۨۜۖۘۘ۫ۥۜۗۦۘۘ۠ۜ۠ۜۡۘ۠ۦۘۘۜۖۦۖۡۨۘۥۜۜۘ";
                                            break;
                                        case 771829453:
                                            str8 = "ۛ۬ۙۜۗۚ۟ۖۧۘ۫۟ۙۗۖۖۘۛۧۚ۬۟ۥۖۦۗۧ۬ۦۘۗ۠ۜۜ۫ۖۘۚۙۖ";
                                            break;
                                        case 1007357082:
                                            str9 = "۫ۗۥۘۛۨۨۘۡۦۥۘۚ۫ۢ۟۟ۦۘۢۧۦۘ۬ۢۦۦ۬ۢۚۥۘۙۜۡۘۙۚۤۡۖۜۘۡۗ۬ۗۘۢۤۤۦۚ۟۟";
                                            break;
                                    }
                                }
                                break;
                            case 1291173654:
                                str = "ۧۧۛ۫ۡۜۘۡ۠ۨۘۤۥۧ۫ۥۖۚ۬۠ۚۤۘۘۦ۟ۜۘۙۢۙۛۥۢ۬ۛۘۘۚۜ۠۟ۜ۫ۘۛۦۘۥ۠ۤۦۦۢ";
                                continue;
                        }
                    }
                    break;
                case -1337096145:
                    imageView11 = this.OoooooO;
                    str = "ۘۖۡۘۦۥۢۨۡ۬ۚۢ۠ۧۜۘۦ۟۬ۡۘۙۢۚ۠ۘۥۗۜۖۢۤۧۤۨۜۘۜۡۛۡۜۖۥۥۘۘۧۤۡۘ";
                    break;
                case -1319657133:
                    String str10 = "۬ۙۡۤۙ۠۠۟ۢۦۨۗ۬ۜۘۨۚۨۘۘۙۦۘۜۦۘۖۛۙۛ۬ۤ";
                    while (true) {
                        switch (str10.hashCode() ^ 354526530) {
                            case -1463812229:
                                String str11 = "ۘۛۧۗۢۘۚۥۡ۫ۥۜۘۤۗۘۖۚۖۘۘۢ۬ۛ۫۫ۖۗۖۘۖ۬ۘۘۦۚۡۘۗۧ۟ۛۦۘۦۚۖۘۜۢۨۘۖۖۗۚۧۘۘ۬۬ۘ";
                                while (true) {
                                    switch (str11.hashCode() ^ (-220676060)) {
                                        case -2077414841:
                                            str10 = "ۚۦۘۘۢۛۢۥۢ۠ۜۖۗۧۤۛۜۨ۟ۥۥۘۘۙۚۚۦۙۥۧ۬۟";
                                            break;
                                        case -1309811385:
                                            str11 = b7.OooO0Oo().OooO0OO == 4 ? "ۢۙۘۗۘۜۘۡۜۥۘ۬ۖۘ۠۟ۨۘ۟ۡۢ۠ۥۜۘۗۨۚ۬ۨ۠ۙۚۤ۠ۡ۟ۧۡۘ" : "۟ۤ۬ۨۧۥۗۦۧۛۧۥۘۦۢۨ۬۟ۖۘۚۥۨۘ۠ۤۗ۟ۖۨۘ۟ۜۖ";
                                            break;
                                        case 414656028:
                                            str11 = "ۥۜۖۘۤۜۥ۫ۖۧۘۚ۫ۜۘۛۛۗ۫ۥۖۘۦۧۘۘ۟۬ۡ۫ۗۖۘۙ۫ۜۘۚۢۘۘۥۦۢۘۡۢۤۡۨۘۗۛۢۤۖ۟";
                                            break;
                                        case 1103742097:
                                            str10 = "ۛۖۘۥۛۙۘۤۡۙۧۧۤۖۚۨۨ۬ۘۢۨۘ۫ۗۚۜۧۤۥۛۤۦۛۨۧۤۜۘۗۙۖۙۗۜۤ۟ۘۘۙۢۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case -784184265:
                                str = "ۖۚۦۘ۬ۙ۠ۤۦۡۘۜ۟ۘۘۢۡۙۖۚۡۘ۫ۙۘۘۦۘۦ۫۫۫ۛۖۧۢۡۧۘۙۧۥۗۢۘۘۙۚۙ۟ۨۜ";
                                continue;
                            case -55313101:
                                str10 = "۬ۦۜ۫ۜۖ۟۫ۡۛ۬ۖۛۥۚ۟ۧۦۘۖۦۗۦۤ۬ۜۥۧۘۧۨۢ";
                                break;
                            case 493564939:
                                str = "ۖۙۘۘۤ۬ۨۘۡۚۚۛۙۙ۟۠ۘۘۥۛۘۘۚۚۖۘۚ۫ۜۘۙۦۤۛۧۚ۫ۢۡۘ۠ۧۡ";
                                continue;
                        }
                    }
                    break;
                case -1294786673:
                    str = "ۨۦۢۡۧۧۘۘۛ۬ۗ۟ۛۥۨۧۡۖۘ۬ۘۜۗۚۘۨۛ۟ۦۤۨۘۚۘ۬۫۬ۦ۠ۖۘۥۡۨ";
                    i14 = i11;
                    break;
                case -1187434507:
                    str = "ۛ۟۬ۜۧۥ۫۠ۘۘ۟ۜۦۥۡۤ۫ۘۗ۫ۛۙ۠ۘۘۧ۠ۦۘۤۚۧۤۜۤۗ۠۠۟ۗۥ";
                    imageView13 = imageView;
                    break;
                case -1185253761:
                    String str12 = "۬ۦ۟۟ۤ۠۠ۥۛۡۢۦۦۜۘۤۗۜۤۜ۠ۢۙۖۧۘۖۘۤۖۦۤۖۨۜ۬ۙۗۛ۠۟۫ۨۘ";
                    while (true) {
                        switch (str12.hashCode() ^ (-807265886)) {
                            case -1496349108:
                                str = "ۜۢۢۜۨۦۙۥۖۘۦۚۡۧۨۛۘۘۜۦ۟ۙ۠ۙۗۙۧۡۖۙۚۨ۫ۜۢۨۘۙۡۛۨ۬ۤۦۜۧۘ۬ۡۛۡۨۢۗۛۧ";
                                continue;
                            case -1444058441:
                                str = "ۤ۠ۦۘۨ۟ۗۥۢۦۘۤۘۥۦۜۥۘۢ۠ۗۘۥۤ۫ۙۦۘۥۖۖۢ۠ۖۘۤۗۗۗۤ۬ۢۛ۠ۧ۠ۘۘ";
                                continue;
                            case 386454449:
                                str12 = "ۥۡ۠۫ۤ۬ۤ۟ۨۧۦۙۗۘۚۦۛۘۘۧۙۙ۠۟ۢۘۡ۫ۧۤۥۘۙۦۜۘۧۧۘۡۙۙۗۥۙ";
                                break;
                            case 1703806309:
                                String str13 = "ۤۡۥۘۢۙۤۥۨۘۘۙۜۜۦۙۜۘۧۡۨۘۤ۬ۧۨۗ۬ۤۘۖۨۖۡ۫ۗۖۘۨۧۨۤۨۢۗۥ۠";
                                while (true) {
                                    switch (str13.hashCode() ^ 534391566) {
                                        case 1160014557:
                                            str12 = "ۨۗ۟ۢۘۨۘۖ۬ۨ۫ۜۡ۫ۨۘۤۖۥۘۜ۫ۙ۬ۢۖۨۘۥۨۛ۫ۢۢۥۥۖۜۡۛۖۖۘۜۘۙۛۖۘۦۛۛ";
                                            break;
                                        case 1239703552:
                                            str13 = i != 1 ? "ۨۨۗۥۢۤۡۡۖۙۧۘ۠۟ۖۦۢۜ۫ۥۜۜ۫ۦ۠ۗۘۘ۟ۙۦ۟ۖ۠۬۠ۚۡۜۦۘۜ۠۬ۧۥۛ۠۟ۛۧۧۗ۟ۡۚ" : "ۦۦ۠ۛۖ۫ۖۥۙۦۛۡۘۦۦۚ۟ۦۛۡۢۘ۟ۗ۫۠ۡۧۘۤۙۜۘ۠ۡۢۦ۠۟ۦۙ۬ۛۥۛۥۜ۫ۜۚۚ";
                                            break;
                                        case 1591499973:
                                            str13 = "ۛۡۜۘۘۘۦۘۙۘۜۦۨۦۘۛۢۜۜۦۧۡۜۖۦۖۘۖ۠ۖۖۘۢۜۘۘۚۢۧۘ۫۠۠۫ۦۘۛۢۖۦۤۤ۬ۜۦۘ۠ۙۦ";
                                            break;
                                        case 1612358061:
                                            str12 = "ۦ۟ۘۘۤۨۤۗۛۥۘۘۡ۫۫ۜۛۢۤۨۘۨۚۜ۬ۙۚ۫ۢۦ۠ۙۛ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1144623755:
                    imageView6 = this.OoooooO;
                    str = "ۧ۠۫ۥۛۛۥۥۗۢۥۨۘۘۧۥۛ۠۬ۤ۫ۧۤۚۢۛ۫ۛۜۘۗۧۘۘۡ۟ۘۘۗ۟ۦۘۡۡۜ";
                    break;
                case -1022663049:
                    imageView12 = this.OoooooO;
                    str = "۠۠ۨ۫ۗۛۦۢ۬۠ۧۢۨۦۢۙ۠ۜ۟ۨۚۚۚۧۚۖۖۘۗۤۢ۠ۘۨۙۙۚ۫ۜۙۤۖۗۛ۫۬ۢ۬۠";
                    break;
                case -963911218:
                    str = "ۦۘۨۖ۠ۖۧۘۤۘۜۘۦۡۖۘۜۚۡۧۗۙۥۡۜۧۧۜ۫ۙۦۜۛۧۛۥۤۨ۫۠ۘۥۡۖۜۗۥۢ";
                    imageView13 = imageView12;
                    break;
                case -930125655:
                    str = "ۜۜۘۨۧۧۙ۬ۜۘۜۘ۬۫ۨۨۘۦۤۜ۬ۚ۟۫ۚۙ۠ۚۧۘۜۙۥۡۜۚۨۡ";
                    imageView13 = imageView7;
                    break;
                case -696672521:
                    String str14 = "ۦۖۗۡ۟ۗۡۚۦۛۨۜۢۦۚۢۦۘۥۨۖ۬ۙۖۘ۬۠ۜۘۙۛۤۖۦ۟ۖۥۗۤ۟ۡۢۡۖۘۘۖۘۤ۫ۦ";
                    while (true) {
                        switch (str14.hashCode() ^ (-1940728213)) {
                            case -1673183878:
                                String str15 = "ۨۦ۬ۨۘۡۘۛۙۛۤ۫ۧۨۥ۫ۗۛۜۘۜۤۘۘۤۘۚ۟ۖۘۜۗۗ۫ۚۨ۠ۛۡۙۦۜۤۙ";
                                while (true) {
                                    switch (str15.hashCode() ^ 1848653249) {
                                        case -1154056766:
                                            str14 = "ۗۙ۟ۗۙ۫ۢ۬ۦۘۨۛ۬ۖۦۜۧۘۖ۫ۜۧۥۘۖۘۛۤۜۥ۟ۚۖۧۛ۟ۧۨۙۧ۟ۤۗ۠";
                                            break;
                                        case -848434061:
                                            str15 = "ۙۡۧۘۖۥۧ۠ۥۜۙۦۜۚۚۗۜۢۢۜۤۦۡۡۛۢۖۘۤۚۙۤۛۘۢ۬ۖۙۗۚ۫۫ۜ";
                                            break;
                                        case -662844734:
                                            str14 = "ۦۤۜۘ۠ۖ۠۟ۢۡۚۛ۠ۢۖۖ۟۬ۦ۫ۗۥۘۘۛۘۤۤۨۛۜۘۘ۬۫ۢۗۢۥۘۛۨۜۙۧۗۤۨۖۖۧۗۢ۠۟ۦۥ۬";
                                            break;
                                        case 1408216981:
                                            str15 = b7.OooO0Oo().OooO0OO != 2 ? "ۛۙ۬۟ۜۜۜ۬ۥۦۨ۟ۛۦۧۘۗۘ۟ۡۘۥۘۚۘۖۜۧۦ۠۫ۡۘۢۡۘۡۨۜۙۙۥۘۦۘ۫" : "ۖۛۢۘۡۧۘ۟۠ۖۘۙۛۦۘۨ۟ۥۤۙۡۜۢۛۘۘۜۘۤۤۧ۠ۦۦۘ۟ۧۗۖۤۦ";
                                            break;
                                    }
                                }
                                break;
                            case -160368373:
                                break;
                            case -128318389:
                                str14 = "ۘۡۖۤۙ۠ۦۛۨۜۨۘۗ۠ۢۛ۬ۖۘۡۛۡۤۨۙۖۥۥۡۢۘۤۦۘۘۖۢ۠";
                                break;
                            case 1907929413:
                                str = "ۦۥ۬ۘۖۡۡۦۖۘۧ۫ۧ۟ۨۦۦۗۚۤۡۦۗۥ۠ۥۗۗۜۛۡۘ";
                                break;
                        }
                    }
                    break;
                case -643373814:
                    str = "ۗۥۦۘۜ۫ۘۘۨۘۖۖۧۡۥۤۙۧۙۜۘ۠۫ۡ۟ۥۥۛۢۡۖۥۨۙۗۥۘۨۗۥۘۥۜۘۘۨۙۖۘ۫۟۫ۗۚۖ";
                    i14 = i3;
                    break;
                case -417759372:
                    imageView9 = this.OoooooO;
                    str = "ۚۥۚ۬ۘۚۗۛۛۚۧۦۘۧۡ۠۬۠ۘۘۧ۟ۛۧۢۥۘۤۥۘۘۘۛۜۘۤ۫ۡۥۗۨ";
                    break;
                case -378324869:
                    str = "۟ۨ۫ۖۡۢۤۛ۬ۥۦ۬ۛۨۧ۫۬۫ۧۧۗۤۛۖۘ۫ۘۡۛۘۧۨۧۤۥۢۥۧۜۙۡ۠ۨۗۛۥۗ۬";
                    i14 = i6;
                    break;
                case -284136623:
                    i9 = R.drawable.elfin_normal_right_up;
                    str = "ۗۜۧۧ۫۬ۜۖۦۘۗۦۥۤۤۦۘ۫ۢۥۘۛۦۘۘۧۜۦۘۢۖۡۨۨۦ۫ۖۨۘۜ۫ۖۘ";
                    break;
                case -283804315:
                    imageView3 = this.OoooooO;
                    str = "۫ۖۘۘۘۥۦۤۙۚۖ۫ۘۘۘۨۘۡۛۨۜۥۡۢۢۡۖۡۧۘۚۚۦۘ";
                    break;
                case -174120934:
                    break;
                case -135461251:
                    str = "ۘۜۥۘ۬ۙۜۢۖۘۘۥۦۦ۠۬ۛ۟ۙۥۘ۫ۘۚ۠ۢۛۨۖۘۘۖۢۦۨ۠ۜۘۧۜۙۜۜۦۘۤۥۡۨ۟ۨۘۧۚ۠";
                    imageView13 = imageView4;
                    break;
                case -33817877:
                    str = "۬ۖۡۘ۠ۦۨۘۢۨۜۢۚ۠ۤۖۨ۟ۧۤۦۤ۠۟ۦ۠ۢ۬ۦۘۧۨ۫ۡۢ۠ۖ۠۠۟ۦۗۚۢۘ۬ۛۗ۠ۡۡۗۡۧ۫ۜۥۘ";
                    imageView13 = imageView6;
                    break;
                case -1694028:
                    str = "ۜ۬ۜۘۙۤۨۘ۫۫ۚۜۙۡۘ۬ۙۚۤۢۡۦۤۤۘۧۤ۬ۤۡ۟ۦ";
                    break;
                case 28312399:
                    String str16 = "ۖ۬ۖۘۤۜ۟ۥۙۧۧۡۛۖۨ۟۬ۜۘ۠ۢۗۢۖۖۛۜۦۘۜ۫ۧۢۢۦۨۧۡۜۗ۫ۨۦۜۘۘۨۧۘ۫ۙۡۘۧۜ۟ۚۦ۬";
                    while (true) {
                        switch (str16.hashCode() ^ (-513072893)) {
                            case -1755179660:
                                str16 = "ۧۧ۟۫۬ۢۤۚۦۘۧۚۖۛ۠ۖۧ۬۬ۦۖۡۤۨۜۘۗۘۨۥ۟ۘ۬۠ۜۘۗۛۢۤۧۨ۬۟ۤۥۖۥۤ۫۟";
                                break;
                            case -504184759:
                                String str17 = "ۡۛۢۙۤۤۜ۬۬ۧۤۖ۟ۥ۫۫ۡ۟ۥۤۥۘۡۢۖۚۛۡۜ۠ۧۢۨۢ۫۠ۜۘۘ۫ۨۤۥۚ";
                                while (true) {
                                    switch (str17.hashCode() ^ (-1721096558)) {
                                        case -952239236:
                                            str16 = "ۨ۬۟ۚۢۘۘۥۛۡۛۚ۬ۗۧۚۢۨۘ۫ۗۜۘ۠ۤۜ۠ۦ۫۠ۤۥۘۥۡۦۘۦۙۘۘۦۙ۫ۨۤۧۙۤۨۘۘ۠ۚۡۚۨۘۖۨۜ";
                                            break;
                                        case -192180996:
                                            str16 = "ۥ۟ۨۧۚۙۤ۠ۨۘ۬ۗۥۘۘۧۧۧۗۛۘۚۜۖۤۥ۟ۗۙۛۦۜۘۜۘۧۘ۠ۧۧۥۘۖۘ۟ۦۢ۠ۢ۠ۥۘۦۘ";
                                            break;
                                        case 400962287:
                                            str17 = b7.OooO0Oo().OooO0OO != 2 ? "ۜۤ۠۫ۦۜۘۚۡۖۢۧ۠ۙۤۨۘ۫ۚۖۘ۫ۗۘۘ۟ۘۙۡۚۦۘۧۜۗ۫ۨۛۡۜۡۘ" : "ۡۘۦۘ۫۫ۘۘ۠ۗ۟۠ۤۥۘ۫ۜ۟۟ۗۖۨۧۜۘۗۗ۬ۜۥۢۡۨۢۙۡۧۘ۠ۚۧ۟ۢۚۢۡۘ۠ۜ۟ۧۛۜ";
                                            break;
                                        case 804536308:
                                            str17 = "ۤ۫ۖۘۤۥۜۘۚۘۡۘۚۖۢ۬ۤۙ۬۟۠ۖ۫ۦۘۚۡۘۘۦۚۛۛۧ";
                                            break;
                                    }
                                }
                                break;
                            case 302346617:
                                break;
                            case 1532637766:
                                str = "ۦۛ۫ۡۨۘۘۨۨۢۦۖۘۘۛۤۡۗۦۛۢۗۖۘۜۘۦ۠ۡۨۤۖۛۥۤۡۘۦۖ۠ۖۜۘۧۢۢۨ۬۫ۛ۠ۙ";
                                break;
                        }
                    }
                    break;
                case 38339364:
                    String str18 = "۠ۚۘ۬ۧۖۛۖۖ۟ۧۢۖ۬ۨۗۤ۫۫ۜ۬۬ۤۥۘۖۦۗۜۛۤۤۖۡۜۦ";
                    while (true) {
                        switch (str18.hashCode() ^ (-664720619)) {
                            case -1167999107:
                                str = "ۧۖۦۚۦۦۢۗۢۛۖۢ۬ۗۨ۬ۥ۠۬ۚۜۘۘۦۚۛۥۡۘۘۚۢ۬ۜۦ۠ۥۡ۫ۤۗۛۨۘۧۖۤۡۥۡۘ";
                                continue;
                            case -663538442:
                                str = "ۨ۫۠ۨ۠۫ۜۘۘ۠ۛ۫۠ۗۢۖۡ۬ۗۨۖۘۜۡۢۛ۫۫ۥۤۡ";
                                continue;
                            case 753305428:
                                str18 = "۫۟ۥۤۦۡۙۛۖۜۢۜ۬۟ۡۘ۟ۨۡۘۙۤۨۘۚۢۥۥۗ۫ۘۜۥۘۜۙۡ۫۠ۥ۫ۨۛ۫ۖۘ";
                                break;
                            case 2133008424:
                                String str19 = "ۛۖۖۘۙ۫۬ۜۡۨ۬ۤ۫ۦ۫۟۫۬ۧ۟ۢۡۡ۫ۨۧ۠ۢۗۖۘۤ۠۬۠ۡۙۗ۬۬ۙۡۧۘۢۢۗ۟۠ۘۘ";
                                while (true) {
                                    switch (str19.hashCode() ^ (-2082408002)) {
                                        case -1368002266:
                                            str18 = "ۚ۫ۜۚۖۥۘ۫۫ۧ۫ۨۖۚۘۡۘۚ۠ۗ۟۟۬ۙۚ۟۠ۖۨۘ۫۬ۗ۫ۖۨۘۘۖۙ۠ۖۦۘۦۚۜۘۨۜۦۛۙۘۙۧ۟ۖۢ۬";
                                            break;
                                        case -577418137:
                                            str19 = i != 2 ? "ۜ۠۬ۦۖۗۜۨۚۤۥۤۡۗۜۦۙ۬ۗ۟ۦۘۛۡۜۘ۬ۗ۫ۥۨۥۘۧ۟ۥ۫ۖۘۛۜ۫ۥۙ" : "ۡ۠ۡۛۡۧۘۨۤۤۜۜۥۙۥۚ۟ۜۧۦ۬ۚۛۙۧۢۖۙۧۚۤ۟ۥ۠۠ۜۡۘۦۢ۫ۡۗ";
                                            break;
                                        case 462095061:
                                            str19 = "۬ۨۗ۬ۙۡۖ۬ۢۥۛۘۚۤۖۘ۬۟ۦۢ۫ۤۢ۫ۜۘۘۚۥۛۘ";
                                            break;
                                        case 874390709:
                                            str18 = "ۜۤۗۢ۠ۘ۠۬ۘۘۤۗۙۜۡ۬ۛۥۥۘ۫ۛ۟۟۠ۦۘۥۡۥۚ۬ۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 106020303:
                    String str20 = "ۨ۠ۤ۟ۛ۬ۤۗۘۥۢۚۨۦۢۧۙۗ۠ۜۘۤ۫ۥۘۡۖۤ۟ۜۘۘۜۙۨۥۜۡۡ۠ۢ۟۟ۜ۟ۢۜ۠ۖۚ";
                    while (true) {
                        switch (str20.hashCode() ^ (-1742763138)) {
                            case -1551615608:
                                String str21 = "ۛۖۚۖۚۡ۠ۥۢۨ۬ۙۢۧۗ۫ۜ۟۟ۙۤۚۨۖۘۜۨۘۢۘ۫ۥ۟۟ۜۛۙۙۨۖۥۙۡۘۗۖ۫۠۬ۘ";
                                while (true) {
                                    switch (str21.hashCode() ^ (-2040177970)) {
                                        case -2139725371:
                                            str20 = "۠۫ۜۘۨۥۧۛۘ۟ۘۚۜۚ۬۫۬ۧۤۡ۟ۥۙۜۡۘۛۛۨۙۦۧۥۖۥۜۨۧ۫ۖۘۘۙۚۨۘۡ۠ۨۘ۬ۜۘۘ";
                                            break;
                                        case -1459669438:
                                            str21 = b7.OooO0Oo().OooO0OO == 4 ? "ۗۚۖۡۘۚۘ۟ۤۤۥۘۚۙۖۗۜۙۛۘۨۖۧۥۘۚ۫ۢۡۧۜۤۦۥۘ۬ۤ۬۫ۚۜۥۜ۟ۥۚۥ۠ۛۖ" : "ۢۛۨ۫ۖۖۘۧۧۜ۬۠ۚۤۦ۟ۡۧۜۡۖۨۙۧ۠ۤ۟ۜۡۤ۫ۗۙ۫ۦۥۙۛۙۘۜۦ۠۬ۘۦۡۜۘۧۢۧۥۙ";
                                            break;
                                        case -1431512778:
                                            str21 = "ۥۘۦۧۥۥۨ۫۟ۘۡۘۙۦۥۘۨ۟ۥۘۘۤۨۘۨۙۛۢۘۦۘۢۖۦۘ";
                                            break;
                                        case -401909339:
                                            str20 = "ۖ۬ۖۘۦۘۦۘۡۤۜۦۨۤ۟ۤۤۙۡۛۘ۟ۘۖۦۛۘۦۚۧۡۗۤۘ۬ۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case -885964018:
                                str = "ۢ۠ۦۦۜ۫ۗۥۜۛۜۤۖۜۦۥ۬۫ۥۧۨۙ۟ۛ۟ۦۘ۬ۘۘۘۗ۫ۦۘ۫ۥۖۘۗۚ۠ۢۥۧ";
                                continue;
                            case -746428940:
                                str20 = "ۧۦۜۘ۠ۛۖۘۦ۫ۘۘ۬۠ۖۨ۠ۜۘۚۘۦۘۘۦۘ۠ۤۥۧ۬ۨۘۥۘۦۘۢۧۦۘۙ۟ۡۘ";
                                break;
                            case 375985424:
                                str = "ۙۖۜۚۜۖۘ۟ۢۖۚۛ۟ۧۥۦۘۥ۟۫ۤۦۥۘۘۗۡۘ۬ۦۘۘۤۡۨۥۤۨۛۡۘۘۤۘۥۤۜ۫ۜۨۢۘۢۨۘۘ۟ۦۚۤۨۘ";
                                continue;
                        }
                    }
                    break;
                case 136762138:
                    i5 = R.drawable.elfin_pause_down;
                    str = "۠ۧۤۗۘۤۘۨۖۘ۬ۨۨ۫ۗۨۢۙۦۘ۬ۢۖۘۤۥۤۛۢۖۛۙۙۨۧۘۡۤۦۙ۬ۜۘۜۢ";
                    break;
                case 195897022:
                    i2 = R.drawable.elfin_pause_left_up;
                    str = "ۦ۫ۘ۠ۖۥۘۢۘۛۙ۟ۨۘۤۗۤۖ۟ۨۘ۟ۢۧ۫ۡۛۖۡۖۘۤۖۡۘۘۜۦۘۦ۫ۖۘۚۨۤ۟ۘۛ";
                    break;
                case 339685476:
                    imageView5 = this.OoooooO;
                    str = "ۚۖۚ۟۠ۡۘ۫ۥۜۢۜۜۙۡ۟ۛۖۧۘۛۢۖۘۜۛۜۛۜۗۧۡۡۧۦۖۘۦ۠ۖۘ";
                    break;
                case 374812938:
                    String str22 = "ۛۗۧۡۢۘ۟ۖۧۦۧ۠ۙۜۘ۫ۥۘۨۡۛۤۗۜۧ۫ۡۘۤۛۥۘۖ۫ۦ۟۬ۜ";
                    while (true) {
                        switch (str22.hashCode() ^ 2067858058) {
                            case -286191912:
                                str = "ۙ۠۠ۨ۟ۨۘۤۙۦۘۛۤۥۙۡۧ۬ۙۨۨۘۖۢ۫ۦۛۧۨۚۧۢ۟۟ۡۘۡۨۛ";
                                break;
                            case -61566727:
                                str22 = "۫ۙۖۜۖۘۥۜۛ۬ۡۘۖ۬ۖۘۘۚۖ۟۫ۙ۟ۥۥۘۦ۟ۚۥۗ۬۟ۚۢۘۗ۠";
                                break;
                            case 924647209:
                                break;
                            case 1866202244:
                                String str23 = "ۡ۫ۛ۫ۨۛۨۚۧۘۥۘۨۥۘۘۧۥۘۘۘۦۘۨۗ۠ۙۗۛۜۙۨۘۡۨۘ۫۠ۢۦۡۜۘۗۘۨۙۙ۟۟ۧۘۘۦۙۘۚۜۛ";
                                while (true) {
                                    switch (str23.hashCode() ^ 873708553) {
                                        case -1799801216:
                                            str22 = "ۢۜۨۚۖۖۘۧۧۥۘ۠ۨۜۘ۟ۢۗۦۘ۫۠ۗۧۨ۟ۡۘۛۘۘۘ";
                                            break;
                                        case -933126807:
                                            str22 = "ۚۢۥۘۢۤۧ۠۫ۙۖۘ۠ۦۖۢۨۛۨۖۧۘۘۤۧۜۨ۠ۚۚۦۘۗ۟۬ۘۤ۟ۧ۫ۜۘۖۢۥۚۚۖۛ۟ۜۘۙۡۢۚۨۜۘ";
                                            break;
                                        case -723968763:
                                            str23 = b7.OooO0Oo().OooO0OO != 2 ? "۠ۥۤ۬ۜۥ۬ۧۜۤۛ۠ۜۖۖ۬ۗۜ۬ۧۛ۫ۤ۟۟ۜۙۙۦ۫۟ۙۘۜۧۘۧ۬ۖۚۖۙ" : "ۦۖۜۘ۫۠ۘۨ۬ۤۛۛۜۖۗۘۘۘۦۡۘ۬ۜۚ۬۬ۜۘ۫۠ۗ۫ۜۤۢ۠۠۠ۙۥۘۙۨۢۡۢۜۘ";
                                            break;
                                        case 1432167743:
                                            str23 = "ۢۙ۟۫ۦۥۘۘۘۨۖۥۘۚۛۜۥۧۘۦ۫ۥۘ۠۠۟ۘۚۘۘۜ۬ۥۜۥۧۘ۟ۡ۫ۨۙۢۢۛۚۢ۫ۥۘۧ۫۠ۜۘۜۨۦۨ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 437444681:
                    str = "ۙ۬ۧۨ۬ۜۘۥۥۢۙۖۢۡۢۦۗۥۜۖۙ۠ۢۘ۟ۜۙۨ۬۟ۛۙۤۛۤ۬ۥۘ۠۬ۡۡۚۙ۬ۤۡۘۜ";
                    break;
                case 446926401:
                    str = "ۥ۫ۡ۠ۥۚۥۖۡ۠ۧ۟ۧۦۘۢۛۡۘۤ۫ۡۘۙ۟ۧ۟ۨ۟ۡۚۡۘۡۡۜۥۦۘ";
                    imageView13 = imageView10;
                    break;
                case 504343418:
                    i4 = R.drawable.elfin_run_left_up;
                    str = "ۖۛۗۥۡۖۘ۫ۥۘۘ۬ۛۧۨۢۙۡۨ۟ۘۖۤ۬ۛۘۘۦۙۥۘ۫ۘۤۤۖ۬ۜۘۘ۬ۗۧۜ۬ۡۘ";
                    break;
                case 598335664:
                    i12 = R.drawable.elfin_normal1;
                    str = "ۤۡۦۛۙ۠ۙۖۘۘۧۙۧ۟ۨۘۤۥۚ۟ۙۦۘۘۙۛۛۗۥۘ۫ۧۜۘ";
                    break;
                case 632677904:
                    str = "ۧ۠ۥ۫ۗۢۖۙ۬ۘۨۥۢۥۗۜ۫ۥۘۢۢۢ۫ۘۤ۫۟ۘۨۘ۠ۛۥۖۘۙۙ۠ۜۘۗۚۥۚ۠۬۫ۚۖۡۡ۬ۖۢ۫";
                    imageView13 = imageView5;
                    break;
                case 704582291:
                    String str24 = "ۥۗۤۥۢۘۘۚۗ۠۫ۢۛۥۘۘۖۧۥۥۚ۬ۤۦۦۥۘ۠ۙۖۘۜۡۧۥۨۛۙ۠ۘۨۘ۠۫ۛۙۡۤ۬ۘۚۤۤۛ";
                    while (true) {
                        switch (str24.hashCode() ^ (-124482781)) {
                            case -1150159932:
                                str = "ۙۘۘ۟۫ۨ۬ۨۧ۬ۤۥۡۢۛۡۢ۫۫ۥۧۘۦۜۚۖۨۦۘۨۙۢۥۜۘ۠ۚۛ۠ۦۜۘۛۙۥ";
                                continue;
                            case -1001541924:
                                str = "ۦۙۙ۠ۡۦۜۘۨۘۤۦۧۨۤۘۗۨۨۥۜ۫ۘۨۡۘۦ۠۫ۡۖۜۥۛۢۗۧۜۘۨۗۤ۬ۦۧ۫ۤۙۤۧۦۘ";
                                continue;
                            case -476530846:
                                str24 = "ۛۗۡۘۨۜ۬ۧ۟ۖۘۦ۠ۗۘ۫ۚۤۤ۫ۗۦ۠ۥۚ۠ۙۧۡ۟ۧۡ۠ۛ۠ۜۘ";
                                break;
                            case 1795175177:
                                String str25 = "ۨۗۥۘ۬۫ۢ۠ۚۢۖۡۖۘۙۢ۟ۜ۬ۙۢۤۘۙۥۙۤۘۤۡۧۖۘ۟ۚۨۘۘ۠ۥۘۤۧۖۘۤۗۖۚۤۥۘ۠ۖۧۘ";
                                while (true) {
                                    switch (str25.hashCode() ^ (-1851520042)) {
                                        case -1963024796:
                                            str24 = "ۜۜ۬۠ۨۧۨۛۨۘۥۤۧۥۡۤۦۜۧۘ۫ۜۡۘ۟ۥۨۘۦۦ۟۫ۛۥۘ";
                                            break;
                                        case -1613630638:
                                            str25 = "ۚ۟ۥۘۥۥۨۘ۟ۡۦۘۛۚ۟ۜۡۚۧۗ۫ۥۥۨ۟ۖۘۧ۟ۥۢۥۛ";
                                            break;
                                        case 969703412:
                                            str25 = i != 4 ? "۟ۙۨۘۡۥ۬ۦۥ۟۠ۦۦۘۙۦۙۡۦۖۘۡۜۘۥۢۙ۠ۥ۬ۙۚۖ۠۟ۦ۟ۢۨ" : "ۦۙۛۡۤۜۦ۠ۘۘۦۙۙ۫ۢ۟ۗۢ۫ۜۧۥۦۗ۬ۨۜۘ۫ۦ۟۫ۙۦۘ۠۠ۦ";
                                            break;
                                        case 1273434520:
                                            str24 = "۟ۥۚۨۤۜۛۥ۠۟ۚۥۜ۟ۧۨۡۛۡۖۙۡۖۖۘۥۤۥۜۛ۫۟۠ۢۧۚۦۘۗۜۖۢۦۘۘۘ۟ۥۡۥۥۘۜ۬۫ۛۛۙ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 738828864:
                    imageView2 = this.OoooooO;
                    str = "ۛۥۖۡ۬ۜۘ۟ۨ۬۬ۨۖۥۤۨۘۘۨ۫۫ۧۥۘ۟۫ۢۗ۟۟ۨۖۘۘۛۗۙ۠۠۫۬ۤۙ۠ۘۘۛۚۤۧۦۢ۠ۙۙۜۜۗ";
                    break;
                case 859061586:
                    i7 = R.drawable.elfin_run_down;
                    str = "۫۫ۙۗ۫۫۬ۤۗ۠ۨۧۜۢۘ۠ۢۢۢ۟ۖۢۘ۫ۥۘۦۧۤۤۙۨۘۗ۟ۘۘ";
                    break;
                case 901330243:
                    str = "ۘۛۗۗۨۡۘۗۜۜۨۛۤۥۧ۫۠ۜۘ۫۟ۖۘ۠ۛۗۛۨۥۨۖۦۘۛۥ۫ۜ";
                    break;
                case 906314040:
                    imageView10 = this.OoooooO;
                    str = "۬۟ۗۧۘ۫ۚۖۡۚۘۗۘ۬۫ۖ۬۬ۜۘۨۘۗ۟ۖۘ۟۫ۡۢۚۛۜۘۦۘۖۦۖ";
                    break;
                case 988541082:
                    String str26 = "ۧۥ۟ۛ۠ۤ۠ۥۥۡۧ۬ۨۥۤ۬ۧۛۘ۠ۙۡۛۢۥۢۤۙۚۨۜۦۘۘۤۜۜۚۨۘ۠۟۠۫۠ۚۙۚۗۢۖۘۘۛۛۡۘ";
                    while (true) {
                        switch (str26.hashCode() ^ (-1557642387)) {
                            case -1994618240:
                                str = "ۧۘۨۘۘۜۤۖۢ۬ۧۛۥۘۡۡ۫۬ۖۘۘۙۦۧۘۢۖ۠ۖۘ۬۠ۦۢۜۖۧۙۦۘۘ";
                                continue;
                            case -1515006289:
                                str = "ۨ۬ۚ۟ۗۦۙۥۘۖۢۜۘ۠ۤۜۗۢ۠ۨ۬ۦۘۘ۫ۛۚۧۘۦۦۘ";
                                continue;
                            case 1356178772:
                                String str27 = "ۧۡۗۤۨۢۡۦۢ۟۠ۡۘۙ۫ۢۜۦۨۜۜ۠ۥ۫ۦۖ۫ۛۢۖۙۜ۟ۗۚۖ";
                                while (true) {
                                    switch (str27.hashCode() ^ 1665994426) {
                                        case 728010241:
                                            str27 = "۠ۥۜۤ۠ۥۘۢۗۨۘ۫ۤۚۢ۟ۘۘۘ۫ۨۘۢۤۛۜۡۖۘۧ۫ۦۘۚۥۘۜۖۚۗۦۦ";
                                            break;
                                        case 836562997:
                                            str27 = b7.OooO0Oo().OooO0OO == 4 ? "ۢۢۖۢۜۦۘۛۧۧۜ۠ۡۘ۟ۡۧۧۘۦۦۧۚۤۤۛ۠۬ۜۧۘ" : "ۚۦۡۘۜۨۧۡ۫ۨۘۗ۫ۘۘۘۧۘۧ۠ۤۤۙۜۛۡۥۘۗۧ۬ۤ۟ۨۘ";
                                            break;
                                        case 1243739774:
                                            str26 = "ۤۢۦۘۨۤۥۢۛۥۘۙۗۜ۠۫ۛۨۦۖۘۖۘۥۘۡ۫ۚۖۜۖۨۘۛۢۜ۫ۚۥ۫ۢۖۤۢ۠ۡۘ۟ۘ۫ۥۦ۬ۖۡ۫۠ۨ";
                                            break;
                                        case 1907406229:
                                            str26 = "ۡۗۘ۬ۢ۟ۚۡۘۦۧ۠ۙ۫۟ۢۨۙۦۗۤ۟ۨۘۛۖۚۘۖ۟ۤۡۨ۬ۜ";
                                            break;
                                    }
                                }
                                break;
                            case 1882632021:
                                str26 = "ۥۖۧۗۚۥۘۥۡۘۖۨ۠ۧۧۨ۟۠ۘۘۛ۬ۦۡۤۥۦۙۦۧۗ۠۬ۡۘۤۖۚ۠ۤ۠ۖۛۦۚ۟۠ۦۨ۫";
                                break;
                        }
                    }
                    break;
                case 1017175064:
                    i11 = R.drawable.elfin_pause1;
                    str = "۟ۘۥۥ۫ۛ۬ۨ۬ۦۥۧۘۘ۟۠ۜۙۗۜۗۤۚۡۥۦۙۡۙۖ۬۬ۢ۬ۧۥۙۗۢ۠ۤۛۗ۠ۤۥۡۚ";
                    break;
                case 1136291510:
                    str = "ۨۚۦۘۢ۟۫۫۟ۖۤ۫ۧۧۥۘۛۛۖۢۙۗ۟ۜۡۛۜۥۘۛۢۡۘۥۧۚۢۙۨۨۢۨۘۨۜ۠ۜۙۨۢ۟ۗۡۨۡۧۙ";
                    i14 = i5;
                    break;
                case 1186189381:
                    str = "۟ۥۥۘ۟ۘۡۧۛۘۘۛۜۘ۫ۛۥۤ۠ۜۘۙۥۘۖۜ۬۠ۚۦ۟۫ۘۘ۟۠ۦۘۘ۠ۚ";
                    i14 = i10;
                    break;
                case 1207494274:
                    String str28 = "ۚۨ۫ۙۚۛۘۤۖۥۢۨۧۥۖۘ۬ۜۢ۫ۛۜۤۤۜۘ۠ۡۗ۠ۛ";
                    while (true) {
                        switch (str28.hashCode() ^ (-2082730632)) {
                            case -1604132423:
                                str28 = "ۡۘۤۨ۬ۛ۫ۤۘۥۢۖۗ۫ۦۧ۫ۜ۠۫ۗۙ۫ۘۥۘ۬ۜۙۚۚۤ۫۟ۦۜۘ";
                                break;
                            case -1379661948:
                                str = "۫ۖۘۘۦۗۥۘۤ۫ۤۖ۟ۡۧۗ۫ۨۙۥۛۧ۟ۧۘۘۥۤۖۙۦۚۢۛۖ۟ۜۚۤۧۦۙ۟ۡۘۨۢ۫ۖۘۜۨۦۜۛۙ";
                                continue;
                            case -1201978107:
                                String str29 = "ۡ۟ۨۖۤۘۘۙۚۗۗۗۡ۟۬ۡ۟ۨۘۧۘۡۤۜۧۜۙۙۥۦۛۦۢۧ۠۟۟ۥۥۘۥ۫ۘۙۖۧۘۚۛۦۘ";
                                while (true) {
                                    switch (str29.hashCode() ^ 149857948) {
                                        case -1497443860:
                                            str29 = "ۨۛۥۢۨ۬ۘۙۨ۠ۛۧۚۖۢۗۗۨۡۘۨ۫۫ۘۗۖۧۦۖۤۚۦ۫";
                                            break;
                                        case 219970573:
                                            str28 = "۬۠ۥۦ۟ۡۗۤۢ۬ۢۛ۟ۨۜۘۗۡۛۘۚۜۘۜ۫ۥۘۢ۬ۥۚۘۨۘۛۖۗۚۖ۠";
                                            break;
                                        case 455135095:
                                            str29 = b7.OooO0Oo().OooO0OO == 3 ? "۬ۜۖۘۦۛۘۘۤۨۧۘۙۨۜۘۦ۬ۧۙۢ۬۟۫ۨۘۤۙۖۖۙۦۛۙۧ۬ۚۚۦۢۢ۟ۜۡۗۛۚۛۧ۬۫ۦۤۙۛۥۗۛ" : "ۘۘۨ۠ۢۨۘۗۢۨۘۛۙۜۥۙۖۚ۬ۖۤۧۥۘۘۥۘۘۦۙۙۨۤۨۘۖۜۛ۫ۢۦۘ۟ۘۗۜۧ۠";
                                            break;
                                        case 1634548749:
                                            str28 = "ۖۦۖۧۗۤۙ۟ۜۘۤۥۖۦۨۖۥۛ۟ۦۘۡۙۨۢۘۙۡۘۡۦ۫ۨۖۘ۬۠ۜۘۢۘۢۙۨ۟ۢۦۢۙ۟ۢۥۙ۫۠ۚۦ";
                                            break;
                                    }
                                }
                                break;
                            case 1252749524:
                                str = "ۜۗ۫ۜۧۦۘۧۦ۟۬ۘۨۘۢۥۧۘۜۦۖۘۖۖۨۘ۟ۧۚۦۡۡۜۘۦۤۡۡۘۗۘۨۘ۠ۚۘۚ۟ۤ۬ۦ۬ۖ۬ۨۘ";
                                continue;
                        }
                    }
                    break;
                case 1212279535:
                    String str30 = "۫ۚۢۗۛۡۘ۠ۘۤۗۜ۠۫ۗۦۥۨ۠ۧۤۨۡۡ۫ۙۡۥۢ۫";
                    while (true) {
                        switch (str30.hashCode() ^ 1548693506) {
                            case -1513503514:
                                break;
                            case -970885810:
                                str = "۬ۙ۫۠۠ۖۖ۟ۙۥۖ۫ۢۙۛۥۧۘ۟ۚ۬۬۬ۧ۬ۨۢۨۜۚ۠ۖۡۢۦ۬ۛ۫۬ۘۨۜۨ۟ۜۜۥۦۘ";
                                break;
                            case -260403100:
                                String str31 = "ۨۥۥۜۤ۠۬ۖۚۜۜۖۘۙۨۢۧ۠ۘۘۡ۫ۘۘ۬۫ۨۘۘۤۘۧۧۚۤۚۘۥۘۛۖۨۗۢۚۥۘ۟ۗۗۦۚۦۘ";
                                while (true) {
                                    switch (str31.hashCode() ^ (-1305880428)) {
                                        case -1679859307:
                                            str31 = "ۘۢۖۘ۠ۧۜۘ۫ۧۤۦۖۛ۬ۥۥۢۘۗ۟۫ۜۘۥۤۛۛ۫ۢۜۢ۟ۖ۠ۙۗۨۡۥ۬ۨ۟ۘۙۡۜۥۚ۬ۦۡۜۥۘۘۚۜۘ";
                                            break;
                                        case -1185142882:
                                            str30 = "ۤ۟ۨۡ۫ۦ۬ۧۥۘۘۥۤۛۙۙۨۗۙۡ۫۫ۖۘ۟۫ۡۘۗۜۥۘۗۤۡۘۦۨۦۘ۬۠ۡۜۛۨۘۤۡۦۘ۫ۦۘ";
                                            break;
                                        case -732440101:
                                            str30 = "ۥۗۢۨۖۖۘۖۖ۫ۢۥ۟ۨ۬ۥۢۙۘۘۘۜۖۦ۬ۙۡۜۧۗۤۜۦۢۙۘۘۢۗۡۡۘۢۡ۠۬۫ۗۥ۫ۙ۬ۙۨۘۜۘ";
                                            break;
                                        case 2108493752:
                                            str31 = b7.OooO0Oo().OooO0OO != 2 ? "ۗۗ۟ۧۤۘۘۙ۠۟ۢۢۖۘۙۢۤۡۘ۟ۘ۬ۧۙ۠ۛ۟ۛۥۘۗۡۦۘۨۘۧۘۡۗۥۘ" : "۠ۖ۟۫ۨۖۖۖۘۘۥۥۦۘۖۖۚۨۖۗۙ۟ۤۧ۟ۜۤۥۧۤۧۦۘۦۘۜۘۛۜۢ";
                                            break;
                                    }
                                }
                                break;
                            case -127527651:
                                str30 = "ۚۤۦۘۗۜۜۘۘ۠ۘۥۜۗۚۜۖۢۚۢۦۦۦۜۜۗۖۙۛۗۚ۟ۡ۬ۨۚۛ۠۫۫۬ۨۥۛ";
                                break;
                        }
                    }
                    break;
                case 1224001476:
                    str = "ۜۥ۠۟ۘۖۡۦۢۧۚۡۨۛ۠۫ۦۤۗۜۜۙۧۥۘۙۘۘ۠ۢۥۧ۫ۡۨۛۧ";
                    i14 = i9;
                    break;
                case 1392722943:
                    imageView4 = this.OoooooO;
                    str = "ۦۤۖۘۦۡۨۡۦۜۘۙ۠۠ۤۨۙ۫ۚ۫ۢ۟ۡۘۘۘۘۘۙ۫ۨۘۡۙۨۘۘۘ۬ۡ۫ۢۡۡۙ۠ۖۘۘۛ۬ۙۙۛ۠";
                    break;
                case 1458589128:
                    imageView8 = this.OoooooO;
                    str = "ۛۥۖۙ۟ۜۖۚۤۖۥۨۘۡ۫ۦۙ۠۬ۗ۠ۚۨۤۢ۠ۧۡۦ۫ۥۡۛۘۤۜ۟";
                    break;
                case 1644387178:
                    str = "ۤ۟۠۫ۗۥۧۤ۠ۛۨ۟ۨۨۥۘۦ۠ۤۤۜۥ۫ۧۢۡۜۧۜۛۦۢ۠ۡ۠۠ۥۘۚۚۜ۬ۦۥۘۡۦۥۘ۫ۢۦ";
                    imageView13 = imageView3;
                    break;
                case 1677637400:
                    str = "ۖۖۚ۬۠ۜۨ۟ۚۨۜۤۗۘۨۨۨۖۡۘۚۥ۟ۚۡۢۨۜۙۛۘۚۦۡۤ۟۬ۙۨۚۘۧۛۥۘۖ۟ۥۘ";
                    i14 = i2;
                    break;
                case 1714273507:
                    str = "ۙۡ۫ۛۥۦۘۢۙۦ۫۫ۥۢۡ۟ۚۨ۟ۦۧۗ۫۟ۡۢۘۘۢ۫۟ۥۗۜۘ۬۠ۤۘۢۤۦ۟ۙ۟۟ۘۘۥ۫۟ۙۥۘۜۘۥۘ";
                    imageView13 = imageView2;
                    break;
                case 1735999189:
                    str = "۬ۤ۬ۢۤۥۘ۫ۙۥۡۦ۬۫ۙۗۚۖۤۘۡۖۘۡۤۙۛ۟ۜۚۢۥۘ";
                    imageView13 = imageView8;
                    break;
                case 1760169915:
                    str = "ۛۡۧۢۤۢۡۙۙۖۨۙۗۡۦۘ۟ۨۢۨۚ۟ۨ۟ۥۘۨۡۤۢۖۗۥ۟ۙ۬۠ۜۧۚ۠۟ۘۦۙۗ۫ۡۖۤۖۛۥۦ۬ۡ";
                    imageView13 = imageView11;
                    break;
                case 1895112070:
                    i6 = R.drawable.elfin_normal_down;
                    str = "۬ۚ۫ۘۙۡۤۚۥۡۘۦۘۙۚۖۚۗۖۘۥۡۖۘۧ۬۫۬۟ۨۘۜۤ۠ۜۧۨۥۛۢۚۘۚۗۘۘۤۘۜۘۛۥۘ";
                    break;
                case 1911711327:
                    str = "ۜۥۡۘ۠ۙۨۥ۠ۨۗۙ۬ۖۨۘۨۤۥۚۦۨۗۘۦۘ۬ۚۚۦۘۖۘۖۢۛۗۜۦۘۜۖۢ۫۟ۢۢۤۖۥ۠۫";
                    i14 = i12;
                    break;
                case 1923393263:
                    String str32 = "ۥ۫ۦۖۨۢۢۧۢۥۤۖۘۚۛۜۘ۠۫ۨ۟ۧۡۘۦۖۧۘ۟ۘ۠ۧۧۜۧ۠ۛۨۡۨۘ";
                    while (true) {
                        switch (str32.hashCode() ^ 680791137) {
                            case -2029113019:
                                String str33 = "ۜ۟۬ۢۢۗۦۡۨۙۜۘۗۡۜۨ۟ۖۘۜۚۡۘۙۗۘۖۡۘۘۜۛۦ";
                                while (true) {
                                    switch (str33.hashCode() ^ 732905715) {
                                        case -1637644922:
                                            str32 = "ۧۡۖۙۛۨۘۧۗۡۘۛۧۖۧۙۘۘۨۢۘۜ۟ۨۘۘۗ۬ۛۡۥۘۨۦ۟";
                                            break;
                                        case 585608382:
                                            str33 = "ۡۧۙۖۢۡۘۨۤۨۢۘۗ۠ۡۢۜۥۥۘ۟۠ۗ۫ۜۘ۟ۨۥۘۛۚ۬ۖۙۧۨۦۨۘۚۤ۫ۥۢۢۗ۬ۘۗۨۡۘۦۗۚۜ۫";
                                            break;
                                        case 1010888703:
                                            str33 = b7.OooO0Oo().OooO0OO == 3 ? "ۗۡۢۜۙۙۡ۬ۖۘۦۙۜۘۨۗۡۘۜۖۖۚۢۥۗۜۘۥ۬ۜۘۜۧۥۘ" : "ۨۖۗۗۙۘۦۤ۬ۢۗۢ۟ۨ۫ۡ۫ۚۢ۫ۧۘۘۙۙۘۘۙۤۖۘۙۜۘۘۢۤۘۤۦۘۤۨۡ";
                                            break;
                                        case 1464238842:
                                            str32 = "ۗ۟ۦۗۖۧۨۢۤۛۜۦۜۧۥۨۥۘ۬ۤۥۘۤ۠ۗۚۖۖۘۖۜۚ";
                                            break;
                                    }
                                }
                                break;
                            case 821666349:
                                str = "ۧ۟ۡۘۘ۬ۡ۬ۙۢۤۖۘۖ۬ۡۦۖۤۚۛۦۘۛۚۜۘۡۤۘۘ۫ۗۧۙۨۨۙۙۡۘۧۜۦۚۜۚۧۧۡۨۙ۠";
                                continue;
                            case 1212128964:
                                str32 = "ۡۘۨۥۤۘ۫ۗۡۘ۫۫ۖۥۡۦۥ۠ۖۘۤۦۖ۬ۦ۫ۦۙۦۢۚۧ";
                                break;
                            case 1550227668:
                                str = "۬ۗۥۘۡۘ۬ۖۛ۠ۤۡ۬۟ۡۚ۟۫ۘۚۡۢۗۖۘۗۘۧۦۜ۟ۡ۫ۚۛۦۘ";
                                continue;
                        }
                    }
                    break;
                case 1930399379:
                    str = "۬ۘۦۛۢ۫ۤۙۢۧۧۗۖۖ۟ۧۖۦ۠ۡۘ۟ۜۗ۫ۘۢۦۚۥۘۧۛۨۦۤۨۜۥۖۨ۫ۖۧۡۘ۟ۖۖۗ۫ۜۙۖۧ";
                    break;
                case 2114331786:
                    str = "۬ۨۦۘۚۛ۬ۥۜۨۘۤۡۘۧۘۙۗۜ۠ۢۧۗ۬ۦ۫ۚۦۡۢۢۧۨۡ۟۫ۘۖ۟ۡۖۘ۫ۛۗۘۘ۠۬ۗۤۘۥۘۢ۠ۥ";
                    i14 = i8;
                    break;
            }
            return;
        }
    }

    public void Oooo0() {
        String str = "ۜۦ۫ۛۘۘۦۜۖۥۦۛ۫ۢۥۘۢ۠ۜۡۙۨۘۤ۠ۥ۬ۙۤۚۚ۟ۜۖ۬۟ۗ";
        int i = 0;
        ImageView imageView = null;
        ImageView imageView2 = null;
        int i2 = 0;
        ImageView imageView3 = null;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 480) ^ UiMessage.CommandToUi.Command_Type.FW_GET_VALUE_VALUE) ^ 549) ^ 1510106953) {
                case -2126381943:
                    imageView2.setImageResource(i2);
                    str = "ۨ۠۫۬ۚۜۘۥۨۨۘ۠ۨۚۤۡۥۘ۠ۗ۫۟ۙۦۡ۠۠ۙۨۚۨۜۛ۟ۜۖۘۧۚۜۘ۟۟۠ۡۡۙ";
                    break;
                case -2025042270:
                    this.oo000o.setText(getContext().getString(R.string.floatview_elfin_run));
                    str = "ۗۦۢۦۗۘۤۧۤۖۦ۫ۡۛۚۡۥۘ۠ۙۘۘۚۦ۟ۜ۫ۨۖۚۗۘ۠ۡ۫ۘۘۦ۟ۘۦۛۨۘ";
                    break;
                case -1938674682:
                    String str2 = "ۙۥۘ۬ۙۚۡۡۜۘۙۥۡۘۦ۠ۤۜۜۦۧۛۡ۬ۜ۠۠ۘۗۗ۟ۨۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-159420498)) {
                            case -1714945873:
                                str2 = "ۨۧۨۘۡ۟ۘۘ۟ۧ۟۫ۙۜۧۦ۠ۖۦۥۨۛۖۘ۟ۡۧ۫۬ۢ۬۬";
                                break;
                            case -794903193:
                                str = "ۢۢۜۜۘۖۜۢۤ۠ۨۘۘۙۖۘۜۦ۬ۙۘۘۘۧۘۨ۟ۥۤۙۖۘۦۦۗ۫ۖۜ";
                                continue;
                            case -196976586:
                                String str3 = "ۤۧۜ۠ۡۧۘۢۧۦۗۧۘۛۢۦۚ۫ۛۥ۠ۢۡ۠ۧۡۧۥۘۘ۟ۗۜۥۤ۫ۘۜۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1153983243) {
                                        case -1756803263:
                                            str3 = "ۡۧۦ۬ۘ۠ۤۦۛۢۢۜۘۤۤۦۘۡ۬ۜۘۗۤۙ۫ۙۖۘ۫ۛۦ";
                                            break;
                                        case -1231289729:
                                            str2 = "۬۠ۘۘۛۜۧۧۦۡۚۦۘۡۘۤۢۛۦۧۨۨۘ۟ۘۜۡۨۜۢۜۚ";
                                            break;
                                        case -622872119:
                                            str2 = "ۗۦۖ۟۠۫ۗۥۤ۫ۢۨ۠ۛ۫ۘۛۘۘ۟ۢۜۘۥۘۚۙۚۡۘۡ۟ۙۥ۟ۚۤۦ۠۬ۧۨۘۚۨ۬ۥ۬ۡۡۙۦۛ۟ۖۙ۠";
                                            break;
                                        case 1280006944:
                                            str3 = b7.OooO0Oo().OooO0OO == 3 ? "۬ۤۘۘۖۥۛ۠ۨۦۙۚۥۘۧۗ۬ۡۚ۫ۡۨۙۤۚۥۖۚ۬ۙۖۗۚ۠ۧۜۦۘۘۧۧۚۙ۟ۡۧۨۘۧۡۖۘ" : "ۛۥۚۡۨ۟ۢۖۖۚ۠ۖۘۙ۟ۖۘۜۥۜۖ۟ۜۚۡۘۘۚۥ۫۫ۦۗۖۧۜۘۧۗۘۘۚۘۨۘۥ۟ۦۘ۬ۛ۟ۤۗۖۘۜۘۘۜۦۧ";
                                            break;
                                    }
                                }
                                break;
                            case 689726830:
                                str = "ۖۙ۠ۡ۬۫ۡۦۛۥۗۘۤ۫۠ۧ۬ۡۢ۬۫ۗ۠ۡۘۤۛۗۡۘۥۨ۠ۘۘۢۦۘۘۡۢۨۘۜۚۘ";
                                continue;
                        }
                    }
                    break;
                case -1473474252:
                    str = "۫ۢۥۚۤۢ۫ۙۘۜۤۗۗۨ۠ۨۜۘۘۜۦۦۚ۠۠ۖۜۨۤۧۜ۫ۗۙۙۨۨۜۘ۠۠ۙۦۘۦۤۖۖ";
                    i2 = i;
                    break;
                case -1159849357:
                    this.OoooooO.setImageResource(R.drawable.elfin_normal1);
                    str = "ۦۢۡ۫ۗۤۚۗۡۘۧۢۥۤۗ۠ۙۤۡۘۗۚۡۘ۬ۨۧۘۙۡۘ۠ۦۜ";
                    break;
                case -809458389:
                    str = "ۗۨۜۥۦۨۘۨۗۜ۠ۜۜۘۙۧۢۡۨ۟ۦۧۥۘ۫ۥ۟ۨۚ۫ۙۛۛ۬ۡۥۘۜۡ۟ۢ۟۠۠۬ۡۘۤۛۡۘۙۡۨ";
                    break;
                case -741339358:
                    return;
                case -701772983:
                    str = "ۢۖۜۘ۫ۚ۟ۛ۠ۡۦۨۖۘۤ۬۠ۢ۫ۡ۫ۛۦۨۘۦۦۗۦۚۤ۟ۘۜۛۨۦۘ۬۫ۙۤ۫ۥۡ۟ۖۙ۠ۙۥ۟ۛۘۧۖۘ";
                    break;
                case -280750380:
                    str = "۬ۘۜۘۙۦۗۡۥۚ۟۟۬ۖۛ۬ۢۜۙۢۛۢۘۘۛۖ۠ۗۛۘۧۘۨۦۦۘۨۥۨۘۧۚۤۛۥ۫ۜ۟ۧ۬ۚۦۤۖۚۥۚ۫";
                    imageView = this.o0ooOO0;
                    break;
                case -11636015:
                    str = "ۘ۬ۘۘ۬۫ۙۛ۬ۖۜ۠ۙ۟ۖۦۘۢۥۥۥۦۦۚۤۘۘۙۦۤ۫ۜۖۘ";
                    break;
                case 43679188:
                    this.o00oO0o.setImageResource(R.drawable.floatview_elfin_run);
                    str = "ۡۗ۫ۘۜۡۡۖۨۥۚۗ۟۟ۥ۬ۜۥۘۧۤۛ۫ۙۥۘۡ۬ۛ۫ۡۧۘۙ۫ۜ۠ۡۧۘۖۘۥۘۜۚۨ";
                    break;
                case 199099277:
                    this.o00oO0O.setText(getContext().getString(R.string.floatview_elfin_stop));
                    str = "ۢۙۦۘۨ۫ۗۡۘۘۘۡۛ۠ۤۤۚ۟ۡۤۖۤۦۘۧۧۤۛۤۦۘۛ۟ۦۘۖۖ۫ۘۥۦۘۦۡۡۘۖۛۤۨ۠۟ۧۜۘۛۢۘۚۘۨۘ";
                    break;
                case 262231158:
                    String str4 = "ۚۖۘۦ۠ۘۗۢۤۦۙ۬ۦۢۖۘۖ۟ۙۚۙۙۢۘ۬ۜۥۘۥۨۘۨۘۥۘۦۗ۠۫ۥۥۨۖۘۘۨۨۨۘۜۘۜ۠۟ۨۡۙ۫";
                    while (true) {
                        switch (str4.hashCode() ^ (-1397513545)) {
                            case -1644492895:
                                str4 = "ۢۨۖۘۗۗۦۘۜۛۘۖۖۦۢۗۜۘۥۗۖ۫ۛ۫ۧۗۛۡۘۘۨۖۢۚۢۤۥۥۘ";
                                break;
                            case -1344350941:
                                str = "ۗۜۧ۠ۘ۟ۡۨ۠ۘۜۧۘۢۤ۠۠ۘۡۜ۫ۨۛۡۘۧۜۖۘۡۗۜۘ۠ۙۦۜۥۥۘۙ۫ۨۘۨۥۧۘۡۥ۬ۦ۠ۨۘۙۨۗۗۢۙ";
                                continue;
                            case -528923092:
                                String str5 = "ۘ۬ۦۨ۫ۖۘۛۢۘۘۡۡ۠ۚۨۜۘۢۛۡۘ۬ۖۙۜۡۥۜ۫ۜۘ۠ۦۨۘ۟ۥۢۛۦۤۦۘ۟ۥ۬ۢۜۛۛۖۡۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 2067456159) {
                                        case -1703824395:
                                            str5 = i4 == 2 ? "ۥۗ۟۬ۗۖۘ۠ۙۗۤۜۡۥۗ۠ۧۙۡۡۢۜ۫ۤۚۛۧ۟ۤ۫ۙۤۖۖ۫۬ۥۦۡۗ۠ۦ۫ۛۗۨۨ۟ۜۘۜۥۧۖۦۘ" : "ۖۨۧۘۚۢۧۙۥ۫۬۠ۡۘۡۧۛۨۧۜۜۙۚ۠ۜۦۘ۫ۥ۟ۢۥۥۤ۠۠ۛۡۡ";
                                            break;
                                        case 400225494:
                                            str4 = "ۥ۠ۜۙ۫ۖۗۗۘۤۖۧۘۧۜۦۘۢۛۖۘۢۚۘۧۗۜۘۘ۠ۥۘۦۘۡۨ۠ۚۤۜۤۛۜۧۘۨ۬ۥۘۖ۠ۡۘ۫ۥۤ";
                                            break;
                                        case 590109815:
                                            str4 = "ۤۚۨۘۦ۠ۘۦۘۡۗۜۡۘۥۧۦۘۤۘ۫ۥ۬ۖۘۤۧۦۖۖۖۢۜۘ۫ۜۘۘۢۘ۟ۧۥۨۚۙۜۗ۠ۨۘ۬ۢ۬ۖۛۡۘ۠۠ۖ";
                                            break;
                                        case 1158999018:
                                            str5 = "ۛۙ۫ۙۡۥۘۦۙۙۜۡ۬ۤ۟ۧۢ۠ۥۘ۫۫ۘۧ۬ۥ۫ۜۛۦۜۥۘۙۧۡ۫ۜۚ۟۟ۙ۟ۨۦۘۜۗۨۘ۠ۖ۠ۙۥۥۙۗۧ";
                                            break;
                                    }
                                }
                                break;
                            case 729800764:
                                str = "ۖۢۨۘۤۤۦۘۜۚۢۙۜۥ۟ۧۨ۬۬ۙۡۥۡۘ۟ۛ۬ۦۘۖۡۨ۠۬ۢ۟ۖ۬";
                                continue;
                        }
                    }
                    break;
                case 311331657:
                    this.OoooooO.setImageResource(R.drawable.elfin_pause1);
                    str = "۬۠ۥۖۤۙۖۜۡۘ۠ۜۛۡۡۡۛۥۚۗۥۗ۠ۥ۟۫۫ۖۖۙۘ";
                    break;
                case 327698087:
                    this.OoooooO.setImageResource(R.drawable.elfin_normal1);
                    str = "ۛۤۢۗۙۨۥۥ۠ۚۤۦۧۜ۬ۚۙۚ۫ۢۦ۟۬۬ۤ۫ۨۥۙۡۘۧۗۡۘۛ۟ۨۘۙۢۙۘۖۘۘ۟۬ۡۘۘۤۥ";
                    break;
                case 491127044:
                    str = "ۨۗۡۖۗۘۘۖۙۘۗۤۤ۬ۢۙۤۗۦۘۘ۟ۦۗۘۨۘ۠ۗۧۤۦۘۧۗۖۡ۬ۙ۬۬ۡۘۦۦۥۘۡ۫ۛۛ۫ۚ";
                    i2 = i3;
                    break;
                case 500787579:
                    i = R.drawable.floatview_elfin_setting;
                    str = "ۛۦۚۜ۠ۢ۠ۚۦۖ۠ۘۘۘ۬ۤ۠ۨۧۘۚۧۘۘۢۥۨۘۗۙۥۘۡ۟ۦۘۦۢۚۦۜۨۘۛۢۦۘۨۧۢ";
                    break;
                case 696245694:
                    str = "ۡۙۧۙۜۥ۫ۜۨۘۤۡۛۚۨۙۚۗۦۘۤۦۧۘ۠۟ۜۘۢۨۚ۫ۦۤۗۨۢۘۖ۟ۛ۟ۥۥۡۖۘۥۘۜۤ۫ۛ";
                    imageView2 = imageView;
                    break;
                case 1019333644:
                    this.o00oO0O.setText(getContext().getString(R.string.floatview_elfin_setting));
                    str = "ۡۦۦۖۜۦ۠ۗۘ۟۫۫ۗ۠ۨۘۧۚۗۢۘ۟ۦۛۤ۬ۨ۬ۢۨۘۘۥۢۤۚۧۡۚۨۡۥۚ۠";
                    break;
                case 1076427946:
                    this.oo000o.setText(getContext().getString(R.string.floatview_elfin_run));
                    str = "ۗۡۧۘۦۨۚ۟ۧۗۜۗۖۨۤۧۚۛ۬ۖۛۛۙۨۥۦۜۖۖۘۦ۟ۨۧۘۜ۠ۦ۠ۦۧۗۘۙۧۦۜۢۖۦ";
                    break;
                case 1110956340:
                    this.oo000o.setText(getContext().getString(R.string.floatview_elfin_pause));
                    str = "ۘ۠۠ۜ۟ۥ۟ۖۦۗۢۖۘۛۛۦۙۡۢۖۥۘۤۦۤۡۙۗۤۤۨۘۘۖۚۨۖ";
                    break;
                case 1134939036:
                    i3 = R.drawable.floatview_elfin_stop;
                    str = "ۛۢۧ۠ۧۡ۫۬ۙۢ۬ۖۘ۟۟ۜۘۚۤۢۚۧ۟ۖ۬ۜۨۜۡۘۥۧۘۜۥۡۘ۫ۘ۫ۦۛۦۤۘۖۛۚۦ۠۟ۡ";
                    break;
                case 1184049604:
                    imageView3 = this.o0ooOO0;
                    str = "۫ۙۦۙۦۨ۠ۦۖۘۤ۫ۖۘۡۤۗۚۡۛۚ۬۫ۢۖۖۘۡۚۥۢ۬۫ۚ۬ۦۢۗۖۜۘۘۚۨۢ۟۠۬ۖۗ";
                    break;
                case 1235859069:
                    str = "ۗۨۜۥۦۨۘۨۗۜ۠ۜۜۘۙۧۢۡۨ۟ۦۧۥۘ۫ۥ۟ۨۚ۫ۙۛۛ۬ۡۥۘۜۡ۟ۢ۟۠۠۬ۡۘۤۛۡۘۙۡۨ";
                    imageView2 = imageView3;
                    break;
                case 1526436521:
                    this.o00oO0o.setImageResource(R.drawable.floatview_elfin_pause);
                    str = "ۘ۬ۘۘ۬۫ۙۛ۬ۖۜ۠ۙ۟ۖۦۘۢۥۥۥۦۦۚۤۘۘۙۦۤ۫ۜۖۘ";
                    break;
                case 1723572134:
                    str = "ۚۤۤۡۤ۠۫۫ۗۚ۬۬ۙ۟ۖۘۡۧۖۘۡۥۚ۟ۛۥۚ۟ۘۦۥۢۜ۫ۡۘۨ۠ۦ";
                    i4 = b7.OooO0Oo().OooO0OO;
                    break;
                case 1941734098:
                    str = "ۤۖۘۢۗۥۘۙۛۛۥۦۦۘۧۤۢۦ۟ۖ۟۠ۖۘۘۨ۠ۙۖ۫۠ۚۙۗۧۘۘۛۧۘۜ۫ۜۦۗۤۚۜۘۘۧۧۙۦۧۘۢۡۜۘ";
                    break;
                case 2135248019:
                    this.o00oO0o.setImageResource(R.drawable.floatview_elfin_run);
                    str = "ۛۥۗۢ۟ۙ۫۠ۖۘ۫ۛۤۧ۟ۖۘۤۧۙۦۗۡۘۦۗۖۘۖۦۧۥۥۨۘۚۧۦۘۜۛۤ۫ۡۘۖۢۡۙۤۢ۟ۨۢۤ۠ۚ۠";
                    break;
            }
        }
    }

    public void Oooo00o(boolean z) {
        String str = "۠۫ۜۘۤۡ۬ۛۚۨۚۚۘۛۢ۟۫ۡ۫ۚۜ۠ۡۘۨۨۖۘ۟۟ۜۚۗۦۘۙ۠ۘۘۚۥ۠ۘۗ۬";
        LinearLayout linearLayout = null;
        LinearLayout linearLayout2 = null;
        int i = 0;
        LinearLayout linearLayout3 = null;
        int i2 = 0;
        StringBuilder sb = null;
        while (true) {
            switch ((((str.hashCode() ^ 476) ^ 503) ^ 93) ^ 1475820224) {
                case -1904424611:
                    str = "ۢۨۨۘ۟ۘۨۖۤ۟ۙۙۖۛۨ۫ۜۡۛۤۦ۠ۖۧۥۘ۟۟ۡۧ۟ۛ۟ۥۜۘۚۚۥۙۧۢۘ۫۫ۗۨۨۜۨ۠ۚۥۘۘۨۨۥۘ";
                    linearLayout2 = linearLayout;
                    continue;
                case -1289754205:
                    str = "ۗۙۚۥۥۤۖۤۘۘ۟ۛۧۨۘۦۘۖ۠ۘۡۥۘۘۦۛ۠ۜۧۜۘۘۚۥۤۖۧۘ۬ۢۘ۫ۖۤۜۢۘۘ۠ۤۧ۟";
                    sb = new StringBuilder();
                    continue;
                case -1239570143:
                    String str2 = "۠ۖۧۘۘۤۚۡ۠ۢۦ۟ۥۧۤۦۦۖۤۥ۠ۘۘ۟ۢۤۡ۫ۢ۫ۡۘۛ۬ۗ۟ۛۘۘۤۘۡ۬ۡۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-2036938904)) {
                            case -1202370225:
                                String str3 = "۬ۖ۫ۢۜ۟ۜ۫۬ۢۤۥۘۙۥۖۘۚۗۡۘۘۖۘۘۦۡۖۘۛۙۛ۠۠ۨۘۥۡۙ۟۬ۖۘۢۖۘۘۙۖ۫ۦۨۧۛۜۢۚۖۦۧ۬ۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1577611058) {
                                        case -509734759:
                                            str2 = "ۨۧۙۚۢۗ۫۫ۗۥ۟۫۬ۛۜۦۘۜۘۢۤۦۗ۫ۡۖۢ۬۠ۧۜۙۙۙ۠ۧۗۘۧۛۜ۟ۦۘ۬ۤۘۦۥۘ";
                                            break;
                                        case -428213188:
                                            str2 = "ۙۖ۫ۢ۬ۥۘ۫ۘۘۥۚۖۘۡ۬ۨۘۛۖۥۘۥۘۢۧ۟ۤۜۘۘۙۖۥۘۥۘۘۚ۠ۢۖ۬۫ۘۡۢ";
                                            break;
                                        case 64848677:
                                            str3 = "ۦ۠ۖۛۛۧ۫ۜۖۢۙۦۨۖ۬۠ۖۘۡۘ۟ۨۘۘ۠ۡۛۥۙۖۗ۬ۡۡۛۗۘ۠ۘۘ۠ۡۡۦۨۦۙۙۢۧ۫ۧۛۧ";
                                            break;
                                        case 1821240353:
                                            str3 = this.o0OoOo0.getVisibility() == 0 ? "ۨ۫ۗۧۧۜۘ۠۬ۘۗ۬۬ۚۥۚۧ۫۟ۧۢۙۜۜۨۘ۬ۗۛۜۜۜۘۡۖۗۙۛۨۘۜۘۙۦۢۧ۫ۘۙۧۖۘ۟ۜ۬ۨۖۚ" : "ۚۥۜۘ۠ۨۜۘۥۘۖۘۥۢۚ۠۬ۚۗۘۜۘۗۡۙ۠۫ۧۧ۟ۤۖۦۘۤ۟ۘۘ۟۠ۖۘۧۧۜۘۢۢ۟";
                                            break;
                                    }
                                }
                                break;
                            case -256540111:
                                str2 = "ۗۤۛ۟ۜۘ۟ۨۗۢۜ۟ۡ۬ۚ۬۬ۘۦ۬ۡۡۤۡۛۦۡۘۦۧۘۖۖۦ۫ۤۧۚ۬ۢۚ۟ۛۥۧۦ۬ۚۖۘ";
                                break;
                            case 615792002:
                                break;
                            case 1565968201:
                                str = "ۤۡۜۘۧۦۖۘۖۡۖۘۚۛۥۘۢ۟ۤ۫ۗ۟ۡۨۜ۫ۦۨۗۧ۟ۧۢۚۤۥۧۘۜ۬ۙۨۤۘۨۧ۠ۙ۟ۢ۠ۜۗ۫ۖۦۘۥ۟۠";
                                break;
                        }
                    }
                    break;
                case -216170085:
                    return;
                case -138458836:
                    String str4 = "ۚۡۤۦۙۜۘۛۘۘۨۤۢۡۜۦۧۤۥ۫۬ۜۘ۟ۨۦۘۗۥۘۘۖۦۧۛۙۨۘۤۗۘۘۥۜۥۤ۫";
                    while (true) {
                        switch (str4.hashCode() ^ 360520307) {
                            case -1967227550:
                                str4 = "ۘۡۗ۟۠ۘۗۜ۟ۤۥۖۧۜۛۦۥۧۥۧۘۨۥۗۚ۟ۚۗۤۦۘۘۥۘۡۧ۟ۧ۟ۥۘۚۤۥۛۤ۫۬۟ۛ";
                                break;
                            case -101641869:
                                str = "ۥۤۦۘۤۢۧ۟ۢۗۘۖۘ۠ۢۜۘۡۤۘ۫۬ۡۘۨ۠ۥۘ۟ۦۦۢۚۘۥۢۡۘۗۗۙۤۡۡۘۦ۫ۗۢۘۖۧۡۛ۫۫ۨۨ۬ۖۘ";
                                continue;
                                continue;
                            case 729292740:
                                String str5 = "ۨۗۗ۟ۧۙ۫ۧۛۤۧ۫ۗۥۡۘۛ۟ۡۘ۫ۧۥۘۨۛۗۜۛۗۧۚ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-201959365)) {
                                        case -589395032:
                                            str4 = "ۛۖۦۘۜۦۥۚۥ۬ۚۡۘۘۜۦ۟ۤۡۢۚ۫۠۠ۗۚۤۧ۬۠ۜ۫ۚ۬ۡۡۖ";
                                            break;
                                        case 537160883:
                                            str5 = z ? "ۗ۠ۙۥۙ۟ۧۙۢ۬ۥۘۘ۫ۥۘۜۛۘۛۦ۬ۚۛۦۘۜۥ۠ۤۙۨۙۛۨۘ۠ۡۧۖۦۘۘۦۘۢۧ۬ۡۛۢۨۘ" : "ۙۚۦۛۢۧۛ۠۫ۥۜۘۢ۬ۧ۟ۜ۠ۧۙۧۛۜۤۥۜۦۘ۟ۤ۫";
                                            break;
                                        case 1022619630:
                                            str4 = "ۙۨۜۘۖۧۘۘۧ۠۠ۚ۟۟۬۟۫ۧۖۖۦۦ۠ۡۘ۠ۤۦۥۙۤ۫ۢ۫ۥۘۥ۫ۢۢۥ۟۬ۦۡۘ";
                                            break;
                                        case 1621654235:
                                            str5 = "ۥۜۦۤۥۦۧ۠ۥۘۢۢۡۘۖ۫ۙۘۘۥۚۛۖۘۢۧۥۘۢۥۧۥ۟ۜۘۥۡۥۘ۟ۗۨۘۢ۬ۡۤۧۨۘ۬ۖۗۛۢۥۘۦۡۨۘ۟۟ۙ";
                                            break;
                                    }
                                }
                                break;
                            case 979827949:
                                str = "۫۠ۜۘۡۖۦۘۛ۬ۗۜ۫۫۬ۤ۫ۗۚۘۘ۬۬ۢۙۜۢۦۨۙ۠ۗۤۥۧۘۥۘۢۖۥۗۘۜ۫ۚۚۢۨ۫ۘۘ";
                                continue;
                        }
                    }
                    break;
                case 107700546:
                    OooooO0(1);
                    str = "ۚۦ۫۫ۗ۠ۖۡۦۖۧۘۘۖۢۧۛۗۙ۟ۚ۫ۤۡۥۘۦۦۗۥۤۜۥۗۜۘۖۦۘۛۚۖۘۢۧ۫ۗۜۚ۠۟ۥۘ";
                    continue;
                case 164108249:
                    str = "ۚۘۤ۫ۥ۬ۧۦۗ۟ۗۜۘۙ۬ۦۘ۬۟ۤۖۚۘ۠۬ۤ۬۫ۦ۬۬۠ۦۢۜۡۧۥ۠ۚۡۘۗۛۗ";
                    i2 = 8;
                    continue;
                case 281316998:
                    str = "ۙۛۡۡ۬ۡۘۧۤۨۘۨۢۙۘۢۤۚۛۗۚۘۗۥۖ۠ۢۖۙ۫ۛۖۘ۠۫ۜ۟ۧۘ۟ۙ۬ۗۥۜۘ";
                    i = 0;
                    continue;
                case 316740740:
                    String str6 = "ۨۦۨۙ۫ۦۘۛۘۚ۟۫ۤۗۡ۫۫ۥۜۖۡۧۧۜۘۗۖۗۦۛۖۤۥۨۚۘۘ۫ۤ۫۟ۥۘۛ۬ۧۙۡۦۡ۠ۘۘۛۛۨ";
                    while (true) {
                        switch (str6.hashCode() ^ (-1514949665)) {
                            case -1599049589:
                                break;
                            case -1547562613:
                                String str7 = "ۤۥۤ۬ۡۦۘۥۘۧ۠ۗۚ۟ۙۘۘۚۛۜۛۢۗۢۛۡۘۙۢۤۗۜ۫";
                                while (true) {
                                    switch (str7.hashCode() ^ 1510214973) {
                                        case -2067712232:
                                            str6 = "ۥۥۜ۬ۢ۫ۜۘۖۘۡۡۚۦۢۦۘۗۡۡۘۤۗۢ۟ۖۘۤۛۥۘۡ۟ۜ۟ۖۚۨۢۙ";
                                            break;
                                        case -1815419808:
                                            str6 = "ۚ۫ۡۘۤۜ۫ۤۖۤ۬ۡۖۘۡۤ۠ۤۚۨۗۚۦۘۛۖۦۜۥۨۘۗ۟۬ۡۜۥۦۢ۫ۦ۫ۘ۟ۥ۠";
                                            break;
                                        case -1129126786:
                                            str7 = this.o0OoOo0.getVisibility() == 8 ? "ۤۨۛۙۤ۬۟ۧۖۛ۫۟۟ۡۘۤۡ۠۟ۜۧۘۤۗۦۨۜ۟ۜۚۨۘ" : "ۡ۟ۘۘۢۢۖۘ۬ۙۖۢۨۘۘۖ۬ۖۗۦۖۘۗۜۦۘۨۢۖۦۘۙ۟ۢۢۧۘۘ۬ۦ۫۬ۡ۬۬ۨۡۦۦۨۘۢ۬ۨۘ";
                                            break;
                                        case 566026161:
                                            str7 = "ۙۡ۬ۙ۟ۥۘۥ۟ۨۦۗ۠ۗۖۥۘۡۧۖۘۡۗۘۧ۫ۚۖۡۨۙۖۨۘۨۘ۟ۧۤۘۘ۟۫ۦۘۦۜۙ۬۠ۢۗۤۘۨۦۥۘۖ۫۟";
                                            break;
                                    }
                                }
                                break;
                            case 732948307:
                                str6 = "ۦۗۛۜ۫ۛۙۗ۬ۜ۟۫ۗۤۥۜۧۡ۠ۗۡۗ۬ۥۘۨ۟ۨۘۛ";
                                break;
                            case 960616355:
                                str = "۬ۖ۬ۢۘۜۙ۠ۜۘ۟ۨۥۘ۫ۤۗۢ۬ۜۘۛۘۖۗۡۥۘۨۚۤۘۢ۫ۙۗۖۘۥۘۧۘۛۨۢۛۖۖۘ";
                                break;
                        }
                    }
                    break;
                case 347755409:
                    str = "ۗۙۥۘۘۜ۟۟ۤۘۘۥۡ۫ۖۡۢ۬۟ۥ۟۬ۦۨۛۗۗۥۘۘ۠ۜۤۥۛۜ۟ۘۘۦ۟ۥۘۢۡۤ";
                    continue;
                case 493045835:
                    linearLayout = this.o0OoOo0;
                    str = "ۗ۟ۨۦۢ۟۟ۜۧۘۧۛۜۘۡۢ۫۫ۜۜۙۨۛۧۦۨ۬ۦۛۢۙۦۘ";
                    continue;
                case 539091391:
                    str = "۬ۜۧۘۥۖۦ۫۟ۡ۠ۡۡۙۧۜۘۙۧۙۦ۬ۨۖۡۦۗۗۚۜۗۡۘ";
                    linearLayout2 = linearLayout3;
                    continue;
                case 633228985:
                    sb.toString();
                    str = "۬ۖۙۦۦۥۘۧۧ۠ۗ۫ۘۘۛ۫ۛۜۢۥۘ۬ۗۘۛۖۘۙۧۦۘۧۗۦ";
                    continue;
                case 677897486:
                    str = "ۙۗۡۤۙۡۛۦ۫ۛۧۚۤۡۨۨۦۦۚۙۡۘۨۖۜۘۛۚۗۙۧۜۨ۫ۢۨ۫ۨ";
                    continue;
                case 1028389698:
                    str = "ۤۤۥ۟ۨۧۘ۫ۚۙ۬۟ۛۥۜۥۘۡ۟ۨ۬ۙۤۚۧۜۘۨ۬ۘۧ۠ۥۜ۟۬ۙۗ۠ۡۗ۬ۘۧۖ";
                    i = i2;
                    continue;
                case 1471572198:
                    str = "۟ۖۦۗۛۖۤ۬۫۠ۧ۬ۢۡ۠ۢ۬۟ۤۚۡۘۧۥۖۖۥۧۘۗ۬ۜۙۡۙ۠ۘۨۘۛۚ۫ۧۨۨۛ۬۬۠ۤۧۛۦۜۦ۫ۤ";
                    continue;
                case 1515010249:
                    linearLayout2.setVisibility(i);
                    str = "ۗۜۘۚۡۥ۫ۤۗۤۨۖۘ۠ۜۘۖۛۜۘۘۢۧۚۗۦ۠ۡۘۘۢۛۧ۫ۢۙۦۤۨ۟ۦۦۘۧۛۨۘۥۙۧۜ۠۟ۡ۠ۦ۬ۧۥ";
                    continue;
                case 1550408506:
                    sb.append("changeToolBarState1:");
                    str = "ۗۨۨۘۧۡۨۘۗۧ۠ۨۘۦۖۥۘ۠۫ۡۘۗۥۖۘۚۖۛ۬ۡۖۤۦۡۡۦۦۧ۠ۙۨۧۘۙۘۜۘ";
                    continue;
                case 1635805372:
                    linearLayout3 = this.o0OoOo0;
                    str = "ۥۡۖۖۚ۟ۙۛۚۦۧ۫ۖۖۦۗۤۘۥۤۦۨۚۥۙۢ۬۠ۤۡۘۨۘۧۚ۫ۖۙۦۨۘۧۥۧۘۘۦ۬ۙۧ";
                    continue;
                case 2062474292:
                    sb.append(z);
                    str = "ۨ۫ۧ۠ۛۙ۟ۧۢۢۖۖۤۤۦۦۜۤۛۘۧۛۛۖۚ۠ۦ۟ۨۜۘ";
                    continue;
                case 2133423471:
                    str = "ۤۤۥ۟ۨۧۘ۫ۚۙ۬۟ۛۥۜۥۘۡ۟ۨ۬ۙۤۚۧۜۘۨ۬ۘۧ۠ۥۜ۟۬ۙۗ۠ۡۗ۬ۘۧۖ";
                    continue;
            }
            str = "ۗۜۘۚۡۥ۫ۤۗۤۨۖۘ۠ۜۘۖۛۜۘۘۢۧۚۗۦ۠ۡۘۘۢۛۧ۫ۢۙۦۤۨ۟ۦۦۘۧۛۨۘۥۙۧۜ۠۟ۡ۠ۦ۬ۧۥ";
        }
    }

    public void Oooo0O0() {
        String str = "ۤۨۥۘۚ۫ۖۘۥۚ۟ۡۜۛۥۛۛۤۖۗ۬ۡۛۦۨۘۗ۠ۛۤ۠ۘ۫ۜۘ۠ۡۡۘۤۡۦۘۖ";
        while (true) {
            switch ((((str.hashCode() ^ 341) ^ 149) ^ 139) ^ 1657349296) {
                case -1692394151:
                    str = "ۚ۠ۘۘ۫ۨۦۖۤۦۘۨۢۛۙ۟ۤۚ۠ۜۘ۫ۖۨۘۧۧۚۡۙۘ۠ۥۜۘۡۤ۠ۗۢۢ۠۟ۢۢۦ۬ۗۥ۠۫ۡۥۘ";
                    break;
                case -1618283512:
                    String str2 = "ۦۦۘۘۡ۫ۘۘ۟ۥۖۘۨۧۘ۟۟ۦۥۨۘ۬۫ۗۛ۠ۨۘۘ۟ۡۘۘۤۦۘۡ۟۬ۖۚۢۖ۬ۢۘۗ۟ۛۖۤ۫۬ۚۨ۟ۖۥ۫ۛ";
                    while (true) {
                        switch (str2.hashCode() ^ (-501157248)) {
                            case -1329862710:
                                str = "ۗۖ۬۟۟ۙۖۡۙۧۤۜۘۛ۫ۖۘۤ۫ۛۥۜۖۙ۠ۨۘۚۙۢۢۜۥۘ";
                                continue;
                            case -297124259:
                                String str3 = "ۢۤۙۢۖۚ۬ۥۙ۠ۘۗۙۤۚ۟ۚۛ۟ۨۥ۬۠ۜۖ۠ۨۙۛۜۥۘۡۤۤۡۥۗۨۨۘۙۦۧۛۚ۫ۙۙۚ۟ۢۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-641557350)) {
                                        case -201188088:
                                            str3 = "ۚ۟ۖۘۖۡ۟۫ۘۧۘۛۥۧۡۦۥۘۘ۫ۨۘۧۤۚ۬ۖۤ۠ۧۦ۠ۖۨ۟ۚۥۘۥۗۥۘ";
                                            break;
                                        case 65607690:
                                            str2 = "ۥۚۚۨۛۥۘ۫ۜۤۧۜۡۘۖۤ۬ۗۤۛۗۡۦۘۦۥۡۙۤۙۡۡۡۘۙ۠ۡۙ۬ۦۘ۠۬ۨۥۗ۠۫۬ۤ۟ۡ۫۠۬ۖ۟ۘۖ";
                                            break;
                                        case 444423871:
                                            str3 = getVisibility() == 8 ? "۟ۗ۫ۜۚۨۡۙ۬ۤۧۘ۟۠ۦۚۗۡۛۧ۠ۚۙۡۘۧۚۨۥۘۥۨۖۤۘۘۘ" : "۫ۛۡۘۜۗۥ۟ۗۨۖۜۙۙ۟ۘ۠ۙۥ۬ۨۨۥ۫ۜۘۜۤۖۦۧۥۧۢ۟ۥۡۢ۟ۦۘۢ۟ۚۛۦۡ۬ۚۛۘۥۘ۠ۘ۠";
                                            break;
                                        case 1615326876:
                                            str2 = "ۘ۠۟ۥۥۛۧۨۚۜۧ۟ۗ۫ۚ۟۟ۙۗ۫ۡۘۘۢۖۜۚۨ۬ۗۦۘۧۙ۟۟۠ۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case 786711826:
                                str = "ۗۦۖۘ۟ۡۗۖۧۢۚۖۘۘۡۘۦۖ۟ۖ۫ۤۗۙ۫ۥۘ۫۟ۙۥ۫۬۠ۛۚ۫ۖۘۘۤۖ۫۟ۘۧ";
                                continue;
                            case 831081991:
                                str2 = "۫ۦۢ۠ۚۛۦۥۨ۟ۢۛۡ۫۟ۛۘۛۙۜۚ۟ۤ۠۟ۜۜۥۦ";
                                break;
                        }
                    }
                    break;
                case -1352165639:
                    return;
                case -1265344957:
                    String str4 = "۠ۚۜ۬ۛۙۥۢۥۘۤۦ۟ۘۨۙۤۖۧۘۤۙۜۘ۟ۦۖۘۨۘۨۚۦۥۘ۫ۙ۫ۥۗۘۖۤۖۘۛ۠ۘ۟ۧۡۨۗۖ۬ۢۥۘۜۨۥۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-862795877)) {
                            case -1726410477:
                                str4 = "۫ۚۥۘ۟ۘۧۘۧ۬ۙ۬ۦۘۢ۟ۚۢۧۦ۟ۡۤۘۚ۠ۜ۠ۜۖۧۨ۠ۨۡۘۥ۫ۘۜۜ۫ۢۖۡۗۘۥۢۜۙ";
                                break;
                            case -56152915:
                                str = "ۥ۠ۦۡۤ۠ۘۤۦۘۗ۬ۖ۟ۡۗۡۦۘۡۧۖۘۗۖۨۛۗۛۚ۠ۖۘۤ۬ۘۥ۫ۦۘ";
                                continue;
                            case 42671713:
                                String str5 = "ۦ۬ۦۦ۠ۡۗۥۤۚۧۚ۫۬ۥ۫ۙۧ۟ۥۖۛۗۧ۠ۜۘ۫ۚۜۖ۫ۦۘۘۜۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1778574114) {
                                        case -86098210:
                                            str5 = this.o00000OO != 0 ? "ۜۚۦۡ۟ۢۨ۟ۡۘۤۜۢ۫ۚۡۘۥۖۘۗۖۡ۫۠ۤۢۦۗۖۖۡ۬۟ۦۧ۠ۨۘۨۨۖۘ۠ۖ۟" : "ۥ۟۬ۛۙۧۖۧۗۥۧۘۤۨۡۘۡ۟ۡۤۨۦۘۚۤۤۜ۟ۤ۠۟ۖۘۦۚۦۘۙۘۘۗ۬۬۬ۛ۬ۡۦۛۢ۬ۘ";
                                            break;
                                        case 554257674:
                                            str4 = "ۨۖۚۡ۟ۤۜۧۘۥ۠۟ۡۦۧ۫۫ۨۘۨۤ۬ۚۗۡۧۡۤ۠ۙۧۜۢۚۢۛ۫ۤۦۘۙۥ۫۫۟۠ۡ۫ۙۘۚۨۢۧ";
                                            break;
                                        case 717256848:
                                            str4 = "ۦۨ۠ۘۡۘۘۧۛۥۘۨۡۥۘۙۙۢ۫ۧۨ۠ۧۤۜۥۖۨۗ۠۟۫ۖۘۥ۠ۤۤۛۦۘۧۤۦۘۚۚۘۘ";
                                            break;
                                        case 1969356517:
                                            str5 = "ۢۨۨ۟ۚۘۘۢۦۖۙۤۦۘۦۨۗ۠ۙۨۘ۫ۧۥۘۢۗۜۜۤۖۢۗۜۘۡۧۦۘۚۤ۫۠ۖۜ۫ۡۙۤۢۥۘۜۜۥۤ۫ۙۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 625075040:
                                str = "ۘۗ۫ۖ۬ۜۙۨۘۡ۫۫ۛۧۜۘ۫۫۠ۛۧ۟ۗ۫ۥۥۖ۫ۥۥ";
                                continue;
                        }
                    }
                    break;
                case 318185818:
                    setVisibility(0);
                    str = "ۗۦۖۘ۟ۡۗۖۧۢۚۖۘۘۡۘۦۖ۟ۖ۫ۤۗۙ۫ۥۘ۫۟ۙۥ۫۬۠ۛۚ۫ۖۘۘۤۖ۫۟ۘۧ";
                    break;
                case 973185933:
                    this.OoooooO.setOnTouchListener(this.o00000);
                    str = "ۥ۠ۦۡۤ۠ۘۤۦۘۗ۬ۖ۟ۡۗۡۦۘۡۧۖۘۗۖۨۛۗۛۚ۠ۖۘۤ۬ۘۥ۫ۦۘ";
                    break;
            }
        }
    }

    public void Oooo0OO() {
        r6 r6Var = null;
        String str = "ۙۡۖۖۜۘۘۙۚ۬ۚۛۚ۟ۦ۬ۛۢۗ۠ۦ۫۠ۖۦۖ۠ۧۜۤۗ۠۟ۜۘۨۛۥۤۨۡۥۘۖ";
        while (true) {
            switch ((((str.hashCode() ^ 534) ^ 351) ^ 918) ^ (-440500241)) {
                case -2069043325:
                    str = "ۜ۬۟ۘۚۦۚۦۘۘۖۙۡۘۗۨۜۧۚ۠ۘۜ۠ۗۚۜۘ۟ۙۛۖۨۦۘۘۚۡۜۧۜۗ۟ۥۖۚۡۢۦۧۘۛۜۖۘۧۨۡۘۨۢۖۘ";
                    continue;
                case -1542714907:
                    String str2 = "ۤۤۦۙۜ۫ۥ۫ۖۘۜۚۜۘۢۡۘۨۚ۟ۢۛۖۦۛۗۧۖۧ۬ۦۡۘۡۧۙۥۗۚۜۚۚۨۛ";
                    while (true) {
                        switch (str2.hashCode() ^ 2057858243) {
                            case -806324275:
                                break;
                            case -373591635:
                                String str3 = "ۙۨۚۜۚ۫ۙۦۡۛۤۧۛۙۡۘۗۙۘۘۜۧۨۧۜۚۙۗۘۚ۬ۨۘۙۧۡۨۦۖۘۖۢۙۘۗۢ۬۫۫ۥۖۧۡۧۢۧۢۢ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-325986963)) {
                                        case -774595280:
                                            str2 = "ۥۗۘۨۜۧۧ۫ۧۢۥۥ۠ۖۦۘۥۨۛۧۤۡۘ۬۟ۨۡ۫ۡۤ۫ۛۜۤۚ۫ۧۚۜۡۧۖۛۦۖۤۖۘ۫۟ۗ";
                                            break;
                                        case -368844899:
                                            str3 = "۠ۦۦۘۡۗ۬ۤۥ۟ۘ۟ۢۧۡۥۘۤۦ۬ۤۗۥۘۖ۠ۖۘ۫ۖۡۨ۫ۗ۠ۚۖ۟ۥۤۙۤۘۤۙۨۘۙ۠۬ۖۡۢ";
                                            break;
                                        case 564224672:
                                            str3 = r6Var.isShowing() ? "ۙۨۜ۟ۙۖۘۙۙۛۘ۫ۜۘ۠۠ۚۗ۫ۥۘۗۥۦۘۚ۠ۙۡۦۘۘۘۙۡۘ" : "ۚ۟ۜۘ۠ۚۥ۠۫ۘۢ۟ۘ۫۟ۘ۫۬۬ۧۨۜۘۛۗۦۘۖۢۙۘۥۢۥ۟ۗ۬۠۟ۛۥۖۘ۠ۘۡ";
                                            break;
                                        case 632987773:
                                            str2 = "ۖۛۘۘۥۜ۫ۡۗۦ۠۬ۨۥۖۙۤ۫ۢۗۧۡۡۜۨۘۘۡۘۧۥۜ۠۠ۖۨۘۙۛۜۘۨ۠ۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1027350335:
                                str = "ۤۜۖۖۛ۠۫۠ۜۘۥۥ۫ۘ۬۠ۦۙۜ۬ۤۥۖۥۛۙۘ۫ۜۘۦۨ۠ۨۖۦۙ";
                                break;
                            case 1487910594:
                                str2 = "ۤۡۖۘ۠ۧ۬ۖۤ۠ۛۤۤۗۢۡۘۙ۟ۜۛۜۥۛۘۦۨ۟ۨۘ۬ۥ۟ۥۖۘۜۧۙ";
                                break;
                        }
                    }
                    break;
                case -925701163:
                    r6Var = this.o00ooo;
                    str = "ۤ۠ۜۗ۫ۚۜۗۖۘۗۨۗۗۢۨۘۜۜ۬ۛۜۥ۫ۜۚۛۛۦۘۚ۫ۥ۠ۛۥ۟۠ۤۤ۫۬ۗۙ۫";
                    continue;
                case 434287740:
                    String str4 = "ۗ۠ۚۤۙۖۘۜۚۗۘۦۚۥۨۘۢۢۧۚۚ۠ۢۢ۠ۛۖ۫ۘۥۘۘۘۘۘۦۖۡۤۖۘۘۛۨۜۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 895826720) {
                            case -2055070054:
                                break;
                            case -1766860051:
                                str4 = "ۚ۟ۨۛۚۧۧۚ۟ۥۥۧۜۘۗۘۦۨ۫۫ۙۜۤۡۤۥۘۖۛۧۥۜۥۘۤۜۡۘۙۖۥۘۜۚۨۘ";
                                break;
                            case 231452385:
                                str = "ۦۗ۠۬ۡۘۘۖۜۘۡۘۡۗۨۘۙ۠ۨۘۗۤۥۦۙۗۖۦۗۜۧۘۨۡۛۜ۫ۥۗ۟ۥۨۤۥۘ۬ۖۨ۠ۙۨۢۚۦۘۦۜۘۘ";
                                break;
                            case 1503177444:
                                String str5 = "ۜۜ۬ۡ۫ۖۨۢۡۥۙۥۢۚۡ۫۟ۤۤۥۡۜ۬ۥۘۘۡۧۢۖۥۘ۬ۡۦ۫ۙۖۧ۠ۗۤ۠ۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1497131302)) {
                                        case -1585909838:
                                            str5 = r6Var != null ? "ۨۤۦۘۢۦۡۘ۫ۙ۬ۤۧۨۘ۬ۜ۟ۡۗۡۛۦۗۛۨۥۘۧ۫ۡۘۜۗۥۦۘۢۦ۬ۥۘۦۗۥ۬ۦۛ" : "ۤۜۡۘ۟ۗۜ۠ۢۘۘۧۗۛۨ۫ۥۘ۫۬۠ۗۡۗۘۖۛۛۗۛ۬ۥۘ۫۬ۦۗۛۖۗ۫ۜ۬ۗۜۘۛۙۖۛۥۘۘۥۡۘۖ۫ۙ";
                                            break;
                                        case -1207230758:
                                            str4 = "ۚۧۜ۟ۘۙۚۤۘۘ۠۫ۗۨۨۧۙۗۥ۟۠۟۟۠ۦۘۨۖۦۛۖۢۧۖ۠ۦۘۧۥۙۢۦۖۘۘۢۚ۫ۧ۬";
                                            break;
                                        case 50640503:
                                            str4 = "ۤۤۖۘ۬۟ۢۚۡ۠ۢۖۘۤۛۦۙۢۖۙ۫ۙۗۘۙۧۗۦۘۜ۟ۜۙۗۙۡۚۚۛۧ۫ۧۨۨۘ";
                                            break;
                                        case 145238773:
                                            str5 = "ۖ۟ۙۨ۬ۙۡۚۥۘۛۘۜۛۜۧۡۡۘۜ۫۫۫ۖۢۨۢۚۧۨۚۡۛۖۘۡۡۜۘۚ۬ۖۛۤۢۙۛۖۘۖۥ۟ۡۧۤۨۡ۬";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 969976654:
                    return;
                case 1334828448:
                    this.o00ooo.dismiss();
                    str = "۠۟ۖۧۥۧۡۗۙۛۙۢۗۗ۫۟ۦۗۨۤۨۘۧ۟۬ۛۘۖۘۡۨۥۘۧۘ۠۟ۛ۠";
                    continue;
            }
            str = "۠۟ۖۧۥۧۡۗۙۛۙۢۗۗ۫۟ۦۗۨۤۨۘۧ۟۬ۛۘۖۘۡۨۥۘۧۘ۠۟ۛ۠";
        }
    }

    public void Oooo0o() {
        String str = "ۗۧۥ۬۬ۧۘۗۥۘۧۛۘ۫۟۠ۢۜۘۜۙۙۡۦۚۤۖ۠ۙۥ";
        while (true) {
            switch ((((str.hashCode() ^ 114) ^ 37) ^ UiMessage.CommandToUi.Command_Type.GET_BACKCOLOR_VALUE) ^ 1437199181) {
                case -2101310176:
                    str = "ۡۘۡۘ۟ۖ۬ۧۘۥۨۧۡ۫۟ۧ۬ۡۦۘۗۦۜۘۤۖۧۧۨۛۦ۫ۦۜۚ۠ۦۡۘۜ۬۠ۖۛۧ";
                    break;
                case -1488117578:
                    this.o00Ooo = null;
                    str = "ۤۖۗۨۚۘۘۚۤۨۘۚۚ۬۬ۢۖۤۨۧ۟ۢۖۗۨۘ۟ۧۙ۟ۤۦۨ۠۬۫ۥۖۘۡ۟ۜۘۙۚۨۘ";
                    break;
                case -941000201:
                    return;
                case 125277206:
                    this.o00o0O = null;
                    str = "ۖۚۧۛۛۗۢۧۨۦۚۦۘۨۜۤۜۘ۟ۗ۟ۤۛۙۡۘۢ۬ۚۢۗۨۘۚۙۦ۫ۥ۬ۨ۬ۦۘۨۖ۫ۘۛۖۖۦ۫";
                    break;
            }
        }
    }

    public /* synthetic */ void OoooO() {
        String str = "ۙۢۛۗۦۦۘ۟۠ۥۘ۟ۤۘۢۗۖۡۨۖ۟ۖ۠۠ۨۜۘ۠۟ۖۙۗۧۧۚ۫ۘۡۦ۫ۜۘۦ۫ۨ";
        while (true) {
            switch ((((str.hashCode() ^ 404) ^ 190) ^ 232) ^ 1984000143) {
                case -1422638412:
                    OoooO0O();
                    str = "ۗ۫ۦۘ۟ۢۡۘۙۧۜۘۢۦۜۦۛۚۜۜۧۘۜۘ۫ۤ۠ۚۚۘۘۤ۬ۥۧۡۖۘ۠ۥۧۘۡ۟۫ۜۡۚ۫ۢ۟۠ۛۖ";
                    break;
                case -892231125:
                    str = "ۛۥۧۡ۫ۨۘ۫ۜۤۜۘۨۛۡۘۤۥۨۘۜۗ۫۬ۗۤ۟ۖۢۡ۟ۦ";
                    break;
                case -699273814:
                    return;
            }
        }
    }

    public void OoooOOo() {
        String str = "ۚۡۧۤۚۜۚۘ۟ۛۨۚۧۡۨۥۙۘۖۘۚۙۛ۫ۨۘۧۜۙۘ۬ۤۡۘۢۦۧۛۖۚۦ۠۬ۜۛۥۨۡۧۨۘۖۖ۬";
        while (true) {
            switch ((((str.hashCode() ^ 449) ^ 399) ^ 190) ^ (-1430578991)) {
                case -2068474103:
                    this.OoooOoo.x = w3.OooOoo0(getContext()).x - this.Ooooooo.getLayoutParams().width;
                    str = "ۗۡ۬ۧۜۜۘ۠ۢۜۘۢۘ۬ۦ۫ۥۘ۬۠ۡۘۙۗ۠ۛۡۥۧۧۙۖ۬۠ۘۙۘۗۤۙۦۥۜۘۘۘۖۨ۬ۖۚۡ";
                    break;
                case -558514342:
                    OoooOOO();
                    str = "ۚۧۨ۬۠ۗۖۖۙۗۜ۠ۨۖۨۘۤۤۜۥۧۗۨ۠ۦۨۘۘۜ۫ۥۤ۠۠۫ۗۚۢۘۜۘۢۤۖۘۡۜ۬ۛۖۥ";
                    break;
                case -342039273:
                    this.OoooOoO.updateViewLayout(this, this.OoooOoo);
                    str = "ۡ۟ۖ۠ۥۘۘۨۙۛۧۢ۫ۛۢۤۛۢۗۗۖۘۢ۟ۙۙۨۢۜ۬ۨۦۘۤۗۨ۬ۚۜۥۡ۬ۦۘ۬ۢۡۘۤۢۥۘۙۦۘۘۧۖۦۘ";
                    break;
                case 562887199:
                    return;
                case 1081785621:
                    this.o000000o.start();
                    str = "ۡۘۡۡۛۢۥۤۛ۟ۨۛ۟ۛۢۘ۟ۚ۫۬۟۬ۥۘۙ۟۬ۙۡ۠ۙۜۨۚۙۦ۬ۚۦۘۚ۠ۧۤۜۤۘۛۜۘۙۛۗۛۜ";
                    break;
                case 1212187979:
                    str = "ۙۘۖۘۤۦۡ۬ۥۖۢۡۢۚ۫ۡۜۘۧۘۨۛۧۙۢۤۘۧۘۨۥۡۘۨ۫ۗ۬ۙ۠۫ۛۘۧ";
                    break;
                case 1242680900:
                    this.o0OOO0o.OooO0Oo();
                    str = "ۤۛۛۘ۫ۘۘۘۥۛۡۚۦۢۨۨۚۘۘۘۥۨۦۘ۫ۢۥۘۗۥۖ۟۟ۥۜۧۧۨۢۜۤۥۥۨۖۘۥۘۘۘ۬۬۠ۙ۫ۖۦۛ";
                    break;
                case 1560227432:
                    this.OoooOoo.y = w3.OooOoo0(getContext()).y / 4;
                    str = "ۘۘۦۢۛۙۨۙۦۘۗۦۗۜۜۧۘۤۧۗۧۡۜۘۜۖۤۗۖۡۜۥۡۘۢۘۦۘ۫ۛ۟ۤۧۧۜ۟ۜ";
                    break;
                case 1814172695:
                    OooooO0(1);
                    str = "ۦ۬ۗۡۜ۬ۚۧۡۘ۟۠ۛ۬۟ۗ۟۫۟ۘۛۥۧ۠ۡۘۥ۬ۜۤۜ۫ۜۥۡ۫ۢ۬";
                    break;
            }
        }
    }

    public void OoooOoo() {
        DeleteFloatView deleteFloatView = null;
        String str = "ۚۙۥۘۜۢۚۘۤۙۗ۬۠۟ۖۘۘۧۨۚۤ۬ۤۤۤ۬ۧۙۧۡۘ";
        int i = 0;
        int i2 = 0;
        int visibility = 0;
        while (true) {
            switch ((((str.hashCode() ^ 688) ^ 707) ^ 534) ^ (-994955990)) {
                case -1722030503:
                    String str2 = "ۖۙۖۘ۟۫۬ۚ۠ۡ۟۟ۢۖۜۛۚۦۘۧۗۤۘۦۘۘۤۛۥۘۥۨۧۛۡ۫ۘۜۘۢۚۜۘ۟ۧۨۚۤۨۘۤۦۡۛۚۗۤۧ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1545814004)) {
                            case -1930483623:
                                str = "۠ۢۡۘۦۖۧۘۛ۠ۘۘ۫ۜ۟ۘۦۢۗۦۢۛۛۡۜۡۢ۠۬ۢۦۗۖۛۧۜۘ۫ۘۙ";
                                continue;
                            case 287964617:
                                str2 = "ۙۚۜۘۥۨۡۗۗۗۡۡۡ۠ۘۥۚۗۤۜۨۘۚۗۢۜۢۖۛ۟ۖۡۤۛ۠۠ۘۘۙۦۖۘۢ۠ۨۘ۫ۖۢۘۨۧ";
                                break;
                            case 1513698557:
                                str = "۟ۖۢ۟ۜۤۜۛۤ۠ۦۥ۠ۗۤۥۨۘۘ۟ۜ۟۫۠۬ۦۡ۠ۧۖۘۥ۬ۡۧۘۡۘ";
                                continue;
                            case 1560334286:
                                String str3 = "ۤۡۦۦۥ۫ۡۨۘۜ۠ۘۘۨ۫ۢۦۧۨۜۖ۬ۨۙۘۨۙ۟ۜ۫ۙۚ۬۬ۢۚۦۘۥۡۖۥۖۜۡۤۘۚۚۡۘۥۜۥۖۤ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ 1740803943) {
                                        case -1915311332:
                                            str2 = "ۤۖۦۦۦۛۗۦ۟۬ۥۡۘۦۛۥۘۦۤۘۘۢۢۘۢۘۦۤۚۘۨ۫ۧۢ۠ۨۘۜۚ";
                                            break;
                                        case -1455586111:
                                            str3 = visibility == 0 ? "ۡۚ۬ۚۦۨۡ۫۠۬ۥ۬ۚۢۙۘۢۘۘۧۙۖۘ۠ۛۤۤۜۥۙ۬ۜۘ۠۬ۚ۟۟ۢ۠ۖۖۧۖۤۚ۠ۖۘ۫ۙۨ" : "ۗۧۗۢ۫ۧۖ۬ۖۘۚۛۚۧۚۛۘۖۘ۟ۘ۬۟ۦۖۘۚۡۙۛۦۤ";
                                            break;
                                        case 953547040:
                                            str2 = "ۜۦۜۘۙ۟ۛۨۘۨۘ۫ۢۖ۟ۨۘ۫ۚ۠۠۬ۤۚۖۡۖۤۥۚۡۡۘ۟ۙۥۧ۬ۥۘۚ۫ۘ۟ۦ۬ۜ۬ۦ۠ۦۧۙۘۥۘۦۧۚ";
                                            break;
                                        case 1654915018:
                                            str3 = "ۤۖۜۨۦۚۨۛۦۘ۟ۚۗۨۦۡۥ۠ۙۗۖۘۙۚۘۘۡ۫ۖۥۥۦۢۖۙ۠ۚۖۢ۟ۛۡۖۨۗۨۧۘۜۧۥۘۗۗۢۨۡۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1656359459:
                    return;
                case -1511575924:
                    OooooOO(w3.OooOoo0(getContext()).x, w3.OooOoo0(getContext()).y / 4);
                    str = "ۜۢ۟ۢ۫ۨۥۥۘۜۛۜۘۢۦ۬۬ۧۘۘۦۖ۬ۖۦۦۘۧ۟ۖۘۙۙۘۘۗۨۧۦ۫ۗ۬۬۬۬۟۟ۤۜ۬۟ۛۘۘۥۥۖۘۤۘ۠";
                    break;
                case -645449888:
                    this.o000000o.start();
                    str = "ۥۢۧ۟ۤۦۘۗۛۜۘۛۥۡۘ۬ۡۚۘۡۜ۫ۜۡۛۚۖۘۛۨۘۚۦۖۘ۬ۢۥۘۨۛۗ";
                    break;
                case -293104105:
                    str = "ۦۨۦۘۜۡۚۗ۠ۥۘ۟ۚ۬ۧ۟ۗۛۥۘۢۛۢۚۗۨۘۙۦۖۘۢۢۤۛۚۜۘۡۘۘ۟ۤۘۨۖۘۘ";
                    i = 0;
                    break;
                case -140333038:
                    setVisibility(i);
                    str = "ۦ۬۟ۡۦۥۘۧۢۚ۫ۖ۠ۡۙۘۥۜۜۘۥ۠ۚ۟ۖۘ۠ۤۘ۫ۜۦۘ۟ۢۡۘۢ۠ۚۛۧۚ۫ۘۨۘ";
                    break;
                case -127956314:
                    str = "ۦۨۦۘۜۡۚۗ۠ۥۘ۟ۚ۬ۧ۟ۗۛۥۘۢۛۢۚۗۨۘۙۦۖۘۢۢۤۛۚۜۘۡۘۘ۟ۤۘۨۖۘۘ";
                    break;
                case -115434808:
                    visibility = getVisibility();
                    str = "ۗ۟ۥۙۦۜۨۙۨۘۚۤۗۜۦۖۥۡۖۘ۬ۡۗ۟ۗۨۘۡۡۧۦ۬ۨۘ";
                    break;
                case 617688908:
                    str = "ۡۡۧۘۦۖۗ۫ۧۥۘۥ۟ۨۘۥۘۘۘۚۛۤۙۢۦۘۙ۠ۨۧۢۧۢۤ۟";
                    break;
                case 1165132006:
                    OoooOOO();
                    str = "۫ۛۖۧۙ۠۫ۗۥۜۧۖۘۘ۬ۚۛۡ۟ۗ۟ۨۘۖۘۜۜۘۨۘۤ۫ۨۨۨۧۚۧۗ";
                    break;
                case 1270467589:
                    str = "۠ۙۥۘ۫ۢ۬ۦۧ۫۫۫ۨۘۚۜۢ۟ۦۖۘۚ۫ۖۘۚ۬ۨۘ۠ۡۗۧۦۘ";
                    i2 = 8;
                    break;
                case 1390715204:
                    Oooo00o(false);
                    str = "ۜۨ۟ۦۙ۫ۗۢۚۧ۠ۦۤۛۦۚۥۖۘۙۤۥۘۡۧۖۢ۟۠ۚۦۙ۫۠ۡۘۤۨۥۘۢۨۗۦۗۥ";
                    break;
                case 1604262687:
                    deleteFloatView.setVisibility(8);
                    str = "ۢۥۚۦۤۥۥۛۧ۫ۨۦۚۙۨۘ۠ۨۡۘۢۧۥۘۚۡۗۘۙ۬ۗۜۨۧۡۘۜۜۜۘ";
                    break;
                case 1666952021:
                    str = "ۛۘۗۚۨۧۘ۟۠۠ۥۦۤۦۨۘۗۚۨ۠ۘۦۛ۫ۡۘۨۚۡۙۜ";
                    break;
                case 1873721231:
                    str = "ۜ۟ۥۘۥۖۘۢۤ۟ۛۗۥۘۗۥ۟ۚۜۦۘۛ۬ۨۘۚ۬ۥ۫ۗۦۥۙۨۘ۠ۤۖۘۛ۬ۦۗ۟ۨۘۧۧۚ";
                    i = i2;
                    break;
                case 2029608070:
                    deleteFloatView = this.o0OOO0o;
                    str = "ۦۧۥۚ۠ۥۘۘۤۦۘ۠۠۟ۗۢۛۡۛۗۧۖۖۘ۟۬ۥۘۖۧۢۙۥۥ";
                    break;
            }
        }
    }

    public void Ooooo00() {
        String str = "ۚ۬ۚۡۜۧ۟ۨۧۘۢۛۖۘۜۜۘۙۚۤ۠ۤۗۤۗۦۘۗ۠ۨ۬ۘۘ۫ۧۖۦۨۙۡۤۤۙۙۘۘۗۖۘۗۙۖۘ۟ۜۥۘۢۢۥ";
        int i = 0;
        ImageView imageView = null;
        int i2 = 0;
        ImageView imageView2 = null;
        int i3 = 0;
        ImageView imageView3 = null;
        while (true) {
            switch ((((str.hashCode() ^ 972) ^ 592) ^ 322) ^ 910842333) {
                case -2107918433:
                    Oooo00o(false);
                    str = "ۡۥۨ۠ۢۦۚۢۘۖۢۤۘۘۦۘۚ۬۫ۚۛۥۘۤۡۥۘ۫ۚ۫ۧۚ۫ۘ۟ۡ۠ۦۖ";
                    break;
                case -2085658520:
                    imageView2.setImageResource(i2);
                    str = "ۚۤۢۚۗۥۚۨۨۨۨۘۦ۫۬ۗۘۜۛ۫ۗۗۥۘۜ۫۫ۢۦۢۜۗۜ۠۬ۢۗۨۘۗ۟۫";
                    break;
                case -1894042464:
                    String str2 = "۟ۖ۫ۤ۠ۛۘۘۜۨۜۘۜۘۥۚۘ۬ۥ۬ۢۙۙۜۘۤ۠ۢۘ۠ۦ۫ۢ۠ۜ۠۟";
                    while (true) {
                        switch (str2.hashCode() ^ 896471198) {
                            case -250559369:
                                String str3 = "۟۠۬ۗۢۛۨۦۢۚۖ۬ۗ۠ۦ۬ۥۤۥ۫۠۟ۨۥ۟ۙۗۡۦۢ۟۟ۚۜ۟ۖۘ۟ۨۛ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1323123753)) {
                                        case -969757917:
                                            str3 = b7.OooO0Oo().OooO0OO == 2 ? "ۥۧۧۢ۠ۘۖۤۗۨۧۘۘۛۢۥۙۜۦ۫۫ۜۡ۬ۨۘۛۚۚ۬ۖۦۘ۬ۗۚۛۦۥ۬ۧۦۘۥۥ۫ۜۜ۠۫ۛۜۘ" : "۠ۚۧۙۨۚۦۗ۬ۙۘۘۘۨۤۨۘۚ۠ۘۚۦۧۘ۬ۘۚۦۖۨۘۗۦۧۘ";
                                            break;
                                        case -357857488:
                                            str2 = "ۜۙۜۤ۠ۧ۟ۘۧۗۙۚۚۧۢۥۤۤۥ۟۟۬ۧ۫ۦۘ۠ۛۘۘ";
                                            break;
                                        case -120071162:
                                            str3 = "ۚۙۙۛ۬ۛ۬ۤۥۘۤ۬ۥۘۢ۟ۜۘۚ۠ۗ۬۬ۢۡۗۧۦ۠ۦ۟۬۬ۥۢ۫ۙۤ۟ۧ۬ۡ۬ۘۡۘ";
                                            break;
                                        case 53738178:
                                            str2 = "ۖۛۙۤۙۦ۠ۡۗۧ۬ۙۢ۠ۦۘ۠ۜۨۘۖۥۘ۠ۖۛۢۢۙۜۨۡۘ۟ۚۛۗۦۜۘ۫ۗۚۢۙۛۤ۟ۦۘۖۨۥ";
                                            break;
                                    }
                                }
                                break;
                            case -83556275:
                                str = "ۜۥۧۡۛۗۚ۟ۖۘۙ۬ۦۤۚۥۘۡۢۨۥ۬ۛ۫ۖۚۨۖۢۜۛۘ۬ۧۢۚۖۥۘۚۢۗ۬ۘۙ";
                                continue;
                            case 1988184160:
                                str = "ۤ۬ۨۘۙۡۘۘۘۦۛۧۡۦۘۛۧ۫ۛ۫ۥ۟ۡۡۥۛۜۘۘۙۜۨۦۖۘۜۨۜۘ۠ۦۜۘۤۢۘۘۚۢ۫ۗۛۗ۟۟ۘۘ";
                                continue;
                            case 2057408848:
                                str2 = "ۙ۬ۥۘۚۧۥۙۛ۟ۧۤ۟۬ۘۜ۠ۛۦ۟۠۫۠ۢ۬ۚۛۖۗۤۖۘۥۢ۫ۘۗۗۥ۬ۜ۠ۘۤ";
                                break;
                        }
                    }
                    break;
                case -1848812394:
                    i3 = R.drawable.elfin_pause1;
                    str = "ۚ۬ۦۧۖۘۙۨۛۤۢۥۘۥۡۧۘۥۗۘۘۡۡۦۨۨۤۚۖۘۖۥۢۨۗۦۘۧ۟۟ۧۛۧۗۖۧ۟ۙۙۗۜۧۘ۬ۤۘۘۗۧۧ";
                    break;
                case -1831913736:
                    str = "ۖۚۖ۠ۤۦۘۜۥۥۖ۬ۥۘ۟ۡۖۛۙ۠۬ۜۖۘۙۜۧ۟ۦۘۢ۬۠۫ۖ۬۫ۡ۠ۛۗۨۖۢۢ۠ۥۗۖ";
                    break;
                case -1550512015:
                    return;
                case -1381112760:
                    imageView3 = this.OoooooO;
                    str = "ۘۘۤۥۧۖۘۤۧ۫۠ۖۦۤۤۡۤۙۜۘۜۚۖۘ۫ۛۨۘ۠ۦۤۙۨۧ۠ۜۘ۫ۦۗۦ۟ۢۚۜۤ";
                    break;
                case -1241638449:
                    imageView = this.OoooooO;
                    str = "ۥۤۡ۠ۚۚۧۢۨۘۘۨۨۘۚ۫ۖۖۤۖۘۧۜۨۜۙۖ۬ۛۚ۟ۗۖۘۙۙۨۢۧۜۘ";
                    break;
                case -1215849665:
                    this.o000000o.start();
                    str = "ۙۜۖۘۤۘۤۧۤ۠۬ۦۦ۟۟ۢۤۚۗۥ۬ۦ۟ۦ۠ۛ۠ۚۦۙۡۘ";
                    break;
                case -954184341:
                    str = "ۥۙۥۧۗۢۘۥۧۘۥۚۥۘۖۨۛۛۨۘۘۛ۫۫ۡ۬ۗۛۜۨۢۖۧۘۧۘ۠ۚۢ";
                    imageView2 = imageView;
                    break;
                case -593221184:
                    this.OoooooO.setImageResource(R.drawable.elfin_run1);
                    str = "۟ۥ۠۠ۧۖ۠ۙۥۘۦۛۨۦۥ۬ۥۖۘ۫ۜ۫ۚۨۦۘ۫ۨۧۘۙ۟ۜۘ۬ۜۢۙۧۨۗ۬ۜۧۜۦ۠ۤ۟ۢۜۡ";
                    break;
                case -358638948:
                    str = "ۤۚۨۜۜۙۢۥۧۘۦۚۘۘ۟۠ۜۘۗۘۜۘ۠ۙۥ۬۫ۚ۟ۡۨۘ۠۬ۦۘۤۤۘۙۦۨۘ۠ۖۚۨ۬ۥۗ۫ۛ۫۟ۘ";
                    i2 = i3;
                    break;
                case -73709582:
                    String str4 = "ۨۘ۬ۗۛ۬ۜۗۧۘۥۡۘۥۙۡۤۡۚۨۥۘۛ۟ۛۗۡۨۘۚۖۧۦۦۙۘۤ۠ۡ۟ۥۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1676520973)) {
                            case -721199554:
                                String str5 = "ۖ۬ۘۛۖۡۤۖۙۦۤۘۘۗۜۙۧۗ۫ۚۙ۫ۚۘۦۖۥۥۙۚۢ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-4213065)) {
                                        case 431097522:
                                            str5 = "ۦۛۨۘۤۥۜۘۨۧۥۡۤۖۘۨۖۧۘۜۢۜۘۦۛۨۘۙۖۤ۟ۛۙۡۡ۬ۥۜۖۜۡۨ";
                                            break;
                                        case 1430446739:
                                            str4 = "ۘۜۖۘ۬ۖۛۚۨۜ۫ۤۦۘۧ۠ۦۚۘۡۘۦۛۦۜۗ۫ۚۖۥۘ۫ۗۖۢۖ۠ۧۘۧۦۧۘۨۨۚ";
                                            break;
                                        case 1697800572:
                                            str4 = "ۨ۬ۜ۠۟ۖۖۧۘۙ۠ۦۚۦۤۡ۬ۧۥۤۛ۠ۛۚۚ۫ۡۘ۫ۨۜۘۙۨ۫ۙۖۘۨۗۢۜۦۨۖۙۧۡۦۘ";
                                            break;
                                        case 2010502520:
                                            str5 = b7.OooO0Oo().OooO0OO == 3 ? "۠۟ۤۙۚۦۥۤۚۧۡۖۘۦۦۦۥۤۧ۠ۡۘۤۤۦۘۘ۟ۛۢ۠ۧ" : "ۢ۠ۖۢۥۢۧۖۜ۟ۙۧۚۢۢ۫ۖۘ۠ۜۘۘۨۨۛۛ۠ۛۡۥ۟ۨۚۧۘۜۢۨۡۜۧۛ";
                                            break;
                                    }
                                }
                                break;
                            case 206844574:
                                str = "۠ۚ۫ۡۘ۠ۦ۬ۢۖ۬ۥۘۤۧۗۙ۫ۨۘۖۘۧۚ۠ۥۡۡ۟۫ۙۛۡ۠ۜۚۢۦۗۨۘۙۡۧۘۨ۟۟ۛۢۦۜۨ۟ۚۗۘۘ";
                                continue;
                            case 589480683:
                                str4 = "۫ۜۜۘۚ۠ۙۧۙۢۨۤۦۡۧۜۘۘۜۘۘۤ۟ۦۢۥۜۘۖۛۨۘۛ۫ۡۦۙۛۥۥۛۘۖۥۡۤۛ۬ۥ۟۠ۡۘ";
                                break;
                            case 1409590726:
                                str = "۬ۡۘۡۚ۠ۥۗ۟ۥ۫ۖۘۛۛۧ۬۟۫۟ۤۛ۟ۤۜۘ۫۫ۘۢۖ۬ۤۘۥۘۙۤۗۘ۟ۧ۟ۙۥۚۛۖۘ۟ۛۦ";
                                continue;
                        }
                    }
                    break;
                case -32596747:
                    i = R.drawable.elfin_normal1;
                    str = "ۜۢۢ۬۫ۢۦۙ۟ۢۦۧۥۤۤۚۜۘ۟ۡۖۡۢ۠ۢۤۖۙ۠ۥۘۧۜۥۘۙۖۘ";
                    break;
                case 267638651:
                    OoooOOO();
                    str = "ۥۗۖۘۡۛۡۘۖۦۘۧ۫۠۫ۚۨۘ۬۬ۖۘۢۨۗۖ۠ۨ۫ۧۘۜۦ۫ۜۥۛۘۤۚۙۥۤۘ۬ۡۘۙۙۜۘ۫۬ۦۘۢ۠ۨۘۙۡۜۘ";
                    break;
                case 326796700:
                    str = "ۘ۠۠ۜۘۤ۠ۘۘ۟ۚۢۖۥۙۛۦۗۘۖۧۖ۠ۖ۫۫ۨۙۖ۟ۧۥۘۘۨۜ";
                    i2 = i;
                    break;
                case 337264580:
                    str = "ۥۙۥۧۗۢۘۥۧۘۥۚۥۘۖۨۛۛۨۘۘۛ۫۫ۡ۬ۗۛۜۨۢۖۧۘۧۘ۠ۚۢ";
                    break;
                case 994028406:
                    str = "ۚۤۢۚۗۥۚۨۨۨۨۘۦ۫۬ۗۘۜۛ۫ۗۗۥۘۜ۫۫ۢۦۢۜۗۜ۠۬ۢۗۨۘۗ۟۫";
                    break;
                case 1933153994:
                    str = "ۢۨ۠ۨۦ۠ۗۡۜۘۛۡۡۦ۫ۖ۫ۥۘۥ۠ۖۚۥۢۢۗۗۥۗۨۘ۠ۙۡۘۛۙ۟ۡۨۡۧ۟ۨۘ";
                    imageView2 = imageView3;
                    break;
            }
        }
    }

    public void OooooOO(int i, int i2) {
        WindowManager.LayoutParams layoutParams = null;
        String str = "۠ۖۧۖۙۗۗۖ۟ۡۜۜۛۢ۬ۗۚۥۘۨۙۡۛۥۦ۬ۢۦۘۧۨۡۜۚۘۘۛۨۜۦۙۦ۫۟ۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 954) ^ 684) ^ 453) ^ 940629259) {
                case -646256705:
                    str = "ۦۢ۠ۗۧۦۘۜ۠ۢ۠۟ۨۘ۠۫۬ۙۦۚۧ۫ۤۘۥۖۥۗ۬ۜۨۥۘۜۨۖۘۡۥۧ۟ۦۘ۫۬ۘ";
                    break;
                case -388790001:
                    return;
                case 134718110:
                    layoutParams = this.OoooOoo;
                    str = "ۗ۟ۛۙ۬ۛۜۛۗ۟ۜۦۘ۟ۤۘۘۚ۟ۡ۫۫ۤ۬ۙۘ۬ۛ۫ۤۛۚۘۘ۠۫ۥۥۘۤۙ۠ۘۢ۟";
                    break;
                case 466312582:
                    str = "ۗ۠۠ۖۛۨۤۥۘۨۛ۫ۚۢۜۢ۟ۖۘ۫ۧۛ۫ۙ۬ۡ۫ۧۗۘۘۢۥۦۘۢۙۥ۠ۗۛۙۗ۠۬ۗۡۦۘ۠ۧۛۖۥۧ۬";
                    break;
                case 732681660:
                    layoutParams.x = i;
                    str = "ۥۦۗۡۘۜۘ۠ۨۦۧ۫ۖۖ۬ۡۘۦۥۖۚۖۗۛۙۘۘۚۡ۟ۧۡۘ۟ۛۤ۫۬ۤۨۘۥ۫ۡۘۙۦۡۚۨ";
                    break;
                case 817290000:
                    layoutParams.y = i2;
                    str = "۟ۙۢۥ۠ۤۡ۠ۨۘۜۥۨۥۘۚۢۘۘۛۧ۫ۥۜۖۘۡۢۦۘۤۧۥ";
                    break;
                case 889622777:
                    this.OoooOoO.updateViewLayout(this, layoutParams);
                    str = "ۚۗۗۗۖۗ۠ۚۢۡۜۧۘۤ۬۫۠ۧۨۘۧۡۛۛۡۨ۠ۘۜۖۧۧۥ۬ۗۜۦۚ";
                    break;
                case 913963968:
                    str = "۠ۥۧ۟۟ۡۘۤۦۡۘۦۜۚۧۛۛۢ۫۠ۜۦۦۙ۠۫ۦ۬ۡۛۖۘۘۥۘۜۘ۬ۦۙ۠ۥۢۢۛ۬ۗۡۡۘۡۗۗ";
                    break;
            }
        }
    }

    @Override // android.view.View
    public /* bridge */ /* synthetic */ ViewGroup.LayoutParams getLayoutParams() {
        String str = "ۙۥۦۡۧۗۖۗۙ۫ۦۤۖۚ۬ۘۚۥۚ۠ۦۘۙۛۧۦۗۗۗ۠ۖۗۜۘ۟ۡۙۧ۫ۖۘۘ۬ۛ۫ۧ۫ۢۙۖۤۘۗۤۖۜ";
        while (true) {
            switch ((((str.hashCode() ^ 257) ^ 14) ^ 257) ^ (-439646959)) {
                case -441515685:
                    return getLayoutParams();
                case 1694878076:
                    str = "ۧۤۦۢ۟ۖۢۥ۬۠ۥۘۘۧۗ۬ۙ۟ۜۘ۠۠۫ۢۖۙۨۜۜۘۥ۫ۛۡۤۗ۫ۙۤ۬۟ۡۙۤۚۦۥۦۘۢۧۘۘ";
                    break;
            }
        }
    }

    @Override // android.view.View
    public WindowManager.LayoutParams getLayoutParams() {
        String str = "ۛۗ۟ۙ۫ۘۧۥۨۤۡۖۘۦۤۗۢۥۙ۠ۚۙۧۤۢۘۢۘۘۦۧۜ";
        while (true) {
            switch ((((str.hashCode() ^ 632) ^ 457) ^ 776) ^ (-347465601)) {
                case -662415570:
                    return this.OoooOoo;
                case 1326296270:
                    str = "۬۫ۘۘۘۢ۬ۤ۠۟ۢۚۜۘۦۚۦۨۘ۠ۦۚۨۘۧۖ۟۫ۢۛۧۧۙۜۡۜۦۦ";
                    break;
            }
        }
    }

    public void o000oOoO(float f, int i, int i2) {
        ImageView imageView = null;
        View.OnTouchListener onTouchListener = null;
        ImageView imageView2 = null;
        View.OnTouchListener onTouchListener2 = null;
        ImageView imageView3 = null;
        View.OnTouchListener onTouchListener3 = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        LinearLayout linearLayout = null;
        LinearLayout linearLayout2 = null;
        int i7 = 0;
        int i8 = 0;
        ImageView imageView4 = null;
        int i9 = 0;
        ImageView imageView5 = null;
        int i10 = 0;
        ImageView imageView6 = null;
        int i11 = 0;
        ImageView imageView7 = null;
        int i12 = 0;
        String str = "ۖۗ۠ۗۢۦۘ۬ۚۦۘ۫ۤ۠ۗۤۖۘۜۖ۟۟ۗۦ۫۠ۦ۬ۖۘۜۘۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 854) ^ 432) ^ 767) ^ 398401808) {
                case -2139180460:
                    str = "۟ۧۦۨۤۗۥۥۥۘ۟ۥۗۗۜ۫ۖ۬ۨ۠ۦۘ۬۟ۨۚۦۦۘ۫۟ۧ۠ۘۡۦۧۡۘۥ۟ۘۧۖۡۘ۟ۥۨۘۦ۬ۧۙۘۘۥۜۚ";
                    imageView7 = imageView4;
                    break;
                case -1814425739:
                    this.o0OOO0o.OooO0o();
                    str = "۠ۢۦۘۚۚۡۜۢ۟ۘۘۚۚۥۘ۠ۨۡۨۙ۟۬ۙۧۗۘۜۘۘۨۦۧۦۚ۟ۥۜۘ";
                    break;
                case -1770875827:
                    str = "ۦۗۨۦۢۗ۬ۚ۟ۥۗۤۡۜۜۘۧۨۚۖۘۤ۠۫ۖۘۜۤۡ۫ۛۥۘۧۨۧۘۜۡۧ";
                    imageView3 = imageView;
                    break;
                case -1701266784:
                    imageView3.setOnTouchListener(onTouchListener3);
                    str = "ۖ۫ۤۘۦۧۘ۫ۨ۠ۧۛۛۚۜۦۘۨۨۡۦ۫ۦۗ۫ۗۥۤۥۗۧۢۘۤۧ۫ۡۘۡۘۦۥۥۤ";
                    break;
                case -1689116229:
                    str = "۟ۦۥۘۖۧ۠ۦۖۢۥ۟ۡۥ۠ۘۖۜۥۤۨۘۢۡۨۘ۠ۡۦۘۛۖۧۘ";
                    break;
                case -1627151432:
                    str = "ۚۤۚ۫۟۫ۗۘ۟ۦۥۘۦ۬ۡۘۤ۬ۡۘۧۚۡۡ۟ۤۖۦۖۤۨۦۘ";
                    i6 = i5;
                    break;
                case -1586723698:
                    i9 = R.drawable.elfin_run1;
                    str = "۠۟ۨ۠ۜ۬ۜۗۧۡ۬ۚۦ۫ۜۘۡ۟ۜۛۧ۫ۦۦۥۘ۫ۙۜۘۧۧۛ";
                    break;
                case -1532227329:
                    this.o00000OO = i;
                    str = "ۗۛۡۘۘ۫ۗۦ۟ۦۘۜۚۨۜۡۧ۠ۢۤۧ۠ۘۙۤۢۛۚ۠ۦۖۜۘ";
                    break;
                case -1473564932:
                    str = "ۙۨۧ۟ۤۖۡۡ۟۟ۛۜۦ۬ۤۥۦۡۘۢۘۘۧۙۜۘۥۛۢ۫ۦۧۘۚۜۧۘۚ۟ۜۘۦۤۛۛۜۘۘۚۧۨ۟ۘۦۘ۫ۖۘ۬ۨۜ";
                    break;
                case -1386533804:
                    str = "ۦۗۨۘۡۧۨۦ۟۠ۦۢۥۛۜۚۗۗۛۘۦۦۘۘۤۢۜۘۨۙۤۘۤۦۘۘۛۘۡۤۡۢ۬۬ۛۘۧۥۤۚۤ۫ۖۨ۟ۜۘ";
                    i6 = i4;
                    break;
                case -1283298244:
                    linearLayout = this.Ooooooo;
                    str = "ۢۛۜۤ۟ۡۘ۬۠ۦۘۨۗۘۨ۬ۤۘۗۧۡۖۨ۬ۚۧۧۥۘۗۧ۫ۤۦۦۘ۟ۨ۫";
                    break;
                case -1188294515:
                    str = "ۚۘۛ۠ۖۡۖۚ۬ۗۚۜۘ۠۠ۗۨۡۖۘۗۙ۠۠ۘۗۚۛ۫ۖۘۚۖۦ۬ۜۙۗ۫ۖ۫ۜۖۘۢۘۗۜۡۛOۢۦ۬";
                    break;
                case -1102689209:
                    str = "ۤۡۘۙ۠ۧۛۚۜۘۖۛۖۘۚۜۚۨۛۥۚۘۖۥۨۥۘ۬ۛ۟ۨۘۘۨۚ۟ۧ۫ۛ";
                    i8 = i3;
                    break;
                case -847765865:
                    str = "ۜۥۥ۠ۚۢۢۦۧۘ۠ۨۖۘۥۚۜۘۚۦۡ۟ۧۧۡۤ۠ۖۢۡۘ۬ۗۦۘ";
                    i12 = i10;
                    break;
                case -702936838:
                    return;
                case -696952209:
                    imageView6 = this.OoooooO;
                    str = "ۗ۬ۦۘۛ۬۫ۗۢۨۘۗۚۚ۟ۡۦۘۖۢۥۘۤۖۤۧۥۗۚۚۦۘ۟۟ۚۢۙۦۥۢۡۘۚ۟ۥۘۤۘ۬ۤۘۡۦۦ";
                    break;
                case -614437059:
                    str = "ۛ۫۬ۢۢۖۖۚۛۢ۬ۘ۟ۚۛۢۤۦۥۦۗ۬ۧۥۘ۬ۚۢۧۘۖۜۚۦۘۜ۟ۛۛۛۡۦۙۨ";
                    i12 = i11;
                    break;
                case -593330535:
                    i10 = R.drawable.elfin_pause1;
                    str = "ۛۘ۫ۘۡۛ۫۠ۜۤۛۜۘۘۛۛۥۥۨ۠ۙۥۥۤۨۘۥۥۖۘ۟۫ۦۢۧۦۨۥۧ";
                    break;
                case -535880253:
                    i4 = 0;
                    str = "۬ۙ۬۬ۙۚۥ۠ۧ۠ۖ۫ۢۛۚ۬ۗۖۘۛ۟ۖۛ۫ۨ۠ۘۜۛۙۜۘۚ۠۠ۙۡۛ۟ۚۛۤۛ";
                    break;
                case -409891595:
                    str = "ۚۤۚ۫۟۫ۗۘ۟ۦۥۘۦ۬ۡۘۤ۬ۡۘۧۚۡۡ۟ۤۖۦۖۤۨۦۘ";
                    break;
                case -324134338:
                    onTouchListener2 = this.o00000;
                    str = "۟ۘۜۙۚۤۘۢۜۦ۟ۜۢ۫۠ۡۘۙۨۗۖۘۤۧ۬ۧۦۘ۬ۜۚۗۘۘۘۨۥۘۘۢۧۨ۠ۢۚ";
                    break;
                case -148436175:
                    str = "ۧۢۖۘۙۖۤ۬ۜۖۘۗۛۜۨۚۧۘۘۡ۫ۥۨۚۛۨۘ۬۫۫ۜۛۘ";
                    break;
                case -111245442:
                case 844516597:
                    str = "۟ۧۦۨۤۗۥۥۥۘ۟ۥۗۗۜ۫ۖ۬ۨ۠ۦۘ۬۟ۨۚۦۦۘ۫۟ۧ۠ۘۡۦۧۡۘۥ۟ۘۧۖۡۘ۟ۥۨۘۦ۬ۧۙۘۘۥۜۚ";
                    break;
                case -100989704:
                    linearLayout.addView(linearLayout2, i8);
                    str = "ۖۦۧۘۘۛ۟۠۬ۖۙۛ۟۬ۙۘۜۚۧۡۤۦۦۧۚ۬ۡۛۥۜ۬ۨۜۥۘۢۚۥۤۛۡۖۜۘ";
                    break;
                case 16799140:
                    imageView7.setImageResource(i12);
                    str = "۟ۙۚۤۢۧ۠ۥۘۥ۠۠ۘۥ۫ۖۙۙ۟ۡۘۘۗۙۦۙۙۜۨۨۤ۠ۧۤۙۜۙۤ۬ۚۗ";
                    break;
                case 62234444:
                    imageView = this.OoooooO;
                    str = "۠ۗۦۡۖۛۥ۠ۧۢۚۥۘ۫ۜۛۨۚۖۗۡۜۥ۟ۡۤۚۥۖ۫ۜ۟ۧۦ۬ۢۚۖ۟ۤۘ۟ۖۘۦۚ۠۬ۙۥۘۧۜۜۘ۬۟ۥۘ";
                    break;
                case 96555113:
                    imageView4 = this.OoooooO;
                    str = "۠ۗۚۢۦۦۚ۫ۗۗ۟ۡۘۛۖۢۤۡۚۘۙ۫ۧۙۙۗ۬ۗۖۤۦۘۙۡ۠ۛۗۜۘ";
                    break;
                case 220868279:
                    i5 = w3.OooOoo0(getContext()).x;
                    str = "ۚۗۦۘ۟ۥۘۧۦ۫ۡۜۚ۬۫ۥۛ۫۟ۤ۟ۥۖ۟ۨۘۡۜ۫۟ۖۥۘۘۧۤۗۦۖۢۗۛۙۧۘۘۢۚۢۥۘ";
                    break;
                case 271686028:
                    this.o0OOO0o.setVisibility(8);
                    str = "ۘۨۨۦ۬ۜۘ۬ۦۦ۟۬ۘۘ۠ۗۥۘ۠۬ۜۜۢۨۘۙۖۧۖۡۥۖۛ۠ۜۤۧۚۡ۫ۤۦۧۥ۬۠ۨۖ۟ۖۢۥۜۦۘۤۥۜ";
                    break;
                case 311829711:
                    str = "ۛ۬ۛۗۗۦۘۡ۫ۦۛۛۖۖۢۧ۫ۘۗۧۙ۟ۙۦۚۖۖۤۙۦ۫ۡۧۨۘۧ۫۠ۛ۬ۨۡۙۧۦۥۢۜۡ";
                    break;
                case 423321994:
                    str = "ۡۚۥۤۡۖۘۚۖۖۘۥۗۢۥۡۦۚۨۨۜۙۧۛۚ۠ۦ۫ۧۨۤۚۖۖۘ۬ۤۧۗۥۡ۫ۘۧۦۧۥۜۙۨۢۦ۠ۘ۟";
                    imageView7 = imageView6;
                    break;
                case 475496674:
                    i11 = R.drawable.elfin_normal1;
                    str = "ۜۦۦۗۨ۟۬ۨۤۤ۠ۨۘۙ۠ۚۨۗۧۛۖۡۘ۫ۢ۠۬۠۟۠ۨۤۢ۬۫ۘۚۥ";
                    break;
                case 525016492:
                    String str2 = "ۜۤۦۜ۫ۚ۠ۘۘۘۘ۬ۥۘۚ۟ۨۤۢۥۚۡۖۘۢۨ۟ۘۛۚۚۥۥۘۤۚۚۢۡۚ۫۠ۨۘۗۢۛ";
                    while (true) {
                        switch (str2.hashCode() ^ (-362702056)) {
                            case 651555154:
                                str = "۠ۢۦۘۚۚۡۜۢ۟ۘۘۚۚۥۘ۠ۨۡۨۙ۟۬ۙۧۗۘۜۘۘۨۦۧۦۚ۟ۥۜۘ";
                                continue;
                            case 703326922:
                                str = "۠ۚۧۙۦۙ۠ۥ۬ۗ۟ۚۢ۠ۙۛۙۙۥۗۜۘۚۢۦۢۧۛۧ۫۠ۚۘۖۘۧۖ۬ۡۨۡۘ۠ۢۖ";
                                continue;
                            case 720257127:
                                String str3 = "ۖ۫ۢۡ۠ۚۛۨۦۦۦۧۚۨۥۘ۟ۗۛۢۢۤۚۜۜۥۨۘۘۨۖۜۡۖ۬ۥ۟۟ۤۛۗ۟ۘۘۘۦۘۥۘۨۡۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1397463858) {
                                        case -2065829842:
                                            str3 = "ۤۙۦۘۜۚۦۜۘۥۥۤۥۘۛۧۥۧۡۜۤۤۨۚ۠ۤۛۡۘ۫ۤۦۘۢ۬ۡۘۤۡۢ۫۫ۨۘۢۖ۠";
                                            break;
                                        case -15645064:
                                            str3 = this.o0OOO0o.getVisibility() == 0 ? "ۛۚۨۘۚۘۘۥۘۦۘۗۘۙۘۜۘ۟ۛۥ۠ۥۜۘۘۛۚۘ۠ۨۘۧۦ۬ۗۦۛ۫ۥۜۘۖ۫ۦۘ۠۫ۖۤۙۖۘۘ۠۟ۦۚۧۖ۟ۖۘ" : "۠ۙۖۘۜ۟ۦۦۙ۫ۥۦۙۤۥۛۘۚۘۧۦۜۡۖۦ۫ۥۗۖۦۖۨ۬ۜۘۤۜۜۚ۬ۘۚۚۛ۟۬ۛۗۥ";
                                            break;
                                        case 366601934:
                                            str2 = "ۚ۟ۜۘۨۚ۟۬ۢۚۜۘۘ۬ۛۢ۬ۜ۟ۢۤۜۤ۠ۥۦۗ۟ۖ۠ۤۚۚۢۖۚ۠ۙ۬ۥ۫۟";
                                            break;
                                        case 1434336438:
                                            str2 = "ۚۤۧۢۤۨۘۤۖۗۦۜ۟ۢۧۡۘۦۢۥ۟۠۟ۡۖۘ۬ۦۖۘ۠ۦ۫ۙۧۨۛۨۘۥۤۧۥۤۖ";
                                            break;
                                    }
                                }
                                break;
                            case 1396387625:
                                str2 = "۠ۥۛۧۗ۠ۥۜۘۖ۬۫ۡۨۖۚ۠ۡۘ۟ۚۖ۠ۧ۠ۤۨۢۦۚ۫ۖۜۘ۬۫ۗۡۢۥۘ۟ۢۖۙۡ۬ۖۗۧۚۗۤۤۢۥۘ";
                                break;
                        }
                    }
                    break;
                case 539352598:
                    String str4 = "ۗۧۛ۬ۙۗۙۘ۠۠ۡۧۘۘۤۡۘۗۙۚۥۢۥۘۖۘۚ۫ۙۡۦۥۘ۬ۙۥۦۧۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-678796145)) {
                            case 5970391:
                                str4 = "ۧۗۤۛ۠۬ۜۡ۬۠۬ۥۡۚۙۘ۟ۢۚ۠ۡۘۥ۬ۧۧۘۘۤ۟ۥۘ";
                                break;
                            case 100543363:
                                String str5 = "ۘۛۦۘۜۤۘۡۚۘۘ۬ۜۘۗۤۦۘۡۦۙۙۗۦۘۗۘ۫۠ۘۖۘۚۨۘۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-992828445)) {
                                        case -1746405903:
                                            str4 = "ۨۨۖۘ۠ۜۨۦ۬ۤۖ۬ۖۚۡۘۚۡۖۘۤ۫ۘ۫۬ۤۡۥۦۢ۬۬ۢ۫ۡۘۘ";
                                            break;
                                        case -1312645116:
                                            str5 = "ۦۨۜۚۧۥۜۡۜۘۜۛ۬ۙ۠ۡۦۜۜۘۚ۠ۤ۟ۦۙۤۖۘۘ۟ۗۖۘۚۨۘۢۨ";
                                            break;
                                        case -830881548:
                                            str4 = "۠ۘۢۘ۫ۚۗۧ۟ۧ۟ۜۘۨۢ۬ۖۛۖۘۧۧۥ۟ۘۗ۟۫ۡۘۚۨۗ";
                                            break;
                                        case 324308322:
                                            str5 = i != 0 ? "ۦۛۖۤۤۙۜ۠ۖۘۖۡ۠۫۠ۖۘ۬ۙۛۧۗ۬ۖۨ۬ۦۦۧۢۚۨ" : "ۥۗۖ۠ۖۖۘۚۨۥۜ۫ۡۘۡۜ۬ۚۚۨۛ۫ۨۘۖۚ۟ۜۛۘۘ۫ۢ۫ۨۦۡۚ۠";
                                            break;
                                    }
                                }
                                break;
                            case 242522133:
                                str = "ۜۦۥۗۤ۠ۧۧۤۥۢۘۘۛۙ۟ۛۤۡۘۢۨۘۘ۟۠ۖۘ۟ۜۢۨ۟۫";
                                continue;
                            case 1246074973:
                                str = "ۗۚۘۧۜۖۘۢۖۘ۫ۡ۠ۙ۠۫ۘۡ۟ۨۢۖۗۖۖۦۡۡ۫ۗۦۘ";
                                continue;
                        }
                    }
                    break;
                case 664312891:
                    str = "ۛۢ۠ۤۥ۠۬۬ۥۢۛۥۦ۠ۡۘۤۙۡۘۗۧۨۥۙ۟ۦ۫۟ۦۗ۫";
                    i12 = i9;
                    break;
                case 774753449:
                    str = "۫ۦۗۜۙۦۘۤۡۛۤ۠ۡۤۚۙ۫ۤۘۗۡۘۘ۫ۛۜۘۧۧۢۧۖۥ۫۬ۗۙۖۜۙۦ۟۫ۖۘ۫۟ۨۘۙۘۗۨۡۡۘۧ۠ۙ";
                    imageView3 = imageView2;
                    break;
                case 777767237:
                    i7 = 1;
                    str = "ۛ۠ۖۘۡۧۦۘ۟۫ۢۢۡۜۘۧۧۖۨۘۚۛۜۨۛۖۘۧۛۤۤۨۡۘۘۡ۬ۜ۬ۤۥۥۖ۠ۤۖ۟ۢۖۘۤۧ۫ۥۨ۫ۦۢۦۘ";
                    break;
                case 791282257:
                    str = "ۛ۬ۛۗۗۦۘۡ۫ۦۛۛۖۖۢۧ۫ۘۗۧۙ۟ۙۦۚۖۖۤۙۦ۫ۡۧۨۘۧ۫۠ۛ۬ۨۡۙۧۦۥۢۜۡ";
                    onTouchListener3 = onTouchListener2;
                    break;
                case 888669977:
                    imageView2 = this.OoooooO;
                    str = "ۦۚۚۧۛ۟۫ۗۤۡۨۡۘۨۧۨۘۜۜۡۘۨۦۡۘۨ۬ۥۖۢۨۘۧۘۧۘۖ۟ۡۘۨۖۦۘۙ۫ۜۘۜۖۜۘ";
                    break;
                case 928354492:
                    String str6 = "ۥۘۧۘۚۥۛۥۥۙ۠ۢۘۡۙۖۘۥۗۡۘۗۚۘۘۙۖۖۘ۫ۦ۫ۨۜۡۨۤۘ۟ۗۛۖ۬ۛۧۗۦۖ۠ۥۘۢۛۡۗۦۜۦۘۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-1053769300)) {
                            case -1780676179:
                                String str7 = "ۜۖۨۛ۠ۧ۠۠ۢ۟ۦۚۡ۬ۖۘۖ۟ۢۜۦۚۜۦۜ۟ۦۘۘۙ۬ۚۤۢۥۘۚۗۡ۠ۗۡۘۚۙۧ";
                                while (true) {
                                    switch (str7.hashCode() ^ 916249821) {
                                        case -855147582:
                                            str6 = "ۤۜ۟ۥۢۡۘۨۖۨۙۡۛ۟ۖ۟۠ۡۥ۬ۨۜۥ۟ۖۛ۟ۨۤ۠ۨۗۙۨۛۚۚۤۖۚۖۖۤۥۘۘۜۨ";
                                            break;
                                        case 475948591:
                                            str6 = "ۡۥۦ۟۫ۤۜۘ۫۠ۘۖۘ۠ۦ۫ۦۦۘۗۚۧ۬ۙۡۗۥۧۘۦۜ";
                                            break;
                                        case 603636899:
                                            str7 = i2 == 0 ? "۠ۨۘۥۘۨۚۢۡ۬ۘۡۖۙ۬۫ۥۜۦۦۧۧۦۘۗ۟ۗۛۛۙۢۢۙۢ۠ۥۘ۫۠ۙۖۨۢ" : "۠ۢۛۖ۟۠ۚۥۨۘ۠ۘۜۤۧۥ۠۠ۨۘ۬ۘۜۛ۫ۖ۟۬۫ۛۤۡۘ۠ۦۜۙۥۗ۫۠۬ۖ۠۟ۡۤۥۘۨۦۧ";
                                            break;
                                        case 2097746813:
                                            str7 = "ۜ۠۫۠ۜۨۖۨۧۦۡۨۘۡۛۘۜۘۦۖ۬ۡ۬ۨۥۘۗۖۘۛۤ۠ۗ۠۠۠ۧ۟";
                                            break;
                                    }
                                }
                                break;
                            case -857718792:
                                str = "۟۟ۨۘۧ۠ۛۗۢۖۧۦۘ۬۠ۖۘ۠ۥۦۢۤۨۘۘۘۚ۫۬ۜۘۚۗۨۖ۠۬ۖۖۥۘ۟ۥۡۘۚۜ۠ۤۗۦۘۡۡۘۖۢۗۙۡۧ";
                                continue;
                            case -54320569:
                                str6 = "ۧۧ۟ۤۦۥۘ۟ۤۜ۬ۨۦۘ۫۫ۜۘۗ۟ۛۢۛۘۛۨۨۘۦۨۥۥۙۡۘۗ۬ۖۘۗۘۤ";
                                break;
                            case 1490309024:
                                str = "۠ۢۘۡ۟۬ۦۡۛ۠ۗۙۤۤۢۜۘۨۛ۫ۢۖۦۥۨۧۗۨۙۨۘۙۙۡۛ۟ۢۚۙۦۢۖۢۘۥۖۤۗۤ";
                                continue;
                        }
                    }
                    break;
                case 1013980120:
                    linearLayout2 = this.o0OoOo0;
                    str = "۠ۧۡۘۨۙۜۤۦۗۜۨۧۘۨ۬۫۬ۖۙۥۨۧۤ۟ۖۘۘۢۦۤۖۨۖ۠ۙۜۘ۫";
                    break;
                case 1102843171:
                    this.Ooooooo.removeView(this.o0OoOo0);
                    str = "۠ۥۢۘۨۖ۫ۘۜۘۗۙۦۘۙ۫ۡۡۚ۟ۖۢۙ۫۠ۦۢ۟ۘۥ۠ۚۛۥۤۗۗۨۤۖۗ۬۠ۦ۠ۡ۫۟";
                    break;
                case 1103884102:
                    str = "۬ۡۗۢ۟۫ۧ۫ۜ۫ۡۘۦۙۦۘۡۙۗۨ۬ۛۚ۠ۙۖۢ۬۫ۘۥۢۚۨ۬ۨۘۘۜۧۗۚۧۦۘۢۤۗۢۢۥۘ";
                    i8 = i7;
                    break;
                case 1153487459:
                    i3 = 0;
                    str = "ۛۦۦۘۘۥۡۗۦۛۨۘۘ۟ۡۧۘۙ۬ۧۚۦۙ۟۟ۤ۬۫ۧۛ۫ۚۘۙۖۡۜۙ۬ۨ۬ۦ۬ۛ";
                    break;
                case 1497019919:
                    OooooOO(i6, (int) ((w3.OooOoo0(getContext()).y * f) - getHeight()));
                    str = "ۨۦۗ۠ۡ۟ۥۗۢ۫۬۟۠ۖۖۘۢۨۖۢۖۘۜۗۙۙۘۚ۠ۗ۠ۧۥ۟ۙۘۧ۟ۨۥ۟۬ۢۚۙۛۢۧۘۖۧۥۚ";
                    break;
                case 1588200037:
                    str = "ۚ۫۠ۜۢۡۢۜۥۘۗۘۨۘۚۚ۬ۙۢۜۘۙ۟ۦ۠ۢۛۤۘۛۥ";
                    imageView7 = imageView5;
                    break;
                case 1618010630:
                    String str8 = "ۜۦۨ۬ۢۛۘۙۖۘۜۢۨۗۛۨۘۛۥۨۨۖۥۘ۠ۙۢۙۜۖۘ۬ۡۧۘۧ۟ۡۘۜۨۜۘۨۥۙۗ۬۟ۤۢ۫۟ۨ۫";
                    while (true) {
                        switch (str8.hashCode() ^ 358676862) {
                            case -1247615171:
                                str = "ۧۤ۟ۨۡۨۘۨ۟ۖۖۢۧۦۗۦۨۜۤۥ۫ۜۘۚۘ۟۠ۤۖۘ۟ۜۡۘۢ۬ۥۘۚ۟ۦۘۗ۠۬ۡ۟ۢ";
                                continue;
                            case -413774541:
                                str8 = "ۖۤۘۘۦۙۘۙۤۡۢۦ۬ۤۡۜ۬ۤ۫ۖۤ۬ۦۤۢۤۦۨۨۖۚ۫ۦۘۥۖۧۘۛ۠ۛ۠ۖۙ";
                                break;
                            case 590447013:
                                String str9 = "ۗۖۦۘۗۤۛۧۚ۟ۗ۠ۖۜۢ۬ۖۗۨۘۘۘۨۘۙۗۡۧۡۖۘ۟۬ۖۙۦۨۘ۟ۡۧۘ۠ۥۜ۬ۚۖۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-1032377605)) {
                                        case -1302496153:
                                            str9 = "ۚۢۥۧ۫ۜۘ۠ۨۥۘ۫۫ۖۘ۬ۖۤۧۦۦۜۗۤ۬ۘۨۜۙۤۖۖۨ";
                                            break;
                                        case -798737600:
                                            str8 = "ۗۥۘۗۨ۟۠۬ۨۘۦۗۘۨۦۘۙۜۦۘۜۙۚۨ۫۬ۨ۠ۧ۟ۤ۬ۗ۫ۚۙۖۘۧ۠ۤۙۡ۟";
                                            break;
                                        case -700454898:
                                            str8 = "۟ۚ۟ۘۤۢۛۖۦۗۘۜۛۢۥۖۛۨۚۡۧۤۘۙۜ۬ۚۜۗۖۢۚۚۜۚ";
                                            break;
                                        case -211533345:
                                            str9 = i2 == 0 ? "ۛۘۥ۟ۙۜ۟ۜۛ۟ۤۘۘ۠ۤ۠ۨۢۘۘۦ۠ۙۗۢۛۥۛۡۘۙۙۡۘۜ۠ۜۛۚۤ۬ۨۘۗۦ" : "۫ۛۖۘۥۘۛۢۨۛۨۜۨۘۧۢ۬ۡ۟ۙۥۜۜ۬ۛۖۘ۟ۚۘۘۦۙۜۘۥ۬ۡۘ۠۟ۥ";
                                            break;
                                    }
                                }
                                break;
                            case 1898679421:
                                str = "۬ۡۗۢ۟۫ۧ۫ۜ۫ۡۘۦۙۦۘۡۙۗۨ۬ۛۚ۠ۙۖۢ۬۫ۘۥۢۚۨ۬ۨۘۘۜۧۗۚۧۦۘۢۤۗۢۢۥۘ";
                                continue;
                        }
                    }
                    break;
                case 1675394061:
                    str = "ۥۜۚۥۦۘۘۢۗۤۗ۟ۦۧۦۙۥۙۖ۬ۡۧۘ۫ۜۘۧۤۧۚۖۤ";
                    break;
                case 1908163530:
                    imageView5 = this.OoooooO;
                    str = "ۜۡۧۤۡۥۘۡۛۡۘۙۛۡۘۜۗۚۨ۟ۘۢۘ۠ۧۛۙۘ۠۫ۘۤۙۖۜۥ۬ۜۘ۬ۗۘ۫ۦۛۢ۫ۖۘۘۥۧ";
                    break;
                case 1919255909:
                    onTouchListener = null;
                    str = "ۛ۟۫۟ۛ۫ۤۨۚ۬ۖۨۘ۬۫۬ۗ۠ۨۘۚ۟۠ۛ۟ۗ۫ۢۡۘ۟ۢ۬ۙۢۡ۟ۨۘۘ";
                    break;
                case 1937660885:
                    str = "ۚۚۜۦ۫ۘۧۖۖۘۙۙۥۦۢۥۗۥۗ۬ۚۦۖۜۡۘ۫۬۠ۙۖۨۦۨ۬ۡ۬ۖۘۘۤۧۖۘۧۘۦۙۦۦۢۘ";
                    onTouchListener3 = onTouchListener;
                    break;
                case 2030292500:
                    String str10 = "۬۠ۢۘۦۖۢۢۧ۠ۨۧۦۖۦۘۛۥۡۛۡۥۗۛۖۘۢۡ۫ۨۗ۠";
                    while (true) {
                        switch (str10.hashCode() ^ 1970112264) {
                            case -1493226948:
                                str = "۟ۤ۫ۨۨۡ۫ۜۧۨ۬ۘۘۨۚۨۡۤۜۘ۠ۢۖۘۤۖۘۚۚۤۖۜۖۘ";
                                continue;
                            case -1237406687:
                                str10 = "ۦۚۨۙۡۖۥۙۘۡۖۦۘۜۚۘۘۦ۟ۘۘۥۥ۟ۧۖۧۘۜۤ۫ۧ۟ۘۥۜۙۥۧۘ۫ۢ۬ۜۖۛ";
                                break;
                            case -692458321:
                                String str11 = "ۗۡ۫ۧۚ۠ۘۥۨۘۜۧ۟ۦۜۢۡۘۘۦۛۨۧۥۖۘۡۘ۟۫ۘۘۚۤ۫۬ۘۖۜۖۡۘۜۦۜۖۨۢۘ۬۟";
                                while (true) {
                                    switch (str11.hashCode() ^ 1586090953) {
                                        case -1912701230:
                                            str10 = "ۘۗۚۛۡۨۘۛۨۦۛۧ۟ۥۚ۬ۚ۫ۦۘ۟ۖۢۘ۫ۜۘۥۡۥۧۨۨۘۘۖ۫۫ۥۚ۟۬ۨۚ۟ۡۘۦۙۘۤۧ۟ۜۖۚۚۢۥ";
                                            break;
                                        case -1399862444:
                                            str11 = b7.OooO0Oo().OooO0OO == 2 ? "ۘۦ۠۟ۤۡۡۛۥۗۤۤ۟ۗۛۨ۬ۛۡۢ۫ۦۚ۟ۨۘۜ۬۫ۘۚۛۦۢۦۥ۟ۢۡ۬ۖ۟" : "ۘۘۛۤۢۡۦۨۙۜۨۘۘۘۦۜۘۙۙۤۤۗۜۨ۫ۘ۠ۜۛۨۢۨۘ۬ۡۨۥۧۤۤۥۤۘۖۛۜ۠ۖۘۨۦۜ۬ۜۨۚۡۨۘ";
                                            break;
                                        case -328099561:
                                            str10 = "ۦ۫ۧۖ۠۟۫ۖ۬ۧۡۦۘۤۘ۫ۙۦۦۘ۬ۚ۟ۤۨۦۥۨ۟ۗۘۜۥ۠ۥ۬ۛۥۘۧ۫ۦۨ۬ۚ";
                                            break;
                                        case 1137637250:
                                            str11 = "ۧۘۙۙۘ۫۟ۜۘۚ۠ۨۦۡۖۖۢ۬ۜۡۥۘ۟۠ۡۢ۠ۙ۬ۚۜۘۧۥۖ۟۫ۗۧۖۥۗۙۤ۟ۗۛ۬ۙ۟";
                                            break;
                                    }
                                }
                                break;
                            case 567586748:
                                str = "۫ۘۢۢۖۗۙ۠ۘۜۚۡۘۡۙۙۛۨۗۡ۟ۜۗۛ۠ۖۗۘۚۙۗۤۥۘۙۜ۠";
                                continue;
                        }
                    }
                    break;
                case 2119664303:
                    String str12 = "ۨ۬ۤۦۦۖۘۛ۟ۜۘۢ۟ۦۚۚۖۡۦۤ۫۬ۨۘۧۢۘۘۨۙۢۢ۫۠ۚۦ۬ۤۛۢ";
                    while (true) {
                        switch (str12.hashCode() ^ 1432252481) {
                            case -2095018217:
                                str = "ۗۘۧۥ۠۟ۗۜۧۥ۬ۜۙۥۙ۫ۖ۟ۧۥۙ۬۟ۙۚ۬ۘ۫۟۬ۨۥۡۡ۫۠ۚ۫ۥ۫ۤ";
                                continue;
                            case -1761373908:
                                String str13 = "ۛ۠ۘۛۧۙۨ۫ۥۚ۟ۤۧۥۖۘۘۨۙۥۨۘ۟ۦۘۢۨ۬۫ۛۗۨۤۢۗۡۜۘۧۧۚۖۥۦ";
                                while (true) {
                                    switch (str13.hashCode() ^ (-798451120)) {
                                        case -2137292757:
                                            str12 = "ۧۦۧۛۥۨۘۨ۬ۙۜۤۦۡ۬ۢۢ۬ۥۘۙۙۘۘۨۘ۫ۡ۠ۦۨۡۘ";
                                            break;
                                        case 1604747201:
                                            str12 = "ۤۙۡۘۦۧۙۦۡۖۛ۠ۛۙۗۥۘۥۚۥۧۧ۟۬ۥۨۘۙۧۦ۫ۢۙۚۜ۫ۢۡۛۥ۫ۗۚ۠ۘۙ۟ۨۨۖۘ";
                                            break;
                                        case 1826304778:
                                            str13 = b7.OooO0Oo().OooO0OO == 3 ? "ۖۚۚۜۡۥۜ۫۬ۙۘۗۖۖۡۤۡۦۘ۬۫ۨۜۢۡۨۜۦۘۗۙۦۘۙۙۜۥۙۨۖۡۛۜۛۗۧۦۥۦۖۧۖۦۚۨۗۘۘ" : "ۦ۫ۧۖ۬ۡۦۨۚۜۚۦۘۤۨۘۤۙۦ۫ۥۡۘۡۙۘۘۥ۫۬ۦۗۖۘۛۜۚ۟۬۫ۙۧۥۘۗ۫۟";
                                            break;
                                        case 2062480769:
                                            str13 = "ۙۥۤۡۥۜۗۙ۫۟ۙۜۤۛۗۤۗۦۢ۫۟۠ۖ۫ۦۗۨۢۡ۫۠ۘۘۘۨۖۧ۟ۗۛۦ۠ۗ";
                                            break;
                                    }
                                }
                                break;
                            case -1378734965:
                                str12 = "۠ۡ۟ۢۢ۬ۙۤ۫۠۟ۙۡ۟ۚۥ۬ۙۘ۫ۚۡۢۧۚۦۘۢۗۘۘ";
                                break;
                            case -231733723:
                                str = "ۢۛۦ۬ۖ۠ۜۢۗ۫ۘۗۤۛۜۘ۟ۤۗ۟ۘۜۘۧۖۢۚ۠ۦ۬ۚۘۘۖۛۖۙ۠ۢۡ۟۫ۚۢۦۘۢ۬ۚۚۚۦ۠ۜۖۦۖۧ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        StringBuilder sb = null;
        t6 t6Var = null;
        t6 t6Var2 = null;
        t6 t6Var3 = null;
        StringBuilder sb2 = null;
        StringBuilder sb3 = null;
        s6 s6Var = null;
        Dialog dialog = null;
        String str = "ۥ۟ۥۖۧۢ۬ۖۡۚ۟ۦۘ۬ۥۖۡۧۘۘۜۖ۫ۡۚۧۨۤۖ۟ۥ۠ۜۗۛۤۧۘۘ۫ۧۨۗۡۤ";
        while (true) {
            switch ((((str.hashCode() ^ 975) ^ 171) ^ 574) ^ 947275162) {
                case -2114034307:
                    str = "ۙۘۙۥۛۦۥۨ۬ۖۥۢۜۙۧۢۗۢ۟۟۫ۤۧ۬ۘۛۦۘۧۢۖۘۤ۬ۤۢۨۥۘ";
                    dialog = t6Var3;
                    continue;
                case -2093879746:
                    sb.append("floatview_linearlayout_setting ---- ");
                    str = "ۥ۟ۜۥۢۨۛۦۨۢ۠ۡۡ۬ۥۘ۠ۨۦۥۢۗۙۚۜۖۜۢۡۘۚ۫۫ۥۖۥ";
                    continue;
                case -2091999024:
                case -1126591270:
                case -681503534:
                case -650724919:
                case -397933243:
                case 1035847724:
                    str = "۫ۙۢ۠ۙۧۘۧۘۢ۬ۡۘۨۨۘۘ۟۟ۙۢۦۤۜۖۧ۟ۤۦۘۢ۟ۜۘۖۢۢ۠ۨۢۥۧۗۦۨۘۘ";
                    continue;
                case -1992183850:
                    sb3.append(b7.OooO0Oo().OooO0OO);
                    str = "ۧۖۜۘ۬۬ۜۘۙۢۥ۟ۜۚ۠ۙ۠ۡۗۗۛۨۘۧۡۖۘۤۨۜۗۜۙ۫ۦۙۜ۬ۥۛۖۥ۫ۛۖۢۡۘۦۖۦ";
                    continue;
                case -1988012738:
                    OoooOo0();
                    str = "ۡۢۚ۟ۢۖۘۦۛۘۘ۟ۘ۠ۗ۠ۨۥۡۥ۬۟ۖۨۘ۫ۙ۫ۧ۬ۨۖۡۢۢۜۢۘۧۘۨۜ۫ۖۙۘۦۛۜ";
                    continue;
                case -1679279729:
                    this.o00o0O = new s6(getContext());
                    str = "ۥۖۧۘۧۡۘۘۖ۠ۛ۫ۡۡۖۨۘۥۗۜۘۤۨ۬ۨۤۨ۫ۗۜۧۘۥۧۦۚۤۘۘ۟ۤ۟ۥۡۦۘۨۧۦۧۥۥ";
                    continue;
                case -1597352079:
                    sb3.toString();
                    str = "ۡۨۥ۬۟ۡۘۛۛۡۘۧۨۥۘۚ۠ۥۘۥ۫ۗۡۦ۫ۢۥۡۘۜۜۧۗۗۛۢۚۧ۫۫ۢۙۢۢۘۦۡۙۙۦۧۗۥۘۨۛۥۘ۫ۨ";
                    continue;
                case -1583356447:
                    switch (view.getId()) {
                        case R.id.floatview_linearlayout_exit /* 2131296940 */:
                            str = "ۨۧۜۘ۬ۚۙۨ۬ۚۛۨۖۘۢ۬ۖۘۧۛ۟۬۬ۛۤۚۜۖ۠ۤ۫ۨۗۖۨۙۨ۠۬ۗۘۦ۬ۙۙۥۦۖۘۤۨۡ۠ۜۢۜۚۘۘ";
                            break;
                        case R.id.floatview_linearlayout_info /* 2131296941 */:
                            str = "ۤۦۜۚ۟ۤۚۜۦۢ۬ۗۜۘۘۢۡۘۜ۬ۧۡۨۘۘۨۢۛۥۙۖۚۤۦۙ۬ۗۘۤۦ۟ۢۜۛۨ۫ۧ";
                            break;
                        case R.id.floatview_linearlayout_run /* 2131296942 */:
                            str = "ۦ۬ۥۧۘۖۡۢۗ۠ۘۘ۬ۛۧۜۡۤۘ۠ۗۤۘۜۙۦۥۖۨ۬۠۬ۚۤۚۛۙۖۨۘۢۡ۟ۡۦۥۘ۫ۡۜۘۨۨۘۘۚ۬ۧ";
                            break;
                        case R.id.floatview_linearlayout_setting /* 2131296943 */:
                            str = "ۜۧۨۘۨۘۙۨۛۥۚۦۢۜۙۖۖۥۛۡۘۛۘۧۘۥ۟ۙ۠۫۟۬۠ۛۗۨ۬۬ۛۗۡۘۗۚۘۘ۫ۛۛۦۦۖۘۥۗ۫";
                            continue;
                        default:
                            str = "ۙۖ۫ۘ۟۬ۗۥۥۘۥۙۨۘۥۤۥۘۡ۟ۜۛۥۤ۠ۡۜ۟۠ۙ۬ۦۗۡۦۛۧۛۦۧۨۘۘۗۛۜ";
                            break;
                    }
                    break;
                case -1475566431:
                    t6Var2 = new t6(getContext());
                    str = "ۦۨۜۘۚۖۨۤۗۖۘۤۦۙۜۙۛۥۙۤۜۜۧۤۨۘۤ۬ۦۢۧۖۘۢۘۨۘۗۢۖۘۙۛ۟ۖۧ۬";
                    continue;
                case -1309465171:
                    this.o000000o.start();
                    str = "۟ۥۦۤۡ۫۠ۥۨۤ۫ۘ۬ۤ۫ۘۤۖۧۤ۬ۦۤ۫ۙۛۡۘۖۗۦۘ";
                    continue;
                case -1156576683:
                    sb2.append(b7.OooO0Oo().OooO0OO);
                    str = "ۨۛۖۦۨۛ۟ۢۗۤۖ۟ۙۜۚ۬۟ۘۘۦۙۨ۫ۚۧ۫ۜۙ۫۫۬ۦۡۨۖ۟۠ۙۜۦۘۥ۠ۧۛۛۨۘۤۙۡۘ۬ۤۘۘۚۙ۬";
                    continue;
                case -1098322593:
                    break;
                case -1047977971:
                    t6Var3 = this.o00Ooo;
                    str = "ۚۙۖۘۘۥۧۦ۬ۘۘۡۦۘۖۧ۠ۘۖۨۘۚۗ۬ۥ۠ۘۘۛۨۦ۠ۥۘۘ";
                    continue;
                case -1034337285:
                    sb = new StringBuilder();
                    str = "ۗۨۘۘۗۥۘ۟ۙۘۦ۟ۢ۫ۙۗۜۤۢۗۤ۠ۙۡۡۘۥۘۘۚۚۨۖ۬ۘۘۖ۫ۥۘ";
                    continue;
                case -963716643:
                    String str2 = "۬۠ۢۖ۫ۥۘۗۧۜۡۡۧ۫ۙۖۘۤۛۥ۫ۤۦۘۗ۬۠ۛۜۨۛۗۧ۫۠۠ۤۦ۟ۙ۫۟ۜۤۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 886155801) {
                            case -1833996144:
                                str = "ۗۢۨۘۧۢ۫ۜۡۘ۬ۨۦۙۥۥۘۛۙۚۛۡ۬ۗ۟ۗۜۤۘ۬۟ۘ";
                                continue;
                                continue;
                            case -627185996:
                                str2 = "ۥ۟ۥۘۨۜۡۘۜۚۨۘۚۖۦۡۖۜۧۦۗۚۗۥۦ۫ۢۙۤ۠ۨۡۙۚۥۖۤۢۖۡۛ۟۠ۦۘ";
                                break;
                            case 276851926:
                                str = "ۧ۫ۥۧۖۨۙۚۗۢۙۖۢ۠ۜ۠ۨۡۘۤۗۜۘ۬ۢۗۤۢۚۛۤۤۚۧۘۜۜۧ۠ۦۖۘ۟ۛۖ";
                                continue;
                            case 1691886583:
                                String str3 = "ۛۡۡ۫ۦۥۘۙۨۜ۟۬ۙۨۦۘۜۙ۠ۗ۠ۨۘۛۨ۫۫ۧۜۘۧۢۚ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1795420703)) {
                                        case -1494002484:
                                            str2 = "ۤۖۤۨۖۗۥۜۢۜ۠ۙ۠ۙۨۗۥۘۛ۬ۜۗۖۦۘۖۖۛۖۛۧۤ۟ۥۜۦۚ";
                                            break;
                                        case 208410802:
                                            str2 = "ۘۢۚ۬۬ۥۘ۠ۤۙۚۖۘۥۨ۠ۙ۫ۙ۬۠ۨۘ۫ۢۨۘۛۙۙۥۖۢۦ۟ۦ۠۬۬ۥۗۤۧۦ";
                                            break;
                                        case 1048050578:
                                            str3 = b7.OooO0Oo().OooO0OO == 3 ? "ۛۡ۠ۚۡۚ۫ۙۦۘۜۙۨۘۙ۫ۖۡۚۢۤۜۘۙۘۥۖۢۜۤ۫ۚۘۜۘۥ۬ۦۢۧۢۛۢ۬ۖۨۤۚۙ۠" : "ۚۧۚۤۨۘۧۢۘۘۦۡۛۛۡۧۘۧۥۢۖۢ۟ۜۜۙۦۜۖۦۗ۠ۨۧۡۘ۫۟ۡ";
                                            break;
                                        case 1163720887:
                                            str3 = "ۘۦ۫ۗۖۥۘ۫ۥۘۖۧۗۜۢۨۘ۟ۛ۬۬ۙۙۥۨۡۖۚۧۜۜۥۧۨۘۘۤۡۨۖۥ۫ۘۚۤۥۖۗۡۥ۟ۜۚۨۥۜ۠";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -819895682:
                    t6Var = this.o00Ooo;
                    str = "ۧۨۦOۙ۬ۥۙۚۦۧۤۧ۫ۜۦۘۙۧۡ۫۠ۙۤ۠ۦۘۘۚ";
                    continue;
                case -802301799:
                    s6Var = this.o00o0O;
                    str = "ۨ۬ۧ۟ۘۜۘۤۙۥۦۡۥۘۡۜۧۗۡۖ۟۫۫۫ۦۧۘۛۦۨۘۖ۟ۧۗۧ۟ۢۥ۫";
                    continue;
                case -781374863:
                    String str4 = "ۚۨۧۥۘۥۗۗ۬ۗ۟ۨۗۘۦۘۛۘۙۖۢۨۤۖۥۛۙۗۚۛۘۖۖۥۘۦۖۥۧ۫ۢ۫ۢ۠۟ۧۗۨ۠ۘۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1356873689)) {
                            case -2053741621:
                                str4 = "ۤ۫ۙ۟ۡ۟۠ۖۨ۫ۛۨۘۧۚۜۘۘۜۡۘۧۧۨۘۡۡۘۜ۬۫ۗۗ۟ۢ۬ۤۖ۫ۚۧۖۛۘۢۡۥۚۨۗۜ۟ۙۦ۫ۛۢۜۘ";
                                break;
                            case -1947244030:
                                str = "ۗ۫ۛۖ۠ۦۘۘۘۘۘۖۢۜۨۢ۫ۦ۟ۥۘۜۤۖۘۢۙ۫ۧۤۨۘ۬۬ۤۨۘۧۘ۫ۨ";
                                continue;
                            case 461044878:
                                str = "ۗۥۧۧۘۘۘۜۧۥۘۨۖۥۢ۟ۖۘۛۖ۬ۢ۫۬ۖۨۢۧ۠ۜۘۘۜۥۘ۬ۤۧۦۘۘۘۡ۠ۖۘۤۜ۟";
                                continue;
                                continue;
                            case 2086995596:
                                String str5 = "۫ۤۨ۫ۤۜۡۦۜۖۙۜۚۦۚۖۛ۫ۗۛۛۥۥۘۘۛۛۨۘۧۗۤۡۧۦۧ۠ۥۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 378801232) {
                                        case -771971041:
                                            str5 = "ۚۡۥۘۛۜۡۘۘۧۘ۠۠ۙۖۡۜۦ۬ۖۚۧۘۘۥۡۙۡۤۧۚۢ۫ۚۚۜۘۛ۬ۡۘۚۨۛۘۧۖۘۗ۫ۜۘ۠ۢۥۥۥ۬ۛۦۗ";
                                            break;
                                        case 365069537:
                                            str5 = t6Var == null ? "ۖ۠ۡۚ۟ۘۘۧۢۡۢۢۛ۫ۧۦۘۡۥۦۘۚۤۜۘۛ۠ۘۘۜۜ۫۫۟ۢۤۡۨۘ۠۠ۘۘ۠ۗۥۥۤۦۘ" : "ۢۨۖۘۨۜۘۡۨ۠۬ۖۥۘۤۜۡ۠ۙۦۡۡۧۡۖۦ۫ۙ۬۠ۤۙ";
                                            break;
                                        case 1291582391:
                                            str4 = "ۤۗۥۘۗۡۙۚۡ۫ۧۙۧۜۚۤۖۘۘۘۡۙۨ۫۫ۜ۟ۡۧۘۡۙۚۥۘ۠۟ۚ۟ۛۡۤۧۥۜۘ";
                                            break;
                                        case 1317815791:
                                            str4 = "ۗۡۥۤۦۨۘۚۨۢ۠ۖۜۤۥۛ۫ۢۖۘۡۡ۫ۡۚۡۨۡۤۧۛۗۜۡۦۛۨۚۙۛ۟۫ۦۖۘۘ۬ۦۦ۠ۤۢۢ۠ۖۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -571492156:
                    sb3 = new StringBuilder();
                    str = "۟ۘۥ۠ۜۛۖ۬۬ۧۚۥۘۧۡ۫ۙۢۦۘۚۗۤۙۗۥ۬ۘۦۢۘۘۛۦۤۥۘۜ";
                    continue;
                case -487188705:
                    String str6 = "ۘۥۧ۟ۧۦۘۢۨۜۘۖۗۢ۠ۥ۟ۦ۬ۡۙۧۨۘۖ۠۠۫ۨۧۛ۟۬ۧۙۗۨۢۖۘ۠ۨۘۘۘۨ";
                    while (true) {
                        switch (str6.hashCode() ^ 255766343) {
                            case -557658018:
                                str = "۫ۦ۫۫۟ۢۡۧۘۡۛ۠۫ۘۘۢ۟ۘۚۚ۫ۢۚۨۨ۫۫ۤۙ۠";
                                continue;
                                continue;
                            case -135848978:
                                str6 = "۫ۦۥۘ۬۠ۛ۫ۗۢۨ۟ۢۦۤۡۘۙۤۘ۟۟ۖۡۥۗۧۥۙۘۛۨ";
                                break;
                            case -13578154:
                                str = "ۗۤۙۤۢۨۥۦۖ۟ۡۛۡۤۢۘ۫۫ۗۤۘۡۦۘۦۡۨۘۙۗۖۨۦۨۘۧ۠ۖ۠ۖۡۘۧۚ۬ۘۖۦۘۛۡۘ";
                                continue;
                            case 2141088200:
                                String str7 = "۫۟۬ۚۛ۬۬۟ۖۘۧۥۘۢۖۖۘۥۨۛۛۨۜۚ۠ۚۜۜۘۘۜۙۡۘۡۘۤۦۛۛۡۛۥۥۚ";
                                while (true) {
                                    switch (str7.hashCode() ^ 72607197) {
                                        case -1408796593:
                                            str7 = "ۢۢۜۘۙۘۧۚۛۖۘۨۨۜۘۘۘۨۘۜۜۧ۬ۥۦۨۛۘۤۘۘۤۨۖ";
                                            break;
                                        case -749913277:
                                            str7 = System.currentTimeMillis() - o0000OOo < 1000 ? "ۡۥۧۨۤۧۧۜۚ۟ۚۛۘۚۡۖۖۙۛۘۧۛ۫ۦ۠۫ۤۤۦ" : "ۖۛۡۘۡۧۜۚۜۧۘۖۗۤۘۖۜۢۛۦ۟ۗ۠ۡ۬ۦۘۡ۬ۦۢۜۖۘۡۡۜۘۨ۬۬ۙ۬ۦۖۚۖ";
                                            break;
                                        case -347631543:
                                            str6 = "ۦۙۖۗۥ۠ۧۥۖۜۧۜۘۜۤۚ۬ۢۘۘۚۨۡۜ۬ۨۘۛۖۙ۟ۦۥۘۛ۟ۥۡ۬ۤۖۤۜۘۜۢۢ۫ۗ۬ۦۗ۬ۢۡۧۙۦۜۘ";
                                            break;
                                        case 1438491183:
                                            str6 = "ۧۦ۟ۖۘۖۘۧۚۖ۫ۡۧۢۡۦۘۥۙۥۘۖۢۨۛۛۖ۬ۜۨۤ۟ۦۘ۠ۨ۠ۤۥۜۙۚۧۧۥۜۚۡ۟ۤۛۖۘۙۗۘۦۘ۠";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -441646243:
                case 949764187:
                case 1913138096:
                    return;
                case -426530794:
                    String str8 = "ۛۥۡۘ۬ۦ۫۬۟ۚۦۥۢۙۦ۟ۖۖۘۙۚ۠۠ۖۜ۬ۤۘۖۨۨۨۗۦۘ۫ۡۚ۟ۜۘ۫ۛۨۚۙۥۧۘۙۡ۠ۧۤ";
                    while (true) {
                        switch (str8.hashCode() ^ (-1166238238)) {
                            case -1129570285:
                                str8 = "ۨۥۦ۟ۡۖۘۜۚۦۘۨ۟۠ۧ۫ۖۘۗۜۖ۫۟ۨۘۤۨۦ۟ۧۨۘۥۜۡ۟ۨۡۘۦۘۡ۫ۨۤۚ۬ۛۦۙۜۖۤ۠";
                                break;
                            case 314497733:
                                str = "ۚۥ۟ۛۥۧۘۙۨۦۤۧۨۘۖۜۧۘ۫ۧۙۜۖۥ۫ۙۖ۟۬ۤ۫ۦۘۙۚۛ۫ۖۖ";
                                continue;
                            case 671687853:
                                String str9 = "ۤۦۨ۠ۧۘۘۨۛۚۜۥۥۤ۟ۘۜۤۖۘۗۦۚۦۦۧ۫۫۫ۘۛۗ۫ۦۚۛۡۡۘۙۚۦۘۢۙ۠ۢۡۢ۟ۜۢۧۥۖۘۥ۟ۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-971901748)) {
                                        case -1784446220:
                                            str8 = "ۧۢ۫ۡۥۜۘۖ۫ۧۚ۠ۘۚۥ۟ۡۗۥۡۘۙۥۤۥۘ۫ۧۛۙۥۧۦۙۨ۬۠ۡۨ۬ۖ۟ۧ۟";
                                            break;
                                        case -908543660:
                                            str9 = b7.OooO0Oo().OooO0OO == 4 ? "ۤۧۜۘۗ۟ۘۘۖۛۗۘۙ۬ۚۤ۟ۥ۟ۘۛ۫۠ۚۚ۠۠۬ۢۧۨۡۘ" : "ۖ۫ۡۘۥ۠ۦۘۨۛۨۚ۫ۢ۠ۥۖۘۙۖۜۨۥۨۖۖۧۥۨۢۘۦۖ۬ۘۢۖۖۡۘ۬ۡ۠۬ۥۤۧ۠ۚۗۧۤ";
                                            break;
                                        case -215088711:
                                            str9 = "ۦۢۚ۠۠ۡۘ۟ۜۗۨۧۦۧ۟ۡۢۘۧۤۘۧۢۘۤۦۦۤ۟ۚ۬ۢ۫۠ۢۘۗ";
                                            break;
                                        case 830297552:
                                            str8 = "ۦۗۙۖۖ۠ۘۚۡۘۛۙۡۘ۬ۡۡ۟ۡ۫ۚۚۡۤۦۢۨۡۥۘۡۤ۠ۛۧۘۜۚۘۘۦۖۜ۠۫ۖۘۗۗۛۥۨۡۘ۠ۢۦۚۛ۟";
                                            break;
                                    }
                                }
                                break;
                            case 1848737664:
                                str = "ۘۛۨۜۦ۬۫ۦ۠ۜۙۥۖۥۧۖۦۘ۫ۥۜۘۤۙۖۘۨۥۦۘۥ۠ۡۘ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -349814373:
                    t6Var.OooOOO0(1, true);
                    str = "ۛۛۗۦۗۚۧۘۨۘ۟ۦۘۧۤ۫ۚۡۧۘۘۨۡ۫ۖۘۘۜۛۦۘۘۡۛ";
                    continue;
                case -299427519:
                    i7.OooO().OooOoo();
                    str = "ۨۧۨۘۦۜۖۘۨۥۨۜ۟ۛۙۦۘۙۚ۬ۗۨۘۘۙۜۖۘۚۚ۟۫ۥۘ";
                    continue;
                case -296359278:
                    OoooOOO();
                    str = "ۧۘۡۘۤ۟ۜ۠ۙۢ۟ۦۛۧۗۢۚ۫ۨۘۚۥۨۥ۠ۚ۫ۢۘۘۜۜۘۚ۫ۛۤۚۧ۠ۙۖۘ۬ۛ";
                    continue;
                case -276603812:
                    dialog.show();
                    str = "۫ۤ۠ۢ۬۫۫ۗۘۡۤۥۘۨ۬ۥۡۤۜۘ۟ۤۘۘ۠ۤۧ۠ۚۦۘۨۢۨۘۚۛ۬ۧۧۗ۬ۚۨ۠۠";
                    continue;
                case -128355512:
                    a5.OooO0O0(getContext(), "runScriptOperate -->\u3000停止引擎");
                    str = "ۙۗۙۥۛۦۘۜۨۥۘۦۨۜۤۥۙۢ۠ۜۘۧۘۧ۠ۗ۫ۡۘۨۛۙۙ۟ۨۨۤ۫۟ۡۤۧۡۧۧ";
                    continue;
                case 148905415:
                    i7.OooO().OooOoOO();
                    str = "ۢۧۖۘ۬ۤۙۚۖۘ۠۟ۢۦ۫ۗۡۢۨۘ۟ۜۘۢۘۢۙۧۜۘۛۘ۠ۜۨۗ۟ۦۦ";
                    continue;
                case 188081644:
                    String str10 = "ۛۤۖۘۜۛۖۘۙۗ۬ۙ۬ۦۘۙۛۗۤۥۘ۟۬ۡۘۦۜ۟۠ۘۥۘۚ۬ۖۘۦ۫۠ۛ۫ۘۘ";
                    while (true) {
                        switch (str10.hashCode() ^ (-901230148)) {
                            case -1058114553:
                                str = "ۡۡۚۡۢۜۘۥۜ۟ۘۤۖۨ۫ۜۘۚۡۘۦۛۘۘ۟ۛ۬۟ۜۨۘۖ۫ۡ";
                                continue;
                                continue;
                            case -736393434:
                                str10 = "ۦۜ۟ۧۨ۬ۙۗۙۘۜ۟۠۫ۖۨۚۘ۬ۧۨۘۤۘۘۘۚ۟ۡۘ۠ۗۧۧۥۨۘۡۗۙ";
                                break;
                            case -374387039:
                                str = "ۚ۫ۤۦۗۗۘ۟ۘۘ۟ۤۘۦۙۖۖ۬ۙۥ۠۫ۛۨۚۖۢۙۨۜۡۧۚۖۘۛۗ۫";
                                continue;
                            case 1999455276:
                                String str11 = "۫۬ۘ۫ۤ۬۟ۗۖۘۢۤ۬ۚۡۡۘ۠۫ۥۘۦۢۨۦۦۨۘۥۧۖۘۧۛۚۗۛۜۨۡۛ";
                                while (true) {
                                    switch (str11.hashCode() ^ 1676968562) {
                                        case -1754372617:
                                            str11 = "۫ۛۢۙۗۡ۫ۥۢۡۥ۬ۧ۠ۡۘۧۛۘۡۖۘۨۛۛۛۨۛۡۦۘۘ۫ۨۛۥۖۧۘۘۥ۠ۚ۠ۗ۫ۢۚۤ";
                                            break;
                                        case -1025034010:
                                            str10 = "ۖ۬ۤۥۙ۫ۚۘۚ۫ۗۤۘۦۨۜۙۥۘۛۥۦۘۨۛۜۘۦۥۜۘۥۤ۫ۤۙۢۧۗۗۘۡۘۡۧ";
                                            break;
                                        case -883544366:
                                            str11 = b7.OooO0Oo().OooO0OO == 4 ? "ۖۦۡۘ۬ۧۢ۠۬ۘۘۖ۠ۘۗۢۨ۟ۗۙۚۤۖۜۨۘ۠ۤۢۦ۬ۤۖ۫ۡۜۦۖۘۥۥۦۚۥۡ۬ۡۘۥۥۖ۠ۙ۬ۨ۟ۚ" : "۟ۜۜۘۢۜۙۛۢ۬۠ۦۘۦۡۜۚ۠۫ۡۥۤۜۜ۠ۘۙۡۘۦ۬۫ۗۜۦۥۙۖ۫ۗۚ۟ۡۡۘۗۜۜ۫ۚۜ";
                                            break;
                                        case -502883340:
                                            str10 = "ۙۛ۬ۨۗ۟ۚۘۘۧۗۥۧۚۥۦۛۜۘۨ۟ۦۢۦۘۚۙۥۜۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 208172331:
                    String str12 = "۠۫ۡۤۚ۫ۥ۬ۡۗۧ۟ۥ۠ۡۘۘ۫۠۟۫۫ۘ۠ۖۘ۟ۛۖ۬۬ۖ۬ۨۜۥۡ۟";
                    while (true) {
                        switch (str12.hashCode() ^ 1175288349) {
                            case -424997461:
                                str12 = "ۙۗۡ۫ۨۢ۬ۥ۬ۡ۟ۥ۠۟۟ۜۛ۫۟۫ۦۤۗۧۤۧۨ۠ۛۘۥ۟۬ۨۜۘ";
                                break;
                            case 280520860:
                                String str13 = "ۧۖۙۢۡ۠ۚ۬ۛۥۜۨۛۤۜۘۛ۠۠ۢۚۖۖ۫۠۬ۡۦۘۢۙ۫";
                                while (true) {
                                    switch (str13.hashCode() ^ (-605740591)) {
                                        case -2125713671:
                                            str12 = "ۛۨۘۨۖۨۛۙۖۜۛۨۘۡۚۖۘۤۨ۠ۖ۬ۘۘۙۘ۫ۦۥ۬ۘۡۢۖۨۤۤۤۖ۠۬ۨ۠ۚ۫ۤۤۨۨۨ";
                                            break;
                                        case -987742101:
                                            str12 = "ۢۧۜۨۨۡۛ۬ۘۘۛۙۨۘۨۗۤۘۢۘۘۧۜۗۦۢۗۚۖۥۘۙۚ۬";
                                            break;
                                        case 226504440:
                                            str13 = b7.OooO0Oo().OooO0OO != 2 ? "ۙۗۜۧ۠ۤۥۦۘ۠ۖۡۘۦ۟ۗۦۘ۠۟ۘ۫۬ۘۜۤۧۨۥۗۖۘۜۙۜۘۜ۫ۜۢۘۧۖ۟ۘۘ" : "۬ۡۘۖۨۥۖۧۖۘۚ۬ۜۧۥۘۜ۬۬۬۟ۧۦۗ۠۠ۥۜۨۥ۫۫۟۟ۤۘۦۜۤۧ۟ۜ";
                                            break;
                                        case 256678283:
                                            str13 = "۠ۚۚ۬ۘۧ۟ۨۜۦۙۧۘۖۚۜۦۧۚ۠ۥۛۨۘۡۚۥ۠ۚۜۘۙۤ۟ۛ۟ۧ";
                                            break;
                                    }
                                }
                                break;
                            case 1451084208:
                                break;
                            case 1611619323:
                                str = "ۡۤۥۨ۠ۨۢۧۘۙۚۦۘۤ۠ۦ۬ۘۘۘ۬ۛۘۦۘۜۛۧۗۦۨۘۛۜۥ۟۠ۜۘ۠ۙۤ۫ۥۙ۠۠ۙ۟ۖۢۨۨ۟ۥۥۘ";
                                break;
                        }
                    }
                    break;
                case 375307813:
                    sb2.append("floatview_linearlayout_run ---- ");
                    str = "۫ۤۘۘۗۥۛۛۖۘۘۖ۬ۤ۠۠ۚۙۢۤ۫ۛۡۨۧۙۧۛۨۜۘۘۛۖۜ۟۫ۥۨۢۖۘ۬۬ۗۜ۫ۥۘۧۨ";
                    continue;
                case 409819102:
                    String str14 = "۬ۧۨۘۥ۟ۢ۫۟ۦۘ۟ۘۛۨ۫ۘ۟۠۟ۦۨۦۜۙ۬ۘ۫ۗۘ۟ۦۘۨ۫ۜۗ۫ۜۘۤۤۖۘۜۧۜ۬ۚۛۘۘۛ";
                    while (true) {
                        switch (str14.hashCode() ^ 993704196) {
                            case -623535046:
                                String str15 = "۬ۘۛۜۜ۫ۖۜۖ۠ۦۜۘۡۙۦۘ۬ۢۘۘ۫ۨۘۘۧۧ۟ۦ۠ۛۖۜۖۦۛۙۙ۠ۖ۬ۧۢ۠ۤۙۛۙۢ۬ۘۘ";
                                while (true) {
                                    switch (str15.hashCode() ^ 963842937) {
                                        case -1289419550:
                                            str15 = "ۢۥ۟ۥۨۦۘۡۙ۫ۗ۠۟ۚ۠ۡۘۢۤۡ۠ۤۙ۫ۜۗۤۥۘۙۘۧ۠ۙۜۘۖ۟ۢۖ۟ۦۘۨۙۥ۬ۗۡۘۤۨۘۚۛۜۘۡۢۖ";
                                            break;
                                        case -520073454:
                                            str14 = "ۡۤۘۛۚۦۧۙۤۡۢۖۘ۫ۡۗ۬۬ۦ۫ۜ۫ۖۜۦۦۜۜۘۘۜۤۤ۫ۖۡۧۘۘۗۨۛ۟ۙۥۧ۠ۜۘۘۙۙ۫ۙۘۘۚۗ۠";
                                            break;
                                        case -266168635:
                                            str15 = b7.OooO0Oo().OooO0OO != 3 ? "ۜۖۡۘۛۘۘۨۘۢ۬ۙ۠ۚ۠۬ۦۤۛۦۜۨۖۡۘۙۙۘۘ۫ۜۡ۫ۨۡۘۚ۟ۢۨۢۙۧ۫ۨۡۘۜۧۖۜۡۚۘۚۙ" : "۫ۙۖۘ۬ۛۘۜۚۚ۬ۖ۠ۛۘۛۥۘ۫ۨۖۗۘۚۢۤۜۛۖۖۗۗ۫ۗ۠ۚۤۢۥۘۗۗۚۙۥۥۗۚۥ";
                                            break;
                                        case 1062141140:
                                            str14 = "۫ۢ۬۫ۥۥۖۖۤ۠۬ۧ۠ۘۡۘۘۢۜۘۛۙۦۤۖۛۖۥۡۢۨۘۘۦۜۢۚۧۗۦۡۛۖ۟ۦۚۙۡۘ۟ۡۛۧۡۗۚ۠ۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 468708582:
                                break;
                            case 756033842:
                                str = "ۗۖۧۨ۬ۧۗ۫ۘۗۨۥۘۜۙ۫ۤۤۤۗ۫۟ۤۛۗۗۙۖۜ۟ۤ۠ۗۚۜۨۖۘ۬ۥۥ۠ۙۦۘ";
                                break;
                            case 1953037740:
                                str14 = "ۢۚۨ۠ۖۡۘۥۖۙۢۢۛۜ۠ۗۖ۫ۨۘۛۢ۟ۨۛۙ۟ۖۡۤۦۘ۠۠۫ۤۡۤۘۙۘۘۨۡۥۢۘۜۥ۠ۖۘ";
                                break;
                        }
                    }
                    break;
                case 439656622:
                    sb2.toString();
                    str = "ۡ۟۠ۘۜ۠۫ۖۤۡ۫ۛۡۨۖۘۜۨۜۙۡۚۗۥۨ۫ۡۘۚۥۖۧۖۖۘۢ۠ۡ";
                    continue;
                case 733526713:
                    t6Var2.OooooOo = this.Ooooo00;
                    str = "ۥۖۧۗۤۗۗۢۨۤۤۥۘۡ۫۟ۙۥۢ۬ۛۢۛۖۘۚۥۜۘۤۘۦۘ۟ۤۜۘ۟ۛۨ";
                    continue;
                case 807230201:
                    sb.toString();
                    str = "۟ۤۨۨۨۥۘ۟ۡۧ۫ۨۖ۠ۡ۟ۨۧۗ۟ۧۛۢۘۖ۬ۖۢۦ۬ۥ۫۠ۦۘۡۚۨۘۚۨۘۥۜۦۘۥۛۥۧ۟ۜۢۗۢۖ۬ۡ";
                    continue;
                case 861742491:
                    sb3.append("ElfinFloatView run SCRIPT_STATE_PAUSE_BY_HEART_BEAT_VERIFI_ERR ---- ");
                    str = "ۥ۬ۦۘۦ۬ۨۘۨ۬۠۠ۨۛۥۖۦ۬ۙۨۖۚۘۖۧۖۘۗ۠ۡۘۥۢۘۢۙۦۘ۫ۜۙۛ۫ۡۘۥۛۥۘ۠ۢۘ۫ۧۙ";
                    continue;
                case 1029084275:
                    OoooOoO();
                    str = "۫ۙۢ۠ۙۧۘۧۘۢ۬ۡۘۨۨۘۘ۟۟ۙۢۦۤۜۖۧ۟ۤۦۘۢ۟ۜۘۖۢۢ۠ۨۢۥۧۗۦۨۘۘ";
                    continue;
                case 1160365381:
                    str = "ۘۚ۫ۧۤۤۦۡ۠ۥۘۤ۠ۗۦۘۦ۬ۖۛۘۘ۫ۤۜ۫ۗۜۛۜۥۘۜ۫ۢۤ۫ۗ۟ۛۢۖۜۦۘۨۥۨۨۡۜۡ۟ۢ۠۟ۨ";
                    continue;
                case 1265051715:
                    this.o00Ooo = t6Var2;
                    str = "ۘۚ۬۠۟ۦۘۖۚۧۜۗۜۘ۟۫۟ۚۘۨۘۛ۫۟ۗۧۘۘۙۧۗۧۛۙ";
                    continue;
                case 1315954186:
                    o0000OOo = System.currentTimeMillis();
                    str = "ۘۘ۫ۢ۬ۦۛۡۘۘ۬ۥۘۢۨ۬ۛ۠ۨۘۦ۠ۙ۟۫ۡۨۘۚ۫ۗۘۘۚۜۖۘۥۥۤ۟ۢۘ۠۫۟";
                    continue;
                case 1378510841:
                    str = "ۖۥۚ۠ۖۘۗۦۘۨۢۢۦ۟ۨۘۡۗۡۘ۬ۖۦ۟ۜۥۘۤ۠۠۬ۤۤۙۙۖۘۧۢۘۘ";
                    continue;
                case 1511913775:
                    String str16 = "ۛۡ۟ۜۗۛ۟ۨۘۘ۟ۦۧۥۚۤۘۨۘۙۗۢ۬۟ۜۘۡ۫ۘۘۥۗۘ۫ۘۡۘۛ۫۠ۙۥۦۤ۠۫ۘ۫ۤ۠ۙۦ۟۠ۘ۟ۚۖ";
                    while (true) {
                        switch (str16.hashCode() ^ (-54313625)) {
                            case -1266149193:
                                str16 = "ۛۤۧۗۦۦۤۧۖۜۖۤ۬ۛۘۖ۟ۗۛۙ۠ۤۤۧ۠۟ۧ۬ۚ۫ۤۥۗۡۦۤۢۙۥۨۤ";
                                break;
                            case -1156466328:
                                String str17 = "ۥۥۘۘ۫ۤۦۘۨۤۗۚۘۨۗ۟۠ۡۡۘۨۚۘۘۧۙۥۛۙۖۘۛۜۘ";
                                while (true) {
                                    switch (str17.hashCode() ^ 1984921922) {
                                        case -2010105271:
                                            str16 = "ۛۥۚۢۤۘ۟ۘۗۘۥۜۦۘۖۘۚ۟ۚۙۨ۟ۤۚ۬ۘۡۚۙ۠ۢۘ۠ۥ۠ۡۡۘۦۚۙۦ۬ۛۦ۫ۜۘ۬ۡۜ۬ۜۗۨۧۛ";
                                            break;
                                        case -1184950766:
                                            str17 = b7.OooO0Oo().OooO0OO == 2 ? "ۙۡۧۘ۬ۜۜۥۢ۠ۖۛۨۘ۠ۙۛۢۤۘۜ۬ۦۘۤۥۧۘ۠ۛۜۘۗ۫" : "ۖۢۜۘۛۨۡۙۧ۟ۜ۟ۖۤ۟۟۠ۘۜۘ۬ۖۦ۬ۖۛۤۨۡۘۥ۟ۥۘ";
                                            break;
                                        case -550663035:
                                            str16 = "ۢۦۜۘۢۧ۫ۘۙۤ۠ۢۥۛۦۦۘۡۡۘۥۛ۟ۚۦ۫۠ۘۥۘ۟۬ۖۡۡۡۘۛۖۧۘۡ۟ۦۤۙۥۘ";
                                            break;
                                        case 719325370:
                                            str17 = "ۥۘۘۡۤۛ۠ۤ۠ۙۚۥ۬۫ۛۡۧۤ۟۟۠ۨۥۧۘۖۛۗ۬ۤۤ";
                                            break;
                                    }
                                }
                                break;
                            case -805695339:
                                str = "ۢۢۤۜۥۦۨۨۡۘۘۧۨۘۧۡۜۘۖۗۖۘۙ۟ۧۦ۠۠ۡۥ۟ۖۛۡۘۛۚ۬ۗۙۘۘۘۡۨۥۢۙ۫۫ۧۙۦۡۡۗۥۘۦۧ۠";
                                continue;
                            case 853049085:
                                str = "ۦۛ۟ۚۜۡۢ۟۫ۡ۠ۘۘۜۛ۟ۥۢۜۘۖ۠ۖۘ۬ۙۜۘۤۥۧۘ۫۬ۧ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case 1568985015:
                    str = "ۛۛۗۦۗۚۧۘۨۘ۟ۦۘۧۤ۫ۚۡۧۘۘۨۡ۫ۖۘۘۜۛۦۘۘۡۛ";
                    continue;
                case 1582872770:
                    str = "ۗ۠۠ۗ۠ۗۗۨۘ۫ۚۤۨۤۤۨۚۗۥۜۗۛۛۡۘ۟ۗۛۜ۬ۢۢۚ۬ۙۨ۬ۥۡۡۘۤ۠ۘ";
                    continue;
                case 1584561815:
                    str = "ۗ۠۠ۗ۠ۗۗۨۘ۫ۚۤۨۤۤۨۚۗۥۜۗۛۛۡۘ۟ۗۛۜ۬ۢۢۚ۬ۙۨ۬ۥۡۡۘۤ۠ۘ";
                    dialog = s6Var;
                    continue;
                case 1619979684:
                    String str18 = "ۖۖۘۦ۬۫ۜۜۨۚۤۘۘۧ۬ۥۚۧۡۥۖۗۛۧۡۘۥۛ۟ۚۨۢۜۜۘۘۡۨۥۘ";
                    while (true) {
                        switch (str18.hashCode() ^ 450324618) {
                            case -1210470370:
                                str = "ۡۜۘۘۙۧۥۚۚۥۢۢۦۛ۟ۡۤ۠ۧۥۛۘۘ۬۟ۜۘ۫ۧۚۡۨۧۘ۫ۜۢۖۥۘ۠ۧۘۘۙۗۗ۟ۧ۫";
                                continue;
                            case 541045162:
                                str = "ۥۖۧۘۧۡۘۘۖ۠ۛ۫ۡۡۖۨۘۥۗۜۘۤۨ۬ۨۤۨ۫ۗۜۧۘۥۧۦۚۤۘۘ۟ۤ۟ۥۡۦۘۨۧۦۧۥۥ";
                                continue;
                                continue;
                            case 1004207258:
                                str18 = "۟ۨۙۨۙ۠۟ۧ۟ۡ۫ۡۘ۠ۤۡۘ۬۬ۙۥۗۡۦۤ۠ۘۢۢۛۙۨۢۢۨۖ۠ۘۘ۠ۖۡۘۚۧۗ۬ۘۘۙۧۦۘۛۗۖۤۥۘ";
                                break;
                            case 1804235999:
                                String str19 = "ۖۛ۟۟۟۬ۦۢۨۘۖۨۛۥۛۦ۠ۜۤۤۜ۬ۘ۬ۥۘۤ۬ۥۦۨ";
                                while (true) {
                                    switch (str19.hashCode() ^ (-1290170872)) {
                                        case -734375548:
                                            str19 = "ۙۨۨۛۢۤۤۛۨۘۗۢ۠ۙۥۗۦ۠ۥۘۖ۟ۚۜۧۨۘ۬ۡ۠ۢۜ";
                                            break;
                                        case -174321873:
                                            str18 = "ۥۥۦۘۖ۠ۖۘ۫۫ۜ۬ۖۢۧۚ۬ۖۡۙۧۧۜۛۡ۫ۗۤۨۘ۫ۘۦۘ۟ۖ۟ۧۦۥ۠۠ۦۘۡۤۛ۫ۢ۟۠۫ۤۤ۟ۧۦۧۘ";
                                            break;
                                        case -172029649:
                                            str18 = "۬۟ۥ۠ۢ۠۬ۖۥۖۨ۠ۙۘ۟۟ۧۘۖۙۥۖ۠ۜۘۛۗۜۘۡۨۘ۬ۘۨۘۧ۟ۦ۬۠ۤۦۨ۠";
                                            break;
                                        case 726744079:
                                            str19 = this.o00o0O == null ? "ۨۖۘۢۥۚۤۖۨۘۚ۠ۦ۟۠ۗۢ۠ۥۧۘۤۧۛ۫ۙ۠۠ۙۨۘۗ۟ۨۖۤۤ" : "ۦ۫ۦۘ۬ۤۦۙۗۖۘۥ۫ۥۘۗ۫ۡۘ۬۟ۤۗۜۨۢۢۢۥ۠ۖۘۖ۬۬ۨ۫ۙۛۙۗ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1901595713:
                    sb2 = new StringBuilder();
                    str = "ۤۥۥۛۖ۟ۦۙۡۘۨۙۜۖ۬ۨۘۚۜ۬ۥۧۨۤۨۡۘۧۖ۬۠ۢۖۙۡۘۥۧۨۘۤۥۘۗۘۖۘۛ۫۫ۛ۟ۤۥۤۢۖۚۚ";
                    continue;
                case 1970681531:
                    sb.append(b7.OooO0Oo().OooO0OO);
                    str = "ۦۢۘۘۢۗۚۙ۫ۢۖۜۜۧۨ۬ۙ۠ۧۜۛۘۛ۠ۖۘۨ۟ۘ۬ۧۚۜۥ۫ۤۖۖۘۘۥۘ۫ۡۜۘۘۙۡۘۘۡ۬ۙۢۜۜۢۨ";
                    continue;
                case 2034409624:
                    this.o0Oo0oo = false;
                    str = "ۢۥۦۘۗۨۜۘۦۙ۬۬ۚۙۦۡۤ۟ۨۧۘۚ۬ۜۘۨ۠ۨۜۧۧۧۜۘۘۤۚۖ۠ۥۡۘۧ۠ۥۘۙۚ۠ۧ۟۫ۚۘۥۘ۟ۥۘۤۨۗ";
                    continue;
                case 2043777496:
                    i7.OooO().Oooo0o0();
                    str = "ۦۧۜۥۚۛ۬ۤۖۧۜۗۤۡۘۖۘۡۗۖۖۘ۠ۙ۫ۘۧۘۜۘۧۘۦۘ۟ۘۢۗ";
                    continue;
            }
            str = "ۥ۫۠ۨۙۖۘۨۢۘۥۦۜۤۥۙۗۖۘۡۤۚۘ۬ۖ۠ۚۜۘۜۜ۫ۛ۟ۜۘ۟ۧ۬۬ۨۡۧۤۨۘ۟ۢۢۛۢۘۛۖۖۘۚۖ۠";
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        String str = "ۡۚۜۘۦۖۘۘۧۨۗ۠ۦۡ۠ۢۙۤۨۦۘۧ۫ۖۛۚۤ۟ۨ۟ۤۨۡۘ";
        Oooo000 oooo000 = null;
        while (true) {
            switch ((((str.hashCode() ^ 236) ^ 487) ^ 638) ^ (-2040278014)) {
                case -1806369674:
                    String str2 = "ۢۡۛۨۨۜۦۦۧ۬ۖۦۘۙۘۨۜ۟ۜۦۡۖۘ۬ۤۘۡۤ۠۫ۖۥ۫۫ۥۘۙۖۧ۠ۚۤۦۤ";
                    while (true) {
                        switch (str2.hashCode() ^ 104952309) {
                            case -1020551934:
                                str = "ۙۘۚۥۡۤ۬ۧۥۘۖ۫۟ۗۛۘۘۧۨۘۘ۫ۖۛۜۜ۬۠ۨۜۘۨ۟ۧ";
                                continue;
                            case -291705077:
                                String str3 = "۠ۥ۟ۗۗۖۖۢۗۡ۫ۡۘۘۜۖۜۤۨۘۤۜۡۢ۟ۦ۠۠ۦۘۚۦۨ۫ۖۗۚۜ۫";
                                while (true) {
                                    switch (str3.hashCode() ^ 1243262985) {
                                        case -1065126505:
                                            str2 = "ۢ۠ۢۤۖ۫ۗ۟ۙ۟ۖۡۘ۠ۧۛۖ۫ۦۘۥۜۤ۬ۙۡۘۢۧۨۘۛۤۖ";
                                            break;
                                        case -1010964764:
                                            str3 = oooo000 != null ? "ۙۙۦۘۛۧۦۘۙۥۥۧۛۡۘۛۜۦۧ۟۫ۛۛۥۗۥ۫ۜ۫ۧۥۤۛۗۙۘۘۤ۠" : "۟۬ۧۛۖۜ۫۬ۘ۬ۜۥۙۡ۬۬ۖۘۚۙۘۥۖۜۘۤۡۖۘ۠ۜۥۘ۬ۥۗۡۦۘۚۘۥۜۦۢ";
                                            break;
                                        case -510640990:
                                            str2 = "ۛۡۛۥ۫ۨۢۖۜۜ۫۫۟ۢۦۙۢۗۗۘۦۘۘۖۛۚۧۨ۠ۥۨۘۘۡۥۦۖ۟ۗۦۖۡۡۧۘۢۨ۠ۜ۫ۗ۠ۡۜۖۚۥ";
                                            break;
                                        case 841747157:
                                            str3 = "ۦۥۜۦۤۛ۠ۘۜۘۢۙۦۘۛۜۚۘۨ۠ۘۨۢ۟ۖۥۘۜۡۛۖۢۘ";
                                            break;
                                    }
                                }
                                break;
                            case 726588370:
                                str = "ۛۥۙۧۤۜۗ۟ۢۚ۟ۖۘ۫ۗۡۦۦۘۘۤ۫ۜۢ۬ۜ۬ۛۦۙۖۘۘۗۦ۠ۘۨۥۘۖ۬ۤۙۧۦۘ";
                                continue;
                            case 1470213581:
                                str2 = "ۦۘۖ۟ۚ۟ۥۧۙ۟ۙۢۡۡۨۘ۬ۛۚۗۙۙ۠ۡۡۘۥۙۡ۠۫ۦۘۢۜ۟ۤ۫ۨۘ";
                                break;
                        }
                    }
                    break;
                case -1241899764:
                    str = "ۦۚۡۦۖۢ۟۠ۙ۟ۜۥۦۨۦۤۥۘۗۦۨۤۚۢۤۚۥۘ۟ۧ";
                    break;
                case 1043591643:
                    oooo000 = this.o0OO00O;
                    str = "۠۟۬۬۬ۘۘۦ۬ۥ۟ۚۚۜۚۤۙۙۥ۟ۤۜۙۧ۟ۙ۟ۡۘۜ۫ۚ۟ۖۘۘۡ۫ۗۗ۬۟ۗۚۖۘ";
                    break;
                case 1194673003:
                    oooo000.removeCallbacksAndMessages(null);
                    str = "ۛۥۙۧۤۜۗ۟ۢۚ۟ۖۘ۫ۗۡۦۦۘۘۤ۫ۜۢ۬ۜ۬ۛۦۙۖۘۘۗۦ۠ۘۨۥۘۖ۬ۤۙۧۦۘ";
                    break;
                case 1281296890:
                    super.onDetachedFromWindow();
                    str = "ۛۡۨۘۖ۬ۤۨۚۜۘۛۨۖۘۗ۟ۙۚۧۖۘۜۛۚۚۧۦۘۦۨۦۘۧۨۜۘۧ۫ۖۖۖۦۦۘۧۧۡۘۛۤۜۨۛۘۗ۬ۗۚ۬ۗ";
                    break;
                case 1821861349:
                    return;
            }
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        String str = "۬۬ۖۤۚۖۡۨۖۘۨۙۜۥۦۘۘ۫ۧۜۜۦ۟ۥۖۨۤۗۥۘ۫ۙۡ";
        while (true) {
            switch ((((str.hashCode() ^ 892) ^ 466) ^ 145) ^ (-77493824)) {
                case -267397888:
                    return;
                case 44004461:
                    super.onFinishInflate();
                    str = "ۛۢۥۘۦۙۡۛ۫ۦۘۧۦ۬ۧۤۘۘۢۘۛ۬ۙ۫ۚۨۦۘۤ۬ۜۘۢۛۦۨۖۧۧۢۗ";
                    break;
                case 223163739:
                    str = "ۗۛۛۙۦۛ۟ۨۦۦ۠ۥۘۦۤۦۘ۠۟ۡۢۡۥۘۚ۬ۨۘۙۨۗۖۜۛ۟ۚۥۘۢ۬ۧۦ۟۬۠ۛۤۗۨ۫ۧۜۡۗۡۚۙۢۨۘ";
                    break;
            }
        }
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        int msgType = 0;
        String str = "۫۬ۖۘ۫ۦۨۘ۠ۥۦ۟ۛۡۦۧۢۚۦۧۘۗ۬ۨۘۥۡۚ۠ۡۡ۟ۧ۠۫ۖۦۗۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 895) ^ 196) ^ 740) ^ (-1535817046)) {
                case -1468270616:
                    this.o0OO00O.postDelayed(new OooO00o(this), a.f);
                    str = "ۙ۬ۘۘۢۧ۟ۜۖۚۦۙۧ۬ۚۤۚۖۨۛۤۨۖۢۖۖۨۧ۬ۢۡۛ۟ۡۦۨۘۜۛۘۘۖۘۚۖۥۨۗۘ۬ۢۤۥ۫ۜۖ";
                    break;
                case -1307685632:
                    return;
                case -1169500498:
                    String str2 = "ۥ۫ۨۛ۫ۖۘۙۧۦۘۦۨۘ۟ۙۡ۫ۧۙ۠ۛۥۙۚۢۗۡۤۖۖۘ۠ۗۜۘۘۢۛۦۘۛۛۥۚۘۘ۠ۡۡ";
                    while (true) {
                        switch (str2.hashCode() ^ (-959501662)) {
                            case -1837351766:
                                String str3 = "۬۬ۥۘۢ۟ۡ۬ۛۡ۬ۡۜۘۗۡۖۜۦۡۖۛۡۘ۠ۡۛۚۙۦۘ۟۠ۦۘ۠ۧۥۥۤ۬ۤۙۡ۟۫۫ۜۢۡ۠ۙۙ۫ۗۜۙۢۥ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1029299408)) {
                                        case -1961940278:
                                            str2 = "ۧۜۢ۟ۖۖۘۦۤۚۨۦۗ۫۟۫۬ۦۧۛۨۛۛۤۚۨۛۗۧۥۘ";
                                            break;
                                        case -1020730018:
                                            str2 = "ۜۢ۠ۖۛۘ۟ۤۖۘۤۨۦ۬ۧۦ۫ۨۙۘ۬۬ۛۡۥۘۢۛۘۘۚ۟ۛ۬ۦۧۘۥۡ۬۠ۖۙۗ۟ۧ۠ۧۙۛۛۨۘۡۧۡۨۡۜۘ";
                                            break;
                                        case -290562168:
                                            str3 = msgType != 2000 ? "ۡۜۛ۬ۛۘۘۨۙۦۘ۫۫ۡۘۤۤ۟ۚۨۚۨۡۙ۫۫ۘۗۨ۟ۜ۬ۜۗۖۜۖۦۨ۟ۖۘۙۜۖ" : "ۦۗۘۘۘۨۜۘۢۢ۫۠ۥۥۜۜ۬۫ۛۦۘۦۤۦۘۗۚۘۦۘۧۛۘۦۘۛۙۚۡۜۡۘۨۤۡ۬۬ۜۘ";
                                            break;
                                        case 1293165417:
                                            str3 = "ۚۖۥۘ۠ۘۖۨۖۗۙۛ۠ۜ۬ۥۘۧۛۡ۟ۘۖۘۨۦۡۗۖۚۤۖۡۢ۟ۜۦۜۙ";
                                            break;
                                    }
                                }
                                break;
                            case -885605870:
                                str = "ۦۗ۬۬ۥۧۘۢۨۨۡۡۡ۟ۧ۬ۗ۟ۢۗۥۘ۫۠ۙ۫ۜۜ۫ۘۡۛۢۛۤۜۘ۬ۥۧۡ۫ۧ";
                                continue;
                            case 1832601872:
                                str2 = "ۙۤۖۜۢۤ۬۟۬ۧۥ۟ۡ۟ۨۥۢۥۘۤۖ۟ۘۥ۠ۤۛۚۗۤۦۚۧۢۖۡۥۡۙۜ۠";
                                break;
                            case 1837533918:
                                str = "۫ۗۨۨ۟ۧۢۤۜۘۤۗۘۘ۟ۛ۬۠ۘۥۘۨ۫ۤۚۘ۟ۦۙۦۘۙۨۦۘۦۛۦۢ۫ۖۘۡ۠۬۬ۖۢ";
                                continue;
                        }
                    }
                    break;
                case -1091923977:
                case 38112617:
                    str = "ۚۖ۫ۧۥ۟ۨۢۤۦۢۥۘۚ۬ۨۦ۫۟۟ۥۘۢۙۧ۟ۘۘۙۗۜۖۡ۟۫ۛۦۘۘۧۦۘۡ۟ۚۨۦۨۘۘۡۧۘ۫۠ۜۘۛۧۧ";
                    break;
                case 489862445:
                    h7.OooO0o0(null);
                    str = "ۚۖ۫ۧۥ۟ۨۢۤۦۢۥۘۚ۬ۨۦ۫۟۟ۥۘۢۙۧ۟ۘۘۙۗۜۖۡ۟۫ۛۦۘۘۧۦۘۡ۟ۚۨۦۨۘۘۡۧۘ۫۠ۜۘۛۧۧ";
                    break;
                case 537000682:
                    str = "ۜۚ۠ۘۚۥ۠ۧۤ۠ۦ۟ۘۦۦۘۛ۠۟ۜ۠ۨۥۗۥ۠ۘۘۘۤۤۦۘ";
                    break;
                case 1100014563:
                    msgType = msgItem.getMsgType();
                    str = "ۗۡۚۗۙۡۘ۬ۜۛۡۧۜۘۗۥۖۙۤۥۘۨۤۥۘ۬ۡۢۢۖۥۘۤۜۨۘۛۦۘۜۘۘۡۤ۠ۦۢۚۛۜۖۘۘۥۨۘ";
                    break;
                case 1513685462:
                    str = "ۡۘۢۦۢۜۚۛۥ۬ۘ۫ۜۦۘۤ۟ۙۛۤۖۘۙۤۡۘۤ۫ۖۘۘ۠ۚ۠ۢۖۥۤۖ";
                    break;
                case 1953928478:
                    String str4 = "ۥۛۦ۬ۘۜۥۗۚ۬۫ۘۖۡۥۘۜۧۥ۠۟ۡۛۜ۫۫۟ۚ۠ۘۥۚۖۗۢۧۦ۫ۛۙۢۦۡ۬ۢۥۥۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1511379745)) {
                            case -2128747574:
                                str = "ۡۨۦۚۚۢۤۡۨۘ۟ۘۘۦ۟ۥۗۢۦ۫ۨۘۦۗۙۗۚ۬ۜۡ۟";
                                continue;
                            case -1217495791:
                                String str5 = "ۡۜ۠۟ۢ۫ۚۡۗۗۙۤۘۚ۠۬۬ۘۘۢۦۜۘۦۖۧۘۥۘ۬۫ۢۧ۠ۧۡۨۛۨۘۙۖۘۤۡۥ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1928535300) {
                                        case -1813826592:
                                            str5 = "۬ۥۥۘ۟ۜۨۤ۫ۥۥۚۥۘۗۡۤۨ۟۟ۗۤۥۛۚ۟ۢۖۨۤۚۢۜۙۡ۠ۚۘۛ۫ۢ۟۠ۢ";
                                            break;
                                        case -1658906771:
                                            str5 = msgType != 2001 ? "ۘ۠ۧ۟ۜۗ۠ۘۥۘۨ۠ۡۘ۠ۜۗۖۡۧۜ۠ۦۘۦۛۗۧۗ۫ۧۙۛ" : "ۗۖۛۡۛۡۘۡۜۤ۠ۛۜۛۛۛۜۜۦۘۖۡۛۚۘۜ۫ۜۦۚۤۨۨ۬ۥۥ۟ۘۘ";
                                            break;
                                        case -925834408:
                                            str4 = "۫۟ۥۥۡۗۨ۟ۤۖۡۦۘۚ۫ۨۘۢۖۜۘۜ۟۫ۢ۟ۥۦۘ۟۬ۥۘۛۦۚۛۙۗۗ۬۬ۧۥۘۘ";
                                            break;
                                        case -438697030:
                                            str4 = "ۘۧ۠ۤۜۥۘۤۗۨۘۨۨۨۡۥ۟۫۠ۛۦ۬ۤ۫۬ۥۗۧ۟ۘ۫ۥۘۜ۟ۜۘۢۤۦ۟ۡۡۛ۫ۥۘ";
                                            break;
                                    }
                                }
                                break;
                            case -1057144217:
                                str4 = "ۚۨۤ۟ۦۥ۫ۤۜ۫ۙ۟۟ۙۘ۬ۗۦۘۖۤۜۘۖۧۚ۬ۚۖۘۖ۬ۨۢۖۥۘۦ۫ۦۘۚۖۥۘۥ۫ۥۧۤۤۛۢۚۥۘۢۘۡۗ";
                                break;
                            case 802113271:
                                str = "ۙۥۛۡ۟۬۠ۡۦۘۚۖۥۘۤۡۘۛۨ۫ۜۨ۬۠۟ۙۨۜۡ۫ۗۘ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onReceiveElfinFloatViewEvent(ElfinFloatViewEvent elfinFloatViewEvent) {
        String str = "ۖ۠ۢۘۦۡۘ۫ۛۘۨۧۢ۫ۨۦۦۙۘۧۜۜۘۨۜ۠۟ۛۦ۬ۘۢۖۧۘۜۤۖۘ۬ۚۜ۫ۤ۬";
        boolean z = false;
        boolean z3 = false;
        int type = 0;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE) ^ 243) ^ 346) ^ 365414712) {
                case -1664010458:
                    str = "۠ۥۥۘۚ۫ۜۘۗۛۢۧۙۨۘ۬ۤۦۧۤۖۘۙۛۛ۬ۤۧۦۨۛۙ۫ۡ۫۠۬۬ۖۡۡۧۢۚ۬ۚۙۤۖۜۥۡۘ";
                    z3 = z;
                    break;
                case -1435798782:
                    Oooo00O(z3);
                    str = "ۗۖۥۘۘۢ۬ۤۜۖۡۗۜۘۦۚۙۨۢ۬ۦۧۢ۠ۦۥۘۛۙۜۘۧۙۖۘۢۧۥۘۘۢۘ";
                    break;
                case -1336689913:
                    type = elfinFloatViewEvent.getType();
                    str = "ۜۤۗۖۖۖۘ۫۬ۖۘ۫۠۟۟ۙۧ۬ۦۖ۟ۙۨ۠ۛۛۚۜ۟ۗ۟ۢۛۙ۟ۛۦ۬ۚۢۥۘۙۢۚۦۦۘۖ۬ۡۦۘۖ";
                    break;
                case -1248248282:
                    z = true;
                    str = "ۖۢ۠ۤۦۥۘۛۙ۟ۗۖۥۘۢ۟۬ۢۦۢۜۙۡۙۡۙۧۜۥۘ۠ۥ۬ۗ۟ۥۡۜۤ";
                    break;
                case -1241758814:
                    return;
                case -1240666481:
                    String str2 = "ۛۚۧۥۡۥۗۚۖۗۤۘۘۙۨۡۦۘۘۡۙ۠ۥ۬ۢۡ۠ۖۘۖ۬ۘۘۧ۟۟ۤۖۦۙۡۗۡ۟۠ۡۥۖۘ۟۬";
                    while (true) {
                        switch (str2.hashCode() ^ 1566564116) {
                            case -1792885832:
                                str = "ۛۚ۬۫ۖۨۙۘ۫ۜۘۘۗۚۥ۫ۤۚۢ۟۬۟ۡۘۦۥۡ۫ۡۧۘ۠ۙۨۦ۠ۨۘۙۜۙۘ۬ۦۢۜۤۨۥۘۘ";
                                continue;
                            case -1687138152:
                                str = "ۢۜۥۘۥۘۗۨۖۤۦۚۙۦۛۡۘۜۘ۬ۗۧۘۘۤۛۡۨۨۥۘ۠ۤۧۥۚۖۚۜۧۜ۠ۖۡۡۧۘۡۤ۟ۜۘۛۤۙ۫ۚۜ";
                                continue;
                            case -139939228:
                                String str3 = "۠ۖ۟ۚۦۘۜ۬ۨۘ۬ۜۜۘ۬ۚۡۘۧ۫ۖۘ۫ۚۘۗۦۜۘۚۧۨۘۛۡۖۦۜۡ۠ۜۧۛۤ۫ۘ۠ۧۜۗۦۚۥۘۘ۬ۜۧۘۚۚۥ";
                                while (true) {
                                    switch (str3.hashCode() ^ 564492488) {
                                        case -1310908499:
                                            str2 = "۟ۥۚۛۡ۬ۖۚۚۙۧۘۧۚۧۥۨ۠ۢۙۗۨۙۤۗۘۤۢۨۘۧۧۨۥۡۢۙۦ۟ۡۗۥ";
                                            break;
                                        case 1115950867:
                                            str2 = "ۗۤۥۘۜ۬ۤۢۨۡۘۙۥ۠۬۟ۖ۠ۦۘۨۢۜ۫۟ۧۢۧ۫ۧۜۨۘ";
                                            break;
                                        case 1383986028:
                                            str3 = type != 10103 ? "ۧ۫ۜۤ۟ۨۜۧۘۘ۟ۚۜ۠ۗۡۘۧ۠ۘۡ۠ۖۤۧ۫ۥ۠ۢ۬ۤۡۚۦۘۤۙۖ" : "ۗۙ۟۟ۜ۟ۜۤۡۘۦ۬ۦۘۙ۬ۤۗۦۜ۟ۗۧۘۤۛۧۥۜۘۨۗۦ";
                                            break;
                                        case 1697585936:
                                            str3 = "ۥۢۧۨۡۥ۫ۚۖۡۘۜۢۤۨۘ۠ۢۦ۠ۡۡۙۤ۬ۦۘۢۗ۟۠";
                                            break;
                                    }
                                }
                                break;
                            case 1815938044:
                                str2 = "ۙۗۡۘۙۢۗۘ۟ۢۜ۠ۖۡۧۘ۠ۧۜۘ۠ۜۡۨۥۗۡۦ۬۬۟۬";
                                break;
                        }
                    }
                    break;
                case -863102376:
                case 19840329:
                    str = "۬ۨۗۖۜۜ۬ۖۘۘۦۜۨۤۥۥۖۖۡ۫ۖ۠ۡۛۙۙ۫ۦۘۜۗۘۗۙ۬ۧۙۨ۟ۧۜۘۨ۫ۙ";
                    break;
                case -631763216:
                    OoooO0();
                    str = "۬ۨۗۖۜۜ۬ۖۘۘۦۜۨۤۥۥۖۖۡ۫ۖ۠ۡۛۙۙ۫ۦۘۜۗۘۗۙ۬ۧۙۨ۟ۧۜۘۨ۫ۙ";
                    break;
                case -110955239:
                    str = "ۥ۠ۜۥ۫ۨۘۨۚ۫ۙ۫ۢۛۘۦۡۛۗ۠ۖۥۘۥۖ۫۠ۧۦۖ۟ۨۘ۟ۥۖۚۚۦ۠ۖۛۤۛۨۘۖۨۗۥۦۜۘۧۘۡۘۧۜۦۘ";
                    break;
                case -91157236:
                    String str4 = "ۖۨۨۗۘۥۘۥۤۚۧۡۘ۟ۙۡۘ۠۟ۛۦۖۗۚۚۖۘۘۗۖۙۚۢ۠ۚۢۗۦۙۨۘۚۙۥ";
                    while (true) {
                        switch (str4.hashCode() ^ 1622148768) {
                            case -1554267137:
                                String str5 = "ۚۤۜۢۙۥۜۗۦۘ۟ۥۧۘۨۨۢۙ۫ۙۧۗۜۤۜۘۜۨ۟ۛۥۧۘۤۢۙۨۖۡۘ۟ۘۡ۫ۡۨۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1269471323)) {
                                        case -1538256595:
                                            str5 = "ۘ۟ۜۨۥۙۜۗۨۢۦۙۡۤ۬ۤۧۤۚۚۜۚۖۙۧۖۘۘۡۜۧ۫ۖۚۢ۫۟ۦۧ۟ۥۘۤ";
                                            break;
                                        case -1463763674:
                                            str5 = type != 4 ? "ۧۛ۟ۚۤۢۚۤۖۘ۬ۧۦۘۡۛۘۘ۬ۗۚ۫۬۠۫ۘۥۘۤۡۦۙۚ۬ۥۚۗ۠ۗۗۖۗۜۤۡۘۘ" : "ۨ۟ۚۛۖۚ۟ۜۖۜۤۚۙۜۛۤۡۚۤۛۚۥۗ۟ۦۜۘۙۥ۬ۤ۬ۖۙۜۥ۬ۛ۬ۜۖۦۘ";
                                            break;
                                        case 279329302:
                                            str4 = "ۡ۠ۦۤ۟ۜ۬ۚۖۛۡۛۢۦۘۚ۫ۥۘۛ۠ۦۜۨ۬۟ۡۘۨۧ۟ۘۛۦۘۘۡ۬ۘۢۚۖۜۘۨۦۙۜۢ۠ۦۖۥۢۜۘ";
                                            break;
                                        case 516355754:
                                            str4 = "ۦۘۦۘۖۚۘۘۢۦۦ۬۫ۢۜۗۙۘۨۧۘ۬ۜۘ۬۬ۗۥۡۙۛۦ۟ۥۛۖۙ۫";
                                            break;
                                    }
                                }
                                break;
                            case 42524478:
                                str = "ۡۚۖۘۤۙۨۤ۬۠ۛۛۙۖۥۦۛۨۨۨۦۛۢۡۦ۟ۘۙۛۜۚۦۙ۫ۨ۬ۧۜۘۨ۠ۖۤۢۧۢۧۗۥۘ";
                                continue;
                            case 1017662997:
                                str = "ۧۖۖۘۜۖۘۚ۟ۡۨۖۨۘۤۘۜۘۦۜ۠ۤۢۙۛۥۘۙۜۦۖۜۥۘ";
                                continue;
                            case 1139493558:
                                str4 = "ۚۧۥۘۡ۬ۨۘۙۗ۟ۦۢۥۦۥ۫ۛ۟ۜۘۥۛۨۦۖۛۢۜ۫ۛۨۖۚ۟ۢۢۘۛ۫ۚۜۨۖۜۘ";
                                break;
                        }
                    }
                    break;
                case 226224684:
                    str = "ۥۚۦۘۚۛ۠ۜۚۦۘۨۨۦۢ۬ۨۜ۟ۨ۬ۗۥ۟ۡۘۡ۠ۖۘ۫ۛ۬ۥۙ۫۬۠ۚۙ۠ۜۘۙۖۘ۬ۛۛۢ۟ۥۘۘۧۚ۫ۜۦۘ";
                    z3 = false;
                    break;
                case 809538720:
                    str = "۫۬ۗ۟ۦ۬۬۫ۖۖۨۧۖۧۤۘۦۥۘ۠ۦۛۗۙۧۢۛ۠ۖۚۧۛۗۧۦۖ۬ۙۨۡۘۥۙۜۘ";
                    break;
                case 1522297302:
                    str = "۫ۚۨۘۨۢۖۤۢۡۛۙۙۢۢ۟ۙۤۦۗۙۡۘۥۨۥۘۛۙۥۖۚۚ";
                    break;
                case 1996726146:
                    str = "۠ۥۥۘۚ۫ۜۘۗۛۢۧۙۨۘ۬ۤۦۧۤۖۘۙۛۛ۬ۤۧۦۨۛۙ۫ۡ۫۠۬۬ۖۡۡۧۢۚ۬ۚۙۤۖۜۥۡۘ";
                    break;
                case 2027382975:
                    String str6 = "ۧ۟ۜۡ۟ۦۘۢ۬ۖۖۡۢۦۛۡۘۖۢ۬ۡۢۢۙۤۤۛ۠ۜۘۖۘۚ";
                    while (true) {
                        switch (str6.hashCode() ^ 39526043) {
                            case -1530235737:
                                str = "۬ۥۧۤۨۘ۫ۤۥۗۨۦۘ۫ۚۦۢۜ۬ۘ۠ۘۘۘ۫ۥۨۢۥۧۡۘ۫ۗۜۘۨۙۧۤۜ۬ۘۢۛۤۙ۟۫ۦۘ۟ۚۗ۠ۙۜ";
                                continue;
                            case -1254729617:
                                str6 = "ۗۜۧۘ۬ۖ۫ۘۢۗۢۛۨۨۙۙۦۡۢ۬ۗۘۥۦۢۦ۟ۢۨۨۥۘ";
                                break;
                            case -415160335:
                                String str7 = "۬ۨۖۡ۟ۗ۬ۧۘۖۤۦۘۚۗۡۜۘۡۘۡۜۥ۟۠ۙۥۡ۠ۧۘۨ۟ۨۨۘ۬ۧۥۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 388322133) {
                                        case -2115745538:
                                            str6 = "ۨۛۤۦۙۦ۠۠ۘۦۨۘۖۜۢۗۙۦۜۗ۬ۥۥۡۘۘۖۜۘ۠ۚ";
                                            break;
                                        case -1467044969:
                                            str7 = "ۤۨۦۛۗۧۛۘۦۘۥ۠ۜۡۥۦۚ۠ۦۡۢۡۥۘۙۚ۠ۖۘۡۥۡۗ۫ۚۖۖۘۥۙ۟ۢۥۡۘ";
                                            break;
                                        case 318615937:
                                            str6 = "ۙۡۛۚۖۤۜۜۦۢۜ۠ۖۢۧۤۛۛۦۨۢۜۙۨۘۡۜۙۨۗۜۘ۫۫ۦۨۛۛ";
                                            break;
                                        case 1384258932:
                                            str7 = type != 10101 ? "ۧۜۜۙۗۖۘۡۦۡ۫ۨۦۢۦۡۘۢۨۡۦۤ۫۠ۘۥۤۜۦۘۛۢۦۘۥۛۢ۠ۢۡ" : "ۜۚۦۡۜۜۥ۬ۧ۟ۢۢۧۥۨۨ۬ۖۘۘۜۙ۟ۛۡۢۥۚۡۙۥۘ۫ۡ۟ۙ۬ۦۘۨۛۡۘ۠ۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case -74093657:
                                str = "ۡۥ۬ۛۗۦۢ۠۫ۘۚۨۘۧ۟ۥۘۘۜۨۘۘۥۖ۠۟ۦۘۗۨۜۡ۠ۡۖۦۘۘۘۢۘۛۜۥۜۛۥۨۧۛۖۦۘ۬ۖۧۗۢۖ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    public void setControlbarVisiable(int i) {
        String str = "ۢۨۖۖۦۜۛۦۘۤۡۜۖۡۥۢ۠ۚۦۥۚ۫ۧۡۘۨۘۙۡۘۧۘ۫ۘۥۘۨۤۤۡۥۤ۫۠ۧۗۥۘۤۜۥۤۜۖۘۦۢۗ";
        int i2 = 0;
        int i3 = 0;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE) ^ 713) ^ 483) ^ (-1917854640)) {
                case -1423648811:
                    str = "ۘۘۥۘۧ۫۠ۖ۠۠ۤۢۖۘ۠ۧ۫۠ۜۚۗۡۡۙۨۨ۟ۨۦ۫ۧۖۤۜۥۘۦۥۥۘۙۛۦ۠ۘ";
                    i3 = 0;
                    break;
                case -1145982325:
                    return;
                case -1001293185:
                    str = "ۗۨۦ۠۬ۜۧۤۥۘۥۡۦۘۨۘۜۤۙۘۗۛۨۛۦۜ۫ۦۜۨ۠ۢۚۜۧ۠ۡۘۨۖۥۘۖۤۜۡۜۜۘۡۜۧۘ";
                    break;
                case -640243728:
                    str = "۬ۖۘۖۖۛۧۢۧۘۛ۫ۘۦۢۘ۠ۨۘۢۡۘ۟ۗ۟ۧۚۘۘۘۚۜۨ۠ۦۦۘۗ۬ۘۘۧۗۦۘ";
                    break;
                case 121248639:
                    i2 = 8;
                    str = "ۨ۫۬ۡ۠ۘۘ۫ۡ۬ۚۥۘۤۘۤۖۧۜۗۖۗۖ۬ۥۘۨۦۡۛۛۗ";
                    break;
                case 592536817:
                    setVisibility(i3);
                    str = "ۥۘ۠ۛۙۡۘ۫۟ۛ۠ۦۤۥۖۖۡ۫۬ۥۥۜۛ۟ۤۨۥۤۡۛۧۙۡۘۤۨۗ";
                    break;
                case 592656944:
                    str = "ۘۜۚۦ۟ۘ۠ۡۗۜۧۗۡۗۛ۠۫ۜۘۦۘۖۢۡۘ۬ۚۨۜۡۦۘۡۘۨۢۛۙۖ۟ۦ۟۬ۡۗۥۧۘۢۥۨۘۨ۟ۚۙۙۙ";
                    break;
                case 1052156307:
                    str = "۫۫ۘۘۢۜۡۘۘۧۧ۟ۨۜۢۖۥۘۦۛۤ۟ۙۤۧۜۡۘۙۥۦۘۡۚۗۘۤۨۘۖۖۨۜ۟۠ۙۡۘ";
                    i3 = i2;
                    break;
                case 1824721681:
                    str = "۫۫ۘۘۢۜۡۘۘۧۧ۟ۨۜۢۖۥۘۦۛۤ۟ۙۤۧۜۡۘۙۥۦۘۡۚۗۘۤۨۘۖۖۨۜ۟۠ۙۡۘ";
                    break;
                case 2068891081:
                    String str2 = "ۨ۠۟۫ۘۜۛ۬۫ۚۤۖۙۥۤۘۥۦۘۡۛۦۘۨۖۤۥۗۜۥۥ۠";
                    while (true) {
                        switch (str2.hashCode() ^ 284465412) {
                            case -1268620782:
                                str = "ۗۚۖۜۖ۫۠ۙۘۤۥۖۢۜ۫ۢۦ۠ۛۢۚۜ۬ۢۢۦۧ۫ۨۘ۠۠ۨۤۗۜۘۛۨ۟ۥ۬";
                                continue;
                            case -787225250:
                                str2 = "ۡۙۜۛۚۙۨۨۗ۬ۖۧۘۦۘ۬۟۫ۛ۟۠۟ۙۦۧ۟ۚۗۗۥۨۘ۠۬ۨۘۦ۬ۤۛ۬ۜ";
                                break;
                            case 12498791:
                                String str3 = "ۙ۫۫۬۠ۨۚ۠ۧۡ۠ۚ۟ۥۤۘۤۦۙۤۙۙۥۜۘۚۛۜۜۜۢ۟ۗۘۘۤۥۢ۟۠ۡۘۙۧۦۢۗۦۘۧۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1252450603)) {
                                        case -2014085416:
                                            str3 = "ۙۥۙۥۨۡۘ۠ۥۦ۠ۥۨۘۥ۬ۛ۠ۜۤ۟ۤۡۘ۫ۖۦۘۡۙۦۜۢۥۘ";
                                            break;
                                        case -1218608722:
                                            str2 = "ۨ۠ۦۜۨۨۘۜۙۧۗ۠ۢۨۥۧۘۜ۠ۘۖۚۤۢ۠۠ۦۖۥ۟ۢۢۖۚۨۚۧۛۥۘۗ۠ۚ۠ۨۥۤۧ۠ۥۘ۬ۗۦۘۧۢۘ";
                                            break;
                                        case 1137093176:
                                            str3 = i == 1 ? "ۛۦۖۘۜۧۥۘ۟ۗۗۙۤۘۘۤۜۜۤۨ۫ۧۨۘۘۗۧۜۤۚۗۨۚۗ" : "ۧۗۡۤۘۖۧۘۤۗۘۛ۫۬ۛۙ۬ۙ۫ۦ۟ۘۧۘۗۦۧۘۥۨۧ۟ۘ۫ۥ۟۬";
                                            break;
                                        case 1520854526:
                                            str2 = "ۜۤۥ۟ۦۨۙ۟ۙۛۢۜۘ۬ۢۨۘۛ۠۫ۗۜۥۗۥۚۜۜۚۚ";
                                            break;
                                    }
                                }
                                break;
                            case 629253910:
                                str = "ۦۨۧۘۨۧ۫ۧۜۦۘ۫ۥۢۛۚۨۘۦۘۧۥۤ۬ۙۘۗۥۖۧۜۤۨۘۚۗۘۥۚۜۘ۟ۙۡۖۚۘۘۖۡۡۡۥۡۘۨۖۜۘۢ۫ۡۘ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    public void setIsPreventRepeatedClick(boolean z) {
        String str = "۟ۙۘۘۤۥۖۘۤۢۜۘۤۚۨۖ۫ۡۦۦ۠۬ۢۨۢۗۨۦۗۙ۠۫ۦۨۜۚۡ۟۫ۛ۠ۦۡۛۨۘۤۜۤۘۡۦۘۘۦۥۘۧ۫ۚ";
        while (true) {
            switch ((((str.hashCode() ^ 441) ^ 21) ^ 164) ^ (-315755773)) {
                case -1965211231:
                    this.o0Oo0oo = z;
                    str = "۠ۢۙۡۢۨۜۘۥۢۗۘۘۧۙۨۘۚ۠۫ۦ۫ۘۚۖۧۗ۫ۖۙۗۦۘۗۘۚۗۦ۟۠ۛۡ۟ۗۖ";
                    break;
                case -704172297:
                    str = "۬ۤ۬۬ۥۧۘ۠۫ۨۢۢۨۘۤ۟ۥۜ۠ۡۗۘ۫ۗۘۨۤۛۚۥۚ۬۠ۢۦۘۙ۬ۨۘ";
                    break;
                case -585210844:
                    str = "ۗۦۛۖۤۜۥۜۨۘۧۥۨۚۘۘ۠ۢۖ۫۬ۘۦۥۜۦۖۡۘۜۙۦۨۘۡۘ۟ۛۚۚۧۡۘۨۘۦۘۥۚۘۤۜۛ";
                    break;
                case 1010424159:
                    return;
            }
        }
    }
}
