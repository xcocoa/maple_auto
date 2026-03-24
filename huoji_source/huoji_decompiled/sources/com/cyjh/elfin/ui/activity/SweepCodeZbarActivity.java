package com.cyjh.elfin.ui.activity;

import android.content.Intent;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.ac.R;
import com.anythink.expressad.d.a.b;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.sweepcode.CameraSurfaceView;
import com.cyjh.elfin.ui.view.customview.TitleView;
import java.io.PrintStream;
import z2.c5;
import z2.t7;
import z2.v7;

/* JADX INFO: loaded from: classes.dex */
public class SweepCodeZbarActivity extends BaseActivity implements v7.OooO0O0 {
    public static final String o00O0O = "SWEEP_RESULT_BACK";
    public static final int o00Oo0 = 99;
    public static final int o00Ooo = 100;
    private static final int o00o0O = 17;
    private static final int o00ooo = 18;
    private ImageView OooooOo;
    private v7 Oooooo;
    private RelativeLayout OooooO0 = null;
    private RelativeLayout OooooOO = null;
    private FrameLayout Oooooo0 = null;
    public boolean OoooooO = false;
    public Camera.PreviewCallback Ooooooo = new OooO00o(this);
    private final Handler o0OoOo0 = new OooO0O0(this);
    public boolean ooOO = true;

    public class OooO00o implements Camera.PreviewCallback {
        public final SweepCodeZbarActivity OooO00o;

        public OooO00o(SweepCodeZbarActivity sweepCodeZbarActivity) {
            this.OooO00o = sweepCodeZbarActivity;
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            SweepCodeZbarActivity sweepCodeZbarActivity = null;
            String str = "ۦۥۥۘۙۧۗۧۡ۟ۧ۠ۗۧۗۛۗۙۛۥۗ۬۟ۦۜۧ۟ۙۗۦۖ۠۠۫ۧۛۧ";
            while (true) {
                switch ((((str.hashCode() ^ 279) ^ 456) ^ 922) ^ 1262053195) {
                    case -2005332907:
                        return;
                    case -1550828797:
                        str = "ۢۧۖۘۚۦ۟ۜۗۜۢ۫ۨ۠ۦۜۥۖۜ۠ۡ۟ۦ۬ۘ۟ۖۙۘۡۖۢۛۥۘ۬ۘۘ۬ۛۤۨۖۢ";
                        break;
                    case -1518202167:
                        str = "۠ۖۢ۬ۚۥۦ۟۟ۡ۠ۖۛۚۦۘ۟۠ۦۘۙۛۨ۫۠ۧۤۗۜۢ۠ۡۘۜۧۘۘۢۘۡۘۧۤۘۘۖۥۧۜ۫ۨ۬ۧۡ۟ۚۥۦۤۗ";
                        break;
                    case -1445081937:
                        str = "ۙۜ۠ۨۙۚۜ۠ۢۦۦۦۚ۟ۥۢۛۦۘ۟۬۫ۤۡۗۙۤۗۗۨۤۥ۫ۧۙۤۛۚ۫ۧۥۨۗ";
                        break;
                    case 598597897:
                        sweepCodeZbarActivity = this.OooO00o;
                        str = "ۜۦۘ۫ۥۚۤۢۘۘۧۨۖۘۘۧۧۡ۠۫ۤۘۘۖۜ۟ۛ۫ۖۢۥۛۧۖۚۘۤۢۥۤ۫ۥۙۚ";
                        break;
                    case 878806525:
                        sweepCodeZbarActivity.OooOOO(bArr, camera, SweepCodeZbarActivity.OooO0oO(sweepCodeZbarActivity));
                        str = "ۖۡ۫ۗۛ۟۠ۛۦۧ۟ۙۤۦۙ۬۟ۚۤ۠ۤ۬ۢۤۚ۟ۖۘۗ۫ۧۥۨۥۘۙۦۢ۫ۚۜۘ۬۫ۦۘۛۨۤۘ۠ۦۘ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 extends Handler {
        public final SweepCodeZbarActivity OooO00o;

        public OooO0O0(SweepCodeZbarActivity sweepCodeZbarActivity) {
            this.OooO00o = sweepCodeZbarActivity;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str = "۠۫ۗۗۗۡۧۨۡۢۜۥ۬ۘۥۘ۬۫ۦۡۤۖۘۡۥۚ۟۟ۖۘۖۦ۟۟۫ۥۘ۟ۚۜۚۘۧۥۗۡۙۢۡۘۡۚۘۗۥۢۤۤۦ";
            while (true) {
                switch (str.hashCode() ^ 1047722278) {
                    case -1407150333:
                        return;
                    case -1050191212:
                        try {
                            SweepCodeZbarActivity.OooO0oo(this.OooO00o, (String) message.obj);
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            this.OooO00o.OoooooO = false;
                            return;
                        }
                    case 1238998219:
                        String str2 = "ۘ۟ۦۛۗۖۢ۠۫۫ۢۦۘ۠ۚۡ۫ۡۖ۠ۜۘۥۚۧۧۥۦۘۢ۫ۜۢ۫ۢ۬ۤۘ۬ۜۘۙۘۢۘۚۗۤۢۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1860370405) {
                                case -1856930843:
                                    str2 = message.what == 17 ? "ۧۧۥۘۘ۬ۨۘۗ۟ۥۥۜۘۘۦۡۢۛ۫ۦۘۘ۫ۘۙ۟ۡ۬ۧۤۘۢ" : "ۚۘۢ۟۬ۚۘ۠ۤ۬ۤۨۘۧۨۡۘ۫ۛۜۘۙۙۨۘۦۦۙۧۡ۠ۨۚۥۘۡۢۘۘۚۘۡۘۗۥۨۘۡۢۙ۠ۙ۟ۥۡۥۘۨۖۨۘ۠ۧۜ";
                                    break;
                                case -1515966159:
                                    str = "ۙ۫ۦ۬ۜۘۦۗۛۜۘۧۧۖ۠ۚۛۦۖۜۧۘۘۚۦ۠ۡۨۘۢ۟ۚ";
                                    continue;
                                case -475056480:
                                    str2 = "ۖۨۡ۬ۢ۠ۚۡۜ۟ۙ۟ۡۦ۠ۦۤۦۘۖ۬ۛۥۘۖۘۙۨۡۘۥ۠۫۬ۧۢۥۨۜۘۦۜۡۧۖۨۘ";
                                    break;
                                case 1766219380:
                                    str = "ۥۦ۠ۥ۟ۨۘۢۖۚ۟ۙۤۦۙۙۢۡۢۘۙۢ۠۫ۛ۫ۘۧۘۘۗۜۘ";
                                    continue;
                            }
                        }
                        break;
                    case 1875935886:
                        str = "ۧۡ۬۠ۘۧۚۙ۫ۦ۫ۨۘۡۧۤۗۚۜۘ۠ۙۡۘۙ۟ۖۘۤۖۧۘۡۙۗۙۚۦۛ۟ۢ۬ۦۘۦ۬ۦۘۨۦ۠ۢۨۛ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements View.OnClickListener {
        public final SweepCodeZbarActivity OoooOoO;

        public OooO0OO(SweepCodeZbarActivity sweepCodeZbarActivity) {
            this.OoooOoO = sweepCodeZbarActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۧۙ۠ۛۚ۬ۗ۠ۖۘۘۛ۟۟ۧ۠ۚۤ۫ۛۛۡۢۨۘ۬ۜۤۖۘۦۘۥۙۦۘۙۗۦۜ۫ۡۦ۬ۥۢۤۦۦۚۙۡۙۜ۠ۥ";
            while (true) {
                switch ((((str.hashCode() ^ 845) ^ 25) ^ 680) ^ (-1423165333)) {
                    case -1565023070:
                        str = "ۢ۬ۘۤ۬ۚۜۢ۟ۢۜۡۖۙۗۗۙۥۜۥ۫ۦ۠ۚ۫ۦ۬ۨۛۚۦۙۙۖۡۘۗ۟۫ۖۥۘۙۨۖۘۤۥۘ";
                        break;
                    case -1071109005:
                        str = "ۖۙۨۚۚۛۧۜۖۗۛۧۨۗۚۛۘۘ۠ۤۜۗۛۗۦۜۥۡۙۨ۟ۛۗ۫ۙۘۗۘ۬۟ۡ۫ۤۙۢ۬ۖ۟ۗۜۘ";
                        break;
                    case 476706093:
                        this.OoooOoO.OooOOO0();
                        str = "۬۟ۖۘۦۙۚۨۚۜۘ۟ۡۦۘۥۤ۬۠ۤۖۢۤۨۘۨۘۙ۬ۙۘۘۥۖۢۧ۠ۦۛۨ";
                        break;
                    case 1276725763:
                        return;
                }
            }
        }
    }

    public class OooO0o implements TitleView.OooO0O0 {
        public final SweepCodeZbarActivity OooO00o;

        private OooO0o(SweepCodeZbarActivity sweepCodeZbarActivity) {
            this.OooO00o = sweepCodeZbarActivity;
        }

        public /* synthetic */ OooO0o(SweepCodeZbarActivity sweepCodeZbarActivity, OooO00o oooO00o) {
            this(sweepCodeZbarActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۢ۠۟ۢۖۡۜ۬ۛۢۨۡۘ۟ۢۖۘۥ۬ۜۘ۫ۨۖۙۥۖۘۚۖۦ۠ۢۧ";
            while (true) {
                switch ((((str.hashCode() ^ 599) ^ 646) ^ 867) ^ 739411637) {
                    case -1295807330:
                        this.OooO00o.finish();
                        str = "۠ۧۨۘ۫ۜۘ۫ۤۧۨۡۧۧۖۨۘۡۢۦۘ۠ۡۨۖۗۦۖ۬۫ۗ۬ۨۜ۬ۘۤۚ۠ۡۜۥۢ";
                        break;
                    case -714502985:
                        str = "ۚۨۧۘۜۧۜۤۥ۬ۛۢۚ۬ۤۡۘۚۖۤ۠ۦۨۘ۬ۘۡۤۤۘ۬ۜۧۘ";
                        break;
                    case -394049095:
                        str = "۠ۥۜۘۡۨۨۦۨۦۙۨۘۘ۫ۦۨۘ۟۫ۜۘۘ۠ۛۦۡ۫۠ۥۨۙۖۚ۟ۨۙ۬۬ۨۘۚۢۦۤ۬ۦۘ۟ۥۙ۫ۡۜۘ";
                        break;
                    case 1111530271:
                        return;
                }
            }
        }
    }

    private void OooO() {
        String str = "ۘۜۡۡۥۡۘۖۧۙۦۦۨۘۜۜۧ۠ۥۥۤۥۨۖ۬ۦۙۘۨۛۢۚ۟ۨۡ۫ۜۘۡۨۘۘۦۙۖۘۜۘۘۨۢۨ";
        while (true) {
            switch ((((str.hashCode() ^ 141) ^ 988) ^ 237) ^ 321782043) {
                case -771338840:
                    t7.OooO().OooOO0o(this.Ooooooo);
                    str = "۫ۦۘۘۗۢ۟۫ۦۜۘۥۤۡۘۢۗۚۦۥۥۘ۟ۙۗۖۖۜۗۖۥۘۘۦ۬۬ۚۨۘۜۨۥۗۚۜۚۘۘ";
                    break;
                case -270550073:
                    return;
                case -130885810:
                    str = "ۚۦۨۘ۠ۙۡۘۦۜۛۗۙۖۗۗ۠ۖۧۦۦۧۦۦ۬ۜ۟ۦۚۖۛۗ";
                    break;
                case 1865968199:
                    this.Oooooo0.addView(new CameraSurfaceView(this));
                    str = "۬۟ۡۘۗۢۥۘۨۛۥۢ۫ۥۙۖۚۧۚۚۜ۠ۛۨۗۤ۟ۧۙۖۖۘ۫ۨۖۙۡۖ۬ۧۢۨۜۦۘۚۧۜۘۙۛۘ۬۟ۛ۠ۦۧ";
                    break;
            }
        }
    }

    public static /* synthetic */ RelativeLayout OooO0oO(SweepCodeZbarActivity sweepCodeZbarActivity) {
        String str = "ۗۙۦۘۘ۬ۜۘۜۘۘۥۨۜ۬ۙۦۘۚۛۨۘ۫ۛۤ۟۠ۜ۠ۤۘۧۜۚ";
        while (true) {
            switch ((((str.hashCode() ^ 889) ^ 169) ^ 682) ^ 615824454) {
                case -1947239307:
                    str = "۠ۘۜۤ۫ۗۙۤۙۜۨۖۘۢۖۥۘ۠ۖۧۘ۬ۙ۠ۡۜۖۥۚ۟ۦۦ";
                    break;
                case 1978808216:
                    return sweepCodeZbarActivity.OooooOO;
            }
        }
    }

    public static /* synthetic */ void OooO0oo(SweepCodeZbarActivity sweepCodeZbarActivity, String str) {
        String str2 = "ۖۥۤۦۗۢۖۢۦۘ۠ۤۡۘۚۜۘ۟ۢۡ۫ۘۛۜ۠۠ۖۖۥ۟۬ۘۨۦۘ۟ۦ۬";
        while (true) {
            switch ((((str2.hashCode() ^ 790) ^ 223) ^ 478) ^ (-672649190)) {
                case -2143299819:
                    return;
                case -1347957167:
                    str2 = "۬ۨ۠ۡۚۨۚۦۚۨۦۜۤۧۦۘۘ۫ۦۘۚ۫ۛۚۙۘ۫ۛ۫ۦ۫ۨ۠ۘ۫ۥۜۘۘۛۦۚۦ۟";
                    break;
                case 312885223:
                    str2 = "۠۠ۜۘ۬ۙۘۘۖۜۧۡۖ۫ۢۘۤ۬ۤ۠ۨۗۗۚۖ۟ۨ۠۠ۨۤۤۥۚۢۛۤ۟";
                    break;
                case 488534129:
                    sweepCodeZbarActivity.OooOOOo(str);
                    str2 = "ۢۚۙۙ۬ۦۘۛۘ۟ۨۚۛۧۥۨۥ۫ۜۗۖۦ۟ۘ۟ۘ۟ۛۖۙۖۘ۫ۧۡۜۜۜ";
                    break;
            }
        }
    }

    private void OooOO0O() {
        OooO00o oooO00o = null;
        String str = "ۢۧۚۡۖ۟۫ۨۨۘۢۥۦۘۥۨ۫۟ۦۨۘۖۜۦۜۛ۟ۖۚ۫۠ۚۦۘۘۨ۬ۦ۬۫ۢۤۡۘ۫ۛ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 499) ^ 140) ^ 381) ^ 1796565839) {
                case -1162148225:
                    return;
                case -983355533:
                    titleView.setTitleText(getString(R.string.sweep_code_register_code));
                    str = "ۙۛۥ۫ۧ۫ۦۧۡۙۧۨۘۚۜۡۥۚۚۛۡ۟ۘۜ۬ۥۙۨۘۢ۠۟ۡۛۨۢۡۘ";
                    break;
                case -947537706:
                    titleView.setOnLeftImageViewListener(new OooO0o(this, oooO00o));
                    str = "ۗ۬ۛۛۦۜۤ۫ۡۨۘ۟۠۟ۡۤ۬ۖۨۛ۫ۡۡۧۤۤ۫ۙۛ";
                    break;
                case -464871540:
                    titleView.setVisibilityRightImage(4);
                    str = "ۙۢۖ۫ۙۢۦۦ۬ۘۘۛۥۨۙۖۦۗۦۘۘۘۦ۫ۖۦ۫ۡۦۜۖۘۘ۠۠۟ۨ۠۠ۢۦۥۘۧۜۦۢ۫ۜۥۨۜ۟۬";
                    break;
                case -231640261:
                    str = "۬ۗۡۢۧۦۘۡ۠ۥۘۨۗۥۚۢۘۘۗ۫ۖۘۜۨۤۘۦۙ۬ۦۜۘۘ۟ۨۖۢۛۦۘ";
                    titleView = (TitleView) findViewById(R.id.id_title);
                    break;
                case -168194480:
                    str = "۠ۗۡۘۖ۟۠ۨۥۧۚۗۨۘۤۦۙ۠۫ۘۙۦ۬ۨ۟ۧۘۘۘۙ";
                    break;
                case 18531941:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "ۗۚۛۜۤۡۘ۬ۖۗۢۜ۬ۤۥۨۡۤۗ۬۠ۛۢۘ۟۟ۡۧۡۤۥۘۦۦۘۘۛۦ۫ۖۤۗۗۡۦ۟ۨۚۦۘۘۛ۟ۜ۟ۨۤ";
                    break;
            }
        }
    }

    private void OooOO0o() {
        v7 v7Var = null;
        String str = "۠ۡۜۘۚۦۨۦۜۘۗۛۚۨۥۧۢ۟ۚۙۚ۠ۖۘۦۜۤۤۥۘ۟ۙ۬۫۬۟ۧ۬ۜۨ۠ۚۡۤۨۘ۫ۧۢۗۦۘۘۛ۟ۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 835) ^ 792) ^ 353) ^ 1497744738) {
                case -2085945513:
                    this.Oooooo = v7Var;
                    str = "۬ۖ۫ۦۢ۟ۖۛۧۛۡۤۖۡۢۧ۬ۥۙۨۘۦۤۚۗۨۖۘۛ۟ۨۘۙۙۛۥۖۥۘ";
                    break;
                case -1737065649:
                    return;
                case -617314650:
                    v7Var.OooO0Oo();
                    str = "۫ۙۥۜۘۚۗۡ۠ۚۚۜۤ۬ۡۘۗۥۥۤۦۛۛ۟ۖۧ۫ۡۦۡۘۨ۬ۗ۠ۛۦۧۢ۬ۧۧۖۘ";
                    break;
                case -99324888:
                    v7Var = new v7();
                    str = "ۗۤۗۘۚۘۤۧۜۘۖ۟ۧۖۖۧۧ۠ۛۙۖۨۙۧ۫۠ۧۧۧۖ۠ۚ۫ۢۘۜ۟ۘۡۘ۟ۡۥ";
                    break;
                case 2117909555:
                    str = "ۢۙ۟۟ۗ۬ۥۘۨۡۙۗۧۤۗ۟ۜۘۤ۬ۤۛۥۚۚۘۨۘۖۖ۟ۖۗۤ۬ۧ۠ۥ۫ۡ۠ۡۥۘۤ۠ۛۢۙۢۘۧۘ۬۫ۥ";
                    break;
            }
        }
    }

