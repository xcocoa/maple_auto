package com.cyjh.elfin.ui.activity;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.ac.R;
import com.anythink.expressad.video.module.a.a.m;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity;
import com.cyjh.elfin.ui.activity.studio.StudioBindActivity;
import com.cyjh.elfin.ui.activity.studio.StudioBindClearActivity;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.elf.studio.enity.IMResultInfo;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;
import z2.a4;
import z2.b7;
import z2.bh;
import z2.c5;
import z2.ca;
import z2.dh;
import z2.f6;
import z2.fh;
import z2.gc;
import z2.h6;
import z2.i4;
import z2.i7;
import z2.ii;
import z2.jb;
import z2.k4;
import z2.kc;
import z2.l10;
import z2.m7;
import z2.me;
import z2.r10;
import z2.t4;
import z2.t5;
import z2.t8;
import z2.x4;
import z2.y8;
import z2.z8;

/* JADX INFO: loaded from: classes.dex */
public class SettingActivity extends BaseActivity implements CompoundButton.OnCheckedChangeListener, View.OnClickListener {
    public static final int o000000 = 1000;
    private static final int o000000O = 1;
    public static final int o000OOo = 3000;
    public static final String o0O0O00;
    private Switch OooooO0;
    private Switch OooooOO;
    private Switch OooooOo;
    private Switch Oooooo;
    private Switch Oooooo0;
    private Switch OoooooO;
    private Switch Ooooooo;
    private Switch o00O0O;
    private Switch o00Oo0;
    private Switch o00Ooo;
    private LinearLayout o00o0O;
    private Button o00oO0O;
    private Button o00oO0o;
    private OooOO0 o00ooo;
    private LinearLayout o0OO00O;
    private TextView o0OOO0o;
    private LinearLayout o0Oo0oo;
    private Switch o0OoOo0;
    private Button o0ooOO0;
    private Button o0ooOOo;
    private TextView o0ooOoO;
    private jb oo000o;
    private String[] oo0o0Oo = {"5秒", "10秒", "15秒", "30秒", "60秒"};
    private Spinner ooOO;

    public class OooO implements TitleView.OooO0O0 {
        public final SettingActivity OooO00o;

        private OooO(SettingActivity settingActivity) {
            this.OooO00o = settingActivity;
        }

        public /* synthetic */ OooO(SettingActivity settingActivity, OooO00o oooO00o) {
            this(settingActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۥۛۦۘۤۘۗ۬ۚ۫ۙۘۡۥۦۘۢۛۦۘۘۥۘۜ۠۟ۤۧۦۦۚۘۨۚۢ۟ۦ۫ۛ۠ۨۨ۬ۨ";
            while (true) {
                switch ((((str.hashCode() ^ 416) ^ 346) ^ 910) ^ (-1363733321)) {
                    case 93759122:
                        str = "۫ۥۡۖ۫ۘۘۚۙ۠۠۟ۥۘۢۖ۫۫ۦۥۢۖۛۜۧۧۙۦۤۤۢ۫ۧۦۥۘ۠ۢۗۥۢۛ۠ۦ۫۫ۡۥۘ۬ۜۨۘ۬۠۬";
                        break;
                    case 366180433:
                        return;
                    case 931110219:
                        str = "ۜۛۖۘۦۤۡۘ۫۠ۢ۬ۦۥۤۤۦۘۛ۠ۛۨۗۗۥۨۛۙۜ۫ۦۛ۬ۜۜۧۘۗ۬ۦ";
                        break;
                    case 1537621145:
                        this.OooO00o.finish();
                        str = "ۥۢۥۘۡۛۜۘ۠ۡۘۥۦۡ۫۬ۚ۟ۗۜۘۦۚۖۘۤۤۢۙۢۨۘۗۘۚۛۥۥۘۖ۫۫ۛ۫ۗۜ۫ۢۥۗۤ۟ۧۖۢۤۥۘۘۤۢ";
                        break;
                }
            }
        }
    }

    public class OooO00o implements AdapterView.OnItemSelectedListener {
        public final SettingActivity OoooOoO;

