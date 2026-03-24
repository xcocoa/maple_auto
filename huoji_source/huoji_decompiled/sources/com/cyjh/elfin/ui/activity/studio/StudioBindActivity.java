package com.cyjh.elfin.ui.activity.studio;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.ac.R;
import com.anythink.expressad.d.b;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.b7;
import z2.c5;
import z2.c9;
import z2.dh;
import z2.f6;
import z2.fh;
import z2.l10;
import z2.me;
import z2.q4;
import z2.rc;
import z2.x4;

/* JADX INFO: loaded from: classes.dex */
public class StudioBindActivity extends BaseActivity implements View.OnClickListener {
    public static String o00o0O;
    private FrameLayout OooooOO;
    private TextView OooooOo;
    private TitleView Oooooo;
    private EditText Oooooo0;
    private String OoooooO;
    private String Ooooooo;
    private String o00O0O;
    private boolean o00Ooo;
    private String o0OoOo0;
    private String ooOO;
    private Handler OooooO0 = new Handler();
    private boolean o00Oo0 = true;

    public class OooO00o implements rc.OooO00o {
        public final StudioBindActivity OooO00o;

        /* JADX INFO: renamed from: com.cyjh.elfin.ui.activity.studio.StudioBindActivity$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0177OooO00o implements Runnable {
            public final OooO00o OoooOoO;

            public RunnableC0177OooO00o(OooO00o oooO00o) {
                this.OoooOoO = oooO00o;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = "ۦۖ۫۠۟ۛۦۛۧ۫ۢۥۢۖۦۨ۬ۢۤۥۤۖۢ۠۫ۦۘۨۦۜۘۢۜۜۨ۫";
                while (true) {
                    switch ((((str.hashCode() ^ 184) ^ 805) ^ 371) ^ (-1713625169)) {
                        case -2139459964:
                            return;
                        case -546747234:
                            c5.OooO0o0(this.OoooOoO.OooO00o.getApplicationContext(), "绑定成功！");
                            str = "ۡۡۜ۠ۡۖ۫ۥۘۘۗۧۘۘۘۦۚۨۧۗۥۙۖۜۢۡۘۡۖۙ۠۬ۛۢۗۧۤۢۚ";
                            break;
                        case 1004469513:
                            str = "ۛۖۙ۟ۨۦۘ۫ۗۦۘۜ۠ۡۘ۟ۛۦۘۦۢۛۤۖۨۢۧۥۘۧۘۥۘۘ۟ۘۘۛۡۜۘۛ۬ۦۘ";
                            break;
                    }
                }
            }
        }

        public class OooO0O0 implements Runnable {
            public final ProjectNumberInfo OoooOoO;
            public final OooO00o OoooOoo;

            public OooO0O0(OooO00o oooO00o, ProjectNumberInfo projectNumberInfo) {
                this.OoooOoo = oooO00o;
                this.OoooOoO = projectNumberInfo;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = "ۗ۬ۚۙۖۘ۟ۗ۫ۢ۠ۛۙۥۘۤۢۥۘۙۦۘۘۧۜۘۧۦۙۧۢۤۦ۠۬ۢۧۚۤۤۛۢۨ";
                while (true) {
                    switch ((((str.hashCode() ^ 958) ^ 319) ^ 669) ^ 118466550) {
                        case -1030407694:
                            l10.OooO0o().OooOOOO(new fh(10002, this.OoooOoO.IMToken));
                            str = "ۗۛۙۥۨۜ۟ۛۥۘ۫۟ۦۛۙۜۘۖ۟ۦ۬ۗۜۤ۟ۡۘۜۘ۠ۙ۟ۖۛۡ۫ۜۚۙۙۚۤۜۗۘ";
                            break;
                        case 1702980081:
                            return;
                        case 2117571388:
                            str = "ۛۨ۬ۜ۫ۥ۬ۨۘۘ۠ۧ۬ۢۦۘۤ۬۫ۨ۬ۜۘ۬ۘۡۨۘۦ۠ۢۚۦۤۛۗۙ۟ۡۧۘۨۖۜۗ۬ۧۙ۠ۤ۠ۗۥۘۤۢۥۘ";
                            break;
                    }
                }
            }
        }

        public class OooO0OO implements Runnable {
            public final String OoooOoO;
            public final OooO00o OoooOoo;

            public OooO0OO(OooO00o oooO00o, String str) {
                this.OoooOoo = oooO00o;
                this.OoooOoO = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = "ۖۚۦۚۗۘۡۥ۟۬ۚۛ۫ۚۡۘۖۙ۟ۢۛۦۘۦۡۜۘ۫۠ۢۤۤ۫ۘۢۜۜۥ۠۬ۡ";
                while (true) {
                    switch ((((str.hashCode() ^ 854) ^ 721) ^ 530) ^ 1751563535) {
                        case -1713597762:
                            return;
                        case -1190756300:
                            c5.OooO0o0(this.OoooOoo.OooO00o, this.OoooOoO);
                            str = "۬ۡۜۥۙۥۘۦۡ۬ۧۜ۟ۛ۠۟ۘۖۥ۫ۡۤۖ۟ۗۚۥ۫ۛۛۤۜ۟۬ۢۖۘۘۨۘۘۘۧۦۘ";
                            break;
                        case -940964097:
                            str = "۫ۧۥۥۙۡۢۜۙۗ۬ۛۘۥۚۧۢۤۢۨۘۘۗ۫ۡۘۚۤ۫ۛۤۘۘۢۢ۫ۦۦۘۤۚۖۘۚ۫ۦۘۤ۬ۤ۟ۦۗ";
                            break;
                    }
                }
            }
        }

        public OooO00o(StudioBindActivity studioBindActivity) {
            this.OooO00o = studioBindActivity;
        }

        @Override // z2.rc.OooO00o
        public void OooO00o(int i, String str) {
            String str2 = "ۥ۫۬ۖۤۖۘۘۘۘۘۧۖۥۘۙۧۥۚۤۚۨۧۥۘۦ۫ۛۛۨۗۤۨ۟ۢۥۡۘۗۗ۫ۢۤۡۘۗۦۖۘۗ۫ۙۡۨۘۘ۟ۡ۠۠ۚۦ";
            while (true) {
                switch ((((str2.hashCode() ^ 836) ^ UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE) ^ me.o00000OO) ^ 1646555089) {
                    case -1028107291:
                        str2 = "۟ۡ۬ۜۜۛ۬ۢۖ۫ۦ۫ۙۧۖۚۦۦۘۥ۫ۛۨۖۘ۟ۧۥۘۜۨۘۘ";
                        break;
                    case -900022794:
                        str2 = "۬ۛۜۘ۬ۡۤۥۖۗۥۖۗۤۘۘۜۗ۬ۡۨ۟ۡۘۢۘۖۘۘ۠ۨۧۘۨۗۨۘۙ۬ۨۘ";
                        break;
                    case -478672670:
                        StudioBindActivity.OooO0oO(this.OooO00o, true);
                        str2 = "ۖ۬ۥۘۙۥۨۘۗۡ۟ۛۥۚ۠ۘۘ۟۟ۥۖۧۥۘۢۗۙۨۖ۬";
                        break;
                    case 759961000:
                        str2 = "ۨۘۖۘ۫ۨۡۛۙۚۘۡۤۤۤۡ۫ۧ۟ۤۚۘۘۙ۬۫۟ۡ۟ۜۨۘ۠۟ۛۚ۬۠";
                        break;
                    case 918458676:
                        rc.OooO0oO().OooOO0(null);
                        str2 = "۟ۗۚ۬ۖۥۖۚۡۘۨ۟ۦۘۥۙۙۗ۬ۡۘۚۦۘۜۧ۬ۦۨۡ۫ۚۦۘ";
                        break;
                    case 1698267862:
                        StudioBindActivity.OooO0oo(this.OooO00o).post(new OooO0OO(this, str));
                        str2 = "ۛۧۥۖ۟ۧۖۡۜۘۨۧۜۖۗ۫ۦۥۧۘۨۢۘۛۛ۠ۗۙۢۚ۫ۘۘۗۥۜۤۤۙۢۗۡۦۖۘۤ۠ۙۗۥ۠";
                        break;
                    case 1896555095:
                        return;
                }
            }
        }

        @Override // z2.rc.OooO00o
        public void OooO0O0(ProjectNumberInfo projectNumberInfo) {
            String str = "ۚۜۡۘۘۜۙۜۚۡۡۛۦۥۗۗۥ۫ۧۜ۟ۦۘ۟ۙۜۗۘۘۖ۟ۡۜۘۖۜۢۥ";
            String strOooO00o = null;
            while (true) {
                switch ((((str.hashCode() ^ b.b) ^ UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE) ^ 986) ^ 1313241088) {
                    case -1770706711:
                        StudioBindActivity.OooO0oo(this.OooO00o).postDelayed(new OooO0O0(this, projectNumberInfo), 500L);
                        str = "ۛۧ۫ۘ۠ۜۘۙۧۡ۟ۦۡۨۖۢۤۡۙ۠ۧۛۗۜۗۘۜۗۧۘۤۛۦۡۜۦۘ۬۠۠ۥۧۦۘ";
                        break;
                    case -1359697671:
                        strOooO00o = q4.OooO00o(StudioBindActivity.OooOO0(this.OooO00o));
                        str = "ۛ۬۠ۡۛ۟ۡ۬ۚۚۖ۬ۨ۫ۘۛۗۢۧۧ۬۠ۨۘ۫ۙۥۘ۟۬ۛ۬ۗۦۦ۠ۡۘ۠۬۫ۢۤۦۤۛۘۘۗ۠ۤۤۢ۬ۙۦ";
                        break;
                    case -1222928089:
                        return;
                    case -1184974792:
                        String str2 = "۫ۙ۠ۡ۠ۗۢۘ۫ۚۢۡۗۦۘ۫ۘۛۧۗۖۦۘۨۘ۟ۖۘۘ۟ۚۨ۟ۙ۬۠۟ۢ";
                        while (true) {
                            switch (str2.hashCode() ^ 2025098003) {
                                case -2142435511:
                                    str = "ۥ۬ۦۘۡۥۨۘۨۚ۟۬ۧۤۡۙۙۡۡۨۘۦ۠ۖۘۦ۬۫ۘۘۗۚ۫۟۬ۙۗۢۙۛۡ۫ۖۦۨۧ۬ۙۨۘ۠ۙۢ";
                                    continue;
                                case -1957212963:
                                    String str3 = "ۚۜۤۛۘۖۡۦۜۘ۬۠ۨۨ۬۫ۢ۫ۗۧ۠ۤ۬۫ۙۘ۟ۢ۬ۛۢۜۨ۬۟۠ۧۤۘۦۘۙۗۦۛ۟ۚۨۚۛ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-16021620)) {
                                            case -1542975959:
                                                str3 = StudioBindActivity.OooOO0O(this.OooO00o) ? "ۖۢۥۘۛۡۥۙۗ۠ۧ۟ۘۘۧ۟ۢۤ۟ۚۤۡۘۥۢۥۘۚۢۘ۟ۧۡۧۨۘۚۧ۠" : "ۛ۫ۖ۫ۥۢ۠ۜۦۘۜۧۜۥۜۡۘۨۧۡۖۡۢ۫ۦۨۘۦ۟ۘ۬ۦۡۘ۠ۛۦ۠ۦۘۚ۫ۦۘۙ۟ۜ";
                                                break;
                                            case -356932179:
                                                str3 = "ۛۗۚ۟ۧۦۙۢۧۧ۟ۦۘ۬ۚۨۘ۟ۛۙۨۜۜۘ۬ۚۖۘۙۗۘۨۡۢۛۨۨۡۚۧۖۦۨۘۜۘۡۚ۬ۜۛ۟ۦۘ۫۬ۦ۬ۘ";
                                                break;
                                            case 51534919:
                                                str2 = "ۖۡۧۘ۟ۦۤۗۢ۫ۦ۫ۦ۟۫ۖۘ۫ۚۥۤۢ۠ۥ۫ۦۚۙۥۘۡ۫ۚ";
                                                break;
                                            case 410274065:
                                                str2 = "ۥۛۦۘ۟۫ۦۘ۠ۡۡۙ۟ۘۚ۠ۖۘ۠ۚۡۘۢۧۤۘۦ۬ۤۚۧۜۜۥۢ۬ۢۤۤ";
                                                break;
                                        }
                                    }
                                    break;
                                case -974509370:
                                    str = "ۤ۫ۙۚۢۙۧ۫ۦۘۛۢۗ۫ۗۨۖ۬ۡۘۜۙۚۥ۫۫ۙۤۢۦۧ۟ۧۖۨۨۥۥ";
                                    continue;
                                case 1746905479:
                                    str2 = "ۛۖۨۘۧۡۡۤۢۙ۟۫ۘۛۧ۠ۜ۟ۖۘۜۦۡۡ۟ۜۘۘۢۖ۟ۛۦۘ";
                                    break;
                            }
                        }
                        break;
                    case -1069418937:
                        rc.OooO0oO().OooOO0(null);
                        str = "ۖ۬ۤ۠۫ۨۖۚ۬ۨۢۜۘۡۢ۬۬ۨ۟ۥۛۨۧ۫ۤۘۜۖۗۖ۟ۨۘۘ۬ۜۘۘ۫ۗۥۥۗۨۘ۠۠۬۠۟ۡۘ";
                        break;
                    case -960470750:
                        x4.OooO0O0().OooO0oo(f6.OooOoo0, strOooO00o);
                        str = "ۛۚۛۡۖۧۜۚۖ۟۟ۖۘۤۛۚۡۨۖۘۥۜۨۢۗۨۗۥۛۦۜۛۡۦۘۛۦۥۨ۟ۜ۬ۤۡ";
                        break;
                    case -722072679:
                        str = "۫ۛۚ۫ۥۦۘ۬۠ۗۗۚۙۚۚۨۘۚۚ۫ۨۧۘۨۜۡۖ۫ۦۜۥۘۚۜۨۨ۫ۖۨۨۜۡۘۨۘۢۙۦۘۡۘۖۘ";
                        break;
                    case -182828355:
                        str = "۫ۥۗۚۜ۠ۤۜۚۜۡۧۘۛۨۘۘۜۧ۠ۙۨۘۗۜۦۘۙۙ۫ۖۥۜۘۖۤۢۡۖۘۘۡۗۥ۟";
                        break;
                    case -30389455:
                        StudioBindActivity.OooO0oO(this.OooO00o, true);
                        str = "ۚ۫ۦۚۙۜ۟ۨۦۥ۫ۡۘ۠ۥۧۘ۫ۚۖۘۙۙۗۡۚۖۘۤۤۘۘۚۢۧۡۡۚۢ۟ۜ";
                        break;
                    case 449158632:
                        dh.OooOOo(projectNumberInfo.IMServerHost, projectNumberInfo.IMServerPort);
                        str = "ۤۜۤۘۡ۫ۗۗۤ۫ۤۡۗۗۥۘۤۖ۫۫ۨۨۘۚۤۥۘۘۗۗۛۙۨۦۗۥۘۦ۫ۗۧۘۘ۠ۜۡۘۦۦۖۧۢۙۗۖۚ۬ۨۘ";
                        break;
                    case 453658902:
                        AppContext.OooO00o().OoooOoO = StudioBindActivity.OooO(this.OooO00o);
                        str = "۠ۖۥۘۥۦۥۢۡۢۥ۬۫ۡۜۘ۟ۦۨۘۨۢۚۜۖۘۚۥۘۘۢۚۦۘۥ۫۫ۖۚ۠";
                        break;
                    case 1185547470:
                        StudioBindActivity.OooO0oo(this.OooO00o).post(new RunnableC0177OooO00o(this));
                        str = "ۙۙۖۘۗ۠ۘۘۘۚۥۘۘۘۧۘ۬ۤۨ۠ۨۜۧۗۖۘۙ۫ۗ۟ۚۢۘۙۘۘ۟ۘ۟ۗۛۛۘۢۥۘ۫ۖۘ۫ۚ۟ۡۧۦۘ";
                        break;
                    case 1315098871:
                        this.OooO00o.finish();
                        str = "۫۫ۧ۫ۚۦۨ۬ۦ۫ۙۙ۫ۡۥۘۜۙ۫ۨۢۛ۠ۛۢ۫ۜۡۤۨۘۘ";
                        break;
                    case 1378568695:
                        str = "ۘۦ۠ۖۗۛۥۜ۬ۙۦۜۗۗۜۘۤ۫ۧ۬ۘۛۗۦۜۚ۫۬ۥۗ۟ۚۢۜۨ۬ۢ";
                        break;
                    case 1772432644:
                        l10.OooO0o().OooOOOO(new fh(10001, projectNumberInfo.IMToken));
                        str = "۫ۥۗۚۜ۠ۤۜۚۜۡۧۘۛۨۘۘۜۧ۠ۙۨۘۗۜۦۘۙۙ۫ۖۥۜۘۖۤۢۡۖۘۘۡۗۥ۟";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۖ۬ۘۦۘۦۚۚۥۡ۠ۛۛۨۙۜۤۛۤ۠۫ۖۗۨۘۖۛ۟ۦۥۤۨۤۤ۫۬ۛۥۖۦۘۖۤۜۧۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 53) ^ 565) ^ 1) ^ 1922142008) {
                case -1741926028:
                    return;
                case 877991456:
                    o00o0O = StudioBindActivity.class.getSimpleName();
                    str = "ۗۗۛۖۥۚۘ۬ۦۘۛۡۖۘۗۖۘۦۛۡۘۖۤۡ۫ۘۦ۟ۚۜۘ۫ۥ۫";
                    break;
            }
        }
    }

    public static /* synthetic */ String OooO(StudioBindActivity studioBindActivity) {
        String str = "ۢ۫ۚۚ۬۟ۘۧۡۜ۬۬ۧۛۚۢۥۤ۬ۙۨۘۗ۫۫۟۬ۚۜۤۨۘۛۗۖ۬ۨۘۘۡۖۚۧۤ";
        while (true) {
            switch ((((str.hashCode() ^ 239) ^ 991) ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE) ^ 1284380124) {
                case 411450723:
                    str = "ۦۙۦۥۗ۫ۚ۬ۡۡۖۨۥۥۘۛۘۚ۟ۡۚۥۚۜۢۖۘۢۦۥۘۧۧۖ۟ۡۖۡۥ۫ۧۦ۬ۛ۫ۡۘ۬ۡۤ";
                    break;
                case 1889628188:
                    return studioBindActivity.Ooooooo;
            }
        }
    }