    private void OooOOOO() {
        String str = "ۧ۠ۖۘ۬ۙۥۤۥ۫ۗ۬ۤۖ۫ۜۖۗ۠ۗ۫۬ۗۙۥۦۥۚۥۦۘ۫ۧۡۛۨۙۨ۫ۗۜۦۗۖۗۥۘۡ۫ۚۥۛۨۜۧ۫";
        while (true) {
            switch ((((str.hashCode() ^ 329) ^ 794) ^ 747) ^ (-231124626)) {
                case -1344451960:
                    ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 99);
                    str = "ۨۥۨۢۜ۟۠۫ۘۘۖۧ۫ۦۥۨۘۧۘ۫ۦۚۤۨۛ۬ۡۨ۫ۧۙۤۧ۫ۜۤۡ۫";
                    break;
                case -789316299:
                    return;
                case 844875295:
                    str = "۠۟۬ۨ۟ۦۨۦۦ۫ۦۥۘ۟ۚۡۘۥۦ۠ۧۛۛۘۜۘۘۤ۬ۘۘۘ";
                    break;
            }
        }
    }

    private void OooOOOo(String str) {
        String str2 = "ۗۤۘۜۖ۟ۘۤۥۛۦ۠ۛۨ۟ۛ۬ۘۜۜۚ۬ۦۘۛۥۜۘۤۘۥۘۡۛۛۘۦۚ";
        Intent intent = null;
        StringBuilder sb = null;
        PrintStream printStream = null;
        while (true) {
            switch ((((str2.hashCode() ^ 775) ^ 100) ^ 99) ^ (-982061088)) {
                case -1629171457:
                    str2 = "۬ۚۙۢۘۖۦ۠ۛۘۚۢۡۛۖ۟ۧۦۨۙ۟ۤۗۥۜۗۛۦۦ۠ۥ۟ۤۚۖۗۦۛۤۜۧۥۘۛۦۡۚۧۙۨۙۛۦۙۥ";
                    printStream = System.out;
                    break;
                case -1130602375:
                    finish();
                    str2 = "ۡۧۡۤۛۦۘۜۡۤۗۜۢۛۥۨۘ۠ۡۘۗ۫۟ۖ۬۬ۜۨۘۦۥۚۦۜۖۘ۟ۗۘۘۚۗ۠ۘۜۜ";
                    break;
                case -1016170328:
                    intent = new Intent();
                    str2 = "ۥۢۚ۫ۥۖۙ۬۟ۥۗۘۤۛۖۤ۬ۥ۫ۛ۟ۡۤۛۛۨۢۜۧۘ۟ۛۨ۫ۥۘۚۢ۟ۙۜۘ";
                    break;
                case -934465443:
                    printStream.println(sb.toString());
                    str2 = "۬ۢۘۘ۫ۤۘۙۡۨۧۜۢۡۤۤۖۛۖۧۢۦۦۦۘۜۨۛۧۥۧۘ۫۬ۥۘۜ۠ۡۨۧۘۢ۬ۤۜ۫ۘۘۖۚۗۤۙۘ۫۟ۛ";
                    break;
                case -932651957:
                    str2 = "ۦۧۙ۫ۡۧۘ۟ۢۛۜ۠ۘۘۛۧۛۧۨۘۥۚۘۧ۬ۚۜۜۥۘ۠۬۠ۛۖۛۚۦۥۗۙۨۜۧ۬ۗ۟ۛۙۡۖۘ";
                    break;
                case -889378655:
                    return;
                case -438487136:
                    str2 = "ۨ۠ۛ۬ۤۥ۠ۗۨۘۖۖۢۖۢۜۖۨۦۘۢۥۘۡۘ۫ۚۥۤۖۨۨۘۧۗۤۨۖۗ";
                    sb = new StringBuilder();
                    break;
                case -147995383:
                    String str3 = "ۚۢۧۚ۠ۘۢۙ۟ۢ۟ۨۛۖۥۥۛۖۘ۟ۖۗ۟۬ۥۡ۠ۖۜۧ۟۬ۛ۟ۚۦۗ";
                    while (true) {
                        switch (str3.hashCode() ^ (-1291001293)) {
                            case 690111385:
                                str3 = "ۢۜۦۘۖۧۤۛۡ۟ۢ۟۟ۛ۬ۧ۟۟۟۟ۦۤۗۥۙۜۜۥۦۜۤۧ۠ۦۤۢۖۡۘۘۛۛۜۘ۠ۘۧۚۜۜۘ";
                                break;
                            case 1683020570:
                                str2 = "۫ۦ۟ۚۥۨۘۚۖۘۚ۠ۦۤۤۖ۬ۨۥۡۨۨۘۖۦ۟ۖ۠ۡۘۛۖۥ";
                                continue;
                            case 1895295151:
                                String str4 = "ۗۗۖ۬ۦ۫ۢ۫۠ۥۤۖۜۛۦ۫۟ۙۚۡۤ۬ۤۨۨۛۡۜۖۗۙۤۥۚۚ۟ۥ۠ۨۖۖ۫ۡۤۨۘۚ۬ۧ";
                                while (true) {
                                    switch (str4.hashCode() ^ (-1669189111)) {
                                        case -298033139:
                                            str4 = !TextUtils.isEmpty(str) ? "ۧۙۛۚ۬ۧۨۥۘۗۛ۠ۥ۬ۙۚ۠ۨۖۘۢۛۚ۫ۦۖۛۗۙۜۘ۫ۘۚۤۖۧۘۛۢۖ۬۠ۛۖۜۙۛ" : "ۤۜ۠ۨۖۧۡۢۨۘۛۨۘۘۦۛۗۧۤ۟۠ۦۘۘ۠ۨۘۘۛ۫ۗۛ۫ۥۚۥۨۤۥۗۚۚۡۤۨۥ";
                                            break;
                                        case -255792117:
                                            str3 = "ۢۢۡۗۗۜۘۥۘۧۘۢ۟۟ۚ۠ۖۘۜۙ۬ۥ۟ۦۘۥۡۘۘۦۧۖۘ۬۬ۛ";
                                            break;
                                        case -94483859:
                                            str3 = "ۗۤۡ۬ۖۖۘ۬ۢۘۡۤۦۘۤۙۧۦ۟ۙ۠۠۬ۡۘ۟ۤۙۜۜۗۙۖۤۜۘۛۙۡۘۡۚ۠ۜ۫ۨ";
                                            break;
                                        case 724095321:
                                            str4 = "۫۬ۜۘۨ۫ۨۘۗۚۜۘۤۘۜۘۖ۬ۙۛۧۗۗۢ۫ۜ۠ۜۘۙ۬ۜۘۛۨۙۛۗۙۡ۫ۜۘ۫ۖۜۘ۫ۧ";
                                            break;
                                    }
                                }
                                break;
                            case 2004957944:
                                str2 = "ۨۨ۬ۨۦۘ۫ۤۡۘۦۧۖۛۘ۫ۨۙۦۥۦۘ۟ۡۛ۠۬ۡۘ۬ۢۦ۬ۖۢۦۙۢۧۡۧۧ۠ۖۘۥۖۙۢۗۡ";
                                continue;
                        }
                    }
                    break;
                case 73867598:
                    sb.append("result:");
                    str2 = "۬ۤ۟ۚ۠ۛۡۘۘۧ۬ۗۨۨۙۥۤۘۦۜۤۧۚۦۘ۟۟ۙ۫ۛ۟ۤۤۖۘۖۗۨۡۢۧۘۢۙۢ۟ۨۘۖۖۥۡۚۛۙۧ۟";
                    break;
                case 375418531:
                    sb.append(str);
                    str2 = "ۙ۠ۡۡۙ۬ۖۜۦۘۖۗ۟ۙۨۘۛ۫ۥۗۧۨۘۨ۫ۜۗ۫ۨۛۘۙ۠ۘۜۘۤۚ۠۠۬ۖۧۨۙۧۚۧۚۡۘۘۛۦۗ۬ۦۡۘ";
                    break;
                case 483852679:
                    str2 = "ۨ۬ۥ۟ۖۘۘۘۛۥۥۥۡۘۥۢۖۘ۬ۨۥۚۧ۬ۡۚ۠ۦ۫ۧۗۡۜۤۥۛۚۥۦۘۚۤۚۛۘۘۛۧۨ۬۟ۚۗۛۧۘۜۦ";
                    break;
                case 1534158682:
                    str2 = "ۜۨ۠ۙۘۜۛۛۤۡۧۘۖ۠ۙۡۤۥۘۙۖۜۘۖۚۦۘۙۙۜۖۨۦۙۘ۫ۚۤۘۘ";
                    break;
                case 1591516691:
                    setResult(-1, intent);
                    str2 = "ۢۧۖ۟۟ۤۛۖۛۡ۬ۡ۬۠ۗۙۢۨۘ۠ۗۤ۬ۢۤۛۛۥۘۛ۫ۖۘ";
                    break;
                case 1621091175:
                    c5.OooO0O0(this, R.string.sweep_error_tips);
                    str2 = "ۜۨ۠ۙۘۜۛۛۤۡۧۘۖ۠ۙۡۤۥۘۙۖۜۘۖۚۦۘۙۙۜۖۨۦۙۘ۫ۚۤۘۘ";
                    break;
                case 1711273416:
                    intent.putExtra("SWEEP_RESULT_BACK", str);
                    str2 = "ۢۙ۠ۖۢۜۘۖۡۥ۟ۥ۬ۖۨۦۨۢۥۘۙۙۛ۟ۡۡ۟ۡۥۗ۠ۨۗۜۗۗۨۙۧۖ۠ۨۤ";
                    break;
            }
        }
    }

