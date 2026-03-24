package com.cyjh.elfin.ui.activity;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.PointerIconCompat;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.Observer;
import com.ac.R;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.expressad.d.a.b;
import com.anythink.expressad.video.module.a.a;
import com.anythink.expressad.video.module.a.a.m;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.http.bean.response.BaseResponseInfo;
import com.cyjh.http.bean.response.BuyRegCodeConfigInfo;
import com.cyjh.http.bean.response.QueryRegCodeInfo;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.umeng.analytics.MobclickAgent;
import z2.ba;
import z2.c5;
import z2.g6;
import z2.l10;
import z2.m7;
import z2.oa;
import z2.q7;
import z2.t4;
import z2.x9;
import z2.y8;

/* JADX INFO: loaded from: classes.dex */
public class BindRegisterCodeActivity extends BaseModelActivity<oa> implements View.OnClickListener {
    public static final int o00oO0o = 1003;
    public static final String[] oo000o;
    private String OooooOO;
    private EditText OooooOo;
    private LinearLayout Oooooo;
    private TextView Oooooo0;
    private TextView OoooooO;
    private TextView Ooooooo;
    private View o00O0O;
    private View o00Oo0;
    private TextView o00Ooo;
    private final Handler o00o0O = new Handler();
    private boolean o00ooo;
    private TextView o0OoOo0;
    private View ooOO;

    public class OooO implements TitleView.OooO0o {
        public final BindRegisterCodeActivity OooO00o;

        public OooO(BindRegisterCodeActivity bindRegisterCodeActivity) {
            this.OooO00o = bindRegisterCodeActivity;
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0o
        public void OooO00o(View view) {
            String str = "ۙۦۧ۠ۛۙۙۛۤۢۡۗۙۙۙۦۛۙۙۜۥۥۚۦۨۚۨۘ۟۟ۛ۫ۤۡۘۙۜۨۘ۬ۜۛۛۧۖۖۜۡۘۢۦۜۘ";
            while (true) {
                switch ((((str.hashCode() ^ 649) ^ UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE) ^ 933) ^ 744220108) {
                    case -1679706490:
                        str = "ۛۥۦۤ۫ۘۘۙۗۚ۟ۜۤۘۧ۠ۙ۬ۧۡۖۙ۬ۧ۫ۥۤۙۗۚۡۨ۬ۘۘۖۨۧ۠ۘ۟ۛۧۥۛۚ۠ۚۜۧۘۡ۫ۨۘۚ۟ۜ";
                        break;
                    case -1451412186:
                        y8.OooOOOO(this.OooO00o, q7.OooO0o0().OooO0o());
                        str = "ۙۛۚۙۡ۠ۛۥۖۛۡۜۘۤ۟ۤۨۘۦۧ۟۬ۤ۟ۨۘۨۖۘۗۡۜ";
                        break;
                    case -663478999:
                        str = "ۛۤۦۘۨۛ۟ۖۥۥۘ۠ۖۗۨۚۚۘۡۘۘۗۡۘۧ۬ۡۘ۠ۛۦۘ۬۬ۧۚۖۨۥۜۘۘۥۙۦۡ۬ۦۡۤۜۛۤۗۖۨۘ۫۫ۜ";
                        break;
                    case 1545029838:
                        return;
                }
            }
        }
    }

    public class OooO00o implements Observer<BaseResponseInfo> {
        public final BindRegisterCodeActivity OooO00o;

        /* JADX INFO: renamed from: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity$OooO00o$OooO00o, reason: collision with other inner class name */
        public class ViewOnClickListenerC0175OooO00o implements View.OnClickListener {
            public final ba OoooOoO;
            public final OooO00o OoooOoo;

            public ViewOnClickListenerC0175OooO00o(OooO00o oooO00o, ba baVar) {
                this.OoooOoo = oooO00o;
                this.OoooOoO = baVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = "۬ۨۡۧۧۨ۫ۛۧ۟ۖۥۘ۫۬ۡۡۜۘ۟ۡ۟۬ۢۘۘۦۤۙۙۜۦ۬ۖۙۢۙۨۘۖۨ۠۟ۘ۠ۛۘۛۦۖۙۛۥۗۢۚ";
                while (true) {
                    switch ((((str.hashCode() ^ 140) ^ 229) ^ UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK_VALUE) ^ (-1036274632)) {
                        case -1976207237:
                            str = "۟۟ۤ۠۟ۡۘ۟۬ۧۧۤۤۖۗ۟ۜۨۚۢۡۘۛۧۦۘۦۜ۬ۗۛۧۥۡۥۘۜۚۨ";
                            break;
                        case -1964180054:
                            this.OoooOoO.dismiss();
                            str = "ۛۥۥۘ۠ۛۥۘۨۥۗۥۧ۠ۡۘۛۜۜۘۜۜۘ۬ۚۘۘۛۤۘۥ۟۫";
                            break;
                        case -1045576843:
                            return;
                        case 757453150:
                            str = "ۘۦۜ۫ۦۨۘۧۡۥۘۘۚۡۘ۫۟ۧۜۥۨۘۦ۟ۖۥ۠ۖۜۖۨۘۘۦۡۘ";
                            break;
                    }
                }
            }
        }

        public OooO00o(BindRegisterCodeActivity bindRegisterCodeActivity) {
            this.OooO00o = bindRegisterCodeActivity;
        }