    public static /* synthetic */ boolean OooO0oO(StudioBindActivity studioBindActivity, boolean z) {
        String str = "ۖۢۥۘ۠۫ۙۡ۠ۧ۠ۡۤۘۛ۠ۥۗۡ۫ۛۨۘۘۖۧۥۖۗ۫ۚۗۜۘۗۖۦۤۥۨۘۥۥۤۛۚۨۘۢۚ۟ۘۦۦۘۖۙۙ";
        while (true) {
            switch ((((str.hashCode() ^ 746) ^ 992) ^ a.aV) ^ 1802135329) {
                case -538559997:
                    return z;
                case 51883581:
                    str = "ۚۧۦ۠ۤۘۘۡۙۖۘۜۙۘۥ۟ۚۦۙۡۗ۠ۡۘۙۘ۫ۢۚۨۘۙ۫ۧۧۥۤۡ۬ۜ";
                    break;
                case 492965655:
                    str = "ۥ۟ۦۨۧۘۡۜۜ۟ۙۜۘ۟ۨۦۛۧۖۘۜ۠ۥۦۦۖ۟ۗۢ۫ۦ۠ۙۦۥۘۥ۟ۘۛۡۖۘۨۙ۬ۡۘۢۧۡ";
                    break;
                case 1705322940:
                    studioBindActivity.o00Oo0 = z;
                    str = "ۛ۟ۥۙۦۤۚۜ۫ۧۨۦۘۙۡ۫ۜۨۧۡۡۜۨۤۘۖۤۦۥ۬ۦۘۚ۟ۦۥۛۥ";
                    break;
            }
        }
    }

