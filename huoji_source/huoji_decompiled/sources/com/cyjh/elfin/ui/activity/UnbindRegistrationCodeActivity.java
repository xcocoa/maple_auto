package com.cyjh.elfin.ui.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.lifecycle.Observer;
import com.ac.R;
import com.anythink.expressad.d.a.b;
import com.anythink.expressad.video.module.a.a.m;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.umeng.analytics.MobclickAgent;
import z2.c5;
import z2.m7;
import z2.ra;
import z2.t4;

/* JADX INFO: loaded from: classes.dex */
public class UnbindRegistrationCodeActivity extends BaseModelActivity<ra> implements View.OnClickListener {
    private static final int o00O0O = 2;
    public static final int o00Oo0 = 1002;
    private String OooooOo;
    private EditText Oooooo;
    private String Oooooo0;
    private TextView Ooooooo;
    private Button o0OoOo0;
    private Button ooOO;
    private Handler OooooOO = new Handler();
    private boolean OoooooO = false;

    public class OooO00o implements Observer<RegCodeInfoResponse> {
        public final UnbindRegistrationCodeActivity OooO00o;

        public OooO00o(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity) {
            this.OooO00o = unbindRegistrationCodeActivity;
        }

        public void OooO00o(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
            String str = "۬ۡۧۘ۠ۨ۬ۚۧۥۥۨۨۘ۠۬ۢۜۧۤۡۤۚۗ۠۟ۙۙۥۜۘ";
            String string = null;
            StringBuilder sb = null;
            String str2 = null;
            String string2 = null;
            String str3 = null;
            String str4 = null;
            while (true) {
                switch ((((str.hashCode() ^ 360) ^ 622) ^ 318) ^ 216007602) {
                    case -2129368264:
                        str = "۟ۜۘۘ۫ۖۧۦۥۢۛۥۜۘۥۙۚۧۘۚۢ۫ۦۢۜۡۨۛۗۥ۫ۜۙۦۡ۬ۖۘۥۦۘۥۙ۟ۜۧۘۖۗۖ";
                        break;
                    case -1491970979:
                        return;
                    case -1135258340:
                        c5.OooO0OO(AppContext.OooO00o(), str2);
                        str = "ۖۙۚ۠۠ۙۛ۫ۥۙۨۚۨ۟ۡ۟ۧۛ۬ۚۤ۬ۡۙۛۗۖۤ۠ۤ۟ۚۦۥۗۛۦۢۦۢۥۖۘۢ۫ۡۘۧۢۛ۬ۖۡۦ۠ۦۘ";
                        break;
                    case -1090080403:
                        sb.append(regCodeInfoResponse.Code);
                        str = "۫۟ۘۚۥۥۘ۫ۙۦۦ۬ۗۘۖۤۦۚ۟ۚۡۖۚۦۥۘۛ۫ۖۘۛۘۨۘۥۤۜ۫ۥۡ";
                        break;
                    case -948599672:
                        str = "ۢۥۧۢۜۤۛ۠ۗۛۗ۬ۦ۟۫۬ۤۛۘ۟ۙۡۦۙ۟ۡۜۘۨۦۜۘۘۨۘ۬ۙۙ";
                        str3 = string2;
                        break;
                    case -271722869:
                        sb.append(this.OooO00o.getString(R.string.status_code_text));
                        str = "ۨۗۡ۠۫ۨ۬ۙۗۜۖۙۘ۬ۗۘۖۘ۠ۙ۠ۦۦۥۘۧ۬۟ۙ۬ۙۥ۠ۢۘۥۨۙ۟ۘۡۧۜ";
                        break;
                    case -182871234:
                        str = "ۡۢۗۚۡۙۖ۬ۡۘۥۖۡۖۗۛ۠ۖۤۘۦ۟ۡۚۖ۟ۧۥۜۥۡ";
                        string2 = this.OooO00o.getString(R.string.unbind_reg_code_suc);
                        break;
                    case 75907025:
                        str = "ۗۜ۬ۘۨۖۡۡۧۙ۠ۡۗۙۦۘۘۜۛۦ۫ۡۦۦۘۧۡۥۘۛۥۨۘ۟ۤۧۜۘ۫";
                        sb = new StringBuilder();
                        break;
                    case 277833150:
                        str = "۠ۨۤۨۖۨ۠ۜۖۘۚ۫ۨۡ۟۫۟ۚۤ۟ۘۡ۠ۘۙ۟ۧۖۚ۠ۖۘ";
                        str3 = str4;
                        break;
                    case 512787833:
                        str = "ۙۤۡۘۦۗۧۤ۫ۜۡ۫ۘۘۚۜۨۗ۠ۜۨۧۛۛۘۜۚ۬۬ۥۦۜۘۦ۟ۨۥۘۧۙۨۘ۠ۜۖ";
                        str2 = str3;
                        break;
                    case 1165820341:
                        str = "ۙۚۖۘ۠ۦۦۘۘۢۘۤۛۨۘ۟ۜۥۘۧ۟ۘۘ۠۠ۡۨۤۤۦۙۡۘۜۥۚۙ۫۬ۙۖۖ";
                        break;
                    case 1216487863:
                        str4 = regCodeInfoResponse.Message;
                        str = "ۖۧ۟ۛۘۧۘۛۥۘۛ۠ۢۢۥۧۖ۬ۖۦۚۡۘۥۡۨۘۤۡۥۘۥ۫ۢۨۨۧۘۜۦۢۜۘۜ۟۬ۘۛۢۘۡ";
                        break;
                    case 1504177484:
                        str = "ۚۛ۬۫۬ۘۖۦۚۡ۟ۘۜۨۜ۠ۛۜۘۜۖۨۗۨۡۘۗۚۧۙۚۢۙ۬ۦۘۘ۟ۖۘ";
                        str2 = string;
                        break;
                    case 1570229752:
                        String str5 = "ۡۡ۫ۗۢ۠ۡۢۢۦۙۜۘۦۜۦۘ۠ۤۖۘۚۤۜۦۖۦۦۛۗۡ۟ۛۦۦۘۦۘۦ۠ۘۨۘۢۙۜۡۜۤۘۜۖۘ";
                        while (true) {
                            switch (str5.hashCode() ^ 1277060499) {
                                case -1915158715:
                                    str = "ۚۛ۬۫۬ۘۖۦۚۡ۟ۘۜۨۜ۠ۛۜۘۜۖۨۗۨۡۘۗۚۧۙۚۢۙ۬ۦۘۘ۟ۖۘ";
                                    continue;
                                case -1397329485:
                                    str5 = "ۥ۠ۗ۟ۜۘۘۖ۟ۛۙ۫ۛۦۧ۬ۨۚۦۘ۠ۧۤۜۦۘۤۗ۟ۚۧۚ۟۬ۨۜۛ۬ۢۗۜۖۗۘۚۙۚۤ";
                                    break;
                                case -1180726830:
                                    String str6 = "ۦۖۙۡۢۛۡۖۘ۫ۛۜۧ۬ۧۚۨۧۙ۟ۡۘۜۤۨۘۚ۠۟ۢ۟ۧۦۘۖ۟۟ۜۘ";
                                    while (true) {
                                        switch (str6.hashCode() ^ 1693457394) {
                                            case -2089627729:
                                                str6 = "ۢۦۖۦۘۤۥۘۖۘۥۗۧۘۨ۟ۡۙۘۙۥۡۘۚ۫ۜۘۘ۠۠ۖۜۧۘۧۜۜۤۖۥۘ۫ۚۜۘۧۦۜۘۡۛۧۦ۫ۨۜۨۛۡۦ۬";
                                                break;
                                            case -1405627200:
                                                str5 = "ۖۛۙۥ۟ۙۘۥۤۘ۠ۥۢۥۛۦۜۘۛۗۨ۬ۚۗۜۡۘۚ۠ۡ";
                                                break;
                                            case -572279553:
                                                str5 = "ۤۘ۠۫ۖۙ۬ۦۦ۫ۙۧۚۘۨ۬ۥۗۤۚ۟ۛۨۘ۠ۖۡۨۘۢۡۧۘۛ۫ۧۦۢۦۘۗۚ۠ۖ۬ۦۜ۠ۥۜۤ۠ۗۗ۟";
                                                break;
                                            case 1714586171:
                                                str6 = TextUtils.isEmpty(str3) ? "ۦۜ۠ۙ۟ۖۗۥۖۘۗۧۘ۠ۨۚ۫ۜۡۘ۬ۛ۟ۙۤۗۖۦۙۜۛۛۧۙۛ۠۫ۦۘۢۜۨۘۧ۫" : "ۨۥۚۦۧ۠ۙ۟ۦۘۢۡۢ۟ۛۘۢۦۘۨۛ۠ۙۗۖۘۘۧۥۘۘۜۗۡۨۢ۫ۢ";
                                                break;
                                        }
                                    }
                                    break;
                                case -184581009:
                                    str = "۫۬ۢۘۨۤۢۙۛ۠ۢۜۘۗ۫ۦۘۡۥۧۘ۫ۗۦۘ۬ۜ۟ۢ۟ۡۘۦۥۙۗۨۛۚۗۘ۫ۖۘۚۚۖۘۘ۬ۧ۟ۨ۫ۖۨۨۘۨۗۚ";
                                    continue;
                            }
                        }
                        break;
                    case 1745358316:
                        String str7 = "ۨۦۤ۟ۤۥ۠ۛۘۛۘۥۦۤۘۢۙۨۚۥۤۗۧ۫ۥۡۘۘ۫۟ۘۧۨۘۖ۫۬ۖ۠ۜۘۙۛۡۧۚۘۜۗ";
                        while (true) {
                            switch (str7.hashCode() ^ 206189800) {
                                case -215646215:
                                    String str8 = "ۜۛۨۘۦۧ۟ۤۢۘ۫۟ۨۘۙۢۦۘۚ۠ۥۡۛۦۘۗۨۥۘۢۥۦۘۗۗۛ";
                                    while (true) {
                                        switch (str8.hashCode() ^ 1371826029) {
                                            case -1664460342:
                                                str7 = "ۜۧۜۜۨ۠ۨۨۖۗۚۥۗۜۘ۬۠ۨۘۘۗۦۘۡۙ۟ۧۥۥۘۛۛۦۛۚۜۜ۠ۤ";
                                                break;
                                            case 376197292:
                                                str8 = regCodeInfoResponse.Code == 200 ? "ۚ۫ۘۤۙۜۘ۫ۘۥۘ۠۟ۚۘۨۜۢۥ۠ۜۖۘۜ۟۫۫ۖۡۘۜۨۨۖۘ۬ۤۡۘۥۨۥۜۜۘۤ۬ۜ۬ۗۦ" : "ۙۗ۫ۧۜۖۘۨۢۘ۟ۛۡۘۜۙۖ۟۟ۗۧۛۤۧ۬ۚۚۗۛ۟ۡ";
                                                break;
                                            case 977464445:
                                                str7 = "۫ۜۘ۬ۧۡ۬ۚۨۘۚۡۛۨۤۤۙۡۧۘ۫ۤ۠ۨۙۡ۫ۜۦۘۢۦۗ۠ۢۚ۫ۖۛۗۗۥۦۨۘۡ۫ۨۘۚۘۙ";
                                                break;
                                            case 1851574151:
                                                str8 = "۟ۘ۠ۤۙۤۧۘ۠ۧ۟ۖۘۤۤۨۘ۟ۧۖۘۧۖۧۙۦۨۖۢ۠۫ۥۡۘ۠ۙۚۡ۟ۙۛۖ۟۬ۢۖۘۚۚۙۡۘۦۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 619776322:
                                    str7 = "ۨۥۧۘ۠ۚۥۚۙۡ۟ۘۘۘۡۥۘۡۧۡۨۤۚۖ۬ۗۜ۬ۡ۠ۤۧ۟ۜۘ۟ۢۤۦۥۤۖۧۜۘۘ۫ۜۘۦۘ";
                                    break;
                                case 1885283291:
                                    str = "۫۬ۤۥۥۨ۠ۦۖۙۛۘۨ۠ۡۘ۬ۧۨ۟۠ۖۘۙۖۤۥۡ۫ۛۚۡۘ";
                                    continue;
                                case 2061740563:
                                    str = "ۢۥۧۢۜۤۛ۠ۗۛۗ۬ۦ۟۫۬ۤۛۘ۟ۙۡۦۙ۟ۡۜۘۨۦۜۘۘۨۘ۬ۙۙ";
                                    continue;
                            }
                        }
                        break;
                    case 2136518973:
                        string = sb.toString();
                        str = "ۧ۟ۜۘۘۦۥۡ۟ۥۘ۟ۚۚ۠ۤۥۘ۟ۛۧۦۗۖ۬ۜۡۘۤۤۦۘۛۢۚۤۢۙۖ۟۠ۙۜۧۨۦ۫۬ۤ۬ۧۜ";
                        break;
                }
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
            String str = "ۢۤۨۘۥۛ۟ۖۦ۬ۗۥۤۜۙۜۘۨۛ۠ۦۡۧۢۖۘۥۢۛۚۗۚۧۘۢۥۥ۬ۨۚۡۖۙ۬ۙۧۢ۟ۛۜ";
            while (true) {
                switch ((((str.hashCode() ^ 86) ^ 237) ^ 948) ^ 1989627773) {
                    case 73003016:
                        OooO00o(regCodeInfoResponse);
                        str = "ۤ۟ۡۚۡ۫ۤۘۤ۠ۜۖ۬ۥۨۘۙۧۦ۟۠ۖۘۡۜۥۤۦ۬ۗۥۡۘۢۙ۟۠۬ۖۨ۬ۚۙ۬۬ۥۧۜۢ۬ۜ۬ۖ۟۠ۧ";
                        break;
                    case 518387295:
                        str = "ۧۢۦۖۘۦ۬ۨ۬ۙۜ۬ۥۛۥۘۨۗ۟ۙۦۘۜۨ۠ۛۚۖۖۡۘۘۘۖۘۡ۟ۤۖۥ۠ۦۖۧۘۥۢۨۨۦۥۘ";
                        break;
                    case 1326951401:
                        str = "ۘۘۗۙۡۗ۠ۜ۬ۧۤۙۗۜۨۤ۬۫ۡۚۛۥۛۨۘۜ۠ۚ۟ۛۨۥۗ۟ۜۖ";
                        break;
                    case 1978962754:
                        return;
                }
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final UnbindRegistrationCodeActivity OoooOoO;

        public OooO0O0(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity) {
            this.OoooOoO = unbindRegistrationCodeActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۢۤۨۖۜۥۘۛ۠ۜۘۧۡ۫ۖۥ۫ۢۦ۟ۖ۬ۢۡۡۧۘۘۡۢۦۚ۟ۦۥۧۥۜ۟ۗ۟ۡۧ۬ۖۤۨۧۘۢۢۦ";
            while (true) {
                switch ((((str.hashCode() ^ 38) ^ 579) ^ UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE) ^ (-1268783786)) {
                    case -1001080837:
                        UnbindRegistrationCodeActivity.OooOO0(this.OoooOoO, false);
                        str = "ۚۥۧ۟ۙۡۘۦ۠ۗۤۨۙۨۤۦۘ۫ۜۦۘۤۚۨۘ۬ۗۜۙۜۜ۟۠ۤ۬ۗ۠ۢۥۦۗۥۤ۫۟ۥ۠ۧۧ۠ۦ";
                        break;
                    case -174303585:
                        return;
                    case 837475099:
                        str = "ۡۛ۠ۦۗۖۛۘۦۘۥ۬ۛۙ۟ۦ۟ۛۨۘ۬ۘۥۘۨۙۥۧۚۘۘ۠ۤۨۘ۬ۥۢۨۢۜۛۚۘۘۧ۬ۦۘ۠ۗۢۜۡۥۥۙۘۘۜۨۘۘ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements TitleView.OooO0O0 {
        public final UnbindRegistrationCodeActivity OooO00o;

        private OooO0OO(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity) {
            this.OooO00o = unbindRegistrationCodeActivity;
        }

        public /* synthetic */ OooO0OO(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity, OooO00o oooO00o) {
            this(unbindRegistrationCodeActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۚۖۤ۠۠ۜۛۗۤۜۥۜۘۦۛۡۖ۫ۨۙۜۘۜۙۘۘ۠۬ۖۨ۟ۖۜ۫۫ۦۚۦ۬ۚۖۢۗۨۘۦۖۨۘۥۚۧۡ۠ۜۘۗ۠ۘ";
            while (true) {
                switch ((((str.hashCode() ^ 780) ^ 361) ^ 395) ^ (-1848027441)) {
                    case -569991937:
                        return;
                    case 1197328147:
                        str = "ۢۘۢۤۥ۟ۧۡۦۚۢۢۙۜۘۙۢ۫ۡۨۨۘۜۧۡۘۗ۬ۘۚۚۤ۫ۖ۠ۤۤۖۘۗۗۙۦۙۗۙ۟ۦۘۢ۫۫ۢۥۙۜۦۖ";
                        break;
                    case 1246280644:
                        str = "ۘ۫ۘۘۦ۫ۙۢۗۛۙۨۛ۠ۗۘۚۤۙ۟ۤۤۖ۟ۜ۬ۜۖۘۧ۬۫ۘ۠ۢۜۘ";
                        break;
                    case 2065385642:
                        this.OooO00o.finish();
                        str = "ۜۜ۬ۙ۟ۤ۟ۤۙۚۨ۬ۤۙۥۘۥۥۗۖۜۜۢۤۘۖۧ۠ۡۜۜۘ۫ۧۜۘۚ۫ۚ";
                        break;
                }
            }
        }
    }

    public static /* synthetic */ boolean OooOO0(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity, boolean z) {
        String str = "ۛۡۥۜۨۛۥۛۚۦۘ۫۟ۨ۟ۖ۫ۗۙ۬ۥۨۨۥۖۘۤ۫ۡ۠ۧ۫ۙۦۖۧ۬ۘ۟ۥۢۙ";
        while (true) {
            switch ((((str.hashCode() ^ 573) ^ 193) ^ 228) ^ (-684347540)) {
                case -1742524577:
                    str = "ۚۖۨۘ۟۫۬ۧۜۖۘ۠۬ۚۙۡۦۜۨۥۙۡۙ۟ۧۦۘۘۥ۬ۦۦۚۡۜۨۧۘ۫";
                    break;
                case -1636795687:
                    return z;
                case -769742239:
                    unbindRegistrationCodeActivity.OoooooO = z;
                    str = "ۗ۫ۨ۟ۨۥۤ۬ۘ۠ۦ۟ۙ۫ۡۛ۫۟۠ۥ۟ۤۦۥۥۧۚۤ۬ۢ۬ۦۘ۫ۦۥۘۡۤۦۘۗۙۧۢۚۡۘۖۡۧ";
                    break;
                case 1084341923:
                    str = "۟ۙۜ۠ۙۧۦۛۖۢۨۡۘۘ۟۟ۢۦۖۧۖۗ۬ۢ۠ۚۘۘۙ۬ۥۘ۫ۢۜۘۧۤۥۘۢۛ۬ۦۨ۫";
                    break;
            }
        }
    }

    private void OooOO0O() {
        String str = "ۙۙۦۘ۠ۛۙۛۚۧۜۢۢ۠ۜۘۙ۫ۙۨۖۙۘ۠ۖۘۛۙۖۢۦۜۙۨۛ۬ۨۘ";
        int iIndexOf = 0;
        SpannableString spannableString = null;
        String str2 = null;
        String strValueOf = null;
        while (true) {
            switch ((((str.hashCode() ^ 926) ^ 833) ^ 126) ^ 1875148843) {
                case -2097605637:
                    str = "۬ۤ۠۫۬ۘۥۖۖۘ۠ۛۖۦ۟ۙۜۖۚۘ۫۬۠ۦۥۘۚۢۧۧۧۨ";
                    str2 = String.format(getString(R.string.unbind_app_buckle_time), strValueOf);
                    break;
                case -1255311685:
                    spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FF4948")), iIndexOf, strValueOf.length() + iIndexOf + 2, 17);
                    str = "ۗۚۛۤ۟ۢ۟۠ۦۧۤۧۥ۠۟۠۫ۢ۠ۢۛۙۛ۟ۛۖۡۡۥۜۥۤۧۢۦۤ";
                    break;
                case -648771632:
                    str = "ۗۨۦۧۢ۟۠ۤ۬۠ۡ۠ۚۜۦۘ۠ۘۚۚ۠ۙۦۛۛۦۜ۬ۙۘۖۘ";
                    break;
                case -392120804:
                    str = "ۡۨۙۛ۬۟ۖۖۡۨۗۜۜۧۡۘ۫۫ۦۘ۠ۜۗۦۖۛۥۜ۬ۖۡۥۘ۟۟ۘۗۥۗ۠ۚۜۚۗۦۗ۟ۘۤۢ۠";
                    strValueOf = String.valueOf(m7.OooO0o0().OooOOO0);
                    break;
                case -193050122:
                    String str3 = "ۥۨۨۘ۠ۘۘۨۥۦۘۜۧۚۖۜۖۘۗۖ۫ۘۥۛۖۤ۬ۙۘۦۗۧ۠ۤۧۙۦ۫ۡۘۚ۟ۤۦۜۚۖ۬ۢ۠ۧۥۢۥۦۥۖۘۘ";
                    while (true) {
                        switch (str3.hashCode() ^ 1632978455) {
                            case -1623886619:
                                str3 = "ۚ۟ۖۘ۫ۡ۬ۢۡۧۥ۠ۚۜۡۥۙۚ۟ۘۤۛۡۥۥۗ۫ۦۘۛۙۡۘ۠ۗۥۘ۫ۜۨۘۙۚۚۥۜۢ۬۟ۨۤۡۡۘۚۘۨۦۚۥۘ";
                                break;
                            case -1385261983:
                                str = "ۥۦۚۧ۠ۦۘۢۚۡۨ۫ۙ۠ۘۘۧۧۚۢۢۦۘ۟۬ۗۛ۟ۜۘ۠ۡۡۘۖۦۛۗۗۛ۬ۛۚۜۙۛۡۧ۠ۤۤۚۧۘۥۘۖۖۜۘ";
                                continue;
                            case 1364738402:
                                String str4 = "ۧۤۜۦۨۢۛۖۘ۬ۧ۬ۢۛۜ۟ۗۥۘۘ۬ۜ۟۫ۜۘ۟۫ۘۥ۬ۡۘۚ۟ۜۘۡ۟ۜۘۙۖ۬۬۟ۥ۟ۙۢۚۤۦۘ";
                                while (true) {
                                    switch (str4.hashCode() ^ (-339809991)) {
                                        case -2090954774:
                                            str4 = "ۥۤۡۘۙۚ۫ۥ۠ۨۨۖ۠ۙۙۗۘ۠۠ۢ۟ۙۧۦۤۧۧۦۜۢۢۚۖۘۘۗۤۙۚۧۙۧ۟ۦ۫ۢۛۛۗۖۨۨۡ۟";
                                            break;
                                        case -1484580652:
                                            str3 = "۫۟۟ۢۢۘۘ۬ۥۦۘۢۚۘۙۘۘۡ۬ۢۡۛ۟۟ۙۚ۫۫ۥۘۦۧۢۚ۫ۖ۠ۛۡ۟۠۫ۧۦۡ۫ۛۤۦۦۖۘ";
                                            break;
                                        case -1208838582:
                                            str4 = !TextUtils.isEmpty(this.OooooOo) ? "ۘ۬۟ۦۚ۫ۖۢۘۜۧۡۘۤۦۦۦ۠ۥۚۡۘۢۥۘۗۙۖۘ۬ۨۢۙۜۛۧۛۥۧۧۚۗۦۘۘۙۤۙۦۧۤ۠ۡۦۘۦ۫ۛ" : "ۧۤۧۢۚۖ۠ۛۨۜ۫ۨۘۜۜۘۖۡۨۧۢۥۘۖۙۦۦۤۙۘۙۚ۫ۘۧۘۘ۟۬۬ۚۘۛۚۨ";
                                            break;
                                        case 1587418441:
                                            str3 = "ۛۗۙۙۗ۟ۙۘۥۧۘۦ۬ۡۚۘۨۚۚۛۘ۠۫ۢ۟ۢ۫ۧۗۥۧۖۨۘ۫ۙۢۢۨۥۛۥۢ۫ۛۡۘۧۘ۫";
                                            break;
                                    }
                                }
                                break;
                            case 1682201213:
                                str = "۠ۤۘۘۨ۬ۡۛۖ۫ۜۥ۬ۥۧۘ۬ۦۚۖ۟۟ۚۥۢۤۛۦۗۚ۠ۦۦۥۡۦ۠ۜۜۧۨۦۥۘۙ۬۠ۘ۬ۚ";
                                continue;
                        }
                    }
                    break;
                case 8599112:
                    this.o0OoOo0.setOnClickListener(this);
                    str = "۬ۦۢۨۨۡۚۚۧۥۡ۬ۢۡۘۘۗۦۘۡۦۥۘۘۧۛۧۗۦۗۖۧۤۖۚۗۚۤ";
                    break;
                case 62415784:
                    spannableString = new SpannableString(str2);
                    str = "ۢۨۧۘۚ۟ۛۚۖۜۘۛۡۤۤ۬ۖۜ۬ۛۤۥۨۖۥۧۖۗۛ۠ۚۗۗۤۜۘۡۘۜ";
                    break;
                case 439837198:
                    iIndexOf = str2.indexOf(strValueOf);
                    str = "ۜۚۙ۫ۦۦۘۜ۬۫۟ۗ۬۟ۛۛ۟۬ۜۧۤۢ۫ۨۖۘۘۧۖۘۨۡۨۘۚ۟ۖۨۙۦۧۘ۠ۘۦۘۜۙۚۘۥۥۘ";
                    break;
                case 491079359:
                    this.Ooooooo.setText(spannableString);
                    str = "ۗۥۙۤۨ۟ۚۜ۬ۦ۟ۥۢۤۜۙۡۘۘۙۤۖۘۜۡۥۘۜۡۦ۟۫ۨۚ۬ۘۡۧۦۘۢۡۘۖۗۥۧۜۡۘۨ۠۟";
                    break;
                case 714619900:
                    return;
                case 760742045:
                    this.ooOO.setOnClickListener(this);
                    str = "۟ۛ۠ۦۢۘۘ۫ۗۥۘۨۦۘۥۗۤۘ۠ۖ۟ۤ۬ۢۢ۟ۦ۬۠ۤ۫ۛۘۘ۠۬۠ۨۘۗ۫ۘۘۢ۫ۢۦ۫ۧۙۥۚ";
                    break;
                case 2109954338:
                    this.Oooooo.setText(this.OooooOo);
                    str = "۠ۤۘۘۨ۬ۡۛۖ۫ۜۥ۬ۥۧۘ۬ۦۚۖ۟۟ۚۥۢۤۛۦۗۚ۠ۦۦۥۡۦ۠ۜۜۧۨۦۥۘۙ۬۠ۘ۬ۚ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void OooO() {
        String str = "ۦۜۥ۬۟ۨۖۦۥۘۙۗ۫۟ۧۖۘۨۧۜۘۧۙ۟۠ۢۚ۠ۦۦۚ۟ۚۥۢ۟ۧۙۘۘۚۛۦۧۨۗ۠ۘۖ۟ۦ۫۬۠ۖۘۤ۠ۢ";
        while (true) {
            switch ((((str.hashCode() ^ 471) ^ 673) ^ 137) ^ (-129533568)) {
                case -1948996815:
                    str = "ۡ۟ۥۛۦۜۛۨ۠۟ۜۥۘ۠ۘ۟ۥۥ۟ۘۧ۟ۙۦۜۖۨۧۘ۠ۙۜۘۨۘۗ۟ۘۘۨۙۖۘۛۜۥۗ۬۟ۢۗۛ۟ۚۦۘ۠۫ۜ";
                    break;
                case 333268083:
                    return;
                case 965478024:
                    ((ra) this.OooooO0).OooOo00().observe(this, new OooO00o(this));
                    str = "۬۟ۙۚ۫ۙۘۨۘۙۨۤۧۗۢ۬ۜ۠۬ۜۤ۫ۜ۟ۗۛۗۚۢۦ۫ۨۚۛۡۘۧۢ۬ۢ۫ۥۘ۫ۜ۠۬۬ۡۘۗۚۜۢۤۧ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public int OooO0oO() {
        String str = "ۚۢۜۘۧۧۡۢۛۗۘۦۙۧۧۖۘۘ۠ۙۛ۟ۦۘۢۖۡۘۗۜۘۙۨۨ";
        while (true) {
            switch ((((str.hashCode() ^ 174) ^ 522) ^ 307) ^ 802864706) {
                case -1601837703:
                    str = "ۙۜ۫ۚۡۧۙۛۦۘۥۘۥۖۦ۫۬ۧۨۘۡۖۨۛۨۚۘۤۢۛۘۛۧۗۥ۠ۛۧ۫ۥۦۘۤۖۡۘۘ۫ۘۨۖۘ";
                    break;
                case -660099194:
                    return R.layout.activity_unregister_code;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public Class<ra> OooO0oo() {
        String str = "ۤۛۖۤۡۘۘۙۧۢۘۚۤۡۘۗۚۤۖ۫ۧۦۛۦۛۛۢ۫ۧۤۛۧۥۘۤۖۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ b.by) ^ 1000) ^ 563) ^ (-1229887540)) {
                case 625183297:
                    str = "ۖۗۡۤۛۦۡۧۘۡۜۥۘۛۡۤۖۚ۟ۛ۟ۘۘۤۧ۟۟ۡۚۤ۠ۦۘۙۜۦۘۥۤۡ";
                    break;
                case 1873264770:
                    return ra.class;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void initView() {
        OooO00o oooO00o = null;
        String str = "۠ۦۤۙۜۘۨۧۜۘۗۚۗ۫۠ۤۥۨۛۜ۠ۖۜۗ۠ۖۥۜۘۙۖۥۤ۫ۥ۬۬ۥ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 182) ^ 316) ^ 755) ^ (-1111119221)) {
                case -1773101088:
                    OooOO0O();
                    str = "ۧۚۨۘۖۖۗ۟ۦۨۘ۟ۚۥۛ۬ۡۘۥۥ۟ۛۜۤۨۜۘۤۨۙۘۥۡۘۛۙۦۢۜ۫ۨۙۙ۠۬ۗۢۙۨۡۖ";
                    break;
                case -1426639437:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "ۧۗۤ۟ۢۛۦۚۘۘۢ۟۠ۜۡۧۡ۠۠ۤۦ۠ۨۗۚۤ۠ۘۜ";
                    break;
                case -1405095244:
                    str = "ۖۧۡۨ۫ۚۘ۬ۛۥۘۤ۠ۘۖۘ۠ۡۨۘۢۦۧۘۙۗۗ۟ۤۘۧۥۧۘۢۗۘۧ۬ۥۘۘۙۖۜۡۥۙۤۚۥۚۖۘۖۤ۫ۜۚۗ";
                    break;
                case -925747805:
                    this.Ooooooo = (TextView) findViewById(R.id.tv_buckle_time);
                    str = "ۙ۠ۙۜۧۜۛ۟ۤۛۢ۟ۡ۫۫۫ۤۡۖ۫ۙۚۚۚ۟۫ۚۤۡۙۙۜۗۥ۠ۛۥۛ۠ۜۙۨۘۛۦ۠ۨۛۨ";
                    break;
                case -877341245:
                    this.ooOO = (Button) findViewById(R.id.btn_sweep_unbind);
                    str = "۟ۛۚۧۢۤۚ۫۠ۙۛۛۡ۫ۜۦۛۧ۫ۗ۟ۨۤۘۘۙۙۛۦۥۚ۬ۜۘۘۦۙۘ۫ۘۥۦۛ";
                    break;
                case -800098011:
                    titleView.setOnLeftImageViewListener(new OooO0OO(this, oooO00o));
                    str = "ۡۘۖ۫ۨۨۘۨۨۦۘۛۢۗۢۨۦ۟ۧۤ۬ۖۘۡ۠ۜۨۤۨۨۤۦۤ۟۬ۥۦ۫";
                    break;
                case -526808325:
                    this.o0OoOo0 = (Button) findViewById(R.id.btn_unbind);
                    str = "ۗۛۜۗۢۙۙۥۚۢۗۧۗۨۥۘ۬ۥۡۘۖۖ۬۫ۙۦۘۗ۬ۖ۠ۦۘۜۙۧۥ۬ۨ۠ۡۨۙۙۨۙۨ۬ۨۡ۟ۥۖۧۗ";
                    break;
                case -378620504:
                    return;
                case -3167132:
                    str = "۠ۙۘۘۧۤۢۗۥۡۧۚ۫ۗۘۦۖۚ۟ۢۨۘۨ۟ۨۘ۬ۛۥۡۛۧۜۡۘۚۘ";
                    titleView = (TitleView) findViewById(R.id.id_title);
                    break;
                case 375051973:
                    titleView.setVisibilityRightImage(4);
                    str = "ۖۥۤۖۘۗۡ۠ۦۡۜۨۖۤۖۛۙۨۚۥۚ۬۠ۦ۬ۖ۫۫ۥۘ۠ۨۥۗ۬ۤۛ۠ۥۘ۟ۦۥ۟ۖۦۘۗ۬ۘۡۦۗۤ۠ۡ";
                    break;
                case 496699398:
                    this.Oooooo = (EditText) findViewById(R.id.register_number);
                    str = "ۤۗۧۘۗ۬ۦۜۘۧۦۖۗۦۥۛۛۧ۠ۘۥۛۨۨۘ۬ۙۦۛۛ۟ۙۡۙۧۨۨۘ";
                    break;
                case 1416605498:
                    titleView.setTitleText(getString(R.string.register_code_unbind));
                    str = "ۗۙ۠ۖ۫ۖۘۤۡۖۘۘۜۚۤۙۨۘۦۛۜۘ۠۠۬ۨ۬ۡ۟۟ۧۚۗۘۘۢ۟۬ۚۡ۫ۛۖۚۛۗۧۢۘۛۧۤ۟۟۟ۖۢۦۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = "ۢۧۧۙۚۨۘۦ۬ۢۖۗ۬ۡۘ۠ۗۚۨۧۥۘۜۜۡۘۦ۬ۨۥۥ۬ۥۧۢۧۜۥ۫۟۠ۦۨۖ";
        while (true) {
            switch ((((str.hashCode() ^ 932) ^ 794) ^ 922) ^ (-1520253609)) {
                case -1686438737:
                    str = "ۢۜۨۘۡۗۡۧۦۤۡ۬ۖۖۡ۟۫ۙۖۘۥۨ۟ۜ۫ۧۖۡۜۗۘۘۙ۬ۖۖ۠ۙۢۡۛۨ۟۟۬ۗۡ۟ۧ";
                    break;
                case -1662022682:
                    str = "ۙۚۖۥۤۜۗۖۧۘ۠ۖۧ۠ۤۢۖۗۜۘۤۘۘۘ۫۟ۜ۫ۨۖۘۤ۟ۡۛۥۦۘۧۜۢ";
                    break;
                case -525304698:
                    str = "ۤۡۜۚۙۢۖۚۡۘۢۦۧ۠ۘۡۘۖ۠ۨۘۛۧۘۘۜۡۙ۠ۢۢۥۙۧۚۛۖۧۘۤ";
                    break;
                case -11999628:
                    str = "ۡۢۡۘۚۛۜۖۨۙۗ۟ۚۥۘۡ۬ۚۡۘۚۢۧۦۙۗۗۥۘۛۨۧۘۜ۠ۗۢ۫ۘۘۤۥۡۙۙۨۥۤۗۛۡۙۢۥۥۘ۠ۜۨ";
                    break;
                case 878410847:
                    super.onActivityResult(i, i2, intent);
                    str = "۟۬ۛۦۘۚۥ۠ۗۦ۬ۖۨۙۨۘۚ۬۟۫ۛۘۡۘ۠۫ۥۘۧۖۨۚۙۡۥۢۘۘ";
                    break;
                case 1149502006:
                    return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "ۡۦۘۘ۟ۥۥۘ۠ۛ۫ۙۙۜ۫ۜۢۖۚۖۘ۟ۥۖۘۜۜۜ۟۠۟ۗ۠ۚ۫ۧۤۘۨۦۘۖۥ۬ۦۧۨۘ";
        String strTrim = null;
        while (true) {
            switch ((((str.hashCode() ^ 92) ^ 909) ^ 75) ^ (-797088856)) {
                case -2039439781:
                    this.OooooOO.postDelayed(new OooO0O0(this), m.ag);
                    str = "۫ۤ۫ۡۙ۫۬ۛۚۚۗ۠۫ۦۚۖۛۗۜۦۥۨۛۖۘۜۤۜۘۘۛۖ۬ۤ۟۠ۜۚۗۧۤۤۤۗۢۦۘۥۤۖۘ";
                    break;
                case -1709677940:
                    str = "ۘ۟ۜۘۤۙۢۘ۠ۗۛ۫ۗۥۜۙ۠ۙۧۢۗۢۙۜۘ۠ۘۜ۬ۤ۫۟۬ۡۘۗ۫";
                    break;
                case -1679993137:
                case -1375548773:
                case -318653726:
                case -268767093:
                    return;
                case -1670079294:
                    String str2 = "ۖ۫ۨۡۜۖۘۦۧۤۤۛۧۛۙۖۙۨۡۖ۟ۡۘۥۡۜۨ۟۫ۚۢۢۥۨۖۘۖۗۦۘۚۖۛۖۨۘ۟ۘۘۨۛۜ۬ۢۨۤۡۜۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-655417614)) {
                            case -2124359843:
                                str2 = "ۥۨۡۘۢۚۘۘ۠ۜۦۘ۫۫۬ۡۨۚۥۢۘۘۗۧۤۡۗۢ۟ۘۗ۫ۥۦ۟۟ۥۜۘۥ۠ۛۢ۠ۡ";
                                break;
                            case -1930505400:
                                str = "ۦۘۘۘ۫۫ۘۘۧۥۜۘۦۚ۟ۧۧۜۘۧۡۗۦۧۨۘ۟ۨۜۘۦ۫ۢۙ۟ۡۘۢۙۗۧۛ۫";
                                continue;
                            case -1335580608:
                                str = "ۨۜۖۘۜۦ۬۟ۦۡ۟ۢۥۢۤۡۥ۫ۘۚۡۖۘۗۚ۬ۗۗ۠ۡۥۘۧۜۘۘۡۧۘۘۡۘۘۡۚ۫";
                                continue;
                            case 1807128545:
                                String str3 = "ۘ۫ۢۦۥۡۘۡۙۡۚۥۛۖۦۘۤۛ۫ۛۜۜۡۤۙۖۡ۠ۜ۫ۗۛۡۖۘ۟ۢۙ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-763113864)) {
                                        case -1377272053:
                                            str2 = "ۦۦۦۦۧۚ۠ۡ۫ۡۙ۟ۛۜۘۨ۠۟۟۫ۦۜۧۥۘۗۘۢۢ۟ۚۨۘۤۚۦۗۡ۟ۦۦۘ";
                                            break;
                                        case -375099050:
                                            str3 = "ۡ۬ۡۘۙۡۢۡۘۦۢ۟ۖۤۤۙۨۘۖ۫ۡۡۖۧۖ۫ۜۘ۠ۤۨۚۛۘۚ۫ۜ۬ۦۨۘۤۗۜۜ۫ۤۚ۫ۦۘ";
                                            break;
                                        case 1424668752:
                                            str3 = this.OoooooO ? "ۜۧۘۛۚۙۜۖۖۘ۟ۙۙۙ۫ۥۘۥۛ۠ۖۡ۫ۤ۠ۚۙۧۤۚۜۛۙۗۥۘ۬ۙۜ" : "ۛۗۗۥۘۜۖۧۡۤۦ۠۬ۦۜۡۥۥۗۢ۟ۘۥۘۡ۠ۘۘۖ۫ۨ۬ۡۧۛۦۘۛۦ۟ۥۨۜ۟۬۠۬ۖ";
                                            break;
                                        case 1974056387:
                                            str2 = "ۘۚۜۘۗ۫ۨۘۘ۬ۨۘۗۡ۠۟۫ۘۘ۫ۖۥۘ۠ۢۘۛۚۛۢۗۚۚۛۚۨۙۡۘۦۤۦۘ۟۫ۖۘۖۨۥ۠ۙۖ۠۠ۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1279285041:
                    c5.OooO0OO(AppContext.OooO00o(), AppContext.OooO00o().getResources().getString(R.string.network_off));
                    str = "۫۟ۜۦ۬۫ۙۚۜ۬۠ۘۢۜۡ۟ۤۛۢۖۚ۫ۜۖ۠ۙۗۥۦۤ۬۟ۢ۫ۢۥ۟ۜۘۥۥ۠";
                    break;
                case -1180674537:
                    this.Oooooo0 = strTrim;
                    str = "ۦۢۗۨۥ۬ۗۙ۟ۡۚۢۚ۟ۖ۠ۚۤۚۡۜۗۨۖۤۦۤۨۨۨۗۨۖ۫ۤ۠ۖۦ۠ۢۦۦۘ";
                    break;
                case -1056366258:
                    this.OooooOO.removeCallbacksAndMessages(null);
                    str = "۬۠ۗۧۥۥۘۙۙۤ۠۠۫ۡۙۦۨ۟ۙ۟ۘۡۢ۬ۨۘۖ۠ۖۢۘۘ";
                    break;
                case -580444209:
                    str = "۠ۦ۠ۗ۫ۡۘۤۙۤۚۨۖۘۥۗ۫ۚۜۤ۫۬ۙۜۢ۫ۡ۠۟۟ۖۡۜۚۡ۫ۜۘۘۢۘۖۘ۬ۛۜۖۥۘۚۚۨ";
                    break;
                case 26835979:
                    ((ra) this.OooooO0).OooOo0(this.Oooooo0);
                    str = "۫ۗۧۘۤۡۘۢۦۘۖۚۚۛۜۙ۟ۦۤۥ۠ۜۤۙۦۘۥۦۧۧۘۤۦۚ۠۟ۙۜۘۛۡۦۘۖۚ۟ۨۦۘۘۜۗۦ";
                    break;
                case 204001159:
                    String str4 = "ۚۛۥۘ۫ۡۖۘۖۜۖۘۥۡۘ۬ۥۧۖۚۖۘۘ۬ۗ۬ۦۥۘۨۖۧۘۢۜۤۥۡۘۤ۠ۡۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1856770591)) {
                            case -1527992183:
                                String str5 = "ۛ۫ۜۘۡۙۚۡۗۜۘۗۖۖۘۙ۠ۨۗۚۜۘۘۘۧ۫۠ۤ۟ۜ۫ۧۦۘ۫ۥۗۜ۬ۦۢۛۥۘۨۛۙۢۗۨۘۗ۬۟ۥ۫ۚ۠ۨۛ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1754082308)) {
                                        case -597652943:
                                            str5 = TextUtils.isEmpty(strTrim) ? "ۖۛۚۢۛ۫۫۟۟ۢۢۨۧۚۚۦۘۘۧۗۤۧۦۡۤۤۦۘۤۙۦ" : "ۤۜ۬ۢۧ۠ۥۡۛ۬ۗۥ۫ۦۡۘۙۢۨۘۛۘۗ۫۫۬ۢۨۤۘۚۜۢۦۙۜۧۧ۠ۥۘۛۧۤ۟ۚۡۘۨۧۛۙۜۨۤ۫ۘ";
                                            break;
                                        case 1647614419:
                                            str4 = "۠۫ۜۘۖۧۦۛۗۡۢۨۤۘۡۡۘۥۖۨۦۛۧ۫ۢۡۘۨۚۘۡۥ";
                                            break;
                                        case 1683189003:
                                            str4 = "ۦۙۥۘۦۧۨۘ۫ۡۨ۠ۡۗۗۦۡۘۨ۫ۤۨ۟ۢۜۙۚۨ۠ۦۧۖۖۘ۟ۗۨۘۙۗۙۨۖۜۘۖ۠ۧۚۙۦ۬ۚۖۘۙۘۘۡۨۥ";
                                            break;
                                        case 2084397796:
                                            str5 = "ۖۜۖۡۚۗۖ۫ۖ۠ۗۗۜۚ۫ۘۡۚۨۡۘۗۡ۠۟ۨۨۘۨۛۥ۬۠ۨۦۤۗۜۖۚۥ۠ۘۘۢۖۜۖۜ۠";
                                            break;
                                    }
                                }
                                break;
                            case 789856399:
                                str = "ۦۗۦۘۚ۟ۥۘۡۨۦۛۛۙۚۨۡۘ۬ۙۜ۟ۦۥۡۨۥۘۗۗ۠ۛ۟ۘ۟ۜۧۘ۫۟ۖۚ۟ۢۤۙۥۘۙۡۨ";
                                continue;
                            case 1145027803:
                                str = "ۚ۫ۦۥۛۚ۠۫ۡۗۙ۟ۜ۫ۡ۟ۥۦۘۘۚۤۢۦۦۖۜۛۦ۫ۦۘ۫ۥۖۡۤۛ";
                                continue;
                            case 1674803150:
                                str4 = "ۡۨۡۘۨۨۨۘ۠ۧۙۖۜۢۗۢۖۘۨۨۨۙۤۘۧ۠ۡۘۗۦۖۘۖۚۛۚۛۜ۬ۤۡۖۡۜۢۙۘۘ";
                                break;
                        }
                    }
                    break;
                case 262867223:
                    str = "۫ۤ۫ۡۙ۫۬ۛۚۚۗ۠۫ۦۚۖۛۗۜۦۥۨۛۖۘۜۤۜۘۘۛۖ۬ۤ۟۠ۜۚۗۧۤۤۤۗۢۦۘۥۤۖۘ";
                    break;
                case 341814184:
                    String str6 = "ۙۤۛۧۦۜۛۖۨۘۦۢۗۛۗۙۚۛۖۗۧۛۢۦ۫ۗۛۜۛۢۨۘۖۛۘۘۚۡ";
                    while (true) {
                        switch (str6.hashCode() ^ (-44619421)) {
                            case -1886164659:
                                str = "ۤۛ۟ۡ۬ۨۘۦۧۨۘ۟۟ۡۘ۠ۢۙۡۡۜۘۚۗۜۘۜ۟۬ۦ۟ۜۧ۫ۘۘ۠ۛۢۧۙۡۘۧۙۡۘۚۗۜۘ";
                                continue;
                            case -1715652030:
                                str = "ۤۛۥۘۨ۫۫ۡۨۥۖۛۦۛۜۜۘۗۡۖۘۖۖۢۘۤۜۘۤۧۤۨۜۤۥۜۨۖۢ۠ۖۚۥۘ۟ۨۥۘ";
                                continue;
                            case 232925671:
                                String str7 = "ۦ۠ۥۦ۫ۦۘۧۖ۠ۘۤۥۘ۠۫ۡۘۡۛۖۨۧۦۥ۟ۙۤۚۦۘ۬ۛۡۚۙ۟ۛۗۛۡۜۘۘۧۗۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ 756563979) {
                                        case -1839502488:
                                            str7 = "ۖ۠۫ۘ۟ۙۚۥۙۘۜۖۘۢۛۖ۬ۨۖۘۤۜۖۘ۫ۛۨۚ۟ۖۤۤۘۘۤ۠ۨ۟۬ۨ";
                                            break;
                                        case -1719385533:
                                            str7 = view.getId() != R.id.btn_unbind ? "ۤۥۨۜۖۦۘۡۧۨ۟ۜۦۘۡۥۦۗۤۗۧۢۦۥ۫۟ۜۗۨۜۚ۫ۢۡۘۚۖۚۢۘ۠ۗۧۡ۟ۜۤۖۙۖ۫ۦۥۘ۠ۥۢ" : "ۥۡۖۘۚۤ۫ۢۡۥۘۢ۠ۨۘۙ۠ۥۘۡۧۘۡۚۡۙ۬ۤۥۗۡۘۗۙۦۘ۠ۦۧ۬۟۟ۜۙۧۥۗۨ۬ۗۜۘۙۨۖۘ۬ۖۜۙۦۧ";
                                            break;
                                        case -1678197903:
                                            str6 = "ۜۜۡۚۙۡۘۤ۟ۡۨ۫ۢۛۘۖ۬ۦۘۨۤ۟ۚۗۜۘ۠ۗۨۤۡ";
                                            break;
                                        case -759046823:
                                            str6 = "ۚ۠ۘۘۛۡۦۘۜۨۜ۫ۙ۫۠۠۫ۦۡ۟ۧ۫ۥ۫ۜ۫ۖۧۡۘ۠ۘ۫";
                                            break;
                                    }
                                }
                                break;
                            case 1477706468:
                                str6 = "۟ۚۨۘۥۘۖۘۢۦۤۚۧ۠ۢۚۘۘۡ۫ۛۜۜۘۚۡ۟ۡۧۡۢۤۡۡۜۖۘۘ۬ۖۘۨۧۧۨۤۨ";
                                break;
                        }
                    }
                    break;
                case 1543876582:
                    String str8 = "۠ۦۡۜۛۨۘۢۨۖ۠۫ۨۗۜۖۗۨۥۜ۠ۘۛۙۥۧ۠ۘ۠ۨۘۛۙ۟۫ۢ۟۟۫ۙۧۖۛ";
                    while (true) {
                        switch (str8.hashCode() ^ 1579184462) {
                            case -1113055615:
                                str = "ۧۚ۟۟ۥۗۥۤۚ۠ۡ۫ۘۨۢۢ۫ۦۘۘۚۜۘۨۨۡۘ۬ۢۨۘۜۛۦۘۗۤۥۘۥۥۢ";
                                continue;
                            case 374741773:
                                str = "ۥۨ۫ۤۜۜۘۖ۟ۤ۠ۡ۠۬۫ۢۢ۟ۖۘۚۧۘ۬ۙۘۛۦۚۜ۠ۦۜۡۨۚ۬ۨۘ";
                                continue;
                            case 1549049290:
                                String str9 = "۬ۦۦۘ۟ۘۘۥۢۘ۫۠ۦۘۛۙۥۡۢۛۧۙۜۥۨ۬ۡۙ۫ۛۦۙۦ۬ۜۘۖۥۤۢۙۜۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-933075689)) {
                                        case -1063295377:
                                            str8 = "۟ۧۚۗۘۥۖۡۘۧۛۜۜ۬ۥۘۢ۠ۢۧۗۗۖۥۜ۟۟ۜۤ۟ۚ۫ۧۘۘۦۖۤۖۡۤۙۘۖۘۙۢۖ۫ۥ۫";
                                            break;
                                        case 571561533:
                                            str9 = !t4.OooOO0(view.getContext()) ? "ۚۚ۟ۥۜۙۤ۠ۜۤ۟ۖ۠ۧۤۛۥۢۤۛۖۛۙۥۘۡۙۦۘۗۜۧۡ۬ۗۗ۟ۖۨۨۤۚۦۗۚۨۘۗۘۨۘ" : "ۚۙۥۢۛ۬۟ۢۢۗۡ۬ۤۙۚۤ۬ۢۘ۬۠ۘ۫ۧ۟۠ۖۙۢۧ۫ۥۖۘۢۨ";
                                            break;
                                        case 692733510:
                                            str8 = "ۧۘۙ۫ۦۜۢۗۚۚ۬ۚۢۥۙۘۘۦۡۧ۠ۤۖۘۗۙۡۘۢ۬ۨۘۗۡ۠ۘ۠ۦۘۘۗ۫ۤۥۦۘۜ۠ۛۥۡۥۘ";
                                            break;
                                        case 874539718:
                                            str9 = "ۦۚۡۘۧۡۡۢۦ۬ۜۜ۫ۥ۬ۧۘ۫۫ۖۜ۟ۛۛۢۛۚۡۘۖۜۚۘۘۚۤۢۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 2045894850:
                                str8 = "ۥۖ۠ۜۤۦۦۦ۫۠ۤۛۖۥۧۢۚۖۘۡۚۨۘۗ۟ۛۚ۬ۘ۬ۙۖ۬ۨۘ۬ۤۛۧ۬ۧ۬ۢۘۘۤۡۜۜۢۙۗۨۘۖۜۧۘ";
                                break;
                        }
                    }
                    break;
                case 1614887531:
                    this.OoooooO = true;
                    str = "۫ۥۜۘۘۜۥۡۘ۟ۖۦۘۘۛۡۡۗۗۢۢۤۡ۠ۤ۬ۢۚۦۘۘۚۛۗۛۗ۟۬ۛ۟ۨۖ۫ۦۘ۬ۦۙ۫ۗۧ";
                    break;
                case 1945527018:
                    c5.OooO0O0(AppContext.OooO00o(), R.string.input_register_number);
                    str = "۠۬ۘۘ۠۬ۘۢۦۜۘۥۥۖۚۥۥۘ۫ۢۗۡۥۢۦۤۘۤۚۤ۠۟ۖۤۨۤۨۛۥۘۘ۠ۜۤ۠ۤ";
                    break;
                case 2054648897:
                    strTrim = this.Oooooo.getText().toString().trim();
                    str = "۟ۡ۠ۚۧۨۢۢۗۦ۟ۥۛۦ۬ۚۗۛ۫ۤۛۡۚۢۥۨۧۥۚۨ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "۟ۖۦ۬ۤۘۘۛۥ۫ۢۧۢۗۖۨۤۜۧۘۢۦۦۘۡ۠ۜۘۨ۫ۥۘۥۨ۟";
        Handler handler = null;
        while (true) {
            switch ((((str.hashCode() ^ 614) ^ 910) ^ 78) ^ 1051194177) {
                case -999484546:
                    handler.removeCallbacksAndMessages(null);
                    str = "ۖ۬ۢۡۥۘۘۦۛۛۥۦ۬۠ۜۘۚۘۛۙ۟ۢۨۜ۠۟ۨۡۘۨۜۨۢۤ۠۟ۘۘۘ۟ۤۜۥۘۥۨۥۦۘۨۤ۬ۨۧۦۘۧۗۨۘ";
                    break;
                case -236354327:
                    return;
                case 820488377:
                    handler = this.OooooOO;
                    str = "۠ۢۘۘۚ۟ۨۘ۟ۜۖۘۖۤۘۗۥۘۚۜۘۛۤ۟ۤۘۤۛۦۘ۬۬ۜۘ";
                    break;
                case 1662973480:
                    String str2 = "ۛۨۦۘ۟۟ۚۗۚ۟۫ۙۛۢۦۧۘۚۛۚ۠ۖۚ۬ۖۨۛۖۛ۟ۖۧۜۗۨۘۢ۠ۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1068709652)) {
                            case -2078552682:
                                str = "ۥۙۡۘۡۖۜ۬۠ۜ۠ۚ۟ۜۛۚۧۙ۫ۙۨ۬ۤۦۛۤۦ۬ۖۘ";
                                continue;
                            case -1746802514:
                                String str3 = "ۢ۟ۚۦۥ۬ۜۨۨۥ۟ۖ۟ۘ۬ۛۡۘۥۗۘۘ۠ۛۘۦۤۦۘۜۘۚۤۦۘ۟ۢۥ۠ۤ۫ۨۘۢۚۙ۬ۡۘۙۡۚ۟ۢۢۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-250951225)) {
                                        case -751180453:
                                            str3 = "ۚۛۦۧۛۙ۫ۙۢۡۨۜۘۘۡۡۡۚۖۘۢۤۛۦۙۗ۠ۜۘۥۜۧۘۗۢ۫ۦ۟ۘۘ۫ۘ۟ۢۡۨۘۧۖۥۘۗ۫ۡ۫ۨۧۘ۬۬۠";
                                            break;
                                        case -156241877:
                                            str2 = "ۡ۬ۤۖۘ۫ۧۤۛۙۛۘۘۖۥۖۘۙ۬ۢ۫ۖۚۦۤۡۘ۫ۗ۬ۘ۠ۚۖ۠ۙۢ۬ۨۦۙۨۘۖۖۙۘۜۨۘۦۥۚۧۗ۠ۤۤ۫";
                                            break;
                                        case 817140042:
                                            str2 = "ۤۢۢۗۙۜۘۘ۟۬ۥۢۡۥۥۙ۬ۗ۠ۢۜ۠ۖۤۖ۬ۡۘۚۡۖۘ";
                                            break;
                                        case 1845014003:
                                            str3 = handler != null ? "ۘۗۤۡۗۘۘۡۡۥۘۧۥۘۤ۬ۡۖ۟ۡۘ۟ۥۘۘۗۤۜ۬ۗۜۚۙ۫ۤۧۥۦۖۦۘۤۨۘ۬۠ۙۗۨۜۤ۟ۤ" : "ۖۖۘۡۙۖۘۢۙ۟ۥۦ۬ۦۘۛۙۖۨۘۤۖۧۖۧۥۘۧ۟۫ۚۤۨۘۙۡۚۙ۬ۦۘۢۙ۟ۧۛۜۗۡۘۗۡ۬۟ۙۖۘۚۢۧ";
                                            break;
                                    }
                                }
                                break;
                            case -436501471:
                                str = "ۖ۬ۢۡۥۘۘۦۛۛۥۦ۬۠ۜۘۚۘۛۙ۟ۢۨۜ۠۟ۨۡۘۨۜۨۢۤ۠۟ۘۘۘ۟ۤۜۥۘۥۨۥۦۘۨۤ۬ۨۧۦۘۧۗۨۘ";
                                continue;
                            case -229208305:
                                str2 = "۬ۙۤۢۜۤ۫ۗۛۚ۬۬ۚۘۤ۬۬ۙۡۘۖۢۗۡۦۨۘ۬۫ۜۙ۟ۙۛۜۙۢۡۘۜۧۘۘ";
                                break;
                        }
                    }
                    break;
                case 2004119596:
                    super.onDestroy();
                    str = "۠ۧۖۨ۠۬ۤۜۨۘۧ۟ۛۦۖۚ۫ۖۤۜ۟۫ۚۚۜۡ۬ۨۚۡۥۘ";
                    break;
                case 2076190593:
                    str = "ۛۗۖۘ۟ۡۨۘۖۨۥۥ۟ۦۖۡۘ۠ۛۘ۟ۦۜۘ۬ۛ۫۫ۖۚ۟ۗۜۘ۟ۡۦۘۡۙۡۘ۟۬ۥۘۖۙۤ۫ۙۖۗ۬ۚۡۖۤۢ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۥۡۖۥ۠۫ۖۧۘۙۘۦ۠ۚۨۥۘۨۙۗ۟۟۟۬ۦ۫۬ۚۚۜ۫ۦۨ۬ۨۦ";
        while (true) {
            switch ((((str.hashCode() ^ 428) ^ 284) ^ 8) ^ 254728357) {
                case -1390617865:
                    super.onPause();
                    str = "۠ۥۘۥۦۚ۬ۙۡۘ۫۟ۥۤۜۘۤ۠ۥۤۦۦۘ۬ۙۗۘۜۖۜۧۡۧۗۨۘۗۙۛ";
                    break;
                case -1132925593:
                    return;
                case 1040500370:
                    MobclickAgent.onPause(this);
                    str = "ۖۡۥۘۖۜۨۛۡ۠۠ۥۘۨ۠ۢۖۤۛ۬۠ۨۨۘۨ۬ۚۡۨۦۡۢ۠ۘۤۦۢ";
                    break;
                case 1583304519:
                    str = "ۖۙۦۘۜۖۛۧ۠ۖۧۨۦۘۚۡ۫ۡ۠ۘۨۦ۫ۚۘۡۘۜۙۧ۟ۥۨۘۖۤۜۛۘۧۨۜۡ۠ۧ۫";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "۟ۗۗ۬ۨ۫ۖۗۖۘۛ۬ۗ۟۬۬ۜۖۘ۬ۙۥ۬۫۠ۘۥۡۘۥۙۘۖۗۤۖۢۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 380) ^ 673) ^ 848) ^ 800671765) {
                case -2077584956:
                    return;
                case -574084132:
                    super.onResume();
                    str = "ۗۛۥۘ۬ۜۦۘۤۥۡۘۦ۠ۨ۬ۧۛۘۜۤ۟۬ۜۘۧۖۦۜ۬ۘ۬۫ۖۘ۠ۗۧۥۘۢ۬ۜۖۘۡۦ۬ۜۥۘۚۡ";
                    break;
                case 119521472:
                    MobclickAgent.onResume(this);
                    str = "ۡۡۖۖۗ۬ۖۚۥۘۙۢۨۘۨۖۥۘۦۛۥۥۙۥۥۜۖۧ۫ۡۘۖۗۡۘۧۚۦۘۚۥۗ";
                    break;
                case 761562745:
                    str = "۫ۛۥۘ۟ۗۥۨۖ۟ۛۜۜۘۘۡ۠ۖ۟ۚۚۥۨۥۨۦۚ۟۟ۖۦۡۘۡۡۧۘۨۡۨۛۡۥۘ۬ۘ۟ۨ۬ۡۘ۠۟ۗ";
                    break;
            }
        }
    }
}