        public void OooO00o(@Nullable BaseResponseInfo baseResponseInfo) {
            String str = "ۦۨۦۘ۠ۥ۫۬ۡۛۚۦ۬ۥۚۘۘ۬ۜۗ۠ۧۜ۫ۖۡۘۘۖۗۛۜۥۘۙۨۡۘۨۨۨۘۥۚۛۖۙۘ";
            ba baVar = null;
            BindRegisterCodeActivity bindRegisterCodeActivity = null;
            int i = 0;
            while (true) {
                switch ((((str.hashCode() ^ 416) ^ UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE) ^ 764) ^ 1241762658) {
                    case -1621666666:
                        str = "ۘۖۗ۟ۙ۟ۘۚۜ۟ۛۡۧۘۜ۫۬۬۠۠ۛۡۢ۫ۖۚ۠ۚۗۜۘۗ۠ۜ۠ۡۤ";
                        bindRegisterCodeActivity = this.OooO00o;
                        continue;
                    case -972127152:
                        String str2 = "ۜۙ۠ۚۜۨۘ۫ۧۛۚۤۖ۠۬ۥ۠ۡۧۢۗۘ۫ۛۖۘۨۧۖۘۤۥۨۘۡۘ۠۠ۦۖ۬ۡۘۚۗۡۘ۟ۢۦۘۙۢۨ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1946234391)) {
                                case -1002784409:
                                    break;
                                case 154220097:
                                    str2 = "۫۬ۧۖ۟ۢۦ۫ۜۘۗ۠ۧۜۗۜۘۥۘۧ۟ۤۛۦۛ۬ۗۖۥۦۙۚۘۘۛۗۢ";
                                    break;
                                case 1508447384:
                                    str = "۠۬ۦۘۖ۟ۘۘ۠ۖۗۙ۟ۗۗۧۘۘ۬۬ۦۘۗۢۢۘۗۧۨۙۖۦۘۡۘۗۚۛ۫ۥ۬ۦۢۡۛۥ۫";
                                    break;
                                case 1918923355:
                                    String str3 = "ۜۤۥۘۥۦۖۘۖۨۚ۟ۧۜۢ۬ۦۤ۫ۘۘۗ۠ۚ۟۬ۜۧۗۗ۬ۨۧۥۡ۫ۜ۬ۙۖۢۛۧ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 159576315) {
                                            case -2136863222:
                                                str2 = "۫ۙۙۥۢۘۘۘۚۦۘۘۦ۫ۡۘۢۦۧ۬ۢ۫ۜۚۥۦ۬ۖۚۨۘۛۢ۟ۛۛۦۦۗۨۨ۫ۧۥۤۥۖۙ۟";
                                                break;
                                            case -1149680816:
                                                str3 = "ۧۛۡۚۦۦۘۛۦۥۘۢۦۘۘ۫ۘۦۤۤۡۘ۠ۧۚۨۘۧۘ۟ۛۚۤۖۜ۟ۜ۬ۧۜۘ";
                                                break;
                                            case -884040298:
                                                str3 = 1202 != i ? "ۖ۬ۥۘۜۚۖۘۘۤۘۚۖۧۘۗ۟۠ۡ۟ۖۢۘۘ۬ۙۜۘ۬ۘۦۨۖۘ" : "ۘ۟۫ۨۤۡۘۜۖۨۘۢۢۘ۬ۘۗۤ۫ۨۥۦۖۘۥۘۧۨۡۛۛ۠ۤۘۦۦۡۡۘۛۖۘۘ۬ۥۥۘۘۧۦۘ۬۫ۦۢ۟ۧۦۤۖ";
                                                break;
                                            case -3101737:
                                                str2 = "ۖۢۖۘۚۚۧۡۥۙ۫ۛۡۥۦ۠ۦۗۜۢۜۜۘۜۦۖۥ۬ۨۧۘۥۘۢۚۙۜ۬ۨۢۡ۟ۦۢ۟ۤۢۘۘۥۙۦۘ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -803283638:
                        c5.OooO0OO(AppContext.OooO00o(), baseResponseInfo.Message);
                        str = "۬ۘۤ۠ۦۨۡ۠ۖۘۖۜۜ۠ۛۡۥۗ۬۫ۥۖۘۛ۟ۛۙۥۗۘ۟ۢۡۥۘۘۨۧۨۘۧ۠۟ۤۚۢۘۛۦۚ۟ۥۥۛۛۗۛۦۘ";
                        continue;
                    case -411479634:
                        baVar = new ba(this.OooO00o, false, baseResponseInfo.Message);
                        str = "ۡۚۚۧ۫ۨۤ۟ۢ۟ۖ۬ۡۖ۟۟ۥۗۢۤۦۘۧ۠۫ۢۧۙۚۖۧ۫ۧۦ۠ۦۚ۠ۨۘۛۘ۬۬ۛ۠۠ۨ";
                        continue;
                    case -197876099:
                    case 801436511:
                    case 1695060063:
                        str = "ۤۜۡۘۡۖۗۢۗۨۘۥۡۚ۠ۚۗۗۚۡۘۥۥۨۘۧۥ۬۟۟۟ۧۙۜ";
                        continue;
                    case -82432908:
                        String str4 = "ۜۨۨۧۥۧ۠ۘۘ۠ۖۘۧۥۘۢ۬۟۠ۤۢۜۤ۬ۘۨۦۢۢۥۘۖ۬۟۠ۖۧ";
                        while (true) {
                            switch (str4.hashCode() ^ 395079299) {
                                case 334807911:
                                    break;
                                case 626140386:
                                    String str5 = "ۚۜ۟۬ۘ۫۬۠ۜۘ۬ۨ۬۠ۦ۟ۡۜ۟ۜۦۜۜۖ۟ۘۧ۟ۖۘۨ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 2053849001) {
                                            case -1651237702:
                                                str4 = "ۘۚۛۧۡۢ۠ۖ۬۠ۥۢۛۨۨۘۥۡۡۤ۬ۧ۟ۧۖۜۘۦۥۜۘ۟ۦۡ۬ۦ۠";
                                                break;
                                            case -725854572:
                                                str5 = "۠ۦ۬ۗۨۘۘ۠۬ۚۜۡۖۘۚۧۡۘ۫۠۬ۘۧۡۘۨۜۘۧ۫ۘۘۙ۠ۨ۫ۛۥۘۛۦۡ۬۬ۛۚ۟ۧۥۨۖۗۦۘۘۧۧ۫ۡۚۖۘ";
                                                break;
                                            case -301802917:
                                                str5 = 1200 != i ? "ۗۡۢۗۢۖۚۦۥۘۘ۫ۛۖۦۥۙۨۗ۫ۜ۟ۛۙۘۛۜ۫ۖ۟ۡۜۚ۟ۛ" : "۬ۥ۠ۤۙۙۘۦۢۙ۫ۤۧۗۧۛۦۧۘ۠ۜۖۗ۟۫ۙۜۨ۫ۙۜۘۖۤ۫ۢۙۙۜۧۘۡۜۘۙۧ۬۟ۦۧۘ";
                                                break;
                                            case 51370211:
                                                str4 = "ۗۡۗۜۧۥۙ۠ۡۘۢۗۡۘۦۜۛۥۤۤۗۙۙ۠ۗ۬ۢۗۦۜۚۨۦ۠ۛ۟ۗۚۘۗۖۡ۠ۤۛ۟ۛ۠۫ۗۛۗۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1751896324:
                                    str = "ۡ۬ۦ۟ۜۗ۫۫ۨۢۡۦۚۢ۠ۦ۫ۚۢۧۨۘ۫۫ۧۚۚۙۛۗۘ۠ۖۢ۟ۖ۠ۧۘ۟ۙۗۥ۫ۡۜ۫ۙۥۘ";
                                    break;
                                case 1968495398:
                                    str4 = "ۘۖۤۛ۫ۨۘ۬ۡۨۘۦۜۤ۟ۖۥۘ۠ۡۦۘۙۨ۟۬۫۬ۛ۫ۖۘۗۚۙ";
                                    break;
                            }
                        }
                        break;
                    case 251781959:
                        str = "ۖۘۘۘ۬ۜۘۘۥۡ۠۟۠ۤۡۧۘۨۙۚۤۤۧۧۦۡۤۜۖۘ۬ۘۜۘۛۦۦ۫ۙۜۘ";
                        continue;
                    case 646410193:
                        String str6 = "ۙۡۤۖۡۛۚ۫ۜۗۜ۠ۧۙ۟ۤۤۦۖ۠ۛۖۤ۟ۖۛۚۢ۟۬ۗ۬ۧۚ۠ۥۙۧۦۘۦۦۜ";
                        while (true) {
                            switch (str6.hashCode() ^ 1348100072) {
                                case -1821539978:
                                    str6 = "ۥۚۡۜۢۡۘ۠۠ۜۘۗۢۘۘۡ۠۠۬ۘۥۘۜ۠۠ۛۗۖۘۡۙۨۘۦۢۧ۫ۘۧۘۦ۬ۦۘ۟ۗۜۘۤۘۜۨۜۡۤ۠";
                                    break;
                                case -1235660116:
                                    str = "ۗۙۨۘۢ۠ۡۤۘۗ۬ۜۘۘ۬ۦ۫۫ۘۘۜۛۨۧ۟۬ۧ۟ۥۘۛۛۨ";
                                    break;
                                case 445052464:
                                    String str7 = "ۦ۬ۢۢۥۦۘۥۜۘۜۥۗ۬ۖۜۨۤ۟۬ۗۤۡۡۜۖۜۨۘۥ۠ۜۦۙۙۖۛۘ";
                                    while (true) {
                                        switch (str7.hashCode() ^ 655388017) {
                                            case -307493962:
                                                str6 = "۫ۨۚ۬۬ۗۡۜۨۘ۬ۥۧۘۢۗۘۘۡۜۗۗ۠ۨۧۥ۠ۧۘ۫ۨۥۥۥۗۦۛۜۗۥۨۘ";
                                                break;
                                            case -244285114:
                                                str7 = "ۡۛۜۘۙۜۢۖۘۗۧۥۧۖۖۖۘ۫۬ۖۤۤۖۖۜۦۘۛۜۘۘۚ۬ۦۧۤۧۤۦۡۘ۟ۡ۫ۖۙۦۘ";
                                                break;
                                            case 660854615:
                                                str7 = 1201 != i ? "ۖۢۗۥۛۗۧۘۤۗۗۤۘۘۢۨ۫ۢ۬ۨ۟ۢۖۚ۬ۤۤۗۖۖۘۚۧۦۘ۫ۚۘۛۚۜۖۥۜۘۖۘۘۨۗۘ" : "ۢۡۚۧۖۘ۟۫ۥۘۤۛۨۘۖۖۛۚۥۥۘ۟ۗۜۘۙ۬ۧۧۙۥۨۧۡۡۦ۠ۛ۟ۦۘ";
                                                break;
                                            case 1682150791:
                                                str6 = "ۗۘۖۘ۠ۢۗۤ۟ۛۛ۬۠ۨۡ۟ۛۧۥ۠ۗۡۜۦۜۚ۫ۤۡۡۚ۬ۤۢۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1824639298:
                                    break;
                            }
                        }
                        break;
                    case 655100277:
                        baVar.OooO0O0(new ViewOnClickListenerC0175OooO00o(this, baVar));
                        str = "ۢۤۡ۟ۘ۠۫۟ۗۢۖۡ۫۠۫ۢۘۡۘ۠ۥۦۘۦۦ۠ۢۜۛ۠۠ۗۦۛ۫ۥۡۘ";
                        continue;
                    case 739485058:
                        String str8 = "ۦۖۧۡۘۗ۠۟ۢۙۢۘۡۡۘۦۚۛۤۤ۬ۡۚ۠ۛۥۘ۫ۧۨۨۢۦۤۚۘ۫ۚۡۘ۬۫ۥۧۧۥۘۙۜۘۗۥۧۨ۠ۡ";
                        while (true) {
                            switch (str8.hashCode() ^ (-159048656)) {
                                case -1603630315:
                                    String str9 = "ۛ۠ۗ۠ۦۙۤۤۦۧۜۛۘ۬ۚ۠ۦۜۨۥۛۥۢۙۖۢ۟ۦۛۗۧۜۨۖ۠۟ۚۨۦۘۨۜۡۘ";
                                    while (true) {
                                        switch (str9.hashCode() ^ 1078184739) {
                                            case -1655011416:
                                                str9 = i == 200 ? "ۡۙۥۘ۫ۗ۟ۦۥۖ۠ۖۘۨۨۦ۟ۢۥۤۥۤۜ۠ۡۚۦۚۜۛۧۖۖۘۢۚ۟ۤ۟ۥ۟۫ۖۘۖۤ۠ۘ۠" : "۟۟ۗۜۥۘۘۙۨۘۦۜۗۙۙۡۢۤۛۨۧۥۢۖۘۘۢ۟ۜۧۘۤ۠۬ۡۦۙۥ۬ۡۥۗۦۨۘ";
                                                break;
                                            case -580297161:
                                                str8 = "ۨۤ۬۟۠۬ۛۚۖۘ۫ۦۤ۟۟ۥۙۦۨ۟ۢۡۘۨۜ۫۫ۘۖۖۦۡۨۚۜۘۨۗۥۧۦۙۤۘۥۘۚ۟ۡۨۧۡۘ";
                                                break;
                                            case -79435728:
                                                str8 = "ۦۢۥ۬ۢۦۘۚۗۚۧ۠ۦۖۗۦۥۧۜۘۧ۬ۘۘۧۛۤۙۘۥۢۡۘۙۧۥۘ۫ۤۚۜۨۘۢۛۘۡۜ۟۬ۨ۫";
                                                break;
                                            case 1114324823:
                                                str9 = "ۚۜۗۢ۠ۖۘ۬ۗۜۘۘۜۘ۬ۥۦ۫ۗۖۤۚۡۘ۟۬ۦۘۖۤۖۘۢۤۦ";
                                                break;
                                        }
                                    }
                                    break;
                                case -220851342:
                                    str8 = "ۤۜۧۘۚۢۥۘۘ۬ۨۗۜۤۧۥۛۗۘۖۘۖۛۥۘۢۨۡۘ۠۟ۗۗۖۨۘۨۡۛ۫ۡ";
                                    break;
                                case -135790457:
                                    str = "۟ۜۖۘۦۧۦۦۜۘۘۤ۟ۖۦۖۥ۟ۙ۬ۙ۬ۤۦۛۧ۟۠۬ۦۦۖۘ";
                                    continue;
                                case 1796869351:
                                    str = "ۜۜۨۡۘۖۙۦۗۗ۟۬ۢۥ۬ۙۡۡۘۛۛۨ۬۠ۗۨۦۢۨ۫ۘۘ۟ۦۦۘۢۤۜۧۚۡۗۚۥۘۦۙۤۤۢۖۗۧ۟ۥۜ۬";
                                    continue;
                                    continue;
                            }
                        }
                        break;
                    case 1128656185:
                        c5.OooO0OO(bindRegisterCodeActivity, bindRegisterCodeActivity.getString(R.string.activation_code_suc));
                        str = "ۙ۟ۜۘ۬ۛۨۘۘۚۨۘۢۧۨۘۧۙۖۘۥۢۘۖۙۖۥۖۘ۬ۗۡ۫ۧۦۥۥۛۚ۟";
                        continue;
                    case 1205864982:
                        String str10 = "۟۠ۛۛ۟ۤۧۚ۠ۧۡۘۘ۠ۘۨۘۨۚۨ۬ۘۡۚۢ۫۬ۖۚۙۢ";
                        while (true) {
                            switch (str10.hashCode() ^ 1942257205) {
                                case -1937821898:
                                    str = "۬ۨۦۧۙۜۘۢ۬ۨ۬ۚۜۨۜۚ۬۠۫ۢۖۘۘۖۜۨۘۚۢ۫ۢۗ۠ۧۢۥۖۘۦۤ۟ۘۤۦۦۘ";
                                    continue;
                                    continue;
                                case -1662025301:
                                    String str11 = "۫۟ۦۘۨۢۜۘۧۗۘ۬ۧۚۧۜۡۘۤۥ۫۠ۡۛ۟ۥۛۙۤۜۘۚۜ۫";
                                    while (true) {
                                        switch (str11.hashCode() ^ 296675341) {
                                            case -1530008012:
                                                str10 = "ۚۚۧ۠ۢۨ۫ۘۙۚۦ۬ۥۙۨۘۢۡۡۘۦۦۡۧ۟۟ۚۘۘۗۧۚ";
                                                break;
                                            case 477900881:
                                                str11 = !ba.Ooooo0o ? "ۚۙۖۘ۟۫ۥۘۡۙۧ۬۫ۚۚۢ۬ۡ۠ۡۘۚ۬ۙۛۧۧۨۧۜۦۚۡۘۢۦۘۧۚۜۘ" : "ۜۗۡۘۛۡۦۨۢۖۘ۬ۥۘۘۛۢ۟ۘ۫ۡۘۥۜۦۥۛۦۘ۬ۤۜۘۘۦ۟ۢۥۜۗۢۘ";
                                                break;
                                            case 564330928:
                                                str11 = "ۚۢۥۘۧ۟ۜۘۚۛۜۘۗۥ۬ۨۤۘۥۤۛۥۢ۫ۛۧۡۘ۠۟ۗۨۦ۬ۢ۠ۛۡۥۢ۫ۨۙ۬ۜ";
                                                break;
                                            case 1337736123:
                                                str10 = "۫ۚۜۧۗ۫ۤۥ۫۬ۦۨۘۥۚۜۘ۫ۗۨۚۡۥۘۚۡۗ۫ۦۡۨۢۢۧ۫ۘۢ۫۟ۡۛۚ۫ۜ۠ۧۥۦۜۘۘۙ۫ۥ";
                                                break;
                                        }
                                    }
                                    break;
                                case -341871939:
                                    str = "ۚۜۖۡۛۤۦۘۘ۟۠ۧۛۜۛۨۧۘ۟ۗۦ۟۫ۗۛۡۦۚ۟ۦۘۨ۟ۨۤ۫ۤۘۨۨۘۨۜۧۚ۠ۥۘۙۤۖۘ";
                                    continue;
                                case -30518066:
                                    str10 = "۟۬ۢۦ۠ۦۛۖۨۖۨۚۡۗۤۦۢۦۘ۫ۢۦۘۗ۟ۨۨۛۗۗۧۗۢۨ۟ۗ۠ۜۡۦ۫ۨ۠ۜ";
                                    break;
                            }
                        }
                        break;
                    case 1478425033:
                        break;
                    case 1534828668:
                        String str12 = "۠۟۟۠ۙۢۢۜۖۘ۠ۨۙۚۨۨۜ۬ۥۘۥۥۤ۬ۧۛۚۥۥۜۖۘۗۚۘۘۤۨۢ۟ۨ۬ۦۡۜۜ۫ۦۛۖۙۜۘۡۘۤۤۧ";
                        while (true) {
                            switch (str12.hashCode() ^ (-560994581)) {
                                case -1257153090:
                                    str12 = "ۦۘۡۧۦۨۥ۠۟۫۠ۘۘۥ۟۬ۗ۫ۨۘۙۨۧۦۧ۠ۙ۟ۡۘ۟ۧۤۙۙۘۘ۫ۗۤۛۤۥ۫ۘۧۘۚۛۦۨۤۛ";
                                    break;
                                case -1158229674:
                                    str = "ۚۜۗۚ۟ۥۗۜۘ۫ۥۧۘۢۧۛۛ۟ۖۘ۠۠ۖۘۨۨۡۘۡۨۨۘ۟ۖ۟ۗ۫ۜۘ۠۟ۧۦۙ۟۫ۧۧۛۙۘ۟ۚۜ";
                                    continue;
                                    continue;
                                case -517131154:
                                    String str13 = "۠ۡ۫ۛۧ۠ۦۙ۬ۡۢ۟۫ۧۘۡۗۙ۬ۛۦۘۜ۫ۦۘ۫۠ۨۘ۬۬ۡۚۢۘۘ۟۠";
                                    while (true) {
                                        switch (str13.hashCode() ^ 488053137) {
                                            case -1766184452:
                                                str13 = 1300 == i ? "ۛۤۤۧۡۚۗ۬۫ۗۡۙۜۧۛۛۡۗۗۗۧۙۢۥۘۚۥۢۤۡۨ۫ۚۘۘۜۙ" : "ۨۛۤۜۨۡۘۦۡۘ۠ۙۜۘۗ۬ۥۜ۠۟ۚۛۘۖۙۢۧۢۨ۠ۧۧ۫ۖۡ۬ۤ۫";
                                                break;
                                            case -1517279019:
                                                str13 = "ۨۚۥ۠ۧ۠ۦۤۙ۬ۥۨۢۚۤ۫ۙۥۨۚ۠ۜۙۢ۫ۙۨۦۧۨۘ";
                                                break;
                                            case -1367446562:
                                                str12 = "ۘۥۗۗۤۥۥۢۘۥۜۚۥۧ۠۠ۢ۠۟ۜۨ۫ۖۘۥۥۜۘۢۧۥۨۢۜ۫ۜۨۘ۟ۥۢۥۡۖ";
                                                break;
                                            case -616712080:
                                                str12 = "ۙۥۤۘۢۡۛۨۘۨۚۢ۬ۙۘۘ۟۟ۡۗ۠ۙۥۢۙۨ۫ۘۘۡۧ۟۬ۨۖۘۘۡۘۘۙۦۡ۠ۛۛ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1675466630:
                                    str = "ۤ۫ۡۘۦۗۢۜۖۜۘۨۦۡۘ۟۠ۗۜ۬ۜۘۘۡ۠ۖۗۧ۟ۖۥۜۙۖۘۘۥۘۗۖۦۙۤۧۛ۟ۖۤ۠ۗۖ۟ۡۘۢۗۦۥۗ۠";
                                    continue;
                            }
                        }
                        break;
                    case 1610001542:
                        str = "ۗۨۖۘۚ۠ۨۘۜ۟ۜۘ۠ۗۖۘ۠۫ۨۘۦۘۡۧۧۚۢ۬ۘۘۡۚۤۦۡۖۦ۠ۦۥۘۥۜۧۜۗۗۡۙۢۢۤۙ";
                        continue;
                    case 1619708094:
                        return;
                    case 1668431313:
                        str = "۠ۚۘۘۘۘ۫ۛۚۜۘۚۧ۫۠۫ۖۘۘۥۛۨۦ۬۟ۨۘ۫ۡۚۜۡۚۛۢۗ۟ۨۡۜۨۧ۫ۖۡ";
                        i = baseResponseInfo.Code;
                        continue;
                    case 1853102642:
                        baVar.show();
                        str = "ۤ۟ۚ۬ۧۜ۬ۘۤۚۗ۬۠ۤۘۘۜ۠ۧۥۗ۠۫ۦۖۘۢۛۜۘۗۡۡۘ";
                        continue;
                    case 1893374314:
                        l10.OooO0o().OooOOOO(new MsgItem.UpdateMessageToDialog(baseResponseInfo.Message));
                        str = "ۤۜۡۘۡۖۗۢۗۨۘۥۡۚ۠ۚۗۗۚۡۘۥۥۨۘۧۥ۬۟۟۟ۧۙۜ";
                        continue;
                    case 1948574307:
                        String str14 = "ۙ۟ۥ۠۫۬ۘۗۘ۫۠ۚۤۥۖۨۨ۫ۗ۫ۡۦۚ۟ۗۛۜۘ۠۟ۖۛۥۜۘ۠ۦ۠ۗ۫۠ۚۗۘۘۘ۠ۚۚ۫ۢۘۤۚۢۛۢ";
                        while (true) {
                            switch (str14.hashCode() ^ (-1600251036)) {
                                case -919526964:
                                    str = "۫ۗۜ۠ۢۧۚۥۨ۫ۖۤۧۙ۬ۦۨ۫۫ۡ۬ۡۘ۠۟ۘۙۧۥۜۛۛۥ۠ۨۘۘۚ۬ۡۘۤ۬ۧۢ۬ۢ۠ۨۘۤۚۚ";
                                    break;
                                case 41015682:
                                    str14 = "۬ۦۜۘۖۙۨۘ۟ۦۛ۫ۡۘۢۗۘۘ۬ۜۘ۫ۜۡۗۥۦۘۢۜۘۘۤۦۘ";
                                    break;
                                case 265833248:
                                    String str15 = "۬۫ۜ۟ۛۨۘ۟ۖۡۖۚۨۘ۟ۨۥ۫ۨۧۘ۬ۙۖۘۢۤۦۥۚۚۘۤۥۥۙۚۘۚۙ۠۬ۗۜۦۧۙ۠ۡۖۧۘۘ";
                                    while (true) {
                                        switch (str15.hashCode() ^ (-611798408)) {
                                            case -2049111280:
                                                str14 = "ۤ۟ۙۡۥۦۘۗۚۢۛۤۛ۠۟ۜۡۜۖۘۖۖۤ۠ۤۛۚۜۙۖۛۖۘۤۡۖۜۥۜۘ";
                                                break;
                                            case -1924190849:
                                                str14 = "ۥۜۖۜۖۦۘۢ۠۟۠ۚۨۨۢۖۘۦۨۢۗۦۥۢ۟ۛۗۘ۟ۗۘۚۨۡ۬۫ۨۘ۠ۖۘ۠۠ۖۘ";
                                                break;
                                            case -1419972044:
                                                str15 = "۟۬ۗۚۜۜۨۤۡۘۛۧۘۘۗۘۙۦۖ۫ۙ۟ۚۘۖ۠ۙۘۘۡۛۥۘ۠ۤۘۘ۬۟ۥ";
                                                break;
                                            case 1346772044:
                                                str15 = 1100 != i ? "ۗ۫۟ۙ۠ۥۡۡۥۘۘۜۜۡۘۥۗۚۢۙ۠ۥۘۥ۠ۤۚۖۘۜ۬۬" : "ۗ۟ۘۘۙۡۚۥۢ۟۟ۚۦۘۧۘۨ۠۠ۢۖۦۧۘۢۗۦۘۘۢۧۜ۬ۜ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1712879913:
                                    break;
                            }
                        }
                        break;
                }
                str = "ۗۖۨۘۖۗۨۘۙۖۨۥۘۘۧ۫ۜۤۜۛۦۛ۟۟ۙۢۡۤۧۨۘۚۗۙۤۤۜۤۤۚۥۘۡۗۥۘۚۥ۠۠۠۠";
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable BaseResponseInfo baseResponseInfo) {
            String str = "ۙۢۡۙۥۥۤۖۡۨ۫۬۟ۡ۠ۦۨۨۚۖۘۦۗۛ۠ۡۥ۫ۧۨۧۘۛ۬ۦۘۘۘۨۡۜ";
            while (true) {
                switch ((((str.hashCode() ^ 42) ^ 89) ^ 229) ^ (-326616186)) {
                    case -1281269402:
                        str = "۠ۦۖۘۢۧۧۜۦۧۘۚ۠ۥۘۗۦۥۡۛۨۘۥۜ۠ۗ۠ۘۘۛۥۨۘۗۗۡ۟ۦۘ۠ۛۥۘۦۢۘۘۜۗۡ";
                        break;
                    case -912531198:
                        str = "ۗۙۥۘۡۧۗۜۙۚ۬ۜ۬ۖۜۖۘۦۚۧۥۜۤۖ۫ۚ۠ۛۦۘۛۥۡ";
                        break;
                    case -568837335:
                        return;
                    case 1757868242:
                        OooO00o(baseResponseInfo);
                        str = "۠ۖۥۜۗۜۘۘۦۢۙۙۨۖ۬ۦۡۙۚۤ۠ۘۛۧۥۘۥۧۜۘۦ۟۫۬ۛۢۜۖۧۘ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 implements Observer<RegCodeInfoResponse> {
        public final BindRegisterCodeActivity OooO00o;

        public OooO0O0(BindRegisterCodeActivity bindRegisterCodeActivity) {
            this.OooO00o = bindRegisterCodeActivity;
        }

        public void OooO00o(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
            String str = "ۥۙۢۗۜۡۘۙ۫۬ۜۢۦ۠ۨۢۘ۫ۚۜۢۢ۟ۘۧۖ۬ۧۘۧۥ";
            String strValueOf = null;
            String str2 = null;
            String str3 = null;
            while (true) {
                switch ((((str.hashCode() ^ 786) ^ 799) ^ 597) ^ 837692669) {
                    case -1734270196:
                        str = "۠ۨۚۘۘ۟ۢۗۙۥۖۘۘۡۚ۟ۥۜۘۚۥۚۤۢۥۧۨۜۚۨۘۦۖۥۘ۫ۚۥۘۗۚ۟ۗۡۙ";
                        break;
                    case -1705393505:
                        c5.OooO0OO(AppContext.OooO00o(), str2);
                        str = "ۦ۠۫ۨ۬ۖۘۡۗۥۥۥ۫ۜ۠ۨۡۘۡۨۤ۫ۢۥۥۖۛۖۘ۫ۨ۬ۗۨۘۦۥۘۘۤۖۘۖۙ۬ۗ۠ۖ۟ۦ۠ۤۨۖۘۧۨ۫";
                        break;
                    case -1340338457:
                        String str4 = "ۤۢۛۙۤۥۧ۫ۚۤۛۡۘۗۧۖۘۦۧ۫ۜۨۛ۟ۘ۠۠ۡ۠ۙۖۜۛۡۘ۬۫ۡ";
                        while (true) {
                            switch (str4.hashCode() ^ 1235443054) {
                                case 52664867:
                                    str = "۫ۗۧۛۡۥۘۧۦۧۘۧۦۥۘۧ۠ۖۧۘۙۤۚۜۘۢۘۧ۟ۚۡ۫ۧ۫";
                                    continue;
                                case 78946647:
                                    String str5 = "ۤ۫ۢۜۧۨۥ۫ۛۢۘ۬ۜۘۘۘۗۦۖ۬ۤۜۘۛ۠ۘ۟ۗۘۙۜۡۘۘۡۨۙۧۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ (-469103401)) {
                                            case -253233768:
                                                str5 = "ۜۚ۠۟ۙۦۘۢۛۡۢۥۚۜۧۘۚۘ۠ۦۖۦۨۖۨ۠۠ۛۨ۬ۜۨۢۨۘۖۗۦ";
                                                break;
                                            case 385378047:
                                                str4 = "۠۠ۜۧۤۨۘ۠ۧ۫ۛۢۦۙۙۥۘۤۨۘۡۧۛۛۥۡۘۘۧ۫ۖۥ۫ۚۡ۫ۘۧۧۥۦۘ۟۫ۧ";
                                                break;
                                            case 999096697:
                                                str5 = regCodeInfoResponse.Code == 200 ? "ۚ۬ۦۚۙۘۘ۫ۚۖۖ۫ۦۘۗۤ۟۬ۗۧۢۡۗۘۖۜۙۢۦۙۦۢۖۘۥۘۙۖۤ" : "ۖۡۖۘۨ۬۫ۙۧۦۢۙۤۤۘۥۘۦۨۖۤۜۜۘۚ۬ۘۙ۠ۥۨۥۡۘۡۡۘۘ۠ۙۥۘ";
                                                break;
                                            case 1621188125:
                                                str4 = "ۜۤۢ۫ۢۥۘ۫ۡۙۙ۫ۜۘۢۢۥۘۨۤۡۛۚۥۘۙۘۧ۟ۜۖ۟ۚۚۖۤ۠ۜۗۨ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1655134780:
                                    str = "ۖۧۖ۟ۘۘۙۜۖۘۜۡۦ۠۬ۤۖۨۡۨۧۙۘ۟ۗ۫ۖۜۤ۟ۜۘ۫ۡ۠۟۟ۙۚۤۙۘ۫";
                                    continue;
                                case 1737616447:
                                    str4 = "ۛۚۡۘۢ۬ۘۘۥ۫ۜۙۧۦۗۧۡۘۥۛۥۘۢۤۘۘۖۨ۬ۢۡۥۤۥۦۘۧ۫ۧ۬ۚۦۤۥۖۘۚۤۢ";
                                    break;
                            }
                        }
                        break;
                    case -1066737845:
                        strValueOf = String.valueOf(regCodeInfoResponse.Code);
                        str = "ۧ۠ۥۘ۟ۖۖۦۖ۬ۨۢۚ۟ۥۨۜۗۖۖۜۤۧۘۘۘ۠ۛۚۤ۬۟ۦۘ۠۫ۨ";
                        break;
                    case -1025520865:
                        str3 = regCodeInfoResponse.Message;
                        str = "ۚ۟ۜ۬۠ۚ۫ۖۖۘۛۚۨۘۖۙۖۘۨۡۡۘ۟ۥ۬ۘۘۡۚۥۗۨۗۨۤۖ۬ۦۙ۠ۤۦۘۛۢۛ";
                        break;
                    case -1024216260:
                        str = "ۚۢۤۦ۟ۜۘۤۖۚۖۖ۫ۘۦۦ۬ۖۨۘ۫۟ۜۦۤ۫۬۟۟ۤۘ۫ۚۜ۬۬ۡۨۚۙۚۛ۠۫ۤۨۥۤ۬";
                        str2 = str3;
                        break;
                    case -698447247:
                        str = "ۧۗۢۙۡۦۘ۬ۤۗۖ۬ۦۘۙۧۧۤۥۚۗۤۚ۫ۘۛۛۗۧۖ۟ۚۧۛۚۜۛۨۧۘۢۜۡۘۜۙۖۘۗۛۢۖۘۘۥۗۙ";
                        break;
                    case -538923962:
                        str = "ۦ۠۫ۨ۬ۖۘۡۗۥۥۥ۫ۜ۠ۨۡۘۡۨۤ۫ۢۥۥۖۛۖۘ۫ۨ۬ۗۨۘۦۥۘۘۤۖۘۖۙ۬ۗ۠ۖ۟ۦ۠ۤۨۖۘۧۨ۫";
                        break;
                    case -163876446:
                        String str6 = "ۙۘۦۘۖۛۖ۠ۗۗ۫ۨ۫۠ۖۨۘۛ۫ۨ۫ۡۥۘۢ۟۠۬ۗۜۘۖۡۘۥۧۘۢۢ۫ۡۚۥۖۡۘ";
                        while (true) {
                            switch (str6.hashCode() ^ 1393456580) {
                                case -96272537:
                                    str = "ۜۢۚۜۡۧۤ۠ۨۘ۫ۜۧۘۦۤۘ۫۠ۖۘۙۡۖۘ۠ۖۚۧۜ۟۬ۙۘ۠ۧۡۗۘۨۚۢۦۘ۫ۚۢ۠ۚۧ۟ۤۖۘ";
                                    continue;
                                case 937856642:
                                    String str7 = "ۦۢۨۨ۠۠ۙۚۜ۫ۘۤۛۘۥۥۨۡۘ۠ۜ۫ۥ۬ۥۘ۠۬ۡۘۥۦۧۢۢۘۥ۠ۡ۟ۙۘۘۥۦۨۘ۠ۢۤۜ۬ۦ";
                                    while (true) {
                                        switch (str7.hashCode() ^ (-462188845)) {
                                            case -1681234639:
                                                str6 = "ۛ۟ۡۘۛ۫ۘۘ۟ۤۤ۠ۤۢۥ۬ۡۘۖۖۙۡۧۜۘۖۗۥۘۖۥۘۘۡۜۜۙۨ۬ۧ۬ۖۘۨۛ۟ۨۖۘ";
                                                break;
                                            case -662895134:
                                                str7 = TextUtils.isEmpty(str3) ? "۫ۢۡۜ۬ۛۗ۟ۘۘۚۨ۫ۚۘۚۖۗۚۜ۟ۛۛ۠ۡۘۛۡۤ۠۫۟" : "۟ۤۤۨۨۛۚۥۦۗۛۤۧۗۛۦۢۖۛ۠ۜۘ۬ۗۘ۬ۧۘۙ۬۫ۚۨ۬۫۬ۦۘۖۖ۫ۧ۫ۗ";
                                                break;
                                            case 180886296:
                                                str6 = "ۢۙۖۘۜۛ۠ۡ۬ۛۙۨۘۘ۫ۙ۬ۨۖۘۦۥۚۘۘۨ۟ۛ۠ۖۘ۬ۛۘۘۧۚۤ";
                                                break;
                                            case 312187498:
                                                str7 = "ۧۤۤۤ۠ۛ۬ۦۨۜۢۧۤ۬۫ۙۤۜۘۨ۫ۙۢۘۘۘۥۗۗۨۛ۟ۦۗۚۡۧۢ۬ۜۛۥۦۘۚۦۡۘۡ۫ۨۘ۟ۚۖۘۡۨۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1183946056:
                                    str6 = "ۤۗۦۘۦ۫۠۠ۤۗ۬ۧۦۨۘۨۢ۫ۜۘۦۘۥۘۦۡۜۘۚۗۧۧۙۙۦۡۜۘۢۨ۬۫ۜۨۘ۬۫ۜۘ";
                                    break;
                                case 2012016627:
                                    str = "ۤ۫ۡۘۨۗۦۘۖ۠۟ۚۛۤۘۡۖۘۥۤۛۘ۟ۡۖۨۧۢۨۦۘۢۖۧۘ۬۠ۦۘۡۢ۠ۤ۬ۧۜۚۖۘ۬ۗۦۘۖ۠ۖۤۢۖۦۦۥ";
                                    continue;
                            }
                        }
                        break;
                    case 446193986:
                        BindRegisterCodeActivity.OooOO0(this.OooO00o, regCodeInfoResponse.Data);
                        str = "ۗۜۥۘ۟ۦۨ۫ۨۖۜۧۜۗۚۘۡ۬۠ۥۜۦۚۡۘۢۚۜۘۤۤۚ";
                        break;
                    case 571163278:
                        return;
                    case 1267253297:
                        str = "ۤ۫ۡۘۨۗۦۘۖ۠۟ۚۛۤۘۡۖۘۥۤۛۘ۟ۡۖۨۧۢۨۦۘۢۖۧۘ۬۠ۦۘۡۢ۠ۤ۬ۧۜۚۖۘ۬ۗۦۘۖ۠ۖۤۢۖۦۦۥ";
                        str2 = strValueOf;
                        break;
                }
            }
        }

        @Override // androidx.lifecycle.Observer
        public /* bridge */ /* synthetic */ void onChanged(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
            String str = "ۛ۬ۥۘۘۚۡۘ۠۟ۡۧۘ۟ۜۘۢۢۖۤۦۖۘ۫۬ۡۦۗۗۘۤ";
            while (true) {
                switch ((((str.hashCode() ^ 806) ^ 752) ^ 376) ^ (-603379939)) {
                    case -126541740:
                        str = "ۚۧۦۤۨۧۘۘۡۦۘۤۦۘۘۚۙۚۚۥۧۗۛۙۡۖۖۘۘۥۨۥۖۢۦۧۨۘۥۘۥۘ۫۠ۦۧۢۛ۟۠۟۫ۙۜ";
                        break;
                    case -110622638:
                        return;
                    case 302701539:
                        OooO00o(regCodeInfoResponse);
                        str = "ۥۛ۬ۗۦ۟۬ۥ۬ۜ۟۠ۖۗۡۖ۟ۥ۠ۗۨۧۘۥۡۨۜۡۦۘ";
                        break;
                    case 1185752831:
                        str = "ۦ۠ۜۘۨۢۡۥۥۦۗۢ۬ۧۢۧۥۙۗۥۘۚۦۦ۬ۦۛۡ۟ۛۤۨۙۥ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements View.OnClickListener {
        public final AlertDialog OoooOoO;
        public final BindRegisterCodeActivity OoooOoo;

        public OooO0OO(BindRegisterCodeActivity bindRegisterCodeActivity, AlertDialog alertDialog) {
            this.OoooOoo = bindRegisterCodeActivity;
            this.OoooOoO = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۖ۫ۥۨۢۜۤۙۨۘۢۙۡۦۤۧۢ۫ۘۙۧۨۧۘۨۘ۠ۡۨۢۨ";
            while (true) {
                switch ((((str.hashCode() ^ b.by) ^ 625) ^ 2) ^ 504101359) {
                    case -1905164403:
                        this.OoooOoO.dismiss();
                        str = "ۡۖۨ۠ۛۤۖۨۖ۫۬۫ۧ۟ۥۘۙۜۚ۬ۚ۟۬ۢۛ۫ۢۘۜۢۦۧ۠ۡۘۘۖۧۘۚۘۘۦۚ۠";
                        break;
                    case -637952276:
                        ((oa) BindRegisterCodeActivity.OooOO0o(this.OoooOoo)).OooOo0O(BindRegisterCodeActivity.OooOO0O(this.OoooOoo), 0);
                        str = "ۦ۠ۘۘۗۚۢۗۦۥۗۦۡۤ۟ۙ۠ۥۜۘۥۛۡۘۧۨۦ۠۠ۦۡۗۨۘ";
                        break;
                    case -40485656:
                        str = "ۨۥۚۘۥ۫۠ۛۡ۬۫ۙۚۗ۠۠۟ۢ۟ۥۘۜۚۖۘۙ۟ۘ۫ۜۖۡۚۜۜۥۖۢ۟ۦۗ۬ۙ";
                        break;
                    case 1602764915:
                        str = "ۖۥۜۘۨۘۨۘۤۛۜۘ۠ۗۖۙۘ۫۫ۡۘۤۗۜۘۗۡۘ۟ۡۧۘۛۥۤۚۛۘۘۤۦۢۢۧۖۙۢۘۘۢۜۘۨۘۤ";
                        break;
                    case 1780612234:
                        return;
                }
            }
        }
    }

    public class OooO0o implements View.OnClickListener {
        public final AlertDialog OoooOoO;
        public final BindRegisterCodeActivity OoooOoo;

        public OooO0o(BindRegisterCodeActivity bindRegisterCodeActivity, AlertDialog alertDialog) {
            this.OoooOoo = bindRegisterCodeActivity;
            this.OoooOoO = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۨۦ۫ۤۤۖۘۦ۟ۤۖۘۙۚۚۤۗۨۧۜۤۜۘۖ۫۫۫ۧۧۨۧۘۘ۫ۨۥۙۖ۫";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT_VALUE) ^ 22) ^ 981) ^ (-1106016668)) {
                    case -1227348116:
                        str = "ۖ۟ۤۛۘۧۘۘۨۘۘۧۧۡۘۚۤۥۨۡۙۗۦۤۜۛۢۨۦۙۥۦۘۧ۟ۦۘ۫ۚ۬";
                        break;
                    case -816813793:
                        str = "ۢۗۜ۠۫ۦۤۢ۫۫ۢۡۘۢۙ۠ۛۛۨ۠ۥۥۗ۠ۖۚۘۖۛۜۦۘ";
                        break;
                    case 436374400:
                        this.OoooOoO.dismiss();
                        str = "ۥۛۧ۟ۡۡۙۛ۠ۘ۟ۘۛۢۜۗۡ۠ۥۧ۫ۤۛۡۘۨۛۗۦۜۨ۠ۧۨۙ۟ۦۡ۬ۦۘۧۦۡۦۤۧۦۚۦ";
                        break;
                    case 979359272:
                        return;
                    case 1276166744:
                        ((oa) BindRegisterCodeActivity.OooOOO0(this.OoooOoo)).OooOo0O(BindRegisterCodeActivity.OooOO0O(this.OoooOoo), 1);
                        str = "۬ۛۘۨۙۡۢۥۛۛۧۙۗ۬ۘۘۦۛۜۡۢۜۘۙۧۜۡۙۡۙۦۘۥ۬۬ۛۘۦۘۗۡۥۘ۬ۖۚ";
                        break;
                }
            }
        }
    }

    public class OooOO0 implements Runnable {
        public final BindRegisterCodeActivity OoooOoO;

        public OooOO0(BindRegisterCodeActivity bindRegisterCodeActivity) {
            this.OoooOoO = bindRegisterCodeActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۗ۬ۡۗ۬۠ۢۧ۟ۛۥۛۧۛۖۡۤۨۘۦۖۖۘ۟ۥۘۘۨۖۗۥۜ۟ۛۡ۫ۗۦۨۥۡۘۢۘۖۤ۫ۨۘۗۘۥۘۘۢۜۦۦۧۘ";
            while (true) {
                switch ((((str.hashCode() ^ 176) ^ 943) ^ GuideToClickView.a.g) ^ 1664291432) {
                    case -1890948634:
                        str = "۠ۖ۟ۥۤۨۤۨۚۘ۫ۧۚۡۢ۟ۘۧۧۗۘۤۤۗۤۖ۬ۚۗۦۘۦۜۘۘۤ۟ۛۡۡۜ۫۬۟ۢۡۦۛۢ";
                        break;
                    case 705934407:
                        BindRegisterCodeActivity.OooOOO(this.OoooOoO, false);
                        str = "ۚۦۙۨۙ۟۟ۘۛۨ۬۠۠ۚ۠ۢۥۚ۠۫ۤ۟ۦۤۡۖۖۘۥۚۧۖ۬ۢۚۨۜۘ۫۫۠ۦۢۚ۠ۤۖۘۡ۟ۜۘ";
                        break;
                    case 813136101:
                        return;
                }
            }
        }
    }

    public class OooOO0O implements View.OnClickListener {
        public final BuyRegCodeConfigInfo OoooOoO;
        public final BindRegisterCodeActivity OoooOoo;

        public OooOO0O(BindRegisterCodeActivity bindRegisterCodeActivity, BuyRegCodeConfigInfo buyRegCodeConfigInfo) {
            this.OoooOoo = bindRegisterCodeActivity;
            this.OoooOoO = buyRegCodeConfigInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(this.OoooOoO.BuyLinkUrl));
                String str = "ۨۡ۫ۛۗ۠ۧۢۡۚ۫ۥۘۥۙ۫ۘۛۙۦۜۖۘۥۖۨۘۡۥ۬۫ۥۧۘۥ۠۟۠ۦۘۗۧ۫ۚۦۖۘۢۗ۬ۡۜ۬۠۫ۘۛۜ۟";
                while (true) {
                    switch (str.hashCode() ^ 2136054238) {
                        case -946486779:
                            str = "ۜ۠ۤۛۥ۟۬ۜۘۚۜۚ۬ۤۜۨۧۦۘۘ۟ۡۨۛۡ۠ۗۚ۟ۡۧۗ۟ۦۤۗۡۜۘۖۘۙۗۖۙۨۥۘۖۦ۫";
                            break;
                        case 418435848:
                            break;
                        case 632624189:
                            String str2 = "۟ۘۚۛۡۖۘ۫ۤ۠ۤۛ۫۠ۡ۫ۛۚۤۛۜۙۛۖۖۘ۬ۘۘۖ۫ۦۦۦۥۘۧۚۥ";
                            while (true) {
                                switch (str2.hashCode() ^ (-732941229)) {
                                    case -1531552475:
                                        str2 = !BindRegisterCodeActivity.OooOOOO(this.OoooOoo, AppContext.OooO00o(), intent) ? "ۡۖۧۥۨ۫ۖۤۜۤۨ۟ۙۡۘۤۖۡۘ۫ۗۥۘۗۢۙۧۘۢۗۙۛ۬ۘۢ۬ۚۡ" : "ۛۛۜۘۗۖ۬ۜۜۥۛ۫ۥۘۧ۟ۜ۟ۖۨۘۦۚ۬۬ۙۡۥۚۤۡۛۘۘۧۢۧۛۗۦۘ";
                                        break;
                                    case -1022945459:
                                        str2 = "ۙ۫ۥۘۗۖۖۘ۟ۧ۠ۧ۫ۨۖ۟ۥۛۧۥۘۡۖۦۘ۟ۡۜۘۘۥۖۘۥۖۚ";
                                        break;
                                    case 1421686002:
                                        str = "ۢۢۢۙۗۡۙ۫ۘۘۥۨۦۘۗۨۧۘ۬ۢ۬ۡۖۤۥۤۦۘۙۨۦۘۖۥۦۘ";
                                        continue;
                                    case 1883143135:
                                        str = "ۜۥۧۘۗ۠ۗۜ۫ۛۛۧۙۛ۟۟۠ۢۡۘ۠ۧۤۧ۬ۢۜۚۚۖ۟۫ۨۖۨۘ۟ۥۦۘ";
                                        continue;
                                }
                            }
                            break;
                        case 744248971:
                            intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
                            break;
                    }
                }
                this.OoooOoo.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
                c5.OooO0OO(AppContext.OooO00o(), this.OoooOoo.getString(R.string.invalid_url_address));
            }
        }
    }

    public class OooOOO0 implements TitleView.OooO0O0 {
        public final BindRegisterCodeActivity OooO00o;

        private OooOOO0(BindRegisterCodeActivity bindRegisterCodeActivity) {
            this.OooO00o = bindRegisterCodeActivity;
        }

        public /* synthetic */ OooOOO0(BindRegisterCodeActivity bindRegisterCodeActivity, OooO00o oooO00o) {
            this(bindRegisterCodeActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۨۦۘۥۗۥۥۚ۟ۙۥۜۜۢ۬ۡۜۗ۬ۚۗ۠۫۬ۡ۫ۨۡۙۗۜۙۘۘۚ۬ۡۘۚۨۘۤۨۤ۬۟۫ۥ۟ۙ۬ۙ۫ۗۗ۠";
            while (true) {
                switch ((((str.hashCode() ^ 712) ^ 480) ^ GuideToClickView.a.e) ^ 666418178) {
                    case -2060569171:
                        this.OooO00o.finish();
                        str = "ۥ۠ۢۛ۠ۨۨ۫ۗۤۥۘۜۧۘۘۢۧۜۘۧ۠۠۬ۛۖۘۡ۬ۥۢۥۚۢ۟ۨۘۤ۟۫";
                        break;
                    case -1922473398:
                        return;
                    case -1656115296:
                        str = "ۗۢۤۢ۟ۡۖۗۛ۟ۤ۫۬ۘۘۡ۬ۥۘۖۥۨۘۗ۬۬ۡۖۘۘۖۥۙۤۥۨۘۜۜ۬ۧۦۗۛ۫ۥۘ";
                        break;
                    case 888539363:
                        str = "ۤۚۥۚۤۖۤۦۧۘۘ۠ۨۘۤۘۡۢۜ۠۠ۖ۠ۜۢۙۢۛ۫۟ۘۗۡ۫ۜۤۨۘۧۘۡۢ۫ۖۘ۬ۨ۫ۜۨۢۢۙ۟";
                        break;
                }
            }
        }
    }

    static {
        String str = "ۡۡۗۢۖۙۘۥۢۜۡ۟۫۫ۜۘۙ۫ۦۗۨۧ۟ۥۥۘۡۙۙ۫ۙۧۚۤۜۘۤۤۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 364) ^ 965) ^ 697) ^ 1659745504) {
                case 70311576:
                    oo000o = new String[]{"android.permission.CAMERA"};
                    str = "ۖ۫ۡۛۗۘۧۧۤۦۜۖۘ۠ۦۨۗ۟ۡۜۨ۠۬ۖۥۘ۫ۙۖۧۖۦۘۢۢۖۘۨۡۡۘۜۨۜۘ۫ۗ۟";
                    break;
                case 113592846:
                    return;
            }
        }
    }

    public static /* synthetic */ void OooOO0(BindRegisterCodeActivity bindRegisterCodeActivity, QueryRegCodeInfo queryRegCodeInfo) {
        String str = "ۨۧۗۦۢۤۘۦۡ۟ۗۦۘۛۜۤۡۘۦۘۧۤ۬ۖۧۜۥ۟ۡۤۢۘ۬ۗۛۡۛ۠ۥۘ۬۟۟";
        while (true) {
            switch ((((str.hashCode() ^ 711) ^ 985) ^ 244) ^ 233004586) {
                case -1552384575:
                    return;
                case 493000885:
                    str = "ۧۘۤۜۙ۟ۡۧۤۧۨۡۛ۟ۥۘۤۖۨۘۛۥۚۙۨۘۘ۠ۧۥۘۗۡۥۘۢۗۧۢۖۘۘ۬ۢ۫ۛ۬ۥ";
                    break;
                case 501013229:
                    bindRegisterCodeActivity.OooOOo(queryRegCodeInfo);
                    str = "ۡۗ۫۟ۚۗ۠ۜۜۘ۬ۥۖۘ۠ۧۘۘۨۛۦۖۥۘۘۢۘۜۧۧۜۙۥۘۨۜۖۡ۠ۦۘۧۢۘۘۢۧ۟";
                    break;
                case 930960185:
                    str = "ۖۚۦۧۘ۬ۡۨۨۤ۬ۡۘ۬ۡۨۘۗۙۙۥۖ۠ۙۢۛۥۙۢ۫۟ۥۘ۫ۧ۫ۖۚۘۖۥۧۘۗۘ۠ۚ۫۬ۛ۫ۘۥۨ۬ۛۛۖ";
                    break;
            }
        }
    }

    public static /* synthetic */ String OooOO0O(BindRegisterCodeActivity bindRegisterCodeActivity) {
        String str = "ۘۜۗۨۚۚ۟ۨۢ۬۬ۢۘۡۛۖۚۜ۫ۜۘۗۜۜۥ۫ۛۙ۫ۛۙ۠ۚ۟ۤۖۘۛۖ۠۬ۗ۬ۛۤ۬ۥۥۨۤۥۦۨۧ";
        while (true) {
            switch ((((str.hashCode() ^ 571) ^ 619) ^ 897) ^ 793729078) {
                case -757006378:
                    str = "ۗۧۧۡۘۡۘ۬ۖۤۡۘۖ۠ۤۦۘ۫ۡۡۖ۟ۜۡۦ۫۠ۚۛۜۦۗۘۘۥۘۦ۠ۨۘۜۧۘۡۢۚۧۗۦۘ۬ۚۡۖۧۢۥۗۦ";
                    break;
                case 1760755910:
                    return bindRegisterCodeActivity.OooooOO;
            }
        }
    }

    public static /* synthetic */ AndroidViewModel OooOO0o(BindRegisterCodeActivity bindRegisterCodeActivity) {
        String str = "ۚۘۥۘۦۜۤۡۙ۫ۜۖ۠ۦۧۥۘۖۨ۠ۨۢ۟ۥۢۥۜ۠ۜۡۤۤ";
        while (true) {
            switch ((((str.hashCode() ^ 63) ^ 446) ^ 200) ^ (-1493630730)) {
                case -2086893943:
                    str = "۟ۗۧۤۢۖۢ۬ۖۘۥۦۜۙۥۥۘۧۧۖ۠ۗۨ۫۬ۙ۟ۦۦۘۘۘۤ۠۟ۡۢۤ";
                    break;
                case 1654801486:
                    return bindRegisterCodeActivity.OooooO0;
            }
        }
    }

    public static /* synthetic */ boolean OooOOO(BindRegisterCodeActivity bindRegisterCodeActivity, boolean z) {
        String str = "ۜ۬ۥۙ۫ۡۘۤۢۨۘۡۧۥۜ۫ۖۘۨۤۖۧ۬ۢ۬ۗۢۚۜ۬ۤۗ۫۠ۥۚۖۨۘۡۥۜۧۜۖۨۛ۬ۗۙۥۘ۬ۙۖۘ۠ۖۨ";
        while (true) {
            switch ((((str.hashCode() ^ 413) ^ 72) ^ UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE) ^ (-1387200119)) {
                case -391073887:
                    str = "ۨۗۚۥۚۥۛۘۧۡۜۘۧۛۙۘۤۜۘۛ۠ۜۘۡۙۤۢ۟ۧۘۜۚۚۙۥۘۨۖۡۢۘ۬ۜۜۥۘۜۧۛۧۜۘ";
                    break;
                case -341186383:
                    str = "ۖۨۛۚۦۢۙ۬۫ۧۜۚۚۦۦۖۨۘۡۦۘۘۙۡۨۤۨ۠ۙۦۧۘۧۡۘۛۖۗ";
                    break;
                case 804823521:
                    return z;
                case 1863886831:
                    bindRegisterCodeActivity.o00ooo = z;
                    str = "ۥۗۦۘ۟ۙۚ۫۫ۘۦۦۢ۠ۚۦۢۧۢۜۖۚۛۚ۬ۖۨۘ۠ۦۘۘۙ۟ۨۧۢۦ۫ۥۗۡۢ";
                    break;
            }
        }
    }

    public static /* synthetic */ AndroidViewModel OooOOO0(BindRegisterCodeActivity bindRegisterCodeActivity) {
        String str = "ۚۨۥۘۨۧۡۢۚۘ۫ۙۥۤۨ۫۬ۚۖ۬ۨۜۘۢۗۖۚۘۨ۠ۧۛۖ۫ۥۘ۫ۤۜۘ۫ۤۢۦۦۖۘۥۘۨۘۖۢۡۢ۬ۨۘۗۛۛ";
        while (true) {
            switch ((((str.hashCode() ^ 895) ^ 514) ^ 822) ^ (-668130471)) {
                case -1991741011:
                    str = "ۛۧۛۢۥۢۚۖۙ۟ۤ۬۟ۦۡۘۘۤۥۛۨ۬ۘۛۡۚۙۥۖۖۘۦۘۗ۬ۚۥۘۢۚۜۧۖۛ";
                    break;
                case -116839666:
                    return bindRegisterCodeActivity.OooooO0;
            }
        }
    }

    public static /* synthetic */ boolean OooOOOO(BindRegisterCodeActivity bindRegisterCodeActivity, Context context, Intent intent) {
        String str = "ۤۧۜۢۗۥ۟ۚۨۘۚۧۙۦۡ۟۠۟ۙ۠ۚۘۦۗ۠ۧۡۤ۟ۖ۟";
        while (true) {
            switch ((((str.hashCode() ^ 680) ^ PointerIconCompat.TYPE_GRAB) ^ 579) ^ (-200465045)) {
                case -1021495652:
                    return bindRegisterCodeActivity.OooOOOo(context, intent);
                case 1296438840:
                    str = "ۤۡۘۘۡۥۘ۬ۥۡۢۨۧۖۤۥ۬ۙۦۘ۟۬ۨۡۚۚ۫ۤ۟ۙۖۤۢۘ۬ۦۖ۫ۧۗۡ۟";
                    break;
                case 1416340451:
                    str = "ۜ۫ۧ۬ۨۢۘۖۨۘۤۧ۠ۢ۟ۜۘ۫ۛۡۢۚۛۜۤ۠۫ۛۨۛۙۙۧۚۥۤۗۚ";
                    break;
                case 1454181843:
                    str = "۟ۥۤۡۡۢۦۜۨۛۖۦۖ۬ۖۘۨ۟ۢۦۥۜۘۙ۠ۤۖۖۧۨۢۛ۫ۢ۟ۧۧۜۧۨۤۡۜۡۘ۬ۘۦ۠۠";
                    break;
            }
        }
    }

    private boolean OooOOOo(Context context, Intent intent) {
        String str = "ۤۖۗۨۚۦۘۨۜۥۘۙۧۡۥۤۖۘۧۜۚۙۤۦۘۚۥۖ۠ۧۚ۫ۢۜۡۢۡۘۛۦۚ";
        while (true) {
            switch ((((str.hashCode() ^ 445) ^ 729) ^ 780) ^ (-110599437)) {
                case 608452471:
                    str = "ۢۜ۠ۡۙۨۢۦۧۧۚۘۘ۠ۘۢ۫ۚۤۡۦ۬ۢۛۦۘۚۗ۫۫ۥۘۗۙۛۜۚۨۘ";
                    break;
                case 986811676:
                    return !g6.OooO0O0.equals(context.getPackageManager().resolveActivity(intent, 65536).activityInfo.packageName);
                case 1012776487:
                    str = "ۜۨۡۙ۠ۚۧۤۡۘۨۛۨۘ۫ۛۨۙۦۜۖ۠ۤۢ۟ۦۡ۟ۖۦ۬ۖۗۧۡۡۜۢۗۚۖۨۧۘۨۚۘۢ۬ۖ۬۠ۜ۬۠";
                    break;
                case 2070195619:
                    str = "ۧۨ۠ۗۧۘۘۨۡۥۥۥۢۚۦۛۤۧۜۤۘۧۦۘۢ۟ۜۚۦۗۨۨۥ۟ۦۢۤ";
                    break;
            }
        }
    }

    private void OooOOo(QueryRegCodeInfo queryRegCodeInfo) {
        String str = "۬ۡۖۦۧۢۤۥۙۥۛۢۧ۫ۘۘۧ۬ۛۤۦۧۘۨۚۜۘۗۜۘۛ۬ۡۖۗۚۗۨۘۢ۬ۜۛۖۜۘ";
        TextView textView = null;
        TextView textView2 = null;
        AlertDialog alertDialogOooO0o0 = null;
        while (true) {
            switch ((((str.hashCode() ^ 318) ^ 811) ^ 84) ^ 1634690113) {
                case -1451783534:
                    String str2 = "ۛۖۖۙۧۥۘۤۜۧۘۥ۟۫ۖۢۚۦ۬ۦۘۘۦ۫ۘۦۜ۬۠ۦۗۡۗ۟۫ۨۘۦ۟ۚ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1669689170)) {
                            case -1932061898:
                                str = "ۥۦۙۨۙۧۙۥۘۦ۬ۖۖۨۨۘۖ۠۬ۧۛۘۙ۠ۚۗۦۛ۟ۨۢ";
                                continue;
                            case -1854513551:
                                str = "ۦۙۘ۬ۤۧ۫ۡ۫ۦۢۚۨۤۧۙۢۛۢ۟ۥۧۥۗ۫ۖ۫۫ۢۦۘ";
                                continue;
                            case -477470221:
                                str2 = "ۚۥۦۘۙ۫ۦۤۦۘۨۨ۟۫ۥۚۜۖۦۤۗ۠۟ۜۘۗۗۢۧۡ۬۟ۛۙۜۧۘۛۡ۫ۡۗ۫ۛۡۘ۟ۧۙۚۥۥۜۨۖۘ";
                                break;
                            case 1122046769:
                                String str3 = "۟۟۠ۗۙۨۧۙۜۡۙ۠۫ۧۢۜ۫ۨۘۧۨۖۧ۠ۙ۬ۜۖۢۦ۟";
                                while (true) {
                                    switch (str3.hashCode() ^ 1089623677) {
                                        case 641580297:
                                            str2 = "ۧۖۢۖۚۜۤۥۨۘۚۡۛۙۖ۫ۛۜۧۘ۬ۧ۫ۦۢ۟ۢۧۗۘ۠ۨۥۧۙۨ۬ۙۘۨۘ۟ۥۨۘ";
                                            break;
                                        case 1173341468:
                                            str3 = queryRegCodeInfo.IsSuperposeConfirm == 1 ? "ۗ۟ۧۤۚۧۙۡۢۜۚ۟۟ۙ۫ۢۚ۫ۥۚۡۦۗ۟ۨۥۜۘ۠۠۠ۖ۫ۙۨۨۘۢ۫ۗۢۗۜۘۙۘۥۨۦ۠" : "ۡۤۢۗۤۢۜۗۡۥۧۖۚۙۘۘ۬ۛۜۘۗۙۛۥۗۤۨ۟۠۟ۜۦۧۙۚۢ۠ۡۦۧۘۡۡۙۦ۫۟ۖۗ۬ۘ۫ۖ۠ۘۘ";
                                            break;
                                        case 1372094895:
                                            str2 = "ۧ۠۬ۛۨۨOۜۡۨۘۡۨ۟ۖۡ۠ۧۥۘۖۢۤۨۘۥۚۛۥۙ۬۠ۖۖ۟";
                                            break;
                                        case 2106375712:
                                            str3 = "ۙ۬ۢۛۜۡۘۛۢۗۖ۬ۜۘۧۥۢۙۥۤۜۗۥۗۘ۟۫ۜۜۘۚ۬ۦ۬ۖۡۘۛ۠۠ۨۦ۫۟۬ۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1219092631:
                    str = "ۤۖۢۗۚۗۚۢۤۗۛۨۜ۟۟۟ۥۘۥۘۘۘۙۦۥۜۖۘۧ۬ۡۘۥۦۦۘۛۨۢۦۦۥۘۙ۟ۘ۬ۧۥۘۦۧ";
                    textView = (TextView) alertDialogOooO0o0.findViewById(R.id.id_tv_superimposed);
                    break;
                case -1163014265:
                    textView.setOnClickListener(new OooO0o(this, alertDialogOooO0o0));
                    str = "ۨ۠ۛۚۥۨۤۙۘ۬ۘۦۘ۠ۥۧ۫۟۠ۘۥۚۥ۠۬ۗۨۘۧۦۥۘۧۛۙ۬ۖۨۡۥۥۧۘۙ۫ۗۛۥۡ";
                    break;
                case -1099004020:
                    return;
                case -486821157:
                    alertDialogOooO0o0.setCancelable(false);
                    str = "ۙۧۤۜۧۜۘۗۥۡ۬ۥۜۛۦۡۘۨۛۙۢۜ۠ۨۢۛۚۗۚ۟ۡۖۤ۫ۨۘ۫ۢۨۜۘۗ۟ۜۘ";
                    break;
                case 125551839:
                    str = "ۨۙۡۘ۟۬ۧۙۦۢۚۜ۟ۥۢۙ۟۬ۤۢۥۡۛۙۦۡ۫۠ۥۚۤ۠ۧۦۥۜۘ۠ۚۦۘ۬ۛ۟ۖۧۙۦۗۥۘ";
                    break;
                case 175874577:
                    alertDialogOooO0o0.show();
                    str = "ۢۗۦ۬ۛۡۘ۬ۜ۬ۧۡۦۗۛۨۘۡ۬ۚۖۤۦۖ۠ۗۡۜۤۛۦۢۛۖۜۢۚۥۘ۟ۖۢۡ۬ۧۙۜۧۤۙۥ";
                    break;
                case 257026371:
                    textView2.setOnClickListener(new OooO0OO(this, alertDialogOooO0o0));
                    str = "ۧۚۜۡۨۦۗۗۦۙۨۖۡۗۚ۬ۘۨۘۗۨۛۜ۫ۨۘۙۖۥۘ۬ۡ۫۬ۧۡۦۧۥۘۦ۠ۢۙۜۘۡۥۤۘۙۜ۬ۜۘۘۧ۟۫";
                    break;
                case 295283650:
                    str = "ۗۛۜۘۜۢۢۥۙۜۧۛۗۜۘۧ۫۬ۧۧۘۢۜۖۘۗ۬ۜۘۢ۫ۧۡۙۘۗۛۨۛۥۚۥۘ۠ۦ۬۫ۨۤ";
                    break;
                case 313510343:
                    str = "ۧۚۚ۠ۨۖۡ۟ۘۘۦۡۧۘۥ۠ۥۡ۠ۦۘ۠۠ۨۘۧۖ۬ۥۖۨۛۢۨ۟ۧ۬۬ۨۚ۬ۤۘۥۘۘ";
                    break;
                case 875573054:
                    str = "ۦۦۢۥۜۙۧۦۗۘۜۘۨۚۦۘۢۜۜ۟ۧۦۗۢۛۗ۠ۡۢ۟ۖۘۧۚۥۘۦۤۦۘۗۗۚۗۚۢۖۥۡۡۨۘۘ";
                    alertDialogOooO0o0 = x9.OooO0O0().OooO0o0(this, R.layout.dialog_overlay_regcode, R.style.Theme_Dialog);
                    break;
                case 899148242:
                    str = "ۖۛۨۦۢۜۗۛۜۘۥۨۧۢۡ۫ۢۙۢ۫ۗۚۜۜۡۘۖ۫ۧۢۤۜۘۡ۠ۥۘۦ۫ۛ۠ۛۖۢۖ۠ۡۢۨۘۗ۫ۘۘ";
                    textView2 = (TextView) alertDialogOooO0o0.findViewById(R.id.id_tv_no_superimposed);
                    break;
                case 2039382106:
                    ((oa) this.OooooO0).OooOo0O(this.OooooOO, 0);
                    str = "ۧۚۚ۠ۨۖۡ۟ۘۘۦۡۧۘۥ۠ۥۡ۠ۦۘ۠۠ۨۘۧۖ۬ۥۖۨۛۢۨ۟ۧ۬۬ۨۚ۬ۤۘۥۘۘ";
                    break;
            }
        }
    }

    private void OooOOo0() {
        TextView textView = null;
        TextView textView2 = null;
        TextView textView3 = null;
        TextView textView4 = null;
        View view = null;
        View view2 = null;
        View view3 = null;
        int i = 0;
        BuyRegCodeConfigInfo buyRegCodeConfigInfo = null;
        TextView textView5 = null;
        int i2 = 0;
        int i3 = 0;
        String str = "ۗۢۙ۬ۦۥۘۙۘۢۨ۫ۢۡۧۘۖۘۡۜۖۥۘۥۙۡۜۧ۫۬ۜ۬ۜۥۘ۫ۗۛۦۖۘۥۛ۟ۘۢۘۘۨۙۚۡ۬ۜۘ۬ۧۢ";
        while (true) {
            switch ((((str.hashCode() ^ 233) ^ 893) ^ 493) ^ 1549026022) {
                case -2140068715:
                    view3 = this.o00Oo0;
                    str = "۬۟ۦۧۖۡۖۨۧۖۢۖ۫ۡۥۘۙۡۘۘ۠ۤ۠ۛ۫ۦۖۨۙۢۥۢ";
                    continue;
                case -2027673150:
                    this.Oooooo0.setVisibility(8);
                    str = "ۥۙۗۢۦ۠۬ۗۡۘۜۜۥ۠ۗۖۦۘۤۛۖۤ۟۠ۢ۫ۖۘۙۛۨۘ";
                    continue;
                case -1972887562:
                    String str2 = "ۗۦۡۛ۬ۘۘۧۗۘۘۚۢ۠۬ۖ۟۫ۦۦۥۦ۠ۘ۬ۦۘ۟ۜۧۘۗۙ۫۬ۤۛ۫۟ۨۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 73107481) {
                            case -1800377465:
                                str2 = "ۖۚ۠۠ۖۦۤۖۡۘۗۗۨ۟ۚۖۘ۬ۛ۬ۥۚۘۘۤ۟ۘۥۡ۠ۛۡۦ۟۫۬۫ۡۘۖۖۚۗۨ۬";
                                break;
                            case -214491525:
                                break;
                            case -157819217:
                                String str3 = "ۧۨۦۘۨۧۥۘۤۢۡۘۖۡۢۜۖۖۘۢ۫ۖۘۜۡۡۘۥۥۧۘۡ۠ۡ۠ۖۧ۠ۨۚۙ۬ۖۘ۫ۙۡۜۗۚۢۢۨۘۙۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-416008266)) {
                                        case -1888786771:
                                            str2 = "ۧۢۜ۫ۙۤ۟ۨۨۘۨۡۗۥۥۖۘۢۨۡۘۗۙ۬۬ۤۡۘۗۗۘۘ۠۟۟ۧ۬ۘۖ۬ۙ۬ۜۧۛۡۙ";
                                            break;
                                        case 456628454:
                                            str2 = "ۛ۟۫ۧ۫ۜ۬۠ۦۛۡۘۖۜۦۘۗۗۛ۫ۢۥۘۢۡ۫ۢۡۡۘ۠ۡۖۘ۫ۜۘ";
                                            break;
                                        case 575385887:
                                            str3 = m7.OooO0o0().OooO0o.size() > 0 ? "ۜۡۛۥ۠۫ۜۙۙۢۦ۟۬۠ۦۛۦۗۜۗۛۤۥ۬ۜۡۘ۬ۥۛۦۡۡۘ۬۫ۘۘۚ۬ۛۧۦۖۙۥۘ۬ۖۧۘ" : "ۡۘ۫ۢۚۖۗۛۥۘۤ۟ۖۘۙۛۢ۟۠ۘۤۨۡۤۨۚۧۜۢۧۧۚۢۨۘۥۛۖ۟ۨۥۘ۫ۧۦۜۥۖۘۦۨۨۘ۬ۗۗۨۤۡ";
                                            break;
                                        case 2072030541:
                                            str3 = "ۦ۠۟ۚ۫ۥۘۜۛۘۘۗۜۨ۟۫ۤ۫۫ۨۘ۟ۧۘۨۡۘۗۛۧۧ۠ۥۖ۠ۖۘۦۧۡ۟ۥۜۛۜۘ";
                                            break;
                                    }
                                }
                                break;
                            case 384404523:
                                str = "ۙۤ۫ۗ۬ۘۘۡ۫۫ۜۘۦۜۥ۫ۘ۟ۘۡۡۘۨۗ۠ۧۙۥ۬ۥۜۘۥۥۦۘۤۙۜۥۘۜۘ۫ۢۜۥۨۘۧۖۗ";
                                break;
                        }
                    }
                    break;
                case -1831384353:
                    textView3 = this.o0OoOo0;
                    str = "ۛۡۦۘۜۖۛۢۜۥۗ۫ۨۗۙۥۘ۠ۜۙ۟۫ۛۨۧۧۛۨۘ۠ۚۛۜۜۖۘۦ۬ۖۘ";
                    continue;
                case -1652511313:
                    textView5.setVisibility(0);
                    str = "ۢ۠ۙۥ۠ۛۤۜۘ۠ۥۦ۠ۧ۠ۘۢ۬ۦۤۤ۬ۛۗۚۚۨۥۦۘۙۢ۫ۛۥۜۤۨۡۘۗۤۦۘ";
                    continue;
                case -1593051426:
                    new View[]{view, view2, view3}[i3].setVisibility(0);
                    str = "ۜ۫ۘۘۘۨ۬۟۫ۖۘۤۨۨۖۧۥ۬ۖۘۛۗۘۘۖ۬ۥۘۗۜ۬ۘ۬ۦۨۦۤ۠ۢۦۘۨۦۨۘۡ۠ۨۘ۫۬ۜۜۤۡۘ۟ۨۧۘ۬۫ۗ";
                    continue;
                case -1301556081:
                    String str4 = "۬ۘ۟ۨۜۡۘۨۜۘۗۨۤۙۧۛۧ۫ۗۨ۠ۛۖ۠ۤۙۚۥۘۗۡۥۘۘۦۥۦۙۛ۠۟۫ۚۘۨۜۙۥ۟۟ۜۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 668293960) {
                            case -1956580020:
                                break;
                            case -1056396102:
                                str4 = "۬۫۠ۥۙۨۥۥۦۖۘۚ۠ۘۘۥۡۧۘۘ۫۫ۘۤۦۜۘ۫ۖۛۤۚۖۘۥ۬۟";
                                break;
                            case 986461438:
                                str = "ۚۚۘۘۚۨۙۢ۫ۢ۠ۧ۠ۢ۟ۛۥ۫ۢۜۥۘۘۛۜۘ۬ۖۥۘ۫ۗۥۘۙۧۥ۬۬ۥۘ";
                                break;
                            case 1137446610:
                                String str5 = "ۙ۫۟ۧۦۥۘۦۡۜۘۚۚۖۧۤ۬ۧۙ۬ۦۡۘۙ۠ۨ۫۟ۖۘۤۥۨ۟۟ۢۗۡۘۘۛۤۥۘۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1833066728)) {
                                        case -1206986070:
                                            str5 = m7.OooO0o0().OooO0o != null ? "ۤ۬ۖۡۜۦۘۙۧۜۘۡۤۘۧۧۛ۠ۨ۫۟ۤۨۜ۟۬ۧۚۜۥۦۘ۫ۡۘ۟ۦۛ" : "ۤۡۙۡۗۡ۫ۨۢ۠ۢۥۧۛۦۛۤ۠ۙ۫ۡ۬ۢۖۘۖۨۘۙۘ";
                                            break;
                                        case 718989512:
                                            str4 = "ۗۥۙۥۚ۟ۥۥۛۦۨ۠۬۟۠ۨۢۚ۠ۡۥۘۚۥۧ۠ۥۢ۠ۥۘۘۤۗۡۘۙۢۦ";
                                            break;
                                        case 851493190:
                                            str5 = "۫ۨۢۦۘۢۨۙ۠ۛۗۦۘۥۥۦۢۡۡۢۥۧۜۧۜۘۘ۬ۘۘۡۘۦۘۗۦۧۘۛۙۘۤۦۡۘۧۙۗۜ۠ۡۥۜ";
                                            break;
                                        case 2136338064:
                                            str4 = "ۡۙۤۢۙۖۘ۠ۘۘ۟ۗۖ۟۫ۗۡۛۛۛ۟ۢۢۜ۬ۧۢۘۦۜۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1222756784:
                    textView4 = this.o00Ooo;
                    str = "۟ۧ۬ۙ۠ۦۢ۠۫ۘۜۚۧۚ۠۠ۤۨۦۨۗ۫ۛۙۜۗۡۘۘ۟ۚ۟ۤۛۘۢۖۘۗۖۦۘۤۧۨۗۙۜۘۥۛۧ";
                    continue;
                case -1106124701:
                    i2 = i3 + 1;
                    str = "ۢۤۛۡۢۛۢۨ۫۠ۛ۬۫ۜۧۦۥۘۙۗۤ۟ۘۨۡۗۜۤ۫ۘۧۘۥۘۖۨۦۗۚۙۢۢۥۦۘۘۢ۟۬";
                    continue;
                case -808897163:
                    i = 0;
                    str = "ۘۚۙۤ۬ۚۤۚۥۗۦۥۘۙۢۦۧۤۦۘۚۘ۠ۧ۠ۤ۫ۜۡۘۙۨۨۘۡۨ۬۟۬ۨ۟ۦۘۡۗۖۘۙ۟ۚ۠ۧۨۚۙۖۘۜ۟ۦ";
                    continue;
                case -696243113:
                    textView5.setOnClickListener(new OooOO0O(this, buyRegCodeConfigInfo));
                    str = "ۢ۠ۨۘ۬ۤۖۖۧۡۥۦۥۤ۟ۦۘۘۧۜۘۜۖۖۥ۫۫ۘۘۜۢۡ۟ۢۨۡۗۡ";
                    continue;
                case -627578752:
                    textView5 = new TextView[]{textView, textView2, textView3, textView4}[i3];
                    str = "ۘۚۦۘۖۢۗۥ۟ۜۡۧۘۢ۫ۡۘۦ۠ۦۘۦ۟ۢۗۧۦۥ۫ۦۡ۬ۡۘ۬۫ۦۢۧ۬ۨۡۙ۟۫ۦۘۙ۬ۛۤۨۘۘ";
                    continue;
                case -617303928:
                    this.Oooooo.setVisibility(0);
                    str = "۠ۚۥۘ۟۬ۖۡۢ۫۫ۧۘۛۘ۬ۢۢۡۘۘۤۖ۠ۙۜ۟ۜۖۘۦۗۜۘ";
                    continue;
                case -377213473:
                    view2 = this.o00O0O;
                    str = "ۢۦۘۘۗۦۘۢ۬ۥۘۨۧۘۖ۟ۡۘ۟ۜ۬۟ۨۨۨۧ۫۫ۚۖۧ۟ۘۘۛۤۜۘۢ۟ۦ";
                    continue;
                case -370461023:
                    String str6 = "ۖۛۨۘۧۥۡۘ۠ۙۖۢۚۡۘۦۚ۠ۜۡۤۦۗۚۗۦۛۙۖۧۙۥۜۧ۬۠ۢۤۧ۬ۦۨۘۚۜۦۘۤۜۦۘۤۢۚۜۛۦۘ۟ۤۨ";
                    while (true) {
                        switch (str6.hashCode() ^ (-2017195232)) {
                            case -1055215561:
                                str = "ۢ۫ۨۤ۬ۜۘۖۛۖۢۗ۠ۛۜۚۧۗۦۙۛۖۘ۟ۚۨۗۧۦۛۥۡۘۚۢ۟ۦۘۧۜۚ۫ۤ۟ۦۖ۟۫۠ۡۘ";
                                continue;
                            case 553248875:
                                str = "ۚۚ۟۬ۗۨۘۙۧ۟ۢۡۛ۠۫ۦۘ۟ۗۛۨۢۙ۠ۚ۬ۢۤۛۜۡۨۡۘۙ۟ۗ۫۟۫ۖۘۘۤۢ";
                                continue;
                                continue;
                            case 611601830:
                                String str7 = "ۚۢۚۘۚۥۢۥۚۘ۫۟ۙ۫۠ۦۜۦۡۦۨۘۜۙۡۘ۠ۡۖۘۙۢۚۘۢۨۗۨ۟ۤۦ۫ۜۧۨۧۡۖۘ۠ۡۡ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-2100895218)) {
                                        case 969620241:
                                            str6 = "ۖۙۚۨ۬ۥۧۥۤۡۜۦۥۖ۬ۚۙۨۘۦۡ۬۠ۡۤۜۧ۠ۗۥ۬ۘۙۖۘۛۙۨۙۙۨ۫ۡۘ";
                                            break;
                                        case 1818581421:
                                            str7 = i3 < m7.OooO0o0().OooO0o.size() ? "۬۠ۜ۟ۛ۠ۥۖۢۗۡۖ۠ۢۛۧ۟۠ۥۛۥۢۗ۫ۥۗ۠ۥۢۡ" : "ۤۦۖۜۗۡۘۧۚۛۛۖۦۘۜۤۖۘۡۡۜ۟ۙۘ۫ۛۢۖ۬ۨۡۦۡۘۘۘۤۦۘ";
                                            break;
                                        case 1870754317:
                                            str7 = "ۢۚۥۡۚۦۥۡ۫ۙۙۗ۬۟ۥ۫ۡۦۘ۬ۥۦۘ۬ۜۥۘۘۢۨۢۗۡۨۖۘۤۢۧۗۥۘۥۛۦۘ۫۬ۖۡ۟ۘ۫ۘۚۨۨ۠";
                                            break;
                                        case 2053098387:
                                            str6 = "ۚۦۢۚ۠ۜۤ۠ۜۡۚۚ۬ۤۙۜۘۥۘۚۤۙۖۜۥۢۚۥۡ۟ۧۢۖ۟ۡۥۙۡۥۥۘۖۚۨۘۦۛۜۦۢۗ";
                                            break;
                                    }
                                }
                                break;
                            case 1678793124:
                                str6 = "ۦۗۧۧۤۘۗ۫ۘۘۜۨۘۘۧۥۘۘۗۤ۟۫ۥۦۘۖ۟ۚۧۙ۫ۘۖۚۡۗۜۜۖۘ۠۬ۧۘ۟۫ۨۖۥۥ۬ۘۧۚۡۘ۟ۡۡۘ";
                                break;
                        }
                    }
                    break;
                case -93116375:
                    textView = this.OoooooO;
                    str = "ۜۥۥۘۜۗۦۘۨۖۚۦ۠ۘۘ۠۟ۚۦ۬ۧۛۙ۬ۙۘۧۘ۬ۡۨۗۨۦۘ۠۬ۛۥۜۦۦۛۨۘۗ۠ۦۛ۠ۚ۟ۥۡۢ۟ۘ۠ۖ";
                    continue;
                case 271456934:
                    return;
                case 329799675:
                    str = "ۗۧۦۙۛۖۗ۟ۗۘ۠ۢ۟ۡۜۘ۠ۜۚ۠ۙۚۚ۬ۛۡۥۜۘۙۖۨۡۨۘۘ۠ۧۡ";
                    i3 = i2;
                    continue;
                case 453039255:
                    str = "ۤۛۘۢۦۘ۠ۜ۠۟ۨۖۘۖۗۡۘۢۡۜ۬ۖۜۡۜۧۘۢۢ۠۬ۙۖ";
                    i3 = i;
                    continue;
                case 456649669:
                    str = "۟ۤۧۙۛۙۦ۬ۤۨۚۙۜۢۡۘ۬۬ۗۜۦۥۘۤۢۨۜۧۖۘ۬ۘۨۘۨۜۖۘ۬۬";
                    continue;
                case 972741365:
                    textView5.setText(buyRegCodeConfigInfo.ButtonName);
                    str = "ۖۢ۬ۦۡۖۥۛۤ۫ۗ۫ۜۢۜۘ۫۟ۤۛۦۗۜۘۖۡۡۤۡۜۥۘۖۢۚۨ۬ۡۘ";
                    continue;
                case 1272391760:
                    view = this.ooOO;
                    str = "ۤۤۧۤۛۛۥۤۢۖۥۡۘ۟ۗۦۢۦۘۖۥۚۚۚۜۘۧۧۥ۫ۛۗۤ۠ۦۘۜۡۖۘۘ۟۠ۤ۠ۗۤۧۛۖۙۥۘ";
                    continue;
                case 1695564632:
                    str = "ۤۛۘۢۦۘ۠ۜ۠۟ۨۖۘۖۗۡۘۢۡۜ۬ۖۜۡۜۧۘۢۢ۠۬ۙۖ";
                    continue;
                case 2013062982:
                    str = "۟ۜۖۘۧۗۚۨۧۥۙ۫ۘۚۦۖۘۚۦۨۙۗۥۦۛۧۢۗۖۛۜۦۧۤۧۦۛۦۘ";
                    buyRegCodeConfigInfo = m7.OooO0o0().OooO0o.get(i3);
                    continue;
                case 2032487224:
                    String str8 = "ۢۗۛۘۘ۫ۙۗۨۘ۬ۤۛۜۢۨۡۨ۟ۥۚۘ۟ۛۨ۟ۥۦۘ۬ۦۥۘۛۖۙۘۤۨۘ";
                    while (true) {
                        switch (str8.hashCode() ^ 517146006) {
                            case -1464680912:
                                String str9 = "ۛۢۖۘۢۤۦۘ۫ۤۡۛۗۧۥۢۡۘۛۛۦۘۧۧۢۛۖۡۘۗۡۤۖۧۢۨۥۨۥۧۡ";
                                while (true) {
                                    switch (str9.hashCode() ^ 283343372) {
                                        case -2067354475:
                                            str8 = "۟ۛۢۙۦۤ۟ۦ۟ۛۜۧ۬ۙۥۜۚۡۘۥۤۧۘۦ۬۫ۗۛۚۚۡۡ۬۠۠ۡ";
                                            break;
                                        case -1000450786:
                                            str8 = "ۗۚۚ۟ۧۨۘۖ۫ۦۡ۟ۙ۟۬ۨۗۙ۠ۡ۬ۨۘۛۧۖۚۜۘۥۜۧ";
                                            break;
                                        case 913817333:
                                            str9 = 3 < m7.OooO0o0().OooO0o.size() + (-1) ? "ۘ۬ۖۛۙ۠ۘۦۛۧۜۥ۫ۛۦۢۘۥۡۢۛۨۘۙ۬ۖۗ۬ۜۥۖۚ۟ۢۨۘ" : "ۛۢۡۧۛۡۘۦ۟۬۟ۖۛ۟ۡۘۙۚۧۢۧ۠۟ۢۤ۟ۡۨۛۡۨۢۡۤۦۧۘۘۘۙۛ۫ۧۡۗۖۥۧۙۡ";
                                            break;
                                        case 1300336998:
                                            str9 = "ۙ۬ۖۚۤۛۢۢۧۢۛۤ۫ۥۙۖ۫۫ۖۜ۠ۚۥۡۛۢۘۦۥۘۡۘۚۚ۟ۡۘ۟ۜۗ۠ۙۚ";
                                            break;
                                    }
                                }
                                break;
                            case -299454597:
                                str = "ۜ۫ۘۘۘۨ۬۟۫ۖۘۤۨۨۖۧۥ۬ۖۘۛۗۘۘۖ۬ۥۘۗۜ۬ۘ۬ۦۨۦۤ۠ۢۦۘۨۦۨۘۡ۠ۨۘ۫۬ۜۜۤۡۘ۟ۨۧۘ۬۫ۗ";
                                continue;
                                continue;
                            case 604050902:
                                str8 = "ۤ۠ۥۘ۠ۛۡۘ۫ۜۘ۠ۖۘ۠ۚۘ۫۬ۥۘ۫ۤۢۦۨۘۘ۬ۛ۫ۤۡۖۖۤۤۙۢۥۘۙۛۢۤ۫ۖۘ";
                                break;
                            case 1301320319:
                                str = "ۚ۟ۘۨۖۢۖۥۚۙ۟ۦۡ۫ۡۤۚۢۗ۠ۡۘۙۥۖۘۚۖۖ۫ۥۘ۟۬ۜۘ۟ۘۖۘ";
                                continue;
                        }
                    }
                    break;
                case 2089899074:
                    this.Oooooo0.setVisibility(0);
                    str = "ۚۚ۟۬ۗۨۘۙۧ۟ۢۡۛ۠۫ۦۘ۟ۗۛۨۢۙ۠ۚ۬ۢۤۛۜۡۨۡۘۙ۟ۗ۫۟۫ۖۘۘۤۢ";
                    continue;
                case 2141933713:
                    textView2 = this.Ooooooo;
                    str = "ۥ۬ۜ۟ۚۡۘۜۙۦۘۡۥۚ۫ۛ۫۟ۢۜۘ۠ۡۘۘۥ۬ۥۘۚۨۡۨۙۤۦۜۥۘۤۨۡۘۨۚ۠۟ۥۛ";
                    continue;
            }
            str = "ۚۖۡۘ۫۟ۜۦۤۜۖ۟ۤۧۜ۬ۡ۬۬۬ۨۙۜۨۗۚۢۘۡۖۖۘ";
        }
    }

    private void OooOOoo() {
        String str = "ۧۛۤ۫ۧۜ۬ۘ۬ۢۤۚۚ۟ۥۘۨۡۥۛ۬ۦۢ۫ۙۡۤ۫۫ۥۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 51) ^ 473) ^ 64) ^ 1686873294) {
                case -1442281746:
                    OooOo00();
                    str = "ۢ۟ۚۗ۬ۜۘۥۘۛ۬ۦۧۚۙۛۛ۬۬ۖ۠ۚۛۥۘۧۘۘۢۘ۟ۦۛ۟ۤۦ۠";
                    continue;
                case -1094478142:
                    return;
                case -952178761:
                    String str2 = "ۨ۠۟۟ۡۘۤۙۗۙ۫ۥ۠ۗۡۘۖۦۡۘۖۦۨۘۗۗۚۗۡۨۗۡۗۦۚ۬ۗ۫ۜۘۢۨۖۜۢۥۤۘۡۜۡ";
                    while (true) {
                        switch (str2.hashCode() ^ 708750270) {
                            case -31113609:
                                break;
                            case 1445060190:
                                str = "۫ۘۦۘۨۡۡۘۗۙ۟ۗۤۛ۠ۘۜۚۧۡ۫ۖۛۡۚۥۘۡ۟ۨۦۨۘۨۥۘۘۡۦۡۘۖۨۦۘۜۘۧ";
                                break;
                            case 1667151908:
                                str2 = "۟ۧۢۤۢۛۛۤۡۘۥۖۜۘ۫ۘۙۗۖۘۘۤۗۘۤۥۛۦۦ۫ۖ۟ۤ";
                                break;
                            case 2056002481:
                                String str3 = "ۙۥۥ۠ۖۧۘۚۘۗۙۡۧۘۗۜۧۘۦ۠ۘ۟ۦۡۘ۟۬ۖۘ۟ۦۥۘۚۨۧ۠ۘۙ۟ۚۖۘ۫۟۫ۧۛۤۢۘۗۨۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 540048954) {
                                        case -566684732:
                                            str2 = "ۛۚۥۘۖۘۘۘۖ۫ۨۘ۫ۙ۠ۨۘۘۘ۫ۦۘۘۡ۬ۖۘۧۢۢۤۦ۠۫۫ۦۘ";
                                            break;
                                        case 207094050:
                                            str3 = "ۢۤۙۢۘ۠ۦۨۘ۠۬ۨۘۡ۬۟ۧۡ۠۬ۧۘۘۨۖۤۢۜۛۡۦ۠۫ۤ۫ۗۚۥۜۥۡۗۘۖۘ۟ۙۧۦۤۢ";
                                            break;
                                        case 897322988:
                                            str3 = ContextCompat.checkSelfPermission(getApplication(), "android.permission.CAMERA") == 0 ? "ۘۚ۫ۚۚۘۢۧۗۙۘ۫ۜۛۧۛۢۖۘۦۚ۠ۜۡۘ۫ۤۘۥۙۜ" : "۬ۥۙۘۗۜۖۘۥۘۨۘۧۘۥۡۛۖۤۧ۬ۤۘۥۚ۠ۚۙ۬ۜۡۧۦۘۘۦ۫ۛۛۧۜۘ۠ۖۡۘ";
                                            break;
                                        case 1386224136:
                                            str2 = "ۨۛۖۘۤۚۚۘۚ۟۠ۡۜۘۨۨۜۘۙۦۙۢ۬ۦۘۨ۟ۨۧۦۨۘۚۘۥۚ۫۠ۘۘۚۢ۠ۘۥۧ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -387613933:
                    str = "ۤۢۤ۫ۗۦۘۙۙۧۜۚ۫ۧۗۜۖۘ۠۟۬ۤۦۘۘۙ۫ۦۘۗۢۜ۟ۦۘۚۢۨۘۗ۫ۛۤۜۘۘ";
                    continue;
                case 674353980:
                    String str4 = "ۖ۬۬ۤۧۛۘۛ۬ۖۚۦۘ۬ۢۜۦۨۘۖۚۚۥۜ۬ۙۗۡۧۨۤۦ۬ۛۙ۬ۙۖۜۙۘ۬ۡۘ۟ۚۜۢ۟ۨۘۡۖۚۡ۫ۛ";
                    while (true) {
                        switch (str4.hashCode() ^ (-720556385)) {
                            case -773554729:
                                str4 = "۬ۖۤۡۤۛۚ۬ۜۘۙۡۨ۟ۛۚۦۨ۠ۡ۟ۥۜ۬ۢۖ۠ۖ۟ۨ";
                                break;
                            case -371151770:
                                String str5 = "ۤۛۢ۫ۡۨۘۥۥۛۛۢۨۖ۠ۘۘۤ۬ۧ۠۠ۖۘۚ۠ۖۘ۫ۘ۬۬ۦۧۤۖ۟ۢۡ۬ۗۧ۠";
                                while (true) {
                                    switch (str5.hashCode() ^ 1078993053) {
                                        case -2045642713:
                                            str5 = Build.VERSION.SDK_INT >= 23 ? "ۤۨۥۘۦۚۥۘ۟ۗۜ۟ۚ۫ۡۨۘۦۘۡۗۥۘۡۖۥۘ۫۟ۘ۬ۘۗۛۗۦ۫ۜۘۘ" : "ۘۤۢ۫ۙۨۘۤۨۛۡۖۨۘ۠۬ۦۢۘۖۘۨۚۜۘ۠۫ۥۘۧۜۢۜۛۦۗۡۘۢۖۦۘ۠ۡۚۜۢۦۦ۟ۦۘ۫ۤۘ";
                                            break;
                                        case -1895050057:
                                            str4 = "ۗۚۧۚ۠ۤ۟ۥۥۧۖۢ۠ۜۡ۟ۘۖۘۛۨۖۡۗۖۘۧۜۡۘ۬ۘۜۘۗۘ۬ۨۙۚ۬ۖۨ۠ۛ۠";
                                            break;
                                        case -1661025897:
                                            str5 = "ۤۗۗۧۦۚۙ۟۟ۥ۠۫ۗۤۜۘ۠ۧ۬ۨۢۦۢ۟ۥۧۖۦۘۤۚ۠۠ۚۥۧۙۨ";
                                            break;
                                        case 1841894196:
                                            str4 = "ۘۙۖۗۜۦۘۜۢۡۘۡۤۖۘۗۧۤۘۡۡ۬ۘۦۥۙ۠ۛۖۨۛۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1020426326:
                                break;
                            case 1905394089:
                                str = "ۙۜ۟ۥ۬ۡۦۖۜۘۙۗۦۦۤ۬ۥۘۢۛۦۘ۫۫ۘ۠۬ۘۘ۟ۗۡ";
                                break;
                        }
                    }
                    break;
                case 748844035:
                    str = "ۢ۟ۚۗ۬ۜۘۥۘۛ۬ۦۧۚۙۛۛ۬۬ۖ۠ۚۛۥۘۧۘۘۢۘ۟ۦۛ۟ۤۦ۠";
                    continue;
                case 1754392978:
                    ActivityCompat.requestPermissions(this, oo000o, 1000);
                    str = "۫ۜۥۘۛۖۧۧۘۨۘۤۛ۟ۚۡۖۘۤ۟ۙ۠۟ۨۘ۟۫۫ۛۜۨۘۤ۬ۛۜۜۖۘ۫ۜۢ";
                    continue;
            }
            str = "ۥۜۨ۫ۨۥۘۦۛۙۜۗۧۖ۟۬ۜۘۚ۠ۡۘ۫۬ۨۢۤۛۙ۠ۙۧۧۤۛۛ۠۟ۡۘۘۥۤ";
        }
    }

    private void OooOo00() {
        String str = "۬ۡۚ۟ۧۛۤۡ۬ۥۖۖۗۘۢۘۙۥۘ۟۠ۛۘۛۗۘۨۘۘۥۙۜۘ۠۫ۖۘۖۢ۬ۜ۟ۥۤۢ۟۫ۧۛۖۦۧ۫۠ۥۡۘۜ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_UIP_DATA_VALUE) ^ 970) ^ 273) ^ (-333704590)) {
                case -1387582130:
                    return;
                case 283033443:
                    str = "۬ۚۥۥ۠ۤ۬ۘۥۘ۟ۢۛۜۡ۬ۢۜۨۘۥۜۨ۫ۜۜ۟ۖۘۘۚ۟ۖۘۦۙۨۘۤۘۡۘۦۜۨۢۥۥۢ۟ۥۘ۫ۧۖۘۤۢۘۘۛ۫۟";
                    break;
                case 330063412:
                    startActivityForResult(y8.OooOOO(this), 1003);
                    str = "ۙۗۡۨ۠ۤۦۖۨۘۖۦۨ۟ۗۥۘۙۖۤۖۤۤۘۙۜۘۘۦۢۦ۟ۢۘ۠ۥ۬ۗۦ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void OooO() {
        String str = "۟ۤۚۛۡۤۢۘۘۚۦۦۥ۠ۦۦۤۘۢ۫ۚ۬ۦۘۜۤۥۘۖۜۜۘۢۧۨۘۖۦۡۘۥۘۨۙۚۙۜۡۙۦۦۗ";
        while (true) {
            switch ((((str.hashCode() ^ 16) ^ 787) ^ 447) ^ (-517791114)) {
                case -913560963:
                    ((oa) this.OooooO0).OooOo0o().observe(this, new OooO00o(this));
                    str = "ۧۗۜۘۡۙ۫ۘ۫ۜۘ۬ۥۜۘۨۢۘۦۚۘۚۡۡۘۤۚۦۘۥ۬۠ۨۧۧۗۛۡۨۜۡۘۢۦۨۘۥۧۧ";
                    break;
                case -765366794:
                    str = "ۘۖ۟ۘۦۧۘۡۨۤۥۤۥۧۛ۠ۛۤ۟ۡۖۡۤ۫ۙۚ۠ۙۘۥۧۘۚۥ۬۫ۙۥ۬ۘۗۧۙۢۥۢ۟۠ۙ۬ۙ۫ۥۘۥ۠ۛ";
                    break;
                case 1652877861:
                    ((oa) this.OooooO0).OooOo().observe(this, new OooO0O0(this));
                    str = "۠ۜۖۡۨۦۧۧۘۨۡۘۙۡۖۘۥۦۘۖۨۢ۠ۢۥۦ۠ۧۗ۟ۢۗ۫ۜۘ۬ۖۡۘۡۛ۟۫۬ۜۤ۟ۡۖۧۥۘۜۘۢۗۡۜ";
                    break;
                case 2003347300:
                    return;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public int OooO0oO() {
        String str = "ۨ۠۟ۢۜۤ۠ۦۜۘۜ۠ۗۥۖۡۗۦۤۥ۬ۢۧۢۦۗۢ۫۬ۜۨۘۘۢۡۘ۫ۜ۬ۨ۠ۙۗ۬۬ۦۢۡۜۢۦ۫ۡۧۛ۟۟";
        while (true) {
            switch ((((str.hashCode() ^ a.O) ^ 530) ^ 557) ^ (-1980907717)) {
                case 63011132:
                    return R.layout.activity_register_code;
                case 258700896:
                    str = "ۨۥۦ۠ۙۚۡ۬ۧۙۖۚۤۦۖ۬۠ۡۡ۟۬ۨۥۤۜۖ۟ۢۙ۫ۛۡۘۛۚۢۨۜ۟ۗۙۖۘ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public Class<oa> OooO0oo() {
        String str = "ۚ۟ۙۥۤ۠ۘۘۘۢ۫ۜۚ۠ۨۛ۟ۨۦۧۚۖۥۦۚۗ۫ۧۡۧ";
        while (true) {
            switch ((((str.hashCode() ^ 521) ^ UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE) ^ 561) ^ (-1558154820)) {
                case -1791001176:
                    return oa.class;
                case 1968853457:
                    str = "ۛ۠ۨۧۗۘۘۚۜۖۘۘۖۖۡ۟ۤۖۧۜۘۨ۠ۖۘۤۦۛ۬ۤۨ۬ۥۡۥۜۡۘۛۗۥۘۚۛ۟۟ۗ۫ۚ۟ۥ۠۫۟۟ۙۗۙۡۘ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    public void initView() {
        OooO00o oooO00o = null;
        String str = "ۙۧۥۗۘۢۚۖۜۘ۠ۧۦۘۨۜۥۚۡۧۢۙ۟ۨۤۦۧۤۖۖۥۥۘ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 38) ^ 167) ^ 544) ^ 92567066) {
                case -2088304981:
                    this.o00Oo0 = findViewById(R.id.line_month);
                    str = "ۤۚۥۚۛۦ۫ۛ۬ۧۚۛۗ۠ۗۜۛ۠۠ۦۘۦۖۘۘۙ۫ۥۘۙۦ۬ۚ۟۠ۤ۠ۦ۫ۤۘۘ۠۟ۘۘ";
                    break;
                case -1683739273:
                    this.Oooooo = (LinearLayout) findViewById(R.id.ll_registration_buy);
                    str = "ۛۢۡۦۛۙۗۢۦۘۚۛ۬ۧۦۥۘۙۗۘۘ۟ۤ۟ۦۜۥۘ۠ۖۡۘۤۧۡۘ";
                    break;
                case -1644882515:
                    this.OoooooO = (TextView) findViewById(R.id.tv_day);
                    str = "ۜۗۖۘۦۤۢۨۥۧ۫۠ۜۘۜۧۨۘۗۛۙ۟ۖۡ۬ۚۨۘۡ۫ۦۤ۟ۙۗۚۛۗۢۜۘۚ۟ۖۘۤۧۚۢۗۡۘۡۨۛۛۨۡۘۛۧۘۘ";
                    break;
                case -1618804852:
                    this.o0OoOo0 = (TextView) findViewById(R.id.tv_month);
                    str = "ۦ۫ۘۗ۠۟ۡ۟ۡۘۤۧۦۘ۬ۗۡۘۖۤۨۘۢۗۜۘۨۨۘ۬ۤۛۦۖۦۤۗۦۖ۫ۡۘ۠ۥ۬ۜ۬ۢۚۨۨۘۤۜۖۥۚۙۗ۠";
                    break;
                case -1144417004:
                    str = "ۚۨۗۗۨۚۙۛۙۗۡۜۘۗۗۨۘ۠ۘ۬ۧ۫ۨۢ۫ۥۘ۫ۗۧۗۖۦ۬۬ۨ۟۬۬۟ۦۡۛۛۗ۫ۡۘۤۛۦ";
                    break;
                case -677894216:
                    this.Ooooooo = (TextView) findViewById(R.id.tv_week);
                    str = "ۚۘۦۘۜۙۖۘ۠۬ۨۙ۬۬ۚۤۡۘۘۦۡ۠ۙۘ۫ۧۚۚۙۛۙۤۛۡ۬ۧۗۥ۬ۖۙۖۗۛ۫۬ۡۚۤۤۗۚۗۜۜۧ۠";
                    break;
                case -643963229:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "ۢ۟ۜۘۙۚۖۘۥۘ۬ۤۡۛۥ۟ۗۨۚۨۚۚۡۘۧۙۘۙۙۘۤ۟ۦۘۢۨۘ۬ۚۥۤۡۜۘۥۚۜ۬ۨۖۘۘۥ۟ۨۘۖ۟ۚ۟";
                    break;
                case -429035336:
                    titleView.setTitleText(getString(R.string.activation_code));
                    str = "ۦۤۨۡۘۡۧۡۧۢۚۜ۠ۚۘ۫ۧ۬ۜۢۨۘ۬ۢ۠ۦۦۨۘ۫ۖۘۘۦۘۨۘۛۡۥ";
                    break;
                case -267987409:
                    this.o00Ooo = (TextView) findViewById(R.id.tv_permanent_card);
                    str = "ۗۡۡۧۡۧۨۨۢ۬ۛۜۘ۫ۚ۬ۜۜۙۥۤۗۖۗ۬ۘۤۜۜۡ۟ۛ۫ۙۤۚ۠ۦۡ۠ۘۜۘ";
                    break;
                case 84428191:
                    this.o00O0O = findViewById(R.id.line_week);
                    str = "ۤۖۖۘۚ۫ۜۛۤۘۡۢۦۧۦۘ۟ۗۥۘۤۧۙۜ۠ۨۘۥۧۢۗۧۘۘۜۙۜۘۜۧۦۘۨۛۨۧۡ۬";
                    break;
                case 284412605:
                    str = "ۜۜۤ۬ۘ۫ۢۧ۬ۗۤۡۛۧۜۧۤۜۘۜۜۨۘۛۢۦۘۘۨۘۘۜۧۖۜۚۧۛۢۘۘۙۢ۫ۗۡۜۘۥ۠ۧ";
                    titleView = (TitleView) findViewById(R.id.id_title);
                    break;
                case 325394783:
                    OooOOo0();
                    str = "ۘۨۥۘۜۖۙۖۖۜۘۤۦۨۘۛۤۨۙۛۜ۬ۘ۬ۡۗۤۤۧۛ۠ۢ۠۬ۘۘۘۛۥۘۧۙۖۚۢۘۡۨۨۘۚۙ";
                    break;
                case 345999662:
                    findViewById(R.id.btn_sweep_activation).setOnClickListener(this);
                    str = "ۧۚ۬۠ۙۗۜۛۨۘۧۤۜۘۦۥۛۦ۟ۜۜۨۨۧۘۘ۠ۚۥۘۘۚۦۘۤ۠ۖۤۨۙۚۛۦۥۙۨۚۖۨۘۧۡۙۛۢۗۙ۟";
                    break;
                case 380122286:
                    this.Oooooo0 = (TextView) findViewById(R.id.tv_empty_msg);
                    str = "ۧۛۦۖۚۤۙۛ۬ۦ۠ۥۘ۟ۗۗۤۙۡۘۖۙۗ۠ۖۘۘۡ۟ۡۘۘۖۧۘ";
                    break;
                case 500404620:
                    titleView.setVisibilityRightImage(4);
                    str = "۟ۢۡۗ۫ۨۛۨۗۚۜۚ۫۬ۦۘ۟۟ۗۥۤ۬۟ۤۘ۫ۘۡ۫ۙۜۘ";
                    break;
                case 765371131:
                    ((Button) findViewById(R.id.btn_activation)).setOnClickListener(this);
                    str = "ۚۗۦۢ۠ۥۘۜۡۨۘ۠ۤۦۛۙۡۘۢۜۖۚۨۦۚۢۦۘ۬ۡۘۚ۫ۖۙۜۥ۬۟ۨۘۚۦۘۘ۟ۦۚ۟۫ۡۘ۫ۡۤ";
                    break;
                case 915724109:
                    titleView.setVisibilityTvRight(0);
                    str = "ۘۚ۬ۥۨۧۦۨۥۘۘۚۡۘ۟ۥ۫ۗۙۡۥۧۨۘۨۘۡۗۧۜۗ۫ۡۢۤ۫ۢۥۖۘۛۤۨۘۨۥۜ";
                    break;
                case 1399549681:
                    this.ooOO = findViewById(R.id.line_day);
                    str = "ۜۧۥۘ۬ۙۜۘ۬ۛۖۧۤۤ۬ۡۨۘۛ۟ۨۘۦۧۗۖ۟ۜۘۧۖ۠ۨۧۨۧۨۗۨۗۦۘ";
                    break;
                case 1414970005:
                    titleView.setOnLeftImageViewListener(new OooOOO0(this, oooO00o));
                    str = "ۨۥ۬ۤۜۘۦ۫ۥۘۚۙ۟ۙۖۡۘۦۦۧۘ۟۫ۖۘۖ۟ۛ۬ۧۙۙ۫۬ۘۗۜۤۛۥۦۡۧۘۥ";
                    break;
                case 1733513046:
                    titleView.setOnRightTextViewListener(new OooO(this));
                    str = "ۥۡۤۡۧۘۗ۠ۤۡۙۨۤۖۢۘۙۤۦۨ۠ۗ۬ۗۡ۟ۘۡۧۘ";
                    break;
                case 1882004626:
                    this.OooooOo.setText(q7.OooO0o0().OooO0o());
                    str = "ۤۢۦۦ۠ۨۦۢۘۗ۠۫ۢۘۦۘۘۧۘۖۛۨۘۖۖۛۦ۬ۨۨۨۜ۟۠ۖۙۜ۬ۨۜۜۜۖۘ";
                    break;
                case 2029500336:
                    return;
                case 2066582626:
                    titleView.setRightTvText(R.string.register_code_unbind);
                    str = "ۦ۟ۦ۬ۦۧۘ۠ۧۦۘۛۦۖۘۜۦ۬ۦۜۨ۠ۘۡۘۙۥۦۘ۟۫۫ۖۨ";
                    break;
                case 2141838413:
                    this.OooooOo = (EditText) findViewById(R.id.register_number);
                    str = "۫ۨۛۤ۟ۚۜۙۡ۠ۤۦۨ۟ۗ۠ۛ۬ۥۘۥۗۢۥۥۖ۫ۡۢ۟ۨۧۘ۠ۦۦۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        String stringExtra = null;
        String str = "ۢ۬ۨۘۦ۠ۚۨۙ۫ۙۜۖۘۨ۫ۥۧۚۡۘ۬ۛۧ۠۟ۨۘۢۘۨۘۡۢۧ۠ۘۜۛۥۜۦۤ۬ۛ۫ۜ";
        while (true) {
            switch ((((str.hashCode() ^ 550) ^ 629) ^ 314) ^ (-540944153)) {
                case -1847605816:
                    stringExtra = intent.getStringExtra("SWEEP_RESULT_BACK");
                    str = "ۥۧۛۗۖۜۛۤ۬ۥۘ۬ۥۦۘ۬ۦۡۜۨۜۘۢۗۨۡۘۘۖۥ۟ۢۗ۬ۖۖ";
                    continue;
                case -450257356:
                    return;
                case 315365961:
                    this.OooooOO = stringExtra;
                    str = "ۘۦ۟ۢۢۡۖ۫ۘۢۢۜۘۛۡ۫۫۠ۢ۬ۚ۬ۦ۠ۖۘۧۗۨ۫ۧۡۜۜۡۦۛۢۢ۬ۢۤۖۘۘۥ۫۫۟ۨۘۗۚۚۢ۬ۥ";
                    continue;
                case 494804025:
                    this.OooooOo.setText(this.OooooOO);
                    str = "ۘۖ۫ۨۦ۬۬۬۫ۧۙ۫ۡۢۧۡۦۚ۠ۚۗۢۘۥۘ۟ۦۗ۬ۥ۠۫ۧۗۖۘۢۙۙۢۛۡ۠ۢۚ۠ۙۥۨۘ";
                    continue;
                case 789185084:
                    String str2 = "ۥۧۦۛۥۥۘ۫ۖۨۘ۫ۢۧ۟ۧۖۨۥۜۖ۠ۥۘۗۙۤۨۦۡۖ۫۬ۙۨۙ۫ۥ۟ۢۙۦۛۡۚۥۧ۠۬ۗۤۙۨۖۛۙۖ";
                    while (true) {
                        switch (str2.hashCode() ^ 550887039) {
                            case -2066334586:
                                break;
                            case -1533484762:
                                str = "ۖ۠ۨۘۨ۫ۘۘۛۨ۠ۥۧۙۧ۠۠ۜۡۘۘۡۚ۟ۥۦۢۢۥۖۘۙۧ۠۬۫ۜۘۧۖۡۘ۠ۢۥۙۜ۫ۘۘۨۢۘۖۡۤۦۜ۠";
                                break;
                            case 504147791:
                                str2 = "ۛۨ۫ۛ۬ۙۨۖۢۜۚ۟۫ۜۜۚۧۦۘۛ۬ۡۘۧ۬ۢۧۙ۠۬۟ۡۙۚۖۘۨ۬۫ۜۥ۬ۢۙ۠۠۟ۜۛۙۚۙۡۧۘۜ۫ۨ";
                                break;
                            case 1941558207:
                                String str3 = "۫ۜۥ۫۟ۡۘۗۖۙۛ۟ۡۘۚۡۦۘۘۢۙۢۢۦۡۧۙۤۤۥۢۡۦۥۚ۫ۘۥۤ۠۠ۜ۟ۛۡۡۦۗۜۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-808106542)) {
                                        case -1649919691:
                                            str2 = "۠ۦۥۚۙۘۘۜۥۗۗۛۜۧۖۨۘۡۥۙ۬ۖ۫ۢۗۤۗۙ۠ۖۜۜۘۤۥۡۦۤ۟ۢۨۦۧۙۗۘۘۨ۠ۛ";
                                            break;
                                        case -1114655690:
                                            str3 = i == 1003 ? "ۜۚ۬ۥۨۖ۫ۘۨۧۢۡۘۦۚۦۡۧۥۥۛۘۚ۠ۙۦ۠ۚۢ۬ۚۖۘۖۤۨۡۘ۟ۦۡ۬ۢۦۨۨ۠ۗ۬ۚ" : "ۜۧۧۗۘۘ۫۠ۖۚ۬ۖۨۘۗ۬ۚۨۘ۠ۗۡۘۤۨۤۚۧۘ۬ۦۦۗۘۡۘ۫ۖۡۘ۫ۨ۟۬ۧۛۥۖۚۨ۬ۘ۠ۥۡ۠ۚ";
                                            break;
                                        case -838968450:
                                            str2 = "ۙۘۨۘۖۖۢۢ۫۠ۦۖۙۦ۫۫ۤۦ۠ۙۗۤ۫۠ۡۘۢۨۘۛۡۨۥۛۦۘۗ۟ۥ";
                                            break;
                                        case 739086758:
                                            str3 = "۫ۨۜ۫ۦۜۥۜ۟ۚ۫ۚ۟ۥۙۦ۬ۥۘۛۜ۬ۛ۫ۛۖۦۘۤۡ۫ۛۛ۠۬ۜۘۖۜۧۘۦۨۜۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 978771250:
                    str = "۬۟ۜ۟ۚۜۙۧۙۗۜۘۚۥۨ۟ۦۖۘۙۖۚۜۖۦۘ۟ۚۥۨۤۙۧ۬ۨۦ۬ۡ";
                    continue;
                case 1013537398:
                    str = "ۚ۫۠۟ۚ۬ۢۘۙۦۥۡۡۢۛۧۙۥۘۖۗۘۘۖۗۨۛۚۡۨ۬ۖۙۗۘۤۨۙۘۚۨ۬ۖۡۘۚۨۖۗ۫ۤ";
                    continue;
                case 1095276428:
                    String str4 = "ۦۛ۠ۦۤۚۤۨۙۥۦۖۘۦۚۥۘۘۧۥۘ۫ۗۙۖۙۨۘۨ۠ۘ۟ۥۨۘۤۨۧۘ۬ۥۥۙۧۧ۬ۜۖۙۚۨۘ۫۬";
                    while (true) {
                        switch (str4.hashCode() ^ (-38174333)) {
                            case -1868660741:
                                break;
                            case -366780726:
                                str = "ۗۘۘ۠ۖۨۘۧۦۥۘ۬ۦ۫ۜۜۘۤۡۖۘۥ۫ۢ۠ۨۖۘۗۦۨۘۧۘ۠ۜۗۖ۬۫ۡ۠۫۠ۙۦۨۡۖۘۡۦۡۘ";
                                break;
                            case 547322216:
                                str4 = "ۢ۬ۦۘۘۡۥۘۢۡۜۘ۠۬ۥۘۤۦۡۘۖ۬ۨۧۜۧ۠ۖۦۜ۟۟ۧ۠ۦۚۘۘۙۥۦ۫ۗ۫۠ۦۘ";
                                break;
                            case 1748278099:
                                String str5 = "۠ۤۜۘ۟ۦ۟۠ۨۧۘۨۙ۫۠ۙۛ۬ۗۨۥۢۥۘۜۗۨۘۨۦۨۘۨۚۦ۠ۦۢ۬ۦ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1830159371) {
                                        case -1742923480:
                                            str4 = "ۧۙۤۥ۬ۢۛۙۚۗ۬ۧۨۜۖۘۥۥۤۢ۬ۖۤۥۗ۟۠ۛۧۙۘۚۜۨۡۙۢۛۨ۬ۜۧ۬ۦۖۛۧۛۡۘ";
                                            break;
                                        case -1653071078:
                                            str4 = "ۖۜ۟ۤۛۨۙۖۜۙۜۡۘۛۧۖۘ۬ۥ۟ۢۘۜۘۨۨۛۘ۬ۘ۫ۦۘۘۨ۬ۦۘۥۛۜۘۦ۬ۙۧۦۘ۬ۚۜۘۚۗۚ";
                                            break;
                                        case 161914004:
                                            str5 = "ۥۙۨۘۦۚۜۘۥۧ۬ۘۗۘۘۧۧۡۦۛۚۡۗۨۘۛۚۜۖۖۙۡۖۥۜۘ۫ۦۘ۫ۘۜ۬ۙۥۘ";
                                            break;
                                        case 1848000772:
                                            str5 = i2 == -1 ? "ۥۢۡۦ۬ۛۨ۟ۨۘۖ۟ۜ۠ۙۦ۠۠ۘۘۛۙ۠ۗ۟ۙۖۗۡۘۜۤ۠" : "ۢۚۘۘۚ۠ۜۘۖۨۙۙ۠ۛۗ۬ۥ۟ۙۦۧۗ۬ۚ۠ۚۥۤۨۢۜ۟ۗۜۘۧ۟ۧ۟۠ۖۘۤ۟ۢ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1460102838:
                    break;
                case 1555527325:
                    String str6 = "ۥۚۚۧۥۨۦۗۦۨ۠۟ۦ۟۬ۗۚۛۙۡۦۡۙۥۘۡۤۜۧۘۧۘ۫۠ۖۗۜ۟۟ۙۤۗۨۨۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-311257902)) {
                            case -1843959235:
                                break;
                            case -1589068490:
                                String str7 = "ۚۛۡۙۧۨۘۘۖۖۘۘ۟ۘۘ۠ۥ۫۬ۢۜۥ۠ۜۘۤۜۙۢۨۡۢ۠ۦۘۧۙ۟۟ۛۤۙۗۘۘۖۛۤۛۥۜ۟۬ۡ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-204961281)) {
                                        case -718060963:
                                            str7 = intent != null ? "ۙ۬ۖۥۙۗۙۦ۟ۚ۟ۖۘۚ۠ۨۘ۠ۢۜۘۘ۟۬ۧۖۜۘ۬ۦۨۘۥۜۗۖۧۘۘۤۤۛۡۥۜۘ۠ۙۘ۬ۥ۫۫ۤۘۘ" : "ۢ۠ۛ۠ۢۖۘۖۚۖۦۦ۠ۛۗۥ۟۠۟ۙۦ۟ۥۖۛ۫ۛۘۢۥ۟ۨۨۗۘۜۘ";
                                            break;
                                        case 288316764:
                                            str7 = "ۙۥۚۨۘ۠ۗۘۥ۬۬ۡۘۢۥۘۜۙۥۘۤ۠ۦ۬ۡۤۖۤۜۘۧ۫ۨۘ۟ۛ۠ۖ۠ۧۥ۫ۖۘۥ۟ۜۧۘۜ۬۫ۥۘۤۙۖۘۜۗۚ";
                                            break;
                                        case 855761074:
                                            str6 = "ۛۧۥۘۚۦ۫ۙ۠۠ۜۚۧۤۥۡۘۧۢۖۘۘۜۖۘۖ۠ۡۨۧۖۘۦۧۘۗۥۘۨۥ۬";
                                            break;
                                        case 2146689890:
                                            str6 = "ۧۘۖۧ۫۟۫۠ۨۘ۬ۡۛۥۚۖ۫ۙۦۘ۫ۘۗۙۥۡۘ۫ۢۥۘۖۙۥۘۗۧۙۦۛۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case 475584760:
                                str = "۠ۛۦ۠۫ۦۘ۠ۡۨۘ۫ۢۗۢۜۚۖۤۜۗۘۖۖۡۘۘۦۦ۫ۥۛۨۘ";
                                break;
                            case 1432148677:
                                str6 = "ۘۘۖۦۖۥ۬ۡ۫۬ۦۧۘ۫ۙۘۘ۟۠ۦ۬ۘۡۘۦۢ۫ۙ۟ۘ۠ۗ۟ۧ۠ۛۛ۬ۖ۫ۤۢۥۗۗۖۨۖ۟ۥۨ";
                                break;
                        }
                    }
                    break;
                case 1657242630:
                    ((oa) this.OooooO0).OooOoOO(this.OooooOO);
                    str = "ۗۛۘۦۦ۟ۦ۫ۛۡ۫ۧ۠ۢۘۥ۟ۧۙۗۘۘ۠ۛ۟ۘۤۖۗ۟ۨ۠ۗ۠۠ۙۖۘۢۨۦۘۨۗ";
                    continue;
                case 1692632434:
                    String str8 = "۟ۚۘۘ۠۠ۡۘۢۙۚۙ۟ۗۗۙۙۘۛۢۨۛۢۚ۬۫ۢۦ۠ۖ۬ۡ";
                    while (true) {
                        switch (str8.hashCode() ^ (-1344747182)) {
                            case -1877422391:
                                str = "۟ۗۜۢۨۨۘۡۢۤۨۧۦۜۘ۬۟ۘۥۗۧۛۖۡۢۚ۟ۜۖۧۘۜ۠ۨ۫ۧ۬ۙۧۗ۬۬ۡۘ";
                                continue;
                                continue;
                            case -1837825454:
                                str8 = "ۙۢ۟۫ۗۥۗۖۛ۫ۡۢۙۗۡۜۗۜۘۖۗۜۘۚۘۘ۬ۧۡۘۛۤۘۖۛۨۖۙ۠";
                                break;
                            case -692106765:
                                str = "ۤۚۛ۠ۦۥۘۖۘۖۧۡۡۘ۫ۚۘ۟۬ۙۤۥ۬۟ۧۜۘۜ۫ۚۙۗۘۗۜۨۡۢۧ";
                                continue;
                            case 1464138387:
                                String str9 = "۟ۜۨۙۦۢۢۨ۟۬ۗۜ۠ۦۧۘۥۦۙۡ۬ۖ۬۠۟ۥۘۨۘۢ۟ۨۘ۫ۤۖۨۘۚۤۖۨ۫ۦۘۢۡۗۢۡۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ (-1768817012)) {
                                        case -2134315452:
                                            str8 = "۠ۤۗ۟ۤ۫ۦۦۛ۬ۧۨۘۤۚۚۢۥۨۢۧۦۗۛۖ۠۬۟ۗۛ۟۫ۢۤۢ۬ۜۘۡۢۦۘۜۤۙۦۘۗۙۥۖۘ";
                                            break;
                                        case -1750468664:
                                            str9 = !TextUtils.isEmpty(stringExtra) ? "۟ۛ۠ۚۖۘۘۥۙۡۘۤۨۦۖۨۧۗۙۧۚ۬ۙۗۨۚۚۨ۫ۥ۟ۢ" : "ۡۜۢۙ۬ۤ۠۬ۢۨۥۥۚۘۢۧ۬ۢۥۨۦۘۚ۠ۢۡۤ۟ۛ۠ۜۘ۠ۢۦۘ۫ۗ۬ۙۛۥۧ۟ۢ";
                                            break;
                                        case 1373741208:
                                            str9 = "۟ۖۛ۬ۛۘۘۘ۫ۛۦ۬ۢۛۧۢۜۙۢ۫۫ۦ۬ۗ۟ۥۛۦ۠ۦۧۘ۫ۦۧۖۤۧ۬ۙۚۨۚۜۚۘ۬ۢۙۡۘ۬ۦۙۜۢۥ";
                                            break;
                                        case 1957268931:
                                            str8 = "ۗۛ۟۬ۜۡۘۙۘۘۘۥۥۜۘۤۡۛۚۗۢۨۦ۬ۡ۫ۡۨۤ۟ۥ۠ۛۨۖۘ۠ۢۖۘۦۜۢ۟ۗ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1865790816:
                    super.onActivityResult(i, i2, intent);
                    str = "ۡۦۚ۬ۘ۠ۧۥۘۘۘ۬ۚ۫ۙۜ۫ۤ۟ۨۢۥۘۥۥۧۖۨۡ۟ۤۡۘۗۛۤۡۨۖۦ۠ۛۢۘۥۘۢۡۦۧۨۥۘ";
                    continue;
                case 1950802256:
                    c5.OooO0OO(this, getString(R.string.regcode_sweep_result_null));
                    str = "۫ۡۛۡۜۦۘۧۨۚۤۦۢۜ۬ۧۤۙۡۦۧۥۖۡۘۖۜ۠ۘۖۜۘ۫ۨ۫۠ۜۧ";
                    continue;
                case 1959139975:
                    str = "ۤۥۡۨۡۦۗۜۦۜۡۘۨۥۖ۬ۡ۠ۙۘۢ۠ۦۡۘۖۤۘۘۖۧۗۜۦۦۘۜۨۜۘ۟ۢۖۙۚۨۡۙۜۘ۟ۙۡۥۚۗ۫ۧۤ";
                    continue;
                case 1961463062:
                    str = "ۙۢۚۛۖۚۘۚ۠ۖۧۥۘۘ۠ۢۜۢۡۘۨ۟ۤۙ۬۠ۛۤۡۘۨ۠ۢۖۙۖۗۡۥۘ";
                    continue;
            }
            str = "۫ۡۛۡۜۦۘۧۨۚۤۦۢۜ۬ۧۤۙۡۦۧۥۖۡۘۖۜ۠ۘۖۜۘ۫ۨ۫۠ۜۧ";
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = 0;
        String str = "ۤ۠ۙۧ۬۠ۦۡۘۧۦ۠ۗ۫ۘ۫۟۫ۗۧۛۦۖۢۡۦۘۘۗۚۨۤۘۜۘ۟ۧۢ۟۟۠ۛ۟ۜۙۨۘۘۡ۟ۙ";
        String strTrim = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 655) ^ 166) ^ (-1578983405)) {
                case -1962235103:
                    OooOOoo();
                    str = "ۛۖۡۘۜۡ۠ۜۜۥۘۡۛۖۤۗۛۧۗۦۘۗۡ۠ۛۦۘۘۧ۬ۗۨ۫ۘۘ";
                    break;
                case -1946558355:
                case 2056398672:
                    str = "ۖ۠ۥۜۤۤۤۙۧ۟ۨۡۗۛۨ۟ۘۙ۟ۥۙۥۨۦۘۗۧ۫ۗۧۘ۫ۨۢۧۜۘۧۛۤۜ۟ۥۡۡ۬ۡۛۙۡ۬۫۠ۨ";
                    break;
                case -1922659084:
                    c5.OooO0OO(AppContext.OooO00o(), AppContext.OooO00o().getString(R.string.network_off));
                    str = "ۢۧۢۡۗۜۘۤۜۦۘۖۢۧۢۢۦۘ۬ۦۖۘ۫ۜۜ۬ۢ۬ۜ۟ۘۘۥۙ۫۟ۢۢۡ۠ۢۗۢۧۤ۬";
                    break;
                case -1659245461:
                case -942349123:
                case -392481585:
                case 427015945:
                    return;
                case -1423060060:
                    id = view.getId();
                    str = "۟۫۬ۡۛۙ۬ۦ۬ۖۨۦۨۖۘۘ۠۬ۧۨ۟ۖۖۦۡ۫۬ۧۢۢۘۥۖۘۘۡۡ";
                    break;
                case -1170081361:
                    String str2 = "ۤۡ۟ۙۥۜ۫ۡۡۘ۬ۚۛۘۘۛۜۢۨۘۗۗۜ۠۬ۦۘۜ۬۬ۥۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-312706117)) {
                            case 312998104:
                                str = "ۛۜۖ۫ۘۡۘۜۨۨۨۗۜۘۧۨۦ۫۟ۛۦۢۥۘ۬۠ۡ۟۟۫ۨۦۚ";
                                continue;
                            case 989817391:
                                String str3 = "ۨۡۜۡۤۦۘ۟ۚۥۨۖۘۖ۬ۨ۬ۚۧۦۗۘ۫۫ۗۙۧۙۚۤۨۦ۟ۧۤ۟۠۬ۧ۫ۢۥ۟ۛۨۘ۠ۗۢ۟ۧ۫ۦۛ۬";
                                while (true) {
                                    switch (str3.hashCode() ^ (-409987315)) {
                                        case -1988253124:
                                            str2 = "۠۬ۖۘ۫ۢۦۘۖۖۤۦۜۨۘۘۖ۬ۧۜۗۦ۠ۤۗ۬۫ۖۘۜۘۡ۬ۘۘۨۡۘۘۛۗۦۘ";
                                            break;
                                        case -475784556:
                                            str3 = id != R.id.btn_activation ? "ۗۗۦۗۘۥۘۦۖۛۗۨۦۤ۠ۘۘۤۢۖۤۦۘۤۖۙ۬ۤۘۘۥۛۦۘۦۥۖۜۢۨۘ" : "۬ۜۙۧ۠ۜ۬ۙۚ۟ۤۧۨۧۘۘۘۨۨۘۨ۠ۨۘۤۢۛۗ۫ۧ۬۫ۚۨۛۥۘۨۤۨۢۢ۬ۤ۠۟۫ۧۦۨ۫ۨۧۢۨۛۦ۠";
                                            break;
                                        case -339244985:
                                            str2 = "۫ۡۢۦۘۘۨۤۜۘ۬ۥ۫ۛ۟ۡۘۢ۫ۤۧۜ۫ۧۗ۟ۦ۫ۡۘ۬ۧۥۚۡۚۘ۠ۥ۬ۖۘ۬۟ۥۘ";
                                            break;
                                        case 1290879465:
                                            str3 = "ۡۘۢ۠ۢ۫ۧۚ۬ۨ۫ۘۙۜۘۘۖ۠ۦ۫ۦۢ۠ۨۧۛ۟ۘۥۥ۬ۖۦۥ۬ۢۦ";
                                            break;
                                    }
                                }
                                break;
                            case 1165788366:
                                str2 = "ۜۘۦۘ۟ۘۨ۫۫ۤۘۖۦۘۙۦۜۛۡۨ۫ۨۗۡۘۖۘ۫۟ۤۗ۠ۥۘۦۥۖ۬ۤ۬ۛۘۜۚۖۖۤۘۜۖۨۧۥۦ۫";
                                break;
                            case 1176585437:
                                str = "ۖۖۖۧۗۗ۬۬ۦۘ۫۬ۗۧ۟ۥۘۤۖۨۗۗۜۘۙ۠ۥۛۚۜۧۤۛ";
                                continue;
                        }
                    }
                    break;
                case -1035891474:
                    this.o00o0O.removeCallbacksAndMessages(null);
                    str = "ۖۙۧۘۜۙۦ۟ۛۨۢۧۤۥۥۚۙ۬ۜۘۡۘۧۡۜۘۧ۬ۢۦۥ";
                    break;
                case -929292245:
                    ((oa) this.OooooO0).OooOoOO(this.OooooOO);
                    str = "ۡ۬۠ۗۙۢۢۢ۠ۨ۬ۨۤۗۢ۫۫ۤۤۚۗۢۨۘ۟ۚۜ۠ۚۖۘۡۖۡۛ۬۟ۨۨۘۧۙ";
                    break;
                case -745862176:
                    str = "ۙۗۗ۫۫۬ۖ۟ۛۖ۠۬ۘۙۛۘۨۘ۠ۘۘۘۨۜۚۨۛۚۖۤۖۦۦۦۧۢ";
                    break;
                case -686362659:
                    String str4 = "ۡۧۥۘ۠ۖۛ۬ۜ۟ۙۤۨۘۢۤۙۦ۫ۧۧ۠ۨ۫ۨ۟۠۫ۦۙۡۘۙۧۗۡۧۘۜۖۧۘۚ۠ۡۘۤۧۨۜۚۨۘۥۢۛۘۛۡ";
                    while (true) {
                        switch (str4.hashCode() ^ 1084643466) {
                            case -1136971749:
                                String str5 = "ۡۤ۠ۦۧۦۘۦۘۛ۠ۗ۬ۛۡۦۘ۟ۨ۟ۙۙۜۘۙۙۖ۟ۜۚۜۡۧۘ۠۠ۥۢۢۧۗۖۘ۠ۛۦۘۘۧ۫ۘۗۖۘ۟ۛۜۘۧ۟ۨ";
                                while (true) {
                                    switch (str5.hashCode() ^ 273477055) {
                                        case -1049612012:
                                            str4 = "ۖۤۖۘۦۤۥۘۥۦۡ۫ۦۘۖۢۜۘۤۚۘۘۖۖۖ۟۟ۚۢۗۜۘ۠ۨۦۘۧۚۖۘۤۛۙۚۛۜۦۗۖ";
                                            break;
                                        case -716842383:
                                            str4 = "ۖۜ۬ۖۖۗۧۢۚۛ۟ۨۘۦ۟ۧۧۗ۠۟ۡۚۜۡۗۜۨۘۤۗۡۘۛۧ۟ۙ۬ۘۧۦ۟ۤ۬ۘ";
                                            break;
                                        case 880860710:
                                            str5 = "۫ۛۧۧ۫ۖۘۜ۬ۡۘ۫ۜۜۥۙۘۗۨۤۘۘۖ۟ۙۜۘۦۦ۫۟ۡۤۥۧۛۛ۟ۦۡ۟ۙۦۡ۫";
                                            break;
                                        case 1194088987:
                                            str5 = TextUtils.isEmpty(strTrim) ? "ۙۥۚۨۨۨ۬ۜۡۘۧۛۛۥۡۜ۬ۜۢ۬ۧۡۘۘۨۜۦۛۤۗۗ۟ۢۛۚۛ۟۬" : "ۗ۫ۦۜۢۨۨ۫ۨ۟۫ۤۥۨۡۧۘۘۘۘ۫ۦۢ۬۫ۜۘۧۘۥۦ۠۠ۖۨۜ۬ۤۨۡۨۘۧۡ۫";
                                            break;
                                    }
                                }
                                break;
                            case -1050597849:
                                str = "ۢۘۤۡۜۙۘۡۜۡۙۜۘ۠ۨۘۘۥۖۚۚ۬ۦۘۥۗۖۥۢ۬ۦۧۤۢ۫ۥۘۦۦۘ";
                                continue;
                            case -490111514:
                                str4 = "ۖۦ۬۫ۛۚۡۨۖ۬۠ۧۘ۫ۖ۠ۜ۠۠ۥۚۙۤۦۘۛۢۧ۬ۘۚ";
                                break;
                            case 2103141776:
                                str = "ۚۦۧۘۚۙۖۘۥۢۖۘۛۘۜۘۙ۫ۤۥۛۡۙ۬ۥۘۛۛۨۘۗ۬ۘۛ۬ۛۛ۠۫ۙۤ۟ۜۤۢۤ۠ۥۘۦۡۚۗۨۗ۫۟ۡۘۢۗ";
                                continue;
                        }
                    }
                    break;
                case -384872687:
                    strTrim = this.OooooOo.getText().toString().trim();
                    str = "ۦۗۘۙۘۦۘ۠۠ۡۢۜۚ۟ۥۘۘ۠ۗ۫۫ۛ۫ۡۨۧۜۥۘۜ۠ۤۗۥۧۤ۠ۜۘ";
                    break;
                case -70373179:
                    String str6 = "ۦۖ۬ۦۥۡۘۨۦۥۥۨۚۨ۠ۨۘۨۤۘۘۨۗ۬ۖ۟ۡۘۜۙۖۘۧۡۙۨ۠ۘۨۜۜۥۖۖۧۡۘ";
                    while (true) {
                        switch (str6.hashCode() ^ 14722556) {
                            case -1724623315:
                                str = "ۖۡۜۘۜ۬ۥۘۥۥۢۜۡۜ۫ۗۨۙۖۙۘۖۥۘۜۜۖۘۜۚۥ۟۠ۧۖۢۦۘ۟ۤۨۘ۫ۛۥۘ۟ۦۜۨ۫ۧۡۗۚۚ۠ۖۘ۟ۚۦۘ";
                                continue;
                            case -1271895340:
                                str = "ۤۤۛۢۗۡ۫ۦ۠ۗ۫۟ۗۗۡۘ۫ۖۨۤ۠ۜ۠ۗۢۧۜۦۢۜ۠";
                                continue;
                            case -247818186:
                                String str7 = "۟ۙۧۛۚۡۘۥۡۦۙۦۢۗ۬ۡۘۗ۟ۡۙۡۨۘۨ۟ۥۥۢۢۧۗۦۘۡۖ۫ۧ۬ۖ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1108893951)) {
                                        case -1228864022:
                                            str7 = id != R.id.btn_sweep_activation ? "ۢ۠ۤۨۢۥۘۚۚۘۘۨۘۢۧۦۨۙۘۢۛۗ۫ۙۜۘۢ۟ۦۛ۫ۦۘۧۥۗۥۘ۬۠ۖۘۙ۫ۙ" : "ۨۚ۠ۢۥۡۘۖۙۗۛۜ۫ۧۤۘ۟ۙ۫ۦۙ۟ۢ۬ۘۘۗۖۖ۟۫ۨ۟ۢ۠۬ۤۙۦۗ۫ۚۥۘۡۘۘۦۧۘ";
                                            break;
                                        case -912661661:
                                            str6 = "ۖۜۛۗۨۛۘۘۡۡۢۦۙۥۘۜ۫ۡۘۘ۟ۜۡ۟ۢۨۜۙ۟ۢۦۘ۬ۜۨۨۥۚۧۡۧۧۦۦ";
                                            break;
                                        case -678513931:
                                            str6 = "ۙۜۦۘۨۤۥۘۚۡۥۥۡ۫ۘۢۨۜۜ۬ۢۚۡۤ۬ۢۚۢ۬ۨۘۨ";
                                            break;
                                        case -369694256:
                                            str7 = "ۨۨ۟۟ۗۧۗ۫۫ۙ۫ۡ۠ۢ۫ۨۜۡۘۧۘۧۙۢۥۘ۫ۗۥۨ۟ۘۗۦۥ۟ۢۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 270058157:
                                str6 = "ۙ۬۬ۡۖۥۨۖ۫۟ۗۘۘ۬ۡۛ۫۬ۗۤۢۛ۟ۖۢۤۦۘۤ۫ۤۨۡۘۨۖۦ۫ۗۧۢۢۤۘۤۧۗۜۘۜۜ۠۠ۧۛ";
                                break;
                        }
                    }
                    break;
                case 52216557:
                    str = "ۘ۠ۚ۬ۚ۠ۖۨۤۥۙۚۚۦ۬۬۠۫ۙۖۘۨۥۤۥۛۙۢ۬۠۠ۨ۠ۢۤ۟ۜ۫ۧ۠ۦۘۡۙۤۗۛۖۘۛۧۙۢۨۘۘ";
                    break;
                case 314114240:
                    this.o00o0O.postDelayed(new OooOO0(this), m.ag);
                    str = "ۖ۠ۥۜۤۤۤۙۧ۟ۨۡۗۛۨ۟ۘۙ۟ۥۙۥۨۦۘۗۧ۫ۗۧۘ۫ۨۢۧۜۘۧۛۤۜ۟ۥۡۡ۬ۡۛۙۡ۬۫۠ۨ";
                    break;
                case 555168137:
                    this.o00ooo = true;
                    str = "ۘۤۜۢۡۥۘۛۛۧ۫ۧۢۧ۬ۜۨۜۨ۟ۜۗۚ۫ۢۛۨۢۗۦ۫ۗۜ۠۬۠ۦۘ";
                    break;
                case 687944092:
                    c5.OooO0O0(AppContext.OooO00o(), R.string.input_register_number);
                    str = "۟۟ۖ۬ۜۥۘ۫ۥۘۤۜۡۘۛۨۥۘۛۧۧۢۜۡۘ۠ۡۥۘۘۜۖۛۚ";
                    break;
                case 741787100:
                    String str8 = "ۨۥۦۘۥۚۦ۟ۗۙ۫۟ۡۘۘۦ۟ۚۥۦۘ۠ۖۤۙۢ۫ۚۨ۟ۜۡۜ";
                    while (true) {
                        switch (str8.hashCode() ^ (-2035271680)) {
                            case -1031526680:
                                str = "ۙۙۙۘۜۜۘ۟ۥۡۤۘ۟ۛ۫۫ۛ۟ۢۗۖۖۘ۟ۗۙۡ۟ۦۨۛۘۘ";
                                continue;
                            case 106396952:
                                str8 = "ۦۗۙ۠ۢۡۙۘۗۨۥۛۗۗۨۡۘۡۗۖۘ۠ۘۘۘۖ۫۠۫۬ۛۢ۫ۚۗ۟ۦۘ";
                                break;
                            case 383044362:
                                str = "ۥۖۧۘۙۜۦۘۧۨۡۘۙۘۥۖۖۖۗ۟ۡۡۨۢۡۜۖۙۤ۫ۡۘۤۢۨۥۖۧۜۤ۟ۛۜۘۡۦۗ۫۟۬۟ۛۤ۟۠ۛ";
                                continue;
                            case 769138686:
                                String str9 = "ۥۘۘۘۡ۟ۘۘۨ۟ۧۧۙۦۚۥۡۘۧۤ۠ۘ۬ۖۘ۠ۛ۠ۗۡۜ۠ۗۘۘۦۗۨۛۦۡۘ";
                                while (true) {
                                    switch (str9.hashCode() ^ 1216818379) {
                                        case -1536152830:
                                            str8 = "ۡۨۙۚۨۛۥۖۜۤۧۦۧ۫ۥۘۖۡۧۘۜۧۗۗۚۤۦۖۛۜۧ۫ۥۛۤۚۖۨۢۥۨۘ۠۫۟ۙۚۥ۫ۡۧۘ";
                                            break;
                                        case -1191312296:
                                            str9 = this.o00ooo ? "۬ۡ۠ۧۗۦۚ۫ۦۘۘۦۜۡ۬ۗ۟ۖۜۘ۟ۡۘۘۢ۫ۡۘۥ۫ۗۤۜۙۛۥۛۧۤۚۤۡۖۥۥۡۧۚۨ۠ۢۦۨۗۦۛۡۨ" : "ۜ۟ۙ۬ۚۛۨۘۜۜۡۘۡ۬۬ۜۨۙ۠ۗ۬ۤ۠۬ۧ۟ۘۖۚۚۙۘ۠۠ۜ۠ۜۚ۟۫ۨۦۘۙۤۙ۫ۚ";
                                            break;
                                        case -404786208:
                                            str8 = "ۛۜۦۚۘۢۛۧ۟ۦۤۜۘ۟۠۫ۘۥۨۡۡۨۙۡۥۖۛۖۘۜۥ۫ۤۨۖۘۖۧۦ";
                                            break;
                                        case 2096246740:
                                            str9 = "۠ۢۛ۫ۜۡۦۥۨۘۨ۫ۜۦ۬۟۬ۨۘۘ۫۠۬ۧۗ۟ۗۦ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 993657578:
                    this.OooooOO = strTrim;
                    str = "۬ۨۤۛۖۛۨۦ۬ۛۗۘۡۡۢ۟ۧ۫۟ۦۜۘۚۥۤۢۜۘۘۜۨۖۘۤۧۥۘ۠ۥۘۘۡۡۛ۫ۛ۬";
                    break;
                case 1824275704:
                    String str10 = "ۘۜۧۘۡۦ۬ۢۙۜۘۨۖ۬۬۟ۖۧۖۜۚۤۨۛۨۖۘۧ۟ۤ۬ۚۖ";
                    while (true) {
                        switch (str10.hashCode() ^ 594495728) {
                            case -866697418:
                                String str11 = "ۚۖ۠ۧۙۛ۠ۢۥۘۥ۟ۨۙۥۛۨۧ۬ۦ۠ۜ۟ۡۖۘ۟۠ۗۤ۠ۡۦ۬ۙۖۛۨۘ۫۟ۜۘۧ۬ۡۘۘۜۡ۫ۡۘ";
                                while (true) {
                                    switch (str11.hashCode() ^ 165029507) {
                                        case -1788721592:
                                            str10 = "ۚ۬ۥۘۥۘۧۘۢۧۦۘ۟ۥۖۗ۫ۦۗۙۨۘۡۨۜۘۤۗ۫ۗۙۗۚۤۖۘ";
                                            break;
                                        case -1340883770:
                                            str11 = "ۙ۟ۦۘ۫ۖ۫ۡۜۘ۠ۖۘۤ۬ۤ۫ۜۥۤۥ۠ۜ۬ۨ۟ۙۦۧ۟ۛۙۗۥۥ۫ۙۤۦۚ۟ۦۖ۟ۧۛ۫۟ۛۛ۫ۜۘ۟ۢۖ";
                                            break;
                                        case -1130649483:
                                            str11 = !t4.OooOO0(AppContext.OooO00o()) ? "ۛۜۨۘۜۖ۫ۧ۠ۨۚۜۨۘۤۜۘۘۨۖۘۘۛۙۜۖۗۘۘ۟ۢۥۛۜۧۘۧۢۜۨۨۘۚۚۥۘۘ۫ۤۘ۟۬ۗ۬ۨۘۜۛۜۘۢۜۧۘ" : "۟۟۫ۥۢ۫۫ۡۘۘۥۛۚۦ۠۠ۦۘ۫ۗ۫ۡ۠ۥۗۙۥۦۛۧۡ۟ۖۥۧۙۜۗۡۘۨۤۛ";
                                            break;
                                        case 1565299032:
                                            str10 = "ۖۜۡۘ۫ۜۨۘ۫ۦۘۘ۠۫ۙ۠۬ۡۘۖ۫ۧۨۡۧ۠ۢۧۥۢۡۘ۫۫ۨۚ۠ۜۛۛۧۘۥۤۥۤ۬۟ۦۤۤۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case -644602604:
                                str = "۟ۡ۠ۥۗۥۘۡۤۦۘ۫ۥ۠ۧۜۘۘۡ۟۫ۘۦۨۘ۬۠ۗۢۛۤۧ۠ۜ۬ۡۨۘ۫ۨۖۛۖۚۜۘۘۘ";
                                continue;
                            case 1642033521:
                                str10 = "ۤۜۛۤۤۜۨۢۡۘ۟۟ۧۜ۠ۜۘۗۧۙۧۥۡۚۙۖ۫ۤۦۨ۟";
                                break;
                            case 2068258960:
                                str = "ۢۜۡۢۜۜۤ۟ۚۜۜۘۘ۠ۙ۟ۨۖۢ۠ۨۥۡۗ۬۫۬ۜۧۘۧۘۧ۟۬۬ۢۢۦۙ۟ۜ۫ۜۘۘۢۜۗۗۘۘۛۧۡۘۚۘۘ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۢ۫ۖۘۖۨۡۘۢۢۚ۠ۢۧۥۙ۟ۦۙۨۘ۫۫ۗۘۛۙۜۘ۟ۥۜۨۘۛۦۨۨۥۖۘ۠ۘۜۘۤۦۘۘ۠ۨۜۘۢۚۨۘۜ۟ۡۛۗۘ";
        while (true) {
            switch ((((str.hashCode() ^ 906) ^ 547) ^ 474) ^ 430042500) {
                case -422752743:
                    return;
                case 238402857:
                    super.onDestroy();
                    str = "ۙۜۚۤۧۚ۫ۨۖۘۦۘۖۘۗ۬ۜۘۢۨۘۛ۬ۦۘۖۥۡۘۦۖۜۛۤۨۦۘ۠۠ۨۘۦ۫ۘۘۛۜۥۘۛۚۙ۠ۨۧۘ";
                    break;
                case 512956791:
                    str = "ۨ۬ۜۘۨۧ۫ۙ۫ۖۨۗۧ۫۫ۘۥۙۢۗۗۖۘۛۙۘ۟ۦۘۘۛۤۡۙ۟ۖ۠ۦ۫ۡۤۜۖ۟";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۥۙۘۛۗۤۦۥۖۘۙۢ۬ۙۛۧۘۥ۬ۡ۟ۗۥ۟ۗ۟ۡۘ۫ۦۥۜۦۚ۟۫ۗۚۗۦ۬ۛۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 829) ^ 760) ^ 765) ^ (-1592185158)) {
                case -765587325:
                    return;
                case -101313985:
                    str = "ۙۥۚۦۨۦۘۧۨۨۚ۫ۗۗۙۦۘۢ۫ۚ۫ۜۗۜ۟ۛ۬ۖۘۛۚۚۜ۟ۜۘۥۖۦ۬ۚۢۥۢۡۘ۟۠۠ۗ۫";
                    break;
                case 761432053:
                    MobclickAgent.onPause(this);
                    str = "ۗۤۚ۟ۖۡۘۥۨۡۘۚۙۚ۫ۦۖۧۡۜۘ۫ۧۙۢۗۤۦ۫ۡۘۢۨۡۡۦۦۘۨۘۜۤۘۚۤۜۨۤ۟ۜۘۚۚۤۛۙۨۘۖۢ۫";
                    break;
                case 1258587684:
                    super.onPause();
                    str = "ۜۛۘۘۦ۠ۨۘۘ۠ۖۚۚۨۘۢۦۙۧۤۧۚۛۙ۠ۤۜۢۖۨۛۢۨ";
                    break;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0012. Please report as an issue. */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        String str = "ۗ۟ۖۘۛۛۨۗ۟ۦۘۢ۫۫ۖ۫ۛۨۤۜۡۛۥۙۜۧ۬ۤۘۘۘۨۡۘ۠۫ۖۘۙۦ۠";
        while (true) {
            switch ((((str.hashCode() ^ 688) ^ 478) ^ 592) ^ (-1896822240)) {
                case -2069169100:
                    break;
                case -1901887229:
                    str = "۟ۗۤۦۜ۟ۦ۠ۗ۬۟ۘۘۙۖۗۥۨۦۡۦۢۛۘۘۦۨۧۨ۠ۦ۬۠ۦ۟ۦۘ";
                    break;
                case -1582416716:
                    finish();
                    str = "ۥۖۙ۬ۥ۫۬۟ۡۘۢۦ۫ۖۧۦۡۧۜۦۦۘۥ۠۫۫۠ۙۡ۬ۘۘ۟ۜۧۤۜۦۜ۠ۛۡۚۧۥۚۦۜ۠ۥۘ";
                    break;
                case -657473158:
                    String str2 = "ۖۖ۬ۥۙۨ۠ۨۘۙ۬ۦۗۖۘۖۧۖۘۙۢ۟۟ۖۚۢۖۖۘۛ۬ۡۜۨ۬ۛۛۨۘۦۤۥۘ۠۬ۥۘۥ۫ۥۛۥۛ۬۫ۚۨۙ۫";
                    while (true) {
                        switch (str2.hashCode() ^ (-624370408)) {
                            case -252426787:
                                String str3 = "ۦۗۘۘۙ۟ۙۖۜۗۨ۬ۧۤۘ۟ۖۚۘۘۢۦۦۖۙۨۨۥۢ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ 1954342891) {
                                        case -748073134:
                                            str3 = iArr[0] == 0 ? "ۡ۠ۦۘۛۙۧۗۥ۫ۖۖ۟۟ۡۖۘ۫ۥ۫ۛ۬ۥ۫ۡۗۗۖ۬۬ۨۖۘۤۚ۠ۢۛ" : "ۖۙۧۗۤۚ۠ۡۖۢۥۦۘۘ۟ۘۖۢۥۘۧۥۦۡۗۦ۫۫ۖۚۙۧۗ۫ۖۢۥۡۘ";
                                            break;
                                        case -220233229:
                                            str3 = "ۖۙ۟ۘۢۤۨۨۘۘۙۢۡ۠ۜۘ۫ۚۡۧۢۥۡۤۖۘۨ۫ۥۧۢۘۘۘ۬ۡۘۜۙۜۘۚ۟ۜۨ۫ۤۙۢۥۘۡۙۨۘ";
                                            break;
                                        case -132347653:
                                            str2 = "ۜۡۜۘۛۦ۟ۘۗۜ۬۫ۖۖۡۘۘ۬ۢۥۘۗۗۥۦ۠۟ۤۙ۬ۛ۟ۢۨۚۢۢ۟ۜۨۘۡۘۜۖۗ";
                                            break;
                                        case 1230179128:
                                            str2 = "ۧ۫ۦۤۥ۬ۛ۫ۦۗۡ۠ۖ۠ۚ۬۟ۘۢ۠ۗۤۡۚۧ۬ۘۘۘۖۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 562330340:
                                break;
                            case 1699076935:
                                str2 = "ۛۢۖ۠۟ۥۘۤۡۡ۬ۜۘ۠ۦۦۘۖۛۜ۟ۥۚۡ۟۬ۚ۬۟ۘۘ۫ۦۥۛۦۗۜۘ";
                                break;
                            case 2039976111:
                                str = "۟ۛۜۚۙۜۖۗۛۘۜۜۢ۬۟ۜ۟ۧۚۧۙۛ۟ۚۘۜ۟ۢ۠";
                                break;
                        }
                    }
                    str = "۫ۥۗۤ۟۠ۖۧۖۘۧۚ۫ۡۧۨۡ۟ۥۘ۠ۗۗۖ۠ۘ۟ۖۥۘ۟ۖۦۘ۟۠۬ۗۥۢۗۦۗ۠ۡۛ۬ۜۖۘ۫ۚۡۘ";
                    break;
                case -612943524:
                    String str4 = "۠ۡ۫ۛۦۡۜۥۚ۬ۤۥۡ۬۬ۜۡ۟ۚۘۡۘۚۧ۫ۖۨۥۦۗۙ";
                    while (true) {
                        switch (str4.hashCode() ^ 1345500519) {
                            case -611508870:
                                String str5 = "ۧۜۦ۟ۘۘۢۥۗۨۛۦۘۤۙۖۦۚۨۜۨۦۘۖۧۧۛۡۡۦ۬۫ۦۡۘۧۘۧ۟ۥۨۘۤۘۨۚۧ۫ۥ۬ۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1125898327)) {
                                        case -993195779:
                                            str5 = i == 1000 ? "ۜۦۦۡۥ۟ۗۦۗۗ۟۫ۥۖۜۘۧ۬ۘۥۘۤۧۦۘۘۜۘ۫۬ۨۘۨۨۘ۠ۛۨۘۖۦۦۡۛۢۤۖۜۛۦ" : "۟ۤۘۙۜۘۙۜۘۘۢۗۜۘۢۥ۟ۧۥ۟ۨۢ۟۠ۛۙۜۥۙۥ۫۬ۦۡۡۘ۫ۛۥۜ۟۠ۥۛۖۘۡۨۥ۟ۛۖۘۢۖ۬ۜۧۡۘ";
                                            break;
                                        case -561011213:
                                            str4 = "ۜۢۚۧ۟ۜ۠ۦۡۘۙ۬ۘ۬ۧۦۡۨۤۦۢۖۙۦۜۜ۟ۨۢۚ۠۠ۚۙۡۙۚۥۗۦۦۥۘۧ۬۟ۥۥۦۘۗۨۤۛۗۖ";
                                            break;
                                        case 427102269:
                                            str4 = "۫۠۬ۖۥۤ۟ۗۡۥ۬۠۠۫ۘۙ۬ۡۘ۟۬ۥ۟۫ۡۢ۫۬۟ۘۘۦۙۗۢ۬ۨۘۛ۠ۙۤۦۙۜۤ۠ۥۧ۠ۡۡۥۘۡۦۧ";
                                            break;
                                        case 2033493048:
                                            str5 = "ۗ۠ۘۘۤۘۥۘۡۧۦۘۙ۬ۚ۟ۦۨۡۧ۟ۜۧ۬ۘۜۖۡۦۘۦ۠۬ۢ۠ۤۢ۟۬ۢۧ۬ۖۢۙۤۦۘۖۤۡۘۚۡۘۡۜۛ";
                                            break;
                                    }
                                }
                                break;
                            case 404549949:
                                str = "۠ۥۘ۫۬ۡۘۙۜۚۛۘۙۙۥۢۡ۟ۛ۬ۜۜ۟ۥۢۧۢ۟ۧۧۗۙ۫۟ۙۜ";
                                break;
                            case 758666989:
                                str4 = "۬۟ۖۘۙۨ۫ۚ۫ۨۘۜ۟ۡ۫۠ۚۡۦۖۧ۫ۚۡۦۘ۠ۙۗۡ۠۠ۡۛۦ۟ۚ۟";
                                break;
                            case 1246529902:
                                break;
                        }
                    }
                    break;
                case -511322488:
                    String str6 = "۟ۛ۠ۜ۠ۖۡۤۡۘۙۡۙ۬ۖۙۛ۬ۥۘۙۖۖۘۘۥۡ۬۬ۨۘۡۛۨ۬ۖۤۡۘۦۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-985439612)) {
                            case -1743760713:
                                str6 = "ۤۡۨۖۘۡۗۤ۬ۙۡۡۜ۠ۨۘۤۛ۟ۙۡۘۖ۬۫۠ۧۘ۠ۤۖۘ۫ۥ۬ۡۥۦۧ۫ۨۘۗ۬ۥ۬ۙۜۛۖۥۘۧ۬ۥۘۛۢ۫";
                                break;
                            case -981636789:
                                str = "ۤۜۙۥ۟ۢۘۤۥۘۘۡۤۦۧۨۢۖۢ۟ۜۖۦۧۚ۠ۘۦۘۡۤۜۖۖۘۜۚۥۘۘ۫۬ۤۤۖ۠ۤۜۨۨۖۧۛۡۙۥۜۘ";
                                break;
                            case -305851276:
                                String str7 = "ۛۙ۬۬۬ۦ۠۬ۚۨۦۘۦۦۥۗۘۘۢۜۨۨ۟ۡ۠ۨۘۡ۬ۨۘ۠ۦۡۤ۠ۚ۫ۘۘۖ۟ۚۜۛۚ۠ۘۦۘۛ۬ۜۥۘۙ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-114544952)) {
                                        case -1550324618:
                                            str7 = iArr.length > 0 ? "ۘۛۡۘۛۤۥۤۦۧۤ۟ۤۡ۠ۖۘۧۨۢۗۤۜۘۖ۬ۗ۠ۢۧۚۢۥ۫ۛۦۦۘۧ۠ۦۖ۬۠" : "ۤۜۡۘۨۢۗۧ۬ۛۨ۠ۥۘۡۥۖۘۢۥۡۚۖۨۘ۫ۘۖ۠ۧۨۘۘۛۘۛۥۘۖ۫ۜ";
                                            break;
                                        case -1128256009:
                                            str6 = "ۥۗۥۘ۟ۥۖۘۧۜۙۨۛۤ۠ۢ۫ۚۡ۟ۖۧۡۘۙۛۦۜ۟ۦۘۚۖۛ۬ۙۨۘۥۦۤۘۗۨۘۦۚ۫ۗۚۙۢۨۢۢۤ۬ۙۜۛ";
                                            break;
                                        case -1038473529:
                                            str7 = "ۥۜۜۗ۟ۜۢ۟۠ۙۢۖ۬ۚۧۥ۫ۜۘۘ۠ۢۙۜۧ۫ۧۘۘۡۙۥ۫ۗۗۧۙۙۗ۫ۙ۫ۜۘۘۨۤۨۘۜۨۡۘۛۥۨۡۚ۠";
                                            break;
                                        case -697550171:
                                            str6 = "۠ۤ۠ۜۘۘۥ۬ۚۦ۟ۡۥۜۥۤۘۧۦۗ۠ۙۗ۫۫ۜۨۘۢ۬ۚ۫ۨۖۨۢۦۘۛۗۙ۟ۡۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 778422665:
                                break;
                        }
                    }
                    break;
                case -114864684:
                    str = "ۧۜۧ۬ۘۦۘ۟ۛ۫ۚ۠ۡۘۤۡۨۛ۬ۥۙۧۘۢۚۥۨۘۦۘ۫۬ۨۘ۠ۗۤۜۡۖۘۢۖۜۡۜۦۘ";
                    break;
                case 339218882:
                    str = "ۜۛۥ۫ۙۦۚ۟ۥۚ۟ۜۘۗ۬ۦۘۤۗۤۙۨۤۖۛۘۨۛۙۢ۟ۨ۠۬ۥۡۙۗ۫۬ۙ۬ۘ۫";
                    break;
                case 486120578:
                    str = "ۥۖۙ۬ۥ۫۬۟ۡۘۢۦ۫ۖۧۦۡۧۜۦۦۘۥ۠۫۫۠ۙۡ۬ۘۘ۟ۜۧۤۜۦۜ۠ۛۡۚۧۥۚۦۜ۠ۥۘ";
                    break;
                case 524716533:
                    str = "ۡ۠ۢۛۛۛۨۗۥۡۧۖۘۡۨۘ۫ۚ۠۬ۨۥۘۦۘۜ۟ۖۖۘۗۧۙۥۦۥۘۢۙۡۘ";
                    break;
                case 1378072315:
                    OooOo00();
                    str = "ۢۜۥۘۨۦۧۘۦۡۥۘۨۨۥۘۛۘۙۙ۟ۤ۫ۢۘ۠O۠ۜ۬۬ۥۢۡۨۥۚۖ۬۠ۤۜ";
                    break;
            }
            return;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "ۤۤۗ۫۠ۖۘۨۚۛۚۤۦۤۘۙۗۡ۫ۤۥۨۘۡۧ۟ۖۧۙۜۨۗۖ۫ۦ۟ۨۢۦ۠۟ۦۙۨ";
        while (true) {
            switch ((((str.hashCode() ^ 197) ^ 133) ^ 146) ^ (-188227596)) {
                case -611016865:
                    super.onResume();
                    str = "ۘ۟ۤۚ۟ۙۘۨۗۢۧۜۘۗۖ۟ۥۨۘ۟ۛۢۖۛۤۦۥۖۘ۬ۖۘ۬ۡۦۘۥۤۧۡۦۥ۬ۧۜ";
                    break;
                case 664545184:
                    str = "ۤ۬ۦۘ۟ۘۚۧۡۥۡۚۚۖ۟ۡۦۜۖۤۥ۠ۚۚ۬ۥۨۘ۫ۘ۫ۡۙۦ۬";
                    break;
                case 683655104:
                    return;
                case 1681985138:
                    MobclickAgent.onResume(this);
                    str = "ۦ۠ۦۘۙۜۖۘۜۧۦۘ۫ۦۦۧۡۨۘۧۦۨۜۡۘۘۤۜۧۘۜ۟ۘۘۖۗۚ";
                    break;
            }
        }
    }
}