    public static /* synthetic */ TitleView OooO0oo(StudioBindActivity studioBindActivity) {
        String str = "ۜۗۦۘۘ۠ۥۘۚ۫ۜۘۚۘ۠ۛۧۨۤ۬۟ۧۦۥۡۢۢ۫۫ۦۘۛۢۡۘۢۘۖۘۘۖۘۚۚۦۘۢۧۥۘ۟ۤۦۘۤۗۡ";
        while (true) {
            switch ((((str.hashCode() ^ 432) ^ 421) ^ 279) ^ 1651242825) {
                case -1039560011:
                    str = "ۦۘ۠ۛ۟۠ۘ۬ۦۘ۬ۡۘۘۙ۬ۥۜۜۡۘۦۜۦۜ۫ۡۨۥۨۘ۟ۘۜۘۤۡ۠ۘۖ۫۠ۤۥۘۨۢۘۦۢۙۤۛۥۘ";
                    break;
                case 1987968933:
                    return studioBindActivity.Oooooo;
            }
        }
    }

    public static /* synthetic */ String OooOO0(StudioBindActivity studioBindActivity) {
        String str = "ۥۢۖۘۛۗۨۘ۠۠ۜۙۜۙۡ۫ۦۤ۫ۙۚۘۧۗۧ۫ۡۙۧۥۖۦۘۢ۫ۛۙۧۘۘۤۡ۠۫ۖۨۦ۟ۘۛ۫ۨۘ۬ۖ۬۬۬ۛ";
        while (true) {
            switch ((((str.hashCode() ^ 593) ^ 137) ^ 454) ^ (-60318456)) {
                case -1411897073:
                    return studioBindActivity.o00O0O;
                case -484853643:
                    str = "ۥۖۡۘۖۖۢۚۚۡۗۚ۫ۧۤۘ۬ۚۚۨۖۥ۬ۤۡ۫۠ۘۘۙ۫ۡۘۨ۫ۜۤۧ۠ۛۜۡۙۥۦۤ۬۫ۖۜۡۘۨ۟ۥۘۦۨۥ";
                    break;
            }
        }
    }

    public static /* synthetic */ boolean OooOO0O(StudioBindActivity studioBindActivity) {
        String str = "ۦۡۥۘ۬ۥۜۤۨۖۤۛۥۖۧۘۙۜ۠ۤۧۥۘۨۥۧۘۦۗ۟ۛۙ۬ۨۛۨۥ۬ۦ۫۬ۧۢۤ۬ۛ۬ۥۛۦۘۚۜۜۘۗ۟۠";
        while (true) {
            switch ((((str.hashCode() ^ 21) ^ 731) ^ 42) ^ (-2037868195)) {
                case -1888576099:
                    return studioBindActivity.o00Ooo;
                case 1103414673:
                    str = "ۜۦ۟ۢۦۨۘۤۧۖۘ۟۟۠ۖۚۖۙۥۤۤۙۜۘۥۡۧ۠۬ۦۘ۟ۘۙۡۦۘ۬۟ۨۘۖ۠ۜۤۥۡ";
                    break;
            }
        }
    }