    @Override // z2.v7.OooO0O0
    public void OooO00o(String str) {
        Message messageObtainMessage = null;
        String str2 = "ۘۥۢۘۙۘۥۧۖۖ۫ۧۥۘۨۤۜۢ۬ۙۧۜۡۘۧۡۙ۬۬ۖۛۧۘۘۙۡۡۧۤۦۤۜۡۘ۬۟ۗ۫۫ۗۥۘۥۧۢ۫";
        while (true) {
            switch ((((str2.hashCode() ^ b.by) ^ 290) ^ 909) ^ 599382795) {
                case -1862779155:
                    this.o0OoOo0.sendMessage(messageObtainMessage);
                    str2 = "۫۬۫ۡۙۢۤۧ۫ۡۙۙۡۘۥ۠ۦۜۘ۬ۘۖۘۗۡۜۙۛۛ۬ۧۜۘۗ۟ۖۘۜ";
                    break;
                case -567411670:
                    messageObtainMessage = this.o0OoOo0.obtainMessage();
                    str2 = "ۧ۠ۨۘۡ۬ۥ۬ۥۙۢۥۘۘۦۖۛۨ۠۟ۨۡ۫ۙ۫ۢۥۗ۟ۚ۠ۡۚ۟ۨ۫ۡۤۘۢ۠ۡۛۦۘۥۘۛۚ۟۟";
                    break;
                case 693576687:
                    messageObtainMessage.obj = str;
                    str2 = "۠ۡۤۛۢ۠۟ۡۘۚۥۨۘۧ۬ۨۘۖۨۙۖ۟ۖۘ۬ۙۗۚۧۦۘ۫۠۬";
                    break;
                case 778498279:
                    str2 = "ۢۦۚۖۙۤۛ۟۠ۖۜ۬ۜۨۙۙۧۥۘۚۘۥۜۡۧۘ۠ۙۘۘ۬ۚۤۜۡۨۛۨۡ";
                    break;
                case 945949647:
                    return;
                case 1087850224:
                    messageObtainMessage.what = 17;
                    str2 = "ۥۥۚۧ۬ۤ۠ۜۛ۬ۢۚ۠ۢۦۘۗ۫ۦۘۘۛۢۙۨۛ۠ۘۥۘ۠ۖۥۚۛۚۙۛۦۘۨۨۜۘۤ۠ۦۘۚ۬ۘ۫۠ۢۘۘۘۘ۠ۢۚ";
                    break;
                case 1497615457:
                    str2 = "۫ۙۜۘۙ۟ۖۢۘۜۡ۬ۖۘۛۨۤۜۘ۠۟ۜ۟ۜۖۨۡۘۘۚۦۘۘ";
                    break;
            }
        }
    }