        public OooO00o(SettingActivity settingActivity) {
            this.OoooOoO = settingActivity;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            String str = "ۥۢۜۤ۫ۚۢ۬ۗۢۗۨۥ۫۠ۥۚۜۘۜۡۥۘۜۚ۫ۘ۫ۚۦ۟ۦۘۢ۠ۖۘۜۗۘۘۘۢۡۘۦۦۖ";
            while (true) {
                switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE) ^ 65) ^ 193) ^ (-1005628329)) {
                    case -708501963:
                        str = "ۖ۬ۥۛۡۨۘۡۨۡ۫ۡۦۘۨۜ۠ۛۦۘۥ۫ۙ۠ۡۖ۟ۢۘ۬ۙۘۘۚۥۤۡ۬ۘۢۧۡ۫۟ۘ";
                        break;
                    case -402011700:
                        str = "ۙۨۜۨۜۜۢۡۧۘۘ۫ۡۘۘۡۡۘۡۘۡ۫ۥۖۧۢۘۡۦۘۘۤ۬ۘۡۦۘۖۡ۠۫ۦۤ۫ۡۧۘۘ۟ۢ";
                        break;
                    case -339749715:
                        str = "ۨ۟ۚۦۦۖۜۦۥۘۧۨ۫۟ۚۥۚ۟ۖۘۨ۬ۘۘۘ۟ۡۤۢۧ۠ۗ۬ۤۙ۫۟ۡۖ";
                        break;
                    case -191641854:
                        str = "۫ۨۛۡۦۡۘۚۗۘۖۢۡۘۛۥۡۙ۟ۖۚۢۦۘۜۦۨۘۤۘۦۘ۠۬ۖۘۨۦۗۜۛۢۘۚۘۤۦۖ";
                        break;
                    case 824948430:
                        return;
                    case 1140966409:
                        str = "ۜۡ۬ۢۢۘ۬ۘۜۥۧۦۛۚۨۘۤۧۧ۬ۛۥۘۖۧۨۚۥۗۧۢۖۚۨۙۢۙۙۙ۬ۜۢۦ۬ۙۖۖۘۖ۠ۨ";
                        break;
                    case 1149335422:
                        x4.OooO0O0().OooO0oO(f6.OooOo0o, Integer.parseInt(SettingActivity.OooO0oO(this.OoooOoO)[i].replace("秒", "")));
                        str = "ۨۜ۟ۧ۬ۡۧ۬۠ۧۡۜۘۧۚۨۢۘ۬۬ۘۜۘۛ۫ۤ۬۬ۛۢ۟۟ۥۤۖۘۡۙۛ۬۫ۙۖۤۙ۟۫ۥۘۧ۠ۚ۫ۚۘۘۥۨۡ";
                        break;
                }
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            String str = "ۤۧۜۢۛ۟ۛۧۡۘ۠ۦۡۡۛۖۘ۬ۦۨۜۜۖۘۛۧۘۘۛۚۖۘۢۢۖۘ";
            while (true) {
                switch ((((str.hashCode() ^ 357) ^ 250) ^ 988) ^ (-678779878)) {
                    case -490703018:
                        str = "ۤۜۙۢۙۖ۠ۘۖۜۗۘۘ۬ۗۡۦ۟ۖۘۨۜۚۗۖۛۛۢۛۗۛۛۛۗ۠ۘۨۧۘۥۗ۬ۘ۬ۨ";
                        break;
                    case 1140688001:
                        str = "ۙۙۜۘۥۡۡۛۛۢۗۖۥۡ۫ۤۢۜۡۢ۟۟ۖ۫ۜۢۥۜۘ۫ۦۨ";
                        break;
                    case 1495329417:
                        return;
                }
            }
        }
    }

    public class OooO0O0 implements View.OnClickListener {
        public final EditText OoooOoO;
        public final AlertDialog OoooOoo;
        public final SettingActivity Ooooo00;

        public OooO0O0(SettingActivity settingActivity, EditText editText, AlertDialog alertDialog) {
            this.Ooooo00 = settingActivity;
            this.OoooOoO = editText;
            this.OoooOoo = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "۫ۡۜۘۚۜ۟ۦۧۨ۬ۢۤۢۘۜۤۦۡۗۧ۠ۘ۟ۗۘۦۡۘۖۡۘ";
            while (true) {
                switch ((((str.hashCode() ^ 951) ^ 430) ^ 379) ^ (-783820430)) {
                    case -2134790867:
                        str = "ۦ۟ۦۘۖۜۖۘۘۛۧۤۚۤۧۥۧۘۡۗۙۡ۠۟ۗۛۨۡۤۜۘ۠ۤۖۜ۫ۦۘۗۖۚ۫ۗۘۗۨۖۦ۠ۙۧۜۘ";
                        break;
                    case -1682125287:
                        this.OoooOoo.dismiss();
                        str = "ۛۖۜۜ۫۬ۨ۫ۡۘۨۖۥۖۚۥۘۖۨۢۡ۫ۨ۫ۘۖۘ۫۫ۚ۫ۖ۠";
                        break;
                    case -843731359:
                        x4.OooO0O0().OooO0oo(f6.OooOo00, this.OoooOoO.getText().toString());
                        str = "ۘۚ۟ۦ۬ۤ۫۬ۢۢۡۛۛۨۜ۟ۨ۠ۚۖۗۜۘ۬ۘۨۢۘۜۧ";
                        break;
                    case -357989201:
                        str = "۬ۘ۠ۙ۠ۘۘۡۨۚۖ۠ۨۘۜۧۜۘۢۡۙ۫ۦۨۙۙۘۛۙۡ۠ۙۖۘۗۦۦۘۨۨ";
                        break;
                    case -258399840:
                        return;
                    case 153819482:
                        t5.o000oOoO("已保存！");
                        str = "۟ۚۨۘۛۜۖۚۙۦۧۛ۟ۢۤ۬ۧۤ۫ۢۘۨۗۥۘۥ۬ۦۘۤۛۦۘۤۚۨۘ۟ۤۦۘ";
                        break;
                    case 565249462:
                        str = "ۛۖۜۜ۫۬ۨ۫ۡۘۨۖۥۖۚۥۘۖۨۢۡ۫ۨ۫ۘۖۘ۫۫ۚ۫ۖ۠";
                        break;
                    case 1066566627:
                        String str2 = "۬ۛۢۚۥۜۜۤۨۗۗۚۡۥۨۦ۠ۘۘۡ۬ۜۗۜۡۥۗۢۘۡۙۗ۫ۗۘۙۢۚ۬ۥۙۚۜۘۙ۠ۜۘۖۗۨۙۢۦۦۧۢ";
                        while (true) {
                            switch (str2.hashCode() ^ (-1825665766)) {
                                case -1905058211:
                                    String str3 = "ۢۦۦ۟ۗۤۡۡۡۥۦۦۘۡۜۥۘۨ۟ۚ۫ۤۡۢۛۜ۠ۨۘ۠۫ۢ۟ۨۦۘۢۤۤۡۢۦۡۜۦۘ";
                                    while (true) {
                                        switch (str3.hashCode() ^ (-1311167184)) {
                                            case -1787293289:
                                                str3 = "ۧ۠ۜۧ۟ۢ۬ۥ۠۬ۙۗۡۙۨۘ۬ۜۤۤۤۜ۫ۘۨۘۦۦۡۘۘۤۡ";
                                                break;
                                            case 1375192168:
                                                str3 = TextUtils.isEmpty(this.OoooOoO.getText().toString()) ? "ۧۦۢ۠۬ۢۖۨۖۘۚۗ۟ۨۥۙ۠ۚۚۨۖ۫۠ۨۘ۬ۘۙ۟۫۬ۡۥۧۘۥۦۖ۠ۚ۫ۢۖۘۘۙۥۘۢۗۨۘ" : "ۜۘۚۡۦۚ۠۬۬ۥۨ۟ۦۦۚۖ۫ۥۘ۬۬ۜۘۦۚۜۗ۬ۡ۬ۘۖۗ۬ۖۡۢۤ";
                                                break;
                                            case 1824453207:
                                                str2 = "ۚۢۜۘ۠ۖۜۘۢۥۘۗۗۜۘ۫ۙۖۘ۫۬۬ۙۢۘۢۛ۟ۨ۟ۙ۫ۡۘ";
                                                break;
                                            case 1845523085:
                                                str2 = "ۦۗ۠ۛۨ۫ۥ۠ۛۖ۟۫ۦۡۧۦۛۡۛۛۦۤۗۖۚۚۡۢۤ";
                                                break;
                                        }
                                    }
                                    break;
                                case -697070017:
                                    str = "ۧۜۘۦۘۘۧۦۡ۠ۖۗۦۙۘ۟ۛ۠۫ۖۘۤۢۦۘ۟ۥۥۘۘۘۘ";
                                    continue;
                                case 1348838095:
                                    str = "۬ۗ۟ۗ۫ۨۘۚۢۡ۠ۜۨۛۡۤ۟ۥۘۚۛۜۧۨۤۢ۬۠۫ۤۙ";
                                    continue;
                                case 1807341549:
                                    str2 = "ۗۤۡۘ۠۬۟ۦۨۨۘۖ۟ۤ۟۬ۜ۟ۤۦۘ۬ۘ۟ۧۖ۫ۧۡۨۘۚ۟۠ۨۘۖۘۜۦۡۘۦ۠ۨۖۖۤ";
                                    break;
                            }
                        }
                        break;
                    case 2141709139:
                        t5.o000oOoO("输入不能为空！");
                        str = "O۠۠ۖۘۤۜۡۙۘۜۘۨۘ۟ۦۘۘ۬ۨۙۡ۠ۤۡۖۖۘۧۙۙ۬ۡ۠ۤ۠ۙ۠ۥۖۥۥۧ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements kc.OooO00o {
        public final SettingActivity OooO00o;

        public OooO0OO(SettingActivity settingActivity) {
            this.OooO00o = settingActivity;
        }

        @Override // z2.kc.OooO00o
        public void OooO00o(VersionUpdateInfo versionUpdateInfo) {
            String str = "۟ۤ۫ۜۢۡۥ۠ۦۖۘ۠ۤۨۜۘۗۗۨ۫۟ۛۡۘۥۙۤۢۢۜۧۘۢ۬ۧۗ۫ۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 372) ^ 385) ^ 893) ^ (-312004829)) {
                    case 1008580994:
                        return;
                    case 1062898667:
                        str = "ۙۛ۟ۗۧۦۘۖۘ۬ۢۗۥ۠ۡۜۢ۠ۛۗ۫ۨۥۨۜۡۥۢ۟۬ۙۜۦۘۗۥ۫";
                        break;
                    case 1465276227:
                        str = "ۛۥۜۧ۟۟ۧۗۜۥۤۦۜۖ۬ۡۧۨ۬ۢۥۤۗ۟۠ۦۥۙۤۥۘ۠ۖ۬ۧۨ۠ۚۜ۟ۘۨۘۛۚۖۘۛۤۖۘ";
                        break;
                }
            }
        }

        @Override // z2.kc.OooO00o
        public void OooO0O0(VersionUpdateInfo versionUpdateInfo) {
            String str = "۟ۥۧ۫ۦۢۦۜ۫۬ۗۦ۟ۜۥۡ۟۟ۛ۫ۡۘۧۛۘۘۗۘۜۘۥۛۧ۟ۜۛۚۥۥۘۥ۬ۢۨۚۥۘۛۙۖۦۤۡۦۚۥۘۨۨۦۘ";
            while (true) {
                switch ((((str.hashCode() ^ 15) ^ 780) ^ 483) ^ 698748672) {
                    case -2074000836:
                        str = "ۧ۬ۙۙۦۡۘۤۗۢۤۥۥۨۦ۫ۧۜۘ۫۠ۗۘ۬ۘۙۤۨۘۜۙۖۘ۠ۙۚۢۧۘۘۡۘۘۧۧۦۘ۬۟ۘۢۙ";
                        break;
                    case -2050358160:
                        str = "ۨۤ۫ۘۘۨۘۛۨۜۥۚۥۘۚۦۢۚۦۗۚۤۢۡۥ۟ۨۨۛۡۖ۠ۥۜ۠ۤۨۘ";
                        break;
                    case -1192332117:
                        return;
                }
            }
        }

        @Override // z2.kc.OooO00o
        public void OooO0OO(VersionUpdateInfo versionUpdateInfo) {
            String str = "۫ۤۛ۠ۗۥۘۛۢۦۘ۬ۡۛۡۡۖۦۦۥۘۦۚۤۙۛ۫ۢۛۛۡۗۘۘۚۤ۟ۙۧ۫";
            while (true) {
                switch ((((str.hashCode() ^ 510) ^ UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) ^ 478) ^ (-1738589848)) {
                    case 293356853:
                        str = "ۛۖۖۘ۬۫ۛۤ۫ۜۦ۟ۥۜۜ۠۫ۖۘۘۗ۫ۥۖۘۘۚۦۜۘۢۥۖۘ۟ۥۖۘۦۤۢ۠ۢۨۘۚۙۘ۬ۜۙۥ";
                        break;
                    case 1003756213:
                        String str2 = "ۤۚۤۘ۬ۧۘۚۤ۬ۛۙ۬ۛۨ۠ۖۧ۫ۘۧۘ۟۬ۢۧۗۥۘ۟ۘۦۘۤۨ۬۠۬۫ۖۧۡۘۚۙۥۘ۠ۗۛ۟ۜۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1512322467) {
                                case -329127538:
                                    str = "ۥۧۨۘۖۙۤۢۨ۬ۗ۫۬۬ۜۧۗۤۤۥۚۛ۠ۢ۬۠ۡ۠ۚ۠ۤ۟ۤۡ۫ۛ";
                                    continue;
                                case 1783295310:
                                    str = "ۨ۬ۘۘۖۤۘۨۙۥ۠ۧۢۗ۫ۘۛۢۛۢۨۜۘۧۧۦۘۚۨۘۛۘۦۘۘ۫ۡۘۘۖۦۘۚ۫ۚ۠ۖۦۤۦ۬ۗۛۘۘۘۘۗۢ۫ۢ";
                                    continue;
                                case 1812513643:
                                    String str3 = "ۜۥۖۨۤۧۘۖۢۖۢۘۢۥ۠۠ۛۢۥۘۖۙۦۘ۫ۖۨۘۚۦۧۛۥ۠ۥ۠ۛۜۖ۫ۢۡ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 2086476427) {
                                            case -1291134283:
                                                str3 = versionUpdateInfo == null ? "۬ۦۨۗۘۗ۠ۥۡۥ۬ۗۦۙۧ۟ۤ۟ۧۘۥۘۜۡۜۗۧۡۘۧۘۢ۟ۥۘۨۨۙ۬ۡۘ۟ۖۧۨۡۖۤۥۘ۟ۨۧۘۦۙۡ" : "۟۠ۡۡۖۖۧۛ۬ۜۦۤۧۘۥۘۛۖۨۘۤ۬ۨۜۗۡۘۛۥۚ۬ۦۘۖۜۤۖۡۘۧۗۦۜ۫ۦۘۘۦ۠ۢۨۜ";
                                                break;
                                            case 1346449862:
                                                str3 = "ۤۚۥۘۧۤۢ۟ۤۗۤۙۙۨۧۙۤ۟ۨۘۚۖۥۤ۠ۨۥ۫۠ۜۨۡۘۥۥ۬ۥۥ۠";
                                                break;
                                            case 1485915765:
                                                str2 = "ۢۙۢۜۤۥۙۙۤۘۦۖۘۤۖۚ۠ۤۖۘۥۗۤ۟ۜۥۙۧۤۥۦۚ۟ۦ۠ۛۜۢ";
                                                break;
                                            case 1746351420:
                                                str2 = "ۚ۠ۖۜۨ۫ۢ۟ۡۨۘۦۨۛۛۨۥ۬ۨۦۘۨ۠۟۫ۚۢۢۗۤۖۖۘۚ۠ۨۘۙۗۦۘۨۘۡۘۨۛۡۘ۬۠ۖ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1967418503:
                                    str2 = "۬ۧ۬۫ۦ۠ۛۚ۬ۤۥۚۧ۬۟ۙۘۛۧۧۜ۫ۗۢ۬۟ۧۗۚۦۘ";
                                    break;
                            }
                        }
                        break;
                    case 1290913220:
                        str = "ۢۘ۟ۥۤۜۘۤ۫ۥۘۢ۠ۧۦۧ۠ۥۥ۬ۙۛۜۘۗۗۛۦ۟ۖۘۦ۠ۚۙۗ۟ۚۤۙ";
                        break;
                    case 1461113750:
                    case 2008823740:
                        return;
                    case 1468052659:
                        new ca(this.OooO00o, versionUpdateInfo, false).show();
                        str = "۟ۚۥۘۘ۠ۦۡۥۖۘۡۨۥ۟۠ۡۘۧ۟ۥۥۖۤۗۧۚۗۡۘۦۚۜۦ۠ۘۛۥ۠ۗۡۡۙۢۚۖۘۢ۟ۜ";
                        break;
                }
            }
        }
    }

    public class OooO0o implements Runnable {
        public final SettingActivity OoooOoO;

        public OooO0o(SettingActivity settingActivity) {
            this.OoooOoO = settingActivity;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۥۘۘۥۛۤۤۚۦۘۗۙۢۙۘۧۘۖۡۜ۫ۤۚۜۥۛۘۧۥۘۢۡۘۤۤۜ۫ۧۘۘ۟ۦۡۘۚۧۗۢۥۦ۬ۚۙۨۘۦۘۥۘ";
            while (true) {
                switch ((((str.hashCode() ^ 22) ^ 595) ^ 186) ^ 895556944) {
                    case -1993983958:
                        str = "ۡۥۙۗۛۘۘۗۥۗۚۤۥۦۖۡۘۨۧۘۘ۫ۦۤۥۧ۠ۥۢۨۘۗۖۨ۬ۨۘۘ۠ۦۖۘۦ۠ۦۘۛۖۥۘۖۜ۟ۛۗۤ";
                        break;
                    case -1340098388:
                        dh.OooOo0(this.OoooOoO);
                        str = "۫ۨۜۜۨۡۘۥ۫ۛۛ۬ۜۤۛۦۢ۠ۜۘۘۘۖۘ۬ۤۜۢۛ۬ۗۡۡۘۗۤۧۜۚ۟۠ۡۦۘۡۛۥۦۧۧۙۡۧ";
                        break;
                    case -78822712:
                        return;
                }
            }
        }
    }

    public class OooOO0 extends CountDownTimer {
        public final SettingActivity OooO00o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private OooOO0(SettingActivity settingActivity, long j, long j2) {
            super(j, j2);
            this.OooO00o = settingActivity;
        }

        public /* synthetic */ OooOO0(SettingActivity settingActivity, long j, long j2, OooO00o oooO00o) {
            this(settingActivity, j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            String str = "ۙ۬ۤۛ۠۠ۘ۫ۢۘۖۢ۬ۦۦۖۦۘۖ۬ۨۜۜۛۢۙ۫ۥ۬ۥ۠۫ۘۛۧۨۘۦۙۡ۠ۢ۟ۨۢۡۗۙۡۜۤۧ۬۠ۦ";
            while (true) {
                switch ((((str.hashCode() ^ 356) ^ 34) ^ 112) ^ (-468970098)) {
                    case -1183885437:
                        String str2 = "ۧۚۘۘۛ۬ۥۘۙ۟ۖۘۜ۠ۡۘۙ۟ۡۘۨۖۤ۟ۖۖۘۗۚۜۘۛۢۦۘۚۥۥۙۗۜۘۥۧۛ";
                        while (true) {
                            switch (str2.hashCode() ^ (-901872452)) {
                                case -1223979584:
                                    str = "ۢ۬ۦۤۙۜۘۦۤۜۘۗ۠ۥۘ۬ۤ۬۬ۥۦۡۧۤۗۤۥۨ۠ۦۘۗۦ۬ۡۤۘۘ۬ۧ۟ۨ۠ۡۘ۠ۦۨۤۡۖۙۖۙۘۡ۟ۛ۟";
                                    continue;
                                case 169866825:
                                    String str3 = "ۥ۬ۨۘۧۧ۬ۙ۬۬۬ۖۦ۫ۗۨۦۙ۠۫۫ۨۗۙۘۘۥۗۙۖۧۙۨۗۨ۫ۛۡۘۘۥۢۜۚۖۢۢ۠ۗۨۦ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1194707606) {
                                            case -1944585621:
                                                str2 = "ۖۖۖۦۥۦۘۘۡ۫۬ۦۦۘۚۢۨۘۚۖ۫ۢۘ۟ۛۧۦۗۖۡۘۜۛۨۖۡۗۘۨۨۘ۫ۡ۟ۢۧۘ۠ۙۖۡ۬";
                                                break;
                                            case -1763178346:
                                                str3 = "ۧۛۡۘ۟ۤۧ۬۫ۢۛۜۡۘۛۢۖۘۧۜۡ۟ۥ۟ۙۡۘۘۘۖۦۗۢۖ۫۠ۨۥۨۨ۫ۦۦ۫ۚ۠";
                                                break;
                                            case -703957408:
                                                str3 = SettingActivity.OooO0oo(this.OooO00o).isShowing() ? "ۢۧۥ۫ۧۦۘۨۥۛۤۥۘۖ۫ۜۘۤۥ۠ۦۢۘۘۜۢۘۤۦ۬ۦۛۖۜۙۡۖۜ۠۟ۗۢۙۘۥۘ" : "ۘۛۖۘۨۨۨۘۦۖ۠ۥۜۡۘۙۢۦۘۚۖ۫۠ۥۚۥ۫ۡۘۢۧ۬ۦۢۘۦۘۧ۬ۧ۟۬ۨۧ۠۟۬۬ۥۛۢ۠۟۫ۥۘۚۘۖ";
                                                break;
                                            case -472543440:
                                                str2 = "ۦۦۙۘۢۡۚ۟۠ۖۚۡۘۚۤۛۥ۬ۘۙۗۘۘ۬۟۟ۥۡۖۘۚۚۦۡۧۜۘ۫۬ۦۗۚۢۚۗۧۜۘۢ۫۠ۚۗۡ۬۬ۧ";
                                                break;
                                        }
                                    }
                                    break;
                                case 681138200:
                                    str2 = "ۙۡۦ۬ۘۖۤۘۤۗۘ۟ۢۢۨ۠ۨۨۘۥۤۥۘۘ۫ۦۡۗۖۘۤۚۡۘۡۧۥ۬۫ۥۘ۬ۡۘۢۙۥۘ";
                                    break;
                                case 1921470718:
                                    str = "ۨۤۜۚۖۘۥۡۜۥۤۤۨۜ۟۬ۧۦۦۙ۫ۦۨۘۘۜۘ۠ۙ۫ۧۘۘ۬ۡۗ";
                                    continue;
                            }
                        }
                        break;
                    case -1168803216:
                        SettingActivity.OooO0oo(this.OooO00o).dismiss();
                        str = "ۨۤۜۚۖۘۥۡۜۥۤۤۨۜ۟۬ۧۦۦۙ۫ۦۨۘۘۜۘ۠ۙ۫ۧۘۘ۬ۡۗ";
                        break;
                    case -538413139:
                        str = "۫ۗۜۘ۟ۙۘۘۨۛۜۘۘ۬ۧۢۖۗۙ۟ۘۧۛۨۘ۬ۛۖۘ۟ۙۥۖۜۨۘ";
                        break;
                    case 1712638240:
                        return;
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            String str = "۫ۢۧۥۚۢ۬ۤۥۚۘۖۘۥۜۨۘۛۥۚۦ۫ۚ۠ۛۨۘۙۙۥ۫ۛۡ۟۠ۨۘۥ۠ۚۗۥۙۜۙۚ";
            while (true) {
                switch ((((str.hashCode() ^ me.o0000O) ^ 845) ^ SubsamplingScaleImageView.ORIENTATION_270) ^ 106504566) {
                    case -1922582304:
                        str = "ۛۙۗۖ۟ۡۜۡۘۖۧ۫ۢۨۨ۠ۢۧ۟ۨۦۙۧۛۘ۠ۦ۟۫ۡۘۦۜ۬ۡۢ۟";
                        break;
                    case -1183104035:
                        str = "ۢ۫۟ۡ۬ۗۛۨۨ۫۟۟ۖ۟ۚۜ۬ۤۡۤۢ۠ۘۛۚ۟ۖۢۚۢۥۧۗۘ۫۫ۥۧ۬ۘۥۘۘ۠ۥ۠ۨ۠۠";
                        break;
                    case 581654294:
                        return;
                }
            }
        }
    }

    static {
        String str = "۠ۤ۠ۨۘۚۢ۟ۖۦۖۘۨۘۘۦۖۘۖۥ۟ۡۡ۫ۙۧۖۚۛۖۘ۠ۥۗۧۢۢۙۥ۬ۧۢ۟";
        while (true) {
            switch ((((str.hashCode() ^ 604) ^ 992) ^ 666) ^ (-315968581)) {
                case -236692157:
                    return;
                case -28580143:
                    o0O0O00 = SettingActivity.class.getSimpleName();
                    str = "ۜۤۚۥۘۖۡۜۨۡ۠ۚۡۢۤۢۨۢۘۨۘۡۢۖۘۨۢۜۙۖۦۘ";
                    break;
            }
        }
    }

    private void OooO() {
        String str = "۠ۖۜۛۡ۬ۘۤۢ۟ۦۙۦۖۤۛۤۘۘۡۗۨۤۚۜۢۗۜۘۖۚ۠۠ۜۨۘۦۗۦۘ";
        Boolean bool = null;
        x4 x4VarOooO0O0 = null;
        Switch r4 = null;
        Boolean bool2 = null;
        x4 x4VarOooO0O02 = null;
        Switch r7 = null;
        while (true) {
            switch ((((str.hashCode() ^ 872) ^ 375) ^ 802) ^ 680006450) {
                case -1851909454:
                    return;
                case -1804708054:
                    str = "۬ۨۗۤۢ۟ۗۥۧۘ۠ۦۘۖۚۨۘۜ۫ۘۥۧۖ۬۬ۦۘۥۥۖۘۙۨۖ۬ۖۦۘۤ۠ۥۘۡۦۚۜۛۖ";
                    break;
                case -1732693458:
                    this.Oooooo0.setChecked(x4.OooO0O0().OooO00o(f6.OooOOO0, bool2));
                    str = "۬۬ۨۘ۫ۘۜۦۜۥۘۥۚۜۙۜۥۘۤۤۦۙۚۡۘۖۦۥۘ۬ۚۜ۟ۜ۬";
                    break;
                case -1465660237:
                    str = "ۤۦۖ۠ۥۖۘۧۘۜۥ۟۬ۘۗ۠ۥۦ۠ۙۡۙۛ۟ۡۘۢ۠ۘ۠ۤۥ۟۬ۨۘۤۙۨۥ۬ۦۢ۫ۡ۠۠ۦۜۙ۠ۙۡۤ";
                    bool2 = Boolean.TRUE;
                    break;
                case -1087241037:
                    bool = Boolean.FALSE;
                    str = "۫ۖۜۘ۠ۖۗۚۧ۠ۗۧۨۧۜۦۡۦۘۨۗۛ۫ۚۤۥۙۛۡۚۦۘ";
                    break;
                case -717492010:
                    str = "۠ۢۤ۬ۙۗۜۚۗۥۘۧۗۨۧ۠ۦ۬ۘ۫ۖۘۤۥۙۢۚۡۘۤۢۙ";
                    x4VarOooO0O0 = x4.OooO0O0();
                    break;
                case -426557704:
                    this.o0OoOo0.setChecked(x4.OooO0O0().OooO00o(f6.OooOo0O, bool));
                    str = "ۛۨۦۘ۫ۦۡۘۗۜۧ۬ۥۛۨۖ۬ۘۥۘ۬ۨۥۢۘۚ۫ۙۘۘۡۧۘۘۢۚۛۨ۫ۙ۟ۦۥۖ۬ۛۘۖۙۢۘۧ";
                    break;
                case -393664951:
                    str = "ۘۜۜۢۘۙۥ۬ۖۚۜۢ۫۫ۢۢ۠ۚ۠۬ۜۘۨۖۘۘ۬ۡ۠ۜۗۜۘ۠ۧ۟ۡۧۡۘ۠ۖۘۢ۫ۡۘ۬ۨۨۘ۠ۗۥۘ";
                    r4 = this.o00O0O;
                    break;
                case -384187408:
                    this.Ooooooo.setChecked(x4.OooO0O0().OooO00o(f6.OooOo0, bool));
                    str = "ۘۧۜۘۧ۫ۚۡۥۖۘۙۜۨۘۖۢۘۧۖ۠۫۟ۡ۫ۥ۬ۚۙۨۡۧ۫ۚۡۤۡۥ";
                    break;
                case -46863464:
                    this.OooooOO.setChecked(x4.OooO0O0().OooO00o(f6.OooOO0o, bool2));
                    str = "ۦۚ۫۬۬ۧ۟ۦۦۘۖۗ۟ۦۛۦۚۨۘ۬ۛ۫ۚۙۗۢ۬ۜۢ۫ۘ۬ۦۘ۠ۛۖۘۙۦۛۖ۟ۦۥۦۥۛۤۡۘ";
                    break;
                case 133952763:
                    str = "ۙۥۜۥۢۖۘۤ۟ۜۘۡۤۘۧۘۙ۫ۨ۟ۜۥۧۘ۟ۡۨۘۖۦۧۚۘۦۘۡ۠ۨۘۖۜ۠۫ۚۙۡۨۥ۟ۙۥۘۤۗۥۘۘۤۨۧۚۖ";
                    r7 = this.OooooO0;
                    break;
                case 179178211:
                    this.OoooooO.setChecked(x4.OooO0O0().OooO00o(f6.OooOOOO, bool2));
                    str = "ۙۚۖۧۧۛۡۙۧۙۘ۠ۛۗ۠ۧۛۖۘۚۙۡۘۥۙۖ۟ۜۧ۠ۛۡۚ۟ۡۘۧۙۙ۠ۘۜۘ۫ۢۖ";
                    break;
                case 429568711:
                    r4.setChecked(x4VarOooO0O0.OooO00o(f6.OooOOo0, bool));
                    str = "ۢۤۨۘۖۡۧۘۢۥ۟ۘۜ۫ۦ۠ۙ۠ۜۖۘۨۙ۟۫ۘۧۘ۟ۦۡۢۢۡۘۦۨۦ۫ۨۜۘ۬ۦۡ۬ۧۥۜۘۦۘۘۤۥۘ۫۬۠ۜۦ";
                    break;
                case 509904074:
                    this.o00Oo0.setChecked(x4.OooO0O0().OooO00o(f6.OooOOo, bool));
                    str = "ۖ۬۟ۦۙ۟ۘۚۦۤۚۦۨ۬۠ۛۤۙۙۗ۠ۢۖ۠ۤۜۡۘ۬۬ۥۘۤۛۨۨۨۦۘۡ۠ۦۜۗۨۨۢۜۘۨ۟ۡ";
                    break;
                case 1207415042:
                    this.Oooooo.setChecked(x4.OooO0O0().OooO00o(f6.OooOOO, bool2));
                    str = "۠ۗۥ۠ۥۦۘۤۛۤ۠ۖۦ۟ۦۨۘۖۡۨۗۤۨۡۗۡۙ۫ۜۨۛ۫۟ۜۨۘۡۘ۟ۤۗۦۤ۠ۥۛۥ۬ۖۜۢۨۦۥۘۦۡۧ";
                    break;
                case 1743362664:
                    str = "ۤۜۡ۫۬۠ۥۖۢۧۢۖۘۛۜۤ۟۠ۗۗۦۥۛۥۦۥ۫ۥۘ۠۟ۚ۫ۚۡۢۤ۟";
                    x4VarOooO0O02 = x4.OooO0O0();
                    break;
                case 2139911061:
                    this.o00Ooo.setChecked(x4.OooO0O0().OooO00o(f6.OooOOoo, bool));
                    str = "ۥۡۜۗۧۢ۠۬ۘۨۡۗۛۦۖۘۨۧۥۘۡۢۜۘۘۢۨۘ۟ۛۚۦ۫ۨ";
                    break;
                case 2140278124:
                    r7.setChecked(x4VarOooO0O02.OooO00o(f6.OooOO0O, bool2));
                    str = "ۦۗۨۘۗۙ۠ۢ۫ۦۨۧۜۢۢۥۗۗ۫۬ۘۘۗۛۨۙۢۜۙۡۘۖۖۘۨ۫ۜۜۖۧۛۗۖۢ۟ۗۡۤ";
                    break;
            }
        }
    }

    public static /* synthetic */ String[] OooO0oO(SettingActivity settingActivity) {
        String str = "ۛ۠ۤۚۖۥۨۜ۬ۘۘۚۦۢۖۖۡۤۙۗۨۗۧۨۦۖۛ۟ۦۘۜۖۡۘ۟۠ۜ۬ۙۡۘۘۡ۠ۖۦ۬۬ۦۧ۟ۜۘۘۘ۠ۨ";
        while (true) {
            switch ((((str.hashCode() ^ 191) ^ 18) ^ 895) ^ (-998132477)) {
                case -1772170095:
                    return settingActivity.oo0o0Oo;
                case 922730331:
                    str = "ۘۧۨۘۗۜۧۘۤۨۢۡ۠ۤ۟ۜۡۡۢۢۚ۠۟ۥ۟ۜۘۚۚۦۘۙۥۧۗۛۡۘۗۢ۟۬ۚۛۚۘۚ۫۟ۖۘۨۖۖۜۗۘۗۘۡ";
                    break;
            }
        }
    }

    public static /* synthetic */ jb OooO0oo(SettingActivity settingActivity) {
        String str = "ۡ۠ۛۧۜۧۧۙۤ۫ۘ۟۟ۙ۬ۢۗۚۛۡۘۥۚۦۘ۬ۦۗ۫۟ۚۛۨۖۘۨۧۗۤۧۢ۠ۡۢۤۨۖۘ۬ۛ۟۠ۙۤۤ۟ۘ";
        while (true) {
            switch ((((str.hashCode() ^ 666) ^ 518) ^ 905) ^ 411132385) {
                case 1594993480:
                    return settingActivity.oo000o;
                case 2025656286:
                    str = "ۘۘ۫ۘۘ۬۫ۦۘۘۚۘۖۘۨۨۦ۟ۛۖۘ۠ۨۥۢۛۢۧۢۗۚۜۦۦۚۙۦ۬ۖۘۦۘ۟۫۟ۥۘۛۨۜۘۦۘۡۨۡۡۘۡۨۖ";
                    break;
            }
        }
    }

    private void OooOO0() {
        OooO00o oooO00o = null;
        String str = "ۨۛۘۢۜۨۘۖۤۛۚۙۜۘۙۖۥۥۨۘۥۛۧۡ۬ۦۖۖۢ۟ۛۚ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 105) ^ UiMessage.CommandToUi.Command_Type.SET_FW_BG_VALUE) ^ 726) ^ 204673460) {
                case -1990875054:
                    str = "ۨۧۨۢۢۦ۟ۥۛ۠ۡۢ۬ۤ۠ۢۦ۬ۙۧۖۘۚ۠ۚۙۛۡۘۗ۬ۨۧۙۨ۠ۜۘۘ۟ۥۢۥ";
                    break;
                case -795274920:
                    titleView.setVisibilityRightImage(4);
                    str = "۫ۦۜۘۛۚۖ۟ۢۗۡۦۜۘۢۗۡۘۨۢ۟ۧۛۚۖۚۤ۬ۘۧۥۛۢۜۗۗۗۛۛ";
                    break;
                case -726013605:
                    titleView.setOnLeftImageViewListener(new OooO(this, oooO00o));
                    str = "ۙ۫ۘۘۨ۫ۘ۫ۘ۟۬ۙ۫۫ۨۚ۬ۧ۫ۦۖۘۘۜۤۢۙۤۦ۠ۨۦ۠ۥۥۘ۠ۙۥۚۚۦۡ۟ۡ";
                    break;
                case 363134589:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "۫ۘۤۧۗۘۘۤۜۨۙۥۧۘۘۜۧۢۢۗۨۨۢ۬ۦۘۘۢۜۡۘۛۙۘۘۘۖۥ۠ۛۥ۟۬ۤۡۚۡ";
                    break;
                case 790838490:
                    titleView.setTitleText(R.string.setting);
                    str = "ۨ۫ۘۖۧۧۛۤۚۦ۬۟۬۫ۡۘ۫۬۟ۨۜۜ۬ۨۙۧۧ۫ۤۨۥۘۛۧۨ۫ۚۜۤۗ۟ۖۜۦۘۗۚۥۧۙۘۘ";
                    break;
                case 868287825:
                    titleView.setVisibilityLeftImage(0);
                    str = "ۖۥۤۖۛۦۘ۬ۦۧۖ۫ۡۘۧۙ۠ۖ۫ۛۙۛ۫۠ۜۚ۫۫ۥۢۚ";
                    break;
                case 1982079458:
                    str = "ۧۖ۟ۘۖۖۘۘ۟ۖۢۤۗۤۖۥۜ۬۬ۦۦۧۧۦۡۘۦۨ۟ۚۨۡۘ۠ۛۢۨ۠ۡۘۦ۟ۡۨۦۘ";
                    titleView = (TitleView) findViewById(R.id.titleview_setting);
                    break;
                case 2118119188:
                    return;
            }
        }
    }

    private void OooOO0O() {
        TextView textView = null;
        String str = "ۢۚۧۤۤۨۘ۫۟ۨۘۜۨۘۘ۫ۜۢۧۖۦۘۧ۬ۚ۟ۤۢۤۜۙۤۤۨۘ۫ۨۦ۫ۨۨۢۘۥۘۥ۟ۨۘ";
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 394) ^ 673) ^ 642) ^ (-1949197911)) {
                case -2032616292:
                    i3 = R.string.not_binding;
                    str = "۫ۥۨۘۜۤۧۥۜۢۘۡۖۘۨۤۖۖۛۖ۫ۢ۬۠۫ۚ۠ۧۖۘ۫۟ۖۘۚ۫ۜۢۤۧ۠۬ۨۜۘۘۤۡۤۨۡۡ";
                    break;
                case -1926944718:
                    str = "۫ۛۥ۠ۖۘۘۜۢۗۥ۟ۘۘۨۢۥۙۧ۠ۡۧۥۘۨۤ۬ۜۛۦۜۤۥۘ";
                    i2 = i;
                    break;
                case -1368554661:
                    str = "۫ۢۦۦۥۘۧۡۙۨۖ۟ۧۧۧۚۢ۠۬ۚۘۘۚۘ۫۬ۥۢۚۨ۫ۢۜۜۜۙۚۗۥۖۤۤۤۗۢۢۤۢۜۚۥۘۢۚۘ";
                    break;
                case -1257224512:
                    i = R.string.already_binding;
                    str = "ۨۗ۠ۡ۬ۧۢۘۥۦۥۥۘ۫ۖۡۡۡۖۘۙۘۘۘۚۜۦۨ۟ۢۢۦۘۨۘۘۘۧۚۦ۫ۡۖۛۖ۠ۥۢۦۢ۬۫ۗۢۦۘ۬ۡۘ";
                    break;
                case -1217528238:
                    textView.setText(getString(i2));
                    str = "ۢ۬ۜۥۛۘۘۥۤ۟ۢ۫ۡۘۛۜۥۘۜۗۡ۫۠ۡۡۡ۫ۡۘۢۙ۟";
                    break;
                case 416126452:
                    String str2 = "ۜۢۗۢۜۨۖۖ۬۠۠۬ۧ۠ۘۘ۠۫۫۬ۜ۫۫ۚۦ۬ۖ۬ۙۦ۟۠ۤۛۛ۬ۜۨۚۜۚۥۡۜۘۦ۠۟ۛ";
                    while (true) {
                        switch (str2.hashCode() ^ (-433681942)) {
                            case -1352060318:
                                String str3 = "۟ۜۢۦۚۡۘۙۛۦۘۚۢۘۘۢۢ۟ۘۡۚۥۗۚۚۘۙۨۨۘۦۥۧۦۧۜۘۜۘ۫ۡۘۘۗۤۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-2094364854)) {
                                        case -1904058320:
                                            str2 = "ۢۚۦۙ۬ۥ۫ۥۦۚۚۦۘۨ۬ۡۘۙۧۖۘۡۜۘۘۙۤۙۜۛۢۦۢۛۤۤۖ۬ۤۛۦۡۥۚ۫ۨ۬۫ۖۢۨۘ";
                                            break;
                                        case 1074505742:
                                            str2 = "ۡ۟ۜۥۚ۠ۛ۫ۦۘۦۖۙۦ۫ۨۘ۫ۢۧۙۗۗۥۜۧ۬۟ۡۘ۟۠ۤۡ۫ۚۜۜۢ۠ۥۜۘۚ۠ۗۦۜ۬۫ۜ";
                                            break;
                                        case 1283231278:
                                            str3 = "ۚۘ۟۫ۨ۟ۦ۬۬ۧۙۘۚۛ۫ۙ۠۬ۛۡۘۘۥۛۨۙۜۘۢۚ۟ۨۡ۫ۡ۟ۤۘۢ۟ۛۤۖۘۢۥۙ۟ۖۧ";
                                            break;
                                        case 1742207808:
                                            str3 = TextUtils.isEmpty(AppContext.OooO00o().OoooOoO) ? "ۨ۫ۗۦۦۖۘۡۡۜۘۙۖۡۘۚۡۘۦۗۦۘۧ۫ۗۥۧۖ۫ۚۜۢ۬ۦۘ۫ۤ۬ۦۥ۟ۙ۬۠ۨ۠ۜۜۨۨۜۦۜۘ" : "ۜۤۥۗۥۦ۠ۦ۟۫ۨۨۘ۠۬ۥۚۛۡۘۦۗۦۘۡۘ۬ۚۧۜۘۤۖۥۘ";
                                            break;
                                    }
                                }
                                break;
                            case -32540587:
                                str = "۠ۖۦۥۧۡ۫۟ۖۤۚۤۧۡۘۤۚۘ۠ۦ۫ۡۥۙۤۛۦ۠ۢۢ";
                                continue;
                            case 314523762:
                                str = "۟ۤ۬۫ۥۡ۬ۡۢۙۛۢۡۥۧۘۙۙ۬ۤۥۘ۟ۙۜۤۦۜۙۗۥ";
                                continue;
                            case 624920768:
                                str2 = "ۨ۟۟ۤۖ۠ۜ۬ۖۘ۠ۚۛ۬ۙ۫ۗۘۗۙۘۢۛۗ۬۫ۚۤۗۧۚ۫۫ۖۘۙۖۡۘۥۜ۬ۨ۬ۖ۬۫ۨۘ۬۟ۘۘ۬ۘۧۘۤۢ۫";
                                break;
                        }
                    }
                    break;
                case 419240844:
                    str = "ۘۨۥۡۘۥۘ۠۬ۦۘۙۚۡۜ۫ۛۧۘۧۨۘۡۖۜۦۘۛ۠ۧۤۤۚۙ۠۠ۥۘۘۛ۠ۡۘ۬ۘۥۘۨ۟ۖۥۨۨ۠ۙۖۘ۠ۙۨ";
                    i2 = i3;
                    break;
                case 826048119:
                    str = "ۘۗۡ۟ۦۘۜۨۗ۬۟ۡۘۖۦۡۗ۫ۚۖ۬ۨۘۚۖۡۜۢۘۡۗۢۙۤ۬ۤۗۤ۟ۡۤۦۘ۬ۘۥۛۤۤ۫ۙ۟۫ۨۚ";
                    textView = this.o0ooOoO;
                    break;
                case 1070813400:
                    return;
                case 1124238963:
                    str = "۫ۛۥ۠ۖۘۘۜۢۗۥ۟ۘۘۨۢۥۙۧ۠ۡۧۥۘۨۤ۬ۜۛۦۜۤۥۘ";
                    break;
            }
        }
    }

    private void OooOO0o(String str) {
        String str2 = "ۡۢ۠ۖ۠ۥۤۘۘۘۗ۫ۥۘۥ۫ۘۘۙۛۦۘۧۖۥ۬ۚۙۥۜۜ۟ۧۨۗۛۘۘۧ۫۫ۜۢۥۘۢۦۤۚۜۨۘۧۢۧ";
        IMResultInfo iMResultInfo = null;
        Script scriptOooO0oO = null;
        while (true) {
            switch ((((str2.hashCode() ^ 616) ^ 494) ^ UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE) ^ (-682964820)) {
                case -1297011502:
                    str2 = "ۥۧۚۙ۫ۜۘۨۥ۬ۙۜۛۚۥۘۧۢ۠ۦۗۡۜ۫۟ۗۦۘۘ۟ۦۥۘ۫ۡۨ۫ۢۦ۬۬ۨۘۧ۠ۜۘ";
                    break;
                case -1013562114:
                    str2 = "۫ۘۘۘ۫۬ۡ۠ۙۨۧۚ۟ۜ۬ۘۡۡ۬ۜۛۖۛ۠ۨۚ۟ۡۘۨۜۚۡ۫ۨۘ۠۫ۨ";
                    break;
                case -804576548:
                    dh.OooOOoo(this, iMResultInfo, getString(R.string.elfin_appid), scriptOooO0oO.getId(), gc.OooO0OO().OooO0O0.DeviceId, ii.OooO0oo());
                    str2 = "ۨ۟ۨۘۢۧۛۚۧ۬ۧۧۘۘۖۧۖۙۧۢۗۖۚۨۙ۬۠ۖۦۦۤۗ";
                    break;
                case -721278221:
                    iMResultInfo = new IMResultInfo();
                    str2 = "ۛۤۥۘۗ۠ۢۗ۠ۗۙۖۖۘۨۧۘۙ۫ۜۘ۫ۧ۠ۧ۟ۦۘۙ۠ۖۨۚ۬";
                    break;
                case 415529161:
                    iMResultInfo.IMToken = str;
                    str2 = "ۥ۬ۨ۟ۚۘۘۢۧۘۚۗۧ۠۠۫ۖ۟ۦۢۧۛ۬ۗۦۡۙۨۙ۟ۨۘۛ۫ۧۨۤۘۘ";
                    break;
                case 764875161:
                    str2 = "۠ۡۚۜ۠ۥۦۨ۫۟ۡۧۘۜۖۖ۠ۜۡۨۢۙۗۗۖۧۖ۠ۢۙۧۧۤۢۛ۬ۙۜۦۛۨۥ";
                    scriptOooO0oO = b7.OooO0Oo().OooO0oO();
                    break;
                case 1568139523:
                    return;
            }
        }
    }

    private void OooOOO0() {
        String str = "ۙ۠ۙۨۚۜۗۙۢۤۛۘۤۤۚۛۛۜۘۡ۬ۘۘ۠ۗۦۘ۟ۘ۠۫ۛۖۗ۠ۨۘۙۧۙۨۡ۬ۢۡۡۤۘ۫ۧۨۤۡۙۥۥۘ۬";
        StringBuilder sb = null;
        UpdateRequestInfo updateRequestInfo = null;
        String strOooOO0O = null;
        String strOooO0Oo = null;
        while (true) {
            switch ((((str.hashCode() ^ 265) ^ 322) ^ 872) ^ 2058810317) {
                case -1760559242:
                    updateRequestInfo.ScriptVersion = Integer.parseInt(strOooO0Oo);
                    str = "ۜۗۦۘ۠ۙ۬ۜۢۙۥ۬ۥۜ۠ۢۗۙۨۘۨۢ۫ۘ۟ۚۘۦۜۘۦۚۖۘ۠ۗۦۧۚۙۘۡۡۡۧۖۘ";
                    break;
                case -1274094600:
                    kc.OooOo00().OooOo0O(new OooO0OO(this)).OooOo(true, this, updateRequestInfo);
                    str = "۫۟ۖ۬ۨۤۖۢۥۘۡۨۨۘۤۘۢۜۧۡۨ۠۫ۧ۫ۨۘۘۨۨۥ۫ۦ۟ۘ۬ۖۖ۟ۡۢۙۥۘۘۧۗۜۗۨۙۚۖۘ۬۠۠";
                    break;
                case -1272111262:
                    str = "۫ۗۡۡۛۤۚ۫ۡۘ۠۠ۤۡۚۥۘ۫ۖۜ۬ۤ۟ۡۗ۟ۨۦۡۨ۬ۤ";
                    strOooOO0O = a4.OooOO0O(this);
                    break;
                case -1185004511:
                case -210839847:
                case 2123967518:
                    return;
                case -1138442477:
                    str = "ۥ۫ۡۘ۬۫ۜۨۢۘۜۙ۠ۦۤۖۛۤ۫ۥ۫ۥۡۦۘۢ۠ۡۘۙۥۡۘ";
                    updateRequestInfo = new UpdateRequestInfo();
                    break;
                case -671870673:
                    sb.append(updateRequestInfo.ScriptVersion);
                    str = "ۜ۬ۥۚۘۤۡۥۗۛۜۧۜ۠ۡۖۗۤۜۥۢۘۡ۟۬ۧ۠ۙ۠ۥۙ۫۫ۧۨ";
                    break;
                case -538891390:
                    String str2 = "ۚۜۗۜۖۥۗۚۢۢۨۥۘۦ۬ۨۘۗۘۘۘۗۦۙ۬ۧۦۘۦۛۡۧۗۦۘۗۢۡۡۢۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1882139031) {
                            case -28921943:
                                String str3 = "۠۟ۦۘۧۜۙ۬ۘۨۥۦۥۦ۟ۥۘۙ۠ۖۘۧۥۡۚۚۘۘۢۚ۫ۛۙۡۤۜۡۘۦۤ۟";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1270182918)) {
                                        case -966399161:
                                            str3 = "ۖۦۦۤۛ۬۟ۘۥۘۢۨۨۡۚۘۘۗۘۢۚ۫ۡ۬ۖۗۤۖ۟ۡۙۡ۬ۛۚۘ۬ۥۤۡۗۢ۟ۦۨ۫ۦۤۡۘ";
                                            break;
                                        case -484398219:
                                            str3 = !t4.OooOO0(this) ? "ۦۘ۫ۥۛۤۨۧۘۢۙۢۜ۫ۖۦۙۦۘ۟ۛۛۘۢۦۘ۫ۚۙۨۥۘۢۜۨۘۢۦۢۜ۫ۖۗۤۢۘ۠ۦ۟۟ۜۘۜۖ۫ۖۧ۠" : "۠ۧۖۜۧۤۛ۟ۗۗۛۨۧۖۧۘۖۤۛۛۙۨۛۤۛۘ۟ۜۘۗ۬ۚۨۛ۬ۜۡۦۥۦۙۘۚۧۗۗۡۘ۫ۧۦۘ";
                                            break;
                                        case -361858163:
                                            str2 = "۫ۚۥۜۦۧۘ۠ۢۖۘۛ۟ۦۖۖۖۘۡ۬ۚۡۨ۟ۜۛ۠ۧۜۦ۟ۜۘ۬ۙۦ۟ۥۡۘۛۖۛۢۤۦۙۘۘۘۦۜۖ";
                                            break;
                                        case 1165801272:
                                            str2 = "ۛۥۤ۠ۡۨۘۜۜۥۜ۫ۥۘۘۦۦۜۥۥۘ۬ۘۦ۬ۗۛۘۘ۠۫ۦۘۖ۟ۗۜۛۘ";
                                            break;
                                    }
                                }
                                break;
                            case 897560579:
                                str = "ۖ۟۫ۚۘۡۘۖۚۥۙۢۨۘ۫ۜۜۘۥۗۛۖۢ۠ۥۘۨۧۖۘۤۨۘ۫۟ۜۘۡۚۢۨۘۘۘ۬ۜۡۘ";
                                continue;
                            case 1337000013:
                                str2 = "ۤۥۖۚ۟ۤۙۧۖۗۤ۬ۦۡۦۘۧۙۛۥۚۜۨۗۤۙۦۖۘۙۜۧ۠ۘۦۚۡۜۨۢۚۡۜۦۘۤ۬ۨۘۦۨۜۘۗۘۤۙ۬ۚ";
                                break;
                            case 1475884801:
                                str = "۫۠ۚۜۗۘۘۙۦۖۘۗۢۜۤۨۡۛۛۗۨ۬۫ۙۥۖۡۘۧۘۡۢۚۤۦ۫";
                                continue;
                        }
                    }
                    break;
                case -294821593:
                    sb.append(updateRequestInfo.ScriptId);
                    str = "۠۫۫ۨ۫ۨۛۤۖۖۘۨۡۛۛۚ۠ۤۥۙۧۘۖۘۦۗۜۘۡ۬ۗ";
                    break;
                case -218591550:
                    sb.append("updateVersionRequest --> 1 ScriptId=");
                    str = "ۘۨۜۙ۫ۨۘ۠ۙۥۙۥۥۘ۫ۦۡۘۥۖ۠ۢۚۗۧۚۜۧ۠۬ۧ۠ۘ۟۠ۤۜ۫ۧۥۧۘۨۜۘۧۜۘۙۥ۟";
                    break;
                case -90197092:
                    sb.append(",ScriptVersion=");
                    str = "ۚۦۧۘۛۥ۠ۚ۠ۥۘۖۚۖۘ۠ۖۜ۠ۦۥۖ۬۠ۙۢۡۧۗۖۘۥۜۦۨۜ۠ۢ۬ۙ";
                    break;
                case 416738041:
                    String str4 = "۬ۙ۟۠ۡۤۤ۠ۨ۠ۚۧۧۨۙۘ۫ۤۦۗۡۘۥ۟ۘۘۨۨۧۢۢۤۜ۬ۡ۬۟ۡۙۛۥۙۨۡۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1382237402)) {
                            case -1822255872:
                                str = "ۖۗۡ۟ۥۛۥۤۦۢۢۘۖۡۨۙۦۖۥۥۡۘۗ۫ۧۢۤۖۘۡۧ۠ۜۚۖۧۛۖۧۨۦۘ۟ۢ";
                                continue;
                            case -1156463772:
                                String str5 = "ۙۛۘۘۗۢۤۦۦۜۘۢ۫ۥۘ۟ۛۡۘۨۚۢۤۚۖۘۚ۠ۢۡۛۤۜۚۧ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1284395061)) {
                                        case -520722274:
                                            str4 = "۫۬ۖۜۙۢ۬ۖۢۦۗۜۘ۬ۤۦۘۖۥ۟ۡۗ۫ۡۛۘۨ۟ۥۘۧۙۥۘۥ۠ۧۗۖۜۘۘ۠ۖۙۥۜۘۡۦۜۘ۟ۡۘ۬ۜ۬۫ۖۥۘ";
                                            break;
                                        case -490217250:
                                            str5 = i4.OooO00o().OooO0O0() ? "ۜۛۤۢۙۘۥۗۢۗۤۡ۠ۤۚۧۖۚۦۥۘۢۧۙۙۛۦۘۧۙۜۘۤۦۡۗۦ۠ۖۡۤ۫ۤۘۘۤۛۥۘۙۧۖۘ" : "ۨۘۦۡۘۜۘ۫ۚۧ۬ۗ۠ۥۗۖۘۗۡۚۜۖۢۙۖ۬ۤۨ۟ۙ۫ۛۛۤۜۘۨۘۡۢۖۗۨۙ";
                                            break;
                                        case 940468931:
                                            str5 = "ۗۥۘ۬ۙۢۤۙۘۘۥ۠ۛۗۦۖۢۜ۫ۙ۟ۧۖۛۨۘ۟ۦۛۗ۠ۦۘۖۜۖۙۖ۟";
                                            break;
                                        case 2078670680:
                                            str4 = "ۙۨۖۨۧۧۙۢۡۦ۬ۨۖۢۨۘۢۢۨۘۛۘۡۤۥۖۜ۬۠ۧۥ۬";
                                            break;
                                    }
                                }
                                break;
                            case 93510715:
                                str4 = "۫ۘۘۘۚۢۡۘۛ۟ۜۜ۠ۥۦ۫۠ۘۜۘۡ۫ۡۡۚۜۘ۟ۦۡۘۜۘۤۤۥۖۛۤۨۘۛ۬ۥۘۛۨ";
                                break;
                            case 596537973:
                                str = "ۦۢ۫۫ۧ۟ۛۨۛۛۦۡۧۘۙۦۡۥۥۥۧۘۡ۫ۨۘۘۨۡۡۘۦ۫۟ۡۘۦۢۤۦۢۢۛۤۨ";
                                continue;
                        }
                    }
                    break;
                case 647645477:
                    c5.OooO0O0(getApplicationContext(), R.string.network_off);
                    str = "ۜۚۦۨۛ۫ۛ۠ۨ۬۫ۨۚۧۨۘۥ۫ۥۙۗ۫۟ۥۜۘ۟ۦ۟ۚۙ۫";
                    break;
                case 776213701:
                    updateRequestInfo.DeviceName = strOooOO0O;
                    str = "ۧۨۖۡۛۧ۠ۚۧۗۦۚۘۦۘۘ۟ۡ۫۫۫ۜ۟۟۠ۗۤۢۙۦۙۛ۬ۦۘۢۤ۠ۦ۫ۚۦۛۡۨۙ۬ۚۚۖۤۡۘ۟ۡۨ";
                    break;
                case 1296090805:
                    updateRequestInfo.ScriptId = b7.OooO0Oo().OooO0oO().getId();
                    str = "ۗ۠ۘۡۨۡۘۡۧۧۨۘۧۡۚۦ۠ۙۨۗ۬ۜ۫ۙۙۤۜۘۜۡ۠۟ۡۗۙۗۛ۟ۛۢۗۗۖۙۤ۫ۦۜۘۥۗ۫ۨۨۦ";
                    break;
                case 1329225707:
                    sb.append(updateRequestInfo.DeviceName);
                    str = "۟ۙ۟۟ۗۡۘ۬ۛۥۦۥۥۖۙ۟۫ۚۢۦۢۤۗۨۖۘۥۖۧۚۨۨ۫ۤۤۡۚ۟۬ۚۚۤۘ۟۠ۦۘۥ۠ۡ";
                    break;
                case 1500272902:
                    sb = new StringBuilder();
                    str = "۬ۦۦۛۨۚۘۛ۬ۚ۠ۛ۟۬ۗۨ۫۬ۡۘ۠۟ۜۘۛ۬ۘۛۥۥۘۘۨۖۘۧۖۦۛۛۢۡۚ۟ۚۙۨ۟ۘۗ۟ۛۘۘۤۚۖ";
                    break;
                case 1669366067:
                    sb.append(",DeviceName=");
                    str = "ۗۧۦۙ۫ۖۘۚۧۦۘۗۢۖۜۡۘۗۗۨ۟ۖۥۘۛۤۥۘ۬ۢۧۘۗۛ۬ۨۖۜ۬ۧ";
                    break;
                case 1871250535:
                    str = "ۙ۟ۚۜ۠ۡۘ۟ۜ۟ۤۤ۬ۧۙۘۘۖۗۙ۠ۤۘ۠ۡۜۚۦ۠ۨۛۚۢۡۘۘۚ۫";
                    break;
                case 2008333396:
                    sb.toString();
                    str = "ۨۚ۠ۛۜ۟۫ۚ۠ۥۙۜۘۤۤ۠ۢۦ۬۟ۥ۬ۡۘۥۙۨ۟ۗۜ۟۫ۗۚ۟ۨۢ";
                    break;
                case 2146837561:
                    str = "ۜۡ۟ۛۡ۫ۚۧۙ۫ۚۘۙ۠ۡۨۖۘ۠ۧ۟۬ۙۢۥۤۨ۫ۢۢۨۙ۠ۥۢۘۜۢۘ۟ۨۧ۠ۘۖ۬ۗۢ۫۠ۜۘۦۧۦۘ";
                    strOooO0Oo = z8.OooO0Oo(this, f6.OooO0oo);
                    break;
            }
        }
    }

    private void initListener() {
        String str = "ۙۡۢ۫ۨۡ۬ۚۜۦۘ۠ۧۤ۬۟ۡۧۘۛۢ۟ۦ۬ۦ۠ۥۨۘۧۗۘۤۙۦۗۨۢۥۖۜۨ۬";
        int iIndexOf = 0;
        StringBuilder sb = null;
        List listAsList = null;
        int iOooO0OO = 0;
        ArrayAdapter arrayAdapter = null;
        while (true) {
            switch ((((str.hashCode() ^ 76) ^ 865) ^ 951) ^ (-1131616657)) {
                case -1802183804:
                    this.Oooooo0.setOnCheckedChangeListener(this);
                    str = "ۜۘۧ۬ۨۢۦۡۖۘۗۗ۟ۤ۫ۨۘۨۨۧۘۜۨۤ۠۫ۜۧ۠۬۠۟ۨۘۦۨ۠ۨ۟ۜۘ";
                    break;
                case -1636726126:
                    this.o0ooOOo.setOnClickListener(this);
                    str = "۫ۚۛۖۚۙۧۖۦۘ۠ۖۜۘۤۚۡۘۜۘۘۘ۠ۤۡ۫ۗۡۘۦۖۧۗۗۘۘ۟۬۫ۚ۠ۙ";
                    break;
                case -1624728517:
                    this.o00O0O.setOnCheckedChangeListener(this);
                    str = "ۛۘ۟۟۫ۦۘ۠ۗۦۘ۫ۚۧۘۧۜۘ۬ۖۡ۫۫ۨۜۙۧۢ۟۬ۛۜۧۥۨۖ۠۟ۖۘۙۜۛۢۘۧۘ";
                    break;
                case -1581676907:
                    this.ooOO.setOnItemSelectedListener(new OooO00o(this));
                    str = "ۜۦ۠ۧ۬ۥۙۧۗۧۨ۟ۧۢۖۛ۬ۙۚۡۘ۫۬۠ۚۡۡۘۖۜۖۘۜۨ۠ۡۖۦۘ";
                    break;
                case -1174840759:
                    str = "۬ۦۜۡۧۧۡۦ۟ۤۤ۫۫ۛۖۧۚۥ۬۠ۖ۬ۤۨۘ۬ۚ۠ۜۡۨۚۤۙۧۢۥۖۨۦۘۦ۟ۨۘۙۘۛۨۢ۬ۖۗۜۤ۠۠";
                    break;
                case -1159635703:
                    this.ooOO.setAdapter((SpinnerAdapter) arrayAdapter);
                    str = "ۘۙۜۘۤۛۖۘۡۡۜۗۚۨۛۙ۠ۖۦۘۘ۫ۙۢۨۡۖۘۚۧۖ۠ۙۦ";
                    break;
                case -1140429419:
                    this.o00Ooo.setOnCheckedChangeListener(this);
                    str = "ۙۤۡۘ۟ۚۦۘۢۥۘۜۧۘۘۘ۟ۡۙۘۘۦۤۘۘۥ۟ۖۘۗ۫ۧۘۨ۟ۥۖۜۢۧۨۘۛۦۖ۬ۦ۬ۧۧ۠ۗۨۦۘ";
                    break;
                case -993188813:
                    this.OooooO0.setOnCheckedChangeListener(this);
                    str = "۠ۘ۫ۘۧۢۚ۟ۗۤۛ۟ۜۧ۠ۨۤ۠۫ۦۜۧۛۖۙ۫ۖۗۛۧۜۚۛۧۖۖۧۤۚۘۨۡۘۘ۟ۦ۠ۦ۟ۚۗ۟ۗ";
                    break;
                case -828959586:
                    return;
                case -740387080:
                    this.o0OO00O.setOnClickListener(this);
                    str = "ۘۙۘۘۙۛ۬ۡۢۦ۠ۦ۫ۨۢ۟۫ۘۦۘۢۢۦۢۧۗ۠ۡ۠۠ۙ۫ۧۥۛۨۤۦۡ۫ۛ";
                    break;
                case -634013818:
                    this.ooOO.setSelection(iIndexOf);
                    str = "۫۟ۦۚۖ۫ۢۘۡۡۖۛۜۘۦۘۧ۠ۖ۫۟ۦۘۤۨۨۘۦۗ۫ۘۢۜۘۗ۬ۘۡۘ";
                    break;
                case -219658620:
                    this.o0Oo0oo.setOnClickListener(this);
                    str = "ۡۢۜۘۜۚۖۘ۠ۛۗۗۥ۬ۤۥۜ۟ۗۨۚۦۛۜۨ۫ۗۢۘۘۡۨۢ۠۬ۖۥۗۨۘۜۤۛۦۥۛ۟ۦ۟ۧۢۗ";
                    break;
                case -180545292:
                    this.o00Oo0.setOnCheckedChangeListener(this);
                    str = "۫ۤ۠ۨۤۚ۟ۚ۠ۦۦ۠ۘۜۤۖ۠ۜۚۖ۟ۢۦۘ۠ۧۖۛ۫ۖۥۘۧۘۙۢۙ";
                    break;
                case 3672639:
                    str = "ۚۖۙۥ۬ۡۘۡۦۧۛۤۗۦۙۖ۟ۧۗۙۗۧۗۜۖۘ۫ۨۥ۟ۦۤۨۧۘ۫ۘ۟۠ۥۚۙۙۜۘۤۡۗ۫ۡۦ";
                    arrayAdapter = new ArrayAdapter(this, R.layout.my_spinner, this.oo0o0Oo);
                    break;
                case 22922800:
                    this.o0OoOo0.setOnCheckedChangeListener(this);
                    str = "ۦۜۘۜ۠ۡۘۘ۬ۥ۟ۥۡۘۨۛۛۢ۬ۚۧۦۡۘۗۨۧۦ۠ۙۛۨۨۘ";
                    break;
                case 23395069:
                    this.o0ooOO0.setOnClickListener(this);
                    str = "ۘۜۡۘ۬ۨۨۚۚۛۧ۫ۖۘۘۡۢۛ۠ۚۤۧۖۘۡۙۘۚۜ۬۟ۚۦ۫ۜۖۡۖۡۘ۠ۢ۬ۙۦ۫ۥۗۘۘ";
                    break;
                case 190697592:
                    str = "ۧ۬ۗ۬ۧۦۘ۬ۤۜۖ۬۫ۡۤۗۜۥۦۘۧۜۜ۬۬ۢ۟۫۬ۖۙ۬۠ۧۥۘۡۘۥۘۜۗۜۘۗۡۗ";
                    listAsList = Arrays.asList(this.oo0o0Oo);
                    break;
                case 412277314:
                    this.Oooooo.setOnCheckedChangeListener(this);
                    str = "۠۫ۡۘۧۨۗۗۖۤ۬ۗۜۘ۬ۘۘۘۥۦۘۘۧۤۛۤ۫ۡۦۡۡۚۛۘ۠ۘۛۥ۠ۦۘۢۧۡۦۗ";
                    break;
                case 547815374:
                    str = "۬ۙۖۘۗۙۚ۬۠ۧۨ۠ۡ۟ۡۜۗۚۡۘۗۢۦۨۧۜۜۡۨۘۗۦۨ";
                    iOooO0OO = x4.OooO0O0().OooO0OO(f6.OooOo0o, 5);
                    break;
                case 623200464:
                    sb.append("秒");
                    str = "ۘۛۦۘۗۧۜۘۛۜۛۢۘۘ۠ۦۦ۬ۛۢۦۖۖۥۙ۬ۘ۠ۢۗۨ۟ۤۥۚۙۢ۠ۦۘۘۘۨۥۘۨۚۥ۠ۤۧۜۚۨۘ۬ۚۛ";
                    break;
                case 626791194:
                    str = "ۖۖۧۙۖۘۘۛۘۧۘ۫ۙۛۤۨۜۗ۬ۡ۬ۗۖۚۖۧۤۨۚۚۨۘ";
                    sb = new StringBuilder();
                    break;
                case 1166007776:
                    this.o00oO0o.setOnClickListener(this);
                    str = "ۜۧۢۛ۫۠ۡۗۛ۬ۛ۬۟ۡۥۘ۫ۦۖۘۨۥۡ۠ۤۚۘۡۤ۠۟ۥۘۘ۫ۗۜۢۡۘۥۤۦۤۢ۟";
                    break;
                case 1336912145:
                    this.OooooOO.setOnCheckedChangeListener(this);
                    str = "ۨۜ۫ۚ۫۫ۜۧۦۘ۟۟ۖۘۜۥۡۘۖۗۘ۫ۖ۫ۧ۬ۡۖۧۖۘ۬ۨ۟ۙۨۡۘۚ۠ۡ۬ۖۘۚۘ۫ۖۛ۠۟ۗۗۨۦۛ۟";
                    break;
                case 1490590426:
                    this.OoooooO.setOnCheckedChangeListener(this);
                    str = "ۘ۟ۗۜ۠ۥۙۨۘ۠ۜۜۘ۬ۛۛ۬ۗۖۘۜۚۤۢۦۨۘۨۤ۠ۡۥۡۘ";
                    break;
                case 1527118062:
                    this.OooooOo.setOnCheckedChangeListener(this);
                    str = "ۦ۠ۢۦۖۨۖۨ۫ۧۡۦۜ۬ۢۘۘۧ۬ۛۥۨۛۖۖۨۛۢۖۙۦۦۨۘ۬ۗۥۡۥۘۘ۟ۢۡ";
                    break;
                case 1684530742:
                    sb.append(iOooO0OO);
                    str = "ۢۨۧۘۡۗۖۘۜۚۦۧۖۖۘ۟۫ۢۜۤۗۥۧۨۘۧۨۚۨۚۤۢۢۥۘۧۚۦۙۚۘ۫ۨۘۦ۫۠";
                    break;
                case 1779821398:
                    this.o00oO0O.setOnClickListener(this);
                    str = "ۢۖۨۘۘۥۦۘ۫ۧ۟ۡ۫ۜۜۦۘ۠ۖۡۘۛۙۡۗۥۗۗ۫ۚۘۙۨۘ";
                    break;
                case 1789477975:
                    this.Ooooooo.setOnCheckedChangeListener(this);
                    str = "ۖ۠۫۬ۛ۫۠ۖۧۘۗۘۧ۠ۛۥۙ۟ۜۖۤۡۘۤ۫ۚۢۡ۠۠ۨۨۘ۬ۡۢۨۥۖۘۜ۟ۛ۠۠۬۠ۨۘۘ۟ۧۗۥۨ۬ۜۚ";
                    break;
                case 2125997811:
                    iIndexOf = listAsList.indexOf(sb.toString());
                    str = "۬ۖۦۗۘۡۘۚۨۖۘۥۖۘۧ۬ۘۚۜۚ۠ۙ۫ۛۗۡۥۡۘۡۙۙۥۖۘۥۜۧۘ۬ۗ۠۬۬ۥۙۛۥۧۚۜۘ";
                    break;
            }
        }
    }

    private void initView() {
        String strOooOO0O = null;
        String str = "ۨۚۡۡ۟ۜۤۘۜ۫ۢۨۢۛۛۖ۠۠ۚۗۡۨ۟ۡۘۘۡۛۘۡ۫";
        while (true) {
            switch ((((str.hashCode() ^ 113) ^ 413) ^ 412) ^ 161042800) {
                case -2118391348:
                    this.o0OoOo0 = (Switch) findViewById(R.id.switch_setting_automatically_run_script);
                    str = "ۘۥۨۦ۫ۢۜۛۨۜۛ۠ۜۚۖۨۦۥۘۛۢ۬ۛ۟ۛۙۢۖۘۧ۬ۡۘۘۢۜۘۡۘۚۜۧۘۡۦ۟ۜۤ۟ۡ۬ۡۘۜ۬۠ۙۛ۫";
                    break;
                case -2110053254:
                    this.o00Oo0 = (Switch) findViewById(R.id.switch_setting_collect_logcat);
                    str = "ۥۘۚۢۜۧۘ۬ۗۡۘۙۡۢۥ۠ۚۢۜۢۙ۠۠ۡۚ۫ۗۡۦۨ۟ۦ";
                    break;
                case -2083927647:
                    this.o0OOO0o = (TextView) findViewById(R.id.tv_device_name);
                    str = "ۘۡۖۘۘۢۚۖۤۦۘۙۜۜۘۛۥۨۘۦۤ۫ۘۥۙۤۧۥۘ۠ۚۦۨۢۧۚۛ۟ۙ۠ۘ۠۫ۨۚۤۦۨ۟ۧۡۜۧۘ";
                    break;
                case -1603675216:
                    this.ooOO = (Spinner) findViewById(R.id.sp_run_script_countdown);
                    str = "ۥۨۚۙۤ۬ۥ۫ۜۚۧۨۚۖۗۘۛ۠ۛۗۦۘ۟ۜۖۘۤ۠ۧۜۗۢۤۙ۬ۗۚۚ";
                    break;
                case -1476262657:
                    initListener();
                    str = "ۖۦ۟۟ۘۘۘۖۛۤ۟۠ۡۙۘۘۘۧۡۨۤ۫ۙۢۦۘۘۛۘۨۘۗۢ۬";
                    break;
                case -1439093780:
                    this.o0Oo0oo.setVisibility(8);
                    str = "۠ۖۘ۠ۜۨۘ۠ۦۘۜ۠ۡۥۘۨۘۛۥۥۘ۟ۧۤۥۖۜۨۨۖۘ۠ۖۛۙۥۜۦۘۙۥۧۘ۠ۧۤۗۢۨ۠۠ۘ";
                    break;
                case -1228253785:
                    OooO();
                    str = "ۖۡۤۦۗۧۥۘ۠ۤۡۘۘ۬ۖ۟ۘۤۥۜۘۘۘۛۘۘ۟ۡۤۦۢ۬ۤ۟ۜۨۗۙۦۙۘۘۦۛۖۘۤۗۜۘۗۦۦۘ";
                    break;
                case -1217122996:
                    this.OoooooO = (Switch) findViewById(R.id.swtich_setting_vibration);
                    str = "ۙ۟۬ۡ۟ۜۧۘ۬ۢۛۤ۟ۖۢۗ۟ۤۖۜ۬ۛۗۘ۫ۘۥۙۖۘۚۦ۬ۘۖ۟";
                    break;
                case -1100038333:
                    OooOO0O();
                    str = "ۧۥۡ۠ۖۚۜۡۙۙۨۘۙ۟ۤۨۖ۫۟ۥۘۥۖۛۢۛۢۨۡۚ۫۬ۖۨۧۙۛ۟ۢ۫ۢۜۘ";
                    break;
                case -771648853:
                    this.o0ooOO0 = (Button) findViewById(R.id.setting_button_exitapp);
                    str = "ۚ۫ۦۘ۠ۧۥۤۚۛ۟ۧ۫ۤۚۛۜ۬۟ۨۖۢۜۜۥۨۦۚ۟ۛۦ۠۟ۖۗۨۤۥۡۘۙ۠ۘۘۤۨۖۘۛ۟ۥۘۜ۫ۜۘۗۛ";
                    break;
                case -523183676:
                    this.o0OO00O.setVisibility(8);
                    str = "ۜۥۙۖۗۛۡۙۡۚۢۜۤۦۨۤۡ۫ۜۥۧۙۡۡۤ۬ۥۤۖۛۘ۟ۚۚۡۡۗۗۤۙ۬";
                    break;
                case -465005532:
                    this.o0OOO0o.setText(strOooOO0O);
                    str = "۠۠ۥۘۜۖۦۢۘۙۛ۟ۦ۬ۥۗۦۤۘۘ۬۠ۤۚۖۚ۟۠ۤۧۚ۬ۙۘۦۢۦۡۤۨۧ۫۠ۜۜۢ۬ۗۨۘ";
                    break;
                case -374180596:
                    this.OooooO0 = (Switch) findViewById(R.id.swtich_setting_call_stop);
                    str = "۫ۙۜۘۘۘۚۨ۟ۦ۠۫ۧۖۘۗ۠ۜۖۜۚۥۘۛۚۜۨۚۧۚۢ۬";
                    break;
                case -103655121:
                    this.o0Oo0oo = (LinearLayout) findViewById(R.id.ll_device_name);
                    str = "ۨۙۢۨ۠ۡۘۦۥ۠ۢۚۧۨۖۨۘۛ۟۟ۤۧۜۛۛۖۚۗۦۘ۠ۢ۬ۚۥۜۘۢۤۙ";
                    break;
                case -75547183:
                    this.o0ooOOo = (Button) findViewById(R.id.button_setting_feedback);
                    str = "ۜۧۛۨۥۧۘۨۤۤ۠ۛ۟ۦۨۢۚ۬ۚۢۖۗۡۤۨۘۦۛۤ۬ۢ۟ۙۖۥۧۧۥۘ";
                    break;
                case 22972118:
                    str = "ۘۙ۬ۥۢ۠ۜۢۨ۫ۦۥ۬ۥۗۜۢ۠۟۫ۥ۠ۥۘۡۤۖۘۥۜۡۢ۬ۦۘۤۙۜۨۢۜۘۦۥۢ";
                    break;
                case 502120083:
                    this.Ooooooo = (Switch) findViewById(R.id.switch_setting_flash_back_auto_restart);
                    str = "ۨۚ۬۟۠ۚۦ۠ۦۘ۠ۛۥۜۦۦۘۧۚۙ۬ۙ۠۟ۨۡۘۙۤۚ۠ۖۖۡۘۥۘۦ۬ۘۚ۫۟۫ۜ۟۟ۚۘۘۧ۫۠۟ۜۘۨ۫";
                    break;
                case 647557185:
                    this.o0OO00O = (LinearLayout) findViewById(R.id.ll_project_number);
                    str = "ۜۖۥۗ۫ۙۥ۬ۥۡۢۢ۬ۨۤۙۖۘۗۡۦۖۖۚ۟۬ۛۘۦ۬";
                    break;
                case 684817487:
                    this.o00oO0O = (Button) findViewById(R.id.setting_button_update);
                    str = "ۦ۟۟ۧۡۛۧۙۚ۠ۗۙ۟۫ۚۧۧۙۗۗ۬ۛۖۘۗۘۦۢ۫۠ۡۧۦۡ۬ۖۘ۟ۚۨۘۖۥۦ۫ۜۡۘۥۗ۬ۛۛۨۥۜۜۘ";
                    break;
                case 711771373:
                    this.o00O0O = (Switch) findViewById(R.id.setting_swtich_open_run);
                    str = "ۥ۟ۦۘۛۜۥۨۥۧۨۦ۫ۖۛۛۗ۬ۚۦۘ۬ۖ۫۬ۥ۟ۙ۫ۤۚۗۜۖۛۚۙۗۜۜۚۨۤۜۧۘۦ۟ۙۖۧۙ۬۠۬";
                    break;
                case 783226385:
                    OooOO0();
                    str = "ۧۘۡۙۛۡۙ۬ۙۛۚۨ۠ۨۧۛۨۖ۠ۡ۫ۜۨۦۥۦۨۘۨۧۛۙۡ۬ۤ۠۟ۚۖۘ۟ۦۥ۬ۘۨۘۤۤۥۘۗ۠ۚ۠۫ۙ";
                    break;
                case 805796027:
                    this.o00Ooo = (Switch) findViewById(R.id.switch_setting_error_dialog);
                    str = "۠ۨۘ۟ۢ۟ۢۘۤۙۚۜۘۢۗۥۧۜ۟ۗۛۚۡۛۧۚۚۗۧۨۘ۠ۛۚۗۨۧۘۜۖۘۘۡۡ";
                    break;
                case 872486201:
                    this.OooooOO = (Switch) findViewById(R.id.swtich_setting_volume_key_ctrl);
                    str = "ۧۙۡۘۨۨ۬۟ۧۢۧۨۤۗۡۖۘۗۨۢۛۥۗۦۤۧۜ۫ۨۦۖۡۦۡۜۢۗۜ۫ۨۛۢۢۚۧۤۧۤۡۘ";
                    break;
                case 907667005:
                    return;
                case 1106028596:
                    this.o00o0O.setVisibility(0);
                    str = "ۘۨۚۤۢۚۜۨۛ۫ۗۧ۫ۢۨۘۜۛۧ۠ۖۖۘ۟۫ۖۦۤ۠ۢۦۧۘۗ۠ۖۛۛۡۘ";
                    break;
                case 1106908478:
                    this.o0ooOoO = (TextView) findViewById(R.id.tv_project_number);
                    str = "ۧۢۧ۟۠ۗ۫۫ۜۘۢۡۥۘۦۤ۫۟ۘۖۘ۟ۗۨ۬ۨۡۘۦۦۘ۬ۛ۬ۚۤۨۢ۟ۤ";
                    break;
                case 1364592790:
                    strOooOO0O = a4.OooOO0O(this);
                    str = "ۧۖۥۛ۫ۡۘۘ۫۠ۖۡۧۤۦۖ۠ۜۨۤۦۦۘۗۚۤۧۨۗۨۜ۫ۛۛۚۘۤۜۜۘۘۧ۠۫ۡۦۧۛ۬ۗۨۨۘۦۜۘ";
                    break;
                case 1379481233:
                    this.Oooooo = (Switch) findViewById(R.id.swtich_setting_floatview_ctrl);
                    str = "ۢۗۜ۫۟ۥۘۦۡۥۘۢۨۗۙۚۚ۫ۛۘۜۖۙۤۖۦۖۘۡۛۡۘ";
                    break;
                case 1429914123:
                    this.o00oO0o = (Button) findViewById(R.id.btn_setting_scriptlog);
                    str = "ۥۦ۟ۛۧۜۤۧۨ۟۫ۙۗۗۖۡ۟ۡۘۧۙ۬ۡۢۦۘۦۢۜۘۖۚۡۘ";
                    break;
                case 1615324160:
                    this.OooooOo = (Switch) findViewById(R.id.swtich_setting_script_pause_and_resume);
                    str = "ۖ۬ۧۛۥۜۜۢۢۢۜۨۘۜۢۙۥۨۘۘۡۘۘۘ۫۠ۥ۟ۦۥ۬ۚۜۘۦ۠۫ۛۙۦۡۜۥۢۡۜۖۤۡۡۛۥ۬ۛۙۙ۠ۡ";
                    break;
                case 1753170644:
                    this.o00o0O = (LinearLayout) findViewById(R.id.layout_boot_script);
                    str = "ۗ۠ۙۜۖۖۜۖۘۨ۟ۙۖۘۜۨ۫ۖۨۚۡۘۡۡۘۦۖۘۖۖۘ۟ۥۚ۟ۙۗۥۤۨۛۜ۬ۨۦۖۘۥ۬ۗ";
                    break;
                case 1823762642:
                    this.Oooooo0 = (Switch) findViewById(R.id.swtich_setting_waggle_stop);
                    str = "ۢۢۡۙۚ۬ۢۜۢۥ۬۟ۖ۟ۦۘۗ۠ۨۘۘۗ۠ۜۤ۠ۢۘۦۧ۬ۡ";
                    break;
                case 1885542812:
                    l10.OooO0o().OooOo00(this);
                    str = "۟ۦۤۥۥ۫۟۟ۦۛ۟۬ۦ۠۫ۜ۟ۙۧ۠ۜۘۙۡۘۘۖ۬۠ۙ۬ۦۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        OooO00o oooO00o = null;
        String str = "ۢ۠ۜۘۜ۬ۖ۠۠ۙۚۨۘۘ۟۬ۜۚ۠ۨۢ۠ۜۘۜۤۖۗۤۙۦۘۜ۫ۧ۬ۜۜ۫۫۠ۚۦۦۧۘۡۧۘۧۛ";
        OooOO0 oooOO0 = null;
        jb jbVar = null;
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 732) ^ 621) ^ 1592082586) {
                case -1500382592:
                    str = "ۘۘۘۢۨۚۖۥۚۢ۠ۜۘۖ۠۬ۙۖۡۙۙۨۘۖۗۢۘۡۚ۟ۡۡۥۦۜۘۛۧۚ۬ۥ۟ۧۥۙۘ۠ۖۚ۠ۡۜۡۜۗۛۘۘ";
                    jbVar = new jb(this);
                    continue;
                case -1357208932:
                    str = "ۙۜ۠۫۟ۘۘۤ۟ۚۜۧۦۡۧۨۘ۬ۙۧۧۦۡۘۨۨۘ۬ۛۦۘۡۡ۟ۗۦ۟۠ۥۡ۫ۙ۟ۛ۬ۗۨۙۧۘ";
                    continue;
                case -1102318795:
                    return;
                case -1032348310:
                    jbVar.show();
                    str = "۟ۗۨۘۘۡ۟ۜ۟۬۬ۦۧۡۛۤۥۘۚۥۡۥ۫ۗۚۢۦۡۘۥۛ۠ۥۖۤ۟ۜۢۡۢۨۘۦۙۨۘ";
                    continue;
                case -637156844:
                    this.o00ooo = oooOO0;
                    str = "ۦ۫ۗۗۘۥۘۨۤۖۘۢۢۖۨۦ۬ۖۙۚ۟ۦۛۗۚۗۤۦۘۡۘ۬ۡۚۤ۟۟ۡۘ";
                    continue;
                case -579163528:
                    super.onActivityResult(i, i2, intent);
                    str = "ۛۖۖۘۡ۟ۛۜۘ۟ۤۖ۠ۡۘۘۘ۬۫ۗ۬ۧۜ۬ۜۜۘۖۨۧۘۢۤۚۧۗۖۘۜۖ۠";
                    continue;
                case -478313815:
                    String str2 = "۫ۦۖۘۜۖۤۦ۠ۖۘ۬ۖۢۡۨ۫ۦ۟ۜۦ۟۟ۤ۫ۨۘۧۚۨۤۡۜۢۡۙۧۢ۬ۡۦۤۖۦۖۘۥ۟ۖۘۦۧۜۤ۟۠ۤۤۡۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1230541065)) {
                            case -940087727:
                                str2 = "۬ۘۧۥۗ۬ۗۘۧۘ۟۠ۥۢۤۨۖۖۦۘۖۛۤ۫۟ۤۢۛۨۦ۟۠ۘۖۥۨۨۗ۫ۖ۠ۦۥۥۘۥۧ۟۫۠ۜۘۜ۠ۗۘۨۡ";
                                break;
                            case 880093001:
                                String str3 = "۟ۘۤۨۗۗۚ۫۫ۛ۬ۡۨۗۚ۟ۥۛۨۥ۫ۤۚۚۗۢۘۘۨۘۚۙۥۘۘۛۘۡ۬۫ۨ۟ۚۨۘۘۗۖۦ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1634214211) {
                                        case -908220876:
                                            str3 = i != 1 ? "ۡۜۧۘۘ۟ۘۜۦۜۘۥۧۤ۠ۨ۟ۘۥۘۘۦۜۘ۟ۜۧۘۜۛۦۧۙۜۘۛۗۚ۠ۧۖۘ۬ۖۦۨ" : "۟۬ۚۧۥۦۧۖ۟ۛۦۡۡۤ۠ۖۚۥۢۦۖۖۘۖۢۜۥۗۥ۬ۘۨ۬ۤۙۨۦۨۘ۠ۛۘۘۗۚ۬ۛۛۡۘۖۤۡۗۥۧۘ";
                                            break;
                                        case -117049271:
                                            str2 = "ۚۜۖۘۥۖ۟ۖۡۨۨۢ۫۠ۥ۬ۛۧۨۜ۠ۢۢۙۥۤۤۖۖۚۥ۠ۡۜۖۘۢۢۖۘ۠۠ۥۘۛ۬ۢۢۨۥۘ";
                                            break;
                                        case -48347311:
                                            str2 = "ۧ۫۫ۧ۟ۨۘۜ۟ۧۡۧۗۥۗۧۡۧۖۘۢۤۙۜۥۜۘۡۙۦ۬ۦۘ۫۟ۡ۠ۚۛۘۗ۟ۙ۬ۢ";
                                            break;
                                        case 1668259714:
                                            str3 = "ۘۧۖۘ۠ۛۘۚۡۤۢ۠۠۫ۘۡۘۤۚۙۖۚ۠ۛ۬ۡۘۙۛۜۘۤۙۛۦۨۗۡ۬ۛۘۢۜۜ۫ۡۗۜۨۘۥۖۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1741610548:
                                str = "ۢۚۜۘ۫۫ۦۘ۬ۛۖۚۜۥۛ۠ۦۘ۠ۛۜۜۤۡۜۖۘۖۧۡۘ۫۬ۖۛۜۙۤ۠ۤ";
                                continue;
                            case 2100239801:
                                str = "ۗۥۦۜۡۜ۬ۥۘۘ۠ۨۗۦۘ۬ۨۥۢ۠ۤ۬ۥۘ۟ۘۥۛۧۛ۠ۤۛۧ۠ۥۘOۡۡۤۥۨ۫ۦۦۛۛۡۜۘ۫ۧۧ";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -191471433:
                    oooOO0.start();
                    str = "۫ۖۧ۬ۨ۟ۦۛۦۛۛۡۢ۟ۚ۠ۡۘ۠ۜۜ۬ۡۦۛۥۘۘۚۛۗۙۢ۠۫ۛۨۘۗۨۢۥۦۡۧۨۧۘۙۧۦ";
                    continue;
                case 291977993:
                    str = "ۛۜۛۗۡۘۤۙۦۡۦۦۘۘۨۗۥ۫ۢۤۘۜ۫۟ۙ۫۬ۡۤۤۨۦۚ۟ۨۘۗۨۧۦۘۡۨۤ۬ۜۤۦ۬۟";
                    continue;
                case 609706398:
                    str = "ۦۦۦۗۛ۟ۢۘۨۤ۟۠ۘۡۖۥۤۛ۠ۡۡۘۗ۟ۖۘۢ۟ۖۙۡ۫ۚۧۥۧۖۨۛۥۧۤ";
                    oooOO0 = new OooOO0(this, m.ag, 1000L, oooO00o);
                    continue;
                case 937267619:
                    this.oo000o = jbVar;
                    str = "ۡ۬ۜۘ۠ۜۡۛۢۤۘۦۘ۫ۖ۫ۢۥۥۛ۬ۙ۟ۨ۠۫۬ۦۤۖۡۡ۠۟۫ۗۙۥۙۛ۬ۨۥ";
                    continue;
                case 976132431:
                    break;
                case 1223035120:
                    str = "ۥۖۚۖۙۙۙۢۗۗۧۢۡ۬ۧۚۢۦۗۨۦۖۢ۟ۡۦۘ۫ۛ۟ۥۖ۫ۚۗۛۘۛۥۜ۠ۚۜ۟ۖۛۦ۫ۙ۫ۧۖۗۘ";
                    continue;
                case 1406279019:
                    str = "ۙۚۖۘۡۚۨۧۤۙۤۨۖۜۚۤۡۦۘۥۘ۟۠ۢۦۘۘۘۧۘۗۘۡ۟۫ۜۗۦۜۗۜۧۥۙۥۜۚۢۥۚۚۛۡۜۢۨۦۘ";
                    continue;
                case 2123768741:
                    String str4 = "ۤ۠ۡۨۤ۫ۨۚۨۖۖۦۡ۬ۥۡۚۧ۫ۥۛ۫ۦۜۚۤۦۘۤ۬ۤۜۨۡۘۚ۠ۜۗ۫ۥۘۢۤۜ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1489415162)) {
                            case -1914338380:
                                String str5 = "ۖۦۛۚۦۗۗ۟ۛۢۙۢ۫ۛۜ۬ۨۘۘۢۙۛۨۘ۬ۢۖۢۨۗۖۘۥۚ۟ۢ۟ۥۜۡۙۘۢ۟۬ۘۙۡۜ۬ۡۧۦۢ۟۬";
                                while (true) {
                                    switch (str5.hashCode() ^ 1473407648) {
                                        case -2048918263:
                                            str5 = i2 == -1 ? "۠ۦۦۘۥۘۨۤ۫ۦۦۨ۠۟ۖۨۘ۫ۥۦۖۤۤۧ۟ۤۥ۠ۦۘۧۚ۫ۨۦۗۛۦۨۢۦۨۘۡ۠ۦۘۨۨ۠۟۟ۘۘ" : "ۡۨۤ۫۬ۡۡۛۡۘۧۡۖۙۚۥۘۨ۟ۘۘۤۖ۬ۜۘۘۛۗۗۧۡۡۘۨۗ۟ۧۥ۫";
                                            break;
                                        case -1094724940:
                                            str4 = "ۡۙۥۦۘۖۘۥۦۧۘ۫ۙۖۨۤۦۗۖۧۡۧۥۨۧۧۚ۟ۨۘ۫۠ۡۘ";
                                            break;
                                        case 101175283:
                                            str4 = "ۨۖۡۘ۟۫ۨۘۨ۫ۜۢۙ۠ۨۤۘۘۡۚۗ۠ۢ۠ۥۜۡۘۢۡۙۦۡۨ۬ۨۖۧۗۢۨۧۤ۟۟ۢۛۗۨۘۦ۠ۜۘ";
                                            break;
                                        case 754555595:
                                            str5 = "ۚۜۖۙۧۦۘۤۜۛۖۘۨۘۨ۠ۡۡۖۡۘۢۜۢۤۤۥۖۡ۬ۤ۫ۖۘۨۥۦۘ۟ۜ۬ۘۡ۫ۚۤۦۜۤۡۚۦۗ";
                                            break;
                                    }
                                }
                                break;
                            case -1897053637:
                                break;
                            case -945775581:
                                str4 = "ۢۙ۬ۘۢۡۖۤۙۗۗۗۛۙۙۛۖ۬ۛ۠ۨۧۧ۟ۜ۫ۢ۟ۥۡۘۡۡۚۡۜ۟ۘۘ۠ۢۛۤۢۖ۫ۘۜۨۘۘۙۜۤۙۜ";
                                break;
                            case -943223436:
                                str = "ۢ۫ۜۘ۬ۙۦۜۢۡۘۛۜ۟ۖۨۢ۬ۚۡۖۡ۬ۨۥۢۢۖ۬ۛۨۚۘۘۡ۬ۦۦۤۢ۟ۧۘۧ۫ۤۡۘۧۚۥۘ";
                                break;
                        }
                    }
                    break;
            }
            str = "۫ۖۧ۬ۨ۟ۦۛۦۛۛۡۢ۟ۚ۠ۡۘ۠ۜۜ۬ۡۦۛۥۘۘۚۛۗۙۢ۠۫ۛۨۘۗۨۢۥۦۡۧۨۧۘۙۧۦ";
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0053. Please report as an issue. */
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int id = 0;
        x4 x4VarOooO0O0 = null;
        Boolean boolValueOf = null;
        String str = null;
        Switch r33 = null;
        x4 x4VarOooO0O02 = null;
        Boolean boolValueOf2 = null;
        String str2 = null;
        x4 x4VarOooO0O03 = null;
        Boolean boolValueOf3 = null;
        String str3 = null;
        i7 i7VarOooO = null;
        Switch r24 = null;
        Switch r32 = null;
        x4 x4VarOooO0O04 = null;
        Boolean boolValueOf4 = null;
        String str4 = null;
        x4 x4VarOooO0O05 = null;
        Boolean boolValueOf5 = null;
        String str5 = null;
        x4 x4VarOooO0O06 = null;
        Boolean boolValueOf6 = null;
        String str6 = null;
        x4 x4VarOooO0O07 = null;
        Boolean boolValueOf7 = null;
        String str7 = null;
        View viewInflate = null;
        AlertDialog.Builder builder = null;
        AlertDialog alertDialogCreate = null;
        EditText editText = null;
        x4 x4VarOooO0O08 = null;
        Boolean boolValueOf8 = null;
        String str8 = null;
        Boolean bool = null;
        x4 x4Var = null;
        String str9 = null;
        String str10 = "ۘ۠ۘۤ۟ۜۧۢۖۘۨ۟ۚۛ۠ۡۘۨۖۥۖۘۡ۠ۧۨۘۢۛۦۨۥۘۚۘۥۘ۟ۤ۫";
        while (true) {
            switch ((((str10.hashCode() ^ 602) ^ 905) ^ 844) ^ (-1743877262)) {
                case -2102007817:
                    AppContext.OooO00o().OooOO0(R.string.setting_illegal);
                    str10 = "ۜۗۦۙۤۦۚۙۖۘۨۖۦۘۤۨۖ۟۬ۚ۟۠۟۠ۙۨ۠۟ۦۥۖۙ۟۟ۚۦۡۘۘۧۜۚۗۨۥۘۥ۟۟ۡۤۛ۫ۗۛۨ۠ۦ";
                    break;
                case -2055087883:
                    str10 = "ۚۦۜۘ۬ۤۨۛۖۦۘۛ۠ۖۘۖۖ۬۫ۗۤۡۦ۟۬۫ۨۖۨۥۘۨ۟ۨۘ";
                    str9 = str;
                    break;
                case -2009085814:
                    boolValueOf5 = Boolean.valueOf(z);
                    str10 = "ۤۗۢۧ۫ۘۘۚۤۨ۟ۡۡۘۙۥۘۚ۠ۥۙۨ۟۬ۛ۫ۡۗۖۚۛۨۗۜۡۗۙۧۘۘۦۘۚ۬ۚۗۙ۬ۘ";
                    break;
                case -2002434620:
                    str = f6.OooOOO0;
                    str10 = "ۚۛ۫ۨۖۘۘۜۥۗۚۡ۟ۙۥۘۧۢۗۜۙۘۘۖۥۜۙۦۦۘۜۛ۟ۡۧۡۥۧۘۖۧۧۚ۬ۢ";
                    break;
                case -1997296399:
                    str10 = "ۜۘۜۘۛۡۛ۬ۤۘ۟ۨۖۘ۠ۖۧ۬ۥۚۗ۠۫ۛۢۜۜۢۚۥۘۘ۬ۧۡۘ۫ۤ۫ۨۡۜۢ۫۠ۜۜۖۘۦۚ۟";
                    str9 = str7;
                    break;
                case -1977535854:
                    viewInflate = getLayoutInflater().inflate(R.layout.dialog_adb_command, (ViewGroup) null);
                    str10 = "ۡ۟۬ۥۗ۠ۗ۬۠ۚ۬۫ۤۤۚۡۤ۫ۢۚ۬ۙۚ۠۟ۛۗۗۨۨۚۢۧۨۖۥۥۖۤۧۙۘۘ۠۟ۡۜۨۤۜۚ۠ۤۛ۬";
                    break;
                case -1948116207:
                    x4VarOooO0O05 = x4.OooO0O0();
                    str10 = "ۜۚۚۗۥۗۤۨۙ۬۬ۢۚ۠ۘۙۤۦۘ۠ۚۖۘۛۢۤۙۦۘۘۖۨ۬۟ۡۡ۫ۙۡۧۤ۠ۗۥۤۧۧ۫ۗۥۘ";
                    break;
                case -1905152354:
                    alertDialogCreate.show();
                    str10 = "ۚۚۡۘۘۖۙۥۡۨۗ۟۠ۘۦۚۤۗۛ۠ۗۙۢ۬ۘ۠ۚۤۙۢۚۜۤۚۧۖۢۜۧۡۘۢۛۥۘ";
                    break;
                case -1890366288:
                    break;
                case -1846945554:
                    str10 = "ۢۘۛۢۛۥۘۚۛۢۢ۟ۧ۟ۚۤۤۢ۠ۙ۠ۦۗ۬۟ۨۨۧۖۤۖۥ۫ۨۦ۟ۦۖۛۛ۟۫ۙۘۘۚ۠۟";
                    x4Var = x4VarOooO0O0;
                    break;
                case -1824174630:
                case -1554338416:
                case -1239611934:
                case 411761579:
                case 622075868:
                case 886184613:
                    str10 = "ۧ۠ۜۘۦۢۙۡۡۤ۫ۦۘۙ۫ۥۘۤۘۜۘ۬۫۬ۥۨۘۘۙۦۜۨ۠ۢۨۗۥ۬ۧۢ۟ۡۘۘۧۖۧ۟ۘۖۘۚۡ۬ۧۚۜۘۥ۠ۡ";
                    break;
                case -1782882937:
                    str4 = f6.OooOOO;
                    str10 = "ۢۡۦۘۙۘۗ۟ۙۜۜۨۧۘۤۨۘۙۥۡۘۡۨۖۘۜۗۡ۠ۜۛۢ۬ۛ";
                    break;
                case -1777497930:
                    str10 = "۬ۗۖۘۗ۫ۖ۠ۤۚ۠ۨۥۘۙ۟ۗ۟ۡۤۢ۠۠۫۟ۚۖۖۛ۟ۗۘۘۡۦۘۙۜۤۦۜۤۥۗۡۘۧۧۚۙ۠ۖ۬ۦۢۥ۬ۦ";
                    break;
                case -1708278722:
                case -1283977305:
                case -1105209000:
                case -831423610:
                case -509848321:
                case 68516544:
                case 1585327623:
                    str10 = "ۢ۟ۦۘۨۧۥ۬ۥۘۦۤۗۧۤۥۢۥ۠ۜۘۜۤۛۖۤۜۨۡۙۜۧۘۘۙۖۘۦۢۢۢۥۤۢ۬۬ۡۥۘۘ";
                    break;
                case -1697574923:
                    str6 = f6.OooOo0;
                    str10 = "ۛ۬ۘۧ۠ۖۙۖۨۜۦۜۘۨۗۗۖۨۡۨۛۨۤۦۧۚۤۡ۬ۡۥ";
                    break;
                case -1683455154:
                    str10 = "۟ۙۜۤۢۚۚۦۚۧۡ۟ۢۦ۠ۗۡۘ۫ۖۨ۠ۤ۠۬ۙۘ۬۬ۖ";
                    x4Var = x4VarOooO0O05;
                    break;
                case -1624964226:
                    x4VarOooO0O04 = x4.OooO0O0();
                    str10 = "ۘۜ۬ۧۛۨ۟ۧۜۘ۬ۛۡۖۧ۟ۡ۫ۘۘۡۛۧۚ۬۟ۙۜۖۚۛۡۦ۬ۘۘۢ۬ۡۘۙ۠ۨۘۛۘ۬۠۟۬ۡۖ۠ۦۤۙۜۗ";
                    break;
                case -1476234100:
                    String str11 = "ۖۗ۟ۤۦۘ۫۟ۘۘ۟۠ۚۚۖۖۘۦۛۦۘ۬ۘۢۜۜۖۘۗ۫ۘ۫ۜ۫ۦۤۥۘ۫۟ۜۤۥۖۘ۬ۧۖۘ";
                    while (true) {
                        switch (str11.hashCode() ^ (-1709238586)) {
                            case -75519907:
                                String str12 = "ۡۖۦۘۥۙ۬ۘۚۘۘ۬ۙۦۘۨۗۘۘۦۢۨۦۢ۠ۖ۬ۜۚۢۙۚۡۘۦۗۦۖ۟ۦۘۛۚۡۨۗۗۛۜۛۦۛۘۘ";
                                while (true) {
                                    switch (str12.hashCode() ^ 1463568441) {
                                        case -1332391395:
                                            str11 = "ۡۧۡۘۙۦۦۘۦۜۗۙۢۘۘۖ۠ۥۛ۫ۖۘۚۦ۠ۧۘۘۦۤ۠ۢۥۨۘۙۗۘ۬ۖۚۛ۫۫ۛۥ۬";
                                            break;
                                        case -777892304:
                                            str11 = "ۡۘۖۘ۬ۧۥۘ۫ۥۚ۫ۖۡۘ۟ۡۛۦۢۗ۠ۙ۬۬ۖۘۜۢۚۢ۠ۨۘۙۚ۫۬ۦ۟ۜۥۘ۫ۤۥۘ۬ۤ۬ۗ۫ۡۘۢۢۥۘ۠ۧۡۘ";
                                            break;
                                        case 243617089:
                                            str12 = "ۤۧۘۖۧۤۛ۫ۛۥ۠ۡۢۡۗ۟ۘۦۦۦۥۘۗۙۢۤۙۚۖۜۘۤۤۖۦۢۨۘ۟ۧۡۡۦۜۘ";
                                            break;
                                        case 446811967:
                                            str12 = z ? "۬ۢۙۡۗ۫ۗۢۥۘۤۧ۬ۗۤۘ۟ۧۨۥۢۖۘۚۨۤۡۥ۟ۥۦۘۘۖۧۘۢۢ۟ۢ۬ۜۘۨۖۦ۟ۥۗۧ۟ۚۥۦۚۖ۫ۖۘ" : "ۙۡۘۘۦۦۥۜۛۦ۫ۦۜ۠ۗ۟ۥ۫ۗۙۜۥۘۘ۬ۦۘۖۛۢۖ۟ۘۘۘۧۙۘۥ۠۟ۜۧۥ۬ۖۘۖ۠ۨۘۘۛۦ";
                                            break;
                                    }
                                }
                                break;
                            case -14835194:
                                str11 = "ۗۢۦۤۢۖۨۜ۫۠ۤۘۤۡۘۘۡۡ۫ۧۦ۟۫ۙۥۘۨۥۧۜۢۖۧۖۢۢۨۦۘ";
                                break;
                            case 1246382366:
                                str10 = "ۦ۫ۦۘۙۗۛۤۦ۠ۨۖۨۚۡۗۖۜۨۘۧۙۡۘۦۦۨ۠ۥۢۜۤ۫۬ۤۢۥ۬";
                                continue;
                            case 1313743068:
                                str10 = "ۨۦۖۘۜ۬ۚ۠ۤۜۘۛ۬ۨۘۢۨۡۘۘۘۢ۠ۤۖ۬ۗۡۦۥۘۧۖ۬ۚۦ۟ۡ۠ۙۙۥۘۤۘۘۘۢۗ۫ۥۛۧ۫۟۠ۘۧۦ";
                                continue;
                        }
                    }
                    break;
                case -1443020768:
                    i7VarOooO = i7.OooO();
                    str10 = "ۦۨۤ۫۟ۙۢ۟ۖۘ۬ۚۜۘ۫ۗۦ۬ۨۧۘۗۙ۟۬۟۬ۛۤ۫۟۬ۖۧۨۦۙۘۧ";
                    break;
                case -1400145669:
                    switch (id) {
                        case R.id.switch_setting_automatically_run_script /* 2131297306 */:
                            str10 = "ۙۤ۫ۡۖۗۥۙۨۛۚۥ۟ۦۘۤۨۘۘ۫ۤۦۘۛۤۚۢ۬ۦۘۡۨۧۛۡۡۘۗۖۡۘ۫ۘ۬۬۟۬ۤۨۢۡ۠ۢۛ۟ۤۢ۟ۖ";
                            break;
                        case R.id.switch_setting_collect_logcat /* 2131297307 */:
                            str10 = "۫۟ۜۘۘۚۙۚ۬ۥۨۢۥۧۧۡۘۢۦۧ۠۟ۥۘۗۘ۫ۥ۟ۦ۠ۡۖۙۥۡۘۚۜۖۘۤ۠ۗۧۙۥۚۨ۠ۗۛ۫";
                            break;
                        case R.id.switch_setting_error_dialog /* 2131297308 */:
                            str10 = "ۨۧۨ۟ۡۖۦۨۙۜ۫ۘۧۥۖۘ۠ۢ۠ۨ۫ۜۘۤۚۦۘۡۧۨۘۢ۠۬";
                            break;
                        case R.id.switch_setting_flash_back_auto_restart /* 2131297309 */:
                            str10 = "۫ۗۗۘۧۖۘۖۚۨ۟ۗۥۢۧۜۘۖۥۢ۟۠ۢۢۖۘۥۛۡۛ۟ۛ";
                            break;
                        case R.id.swtich_setting_call_stop /* 2131297310 */:
                            str10 = "ۥ۟ۘۙ۟ۖۘۚۘ۬ۚۜۥۘۘۥۥۘۙۦۖۘ۬ۡ۬۠ۤۚۤۙۤۚۖۘۧ۬ۥۥ۬ۥۘۥۨۘۘۤۜۨ۠ۖ۫ۛ۠ۖۖۤ۫ۖۜ";
                            break;
                        case R.id.swtich_setting_floatview_ctrl /* 2131297311 */:
                            str10 = "ۗۜۡۘۨۗۖۘۙۘۜۗ۟۫ۤۖۥۢۖۢۗۜۗ۠ۘ۟۟ۨۖۘۦۚۦۘۙۡۛۙۜ";
                            break;
                        case R.id.swtich_setting_script_pause_and_resume /* 2131297312 */:
                            str10 = "ۤ۫ۖۘۚۨۜ۠ۧۧۗۥۨۖۨۧۘۖ۬ۥۘۥۛۘۡۧۖ۫ۤۥ۟ۦۧ";
                            break;
                        case R.id.swtich_setting_vibration /* 2131297313 */:
                            str10 = "ۨۛۙ۠ۛۤ۠۠ۨۘۢۗۛ۬ۘۥۚۡ۬ۨۖۖۚۙۗۥ۫ۢ۫ۨۘۘ۟ۚۙ۟ۚۙۨ۠ۤۖۘ";
                            break;
                        case R.id.swtich_setting_volume_key_ctrl /* 2131297314 */:
                            str10 = "ۡۖۜۥۦۧۛ۟ۖۦۗۥ۠ۡۙۡۘۘۚۧۨۘۤۛۤۥۘ۟ۨۧ۟ۧۚۢۗۥۘۚۦ۠ۢۦۦ";
                            break;
                        case R.id.swtich_setting_waggle_stop /* 2131297315 */:
                            str10 = "ۨۢۖۡۦۦۘۘۡۦۢۤ۫ۖۢۥۦۢۥۘۡۥ۫ۘ۫ۖۗۡۢۨۜۚ۫ۦ۫ۢۗۡۘ۬ۚۜۡۨۦۘۛۧۚۥ۬ۦۡۧۧۛۦۨ";
                            break;
                        default:
                            str10 = "۟۬ۖۘۨۢ۬۟ۤۦۧۥ۟ۚۤ۠ۧۗۤۨۨۦۘۧۛۗۤۘۘۗۗۥ";
                            break;
                    }
                    break;
                case -1390274682:
                    str10 = "ۨۚ۫۬ۡ۬ۡۧۜۘ۠ۘۛۦ۬ۥۘۙ۫۟ۛۨۗۢۙۘۘ۟۟ۡۘۢۧۨۘۜۜۜ۠ۚ۫ۚ۫ۧۗ۟ۗۜۙ۠ۖ۬ۦۘۗۨۥۗۜۢ";
                    bool = boolValueOf7;
                    break;
                case -1300561168:
                    builder.setView(viewInflate);
                    str10 = "ۢۡۨۖۧۛ۠ۨۨۘۨۖۘ۠ۦۦۘۚۦۥۘۧۖۦۘ۫ۗۗۙ۬ۦ۠ۥۡۘۤۢۖۘۧۚۨۘ";
                    break;
                case -1283802729:
                    boolValueOf3 = Boolean.valueOf(z);
                    str10 = "ۛۗۢۗ۫ۖۘۘۗۚۙۡۥۖۖۡۧ۟۬ۖۥۜ۠ۦۘۘۥۖۨۘۥ۟۬۫ۘۨۡۦۤۡۘۖۜۡۘۧۘۡۘۘۢۥ";
                    break;
                case -1261174694:
                    str10 = "ۦۘ۫ۛۡ۫ۨۙ۫ۗۜۢ۬۠ۜۡۜۨ۟ۡۡۘ۬ۦۖ۫۬ۦۘ۠ۙ";
                    break;
                case -1192762518:
                    r32.setChecked(true);
                    str10 = "ۗۘۙۙۚۖۘۦۢۨۘۚۡۡۘۚۦۢ۬ۢۚۥۘۘۘۚۗۦۘۘۤۡۥ۫";
                    break;
                case -1071963493:
                    String str13 = "ۤۖۘ۟ۢۘۘۨ۠ۧۗۜۢۥۜۗ۟۫ۧۥۘ۫ۢۤۘۚۙۚ۟۟ۜۘۛۖۨۘۡۨۘۥ۟ۜۦۙۜ";
                    while (true) {
                        switch (str13.hashCode() ^ 1938887017) {
                            case -1998120908:
                                break;
                            case -1388090641:
                                String str14 = "ۙ۫ۤۘۤۖۘۡۨۨۘ۫ۛۨۧۘۛۥۘۙۖۜۖ۬ۥۘۘ۫۟ۙۧۚ۫۫ۙۚ۫ۗۤۗۨۗۖۚۥۘۙۗۗۧۡۧ";
                                while (true) {
                                    switch (str14.hashCode() ^ 206684312) {
                                        case -1120729570:
                                            str14 = !this.OooooOO.isChecked() ? "ۦۘ۠ۤۗ۠ۛۦ۟۬ۢۤۨۥۘۛۨۙ۬ۙۗۙ۟ۨۘ۠ۤ۠ۗۧۙۤ۫ۘۢۦۡۥۡ۬ۛۨۖۘ" : "ۙۥۡۘۚ۟ۘۘۤۧۨۘۥۤۜۖۡ۟ۦ۫ۦ۫۬ۦۜۙ۟ۢۦ۬۟ۘۘۥۛ۫ۥۗۢۡۘۥۘۗۧۥۘ۠ۜۘۘ۬ۗ۫";
                                            break;
                                        case 247040136:
                                            str14 = "ۦ۟ۨۘۚۧۜۦۚۘۘۖۗۗ۟ۦ۟۫ۚۡۘۚۘۧۙۦۘۘ۫۬ۧۗۘۦۘ۠۬ۥۘۜ۬ۘ۬۫ۥۘ";
                                            break;
                                        case 1095228334:
                                            str13 = "ۡۛۜۘۧ۠ۜۙ۠۬ۗۙۨۤۡۗۘ۟ۨۡۜ۬ۘ۬۬ۜۛۙۥ۫ۡۜۚۜۘۢۧ۠";
                                            break;
                                        case 1593148129:
                                            str13 = "ۡۦۖۘۗۖۘۖ۫۫ۡۙۘۡۖۦ۬ۜۨۤۨۘۘۡۜۦۘۚۧۧۨۛۨۘ۠ۖۧۘۗ۬ۡۘۛۙۙۙۖۦۚۡۖۤۛۧ۫۫ۖۦۖۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1902381250:
                                str10 = "ۗۧۨۘ۫ۖۘۢۚۥۦۦۧۡۨ۬ۗۜۛۢۙۡۘ۫ۦۤ۠ۜۘۦ۠ۜۘۙۚۘۘۜۦۧۘ";
                                break;
                            case 2122479853:
                                str13 = "ۚۨۥۜۖۘۘۘۘۥۘ۬ۤۧۤۤۗۨ۟ۗۖۨۥۘۖۖۦۘۤۛۛۧۧۤ";
                                break;
                        }
                    }
                    str10 = "ۙۗۦۙۙۦۖۨۡۘۡ۟۬ۡۨ۫۟ۡۡۘۧ۬ۘۘۚۛۘۘ۟ۥۥۦۘۗ۠ۙۤۨۜۘ";
                    break;
                case -966804985:
                    str10 = "ۢ۟ۦۘۨۧۥ۬ۥۘۦۤۗۧۤۥۢۥ۠ۜۘۜۤۛۖۤۜۨۡۙۜۧۘۘۙۖۘۦۢۢۢۥۤۢ۬۬ۡۥۘۘ";
                    str9 = str8;
                    break;
                case -964467727:
                    str10 = "ۥ۬ۙۘۖۥۘۗۗۡۘۗۚۦۘۤ۠ۦۘۖۚۡۘۤۥۦۘ۬ۛۜۘۛۘۘۡ۟ۛۤۖ۟ۦ۠ۡۘۥۡۘۖۤۜۡۢۤۤۦ۟ۘۗ۟ۚۖۗ";
                    bool = boolValueOf3;
                    break;
                case -915574669:
                    x4Var.OooO0o(str9, bool);
                    str10 = "ۛۘۜۘۖۗۧۧۚۙۥ۬ۘۥۡۙۡۡۧۧۤۦۨ۟ۤۚ۟ۧۢۚۦۨۤ۬ۦۘۡ۫ۛۥۥۘ";
                    break;
                case -849392949:
                    str10 = "ۦۜۘۖۢۥۘۤۥۚۦ۬ۧ۟ۜۧۘۗۜۘۜۘۢۛۘۛۜۨۢۙ۫ۨۘ۟ۤۡۧۘ۬";
                    str9 = str5;
                    break;
                case -811492309:
                    str10 = "ۖ۟ۘۘ۬۟۬ۦۙۥۘۨۙ۬ۖۦۧۘۧۘۡۘۨۢۙ۟ۜۡۘۧ۬ۖۢۚۘۖۗۖۧۜ۟ۨۘ۠ۘۘۡۘ";
                    x4Var = x4VarOooO0O04;
                    break;
                case -802691239:
                    str10 = "۟۫۫۟ۨۧۘۤۛۜ۟ۡۤ۬ۖۚۢۦۖ۠۫ۨۘ۠ۖۙۖ۠ۤ۟۫۠۬ۧ۬۫ۥۖۘ۫ۗۢۤۛۗ";
                    bool = boolValueOf8;
                    break;
                case -779904321:
                    a4.OooOoo(this, z);
                    str10 = "ۧ۠ۜۘۦۢۙۡۡۤ۫ۦۘۙ۫ۥۘۤۘۜۘ۬۫۬ۥۨۘۘۙۦۜۨ۠ۢۨۗۥ۬ۧۢ۟ۡۘۘۧۖۧ۟ۘۖۘۚۡ۬ۧۚۜۘۥ۠ۡ";
                    break;
                case -723000131:
                    str10 = "ۦۖۢ۬ۧۨۘۜۤۢ۠۠ۥۡۜۢۡۜۖۡۘۡۦۦۤۢۨ۫ۤۗۤ۫۟ۗۛۗ";
                    r32 = r33;
                    break;
                case -673494480:
                    str10 = "ۛۡۥۘ۫ۦۛۖ۬۫ۛ۬ۜۘ۫ۥۗۙۦۧۦۤۨۘ۬ۡۜۨ۠۫ۜۦۨۘ۟ۧۧ۟ۤۧ۬ۨۘ۟ۡۗۦۖۥۢۖۨۜ۬ۨۘ";
                    break;
                case -664165766:
                    str10 = "ۢۗۨ۫ۦۜۥۨۜۘ۫ۛۚۦ۠ۖۙۘۤ۫۠۟ۖۜۙ۠ۤۚ۠ۧۜۚۧۧۡۜۚۡ۫ۧۖۡۡ۫ۚ۠ۦۢۨۧۥۗۘۚۡۘ";
                    x4Var = x4VarOooO0O07;
                    break;
                case -563460415:
                    boolValueOf6 = Boolean.valueOf(z);
                    str10 = "۟ۢ۟ۢۜ۬ۛۡۖۗۗ۟ۥ۫ۧۜۚۘۘۛ۠ۖ۟۬ۡۘ۬ۚۖۘۚۚۖۢ۟ۤۛۨۡ";
                    break;
                case -477057209:
                    x4VarOooO0O08 = x4.OooO0O0();
                    str10 = "ۗۦۦۘۗۘ۟۠۫ۘۘۡۖ۫ۚۜ۫ۢ۟ۚ۫۫ۛۢۘۡۘۧۙۛۤۡۘۘ۠۬ۛۜ۟ۨۘ۠ۦ۟ۤۖۛ";
                    break;
                case -365836410:
                    x4VarOooO0O0 = x4.OooO0O0();
                    str10 = "ۖۗۨۘۢۦۨۙ۠۬ۦۜۥۘۖ۟ۙۤۢۙ۬ۥ۫ۡۥۥۘۜ۟ۤۢۚۨۘۢۘۘۘۥۡ۟ۧۗ۟۬ۦۗۢۖۨۦ۠ۨۨ۠ۢۤۗ۟";
                    break;
                case -334042585:
                    str10 = "ۥۙۦۘۡۘۨۘۚۦ۠ۖۦۖۙۖۖۡۘۥ۟ۡۘۢۢۡۘۨۡۢ۬۫ۜۢۖۧۘۢۥۜ۟ۙۦۘۡۨ۬۟ۥۖۘ۠ۢۙۥۧۘۦۙۨ";
                    x4Var = x4VarOooO0O03;
                    break;
                case -276425175:
                    r33 = this.OooooOO;
                    str10 = "ۘۡۡۡۥۦۜ۬۟۟ۧۛۘۚۛۘ۫ۡۘۨۢۡۘۘۗۦۘۙۚۜۚ۫ۙۜۙ۫۬ۙۧۢ۬۠ۛۥ۠";
                    break;
                case -233479216:
                    i7VarOooO.OooOoo();
                    str10 = "ۘۢۢۚۘۡۡۛۖۚۡۘۘ۬۫ۜۘ۫۠۠ۛ۠ۡۘۥۦۧۘ۟ۙۜۡۖ۠";
                    break;
                case -185143853:
                    str10 = "ۜۘۡۤۖۙۘۘۥۨۗۛ۟ۥۘۘۘۨ۬ۡۤ۟ۦۗ۠ۛۚۨۘۨۘ۟ۗۢ۫ۡ۠۬ۦ۫ۨۥۡ";
                    bool = boolValueOf4;
                    break;
                case -126500314:
                    str10 = "۠ۡۥۘۛۨۥۧ۠ۥۘۜۡۗ۬ۖ۠ۛۜۗ۟ۜۨۜۧۖۘۙۡۚ۬ۜۢۡۙۨۙۢۙۨۢۘۘۖۦۧ";
                    str9 = str6;
                    break;
                case -113068640:
                    str10 = "ۘۖۗۥۛۡۘۗۚۤ۫ۘۥۘۛۙۧۙۖۘ۟۠ۚۨۤۨ۬ۚ۫۬ۥ۠ۥۨۜۡۗۖۘ۟ۨۜۘۛۙۘۘ";
                    bool = boolValueOf5;
                    break;
                case -103067782:
                    String str15 = "ۙۡۤۥ۫ۗ۟ۧۗۖۥۡۘۨ۫ۜۘۨ۠۬ۧۙۙۗۨۡۘۖۛۚۡ۠ۘۘ۠ۧ۟ۘۚۖۘۤۡۥۨۖ";
                    while (true) {
                        switch (str15.hashCode() ^ (-1899929851)) {
                            case -1104051329:
                                str10 = "ۨۨ۠ۧۘ۬ۜۨۖۜۧۡۖۖۥۘ۠ۖۘۤۥ۠ۖ۬ۥۙۗۤۡۗۥۡۜۖۧۘۜۘۛۙ۫۫ۜۖ";
                                break;
                            case 684846961:
                                String str16 = "۬ۡۜۘۦۤۡۘۦۛۥۘۤۦۨۢۚۛۗۘۧۗۜۙۘ۠ۡۘ۬ۜۘۘۖۘۛۤۤ۠ۥ۟ۡۘۛۙۡۖۢۙ";
                                while (true) {
                                    switch (str16.hashCode() ^ 1564428560) {
                                        case 450506330:
                                            str16 = z ? "ۤۘۘۘۢۥۙۥۙ۠۠۫۟ۦ۠ۖۘ۫ۗۙۡۗۘۜۢۜۘۢۛۨۗۨۤۧۨ۫ۘۨۘ" : "ۢۘۜۘۧۜۦ۠ۨۖۘۖۜۥۤ۬۬ۜۙۗۜۧۥۖۘ۠ۖ۟ۜۧۘ۬ۛۘۚۙۡۤۙۙۦ۫ۖۘ";
                                            break;
                                        case 955884271:
                                            str16 = "ۥۨۗ۟۫ۢۚۤۜۘۗۜۗۚۖ۫ۘۚۥۘۚۚۡۘۛۧۦۨ۟ۘۘۗۖ۟ۚ۬ۥۘۨۗ۫۠ۙ۬۬۫ۥۡۧۜۙۡۡۘ۫ۤۜ۬ۢۖۘ";
                                            break;
                                        case 1720584096:
                                            str15 = "ۢۢۙۦۧۚۗۜۨۘۤۨۨۨۦۘۘۛۦۢ۟ۙۥۡۧ۠ۡ۟۠ۖۡۥۨۖ۟ۦ۟ۥۨۗۗ۫ۦۦ۟ۤۛۗ۠ۤ";
                                            break;
                                        case 1982128750:
                                            str15 = "۟ۥۡ۫ۖۘۢۛۖۡۥۨۘۥ۫ۛۛۗۡۛۡۛ۫ۦۜۘۛۛ۟۟ۚۗۜۙۗ۬ۨۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1643765297:
                                str15 = "ۜۤۥۘۖۧۚۙۧۢۦۘۧۨۛۗۤۙۘۘۜ۬ۘۘۛۦۖۤۢۘ۟ۚۥ۫ۧۗۢۖۨ";
                                break;
                            case 1940530681:
                                break;
                        }
                    }
                    str10 = "ۧ۠ۜۘۦۢۙۡۡۤ۫ۦۘۙ۫ۥۘۤۘۜۘ۬۫۬ۥۨۘۘۙۦۜۨ۠ۢۨۗۥ۬ۧۢ۟ۡۘۘۧۖۧ۟ۘۖۘۚۡ۬ۧۚۜۘۥ۠ۡ";
                    break;
                case -47754906:
                    AppContext.OooO00o().OooOO0(R.string.setting_illegal);
                    str10 = "۠ۚۜ۬ۜۖۘۗۢۡۘ۫ۜۨۧ۠ۡۘۙ۬ۛ۟ۨۥۘۛۛۛۗۜۡۨ۠ۜۘ۫۫ۦۘۦ۠ۛ";
                    break;
                case -35678192:
                    id = compoundButton.getId();
                    str10 = "۠ۛۛۨۛۨۘۜۜۧۘۗۧۧۦۤۢۛۤۧۖۘۧ۫ۛۥۘۜۦ۟ۗۘۖۥۤ۫ۖۡۧۘۥۗۥۨۡۨۘۘ۟۟ۘۡۜۘۙ۟ۖۘۖۧۖ";
                    break;
                case 35423964:
                    boolValueOf = Boolean.valueOf(z);
                    str10 = "ۧۘۨ۬ۚۧۜۘ۟ۥ۫ۙۖ۠ۚۤۧۙ۟ۡۖۢۚ۠ۜۘۗ۫ۙۚ۬ۨۘ۫۫ۨ";
                    break;
                case 42409825:
                    str3 = f6.OooOOOO;
                    str10 = "ۥۤۜۤۡ۠۫ۚۢ۠۬ۗۖ۬ۘۗۗۚ۬ۚۥ۬ۘۚۦۧۛۖۧۡۗ۬ۛۧۡۤ۬ۤۤ۟ۗ۬ۦۗۦۘۧۡ";
                    break;
                case 49205513:
                    x4VarOooO0O03 = x4.OooO0O0();
                    str10 = "ۢۨۢۥۨۤۚۘ۬۠ۤۜۘۦۥۧۘۙۨ۫۫۬ۜۤۛ۠ۥۛ۬۬۠ۖۘۗ۠ۘۘۘۦ۬";
                    break;
                case 101966529:
                    str10 = "ۘۖۘۤۦۡۘۘۖۤۙۗۦ۟ۚۛۡۚۜۙ۟ۘۜ۠ۜ۟۟ۦۛ۟ۡۚۧۘ۠";
                    str9 = str3;
                    break;
                case 147464700:
                    str5 = f6.OooOO0O;
                    str10 = "ۙۙۨ۫ۖ۬ۛۦۦۨۧۘۨۢۥۖۦۘ۟ۥۡۗ۬ۥ۟ۘۡۘۙۢۦ۠ۨۘۙ۫ۤۡۗۥۘۚۛۖ";
                    break;
                case 205828007:
                    boolValueOf4 = Boolean.valueOf(z);
                    str10 = "۟ۘۦ۬۬ۨۘۜۚۥۜ۬ۚ۟ۢۦۙۛۖ۬ۛۨۘۚۧۜۧۧ۠ۘۛۥۘ۠ۧ۫۫۟۫ۨۤۤۖۛۦۘ۫ۥۥۘۜۖۦ";
                    break;
                case 358435256:
                    str10 = "ۖۢۗۡۙۥۘۢۚۡۘۖ۟ۖ۬۫۠۫ۘۘۨۡۛۖۛۙۥۨۨۘ۫ۚ۟ۦۦۧۨۚ۟ۧ۟ۥۗۦ۫";
                    str9 = str2;
                    break;
                case 407558757:
                    boolValueOf7 = Boolean.valueOf(z);
                    str10 = "ۤۚۙۙۧۘۜۗۨۨۖۜۘۙۘۘۡۛۤ۬ۖۘۙۦۦ۟ۘۥۘۚۡ۫ۦۜۦۙۖۡ";
                    break;
                case 448995933:
                    i7VarOooO.OooOoOO();
                    str10 = "ۢۖۖۤۗۘۘۦۨۦۘۜۢۦۦۡۘۘۦۥۘۙۨۙۡ۬۠ۧ۫۠ۗۚ۫ۙ۠ۛۘۚۨۘ";
                    break;
                case 526258097:
                    x4VarOooO0O06 = x4.OooO0O0();
                    str10 = "ۛۦۡ۫ۦۖۘۡۛۥۖۧۗۙۨۘۘ۟ۦۡۘۨۗۧۚ۬ۦۖۜۨۗۨۥ۬ۛۖۢ۟ۜۘ۟ۜ۟ۦۥۥۘۢۡۚ۫ۨۜۘۚ۟ۥۘۦۢۗ";
                    break;
                case 606730240:
                    str10 = "ۧۘۡۘۡۢ۬ۨ۟ۖۘۖۛۥۘۚۨۡۘۖۖۜۡۢۚۦۧ۟ۜۢۧ۫ۖۜ۫ۗۘۘ۠۬ۛۢ۟ۛۗۤۡۤۦۙۖ۫۟ۙۖۚۙ۬ۦ";
                    x4Var = x4VarOooO0O08;
                    break;
                case 607413773:
                    str7 = f6.OooOOoo;
                    str10 = "۟ۘۦۘ۬ۛۨۧۛۨۘ۟۠ۤ۟۬ۖۘۜ۟ۘۘۨۦۘۦۢۗۙۤۡۘۦۚۖۘ";
                    break;
                case 677477181:
                    x4VarOooO0O07 = x4.OooO0O0();
                    str10 = "۟۫ۗۗ۬ۡۜۚ۠ۨ۠ۦۘۨ۠ۨ۫ۦۖۤ۠۫ۤ۠ۥۛۜۗ۬ۚۨۘۗ۟ۧ۟ۡۨۛۢۡۚ۠۟ۥۤۖۜۥۥۧۤۘۘۖۖۜۘ";
                    break;
                case 745454913:
                    str2 = f6.OooOO0o;
                    str10 = "۫ۛۥۘۙۨۧۘۨۙۨۘۖۜۥۚۖۥۧۜۨۜۡۥۛۧۘۨۡۜۙۢۤۚ۬ۦۖۥۛۢۘ۠۫ۗ";
                    break;
                case 768169534:
                    builder = new AlertDialog.Builder(this);
                    str10 = "ۡۤۖۘۜۗۙۥۚۘۢ۟ۖۘۨۚۦۖۥۗۨۚۨۚۧ۫ۜۚۥۘۧۥۧۘۡۤۡۘ۬۠ۙۧۜۘۨۜۖۛۨ۬۟ۦ۬ۤۙۡۘ۬ۡۧۘ";
                    break;
                case 880256433:
                    str10 = "۟ۧۤۚۗۨ۟ۛۖۘۢۥۧۨ۬ۡ۟۫ۥۚۗۙۙ۟ۡۦ۬ۨۚۖۘۗۧۡۘۢۤۡۨۢۚۚ۫۠ۛۙۜۚۢ۟ۧ۠ۢ۬ۛۙ";
                    bool = boolValueOf6;
                    break;
                case 908872746:
                    str10 = "۫ۖۤۗۧۦۦۦۦ۟ۡۚ۬ۚۘۖۘۗۛۨۘ۟ۧ۠۠ۘ۠۟ۤۦۘۧۙۧ۬ۛ۫ۧۜ۬ۗۡۦۤۖۥۘۢۡۤ";
                    x4Var = x4VarOooO0O06;
                    break;
                case 912491186:
                    String str17 = "ۤۗۛۨۧۜۧ۫ۘۗۤۨۘۥۦۘۚ۠ۥۘ۫ۥۘ۬ۢۛۥ۬ۛ۟ۤۧ۟ۘۚ۠ۡ۠ۥۛۥۘۡۦۗۦۡۖۥۘ";
                    while (true) {
                        switch (str17.hashCode() ^ (-539877128)) {
                            case -1044494936:
                                str17 = "۟ۙ۠ۧۡۡۘۨۘۛۜۢۚۗۤۦ۫ۙۚۤۙ۟ۢۤۖۤۧۤۦۖۜۘ";
                                break;
                            case 555503688:
                                str10 = "ۙۦۨۜۙۘۘ۠ۗ۫ۚۥۚۙۦ۫ۤۖۛۨۗۜۘ۬ۨۨۗۨۜ۠۠۟۬ۗۤۢۚۨۦۨۥۘۙ";
                                continue;
                            case 1405112180:
                                String str18 = "ۧۙۧ۬ۧۥ۬ۧۨۤۘ۠ۥۗۚۦۘۤ۠ۘۖ۬۠ۨ۟ۧۗۖۘۤۗ۟ۦۘۖۤۡ۬ۗۦۥۡۧۘ۬۬ۙۨۥۛ";
                                while (true) {
                                    switch (str18.hashCode() ^ 1408570170) {
                                        case -510387539:
                                            str18 = "ۛۧۡۜۧۖ۫ۗ۟۬ۧۤ۬ۦۥۘۚ۫ۜۡۥ۫ۥ۬ۖۘۨۖۖۘۧ۟ۡ۬ۜ۟ۜۘۜۘۤ۟ۨۛۛۧ";
                                            break;
                                        case 746719539:
                                            str17 = "ۤۢۙۛۗۖۢۘۜۘۙۗۚۨۜۘۦۙۙ۬ۡۥۘ۫ۜۘۘۥۨۧۘۘۜۜۘۤۦۡۘۛۡۗۘۛۖۘۡۙ۟ۛ۬ۧ۠ۡۗۦ۠ۘۘۡۧ۠";
                                            break;
                                        case 1206992028:
                                            str17 = "ۘۥۚ۟ۚۘۘۧ۫۬ۜۦۢۧ۠ۦۙۢۢۘۛۘ۬ۜ۫ۚۗۥۘۤۦۥ۟۠۠ۧۡ۬ۥۛۙ۫ۚۨ۬ۜۙۧ";
                                            break;
                                        case 1625763041:
                                            str18 = id != R.id.setting_swtich_open_run ? "ۘ۠۟ۢۗ۬ۗۜۧۘۚۗۘۘۜۤۖۘۛ۫ۗۘۡۦۘۙۘ۫ۗۤۜۙۖۦۘ" : "ۚۘۧۤۦۡۦ۠۬ۧۙۘۘۨۜۨۘۗ۫ۥۢۥۜۜ۟۫۫ۚۡ۬ۥۤۛۜۦ۟ۘۤۤۗۘۘۜۥ۟ۚۢۛۨ۟۟۫۟ۥۘۙۗۙ";
                                            break;
                                    }
                                }
                                break;
                            case 2005512292:
                                str10 = "ۧۨۧۜ۟ۘ۠ۖۨ۠ۛۘۛۛۦ۟ۤ۠۠ۗۜۗۨۥۤ۬ۡۘۗ۟ۡ۫ۚۨۡۖۤۧۛۤۙۜۧۘۧ۬ۖۘۖ۠۠";
                                continue;
                        }
                    }
                    break;
                case 981312046:
                    String str19 = "ۛۖۡۡۨ۬۫ۦۙۥۙۦۜۘۖۡۥۧ۫ۥۜۨۖۘۡ۟ۢۤۛۖ";
                    while (true) {
                        switch (str19.hashCode() ^ 51692148) {
                            case 5494442:
                                str10 = "ۧ۠ۤۥۧ۬ۛ۬ۖۘۚۗۥۘۨۛۚۚۛۘۥۘۛۡۨۥۙۢۖۡ۟ۥۥۜۘۚۨۨۘ۟ۖۖۘ۠ۦۜۘۢۢۦۙۖۨ۫ۚۨۘۖۨ۫";
                                break;
                            case 1333441738:
                                str19 = "ۜۧ۠ۤۗۨۘۨۛۚۡۤۨۧۚۘۙۘ۬ۦۚۗۛ۟ۢۡۙۚۥۥۧۘۥۙۖۥۗۨۦۚۤ۠ۘۘ";
                                break;
                            case 1823101131:
                                String str20 = "ۜۜ۟ۙۖۥۘۗۙۢ۠ۚۧۙۦۦۘۛ۫ۢ۟ۗۚۚۖۘۡۛ۫ۡۛۗۢۛۤۗ۟ۥۥ۬ۙۜۛ۫ۥۨۧۦ۬ۦۘ";
                                while (true) {
                                    switch (str20.hashCode() ^ (-1434175478)) {
                                        case -1912724083:
                                            str19 = "ۤۥۦۘۚۘۚۗۘ۟ۦۜۙ۫ۨۘ۠ۘۧۗۛۧۘ۫ۖۚۨ۠ۢۚۚۛۢۜۘۛۨ۠";
                                            break;
                                        case -1375232594:
                                            str20 = "ۡۢۨ۠ۧۨۘ۟۠ۢ۟۫۟ۛۖ۟ۤ۟ۧۧ۫ۜۛۨۘۘ۫۬ۤۥۥۘۜۖۥۘۥ۫ۘۤۖۨۧۙۥۘۦۗۡۘۙۘۦ";
                                            break;
                                        case 146372076:
                                            str19 = "ۨ۬۫ۥ۬ۙۖۘ۫ۨۛۨۗۦۦۘ۠ۚ۬ۖۘ۬ۗۙۙۤۦ۠ۨ۠۟ۘۘۘۚۦۤۤۖۘۥ۬ۘۘ";
                                            break;
                                        case 1612754713:
                                            str20 = !z ? "۬ۦۨۘۖۘۥ۫ۧۦۘۙ۟ۖۘۢۥۛۜۖۦۜۜۗۜۘۙ۠ۗۘۜۤۧۥۖۘۤۜۜ" : "ۗ۠ۥۘۖۙ۟ۤ۬ۜۗۡۧۘۢ۟ۚ۠ۥۜۤۗۚۨۜۦۘۖۦۥۘ۠ۡۜۘۦۨۜۘۢۨۗۥ۟ۜۧۨۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1829422089:
                                break;
                        }
                    }
                    break;
                case 993951747:
                    str10 = "ۡۖۜۤۙۤۡۤۨۤۥ۠ۙۥ۬۟ۗۜۤۥۧۗۤۙۙۖۖ۠ۘۘۨۤۗۥ۟ۜۙۧ۟ۜ۫ۥۦۢۖۗۤۥۜ۟ۚۢۗۜۘ";
                    bool = boolValueOf2;
                    break;
                case 1040426365:
                    str10 = "ۚۡۖ۬ۜۥۡۙ۠ۘ۟۠ۢۜۜ۫ۤۘ۬ۘۜۥۜۦ۠۬ۥۘۖۨۖۘ";
                    str9 = str4;
                    break;
                case 1079419280:
                    String str21 = "ۗۡۢۧۗۘ۬ۧۤۚۨۦۨۢۘۗۘۡۤۧۤ۠ۘ۫۫ۧۘۡۡۘۘ۠۬ۚۦۤۥۘ";
                    while (true) {
                        switch (str21.hashCode() ^ 413233161) {
                            case -1730142541:
                                str21 = "ۜ۫ۜۛۡۧۦۦۜۤۚۘۘۜۤ۫ۢۚۗۗۡۧ۟ۙۥ۫ۗۚۦ";
                                break;
                            case -1341771930:
                                break;
                            case -557667959:
                                str10 = "ۧۛۖۘۛۗۥۘۖۡۡۦۡۚۚۙۧ۬۠ۚۢ۠۠۟ۧ۬ۢۚ۫ۜۜۖۘ۟ۡۡۘۤۜ۫ۖۚۡۘۤۗۨۗۧۖۙۡۡۤۦۘۘۥۛ۬";
                                break;
                            case 676432351:
                                String str22 = "ۦ۠ۥۘ۠۟ۜۘۥ۟ۥۦۧۘۖ۫ۦۘۚۗۖۚۧۘۦۖ۠ۖۖۙۜۜۦۙ۬ۨۘۥ۬ۥۘۧۘ۫ۤۡۥۘۜۘۛ۬ۡۙ";
                                while (true) {
                                    switch (str22.hashCode() ^ 1326818037) {
                                        case -2049944055:
                                            str21 = "ۦۙۦۘۥۢۧۗۗۤۨ۠ۦۜۘۘۖۧۢۖۖۘ۫۟ۡۘ۬ۘۖۘۚۗۛ۬ۚۖۘۚۦۦۘۦۘۗۛۘۚۗ۫ۗۨۥۧۘ";
                                            break;
                                        case -907340233:
                                            str22 = !this.Oooooo.isChecked() ? "ۦۜۖ۫۬ۨۘ۟ۘ۬ۜۢ۠ۢۧۨۧۤۖۘۤۧۥ۟ۨۚۛۢۖۘۛۤۤۨۘ۟ۖۖۗۙۧۙۤۖۘ" : "ۚۢۤۚۨۥۥۘ۠ۙۥ۫ۚۧۖۘۦۙ۬ۦ۟ۗۧۡۘۡۛۘۘۡ۟ۜۘۢ۠۫ۖۢۜۘ";
                                            break;
                                        case -673146263:
                                            str22 = "ۥۨۛۗۤۚۖۘۦۘۙۗۜۘۥۨۡۛۥۡۘ۠ۙۚۢۗۦۘۤۦۛ۠۬ۚۘۖ۟۟ۢۧۙۥ۬ۚۗۡۗۦ۫ۘ۠";
                                            break;
                                        case -38613647:
                                            str21 = "۬ۤ۫ۢۢۨۘ۠ۨۨۚ۠ۛۛۖۢۢۜۘ۟ۦۜۖ۬۟ۥ۫ۘۖ۫۫ۤۙ۠۟ۦۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    str10 = "ۗۤۤۢۘ۫ۨۗۤۗۢۘۘۛ۬ۚۘ۬ۡۘۢۖ۟۬۠ۨ۠ۥ۫ۛ۬ۛۧۜۡۨۡۨ";
                    break;
                case 1146150117:
                    x4.OooO0O0().OooO0o(f6.OooOOo, Boolean.valueOf(z));
                    str10 = "ۛۖۨۘۦۤۡ۬ۧۖۘۤ۟۫ۧ۬ۚۤۗۜۦۘۡ۬ۢۚ۬۟ۡۖۘۛۘۖ۫ۦۗۨۧۜۚ۫ۨۜۘۘۤۡ۫ۨۖۘۛۗۖ۬۠ۖ";
                    break;
                case 1163960483:
                    str10 = "ۖۜ۟ۚۥۦۘۡ۟۬ۨۜۧۨۙۥۢۡۘۛۤۗۚۥۜۘۛۡۛۜۢۙۗۢۖۨ۠ۙۙ۬ۖۨۧ۬۫ۗۛۥۜۧ۫۠ۙ۫ۖۥۘ";
                    x4Var = x4VarOooO0O02;
                    break;
                case 1199169258:
                    r24 = this.Oooooo;
                    str10 = "ۨۤۥۘ۬ۛۘۙۗۧۤۘۖۘۙۨۜ۟ۗۛ۠۬ۨۡۛ۫ۤۦۘۨ۠ۙۥۦۘۚۧۡ";
                    break;
                case 1208536310:
                    y8.OooOO0o(101);
                    str10 = "ۜۖۙ۠ۗۜۗۗۨ۬ۜۚۤ۫۫ۜ۟ۡۘۨۚۙۨۥۘۘۦۧۦۖۧۜۘ۫۬ۛۙۨۘ";
                    break;
                case 1271009231:
                    String str23 = "ۛۜۡ۬ۚۥۘۧۢۗۛۤۘۘ۠ۜۥۧۙۘۘۢۤۜۙۛ۬۬ۚۖۘ۟۫ۚ";
                    while (true) {
                        switch (str23.hashCode() ^ 1978426502) {
                            case -1480388779:
                                break;
                            case -385539279:
                                String str24 = "ۖۨۥۗ۟ۥۘۤۜ۫ۢۜۖۘۘۨۗۡ۟ۦۘ۫ۧۖۙ۫ۘ۠ۢ۠ۚۧۨۘۦۚۦۚۢ۬ۤ۠ۤۤۢۗۘۛ۬۠۟۟";
                                while (true) {
                                    switch (str24.hashCode() ^ (-856207941)) {
                                        case -1132592787:
                                            str23 = "ۡۦ۟ۘۖۖۗۛۘۘ۬ۨۘۘۢۙۗۨۤ۠۫ۗۨۘۨۚۡۛۗۦ۬ۚۦۤۜۢۜۗۨۘۥ۠۟ۦۤ۟";
                                            break;
                                        case -783837772:
                                            str24 = "ۢۦۦۨۘۦۘۛۤۥۘۛۨ۬ۨۡۤۗۨۡۧۨۛ۫ۖۤ۬۬ۤۖۢۗۡۘۘۗۛۤۦۛ۠۠ۥۙ۫ۖۙۛ۬ۛ";
                                            break;
                                        case 753842453:
                                            str23 = "ۨ۬ۡۙۘۥۡۙۘۘۡۦۢۗ۬۬ۢۛۖۛ۟ۤۚ۫ۥۘ۟ۗۦۖۛۘۡۙ۟ۜۢۡ۟ۤۨۘ۠ۨۙۤۜۧ۠ۤ";
                                            break;
                                        case 1227293672:
                                            str24 = !z ? "ۛۤ۟ۙۘۗۢۦ۟ۛ۠ۘ۟ۨۗ۫ۜۘ۬۬ۘۘۙۨۧۘۧۨۘۙ۟ۗۦۡۘۘۡ۫ۛۡۘۦۛۦ۠ۦۧۡۘ۟ۧۚۘۚ۫ۖۡۘ" : "ۤۛۤۙۛۦ۬ۧۡۘۧۚۨۘ۫ۨۡۘۚۡۘۚۘ۬۟ۥۦۘ۫ۗۜۘۖۚۨۖۙۨ۟ۨۢۚ۠ۛ۟ۡۥۘۡ۫ۥۘۢۚۚ";
                                            break;
                                    }
                                }
                                break;
                            case 140618964:
                                str23 = "۬ۤۡۜ۠۫ۖۛۖۘۚۦ۫۠۠ۙۦ۬۫۟۬ۘ۬ۖۚ۟ۨۨۘۤۚ۟";
                                break;
                            case 187878275:
                                str10 = "ۡۚۘۘۗۡۜۡ۠ۘۘ۬ۗۛ۟۫۬ۤ۫ۖ۟ۧ۟ۥ۬ۤ۠ۗۗۤۖۧۘ";
                                break;
                        }
                    }
                    str10 = "ۙۗۦۙۙۦۖۨۡۘۡ۟۬ۡۨ۫۟ۡۡۘۧ۬ۘۘۚۛۘۘ۟ۥۥۦۘۗ۠ۙۤۨۜۘ";
                    break;
                case 1469013606:
                    viewInflate.findViewById(R.id.dialog_save_command).setOnClickListener(new OooO0O0(this, editText, alertDialogCreate));
                    str10 = "ۢۥۢۧ۫ۦۘۦۜۧۘۧۛۤۤۘۜۘۛ۬ۡۚۥۦۘۤۗۡۘۨۨۨۘۥۖۡۘۚۤ۟ۨ۫ۖۘۥۡۧۥۤ۟ۢ۠ۜۥ۠۟ۥۡۘۖۦ۟";
                    break;
                case 1509227167:
                    boolValueOf8 = Boolean.valueOf(z);
                    str10 = "ۛۥۦۘ۟ۚ۫۫ۘۢۛ۬ۖۢ۠۫ۘۥ۬ۜۢۦۘۦۗۥۘ۠ۤۨ۠ۛ۬ۨۖۚۥ۠ۥۘۧۧۦۘ۫ۢۤۙۧ۫ۖۥ";
                    break;
                case 1521627183:
                    x4VarOooO0O02 = x4.OooO0O0();
                    str10 = "ۘ۬۠ۖۘۙۗۧ۫ۤ۠ۧۤ۬ۖۘ۟۬۠ۙ۠ۘۘ۟ۛ۫ۖۢۦۜۤ۫۬۬ۗۖ";
                    break;
                case 1733487361:
                    str8 = f6.OooOo0O;
                    str10 = "ۘ۬ۖۙۘۤۜۨۛۚۘۦۥۦۦ۟ۥۚۧۦۘۙ۠ۥۗۗ۫ۥۙۢۤۗۥ۟ۥۖۘۨۦۚۘۜۙۘۚ۫ۜۛۤۛۥ۫ۧ۟ۡۘ";
                    break;
                case 1899162334:
                    str10 = "ۜۨۧۘۛۙۘ۫ۢۨۘۦ۟۟ۚ۫ۨۘۜ۠ۖۘ۫۫۟ۥۛ۫ۧۡۘۤۗۡۘۤۗۜۗۙ۟";
                    break;
                case 1905641295:
                    boolValueOf2 = Boolean.valueOf(z);
                    str10 = "ۛ۠ۗۧ۟۟ۡۨ۬ۚ۟ۤۙ۟ۡۥ۠ۜۨ۬ۧۛۜۦۤۖۛۨۢ";
                    break;
                case 1943940373:
                    str10 = "ۛۡۥۘ۫ۦۛۖ۬۫ۛ۬ۜۘ۫ۥۗۙۦۧۦۤۨۘ۬ۡۜۨ۠۫ۜۦۨۘ۟ۧۧ۟ۤۧ۬ۨۘ۟ۡۗۦۖۥۢۖۨۜ۬ۨۘ";
                    r32 = r24;
                    break;
                case 1977878352:
                    x4.OooO0O0().OooO0o(f6.OooOOo0, Boolean.valueOf(z));
                    str10 = "ۧۜۡۘۢۦۨۦۦۘۗۖۛۢۦۧ۫ۥۦ۬ۡۡۘ۟ۤۦۘۛۦۧۙ۟۬";
                    break;
                case 2089094869:
                    str10 = "ۗ۟ۡۛۧ۠۫ۢۥۢۢۢۧ۫ۛۘۛۨۘۙ۠۟ۢۧۛۤۖۢۨۢۤ";
                    bool = boolValueOf;
                    break;
                case 2121894641:
                    editText.setText(x4.OooO0O0().OooO0Oo(f6.OooOo00, "logcat -v time"));
                    str10 = "۬ۡ۫ۦۖۜۨۚ۟ۨۖۘۤ۫ۙۦ۬ۦۘۦۘۖۘۦۚ۠ۘۙۜۦۛۜۘ";
                    break;
                case 2134771939:
                    str10 = "۟ۥۧۘۢۚ۠ۖۗۤ۫ۨۡ۠۠ۦۢۘ۬ۥۡۛۤۜۤ۫۠ۤۚ۠۫ۨۧۗۖۥۘۛۢ۫۬۬ۨۘۚۚۤۘ۟ۧ۬ۥ۠ۡۙۡ";
                    editText = (EditText) viewInflate.findViewById(R.id.et_adb_command);
                    break;
                case 2141787933:
                    alertDialogCreate = builder.create();
                    str10 = "ۤ۠ۢۧۘۜۘۗۘۡۘۥۚۧ۟ۘۙ۟ۜۜۘ۟ۡۥۘۜ۟ۜۘۢۤۦۜۚۢۢۡۗۨۗۡۢۙۜۘۢۦۜۘ";
                    break;
            }
            return;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "۠ۦۖۘۥ۬ۖۤۖۡۛ۬ۧۘۘۡۨۢۛۧۡۘ۟۬ۜۘۚ۫۟۬۠ۥ";
        Intent intent = null;
        ScriptLog scriptLog = null;
        File file = null;
        File[] fileArrListFiles = null;
        k4.OooO00o oooO00o = null;
        Intent intent2 = null;
        Intent intent3 = null;
        Intent intent4 = null;
        while (true) {
            switch ((((str.hashCode() ^ 508) ^ 890) ^ 82) ^ 1537236505) {
                case -2105194454:
                    scriptLog.setFile(file);
                    str = "ۨ۠ۘۛۦۧۘ۠۫ۘۘۡۛۚۘ۫ۦۘۧۜۙۛ۟ۨۘۘۚ۟ۚۚۧۙۙۥۘۗۧۘۘۙۦ۬ۚ۫ۗۗۦۗ";
                    continue;
                case -1967363957:
                    str = "ۜۧ۬ۗۖۙۨۡ۠ۥۚ۬ۜۘۦۙۛۨۘ۫ۜ۬۬۠ۨۥ۬ۨ۫ۖۙۙۨۡۢۦۛۡۥۡۢۨۘ";
                    continue;
                case -1878907727:
                    OooOOO0();
                    str = "ۗۙۨۜۧۥۘۖۨۨۘ۬ۤۥۜۡۢۨۨۧ۠ۧۙۤ۬ۤۗۚۖۘ۫ۜۘۘۤۦۦۘۧۚۘۘۙۜۜۘۦ۫۬";
                    continue;
                case -1815157566:
                    String str2 = "ۗۚ۠۬۟ۗ۬ۜۖۘۡۗۖۘۗۨۖ۫ۘۛ۟۫۫ۦۜۘۢۨۦۥۘ۫";
                    while (true) {
                        switch (str2.hashCode() ^ 844759304) {
                            case -2065743476:
                                str = "۫ۙۧۤۛ۫ۨۡۘۘ۟ۚۛۥۧۘۦۜۧۘۦۗۦۚۛۨۘۡۚۡۢۥ۫۫۠ۖ۟ۥۜۘ";
                                continue;
                            case 515292365:
                                str2 = "ۧۤۗۖۨ۬۬ۡۘۜۗۖۘۖۗۦۘۛۜ۠ۚ۬ۤ۟۫۬ۘۖ۬ۥۘۨۥۤۙۘۦۡۘۜۨۦۨۧۨ۫۟ۘ۬ۡۘ";
                                break;
                            case 891389757:
                                String str3 = "ۥۙۨۘۚۥۧۘۢۡ۫۠۬۠۬ۜۚۤۢۧۖ۟ۥۚ۠ۗ۬ۨۦۘ۠ۜۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 742183068) {
                                        case -2100268624:
                                            str2 = "ۦۡۤ۫۠۬ۛۤۢۚ۠ۖۚۧۧۢۧ۟ۙۜۡ۫۠ۦۘۘ۟ۖۦۘۛۥۜۥۖ۟ۦۚۧۚۖۚۜ۠ۢۗۤۧ";
                                            break;
                                        case -36587726:
                                            str3 = "ۧۢۘۘۤۡۧۘۥۡۖۘۖ۠ۦۘۦۚۘۘۙ۬۫ۥۗۗۢ۬ۘۘۗ۟ۨۘۚۜۜۧ۬۬ۗۗۘۘ";
                                            break;
                                        case 447064430:
                                            str3 = fileArrListFiles.length == 0 ? "ۡ۟ۘۜۙۛۥۛ۫ۛۡ۫۟ۗۡۢۥۧۜۦۜۘۚۤ۫ۡۛۛۡ۟ۦۥۦۦۘۗۡۤۦ۟ۜۤۨۡ" : "ۜۡۜۘۤۙۘۘ۟۟ۖۘۥۙۖۧۦۖۘۤ۠ۖۡۚۦۘۤۛۜ۫ۘۦۧۜۘۘ۬ۧۦۘ۬ۤۨۦ۫ۛۚ۠ۡۨ۫ۡۘۗ۠ۙۡۗۘۘۡۖۨۘ";
                                            break;
                                        case 1765886191:
                                            str2 = "۫ۨۗۡۤۚ۬ۗۗۚۗۦۘۢۙۡۘۘۙۨۘۢۢ۫ۢۘۤۤ۟ۗۙۗ۟";
                                            break;
                                    }
                                }
                                break;
                            case 1213988676:
                                str = "ۧۛۛۚ۠ۘۘ۫ۦۥۘۧۧۧۤۨۘۗۤۦۚۚۧ۟ۜۦۥۢۧ۠ۙ۬ۚ۬ۚۛۦۦۗۨۘۘ۟ۥۨۧ۟۠۠ۢ۫";
                                continue;
                                continue;
                        }
                    }
                    break;
                case -1796427002:
                case -957696611:
                case -71013246:
                case 465891487:
                case 1269794507:
                case 1481882437:
                case 1908560142:
                    str = "ۢۨۨۗۦۨۜۦۤ۫ۧۘۦ۟ۤ۬ۤۘۘۙۘۦۘۛۖۧۘۜ۬ۡۡۡۥۘ۠ۦۘۘۧۨۦۘۤۜۛۥۖۘۘ";
                    continue;
                case -1777550607:
                    str = "۠ۨۖ۫۫ۜۢۜۤۨۨۢۤۦۡۙۚۚۥۗۥۙ۫ۚۜ۫ۦۘۙ۠ۙۛۥۨۗ۠ۖۘۡ۫ۨۘ۠ۥۨ۬۟ۙ۬ۙۦۘ۟ۡۢۗ۟";
                    continue;
                case -1585595187:
                    str = "۠۟ۙۦۗۜۘۨۦۛ۠ۨۢۛۥۥۤ۠۫ۢۦۤۢۗ۟ۤ۠ۚ۟ۦۦۘۥۥۖۘۙۜ۫";
                    file = fileArrListFiles[0];
                    continue;
                case -1579317099:
                    AppContext.OooO00o().OooOO0(R.string.No_ScriptLog);
                    str = "ۢۨۨۗۦۨۜۦۤ۫ۧۘۦ۟ۤ۬ۤۘۘۙۘۦۘۛۖۧۘۜ۬ۡۡۡۥۘ۠ۦۘۘۧۨۦۘۤۜۛۥۖۘۘ";
                    continue;
                case -1442338237:
                    Arrays.sort(fileArrListFiles, new t8());
                    str = "ۜۥۛۛۚۛ۟۫ۥۥۖۧۘۛ۬ۜۘۙۦۤ۫ۢۜۢۨ۟ۢۥ۟ۚۙۘ۫ۢ۬ۡۖ";
                    continue;
                case -1391912703:
                    str = "ۜۧ۬ۗۖۙۨۡ۠ۥۚ۬ۜۘۦۙۛۨۘ۫ۜ۬۬۠ۨۥ۬ۨ۫ۖۙۙۨۡۢۦۛۡۥۡۢۨۘ";
                    intent3 = intent4;
                    continue;
                case -1343117038:
                    str = "ۡۥ۫ۡۨ۠ۡ۫ۥۘۧۛۥۢ۫۬۫ۗۨ۫ۨۖۘ۟ۦۛۤۧۗ";
                    continue;
                case -1121775201:
                    str = "ۧ۬ۨۨۧۙ۫ۢۨ۠ۡۢۨۧۢۤۤ۫ۛۡۘۘۜۗ۟۬ۡۘۢۗ۬ۙۨ۠۫ۜۤۚۛۛ۠ۡ۟۟ۖۥۘ۬ۥۖۘ";
                    fileArrListFiles = new File(h6.OooO0O0).listFiles(oooO00o);
                    continue;
                case -972800494:
                    intent4 = new Intent(this, (Class<?>) EditDeviceNameActivity.class);
                    str = "ۚ۟۫ۢ۫ۗۢۧۘۜ۠۬۬ۥۙۜۙۘۘۡۥۤۡۦۦۘۖۖۥۤۥۘ";
                    continue;
                case -692535592:
                    intent.putExtra(f6.OooOoO, true);
                    str = "ۙۨۨۧۜ۠ۚ۫ۥۘۗۚۙۘۢۖۘۙۛۧۥۙۥۘۛ۬۫ۘۗۖ۠۟ۛ";
                    continue;
                case -556560750:
                    intent.putExtra(f6.OooOoOO, scriptLog);
                    str = "۟ۚۜۘ۫ۜۚۚۘۡ۬ۛۜۘۡ۫ۧۥ۠ۚۙ۫ۥۘۨ۫ۛۡ۠ۨۡۥۢۗ۠۟ۨ۟ۗۘۘ۟ۘۡۘۘ۠ۤ۫ۗۚۙ۠ۥۥۘۤۘ۟";
                    continue;
                case -323661881:
                    scriptLog.setSize(k4.OooO0Oo(file.length()));
                    str = "ۡۤ۟ۤ۟۠ۦۙۙ۬ۥ۠۠ۙۜۘۙ۟ۘۚۗۦۜۡۥۦۗۘۘۥۥۢ";
                    continue;
                case -65819746:
                    startActivity(intent3);
                    str = "۬۬ۦۡۗۘۦۘۘ۟ۢۥۘ۟ۘۧۜۚۡۘۢۛۚۤۨۚ۫ۢ۠۠ۦۢ";
                    continue;
                case -49428432:
                    scriptLog.setName(file.getName());
                    str = "ۢۘۥۘۜۚۨۛ۬ۥۘۧۛۗۗۢۨۥ۠۟۟ۧۥ۫۟ۧۢۦۥ۬۬۟۠ۘ۫ۥۧۦ";
                    continue;
                case -21187908:
                    str = "ۗۡۛۨۥۚۚۡۥۘۗۙ۬ۦۖۦۘ۟ۥۢۧۤۖۨۗۢۛۡۡۘۢۚ۫ۖ۬ۘ۫ۦۖۘۡۥ۟ۛ۬ۘۛۖۜۗۖۘ";
                    scriptLog = new ScriptLog();
                    continue;
                case 194483191:
                    switch (view.getId()) {
                        case R.id.btn_setting_scriptlog /* 2131296826 */:
                            str = "ۡۖۤۖۗ۠ۡۨۥۘ۠ۥۙۢۡۨۘۚۙ۫ۧۘ۠ۗ۬۫ۘۛۧۙۛۚۙۗ۟ۧۜۤ۫۠ۢۖۛۘۘۗۜۙۘۜۥۘۥۡۜ۠۟ۤ";
                            break;
                        case R.id.button_setting_feedback /* 2131296831 */:
                            str = "ۢۨۥۘ۟۬ۘۘ۟ۦۧۨۚۘۘ۬ۘۧۘۗۧۗ۟ۥۚ۟ۢۗۗۨۘۗۗ۬ۧۡۜۘۢۡۥۘ";
                            break;
                        case R.id.ll_device_name /* 2131297117 */:
                            str = "۟۠ۧ۟۟ۘۜۡۘۘۚۡۥۙۡۘۘۧۤۥۘۤ۬۬ۦۧۥۨۧۘ۠ۡ۫ۧۦۤۛۡۚ";
                            break;
                        case R.id.ll_project_number /* 2131297120 */:
                            str = "ۧۧۢۥ۫ۙۦۥۗۗۛۦۘۦ۠۟ۗۙۥۥ۬ۢۨۨۘۘۢ۬ۗۙۡۦۘۛۜ۠ۛۥۥۘۥۡ۫ۚۧۦۘۡۨ۬۫ۥۙۢۘ۟ۤۨۘ";
                            break;
                        case R.id.setting_button_exitapp /* 2131297262 */:
                            str = "۫۟۬ۜ۬۫ۜۖۘۨۗ۫۬ۗۡۘ۠۟ۙۢۜۦۘۥۥۡۘۛۗۦ۠ۧۖۛۚ۠ۘۢۦۘۚۛۖۘۙۢۜۢۜۚۛۥۗ۬ۤۙۖ۬ۥ";
                            break;
                        case R.id.setting_button_update /* 2131297264 */:
                            str = "۬ۛۡۙۧۡۘۜ۠۫ۦۨۡۘۦۢۧۖۘۘۨۥۖۘۨۘۡۡۖۧ۠ۜ۟ۧۚ۬ۘۘۦ";
                            continue;
                        default:
                            str = "۠ۚۖۢۢۛ۠ۡۛ۫۟۠ۙۧ۫۠ۗۘ۫ۦۘۜۥۧ۟ۡۡۘۗۜۢۛۖۜۖۘۧۘۙ۫ۥۡۢ۫ۦ۬ۨ۟ۜۢۥۨۘۦ۫۠";
                            break;
                    }
                    break;
                case 343412275:
                    return;
                case 499601490:
                    intent2.putExtra(FeedbackActivity.class.getCanonicalName(), m7.OooO0o0().OooO0O0);
                    str = "ۘۜۧۛۖۨۥۙۖۘ۬۠ۥۘۗۘۦۘۛ۫ۖۘ۠ۢۡۘۗۜۧۘۘۙۨۘۚۜۘ۟ۡۢۡۥۥۘۖۛۨ۬ۥۘۖۛۡۗۖۖ";
                    continue;
                case 511441826:
                    StudioBindClearActivity.OooO(this, AppContext.OooO00o().OoooOoO);
                    str = "ۥ۫۠ۦۖ۬ۙۖۘۜۙۙۚۙۥۘ۫ۧۛۗۘۖۘ۬۟ۜۘۡۨۧۜۛۘۘ";
                    continue;
                case 639104739:
                    String str4 = "۫ۙۜۘۙۧۤۛۦۥۦۧۦۘۡۚۛۘۦۧۢ۬۟ۚۨۚ۫ۗۜۦۘۤۖۨ۟۬ۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1841429287)) {
                            case 873573521:
                                String str5 = "ۢۗۡ۫۫ۢۗ۬ۗۨۨ۫ۘ۟ۦۖۙۚۤۥۖۜ۠ۜۘۗ۠۠ۘۧۥ۫ۖۡۘۖۡ۫ۥۜ۫ۛۛۨۘ۬۠ۥۘۥۥۡۘ۫۫ۘ۠ۡۨۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-158115478)) {
                                        case -1696632478:
                                            str5 = fileArrListFiles != null ? "ۦۘۦۨۛ۫ۘۢۙۨۜۤۜۤ۬ۗۛۡۤۙ۠ۡۥۘۘۧ۬۟ۖ۬۠ۥۢۖۤۚۖۘۖ۟ۨۘۢۨۚ۟۠ۛۖۥ۟" : "ۘۗۡۡۦۖۘۗۜۚۗۗ۫ۢۨۗۦۙۚ۬۟ۘۘۡۦۚ۠ۤۦۘۚۘۖۘۛۚۨ۬ۛۜ۫ۛ۠ۤۙ۬";
                                            break;
                                        case -238963989:
                                            str5 = "ۧ۬ۗ۬ۢۚۚۗۡۦۘۘۜۡۤۚۚۤۢۚ۟۬ۤ۠۠ۗۢۖۘۘ";
                                            break;
                                        case 954240751:
                                            str4 = "ۘۘۦۘۙۙۘۖۚ۫ۗ۫ۨۘ۠ۡۖۘ۫ۢ۠۫۠ۨۘ۬ۖۤۙ۟۬۬۟ۡۖۡۥۘۗۖۜۘۚ۟ۜۦۦ";
                                            break;
                                        case 1987694628:
                                            str4 = "۠ۦۘۡ۟ۜۘۗۘۘۘ۟ۛ۬۟ۢۚۘ۠ۧۜ۠۠۟ۜۧۤۜۨۘۗۚۢ۠ۗۖۘۧۛۧۤۜۤۙ۟ۜۢۖۜۘۚۜۦ";
                                            break;
                                    }
                                }
                                break;
                            case 1285436123:
                                str4 = "ۤۙ۟ۦۚۦۘۘۥۘۚۡۘۘۡۧۘۨۧۦۨۡۦ۟ۢۦۨ۟ۨۘ۟ۨۖۘۖۛۡ۫ۡۡۚ۟ۜۤۛۨۘۡ۠۟ۘۛۦۛۜۜۡ۟ۢ";
                                break;
                            case 1753100869:
                                str = "۟ۥۜۘ۠۫ۡۘۧ۬ۧۦۙ۠۬ۖۧۦۦ۬ۘ۠۟ۖ۠ۙۡۥۘ۬۠ۧۜۙۡ۫۬ۤ۟۬ۙ۟ۖۖۥۖ۟ۜۨۡۥۦ";
                                break;
                            case 1983079095:
                                break;
                        }
                    }
                    break;
                case 712583927:
                    str = "ۘ۬ۥۘ۠ۚۥۗۢۢۦۛۧ۟ۤۦۘۚ۠ۧۢۤۡۘۘۖۦۘۛۜ۟ۙۨۜۦ۫ۘۘۚۢۖۘ";
                    oooO00o = new k4.OooO00o(".log");
                    continue;
                case 753510621:
                    str = "ۦۜۖۦۘۨ۠ۤۨۨ۠ۜ۬ۛ۠ۛۜۦۖۚۦۨۖ۫۫ۥۘۦۗۧۢۨۙۚۗۤۨ۟ۧۦۡۘۘ۬ۨۘۢۦۘۘ";
                    intent3 = intent;
                    continue;
                case 773804265:
                    startActivityForResult(intent2, 1);
                    str = "۟۫ۗ۠ۡۛۜۢۖۘۦۛۧۛۗۧۙۦۘۡۙ۬ۥۥ۫۠ۖۧۢۡۖ۬ۨۘۤۨۜ۠ۚۥۘۢۜۢۢ۫ۘ";
                    continue;
                case 839861472:
                    AppContext.OooO00o().OooO();
                    str = "ۙۨۥۦۖۛۙۦۚ۠۬ۦ۬ۦۜۛۚۖۨۘۤ۫۫۬ۛۢۚۥۦۘۜ۟ۖۛۦۡۘۢۨۙۨۙۨۘ";
                    continue;
                case 1615319398:
                    str = "ۗۜۖۘۛ۠ۧۜ۠ۡۢۨۡۘۤۢ۠ۘۛ۟ۧ۠ۗ۠ۗۘ۫ۗۘۘۜۙۚۚۛۢۨۚۨۘ۬۟ۙۙ۟۫ۚۙۜ۟ۖ۟ۖ۠۠ۘۨۧۘ";
                    intent2 = new Intent(this, (Class<?>) FeedbackActivity.class);
                    continue;
                case 1697446867:
                    String str6 = "ۨۖۧ۬ۘۧۨۗۗۡ۬ۜ۠۟ۡۘ۟ۨ۫۬ۖۖۘ۬ۚ۠۬ۘۛ۬ۙۖۧۨۧۘۘ۟ۨۘۚۢۧۘۛۤۥۘۖۜۗۜ";
                    while (true) {
                        switch (str6.hashCode() ^ 1175618001) {
                            case -2024462526:
                                str = "ۙۘۖۙۗۜۥۧۜۡۤۦ۠ۛ۠ۖۜۡ۫ۦۧ۬۟ۘۘۡ۠ۧ۬ۙۡۘۖۛۗۗۚۥ";
                                continue;
                                continue;
                            case -824714500:
                                str = "۠ۨۘۘ۠۬ۛ۫ۡۧۘۥ۠ۜۘ۠۟۬ۖۡۜۖۢۦۘ۬ۖۖۘۗ۟ۨۘۤ۬ۢ";
                                continue;
                            case 962120264:
                                str6 = "ۤۜۖۘۢ۟ۖۘ۬۠ۤ۫ۨۧۘۖۦ۟ۙۥۤۤۚۨۘۥۚۤ۬ۜۥۘۢۦۖۘۦۥ۬ۧ۫۟ۘۛۚ۬ۘۦۘ۬۟ۖۤ۬۬ۛۗۡۚ۟ۙ";
                                break;
                            case 1505393561:
                                String str7 = "ۦۜۨۘۘۘۨۦ۬ۗۘۘ۬۬۠ۥۚۧ۟۠ۗ۫ۨۦۜۧۜۢۢ۬";
                                while (true) {
                                    switch (str7.hashCode() ^ (-32298619)) {
                                        case -1808448366:
                                            str6 = "ۧ۫۫ۙۤۘۘۦۦ۟ۖۗۡۧۦۤۗۥۘۛۛۛ۬ۦۗۗۧۚ۬ۖۘۦۤۢۥ۟۠۫۬ۨۤۦۨۘۘۘۢۢۦ";
                                            break;
                                        case 1209483658:
                                            str7 = TextUtils.isEmpty(AppContext.OooO00o().OoooOoO) ? "ۥۗۡۥۢۙۙۛ۠ۘۡۗ۫ۥۘۗۗ۟۠ۛۜ۟ۘ۫ۥۨۜۘ۠ۚۖ۟ۘۢ۫۫ۥۘۖۤۨۚۡۘۘ" : "ۢ۟ۤۗۗۘۘۖۧۨۘۖۡۢۚۦۖ۠۬ۚۤ۫۫ۡۨۨۘ۠ۙ۬ۙۥۘۘ";
                                            break;
                                        case 1425354896:
                                            str6 = "ۘۖۥۘۨۖۨۚ۬ۙ۠۫ۧۡۚۗۡۗۧۙۛ۬ۥ۠ۨۡۤۗۧ۫ۖۘۜۨۡ۬ۢۧ۠ۡۜ۟۟ۘۘ";
                                            break;
                                        case 1803611350:
                                            str7 = "۫ۘۛۢۥ۫ۙۤ۬ۗۢۖۘ۫۠ۡۥۙۖۘۛۖۘۘۜۤۨۘۖۡۢۙ۫ۥۚۡۖۘۤۦۤۛۜۖۦۙ۬ۙۗۦۘۖ۫ۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1722744430:
                    break;
                case 1796275428:
                    intent4.putExtra("device_name", this.o0OOO0o.getText().toString());
                    str = "ۧۗۗۦۢۨۤۡۘۗۚۖۘۡۘۧۘۗۥۡ۫ۢۥۘۧۦ۟۟ۨۦۘۡۡۧۘۘۗۘۘۨۡۖۘ";
                    continue;
                case 1823992663:
                    intent = new Intent(this, (Class<?>) ScriptLogDetailActivity.class);
                    str = "ۧۘۙۦۛۨۘۗۛۦۤۢۢۚۡۦ۠ۙۗۗۘۘۤۘۢۙۡۖۢۢۡ۫ۥۘۘۥۗۛۤۚۗۛ۫ۛۦ۬ۤۙۨۘۦ۫ۛۨۡۘ";
                    continue;
                case 1858879886:
                    StudioBindActivity.OooOO0o(this);
                    str = "ۧۦۘۘۜۘۡۘۚۜۙۧۡۦۦۨ۟ۥۙ۫ۘ۟ۤ۬ۘۛۡۘۜۘ۠ۚ۠ۦۛۜۦۤۜۚۧۜۘۘۡۦۘۨۚۡۘۙۤ";
                    continue;
            }
            str = "ۘ۟ۢۖۛ۠ۜ۫ۧۨۖۘۚۡۘۘۧۙۖۖۡۨۘۨۙۤۢ۠ۘۙۙ۬ۦۜۗ۬ۛ۟۠ۜۘۢۡۢۡۚۦۘۢۗۘۘۖ۫۫ۤ۫ۨۘ";
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۖۡۙ۫۟ۗۧۘ۬۬ۡۙۘ۠ۘۘۨۨۘۘۘ۬ۦۨۘۡۛۛ۟ۡ۬ۙ";
        while (true) {
            switch ((((str.hashCode() ^ 852) ^ 557) ^ 868) ^ (-1296620232)) {
                case -2121773189:
                    str = "ۜۥۚۖ۟ۨۗۖۜ۟ۡ۫۠ۚۖۙۥۘۙۡۘۘۜۗۢۙۢۦۘ۠ۗۚۘۚۥۘ۠ۘۛۨۙۥ۫ۦۜۘۜۜۡۘۥۚۦۙ۠ۡۥۙۘ";
                    break;
                case -1454702159:
                    super.onCreate(bundle);
                    str = "ۨ۬ۖۘۛ۟ۙۛ۟ۙۦۨۘ۬۟ۥۘۥۤۥۘ۠ۦۧۘۡۥۦۘۖۡۗۦۨۦۘۚۘۦۘۘ۠ۘۘ";
                    break;
                case -264748175:
                    str = "۠ۚۡۘۚۛۨۘ۠ۙۦۤۖۢۡۥۜۖ۫ۦۛۖۙۤۧۦۧۗۧۡۤۧۙۡۙۢۡۘ۬۠ۨۙۦۚۢ۫ۘۜۥۙۚۥۘۙۗۗ";
                    break;
                case 499259762:
                    return;
                case 744420678:
                    setContentView(R.layout.activity_setting);
                    str = "۟ۦۤۖۢۡۘۦۙۨۘۜۖۜۗ۟ۥ۬ۦۥۘۖ۠ۙۡۜۢۢۜۜۘۦۜۦۘ۬ۤۥۡۤۨۘۥ۟ۨۚۧ۠";
                    break;
                case 2039319745:
                    initView();
                    str = "ۙ۟ۚۡۘۖۘ۫۟۬ۥۜۘۖۨۦۘ۟ۗۜۘۗ۫ۥۘۦۜۘۜۥۧۥۙۦۘۚۖۧۘ۟۠ۗ۠ۤۦۙ۠";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        OooOO0 oooOO0 = null;
        String str = "ۤۗۡۥ۟۫۠۬ۖۙ۬ۘۡۥۛۨۚ۫ۘۦۖ۠ۜۧ۠ۛۙۙۗۦ۬ۥ۟۟۟ۙۤۙۜۘۗ۠ۦۘۤۧۡۚۘ۟";
        while (true) {
            switch ((((str.hashCode() ^ me.o0000Ooo) ^ 185) ^ UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE) ^ 663459193) {
                case -2022624361:
                    kc.OooOo00().OooOo0();
                    str = "ۧۙ۠۟۟ۧۖۛۨۖۡۛۗۥ۬۫ۙۘۘ۬۟ۜۘۡۖۨۤ۫۫ۤۘۘ۫۠۟ۦۛۨۘۙۨۡۛۢۢ";
                    break;
                case -769583444:
                    super.onDestroy();
                    str = "۬ۦ۫ۡۤۡۘۘ۠ۤۘۨ۠ۘۛۖۘۤ۬ۜۨۨ۟ۧۛۥ۟۫ۚۖۚۜۘ";
                    break;
                case -723727966:
                    return;
                case -704771475:
                    l10.OooO0o().OooOoO0(this);
                    str = "ۗ۫۫۫ۙ۫ۨۥۡۖۧۘۘۜۛۤۢۗۨۘۧۥ۫ۜۗۜ۟ۘۡۘۥۢۥۘۜۘۢۤۡۤۛۦۦۘۥۖۘۘۚۦۥۖۘ۟ۙ۬";
                    break;
                case 119253528:
                    str = "۟۟ۡۥۥۥ۠ۥۧۘ۬ۘۘۘۛ۫ۜۜ۠ۖۧۤ۬ۗۘۜۘ۬ۜۨۘۥۖ۬";
                    break;
                case 1036283995:
                    oooOO0 = this.o00ooo;
                    str = "ۜۖۡۘۥۨۨۢ۫ۛۚۖۜۨۖۨۦۚۖ۬ۛۤ۠۟۠ۚۙۨۨۗۡۘۧۧۦ۫ۜۚۖ۬ۖۘۛۢۡۘ۟ۖۧۘۤۤۢ";
                    break;
                case 1645937215:
                    String str2 = "ۦۥ۟ۥۗۜۡۥۡ۬ۖۨۡ۟ۘۧۢ۬ۦۧ۬ۙۨۘۥۧۥۜۙۜۗۧۚۤۗۥۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-2060237813)) {
                            case -2113732262:
                                str = "ۥۖۘۦۚۨ۬ۚۘ۟ۨۘۢۥ۬ۥۘۗۖۤ۫ۢ۫ۦۘۧۡۘۘۡۡۥۘ۟۬ۨۚ۫ۜ";
                                continue;
                            case -1627347494:
                                str2 = "ۡۦۚ۬ۚۜۘۨ۟ۡۘ۫ۛۦۚ۫۠ۨۘۙۗۡۘۗۢ۬ۖۖۡۛۖۗ";
                                break;
                            case -1168639686:
                                str = "ۖۛۦۘۛۖ۫ۜ۫ۤۥۥۛ۠ۗۙۢۙۜۘۢۨۘۘۜ۬ۡۘۧ۬ۗۚۡۥۘ۫ۧۙ۠ۦۡۥۦ۟ۢۙۦۘ";
                                continue;
                            case 1565762655:
                                String str3 = "ۛ۬ۡۘۨۚۦۘ۠ۛۥۘ۠ۚۧ۠۠ۨۘۥۘۥۘۤۥۨۘۦۥۜۛۦۗۨۦۢۜۙ۫ۨۡۨۘۚۤۘۘۢۘۡۚۙۡۡۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-2093572557)) {
                                        case -370216333:
                                            str2 = "ۦۥۗ۟ۘۜۦۛۨۘۘ۠۟۠ۗۖۘۚۚۘۘۢۦۨۜۤۤۚۢۙۗۛۡۘۘ۫۫ۧۚ۬ۗۗ۫۫ۦۙۥۧۡ۫ۥ";
                                            break;
                                        case 942348098:
                                            str2 = "ۥۙۜۘۜۥ۫۟ۙۥۗۜۧۙۙۡۘۤۤۨۗۡۨۘۦۧۘ۬۟ۜۘۡ۫۠ۦ۟۠۠۟ۨۘۜۜۦ۠۫ۦۖ۟ۘۖۧۘ";
                                            break;
                                        case 1266774443:
                                            str3 = oooOO0 != null ? "۟ۚۢ۫ۚۨۛۨۘۖۢۗ۫ۤۨۘۨ۫ۜۦۥۢۦۡۦۘۥۙۦۡۙ۠" : "ۡ۫ۙۢۚۖۘۢۙ۠۟ۖ۫ۤۢۛۗ۟ۦۜۖۘ۬ۤۡۘ۟ۥۘۡ۬ۖ";
                                            break;
                                        case 1582926619:
                                            str3 = "ۗۥۛۛۛ۠ۡۖ۟ۜۤ۬ۢۢۡۢ۟ۦۦۜۖۘۘۗۗۜ۟ۢۤۗۢۦۜۙ۟ۙۛۚۖۙ۟۠ۖۘ۟ۖۥۘۢ۫۫ۜۚۡۘۤ۬ۦۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 1800825503:
                    oooOO0.cancel();
                    str = "ۖۛۦۘۛۖ۫ۜ۫ۤۥۥۛ۠ۗۙۢۙۜۘۢۨۘۘۜ۬ۡۘۧ۬ۗۚۡۥۘ۫ۧۙ۠ۦۡۥۦ۟ۢۙۦۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۖۜ۬ۥ۟ۜۨ۟ۘۖۡۖ۫ۢۗ۬ۖۥۘ۠ۢۡۘۧۢۡۚۡۘۨۘۜ۠۠۫ۖۗ۫ۢ۫ۦۡ۫۟۠ۥ۟ۤۡۘ۬ۘۢۦۢۚ";
        while (true) {
            switch ((((str.hashCode() ^ 834) ^ me.o00000Oo) ^ 986) ^ 1928348496) {
                case -1706325083:
                    super.onPause();
                    str = "۟ۤ۫۬ۡۧ۠ۗۡۘ۟ۡۘۥۦۖۘۜۤۢۤۥ۟ۦۧ۠ۘ۫ۗۦۢۨۘۘۙ۟۠ۛۖۘۧ۬ۘۦۖۖۘۨۜۛ۬ۖۥ۫ۛۨۘۥۙۧ";
                    break;
                case -1616598406:
                    str = "ۖۘ۠ۨۧ۟۬ۥۜۧۚ۬ۖ۫ۧ۠ۨۙۙۥۘۙۡۛ۫ۨۖ۠ۨۡۘ۫ۨۖۜۘۙۙ۠ۢۧۖۖۜ۬ۨۤۖۘۢ۟ۥۘۛۛۖ";
                    break;
                case -1191964445:
                    bh.OooO0o0(this);
                    str = "ۜۨۡۢۖۚۚ۫۟ۙ۟ۙ۬ۗۦۥۢ۟ۖۘ۠ۖۜۘۛ۠۠ۛۦۜۛۤۨۡ۬ۤۢۧۧ۟ۦۥۘۗ۬ۦۘۡۘۨ";
                    break;
                case 508113764:
                    return;
                case 1497854666:
                    bh.OooO0OO(SettingActivity.class.getCanonicalName());
                    str = "ۗۛۜۘ۠۫ۦۘ۬ۛۗۦۦ۫ۙۢۙ۬ۛ۬۟۟ۤۧۥ۟ۚۦۖۘۜ۬ۘۢۜۘۘ۫ۖۖۘۗۘۥۘ۟۫۟";
                    break;
            }
        }
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onReceiveStudioProjectStatusEvent(fh fhVar) {
        String strOooO00o = null;
        String str = "۟ۛۖۘۡۡۖۘۡۤۜۚ۠ۗۙۥ۠ۘۡ۬ۥۚۤۥ۫ۘۨۘۘۨۛۖۘۧۤۢۗ۬ۦۡ۬ۚ۬ۛۜۖۛۤ۟ۘۘۛ۟ۧۚۗۤ";
        while (true) {
            switch ((((str.hashCode() ^ 134) ^ 604) ^ 72) ^ (-2127738445)) {
                case -1620584021:
                    this.o0ooOoO.postDelayed(new OooO0o(this), 500L);
                    str = "۫ۘۜۘۨۘۤۘۙۢۡۜۦۘۛۚۜۨۢ۫ۜۛۨۘۖۡۖۘۦۘۡ۟ۛۘۘۛۥۧۘۚۚ۟ۡۢۘ";
                    break;
                case -817671952:
                    this.o0OOO0o.setText(strOooO00o);
                    str = "۬۫ۢ۫۟ۘۘ۬ۙ۟ۜۦۥۗۗ۫ۖۚۖۘ۟ۥۘ۠۬۬ۥۘۡۘۨ۫ۧ";
                    break;
                case -539578331:
                    str = "۬ۖۘۘۜۘۥۘ۫ۥۙۡ۫ۜۘۦ۫۫۟ۨۢۛ۫ۖۨۜۥۘۧۛۢ۬ۧۧۜۨۨۜۥۙۜۧۜۘ۠ۨۧۥۡۗۜۙ";
                    break;
                case 547109562:
                case 867910335:
                case 1501877853:
                    str = "۫ۘۜۘۨۘۤۘۙۢۡۜۦۘۛۚۜۨۢ۫ۜۛۨۘۖۡۖۘۦۘۡ۟ۛۘۘۛۥۧۘۚۚ۟ۡۢۘ";
                    break;
                case 768443487:
                    OooOO0O();
                    str = "۠ۥۤۗۗۖۢ۟ۤۦۛ۟۬ۖۘۜۥۧۘۛۥۜۘۜۨۥ۬ۖۖۥ";
                    break;
                case 911706017:
                    switch (fhVar.OooO0O0()) {
                        case 10001:
                        case 10002:
                            str = "ۦۧۜۘۘۤۤۤۜۧۗۡۦۘ۠ۢ۬ۨۘۡۘۥۦۦ۬ۖۜۗۡۧۙۘۨۘۖۡۨۚۗۖۖۦۘۢۢ۫";
                            break;
                        case 10003:
                            str = "ۢۡۤۥۧۡۜۛۦۘۜۚۥۥۜۨۘۢۦۘۤ۫۟ۨ۟ۗۨۧۘ۫ۖۦۤۤۦۘۗۡۙۥۢۘۥۖۨ";
                            break;
                        case 10004:
                            str = "ۛۛ۬ۘۢۦۘۥۗۖۨۛۥۘۤۗۜۘۛۜۛ۠ۘۤۧۛۨ۟۫ۖۘۤ۠ۨۘۚۖ۟ۥۤ۟۠۠ۘۜۘۡۙۜۘ۬۫";
                            break;
                        default:
                            str = "ۡۧۤۘۢۛۧ۫ۦۘۤۖۘۘۗۦ۬۠۫۟ۦ۟ۦۦ۟۟ۥ۬ۤ۬ۖ";
                            break;
                    }
                    break;
                case 1431156348:
                    OooOO0O();
                    str = "ۗۦۥۘۚۢۡۘ۠ۛ۫ۜۢ۫ۜۤۥۘۗ۬ۤ۬۬ۖۘۖۢۘۘ۠ۧ۠ۚۙۢۥۖۘۘۙۧۥۘۡ۫ۢۜۙۨۘۛۚۘۘۥۤ۬۠ۦۚ۫ۖۖۘ";
                    break;
                case 1549142609:
                    OooOO0o(fhVar.OooO00o());
                    str = "ۚۚۦۤۛۤۨۖۨۘۧۚۥۘۨۧۡ۬ۧۧ۫ۨۛۘۛۖ۬ۛۧ۫۫۟ۨۨۧۘۛۖۨۘ۟۬ۤ۫ۘۥۘ";
                    break;
                case 1563175616:
                    str = "۬ۛۗۦۜۘۘۨ۟ۙۨۗۡۘۜۥۧۘۦ۠ۛۡۜۘۘۥۘ۫ۦۜۧۡ۬ۛ۬ۛۚ۟ۖۨۘۜۘۙ۬ۖۘ";
                    break;
                case 1739462090:
                    return;
                case 2107067550:
                    strOooO00o = fhVar.OooO00o();
                    str = "۬۬ۘ۫ۡۡۘۨۜۧۘۘۥۡۛۧ۠ۡۦۥۤۦ۫ۙ۫ۨۘ۬ۖۥۘۙۥۥۨۘۨۘۧۧۚۘ۟ۚۜۘۢۦۖۤۡ۟ۖۖ۬ۧۜۦ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str = "۠ۛ۬ۗ۫ۨۢۡۜ۫ۗۙۧ۫ۡ۫ۘ۠۫ۦۘۖۘۚۙۙ۬ۙ۟ۦۘۙۚۧ۫ۗۥۘۚۖۛۜۡۖۨۙۨۘۙۥۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 652) ^ 821) ^ 782) ^ (-735289073)) {
                case -1828337565:
                    str = "ۘۢۖۘۜۥۛۛۜۜۘ۬ۤۢ۟ۡۨۘ۟ۖۤۜ۫ۜۚ۠ۖۘۢ۠ۨۨ۠۫ۚۛۦۥۤۦۘۗۙۜۘۛۘۨۘ";
                    break;
                case -1449944487:
                    bh.OooO0Oo(SettingActivity.class.getCanonicalName());
                    str = "ۨۚۡۢۨۥ۠ۡۦۖۙۧۨ۠ۦۤۚ۠ۖۡۘۢۗۘۛ۟ۨۤۘۘ";
                    break;
                case -1130142263:
                    return;
                case -895651015:
                    bh.OooO0o(this);
                    str = "ۧۖۖۘۤ۬ۥۥۤۨ۠ۦۙۚۧۤۤۡۖۢۨۧۜۨۘ۠۬ۨۛۗۜۘ";
                    break;
                case 1153908943:
                    super.onResume();
                    str = "ۖۛۦۧ۫ۘۘۖۦۢۦۨۛۢۚۖۘ۫۠ۤۥۡۧۘۡۗۦ۟۟۠ۢ۟ۢۖۤ۬ۖۘ";
                    break;
            }
        }
    }
}