    public static void OooOO0o(Context context) {
        String str = "۬۠ۖۡ۟ۨۢۨۡۥۜۨۜۡۛۤ۟۬ۖۤۡۖۘۦۥۗ۬ۦۧۚۛۛ۠۬۠ۚ۟۬ۨ۠۫ۨۗۜ۬ۦۗۙۥۜۢۦۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 973) ^ 691) ^ 460) ^ 1673486932) {
                case -1594470536:
                    return;
                case -614713280:
                    context.startActivity(new Intent(context, (Class<?>) StudioBindActivity.class));
                    str = "ۤ۟۬۟۬ۙۙۜۖۥۨۘۘۛۖۦۘۨ۟ۨۘۙ۫۟۫ۨۛۛۡۘۚۗ۠ۥ۠ۢۥۚ۫ۥۜۖۢۙۘۘۛ۫۠۟ۗۚۥ۫۬ۨۨۘۘ";
                    break;
                case -72902138:
                    str = "ۧۛۛۜ۠ۜۛۤۘۘۚۘۘۡۚ۠۠ۢۥۗۗۡ۠۫ۦۛ۬ۘۛۢۨۡۡۘۘۥۧۦ۟۟ۘۡۜۥ";
                    break;
            }
        }
    }

    public static void OooOOO(Context context) {
        Intent intent = null;
        String str = "ۙۖۡۙۗۜۘۦۦۧۘۨۙۛۜۗ۫۫ۗ۠۬ۙۨۘ۠ۜۜۘۧۤۥۨۖۧۡۡۖۘۧۧۜۛۛ۠ۗۨۤ";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000Ooo) ^ 243) ^ me.o0000Ooo) ^ 1409983634) {
                case -1807220345:
                    return;
                case -1515629923:
                    intent = new Intent(context, (Class<?>) StudioBindActivity.class);
                    str = "ۤۡۨۘۗۚۖۘۥۥۘۛۛۨۦۦۛ۬ۜۜ۟ۡۥۗۨۨۧۥۡۖۚۘۙۨۜۘۨۨۘ";
                    break;
                case -949729692:
                    context.startActivity(intent);
                    str = "ۛۛۗۖ۠ۥۘۗۛۨۘۨۘۡۘۚ۟ۦۗۖۨۘ۫ۡۘۘۛۡ۠ۗۥۗ۬ۧۘۘۨۤۗ۟ۗۨۘۖۖۦۘ۬ۙۧ";
                    break;
                case -770591191:
                    str = "ۙۗۡۤ۬ۤۢ۠۬ۢ۬ۛۦۦۤ۫ۖۙ۠ۥۛۘۛۦۗۡۢۥۢۚۧۚۨۛۖۘۥۦۖۚ۟۟ۦۜۜ۬ۜۢۘۘۚۥۘۘ";
                    break;
                case 827705396:
                    intent.addFlags(268435456);
                    str = "ۨۥۥۘ۫ۢۦ۠ۢۡۥۦۨۘۚۛۘۢ۬ۥۘ۠ۗۜ۫ۦ۫۫ۘۧۨۗۨۘۙۘۧ۟ۧ۫۫ۚۢ۟۬ۜۦۖۦۚ۠۟";
                    break;
            }
        }
    }

    public static void OooOOO0(Context context, boolean z) {
        Intent intent = null;
        String str = "ۧۥۨ۫ۜۨۘۗۗۦۖۚۚۤۘۧۢۡۚۙۗۤۧۙۤ۟ۡۦۘۥۧۧۗۖۗۤۛۖۘۖۦۥۤۜۦۖۘۜۘۘۘۧۚۧۛۘۙۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 804) ^ 383) ^ 72) ^ 1066966945) {
                case -2127232665:
                    context.startActivity(intent);
                    str = "ۤۦۦۘۚۧۤۨۥۦۖ۠ۛۦۥۖۦۚۦۘۘۧۦۘۦۘۛۨ۟ۥۘۢ۟ۢۖۤۨۘۜۗۦۘۚ۠۠۠ۖۛۡۘۨۖۧۘ";
                    break;
                case -1168099913:
                    str = "۟ۧۧۡۜۘ۟ۡۤۧۚ۠ۗ۠ۢۤ۬ۖۖۗۥۘۙۙ۬۠ۚ۟۬ۛۜۙۡۙۤۡۘۨ۟ۜۨۦۦۦۧۥۡۜۢ";
                    break;
                case -50281885:
                    return;
                case 426423833:
                    intent.putExtra("is_change", z);
                    str = "ۙۦۥۘۥ۟۟۟ۛۥۨ۫ۘۜۤۦۘۥۥۛۚۢۥۘۧۜۘۛۥۘۧۢۨۧ۠ۙۚۢۦ";
                    break;
                case 1316683680:
                    str = "ۖ۟ۦۘ۠ۛۨۜۖۘۘۢۢ۬۟۬ۡۘۛۚۦۘۨۘۢۗۛۨۨۛ۫ۨۚ۬ۘۡۛۡۥۨۘ۫ۜۘۚۖۦۘ۬ۡۗ۠ۙ";
                    break;
                case 1773415697:
                    intent = new Intent(context, (Class<?>) StudioBindActivity.class);
                    str = "ۜۦۤۧۜۤ۠ۥۚۨۥۢ۫ۡۖۧ۠ۧۨۖۖ۬ۛۜۘۜۚۘۖۥۖۘ";
                    break;
            }
        }
    }

    private void OooOOOO() {
        String str = "ۙۧۜ۬ۡۜۨۤۘ۠۠ۥۘۖۛۦۘۙۖ۫۫ۘۥۘۥۧۘۢۚ۟ۚ۟ۦۘۚۜۜ۬۟ۡۘ۠ۙۚۗۛۦۦۡۡۘۤۛۧۜۤۘۨ۠۠";
        StringBuilder sb = null;
        String strTrim = null;
        while (true) {
            switch ((((str.hashCode() ^ 920) ^ 234) ^ 977) ^ 1663035848) {
                case -2047797874:
                    str = "۠ۗۨ۬ۖۧ۟ۙۘۘ۠ۘۜۘ۬ۦۖۘۛۗۨۙۜ۬ۚۛۢۗۙۜۘۢۜۜۘۖۢۤۧۤۘۥۗۙ۫۠ۜۜۚۥۤۗ";
                    strTrim = this.Oooooo0.getText().toString().trim();
                    continue;
                case -1746272661:
                    sb.append(",scriptUIPContent=");
                    str = "ۦۡۥۘۦۗۘۘۥۗۚۛ۬ۧۖۚ۟ۦۚۧۨۥۘ۟ۜ۫ۙۜۛ۫ۙۘۘ۟ۡۘۨۡۖۘ۫ۖۡ۠ۢۜۘۥۨۦۚۧۜۘ";
                    continue;
                case -1635009274:
                    c5.OooO0Oo(getApplicationContext(), R.string.project_number_number_can_not_empty);
                    str = "۫ۤ۠۟ۜۗۘۨۦۘۜۖۙۜۘۘۧۖۡۤۖۦۘۗ۫ۢۖۛۜۘ۬۫ۘۘۧ۟۠۬ۘۧۘ۠ۢۦۘۖۚۖۘۖۧ۬۟ۧۥ۫۫ۚۛۙۨ";
                    continue;
                case -1104780045:
                    sb.toString();
                    str = "ۖۨۨۘۢۡۦۘ۟ۙۚۥۥۨۤۖۚ۟۫ۜۗۤۦۘۡ۟ۦۘۜ۠ۡۘۥۘۦۡۦۖۧ۬ۛۧۥۦۘۢ۬ۛ";
                    continue;
                case -1051869309:
                    str = "ۚۙۥۘۢۙ۫ۜۢۙۡۘۘۘۚۦۜۧۙۚ۫ۜۡۨۘۘۖ۫ۡۘۢۦۧ۠ۚۜۥۘۘ۫ۨۥۘۡۚ۠";
                    sb = new StringBuilder();
                    continue;
                case -649187747:
                    String str2 = "۠ۡۥۥۖۖۘۤۨۢۤۛ۟ۚۤۜۘۧ۟ۥۘ۫ۜۧۘۥۦۨۙۘۜۘ۠ۦ۬";
                    while (true) {
                        switch (str2.hashCode() ^ 1188244023) {
                            case -1172287778:
                                break;
                            case 685840123:
                                str2 = "ۡۛۧۢۥۧۤۘۜۘۢۗۚۧۨۡۢ۠ۥۘۜۢ۟۠۬ۨۗۖۙۤۦۤۢۚۖ۫ۜۘۢ۫ۨۦۜۗ";
                                break;
                            case 1687655567:
                                String str3 = "۬ۖۧ۟ۜۧۘ۬ۡۥۘۛۜۖۧۚۙۦۤۜۘۘۙۖۛۛۚۥۧۖۘ۫ۡۘۙۙۖ۫۬ۜۖۧۤۚۨۤۧۧۨۘ۟ۗۚ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1238335138)) {
                                        case -1774221455:
                                            str3 = !TextUtils.isEmpty(this.OoooooO) ? "ۤۗۦۖ۠ۖۨ۬۟۬۫ۨۘۧۢۡۘ۟ۡۥۛۤۦۘ۟۫ۦۘۖۢۚۡۦۚ" : "۠۫۟۬۠ۡۘۜ۬ۦۘۧۦۢ۬ۘۜۘۧ۬ۗۨۛ۫ۚۚۥۘ۫ۨۘۚۤۜۘۦۧۤ۠۟";
                                            break;
                                        case -1095989349:
                                            str2 = "ۗۛ۟ۡۖۧۨۚۦۘۛۢۖۘ۟ۗۧۛۛۧۚۡ۫ۜۛۚۖۥ۫ۥۧۖ۠۟ۜۘۡۥۖۘ";
                                            break;
                                        case -795260134:
                                            str2 = "ۧۘۢۛۜۦ۬ۢ۬۫ۨۜۘۜۘۥۘۖۙۥۨۦۤ۠۠ۨۘۛۖ۟ۙۙ۬۫ۦۥۘۨۙۛۡ۬ۚ۠۟ۡ";
                                            break;
                                        case 1302952574:
                                            str3 = "ۖۦۗۤۖۧۘۨ۟ۙۤۙۨۥۙۧۘ۬ۜۘ۟ۤۥۧ۟ۧ۟۬ۦۧۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 2112974590:
                                str = "ۡۧۦۘۖۗۨۡۘۧۘۨ۬ۦۧۧۜ۠۟ۧ۬ۧ۟ۜۤۖۘۜۢۛۤۘۢۚۡۨ۬ۙۨۘۦۧ۬ۘۛۘۘۦۥۜۨۙۥۥۖۨۛ";
                                break;
                        }
                    }
                    break;
                case -590670496:
                    String str4 = "ۦۜۡۘۛ۬ۧ۫ۙۚۥۛۖۘۨۢ۠ۥۥۜ۫ۤ۠ۥۡۙۡۤۨۗ۟ۚۡۦۛ۠";
                    while (true) {
                        switch (str4.hashCode() ^ 1648369988) {
                            case -2079269469:
                                str = "ۧۜۜۘۦ۫ۛ۠۬ۦۤۧ۫۬ۜۘۖۥۦۘۨۧۤۦۨۘۢ۟ۗۢۘۧۘ۫ۧۡۥۗ۫ۧ۠ۙۚ۫ۥۘۙۨۘۘۚ۬ۙۜۙۙۘۧۖ";
                                continue;
                            case -924257830:
                                String str5 = "ۗ۬۟ۤ۬ۨۘۧۚۤ۠ۡۙۛۖۤ۟ۥۜۜۢ۬ۦ۬۬ۛۗۢۦۘۨۘۥۤۢۦ۫ۤۚ۫ۚۗۦ۫ۛۖۧۘۥ۬ۢ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1464424573)) {
                                        case -2047887107:
                                            str5 = "ۘۘ۫ۨۗۛ۫ۗۘ۟ۡۜۨۢ۬ۤۚۤۤ۬ۚۡ۟ۚ۬ۜۘۦۜۙ۟ۜۘۚ۠ۚ";
                                            break;
                                        case -299306963:
                                            str5 = TextUtils.isEmpty(strTrim) ? "ۧ۬ۜۘۙ۟ۤۧۛۤۤۖۤۖۢۖۘ۫ۜۖۘۤۜۨۘۘۛۨۖۦۜۘۛۚۨۙ۫ۘۘۤ۠ۥ۟ۤۛۛۙۗۢۥۘ۠ۜۥ۠ۤۡۘ۬ۡۜ" : "ۜۡۜۘۙۥۚۗۙ۬ۖۛۗۡۙۜۥۚۨۗ۠ۥۥۤۗۥۧۘۙۜ";
                                            break;
                                        case 839677946:
                                            str4 = "ۥۜۨ۫ۥۙۘۖۡ۫ۚۜۥۢۖۜ۫ۦۨۙۛۙۥۦۘ۬ۗ۬ۜۦۜۘۤۦۜۘۨۜۜۘۥۖۡۡۧۚۧۘۡ۬ۨۥۘۤۥۦۘۜۦۥۘ";
                                            break;
                                        case 1856661034:
                                            str4 = "ۙۚۖۙۡ۬ۘۡۦۘ۫ۢ۬۬ۢۤۚۙۜۘ۫ۧۘۛ۟۠ۨۨۡۘۨۜۦۘ۟ۢۦۤۘۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case -421025940:
                                str = "ۥۧۦۘۨۧۡۚۙۤ۠ۨ۬ۤۢۨ۫ۢۡۢۘۤۖۦۖۘۧۗۚۖۥۡۘۥۤۨۘۜۨۡۘۢۖۨۘۢۦۘ";
                                continue;
                                continue;
                            case 1284088584:
                                str4 = "ۗۢۦۘۗۦۘۘۡ۟۫ۢۖۥۘۤۨۛۧۦۤۛۖ۫ۤۘۡۧۦۥۖۧۘ۟ۥۧۦۡۡۥۖۨۘۨ۬ۤۜۙ۬ۢ۫ۤۦۡۨۘۛۥ";
                                break;
                        }
                    }
                    break;
                case -439549684:
                case -180310741:
                    return;
                case 549959677:
                    this.o00Oo0 = false;
                    str = "ۘ۬ۧۘۡۜۘۘۖۘۤ۟ۦۘۦۨۙۙ۟ۤۘ۟ۙ۬ۚۧۦ۫ۘۘۥ۠ۤۜۗۛۡۙۙ";
                    continue;
                case 709119658:
                    String str6 = "ۘۥۙۛۧ۠ۜۥۛۦ۫۬ۘۦۢ۠ۜۨۥۖ۟ۨۘ۫۟۫۫۫ۖ۟۠ۦۚۧۨۘۛۡۘۘۚۨۧۘۗ۬ۜۘۚۨ۬";
                    while (true) {
                        switch (str6.hashCode() ^ 1625783929) {
                            case -2067702032:
                                str = "ۙۚۨۦۗ۠ۤۡ۠۠ۨۨۘۥ۟ۥۨۧۧۧۥۥۘۧ۟ۨۘۤۦۤۚۢۨۙۨۗ۠ۧۖۘ۠۫ۡۡ۟۬ۥۢۘۘۨۢ۬ۦ۬ۦۘ۬ۛۜۘ";
                                break;
                            case -2049391035:
                                break;
                            case -1634541578:
                                str6 = "۠۟ۡ۠۬ۡۗۗۧۘ۫ۙ۫۟ۚۛۚۖۗۨۦۛۙۥۘۧۙۘ۬ۖۜۘ";
                                break;
                            case -830530697:
                                String str7 = "ۗۖ۬ۜۚۜۘۜۢۨۘۨ۬ۧۧۥۤۡ۟۠ۗ۟۠ۛۚۖۘۘۦۜۘۨۤۜۘۖ۫ۢۥۜۘۜ۠۠ۡۖۥۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 752757031) {
                                        case 687700337:
                                            str6 = "ۜۙۙۧۤۨۨۛۡۘۢۢۙ۬ۙۘ۠ۧۡۘۘ۬ۜۘۨۘۚ۠ۖۘۨۜۨۦۙۗۤ۫ۖ۠ۦۥ۟ۖۘۘۖ۬ۧۙۡۘۚۡۚۛۢۜۘ";
                                            break;
                                        case 1668345072:
                                            str7 = this.o00Oo0 ? "ۤۙۙۨۙۦۦۗۖۘۢۤۛ۬ۛۥۨۡۦۤۢۜۘۦۜۧۜۥۧ۠ۛۖۗۖۜۘ۟۟ۛۖۥۧۙۖۘۢۤۡۘۥۡۥۘ۬ۦ۟ۢۗ" : "ۢ۫ۨۘۡۥ۫ۤۧۨۡۜۚۢۥۚ۟۠ۥۗۢ۫ۧۡۛۨۤ۟ۨۗۡ۠۠ۥۡۖۥۘۦۤ۬ۙۦۘۡۥ۟۟ۚۡ";
                                            break;
                                        case 2137276631:
                                            str6 = "۟ۡۛۡۥۦۡۥۖۘ۫ۢۡ۠ۦۡۜۖۤ۟ۜۢ۬ۡۖ۠۠ۛ۠ۥۙۦۘ۠ۗۛۦۘۦۤۙ۠ۗۙۛۦ۠ۨ۟ۜۘ";
                                            break;
                                        case 2142333456:
                                            str7 = "ۗ۠ۨ۬ۤۧۧۡۦۘ۟ۤۨۘ۫ۢۥۛۘۘ۫ۚ۟۟ۧ۠ۦۢۥۘۤ۬۫ۖۨۘۢ۫ۨۖۗۡ۟ۤ۠۬ۚۡۘۚۗۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 881609374:
                    this.Ooooooo = strTrim;
                    str = "۬۫ۖۘۚۚ۬ۢۧۙۚ۫ۘۘۧ۬ۧۧۤ۬ۡ۫۬ۜۗۥۘۛۜۦۧۙ۟۬ۗ۫۫ۖۨۘۥۘۚ۟ۡ۠ۛۨۛۥۥۘ";
                    continue;
                case 1228180081:
                    str = "ۜۛۜۘۨۜۥۘۘۗۛۖۢۡۘۦ۟ۦۧۖۖۗۚۖۘۛۦۦۘۡ۫ۘۘ۬ۘۚۢۜ۠ۢۙ۫۟۠ۡۡ۟";
                    continue;
                case 1306945392:
                    rc.OooO0oO().OooO0OO(this, this.Ooooooo, this.OoooooO, this.o0OoOo0, this.ooOO, this.o00O0O, new OooO00o(this));
                    str = "ۙۚۖۗۜۖۘۚۧۗۜۘۗۙۦۦۘ۬ۗۦۘۢ۬ۘۘۛۚۤۡ۫ۨ۠ۘۤ";
                    continue;
                case 1652789424:
                    sb.append(this.ooOO);
                    str = "ۗ۫۫ۙۙۖۘ۬۠ۡۧۜۤۤۦۙۦ۠ۙۚۗۨۘ۫۬ۦۘۜۘۛۦۢ";
                    continue;
                case 1959607230:
                    sb.append("bindStudioProject --> scriptCFGContent=");
                    str = "ۛۧۦۘۘۘۧۘۖۥۦۘۢۧۖۘۚ۫ۤ۫ۛۚ۠ۤۗۧۙ۠ۧۨۘۘۦۡۘۛ۟ۢۦۧۛۤ۬ۖۘ۟ۨۖ";
                    continue;
                case 2029836031:
                    sb.append(this.o00O0O);
                    str = "۫ۨۘ۬۫۠ۚۙۘۘۨۥۥۘ۟۠ۡۦ۬ۧ۬ۨۘۘ۫ۚ۟ۙۛۛۥ۫ۨۘۤۙۘۘ۠ۚ۠";
                    continue;
            }
            str = "ۙۚۖۗۜۖۘۚۧۗۜۘۗۙۦۦۘ۬ۗۦۘۢ۬ۘۘۛۚۤۡ۫ۨ۠ۘۤ";
        }
    }

    private void OooOOOo() {
        String str = "ۤ۠ۜۘۙۛۜۨ۟ۦ۠ۗ۟ۗۗۗۡ۠ۥۡۖ۠ۥۜۜۛۖ۬ۢۧ۫ۖۢۢۖۢۛۢ۫۠ۘۖ";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000Ooo) ^ 547) ^ 930) ^ (-78864839)) {
                case -1526203344:
                    return;
                case -1299878850:
                    str = "ۗ۟ۘۘۧۘۖۘ۟ۘۡۡ۫ۦۘۨۚۨۘۢۖۗ۫ۚۢۗ۠ۡۚۨ۟۬ۖۜۤ۬۬ۧۖۜۘۢۚ۫۟۠ۘ۠ۛۙۖ۠ۥ";
                    break;
                case -1164074769:
                    this.Oooooo.setTitleText(R.string.already_bind_project_number);
                    str = "ۢۖۥۘ۫۠ۨۘۙۧۖۘۙ۠ۖ۟۬ۤۤۗۜۘۙۧۜۘۧ۟ۤ۟ۖۘ۫ۥۧۧۦۡۘ۬۟۟ۛۤۨۘۘ۫ۢۗۙۥ۟ۗ۬ۖۖۖۗۖۘۘ";
                    break;
                case -783130510:
                    this.Oooooo.setOnLeftImageViewListener(new TitleView.OooO0O0() { // from class: z2.m9
                        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
                        public final void onClick(View view) {
                            this.OooO00o.OooOOo(view);
                        }
                    });
                    str = "۠ۘۜۦۛۙۤۘۨۘۙۤۥ۫ۘ۟۟ۨۥۘۡۦۖۘۙۦۥۨۘۖۧۖۘۘۗۦۖۘۥۘۜۘ۟ۨۦۖ۫ۡۡۘۥۙ۟ۦۘ";
                    break;
                case -736725228:
                    this.Oooooo.setVisibilityLeftImage(0);
                    str = "ۧۘۥۘ۬ۖۨۡۨ۟ۢ۫ۛۚ۫ۙ۟ۧۘۘۙۦ۠ۚۖ۫ۤ۫ۥۘۗ۟۟";
                    break;
                case 502888102:
                    this.Oooooo.setVisibilityRightImage(4);
                    str = "۬ۖۧۥۛۜۥ۠ۖۘۚۦۢۛۖۗۤۦۘۡ۠ۥۘ۫ۢۧ۠ۤۥۘ۠۟ۗ";
                    break;
                case 1256602552:
                    this.Oooooo.setleftImage(R.drawable.ic_back);
                    str = "ۨۘۖ۠ۜۘۘۥ۟ۧۧۤۥۘ۫۫ۛۡ۫ۦۘ۫ۖۙۚۥۖۢ۠ۦۘۦ۠ۡۥۨۡۢۥۗ۬ۚۘۘۖۗۡۘۡۧۡ۟ۜۧۘ";
                    break;
            }
        }
    }

    private /* synthetic */ void OooOOo0(View view) {
        String str = "۬۫ۘۘۚۘۨ۫ۖۤۖۖ۫ۛ۫ۜۘۢۘۡۘۛ۟ۥۘۙۥۜۧۛۛۜۜۗۚۤ۫۟ۜۨۢۛۡۘۘۘۨۜۡۘۨ۠۫ۘۗۖۘ۬ۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 200) ^ 971) ^ 873) ^ (-1478508590)) {
                case -1954403614:
                    finish();
                    str = "ۧۖ۠ۡ۫۬ۜۨۘ۟ۖۗ۟ۛ۬ۨۚۖۢۘۗۡ۫ۥۘ۫ۥۧ۠ۚ۫ۘۦۚ۬ۗۥۡۖۥۤۘۦۘ";
                    break;
                case -778911030:
                    str = "۫ۡۖۘۖ۟ۡۘۥۜۥۤۜۖ۬ۙ۠ۥۧۦۛۘۦۤۥۜۜۨۡ۫ۦۜۧۘۖۘۥۦۜۥ۫ۤۧۚۨۛۦۦۢ۠۫";
                    break;
                case -667935353:
                    return;
                case 150820514:
                    str = "۫۬ۚۚ۫ۖۧۖۦۘۛۤۙۚۜۨۘۘۤ۠۠۠ۥۘۧ۫ۦۜۦۧۖۡۨۚ۟ۥۘ۠ۚۜ";
                    break;
            }
        }
    }

    private void initData() {
        this.o00Ooo = getIntent().getBooleanExtra("is_change", false);
        String str = "studioProjectNumber:" + AppContext.OooO00o().OoooOoO;
        Script scriptOooO0oO = b7.OooO0Oo().OooO0oO();
        String str2 = "ۧۚ۫ۡۖۜۘۘۖ۟ۗۥۚۖۜۦۘۨۨۤۚۖۘۗ۠ۤۛ۠ۥۘۚۨۜۘ";
        while (true) {
            switch (str2.hashCode() ^ (-1051375037)) {
                case -884431300:
                    return;
                case 217082946:
                    str2 = "ۜۦۡۘۦۚۢۦۘۦۘ۬ۧۙۘۖ۟ۘۥۢۖۗۢۜ۠ۖۥۦۘ۬ۢۗۛۢۚ۠ۖۧۘ۟۟ۢۤۖ";
                    break;
                case 342134325:
                    try {
                        l10.OooO0o().OooOOOO(new MsgItem(MsgItem.SCRIPT_UI_SAVE_CFG));
                        this.OoooooO = scriptOooO0oO.getId();
                        this.Ooooooo = AppContext.OooO00o().OoooOoO;
                        this.o0OoOo0 = c9.OooO0o(this, b7.OooO0Oo().OooO0O0);
                        this.ooOO = c9.OooO0oO(this, b7.OooO0Oo().OooO0O0);
                        this.o00O0O = c9.OooO0Oo(this);
                        String str3 = "initData --> scriptUIPContent=" + this.ooOO + ",mScriptCFGContent=" + this.o00O0O;
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 1198159674:
                    String str4 = "۬ۖۗۜ۠ۚ۫ۖۛۥۨۦۘۜۛۘۘۚۚۢۖۦۜ۫ۢۧ۟ۦۖۨۡ۬ۖۢۡۧۥۗۜ۟ۡۧۚۡۘۘۙۥۘۗۦۙ۬ۙۨۘ۫ۚ۠";
                    while (true) {
                        switch (str4.hashCode() ^ 1077112929) {
                            case -1820469313:
                                str2 = "ۥۚۘۘۥۗۤۡۨۘۨۜۧ۫ۖۚۦۥۗۤۚۧۧۚۥ۟ۚۧۨۖۨۘ";
                                continue;
                            case -906069614:
                                str4 = "ۗۛۧۖۥۨ۬ۡۗۛۢ۬۬ۘۘۘۗۖ۫ۤۨۜۥ۟۠۟ۦۖۗۡ۫ۘۖۤۦۥ";
                                break;
                            case -660265742:
                                str4 = scriptOooO0oO == null ? "ۡۦۤۥ۟ۢۛۧ۬ۗۜۜۘۘۦۘۘۛۨۜۢۜۦۛۘۘۜ۫ۙۦۡۢۨۤۘۘۘۜۘۦۙ۠ۛ۫" : "ۙۡ۬ۢۖۧۘۗۖۖ۠ۧۖۘۤۗۛۚۥۡ۟۬ۜۘۨ۫ۦۚۤۖ۬ۗۨۨۦۙۨ";
                                break;
                            case -313670757:
                                str2 = "ۧۦۧۧۘۖۘۧۘۘۡۦۜۨۚۦ۟۫ۧۡۙۡۧ۬ۛۥۧۗۚۘۖۘۦۜۨۘۚۛۜ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    private void initListener() {
        String str = "ۖ۟ۘ۟ۡۗۤۦۘۖۘۚۢۚۨۥ۟ۗۜۘۦۡ۟ۦۘۥ۟ۖۘۦۖۜۖ۫ۚۢۛۡ";
        while (true) {
            switch ((((str.hashCode() ^ 722) ^ 16) ^ 446) ^ 306687988) {
                case -1473086460:
                    return;
                case -777175354:
                    str = "ۢۤۥۘۧ۬ۙۙۦۥۘۦۚۗۙ۠ۨۛ۫ۛۜۢۛۢۦۡۘ۟ۥۥۘۤۘۗۘۧۧۢ۟۟۬ۧۦۧۜ۟۠ۤۢۘۗۨ";
                    break;
                case 1780453524:
                    this.OooooOo.setOnClickListener(this);
                    str = "ۛۛ۠ۗۥۤۛ۠ۛۥۤ۠ۘۡۨ۫ۡۘۜ۬ۜۤۘ۟ۙ۠ۨۨۥۚۤ۫ۛ۠ۨۘ۟ۤ۠ۢۘ۬ۡۡۛۢۤۖ۠۟ۚۘۘۘ";
                    break;
            }
        }
    }

    private void initView() {
        TitleView titleView = null;
        String str = "ۘۡ۫ۥۥۢۗۚۥۘۢۛۜۢۘۗۧۦۡۖ۠ۖۥ۫۠ۦۧۖۚۨۡ۬ۘۘۦ۠ۨ";
        while (true) {
            switch ((((str.hashCode() ^ 898) ^ 766) ^ 233) ^ 254175653) {
                case -1988157242:
                    this.OooooOo = (TextView) findViewById(R.id.tv_studio_bind);
                    str = "ۨۜۢۨۜۡۖۢۨۘۡ۠ۥۘۨۡۡۘ۬ۥۜۘۚ۫ۡۘۢۢ۫ۢۗۛ۬ۙۘۘ۫ۖ۟ۗ۟ۖۘۢۥۜۗۦۧۡ۠ۨۤۤۗۦۥۥۘۛۙۦۘ";
                    break;
                case -1212470868:
                    str = "ۚ۫ۗۢۦ۬ۧۦ۬ۥ۬ۜۘۤۗۨۘۥ۫۫ۦۖۜۢۛۦۡۗۘۤۥۗۚۙۚ۬ۛۥۜ۠ۦۘۤۤۨۗۙ۫ۖ۬ۜۘۘۖۜۘ";
                    break;
                case -1092877857:
                    titleView.setVisibilityTvRight(0);
                    str = "ۧۦۜۦۘۧۘۚۧۘۘ۬ۙ۟ۤۛۜۥ۠ۚۘۥۚ۫ۡۘۖۨۤۡۜۚۧۙۡۙۦۢ۟۫ۨۘۖۗۦۘ";
                    break;
                case -1070473577:
                    str = "ۜ۠۠ۤۤۛۢۡۙۗۖۥ۫ۜۦۘ۬ۥۖۘۖ۫ۙۙۘۙۡ۠ۥۘۢۢۙۘۢ۠ۙۘۚ";
                    titleView = (TitleView) findViewById(R.id.titleView);
                    break;
                case 827206461:
                    return;
                case 1926661213:
                    this.Oooooo = titleView;
                    str = "ۧۤۡۗۘۜۘۖۢۦۜۡۨۥۨۡۦۖۘۡۚۡۘ۟ۙۗۚۜ۠ۗۘۥۘۥ۫ۛۤۘۙۖۘۗۚۛۨۘۨۢۧۗۧۨۜۢۜۦۥۖۘ";
                    break;
                case 1976375867:
                    this.Oooooo0 = (EditText) findViewById(R.id.et_studio_project_key);
                    str = "ۡ۟۠ۙۖۧۘۧۨۦۧ۫۟ۘۖ۬۟ۡۖ۫ۚۢۙۥۨۘ۫ۧۥۙ۬ۦ";
                    break;
            }
        }
    }

    public /* synthetic */ void OooOOo(View view) {
        String str = "ۨۗۢۢۘ۟۠ۜۘۤۡۜۘۦۦ۬ۤۡ۟۟۟۠ۚ۠۫ۨ۟۬ۚ۫۬۟ۦۘۗۜۜۘۘۚۥۦۦۘۘۚۘۦۘۧۖۡ";
        while (true) {
            switch ((((str.hashCode() ^ 223) ^ 839) ^ 73) ^ 1523495766) {
                case -1727911763:
                    return;
                case -1483332714:
                    str = "ۙۢۨۘۦۜ۠ۨۚۘۨۜۥۘ۫ۘۥ۬۬ۧۦۡۦۗ۠ۘۦۙۘۘۨۥ۫۫۫ۢۙۨۥۘ";
                    break;
                case 126875648:
                    OooOOo0(view);
                    str = "ۙۦۡۘۥۚۜۘۚۥۦۥۧۘۥۙۤۘۤۥۘۘۨۦۘ۫۠ۖۘ۟ۗۛۥ۬ۙۢۢۥۧۙۨۘۛۨۙۡۢۚ۬ۢۛۖۧۦۥۤ۬ۖۛ۟";
                    break;
                case 1316811103:
                    str = "۠ۦۦۤۙۡۖۢ۬ۚۖۥۘۢ۫۫ۘۦۤ۫ۙ۫ۙۛۡۘۜۜۡۡ۠ۨۘۚۖۘۗۛۘۤۘۤۘۖۖۘ";
                    break;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "ۘۢۚۦۢۚۛۥۜۘ۠ۤۡۘۜۤۦۗ۬ۨۘ۟ۥۙۖۜۖۘۡ۟ۜۘ۬ۡۜۗۗۨۘۚۨ۫ۚۢ۟ۘۥ";
        while (true) {
            switch ((((str.hashCode() ^ 757) ^ 427) ^ 165) ^ (-1990225962)) {
                case -269499229:
                    OooOOOO();
                    str = "۟ۛ۫ۗۜۢۜۥ۠ۥ۟ۥۘ۟۟ۦۧۢ۟ۡۛۘ۫ۥۢۛۗۖۘ۬ۨ۫ۨ۫ۡۘۚۖ۟۠ۢۜ۫ۖ۟ۥ۬ۙ۟ۚۡ";
                    break;
                case 664533562:
                    str = "ۨۜ۫ۜ۬ۘۘۚۗۘۘ۫ۢۡۘۛۧۜۚۜۘۧۥۧۘ۫ۘۘۘۚ۟ۙۛۢۦۘۚۨۨۘۥۥۘۤ۠ۧۦۤۦۘ۠ۛ۟۬ۚ";
                    break;
                case 987743285:
                    String str2 = "ۜۧۘۦۨۚۙۢۘۘۥۢۧۥۘۖۥۖۦۨۦ۟ۢ۬ۙۘ۟ۡ۫۠ۦۜۤ۫ۧ۬ۨۗۨۛ۠ۨۨۡۢۛۥ۫ۜ";
                    while (true) {
                        switch (str2.hashCode() ^ 1226064451) {
                            case -382718492:
                                str2 = "ۜۛ۠ۘۧۗ۫ۥۤۡ۫۟۠ۥ۬ۦۘۧ۟۬ۡۘۧۙۡۘ۠ۨۖۘۛۜۧۤۛ۫ۘۡۖۢۧۗۥۖۘۢۤۚ۫۠ۜۘ";
                                break;
                            case -113451652:
                                String str3 = "ۢۢۨۢۥۚۤۚۘۧۚۚ۟ۦ۠ۘ۠ۖ۬ۗۧۖۛۥۖ۠ۦۛۚۚۢ۟۬ۜۛۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1510573450) {
                                        case -1374987492:
                                            str2 = "ۢۖۘۘۘ۬۫ۤ۟ۨۘۦۥۥۥۧۘ۫ۘ۬ۧ۠ۜۡۖۘۘۖۚۧ۟ۤۧ۬ۗۨۗۤۡۘۡۚۤۗۨۘ";
                                            break;
                                        case -1305200050:
                                            str2 = "ۘۗۨۘۜۜۜۗۗۘۨ۠ۤ۫ۧۖۘۦۛۡ۠ۡۖۜۡۢۢۧۤۜۥۖ";
                                            break;
                                        case -1173151029:
                                            str3 = "۬ۡۖۡۡۘۢۦۨ۟ۡۜۘۨۢۦ۫ۚۗۥۨۘۥ۫ۡۘۛ۟۬ۗۛۗۤۘ۫ۢ۫۬ۧۖۦۨۚ۬ۨۚۛۨۚ";
                                            break;
                                        case -382933784:
                                            str3 = view.getId() != R.id.tv_studio_bind ? "ۡۘۤۜۚۦۘۚ۬ۘۘۢۛۥۘۘۖۦ۠ۥۡۘۛۨۚۦ۠۟ۡۜۘۘ۠ۙۘۘۡۜۙۜ۬ۦۘۤ۠ۘۢۜ۟۬ۤۦۤۤۛ" : "۫۫ۥۧۥۧۘۤۜۢۥۧۨۛۘۨۘ۟۬ۥۤ۠ۗۙۚۜ۫ۦۘۦ۬ۧۡۥۧۘۗ۫ۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1218791407:
                                str = "ۙۦ۫۟۫ۘۘۗۖۤۛۘۛۙۧۥۘۢۧ۫۬۟ۥ۬ۖۤۗۨۦۚۨۘ";
                                continue;
                            case 1547816256:
                                str = "ۗۨۜۘ۟ۜۗۖۜ۟۠ۜۛۡ۬ۡۚۘۧۡۜۗ۫ۜۦۙۖۦۛ۟";
                                continue;
                        }
                    }
                    break;
                case 1019569650:
                    str = "۟ۛ۫ۗۜۢۜۥ۠ۥ۟ۥۘ۟۟ۦۧۢ۟ۡۛۘ۫ۥۢۛۗۖۘ۬ۨ۫ۨ۫ۡۘۚۖ۟۠ۢۜ۫ۖ۟ۥ۬ۙ۟ۚۡ";
                    break;
                case 1119599024:
                    str = "۫ۜۚۦۡۗۧۨۧۥۘۡۘ۠ۧۨۘ۫۠ۦۦۜۡۘۨۥۗۛۧۥۘ۫۠ۥۘ";
                    break;
                case 1513769033:
                    return;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "۠ۧ۬۠۫ۨۙ۫ۡ۟ۘۨۘ۟ۗۘۘۡ۠ۗۦۡۘۧۖۗۧۤۡۘۖۦۡۘ۫ۛۚۢۘۚ";
        while (true) {
            switch ((((str.hashCode() ^ 823) ^ 818) ^ 110) ^ (-2076981505)) {
                case -1296576649:
                    return;
                case -729155765:
                    OooOOOo();
                    str = "ۤۙۦۘۦۘۜۘۦ۫ۨۘۗ۟ۚۨۗۚۚۤۢۦۘۦ۫ۛ۫ۨۙ۫ۖ۫ۥۧۡۘۨ۬ۧۡ۫ۚۘۘۤۘۜۘۤۙ";
                    break;
                case -675072504:
                    super.onCreate(bundle);
                    str = "ۖۖۦۢ۫ۖۛ۬ۖۘۦۚۜۘۖۘۧۘۘۛۡۘ۠ۥۜۘۡۛۖۚ۫ۨۦۤ۠";
                    break;
                case 161850171:
                    setContentView(R.layout.activity_studio_bind);
                    str = "۬۟۫ۧۧۥۥۖۘ۟ۨۤۥ۫ۡۘۢۢۜۨۚۚۙۘۥۖۘۤۨ۟ۜۡۦۛۢ۠";
                    break;
                case 669162337:
                    initView();
                    str = "ۦ۟ۛۘۜ۬۫ۘۡۘۘۨ۫ۙۛۘۘۦ۟۠ۨۙۚ۟ۗۜۘۦ۬ۗۙ۟ۢۨ۟۟۠ۘۥۘ";
                    break;
                case 674375604:
                    str = "ۜۜۙۥۛۗۙۡۖ۠ۗ۟ۚ۬ۜۡۘۦۘ۫ۜۤۡۦۜۨ۠ۜ۫ۥۜۘۗ۬ۧۗۗ۫۟ۖۙۦۘ";
                    break;
                case 738596970:
                    initData();
                    str = "ۗۛۦ۟۫ۥ۟ۚۘۘۡۤۙۨۚۢۙ۬ۡۘۗۡۨ۠ۙۡۘۡۜۛ۬ۨۡۜ۬ۘۘۘۥۥ";
                    break;
                case 1396258402:
                    str = "ۙۤ۟ۜۚۤۜۡۨ۬ۥ۟ۤۛۘۙۦۤۨۜۦۗۘۡۘۤۙ۠۬ۜۘ";
                    break;
                case 1426938239:
                    initListener();
                    str = "۫ۥۨۗۖۘۘۜ۟ۡۡۗۧۨۘۥۜ۟ۜۘۤۢۦ۟۫ۦۘۤ۟ۡۘۨۙۨۘۨۢ۫۠ۛۗۦۡۛۗۤۖۛۦۚ۬ۤۨ۠ۖۡۤۚۜۘ";
                    break;
            }
        }
    }
}