    public void OooOO0() {
        String str = "۠ۛۦۘۘۢۖۘ۬ۧ۟۠ۚ۫ۗۛۖۢ۫ۜ۠۫۬ۗۦۤۤۦۛۦۚۡۘۥۜۖۘۨۡۨۘۗۢۥۘۙۡۖۘ۬ۨۜۘۢۖۗۖۖ۟۟ۗۦ";
        while (true) {
            switch ((((str.hashCode() ^ 455) ^ 180) ^ 129) ^ 322595373) {
                case -836949863:
                    OooOO0o();
                    str = "۠ۜۡۘۢۘۡۢۧۡۘۥۤۘۘۧۥۖۛۛۛ۬ۚۘۥۢۡۖ۬ۛۜۥ۫۬ۚۥۘۛۨۚ";
                    break;
                case 1731402328:
                    str = "ۚۛۖۨۛۡۘۛۜۢۛۡۥۘ۬ۡۛۨۢۙ۠ۨ۫ۘۙۜۘۥ۠ۦۘ۠ۥۧۘۧۥۦ۟۫ۤۗۘۤ۫ۜۛ";
                    break;
                case 1798673504:
                    return;
            }
        }
    }

    public void OooOOO(byte[] bArr, Camera camera, View view) {
        v7 v7Var = null;
        String str = "ۧ۫۟۟ۢۛۤۜۘۘۖۧ۟ۥۥۡۥۘۨۖۜۛۥۛۚ۠ۙ۠ۢۜۦۘۦۧۜۘۗ۬ۦ۠ۚۦ۫ۜ۫ۦۨۘ۠۫ۢۧۜۖۘ۬۫ۜ";
        while (true) {
            switch ((((str.hashCode() ^ 454) ^ 973) ^ 487) ^ 667398659) {
                case -2097756671:
                    str = "ۛ۟ۥۘۤ۠ۗۛۖۜۗۦۥۗۤۧۤۙۡ۠ۦۢۡۦۧۥ۫۬ۨۜۘ";
                    break;
                case -1955753571:
                    str = "ۙۙۛۘ۟ۥۘۡۚ۫ۡۘۦۨۘۗۗۧۜۘۚۘۨ۠ۢۘۜۦ۬۟۠ۤ";
                    break;
                case -1768851919:
                case -775143473:
                    return;
                case -1518584991:
                    v7Var.OooO0o(bArr, camera, view, this);
                    str = "ۨۢۨۘۥۚۤۥ۬ۤۤ۬ۖۘ۠ۘۛۙۚۘۥۙۖ۬۬ۘۜۛۜ۠ۗۦ";
                    break;
                case -1306126009:
                    String str2 = "۠ۧۖۘۗۛۚۜ۬ۗۥۜۗۙۦۘۥۢۧ۫ۧۘۘۦۢۖۥۙۨۢۘۘۜۘۡۚۨۡۡۖۧۘ۬ۡۘۙۧۘۘ۟ۙۙۤۧۦۘ۬ۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1970955201)) {
                            case -1516064783:
                                str = "ۤۛۦۘۙۖۤ۬ۚ۬ۨۡۙۘ۠ۚۗۨ۠ۖۘۢۖۨۘۥۦۤۤۗۨۘۡۙ۫ۢۖۜۗۙ۟ۚۜۘۧۤۗۢۙۘۘ";
                                continue;
                            case -1016703498:
                                str2 = "ۢۦۖۘۜ۟ۦۙۖ۬ۧۚۙۛۡۤۙۡ۠ۨۜۘۘۧۦۙۡۛۡۚۢۡۘ";
                                break;
                            case 1492417359:
                                String str3 = "ۢۗۦۘۦۨ۟ۖۨۦۘۧۨۥۙۘۧۦۛۚۚۧۙۖۚ۟ۦۛۘۨۘۧۘۙ۠ۡۜۢۥۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1551301857)) {
                                        case -680841446:
                                            str3 = this.OoooooO ? "ۙۖ۫۟ۧۨ۬ۦ۬ۘۙۤۗۖۧۘ۟۬ۥۘ۫ۦۜۜ۟ۙۢۖۨۘ۬۠ۗ۫ۡۡ۟ۢۢ" : "ۘۡۨۦۚۧ۫ۖ۠ۜ۬ۥۘۗۙۖۘۘۥۦ۬۠ۡۥۙ۟ۖ۟ۚۘۘۜۧ۠ۥۥۦۡۘۖۚۧۧۦۘۦۦۖۘۨۛۤ";
                                            break;
                                        case -51903824:
                                            str2 = "۬ۗۤۘۖۗۨۖۛ۠ۡ۟ۙ۠ۖۡۙۦۘۜۛۢ۬ۙۨۘۧۢۜ۠ۘۜۘۥۚۢۨۧ۠ۡۢۦۛۙ۫";
                                            break;
                                        case 221908916:
                                            str3 = "ۗۥۤۖۤ۠ۚۗ۫ۛۤۖۗۦۘ۫ۘ۫۠ۖۙۡ۫ۢۤۨۘۡۥۨ";
                                            break;
                                        case 276051210:
                                            str2 = "ۢۦ۬ۡ۫۟۫ۙۦ۫ۥۜۢ۟ۗۚۨۗۚۘۘۧۡۘۧۢۚۧۘۘۧ۫ۦۘۘۢۖۘۤۦۤۚ۫ۨ";
                                            break;
                                    }
                                }
                                break;
                            case 1857249638:
                                str = "۟ۖۘۘۗۨۚۚۜۨۚ۟ۙۡ۬ۚۖۥ۟ۙ۠ۜۖۤۡۘۢۘۘۥۜۥۤۖۜۘ۬ۥ۟";
                                continue;
                        }
                    }
                    break;
                case -1186855588:
                    v7Var = this.Oooooo;
                    str = "۬ۙۤۜ۫ۨ۠۬ۚۗ۟ۡۤ۟ۤۢۢۛۖ۠ۨ۠۠ۤۢۛۜۙۚۖۘ";
                    break;
                case 325014222:
                    String str4 = "۟ۦۘۘۨ۫ۨۛۙۦۚۨۥۧۘ۬۟ۢۨ۟۠۟ۦۢۤ۬ۢۙۢۜۜۘۜۦۡۘۗۧۨۘۧۜۛۡۚ۟";
                    while (true) {
                        switch (str4.hashCode() ^ (-1350623784)) {
                            case -512108403:
                                str4 = "ۙۙۦۦۜۖۘۙۥ۬۟ۧۜ۠ۖۙ۬ۚ۟ۨۤۘ۫ۥۛۚۦۤ۬۠ۡۖۡۦۗۛۖۘۖۜۦ۟۠ۜ۠ۥۖۘۤۛۙ";
                                break;
                            case -497913554:
                                str = "ۨۢۨۘۥۚۤۥ۬ۤۤ۬ۖۘ۠ۘۛۙۚۘۥۙۖ۬۬ۘۜۛۜ۠ۗۦ";
                                continue;
                            case 1216431681:
                                String str5 = "۫ۙۡۜۧۢۨۡۢۛۗ۟ۨ۟ۨۘۧۖ۬ۢ۫۬ۧۢ۟ۗۖۥۥۛۖ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1448534247) {
                                        case -1496609486:
                                            str5 = "۫ۗۖۖۜۜۘۜۦۚ۠۠۟ۢۤۗۢۧۢۛۛۨۘ۟ۘۨۗ۠ۥۘ۟ۦۗ";
                                            break;
                                        case -983835692:
                                            str5 = v7Var != null ? "ۨ۠ۘۘۜۨۛۦ۠ۡۘۛۛۡ۠ۚۧۖۜۧۤ۬۬ۤۛۡ۫ۡۗۖۤۦۢۡۢۦۚۢ" : "ۡۖۜۜۢۦۙۖ۠۟ۖۖۘۘۧۡۗ۟ۢۛۚ۫ۘۦۚۦۚۨۘۥۖۡۤۨۤۢ۬۬۠ۧۛۢۢۙۢۧۖۘ۫ۛۢۧ۬۫ۧۢۙ";
                                            break;
                                        case -158477857:
                                            str4 = "ۦۦ۠ۢۧ۠ۥ۟ۡۥۛۥۚ۟۬ۖۘۗۤۘۘۘۤۘۜۛۜۙۜ۬ۨۘ";
                                            break;
                                        case 1076374748:
                                            str4 = "ۖۨۘۘۛۛۛۘۙۦۘۨۘۡۤۖۖۘۘۢۖۙۥۧۘ۠ۦ۫ۗۡۡۡۢۨۘۧ۬ۥۖۙۥۘ۠۬۟ۛۘۛ۟ۗۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1736524801:
                                str = "ۢۛۜۘۜۜۥۘۛۢۨۡۚۧۘ۠ۨۘۘۦۖۖۧۖۜ۫ۦۡۙۢۘۧۦۡ۟ۘۘ۬ۘۧۘۘۦۡ۠ۧۗۜۢ۬ۚۥ";
                                continue;
                        }
                    }
                    break;
                case 706723536:
                    this.OoooooO = true;
                    str = "ۨۨۤۗۘۘۖۘۜ۠ۨۨۦۤۥ۠ۢۘۤۡۧۛ۫ۖۘۦ۠ۦۢۙ۫ۙۨ۟ۜۚۚۚۢۖۘۚۡ۬ۖۨ۠ۧ۫۬ۛ۫۬۫ۚ۬";
                    break;
                case 1040480469:
                    str = "۬۫ۖۘۡۛۚۥۧۘۨۧۦۥۡۘ۬ۨۦۜۚۚ۠ۧ۫۟ۤۡۧ۫ۙۨۜۗۧۙۜۘ";
                    break;
                case 2008449728:
                    str = "ۢۗۘۘۗۚۥۚ۬ۜۧۙۦۘ۬ۘۦۘ۟ۛۤ۠ۤ۟۟ۖۘۘۤۨ۫ۦۤ۠ۛۥۡۦۛۘۘ۫ۗ۫ۘۙ۠";
                    break;
            }
        }
    }

    public void OooOOO0() {
        String str = "ۗۥۧۘۦۦۖ۬ۤۗۥۤۡۘۙۚ۟۟۬ۤۘۘۜ۬ۘۨ۫ۘۧۦۛۜۖۗۢۚۛ۫ۚ۬ۖۦۥۘ۫ۚۡ۠ۡۧۘ";
        while (true) {
            switch ((((str.hashCode() ^ 199) ^ 671) ^ 490) ^ 1059309161) {
                case -1974336314:
                    str = "ۧۨ۟ۢۙۚۢۖۦۘۜۖۤۜ۫ۨۘ۠ۚۡۘ۠ۜۖۘۢۜۧۛ۫ۡۘۦۧۘ۫ۘۖۘ۟ۧۙ۟ۡۗۡ۫ۧۜۤ۠ۨۜۗۢۘۖۧۦۙ";
                    break;
                case -1782602437:
                    t7.OooO().OooOO0O();
                    str = "۬۟ۨۘ۫۬ۧۙۡ۫ۜ۠ۨۛۖۖۘۚۖۙۤۤۧۤۤۤۘۘۨۡۨۗۜۖۚ۬ۘۘ۟۫ۦۘۨ";
                    break;
                case -688743738:
                    t7.OooO().OooOO0();
                    str = "ۧۨ۟ۢۙۚۢۖۦۘۜۖۤۜ۫ۨۘ۠ۚۡۘ۠ۜۖۘۢۜۧۛ۫ۡۘۦۧۘ۫ۘۖۘ۟ۧۙ۟ۡۗۡ۫ۧۜۤ۠ۨۜۗۢۘۖۧۦۙ";
                    break;
                case -557895932:
                    return;
                case -375493913:
                    String str2 = "۬۟ۢۤ۟ۧۜۜ۬ۚۙۘۘۡ۬ۜۘۦۨۛ۬ۨۛۥ۬ۜۛۥۨۘۡۘۤۚۖۘۥۙۦۘ۬ۨۡۘۥۧ۬";
                    while (true) {
                        switch (str2.hashCode() ^ (-200379141)) {
                            case -1479370444:
                                str2 = "ۤۜۖۧۖۡۖ۟ۨۘۖ۫۟ۘۘۜۖۢۘۗۛۢۧ۠۠ۛۘ۬ۜۘۖۗۡۥۥۦ";
                                break;
                            case -421937241:
                                str = "ۧۦۥۘۨۗۥۙۦۘۡۚۗۛۤۧ۬ۧۚۜۗۗۜ۫۫ۢۦۡۘۙۚۨۡۦۨۜ۫ۛۥۘۗۛۥۘۘۢۙ۬ۤۖۦۖۥۛۦۤۤ";
                                continue;
                            case -328476448:
                                str = "ۤۤۥۘۡۜۖۘ۫ۘۘۜ۟۫ۜۥۤۖۖۗۡۧۛۙ۫ۥۖۡۘۚۢۡۘۥۛۥۙۘۚ۫ۘۥۡۖۖۘۖۛۥ۫";
                                continue;
                            case 1739169397:
                                String str3 = "ۘۗۡ۠ۗۡۧۡۨۜۧۧۥۤۖۤۢۛ۟ۦۜ۟۠۠ۛۦۦۘۜۘۙ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1438284943) {
                                        case -1050935770:
                                            str2 = "ۘۛۨۘۧ۠۟ۗۥ۫۠ۢۡۡۗۖۙۙۗۗۡ۠ۙۙ۬ۖ۬ۧ۠۟ۨۖۨۚۦۤۡۛ۫ۧ۫ۧۤۛۦۘۜۗ۬ۨۢ۬ۛۘۡ";
                                            break;
                                        case -825038409:
                                            str3 = "ۛ۫۟ۚۧۗ۟۠ۥۘۢۖۗۙۧ۠۠ۚۧۙ۬۟۬ۥۘۛۥۖۘۗۚۨۛۘۨۘ۫ۦۦۘۥۧۜ۟ۖۤ";
                                            break;
                                        case -73842709:
                                            str2 = "ۖۧۗۧۡۤۜ۫ۦۚ۫۬ۨۤۢۖۘۘۘۦۦ۫ۚ۟۫ۛۧۙ۫ۙۚۙۜۖۘۦۦ۫ۚ۫ۡۦۢۘۘۢۥۨۘۙۧۡۘۜۙۙ۠ۛۨۘ";
                                            break;
                                        case 1750918485:
                                            str3 = this.ooOO ? "ۚۡۗۡ۬ۨۙۙۦۘۦۤۤۢۗۡۛۜۖ۬ۡۧۘ۬ۡۡۘۤۢۥۘۤ۬ۧۘۤۙۥ۬۠" : "ۢۘۖۘۗۛۧۙ۬ۜ۬ۨۚۥۤ۠ۚۥۘۘ۫ۡۖۥۗۘۘ۫ۛۖ۬۫ۙ۫ۡ۬ۦ۬۠ۧۛۥۘۤۤۥ۫۟ۘۘ۠ۗ۟ۜۡۛۡۨ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 145829649:
                    this.ooOO = true;
                    str = "ۗۚۘۖۨ۫۠ۖۙۚۧۡۘۛۖۧ۬ۧۖۖ۬ۡ۬ۗۥۘۦ۫ۘۘۦۥۘ";
                    break;
                case 1230890585:
                    str = "۬ۥۡۘۥۥۘۖۧۨۘۢۥۖۘۛ۠ۦۘۨۚۘ۟ۡۡۨۖۜۘۚ۟ۖۘۛۨۜۛۜۦۨ۬۬۬ۜۧ۬۫ۘۖۢۤ۠ۖۤ۫ۦۧۘ۫ۧ۟";
                    break;
                case 2120672722:
                    this.ooOO = false;
                    str = "ۡ۠ۢۡ۫ۜۘۖۨۢۜۡۘۥ۟ۛۗۡۧ۟ۨۡۘۘۥۢۢۚۦۘۙۤۢ";
                    break;
            }
        }
    }

    @Override // z2.v7.OooO0O0
    public void error() {
        String str = "۬ۤۙ۬۠ۦۥۚۡۘۤۤۜۘۧۘۗۗۘۘ۟ۤۘۘۙۢۜۤۗۛ۫ۢ۠";
        while (true) {
            switch ((((str.hashCode() ^ 53) ^ 1) ^ 430) ^ 260163725) {
                case -1714204064:
                    return;
                case -1287452508:
                    this.OoooooO = false;
                    str = "ۗۦۚۙۡۜۘۧۙۥۘۥۡۛۛ۟۫ۧۡۡۘ۠ۤۦۘ۠۠ۜۘ۟ۚۨۘۧۖ۬ۦۨۢۢۢۦۤۨۥۘۗ۠ۨ۟ۨ۟ۙۧۖۘ";
                    break;
                case 1822666930:
                    str = "۟ۥۤۤۗۨۘۦۡۥۜۗۚۘۥۙ۫۠ۥۚ۫ۥ۠ۖۡ۠ۛۥۘ۠ۧۙ";
                    break;
            }
        }
    }

    public void initView() {
        String str = "ۖ۬ۨۡۖ۫ۧۗ۬۠۠ۡۘۦۧۖۘۤ۟ۧۧۜۙۙۙۚۧۡۜۘۜۡۥۘۚۢۡۘۨۙۡۘۢ۟ۖۘۤۥۥۗۨۥۗ۠ۘ";
        TranslateAnimation translateAnimation = null;
        int i = 0;
        RelativeLayout.LayoutParams layoutParams = null;
        int i2 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 767) ^ 71) ^ 943) ^ 1568178514) {
                case -2112742992:
                    translateAnimation.setDuration(1500L);
                    str = "ۡۛ۬۫ۜۥ۟ۢۖۡ۠ۖۘۥۦ۫ۖۗۙ۠ۨۡۘ۠ۜ۠ۛۘ۬ۡۘۧۛۛ۫ۢ۬۬";
                    break;
                case -2091701620:
                    str = "ۘۚۜ۠۟ۦۡۜ۫ۢ۠ۦ۠ۛۨۚۢۛۜۙۡۘۖۢ۠ۨۢۗۚۦۘ";
                    i = (i2 * 2) / 3;
                    break;
                case -1945558754:
                    str = "۬ۤۗۘۜۘ۫ۡۥۘ۠ۜ۫ۤ۫ۥ۬۠ۖۘ۫ۛۗۚۨۡۘۢۖۡۘۡ۠ۚ۫ۤۤۦۢۧۗۜۚۜۤۤۘۙۢۨۥۢ";
                    break;
                case -1635802567:
                    this.OooooO0 = (RelativeLayout) findViewById(R.id.capture_containter);
                    str = "ۨۢۤۧۦۙۤۥۙۜۗۦ۬ۦۧۨۥۘۦۤ۫۠ۤ۫ۧۥۛۚۢ۟۬ۦۡۚۗۡۚۢۗۧ۠ۘۥۥۨۖۜۡۘ";
                    break;
                case -1347426748:
                    translateAnimation.setRepeatMode(2);
                    str = "ۘ۫ۘ۬ۘۡۘۗۥۧۤ۟ۛۙۡۧۜۦۘۦ۠ۦۘۜۖۙۜۙۦۗۤۗۘۥۨۧ۟ۨۘ۫ۗ۟ۚۡ۬";
                    break;
                case -915040141:
                    str = "ۢۥۡۡ۫ۙۖۢۧۢ۟ۦ۫۠ۧۥ۬ۢ۠ۛۘ۟ۡۘۘۜۤۢ۟ۤۤ۠ۙۚۨۡۘۛ۫ۜۥ۠ۜ۟ۦۡۦۥۘ";
                    i2 = getResources().getDisplayMetrics().widthPixels;
                    break;
                case -730955992:
                    this.OooooOo.setAnimation(translateAnimation);
                    str = "۟ۢ۠ۗۚۧۧۜ۠ۥۤۛ۫ۖۧۥۖۡۘۤۙۗۚ۟ۜۧۖۥۥ۠۫";
                    break;
                case -181262814:
                    this.OooooOo = (ImageView) findViewById(R.id.capture_scan_line);
                    str = "ۙۢۢۛۙۢۙۨۨۘۡ۬ۡۤۘۚ۫ۧۡۧۜۧۦۦۧۤۥ۟ۢۨۙۤۥۨۗۘۧۘ";
                    break;
                case 561711512:
                    translateAnimation.setRepeatCount(-1);
                    str = "ۧۙۙ۟ۗۤۖۙۜۘ۫ۡ۠ۚۙ۠۬ۢۙۜۥۥۘ۬ۙۤۙۤۨۘۧ۟۫ۚۡۨۤۜۥۙۚۘ۬ۧ";
                    break;
                case 707966434:
                    layoutParams.height = i;
                    str = "ۛۥۢۖۙۤۡۢۖۘۖۙۖۦۜۚۢۙۤۘۘۨ۬ۡۘۜۨۜۦۚۥۘ";
                    break;
                case 724309786:
                    return;
                case 755598518:
                    this.OooooOO = (RelativeLayout) findViewById(R.id.capture_crop_layout);
                    str = "ۖ۠ۚ۫ۜۜۛ۟۠ۦ۟۠ۤۤۨۘۚۚۗۤۡۚ۟۟ۛۛۛۤۡۥ۠ۨۤۧ۟ۖ۠ۢۜۡ۫ۨ۟ۙ۟ۥۘ۟۠۠";
                    break;
                case 967471617:
                    str = "ۡۙۧۘۚۚۧۘۥۘۧۢۦۘۘۦۚۗ۫۠ۢ۟ۥۘ۬ۘۘۨۚۛ۬ۛۢۚۛ۫ۗ۬ۨ";
                    translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 2, 0.0f, 2, 0.9f);
                    break;
                case 1293998433:
                    layoutParams.width = i;
                    str = "ۜ۫۬ۗۥۦۡۧۜۤۨۘۧۖۜۘۗۙۛۘ۠ۥۘ۬۫۟ۤۦۦۘۖۦۛ";
                    break;
                case 1537386539:
                    str = "ۦۙۛۧ۟ۜۛۦۛۗۖۗۢۢ۫ۧۘۜۨۙۦۘۥۤۖ۠ۙۤۙ۫ۜۤۛۚۦۤۦۗ۫۫ۡۛۚۨۘۧۘۚۧۘۘۦ۫ۗۥۙۤ";
                    layoutParams = (RelativeLayout.LayoutParams) this.OooooOO.getLayoutParams();
                    break;
                case 1931396329:
                    this.OooooOO.setLayoutParams(layoutParams);
                    str = "ۡۚۡۛ۠۫ۛۜۖۨۗۖۡۘۗۨ۫ۚۦ۟ۙۦۥۘۧ۫ۛ۠۟ۗۤۨۜۘۙۧ۠ۚۥۖۢۥۖۘۙۚۡۘ۬ۤۧ۫ۚۡۙ۟ۧ";
                    break;
                case 1946135226:
                    translateAnimation.setInterpolator(new LinearInterpolator());
                    str = "ۗۙۘۘۢ۫۟ۚۚ۫۬ۚۖ۬ۡۜ۬۟ۨۧ۠ۨ۫ۦۘۦۢۗۗۚۤۚۤ۟۬ۨۛۧۚ۫ۢۖۦۡۖۦۘۥۖۜ";
                    break;
                case 1989152286:
                    ((LinearLayout) findViewById(R.id.linear_open_light)).setOnClickListener(new OooO0OO(this));
                    str = "ۨۚۘۘۜۢۡۘۖۛۛۜ۟ۥۘ۬ۨۙۦۙۨ۠ۥۜۖۢۧۢۡۢ۫ۢۡ۬ۨ۠ۨۡۜ";
                    break;
                case 2119687383:
                    this.Oooooo0 = (FrameLayout) findViewById(R.id.capture_preview);
                    str = "ۛۖۛۨۦۦۡۙۗ۬ۜۦۥۗ۠۫ۡۖۘۡ۠ۛۥۚۙۚ۠ۗۙۙۜۘۧ۫ۧۨۦۘۥۧۢۨ۬ۜ۟۫ۡۗۘۥ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۦ۫ۘۙ۫۠ۘۙۡۤ۟۠۟۟ۚ۟ۛۦۨۗۧۛ۠ۢۙۤۜۘۤۖۡۘۗۜۙۦ۠ۚۡۡۡۦۦۘۜ۬ۨۜۤۛ";
        boolean z = false;
        boolean z3 = false;
        while (true) {
            switch ((((str.hashCode() ^ 745) ^ 639) ^ 765) ^ 31249166) {
                case -1765685960:
                    str = "ۙۧۙۦۚۦۘۡۧۦۘۘۘۙۦ۬ۡۘ۠۬ۗۡ۟ۘۘۦۥۚۨۧۡۘۘۨۥۘۡۖۖۙ۫ۨ";
                    break;
                case -1765372083:
                    OooO();
                    str = "۠ۧۛۙۖ۠۫ۧۘۖ۬ۢۨۗۤ۬۟ۢ۫ۖۢۤۧۛۙ۠ۨۘۜۡ";
                    break;
                case -1652022382:
                    str = "۟ۘۡۘۘۤۦۢۜۘۘۡۘ۬ۘۨ۫ۙۧۡۘۨۙۦ۠۟ۡۡۨ۠ۨۜۘ۠۟۟ۢۡۦۘ";
                    break;
                case -1369301745:
                    str = "۬ۡۖۚۖۖۜۤۥۚ۫ۤۛۖۘۛۜۧۘۜۘۗ۬ۙۘۤۚۡ۫ۚ";
                    z = false;
                    break;
                case -1213368523:
                    OooOO0();
                    str = "ۤ۠ۦۡۗ۠ۛۥۨۛۡۙ۫ۜۦۤۗۜۘ۟ۗۦۘۤۤۦۚۗۨۙۢۦۛۙ۟۠ۖۜ";
                    break;
                case -1149717901:
                    return;
                case -1080251032:
                    super.onCreate(bundle);
                    str = "ۛ۬ۥ۟۫ۖۘۘۧۡۘۥۙۙۨۤۖۘۛ۬ۗ۫ۨۜۘۢۗۜۘۡ۬ۦۘۢ۬ۙۥۘ۫ۥۚ۟ۖۥۨۗ۟ۖ۫ۤۡۘۚۖ۠۟ۧۗۗۗ";
                    break;
                case -569555057:
                    String str2 = "ۙۥ۟ۚۖ۫ۦ۫۠ۦۢۡۘۧۡۜۚۚۡ۟۫ۗۤۨ۟ۥۖۨۖ۠ۘۘۙ۬ۘۘ۠ۜۗۖ۠۟ۥ۠ۡۚۗۘۘۗۛۤ۫ۘۖۘ۫ۤۨ";
                    while (true) {
                        switch (str2.hashCode() ^ 243800443) {
                            case -1751496902:
                                str = "ۤۙۥۘۤ۠ۡۘۜۙۜۘۙۧۤۘ۟ۙ۫ۡۥ۬ۨۖۘۙۘۥۥۦۧ۟ۧ۟";
                                continue;
                            case 169423474:
                                str = "ۜۤۛۧۢۤۤۢۜۛۛۖۘ۬ۗۡۘۜۚ۠ۤۤۚۢ۬ۦۖ۫ۜۘ۫۠ۦ";
                                continue;
                            case 1090837389:
                                String str3 = "ۡۛۢۘۧ۠ۧۤۗۧۤۧۥۤۘۦۗۥۘۖۡۛۗۛ۟ۚ۫ۘۘۡ۫ۜ۬ۢۚ۫ۜ۬ۢۙۘۘۥۦۨۧۙۜۘۦۛۘۘۨۙۨۥۢ۫";
                                while (true) {
                                    switch (str3.hashCode() ^ 733092901) {
                                        case -1563186336:
                                            str2 = "ۢ۟ۨۗۥۦۘۥۗۡۘۙ۫ۧۖۘۘۥ۠ۨۘۙ۟ۛۘۙۖۘۛۙۦۧۖۨۥۢۜۘۥۤۛۗۡۖۘ۫۠ۨۙۦۧۘۘۛۜ";
                                            break;
                                        case -1099144028:
                                            str3 = !z ? "ۖۖ۬ۖۗۡ۫ۥۜ۠ۘۗ۠ۘۜۘۧۜۢۚۚۘۘۜۘۡۥ۠۫۟ۤ" : "ۤۡۗۥۥۦۘۚۤۛۢۛۖۛۦۜۤ۠۫ۢۜ۫ۥۗۖۛۛۗ۟ۥۡۘۥۚۜۦۡۡۘۛۤۦ۬۠ۜۤ۠ۛۚ۠ۜۘ";
                                            break;
                                        case 1769205277:
                                            str3 = "ۦۛۗۛ۬۬ۧ۟ۗۜ۬ۦۘۡۤۜۤۤۛۛۧ۟۠۬۫ۥۛۛۥ۬۠۠ۖۦۦۤۨۜ۠ۘۖۨۡ۟ۡۘ۟ۤ۟ۛ۟ۧۘ۫ۘ";
                                            break;
                                        case 1847068845:
                                            str2 = "ۘۦۨۛۚۧۜۡۛۙ۠۠ۖۙۡۗۢۘۘ۬ۢۜۢ۠ۥۚۦۘ۠ۛۗ";
                                            break;
                                    }
                                }
                                break;
                            case 1096515381:
                                str2 = "ۡۜۦۘۦۡۦۗۛۥۜ۟ۥۚۘۥۤۜۚ۬ۜۨۦۡۘۢۦۗۥۡۖۘ۫ۧۙۜ۫ۢۥ۬ۡۘۤۤۙۖ۟ۡ۠ۖۢۘۖۗ۠ۜۥۘ";
                                break;
                        }
                    }
                    break;
                case -334230760:
                    z3 = true;
                    str = "ۗ۟ۥ۠ۖ۟ۢۤۧ۫ۡۨۘۗۦۧۘ۬ۨۙۛۗۨۘۡ۬ۢۚۘۜۙۡ۬ۙۢۘۘۖۖ۟ۢ۬ۤۚۨۦۘۧ۫ۨۛۗ۟";
                    break;
                case 307006067:
                    str = "ۧ۠ۤۨۜ۫۬ۙۜۘۦۖ۠ۙۧۚۤۧۗۜ۠ۥۘ۬ۦۥۨۜۧۘ۟ۙۗ";
                    z = z3;
                    break;
                case 434990847:
                    OooOOOO();
                    str = "ۜۡۚۨۘۧۘۨۛۦۘۡ۠ۢۛ۬ۤ۫ۜۘۢۙۚۘ۬ۜ۬۫ۦۘۜۚۢۛۢۙ۬ۦۖۛۨۥۘۥۖ۟";
                    break;
                case 447244806:
                    str = "ۨۛۘۘۦۚ۫۟ۦ۟۠ۧ۬ۗۜۘۤۧۜۤۖۖ۠ۖ۬ۥۤۘۘۗۘۜۘۧۥۤۡۦۤۨۙۢۛۗۦۡۢ۠ۛۜۧۦ۠ۚۛۡۥ";
                    break;
                case 801048194:
                    str = "۬ۡۖۚۖۖۜۤۥۚ۫ۤۛۖۘۛۜۧۘۜۘۗ۬ۙۘۤۚۡ۫ۚ";
                    break;
                case 1242807509:
                    OooOO0O();
                    str = "ۚۙۧۜۧۦ۠۠ۘۘۘ۠ۧۡۨ۟ۥ۫ۡ۫۫ۘۤۖۚۦۙ۬ۜۦۘۛ۬ۢۘۧۥۘۧ۟ۦۘۚۦۘۘۧۨۦۘ۬۠ۗۤ۠ۛ۠ۚۨ";
                    break;
                case 1288500826:
                    setContentView(R.layout.activity_sweep_code_zbar);
                    str = "۠ۤۜۘۦۡ۫ۘۚۡۘۜۤ۟ۛۢۦۘۚ۫ۖ۟ۛۡۘۧۗ۫ۘۧ۟ۢۨ۠ۜۤۖۧ۫۠ۤۖۘۘ۠ۚۛۙ۫ۘۘۖ۫ۤ";
                    break;
                case 1315270369:
                    String str4 = "ۡۖ۬ۙۛ۟ۗۚۤ۠۫ۚۢۡۨۘۢۚۤۧۧۥۨۢۜ۟ۚۖ۫ۨۡۤۤ۠ۘۢ۫۬ۥۘۘ۬۬ۜۥۡۘۜۦۚۡۗۦۘۨۙۘۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-162539962)) {
                            case -565932890:
                                String str5 = "ۙ۠ۙۧۖۥۘ۬ۡۖۘۖۥۨۧۖۛۨۥۨۘۗۤۘۡۛۜۘۡ۫ۤۖۚۧۥ۠ۨۘۨ۠۟ۨۜۨۗۚ۬";
                                while (true) {
                                    switch (str5.hashCode() ^ 2129076713) {
                                        case 204421628:
                                            str5 = "ۧۦۦۘۡ۫۫ۖ۠ۙ۠ۨۛۜۧۤۦ۠۬ۤ۬ۗۙۥۘۥۙۥۢۡۡۘ";
                                            break;
                                        case 824882875:
                                            str5 = ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0 ? "ۥۦ۟ۦۛۨۗۧۡۘۜۜۘۘۤ۫ۘۘۥۨۡۧۧ۫ۘۤۗۤۤ۫ۤۚۘۨۚۨ۠۟ۘۘۙۨۦۘ۟۫ۡۙۧۥۡ۠ۨۘ" : "۬ۨ۠۠ۡ۫ۨ۬۬ۖ۠ۨۘۙۥۖ۟ۛۙۘۚۜۘۨۚۙ۟ۘۘۡۧۨۥۙۥۖۛ۬ۘ۠۬۠ۛۗۜۤ۬ۗ۟ۘ۠ۖۗۦ";
                                            break;
                                        case 995505781:
                                            str4 = "ۥ۫۟ۦۧۤۖۨۖۘۛۧ۬ۛۙ۟۫ۥۧۘۤۤۦۘۨۤۦۘۡۗۗ۫ۛۢۙۤۖۘ۫۟";
                                            break;
                                        case 1975153140:
                                            str4 = "ۡۚۡ۟ۧۥۥ۠ۚۨۘۤۚۗۨۛ۟۫ۖ۬ۙ۠۬ۥۘۗۧۛۨۥۘ۠ۤۡۘۡۡۤۦۙۖۘ۬ۗۜ۫ۙ۫۬ۨۨۢۢۜۗۥۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case -4176246:
                                str4 = "ۦۗ۠ۜ۟ۗۜۚۜۘۧۧۘ۠ۚۖۘۤ۟ۜ۟ۡۗۗۥۖۘۢ۠۬ۡۦۚۢ۟ۖۢۤۛۡۛۚۛۙۚ۬۠۟ۚۢۖ";
                                break;
                            case 210443065:
                                str = "ۦۨ۟ۘۙۥۡۘۘۗۥۤۧۦۘۤۛ۠ۨۦۦۚۦۘۘۛۤۦ۫ۢۚ۠ۦۚۘۢۨ۠ۡۧ۫ۥۘۢۤۡۘ۬ۡۛ";
                                continue;
                            case 1218474810:
                                str = "۠ۖۘۘۤۢۤ۟ۗۤ۟ۗۜۘۜۦۤۨ۫ۘۘ۟ۦۧۨ۫ۢۨۖۛۙۖ۟ۛۜۖۘۚۤۤۖ۠ۡۘۡۛۨ";
                                continue;
                        }
                    }
                    break;
                case 1501170455:
                    str = "۠ۧۛۙۖ۠۫ۧۘۖ۬ۢۨۗۤ۬۟ۢ۫ۖۢۤۧۛۙ۠ۨۘۜۡ";
                    break;
                case 1896823375:
                    initView();
                    str = "۟ۙۡۘۨۢۘۘۘۢۦۘۥ۬۬ۤۘۖۘۡۙۙۧۨۥۚۦۖۗۥۖ۟ۚ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "۬۫ۚ۫ۘۘۘۧۙۦۤۛۛۤ۟ۜۜۤۧۜۡۦۢۧۨ۟ۨ۠ۘ۠";
        while (true) {
            switch ((((str.hashCode() ^ 9) ^ 819) ^ 788) ^ (-1953223543)) {
                case -1433937552:
                    return;
                case -630098292:
                    super.onDestroy();
                    str = "ۗ۬ۚۤۛ۟ۦۢۧ۟ۤۚۡۧۡۘۖۡۛۗۧۧۗۚۜۘۘۚۧ۟۬ۡۘۥۚۦۘۗۘۡۘۖۖ۠ۥۘۜۢۨۤۜۢۨۡ۠ۦۢ۟ۖ";
                    break;
                case 78875040:
                    str = "ۤۜۖۘۗ۠ۨ۠ۨۘۥۤ۬ۡۗ۫۬ۜۧۘۛۖۗ۠ۖ۠ۧۖۜۘۢۗۘۡۜۨۘ۠ۢ۠ۥ۠ۧۛۢۡ";
                    break;
                case 286397104:
                    this.o0OoOo0.removeCallbacksAndMessages(null);
                    str = "ۦ۬۬ۡۢۡۥۥۘۘۤۜۘۛۙۨۨۧۚۥۦۚ۫ۤۜ۟ۛۘۘۗۙۥ۫ۥۚۢۥۙۦ۟ۨ۠۠ۖۡ۬۟ۖۤۢ۟۬ۧ۬ۖۘ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        StringBuilder sb = null;
        String str = "ۛۚۨۤۜۨ۠ۗۦۘۤ۫ۡ۫۬ۡۘۡ۟ۛۙ۠ۙۤۚۜۘ۟۫۫ۙ۟ۡۖ۠ۗۤۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 514) ^ 466) ^ 984) ^ (-2000408386)) {
                case -2092462176:
                case -1635075589:
                    str = "ۨۡۜۘۜۛۢۢ۠ۥۖۗۜۘۤۡۙۜۙۥۗۤۨۘۢۗۨۢۨۧۖۥ";
                    continue;
                case -1966889084:
                    sb.toString();
                    str = "ۦۛۦۛۤۧ۫ۡۖۛۚۡۘۦۛ۫۠ۨۛۗۘۖۘ۠ۡ۬ۨ۬۟ۛۨۜۜۢۢۗۥۦۨۖ۟ۜۡۥۧۚۧۤۧ۠۠ۢۨۘۧ۫ۨ";
                    continue;
                case -1862139862:
                    str = "ۙۥۥۖۨۡۖۥۜۘۛۤۗۛۖۡۖۥۘۘۡۜۘۙۥۚۢۙۖۘۥ۫ۢ";
                    continue;
                case -1838528278:
                    return;
                case -1813537217:
                    str = "ۢ۬ۨۗۙۤۗۙۚ۠ۜۦۘۖ۫۬ۤۨ۟ۜۢۦۘۤ۟ۖ۫ۖۧۢۖ";
                    continue;
                case -983747021:
                    super.onRequestPermissionsResult(i, strArr, iArr);
                    str = "ۥۚۧ۠۬ۙ۫ۦۥ۟ۘۘۘۤ۠ۜۘۤ۫۟ۗۦۡۤۗۨۘۢۧ۫ۗ۬۬";
                    continue;
                case -493820630:
                    sb.append(strArr[0]);
                    str = "ۙۜۖۘۧ۟ۥۘۙۧۢ۟۫ۥۡۧۘۦۦۛۜۚۗۘۥۘۘۦۨۥۘۚ۟۫";
                    continue;
                case -463309410:
                    String str2 = "ۜۡۗۡ۠ۘۘۨۜ۠ۦۜۘۘۤۙ۟ۛۥ۟ۘ۟ۘۘۜ۫۠ۢۜۡۘۛۢۡ۠۬ۡۘ۬ۧ۬";
                    while (true) {
                        switch (str2.hashCode() ^ (-262504375)) {
                            case -958761257:
                                str = "ۜۗۘۖۘۤ۟۬ۘۘۧۡۥۖۤۖۘۨۜ۬ۗۙ۬ۘۡۦۘ۠ۛۖۧۚۚۨۥۘ۬ۘۘۦۥۨ۟۠ۖۘ۬ۘۥۘۚۡۜۢۢۘۘۨ";
                                break;
                            case -205762007:
                                break;
                            case 855333690:
                                String str3 = "ۧۜۨۘۙۧۧۘۜۡۛۥۖۘۛۦۚۡۤ۟ۛۛۚۘۡ۫ۖۙۘۧ۬ۤۙۢۘۚ۬ۛۦۙۜۥۥۜۦۤۙۦ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1760629373)) {
                                        case 467567439:
                                            str3 = iArr.length > 0 ? "۠ۙ۬۟ۚ۫ۧۤۥۢۨۢۨۨۧۨۡۘۦ۟ۗۦۢۢۘۜ۠ۖۗ۟" : "۫ۘۘۘۤۦۜۘۦۙۙۛۥۨۜۖۘۚ۬ۜۘۦۢۤ۫ۢۦۨ۟ۡۘۛۡۥۘۦۛۢۧۨۙ";
                                            break;
                                        case 576717936:
                                            str3 = "۬ۚۨۘ۬ۥۥۘۧۛۧۥۥۘۧ۬ۧۧۖۤۨۘ۠ۖ۟ۜۗۤۥۘۥۤۖۘ۫ۗۜۛۧۡۘ";
                                            break;
                                        case 1373628910:
                                            str2 = "ۢۧۡۘۥۦ۬ۦۢۥ۬۟ۛ۫ۨۚۡۡۤۢۢۦۗۜ۟ۡۦۜۛۜۖۘ";
                                            break;
                                        case 1791483521:
                                            str2 = "ۙۦۘۘۢۛۧ۠ۨۖ۟ۥۢۦ۟ۨۘۧ۠ۚ۬ۘۜۘۚ۠ۦۤ۟ۦۧۗۡۘۛۢۧۡۢۧۢۨ۬ۜۙۚ";
                                            break;
                                    }
                                }
                                break;
                            case 875983704:
                                str2 = "ۚۥۜ۟ۨۘۦۧۡ۠ۤ۟ۗۢۨۘ۫ۡۡ۫ۚۡۘۤۖۙۙۥ۫ۙۖۘ۫ۚۜۨۢ۟";
                                break;
                        }
                    }
                    break;
                case -363061500:
                    sb.append("onRequestPermissionsResult --> permissions[0]=");
                    str = "ۤۨۦۜۙۜۘۜ۬ۘۘۤۤۜۡۜۚۙۡۗۨۦ۠ۛۘۙۗۘۡۘ۬ۖ۫ۖ۟۫ۚۢۢۥۡۘۘۨۢ";
                    continue;
                case 97135294:
                    String str4 = "ۖۜۧۘ۬ۚۘۘۤ۠ۦۘۧۤۧۙۘۨ۬ۚۨۚ۠ۡ۠ۨۖۘۧۚۘۘۨۚۤۚۘۨۘ۠ۥۦۜۧۦۡۘۚ";
                    while (true) {
                        switch (str4.hashCode() ^ 835020844) {
                            case -1948827879:
                                str = "ۖۘ۬ۛۢۛۡۨۡۥ۫۫ۙۘ۟۫ۘۘۢ۟ۤ۠ۨۜۘ۫۫ۛۤ۬ۚۦۧ۫ۖۗۡۘۙۦۧۥۤۦ";
                                continue;
                            case 440939953:
                                str = "۬ۘۥۧ۬۫۫ۚۜۧۚۡۡ۟۬ۦۦۘ۬ۚۢۡۦ۠ۦۡۚۧۡۦۨۜۦۘ۬۬ۥۘۦ۫ۡۘۙ۬۠ۢ۬۟۠۬ۥۘ";
                                continue;
                                continue;
                            case 1228674549:
                                String str5 = "ۙۢۤۢۚۨۡۨۚۛۛۙۗ۠ۙۧ۟ۨۙۨۘۨۤ۟۠۬ۗۥۛۡۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 620567404) {
                                        case -829697611:
                                            str5 = "۬ۗۡۥ۠ۖۘۤۙۜۘۜۨۡۘۢ۟ۢۨۨۢۜۜۡۘۥۥۖۙ۟ۘۘ۠ۥ۬";
                                            break;
                                        case -806302743:
                                            str4 = "ۤۘۧۘ۟ۡۖۘۤۨۗۗۜۨۘۖۤۜۘۘۤۨۘۛۨۡۛۛۨۘۗۛۘۘۘ۠ۨۘۥۜۤۛۘ۟ۖۖۧۡ۫ۨ۫ۙۥۘۙۗۡۘ";
                                            break;
                                        case -294930929:
                                            str5 = i != 99 ? "۠ۡۦۘۢۜۥ۟ۥۨۦۢۗۗۗۦۘۢۙۨۜۚۤۙ۟ۖۘۤ۠ۜۘ۫۠ۤۧۨۦۘۗۢۢۤۚۜۙۥ۫ۚۜۙۘ۠" : "ۜۥ۠ۙۛۤۨۘۡۛۨ۠ۘۜۘۢۥۘۧۦۙۦۚۛ۫۫ۘۜۥۖۧۧۘۘۙۜۦۘ";
                                            break;
                                        case 1470171626:
                                            str4 = "ۢ۬ۨۨۦۘۘۨۨۦ۟ۜۗۦۡۚۤۜۖۘۘۚ۠۟ۗ۠ۧۡ۠۟ۗۥۤ۟ۗۛۥۙ";
                                            break;
                                    }
                                }
                                break;
                            case 1641591585:
                                str4 = "ۘۥۨۢۚۚۖ۫ۡۘۡۦۤۦۚۙۦۧۛۜۥۖۤ۬۠۠ۥۡ۫۟۟ۥۖۛۦۡۘۘۖۦۗۚۡۧۘ";
                                break;
                        }
                    }
                    break;
                case 153602695:
                    finish();
                    str = "ۨۡۜۘۜۛۢۢ۠ۥۖۗۜۘۤۡۙۜۙۥۗۤۨۘۢۗۨۢۨۧۖۥ";
                    continue;
                case 164358840:
                    sb = new StringBuilder();
                    str = "ۖۛۢۚ۬۠ۛۘۖۤۘۤۘۦۘۛۥۘۢۡۧۘۖۘۥۙۡۖ۠ۗۨۘۜ۬۫ۛ۫۠ۥۜ۠ۢ۟ۘۘۗۗ۬ۛ";
                    continue;
                case 362037343:
                    sb.append(",grantResults[0]=");
                    str = "ۘ۟ۛۧ۠ۖۘۨ۟ۥۗۗ۫ۥ۬ۙۡۘۖۘۛۗ۬ۤۘۡۘ۠ۥۘ۟ۗۚۜۚۥۡۢۡۥۜۥۧۤۜۧۤۨۘۡ۟ۡۘ";
                    continue;
                case 856062497:
                    sb.append(iArr[0]);
                    str = "ۨۖۡۘۨۨۤۗ۠ۘۘۘۧ۠ۡۘۛۖۥۚۜۘۦۘۥۡۧۘۢۙۜۘۗۤۦۦۘۦۘۦ۠۫";
                    continue;
                case 1207895580:
                    str = "ۚ۫ۡۘۛۧۤ۫ۨۗۗۦۡۘ۬ۚ۟ۥۚۦۚۨۘۚۘ۟۬ۨۧۘۦ۬ۦۨۜۜۘۙۢۘۘۛۤۖۨۢۥۘۙۘ۬ۢۥۤ";
                    continue;
                case 1723511461:
                    str = "۫ۧۗۙۤۡ۟ۡۜۚ۟ۤ۠ۥۜۥ۠۬ۜۡۦۘۚۙۥۤۛۖۢ۫ۦۘ";
                    continue;
                case 1859254077:
                    String str6 = "ۚۤۨۗۗۦۘۥ۫ۤۢ۠ۨۘ۬۬ۦۘۤۧۢ۟ۙۙۦۗ۟ۚۛۘۘۢۦۖۥۨۗۚۨۖۘ۬ۨۡۘۤۢۦ۬ۙۧۢۢ";
                    while (true) {
                        switch (str6.hashCode() ^ (-2146516742)) {
                            case -1550870350:
                                str6 = "ۚۡۜ۫۬ۛۗۘۦۘۖۤۘۘۦ۬ۖۘۢۧۡۘۡۤۦۘ۬ۘ۬ۧۛۢۚۧۦۖۤۨۡۢۗ";
                                break;
                            case -1123696999:
                                break;
                            case 14607650:
                                String str7 = "۠ۖۖۘۦۧۦۘ۟ۖۜ۟۬ۖ۟ۘۙۨۡۡۘۥۧۖۘ۠ۥۨۧۛۨۘۛۨۧۙ۟ۚۡۖۘ۟ۘ۫ۡۤۢۢ۟۟ۖۤۘۧۦۗۥ۬۬";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1335805200)) {
                                        case -1974718863:
                                            str6 = "ۗۦۚۢۦۧۘ۬ۧۘۦ۠ۡ۫۟ۗۗۛۖۤ۟ۜۘ۠ۚۜۥۜۦۡۚۜۘ۠ۢ۟ۢۨۡۨ۟۠ۗ۫ۘۨ۠ۖۚۡۦۘۥۛۧۨۛۛ";
                                            break;
                                        case -1777557203:
                                            str7 = "ۘۢۜۘ۬ۢۙ۬۟۠۫ۧۙۤۙۢۢۙۜۘۤۢۦۘۡۧۦۘۨۛ۠ۡۧۨۘ۟ۦۘۥ۫ۜۘۖۨۨۘ۠۬ۗۙۡۖۘ۟ۦۧ۠۫ۛۢۙ";
                                            break;
                                        case 1001992031:
                                            str6 = "ۛۢۛۥۘۡۘۛۡۖۧۗۤۗۥۘۨۨۚۤۢۘۙ۟ۘۘ۬ۘۨۘۜۘۚۢۖۚۙۥۜۦۨۦۢۤ";
                                            break;
                                        case 1047711001:
                                            str7 = iArr[0] == 0 ? "۬ۢۨۘ۬ۨۡۧۜۧۘۘ۟۬ۦۖۧۘۦۛۡۖۦۛۢۡ۬۠ۤۚۤۜۤ۠ۦۦۘۢۤۘۘۢۗۚۥ" : "۟۟ۥۘۧۘۘۡۚۥ۫ۛ۠ۨۗۜۨۨۘ۟ۡ۟ۛۧۜۦۡۗ۟۫۫ۨۤۖ";
                                            break;
                                    }
                                }
                                break;
                            case 1733182418:
                                str = "ۨۡۧۘۦۧ۟ۢۢۤ۟ۧۥۘۥۜۙۘۥۗۧۗۢۙۡۘۧۧۡ۫ۨۢۡ۬ۚۖۘۘۙۦۤۛ۫ۖۘ۟ۨۢ۟ۢ۬ۥ۬ۘۘ۟۠ۨۘ";
                                break;
                        }
                    }
                    break;
                case 1901350083:
                    OooO();
                    str = "ۙۥۧۘۙۧۜۘۧ۬۬ۨۧ۬ۢ۬ۖۘۥۗۙ۫ۙ۬ۤۨۘۦۛۘۘۨۙ۠";
                    continue;
            }
            str = "ۦۚۧۤۥۙۗۥ۠ۧ۫ۛۧۘۡۢۚۨۘ۠ۘۢ۫ۚۥۜۗۤۥۛۘۗۡۘۘۘۥۧۘۨۜۖۘۜ۬ۤۥۦۡ۟۠۠ۗۤۖۘۖ۟ۡۘ";
        }
    }
}
