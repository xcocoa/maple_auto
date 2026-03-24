package com.cyjh.elfin.ui.activity;

import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.media.AudioAttributesCompat;
import com.ac.R;
import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.foundation.g.a;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.ui.view.customview.TitleView;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.umeng.analytics.MobclickAgent;
import com.zbar.zbar.decode.CaptureActivityHandler;
import java.io.IOException;
import z2.c5;
import z2.jv;
import z2.pv;

/* JADX INFO: loaded from: classes.dex */
public class SweepCodeActivity extends BaseActivity implements SurfaceHolder.Callback {
    public static final String o00oO0O = "SWEEP_RESULT_BACK";
    private static final float o0ooOO0 = 0.5f;
    private static final long o0ooOOo = 200;
    private ImageView OooooOo;
    private pv Oooooo;
    private CaptureActivityHandler Oooooo0;
    private boolean Ooooooo;
    private MediaPlayer o00O0O;
    private boolean o0OoOo0;
    private boolean ooOO;
    private RelativeLayout OooooO0 = null;
    private RelativeLayout OooooOO = null;
    private boolean OoooooO = false;
    private int o00Oo0 = 0;
    private int o00Ooo = 0;
    private int o00o0O = 0;
    private int o00ooo = 0;
    public boolean oo000o = true;
    private final MediaPlayer.OnCompletionListener o00oO0o = new OooO0O0(this);

    public class OooO00o implements View.OnClickListener {
        public final SweepCodeActivity OoooOoO;

        public OooO00o(SweepCodeActivity sweepCodeActivity) {
            this.OoooOoO = sweepCodeActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = "ۢۚ۫ۥ۠ۡۘۦ۫ۡۘۤۗۥۙ۟ۜۧۜۘۛۦۥۘۜۙ۟ۙ۟ۡۗۖۖۗۚۥۥۙۥ";
            while (true) {
                switch ((((str.hashCode() ^ 242) ^ 89) ^ 785) ^ 2075161692) {
                    case -1553325097:
                        return;
                    case -1280070217:
                        str = "ۖ۠ۦۘۚۘۖ۬۠۠ۡ۠ۜۘۡۥۧۨۡۢۖۗۖۘ۟ۢۜ۫۫ۥۘۗۢۨ";
                        break;
                    case 1224560684:
                        this.OoooOoO.OooOOo0();
                        str = "ۘ۬ۧ۬ۦ۟ۢ۟ۖۘۦۘۘ۬ۜۧۖۡۨۦۙ۠ۨ۬ۥۘۚۤۥۛۗۥۘۘۢۨ۬ۤۖۘۢۚۗ۫۬ۚ";
                        break;
                    case 2142591747:
                        str = "۟۬۫ۡ۬ۦ۬ۡ۬ۛ۟۠ۤۚ۬۫ۡۚۙۢ۫ۜۘۖۢۢ۫۟ۢۨۛۦۨ۟ۡۛۚۥۧۨۚۚ";
                        break;
                }
            }
        }
    }

    public class OooO0O0 implements MediaPlayer.OnCompletionListener {
        public final SweepCodeActivity OooO00o;

        public OooO0O0(SweepCodeActivity sweepCodeActivity) {
            this.OooO00o = sweepCodeActivity;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            String str = "ۨۤۚۘۙۥۗۧۜۘۚ۫ۡۘۙۥۖۢ۟ۧ۠۠۫ۗۢۨ۠ۚ۟ۢۨۘۨۖۚۘۘۛۙۘۙۙۚۛۥ۠ۚۥۛ۫ۦ۟ۙ۠";
            while (true) {
                switch ((((str.hashCode() ^ 811) ^ 575) ^ 796) ^ 1832080135) {
                    case -1533371176:
                        mediaPlayer.seekTo(0);
                        str = "ۛۛۖۡۙۙۨۚۨۘۡۘۡ۟ۧۧۚ۫ۜۤۧۧۡۙۡۤۧ۠ۡۦۘۧۙۨ۫ۦ";
                        break;
                    case -843436734:
                        return;
                    case -401082968:
                        str = "ۜۤۜۘۧۦۢ۟ۢۥۘۦۢۥۘۗۡۨۘۢ۬ۚ۠ۛۚۙۙۗۛۖۘۙ۫ۥۘۨۦۨۘۚۗۜۙ۬ۧۘۘۥۘۡۡۘ۬ۢۗ";
                        break;
                    case 1848961681:
                        str = "۠ۜۜۜ۠۠ۛۜۤۗۤۤۦۜ۟ۙ۫ۡ۫ۘۘۜۚۜۘۡۖۖ۠ۦۘۘۖۢۖۘۗۚۨۜۡ۟ۧ۠ۛ";
                        break;
                }
            }
        }
    }

    public class OooO0OO implements TitleView.OooO0O0 {
        public final SweepCodeActivity OooO00o;

        private OooO0OO(SweepCodeActivity sweepCodeActivity) {
            this.OooO00o = sweepCodeActivity;
        }

        public /* synthetic */ OooO0OO(SweepCodeActivity sweepCodeActivity, OooO00o oooO00o) {
            this(sweepCodeActivity);
        }

        @Override // com.cyjh.elfin.ui.view.customview.TitleView.OooO0O0
        public void onClick(View view) {
            String str = "ۥ۠۟۬ۢۨۢۖ۬ۦۗۘۘۦۖۨۡ۫ۜۘ۟ۦۘۘۗۗ۬ۖ۟ۖۙۡۨۘۖۡۖۘۖ۬ۨۘ۟۫ۡۘۛۗۙۘۛۢۚۚ۫";
            while (true) {
                switch ((((str.hashCode() ^ 520) ^ a.aP) ^ 771) ^ 2031260866) {
                    case -1699354778:
                        this.OooO00o.finish();
                        str = "ۛۧۥۨۦ۫ۙۥۖ۬ۛۥۘۨۡۚۤۥۨۚۘۛۥ۫۠ۖۚۖۘ۫ۙۜۖۢۛۥۥۨۘۜۤۡ۠ۨۙۡۙۦۖۤۙ";
                        break;
                    case 1031241905:
                        str = "ۗۦۡۛۛ۬ۚ۟ۧۜ۠۬ۢۥۚ۫ۤۚۨۦۨۘ۟ۙ۬۫ۨۦۨ۠ۦ";
                        break;
                    case 1231038918:
                        return;
                    case 1641016638:
                        str = "ۡ۬۟ۢۨۜۘ۟ۜۖ۬ۗۦۙۧۤۙۥۧۢۥ۠۫۬ۤۚ۬ۚ۠۫ۨۘۖۦۜۘۧ۟ۧۡۡۢۙۚۧ";
                        break;
                }
            }
        }
    }

    private void OooOOO(SurfaceHolder surfaceHolder) {
        try {
            jv.OooO0O0().OooO0o(surfaceHolder);
            Point pointOooO0OO = jv.OooO0O0().OooO0OO();
            int i = pointOooO0OO.y;
            int i2 = pointOooO0OO.x;
            int left = (this.OooooOO.getLeft() * i) / this.OooooO0.getWidth();
            int top = (this.OooooOO.getTop() * i2) / this.OooooO0.getHeight();
            int width = (i * this.OooooOO.getWidth()) / this.OooooO0.getWidth();
            int height = (i2 * this.OooooOO.getHeight()) / this.OooooO0.getHeight();
            OooOo0o(left);
            OooOo(top);
            OooOo0(width);
            OooOo00(height);
            OooOo0O(true);
            String str = "ۙۖ۬ۖۘ۠ۧۤۖۘۥۧ۟۠ۖۘ۫ۗۦۘۙۚ۠۠ۥۧۖ۫ۜ۠ۧۙۚ۟ۦۙۗۦۘ";
            while (true) {
                switch (str.hashCode() ^ (-504842405)) {
                    case -1754782301:
                        this.Oooooo0 = new CaptureActivityHandler(this);
                        return;
                    case -624486199:
                        String str2 = "ۙۛۡۧۙۛ۬ۨ۠۠۫ۥۡۚۡۗۦ۟ۢۖۘۘ۟ۘۧۛۘۘۢۡۘۘ۟۟ۛۡۘۘۜۤۡۘۚۙ۠ۗۘ۬ۧۡۤ";
                        while (true) {
                            switch (str2.hashCode() ^ 1788804921) {
                                case 1369738634:
                                    str2 = this.Oooooo0 != null ? "ۘۨۤ۬ۗ۬ۡۛ۠ۖۖۘۢۛۖۚ۫ۡۛۧۦۘۨۨۘۨۖۨۖۧ۫ۧۦۖ۟۬ۦۡۢ۫۠ۨ۠ۙۢۘۜۗۗ" : "۬ۙۙۙۙۡۢۤۤۗۗۘۘۡۜۖ۟ۜۥۙۛۡۢ۬ۜۥۢ۠۫۠ۖ";
                                    break;
                                case 1710267484:
                                    str = "ۛۛۨۚۜۘۧۤۘۘۥۖۤۜ۫۠ۨۡۘۘۨۖۧۘۘۢ۬ۙۛۡۘ۫۫ۡۢۜۧۘ۠ۙۜۛۘۥۘۜ۬ۡۘ۫ۘۘ۠۬ۚۡ۬۟";
                                    continue;
                                case 2074188882:
                                    str2 = "۬ۢۙۛۘ۠ۚۚۢ۫ۗۦۧ۠ۜۘۙ۠ۙ۟ۙ۫ۤۦۘۡۛۖۤۦ۫";
                                    break;
                                case 2115485358:
                                    str = "۟ۥۖۘۢۖۡۨۤۥۖۢۖۜ۬ۢ۟۠ۚۜۡۘۖۡۜۘۡۜۡۘۤۡۤۚ۠۟ۡ۫ۛۚۖۜۘۜۛۘ";
                                    continue;
                            }
                        }
                        break;
                    case -114658758:
                        str = "ۜۦ۠۬ۛۥۤۨۡ۠ۨۘۤۘۡۚۗۜۘ۫ۥ۫ۘۧۡۛ۟ۧۨۦۜۘۜۛۜۢۜۗۦۘ۬ۢۘۘۡۛۥۨۤۖۦۛۘۥۚ";
                        break;
                    case 1765584178:
                        return;
                }
            }
        } catch (IOException e) {
        } catch (RuntimeException e2) {
        }
    }

    private void OooOOO0() {
        String str = "۬ۦۘۛ۫ۜۘ۫۫ۡۘۦۧۙۨۥ۫ۥۡۖۘ۟ۖۜ۠ۥۦۘۜۥۜۧۡۚۥ۟۠ۤۖۚ۫ۖۖۘۖ۬";
        while (true) {
            switch (str.hashCode() ^ (-1780932170)) {
                case -1955518194:
                    return;
                case -479256051:
                    str = "ۢۥۡۘۘۡۛۡۥۨۥۛۥۖۜۨۨ۟ۤۥۨۛۧۘۗۡ۬۫ۗۦۦۘ";
                    break;
                case 1070297107:
                    String str2 = "۟ۜۜۘۖۧۜۘۧۡۧۢۜ۠۬۟ۜۘۙۗۜۖۗۢۗۖۛۨ۟ۖۘۖۨۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 817203459) {
                            case -2099065877:
                                String str3 = "ۗۧۨۨۚۖۡۨۚۦۨۘۤۗۜ۫۠ۧۜۜۧۡۖۜۡۙۚ۠۟ۦۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1641122966)) {
                                        case -1683390703:
                                            str3 = this.o00O0O != null ? "ۥۤ۬ۙۥۛ۠ۚ۫ۘۧۘۧ۟ۖۘۖۢۜۛۘ۬ۙ۬ۡ۫ۧۦۘ۠۟ۤ۫ۖۛۚۛۥۘۥۗۦۘۡۗۗ" : "ۙ۟۠ۨۤۖۘ۠ۖۜۙۡۖۘۡۢ۠ۨۦۜۧۢۨۘۚۢ۟ۦ۬۟ۢۧۨ۠۟ۥۘۜۗۡۜۛۤۖۜۖۘۜۚۥ۟ۙۤ";
                                            break;
                                        case -1106428802:
                                            str2 = "ۧۥۡۘۜۖۖۦۛۡ۬ۘۦ۫ۘۘۚۥۜۘۦ۫ۧۨ۬ۖۛۜۙۚۨۢۚۛۨۤ۬ۥۚۦ۟ۚۥۜۘۥۧ۬ۖۢۚ";
                                            continue;
                                        case -699584431:
                                            str3 = "ۗ۬ۡ۬ۜ۬ۢۦۙۤۙۢۥۦۙۖۖ۟ۢۖۘۤ۟ۦۘۗۥۦۘ۫ۖۨۘۖ۠ۚ۟۠";
                                            break;
                                        case -579931009:
                                            str2 = "ۖۧۘۘۛۖۗۧۨۡۜۜۖۘ۬۟ۥ۠ۢۛۨۤۨۨ۠ۖۧۢۖۘۦ۫ۦۘۧۘۖۛۘۛۖۚ۬۬ۤۨۘۙ۬ۗۦ۟۬ۗۧۘ۠ۘۥۘ";
                                            continue;
                                    }
                                }
                                break;
                            case -1991999430:
                                setVolumeControlStream(3);
                                MediaPlayer mediaPlayer = new MediaPlayer();
                                this.o00O0O = mediaPlayer;
                                mediaPlayer.setAudioStreamType(3);
                                this.o00O0O.setOnCompletionListener(this.o00oO0o);
                                AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = getResources().openRawResourceFd(R.raw.beep);
                                try {
                                    this.o00O0O.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                                    assetFileDescriptorOpenRawResourceFd.close();
                                    this.o00O0O.setVolume(0.5f, 0.5f);
                                    this.o00O0O.prepare();
                                    return;
                                } catch (IOException e) {
                                    this.o00O0O = null;
                                    return;
                                }
                            case 240315804:
                                str2 = "ۡۜ۠۟ۨۘۢۨۘۘ۬۠۬ۡۚۢۡۧ۟ۛۙۤۛۗۘۧۨۘۚۜۥۘۢۦۤۘۦۢ۬ۦۥۘۥ۟";
                                break;
                            case 672951090:
                                return;
                        }
                    }
                    break;
                case 1945654415:
                    String str4 = "۠ۨۖۘۦۢ۠ۤۦۗۚۡۤۙۗۚۖۨۢۜۤۨۘۜۤۛۧۥۡۘۦۧۡۥۗ۟ۢۡۧۨۧۤۥۗۗۧۛ۟۫ۗۢ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1176922647)) {
                            case -1617531867:
                                str4 = !this.o0OoOo0 ? "ۤۥۨۘۥۧۥۜ۟ۙ۠ۨۡۙۧ۟ۜ۠ۜۘۛ۫ۖۧۡۧۘۗ۬ۤۡۥۗۜۗۡۧۢۥۘۦ۫۟ۘۛ" : "ۙۙۜۤۗۥۘ۠ۖۡۖ۠ۡۘۧۦۨۘۥۢۖۘ۟۫۫۟ۨۚۚ۠ۡۚۤۥۙۥۨۧۗۦۘۧۘۘ۟ۗۦۘ";
                                break;
                            case -1370384878:
                                str = "ۖۘۡۘۖ۫ۤۜۘ۬ۡۖۛۢۥۦۘۦۢۜ۟ۤۢۥۢ۬ۥۡۗۤۗۥۤۗ۟۫ۙۦۘۥ۠ۥۘ۫ۤۨۘۘۤۦۢۤۖۘۥۥۖۦۚۢ";
                                continue;
                            case 821302676:
                                str4 = "ۡۗۦۘۛۜۢۨۦۥ۫ۨ۟ۧ۫ۦ۟۫ۨۘۨۧۢ۬ۦ۫۬ۧ۟ۖۛۘۘۢۖ۫ۗۚ۬ۡۙۤ۠ۧۦۘ۫ۤۥۚۘۥۘ";
                                break;
                            case 1890512971:
                                str = "ۦۚۛ۠۬ۥۘۙۧۢۙ۠ۚۚ۠ۨۨۚۖۧۢۡۢۥ۟ۘۛۛۥۛ۟۬ۛۙۜۘ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    private void OooOOOO() {
        OooO00o oooO00o = null;
        String str = "۟ۢۛ۟ۙۧ۠ۖۚۤۙۜۖ۬ۦۘۧۤ۟ۗۧۖۤ۬ۛۥۗۨۘۚۢۥۘۦ۫۫ۙۗۥۘ";
        TitleView titleView = null;
        while (true) {
            switch ((((str.hashCode() ^ 433) ^ 452) ^ 955) ^ (-930335391)) {
                case -1502891964:
                    str = "ۗۦۡۖۘۧۧ۬ۗۦ۠ۛۡۘۜۚۘۘۘۚۡۜۘۧۜۦ۟ۙۘۘۤۦۧۧۡۨۘۙۢۖۙ۟ۡۦۛۙۧۜۛۤۗۨ۬ۨۦۘۥۘۘۘ";
                    break;
                case -1356037705:
                    return;
                case -1313575120:
                    titleView.setleftImage(R.drawable.ic_back);
                    str = "۬ۤۘۧۚۨۖ۠ۙۤۢۥۘۚۧۨۛۜۘۗۜۙ۠ۦۜۨۦۗۜۛۥۧۜۘۤۘ۟ۢۘۧۘ۟ۦۥۜۦۨۘۚ۠ۧ۟ۥۡ۬۬ۧ";
                    break;
                case -571219771:
                    titleView.setTitleText(getString(R.string.sweep_code_register_code));
                    str = "ۨۗۧۖۧۖۘۥ۬۟۫ۨۗۖۜۡۖۧۥۘۨۛۚ۠ۥۧۖۥۥۘ۟۫ۤۥۘۧۘۛ۠۫ۚ۫ۜۘ۬ۚۥۚۦۖ۬ۨۜۘ";
                    break;
                case -494800399:
                    str = "ۛۙۜۘۘۢۚۜۛۗۤۙۨۘۙۖ۟ۡۧۖۨۨۜۦۘۤ۟ۗۙ۠۫۫";
                    titleView = (TitleView) findViewById(R.id.id_title);
                    break;
                case 351620309:
                    titleView.setOnLeftImageViewListener(new OooO0OO(this, oooO00o));
                    str = "۟ۢۗۜۛۥۥۘۡ۠ۨۘۗ۠ۡۘۡۡ۟۫ۘۤۤۘ۠ۖۜۡۨ۟ۖ۬ۤۖۘۖ۠۠";
                    break;
                case 1486572830:
                    titleView.setVisibilityRightImage(4);
                    str = "۫۬ۡ۠ۘۤۖۚۘۘ۠ۥۧۥ۟ۛۜۡۦۛ۬ۗ۠ۧۢۢۘ۟ۚۚۢۥۘۡۡ۟ۘۧ۟۬ۢۙ";
                    break;
            }
        }
    }

    private void OooOOo(String str, Bitmap bitmap) {
        String str2 = "ۛ۠ۡۘۨۚۜۘۖ۬ۘ۫ۚۗۤ۫ۡۘۖۧۦۘۙۚۘۛۜۡۤ۟ۥۘۢ۠ۚ";
        while (true) {
            switch ((((str2.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE) ^ 137) ^ 573) ^ 1682347677) {
                case -1619586522:
                    Toast.makeText(this, "Scan failed!", 0).show();
                    str2 = "۟ۢ۫ۖۜۨ۠ۚۥۘ۠ۚۡۢۢۥۘۙۙۨۘۦ۠ۧۦ۬ۘۘۤ۠ۙۖ۠ۘۘۗۢۡۥۖ۟ۤۤۡۤ۟ۦۘ۬ۤۨۘۡ۫ۧۜۡ۟ۡۜ۟";
                    break;
                case -668977621:
                    str2 = "ۧۤۖ۬ۡۨۜۜۙۙ۠ۥۨۖۢۜۜ۬ۚ۬ۡ۟ۡۚۢۗۚۛ۬";
                    break;
                case -403755937:
                    return;
                case 831285085:
                    String str3 = "ۖ۠ۡۢۤۜۘۢۜۘۢۦۧۘۢ۟ۚۜۜۘۧۛ۬ۛۨۖۛۛۜۤۧۦ۬ۦ۬۫ۥۘۧۘۜۘۘۢ۠ۢۖۗۖ۫ۖۘ";
                    while (true) {
                        switch (str3.hashCode() ^ 1308818835) {
                            case -1347428739:
                                String str4 = "۟۠ۥ۬ۜۛۤۙۦۘۖ۟ۖۘۗۤۥ۬ۨ۫ۡۢ۬ۘۘۡۘۜ۟ۖۘۧۜ۟ۗۜ۬۬۠ۤۙۖۘۥۧ۫";
                                while (true) {
                                    switch (str4.hashCode() ^ 1326647753) {
                                        case -1717525629:
                                            str4 = TextUtils.isEmpty(str) ? "ۤۥۦۘۜۡۦۘ۫ۨ۫ۗۦۥۖۢۚۜۤۚ۬ۜۛۙۙ۫ۤ۬ۛۛۥۥۘۥۧۙۛۜۗ" : "۫ۜۨۚۢۨۘۙۖۨۘ۟ۗ۟۠۬ۧۖۜۘ۫ۖۜۘۚ۟ۧۡۛۢۘۗۦۥۦۡۘ۠۬ۖۖۛۙۢۤۧ";
                                            break;
                                        case -1152657232:
                                            str4 = "۫ۨۤ۬ۖۧۥۘ۠۠ۦۗ۫ۦۖۚۗۚۙۥۘۡ۬ۨۘۢۘۖۘۡۚۡۘۙۜۥۘۗۗۚۥ۬۟ۘۜۛ";
                                            break;
                                        case -927640391:
                                            str3 = "ۤۚ۫ۜ۠ۡ۠۫ۦۙ۟ۘۤۜ۫ۙۨ۫ۥۨۨ۠ۦۘۘۗۛۨۨ۬ۘۥۚۧۚۛۘۘۜۨۖ۬ۚۙۨۡۙ۟ۘ۬";
                                            break;
                                        case 1090815810:
                                            str3 = "ۖۘۧۡۚۨۘۦۧۚ۬۬۠ۖۖۗ۫ۙۡۘ۟ۖۦ۠۠ۘۗۦۨ۬ۧۧۛۧۡۦۘ۠ۘۜۘ۠۠ۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case -635780295:
                                str2 = "۟ۢ۫ۖۜۨ۠ۚۥۘ۠ۚۡۢۢۥۘۙۙۨۘۦ۠ۧۦ۬ۘۘۤ۠ۙۖ۠ۘۘۗۢۡۥۖ۟ۤۤۡۤ۟ۦۘ۬ۤۨۘۡ۫ۧۜۡ۟ۡۜ۟";
                                continue;
                            case -183356473:
                                str3 = "ۙ۫ۘۘۘۢۛۗۗ۫۬۫ۨۙۛۤ۫ۥۘۗۖۥۘۡۤۘۘۨۦۥۘ۠ۡۤۖۛۚۙۥۤ";
                                break;
                            case 1351690612:
                                str2 = "ۦۨۨۚۖۘۢ۫ۧۦۙۦۘ۠ۧۚۚ۠ۗ۟ۡ۬ۜۘۜۛۚۗۡ۟ۡۨۤۨۥۗ۫ۖ۟۠ۖۖۘ۫ۚۥۘ۬ۜۥ";
                                continue;
                        }
                    }
                    break;
                case 1186172561:
                    str2 = "ۙۘ۟ۚۗۨۘۦ۟ۘۘۤۛ۠۬ۥۙۥۥۜۥۘۥۢۨۤۡۘۜۚۚۘۡ۟ۚ۫ۤۦۘۙ۬ۜ۬ۦۖۘۡۚۛ۫ۡۥۨۙۜۨ۠ۜ";
                    break;
                case 1698927529:
                    str2 = "ۛۧۙۤۧۚۢۤۚۨۘ۠۫ۥۘۘۡ۫ۦۘ۬ۢۘۘ۠۠ۡۘۗۡۤ۫۬ۧۤۨۜۡ۫ۗۢۥۥۘۙ۫";
                    break;
            }
        }
    }

    private void OooOOoo() {
        MediaPlayer mediaPlayer = null;
        String str = "ۜۛۛۚۙۡۤۚۘۚۚۡۘۛۤۜۘۗۜۨۛۚۥۦۢ۠۠ۨۧۤۖۧ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FW_BG_VALUE) ^ 962) ^ 480) ^ 416507350) {
                case -1637663606:
                    ((Vibrator) getSystemService("vibrator")).vibrate(o0ooOOo);
                    str = "ۨۢۙۜۚۘۧۢۤ۬ۖۖۚۙ۠ۘ۟ۖۘ۬۠ۙۗۙۢۚۦۜۘۧۡۤ";
                    continue;
                case -980421442:
                    str = "ۧۢۢۖ۟۟۠ۚۖۡۙۦۘ۟۠۠۫ۜۡۘۘۤۗۦۗۧۜۤۨۘۧۦ۫ۚ۫ۖۦۦۥۛۛ۟ۚۨ";
                    continue;
                case -752752300:
                    mediaPlayer = this.o00O0O;
                    str = "ۢۦ۫۫ۘ۬۠ۙ۠ۢۨۘۗۙ۠ۦۗۥۘۧۢۨۘۡۙۡ۫۫ۘ۠ۥۗۡۗۛۙۗ۠";
                    continue;
                case -269468454:
                    return;
                case 906453079:
                    String str2 = "ۜۙۛۗۤۤۖۘۖ۠ۡۜۘۚ۫ۜۘۚۛۛۚۖۨۖ۠۬ۙ۟ۖۘۢۡۖۘۧۙۤۛۢۙۜۡۡۘۛۡۖ";
                    while (true) {
                        switch (str2.hashCode() ^ 1832501268) {
                            case -1328669420:
                                String str3 = "ۤۢ۫۠۫ۖۦۖۜۨۚ۠ۨ۬ۜۤۤۨۘۡۡ۫ۡۛۚۧۙۧۜۧۙ۬ۘۘۗۤۙ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1759753582) {
                                        case -612270089:
                                            str2 = "ۗ۟ۖ۠ۖۧۗۖ۟۟ۨۘۧۙۘۘۨ۟ۢۖ۬ۧۜۥۘۚۦۘۘ۫ۡۦۘۜۤۤ۬ۖۖ۟ۗۖ۫۬ۜۘۗۦۤ۫ۡۦۖ۟۬ۤۢ۟";
                                            break;
                                        case -395434425:
                                            str2 = "ۜ۠۟ۙۦۗۙۜۥۚۚۖ۟ۙۤۙۙۧۢۦۢۚۤ۟ۛۗۖۘۘ";
                                            break;
                                        case 853404728:
                                            str3 = mediaPlayer != null ? "۬۬ۜۘ۟ۛۥۘۡ۬ۥۨ۟ۨۘۘۨۦۜۨۥۧۥ۬ۜۘۘۖۛۦۘۛۘۦۘۛۡۨۘ۟ۘۧ" : "ۥۗۦۜۙۚ۠ۧ۬ۜۗۜۘۨ۟ۧۜۤۖۦۦ۫۟ۡۡۘۢۢ۬ۧۤۥۘ";
                                            break;
                                        case 1050086085:
                                            str3 = "ۛۨۧۘۤۖۘۜۙۥۘۢ۫ۜۘ۟ۗۨۡۦۡۘۨۥۘۤۦ۟ۛ۟ۖۥ۠ۤۧۦۜ۠ۨۤۚۚۥۤۢۘۘۛۢۘۗۨ۟";
                                            break;
                                    }
                                }
                                break;
                            case -644557458:
                                str = "ۚۗۘ۫ۥۘۡۦۦۜۖۘۥۜ۬ۗۚ۫ۛ۟ۙۜ۟ۤۛ۬ۥۘۢ۠ۨۘۨۤۥۘۥۢۙ";
                                break;
                            case -340396681:
                                break;
                            case 1751633663:
                                str2 = "ۜ۬ۤ۟ۗۦۘ۬ۧۙۡۖۘۥۨۢۛ۬ۖۘۗۦۙۛۡۘۢۚ۟ۚۙۚۥۘۨ۫۟ۘ";
                                break;
                        }
                    }
                    break;
                case 1214989085:
                    mediaPlayer.start();
                    str = "ۚۦ۫ۜۨۜۘۜ۠ۧۢ۫ۖۘۖۜۦۙۖۨۘۛۥۡۙۜۘۙۛۛۤۢۨ";
                    continue;
                case 1769030581:
                    String str4 = "ۚۜۦۘ۟ۘۡ۬ۢۧۦۨۖۙۢۛۤۜۧۘۛ۫ۥۜ۠ۗۡۘۢۨ۟۠۠ۘۘۢۡۥۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 949003280) {
                            case -522440094:
                                String str5 = "ۧ۬۬ۡۢۢۙۢ۠ۨۢۤۖۖ۫ۨۘ۫ۦۧۦۘۙۧۥۘۡۨۢۜۛۥۧۦۥۘ۟ۨۚۨ۟ۜۤۥۙۘۨۥۥ۫ۜۨ۠ۚۘۜۡ";
                                while (true) {
                                    switch (str5.hashCode() ^ 741267447) {
                                        case -2145392347:
                                            str5 = "ۙۡۧۡۖۨۘۥۚۜۘۡۦۜۤۧۤۛۘۗۧ۟ۘۘۦۙ۬ۤ۟ۜۜۦۧۘ";
                                            break;
                                        case -758917115:
                                            str5 = this.o0OoOo0 ? "ۛۦۚ۬ۖۡۘۖۧۡۘ۠ۖۧ۫ۗۦۤۙۥۘ۬۫ۦۖ۫۫ۛۥ۠ۙ۠ۚۙ۟ۜۘ۫ۡ۟" : "ۤۤۚۚ۫ۚۚۥۢۤ۬ۨۢۜۡۤ۟ۙ۬ۨۘۘ۫ۗۜۧۙۥۘۤۛۥ";
                                            break;
                                        case 13207859:
                                            str4 = "ۤۙۢۘۜۢۦۡ۬ۖۤۘ۟ۤۖۘۧۧۦۡ۠ۤۙۦۘۤۥۤۙۢۡۘۡۦۨ۟ۚۘ";
                                            break;
                                        case 352410209:
                                            str4 = "ۛۨۦۗۘۜۤۧ۠ۖۧۦۘ۠ۦۛۗ۟ۦۘۢۥۡۘۨۖۚ۫ۙۨۘۘۧۡ۟ۘۥۖۘۤۛۘۡ۫ۥۖۘ";
                                            break;
                                    }
                                }
                                break;
                            case -310263534:
                                break;
                            case 1864861625:
                                str = "ۡۦۥۘۘۨۘۤۜۦ۟ۗۖۘۦۛۥۘۖۨۨۘۤۥۗۥۦۦۢۛۤۥ۟۠ۦۥۘۘ۠ۖۨۢۗۚۡ۠ۘۦ۫ۨۘۡۧ۫";
                                break;
                            case 1922976679:
                                str4 = "ۥۤۥۘۧۖۜۘۘۚ۬ۗۧۢ۠ۚ۟۬ۧۦۙۡۙ۟۫ۖۘۢۚۨۘۢ۟ۢ";
                                break;
                        }
                    }
                    break;
                case 1900278516:
                    String str6 = "ۡ۟ۖۘۧ۫ۥ۠ۧۨۘۡۘۢۛ۟ۖۘۖۖ۠۠ۜۚۥۗۘۘۢۖۤۘۤۚۤ۬ۗ۟ۙۧۡ۫ۡۛ۟ۦ";
                    while (true) {
                        switch (str6.hashCode() ^ 1763157236) {
                            case -1897648381:
                                str6 = "ۘ۬ۦۢۙۖۥۤۜۘۥۗۜۥۥ۫ۡ۬ۧۤ۟ۦۘۡۙۚۡۡۥ۟ۗۖۘ۫ۗۖۘۡۤ۫";
                                break;
                            case -1717925357:
                                str = "ۨۢۙۜۚۘۧۢۤ۬ۖۖۚۙ۠ۘ۟ۖۘ۬۠ۙۗۙۢۚۦۜۘۧۡۤ";
                                continue;
                            case -937603511:
                                str = "ۖۛۧ۬ۥۘۗۚۗ۫۫ۡۛۘۖۘۙۤ۠ۥۗۧۗۚ۟۟ۚۧۦۜۤۦۙۙۖۗۘۘ۫ۚۦۘ۟ۗۨۥۥۢ۫ۢۧ";
                                continue;
                                continue;
                            case -784753724:
                                String str7 = "ۤۨ۟۫ۨۜۜۥ۬ۚۚۦۧۖ۫۫ۤ۫ۢ۫۟ۚ۟ۢۢۚۦۧۛ۟ۖ۟ۢۛۤۥۤۦ۠ۨۘۦ۬ۘۘۘ۬ۧۥۚ۠ۜۡ";
                                while (true) {
                                    switch (str7.hashCode() ^ 1295937669) {
                                        case -1103895903:
                                            str7 = "ۖۗۜۡۧۡۖ۫ۡۖ۠ۜۘۤ۫ۥ۬ۢۘ۠ۡۖۜۜ۬ۥۗۗۛۥۖۘۜۛۦۢۢ۟ۛۥۦۘۨ۠ۗۜۚ۟ۖۧۖۖۧۙۙۢ۬";
                                            break;
                                        case -225043538:
                                            str6 = "۫۫ۛۙ۟ۘۘۚۙۨۘۙۘۘۘۚۙۖۘۢۦۜۙۚۘۘۦۘۧۘۙ۟ۥۘۧۥ۬ۖ۠ۥۘۤۧ۬ۖۦۛۡ۫ۡۘۧ۫ۜۖۙۦۘۚ۫ۨ۠ۡۥۘ";
                                            break;
                                        case -62771256:
                                            str7 = this.ooOO ? "ۧۜۥۘۘ۟۬۫ۘۖۘۙۦۘ۫ۨ۬ۦۜۡۦۙۤ۟ۦۘۤۚۘۢۢۛۘۧۘۥ۬ۨۘ۫ۡۗۦۛۨۘۥۗۜۙۤۡۙۡۥۙۦ" : "ۥۜۧۖۥۛۧۨ۫۟ۦۘۤۙۜۦۘۜۙۚ۫ۜۨۘۡۜۥ۬ۡ۫ۨۨۨۦۤۙۘۚۙ۬۫ۚ";
                                            break;
                                        case 2075349987:
                                            str6 = "ۧۥۜ۟۬۬۫ۡۘۘ۫۬ۘۦۤۘۘۨۦۛۚۢۙۜۨ۠ۤۧۦۘۛۛۗۦۥۦۗۗۨۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
            }
            str = "ۚۦ۫ۜۨۜۘۜ۠ۧۢ۫ۖۘۖۜۦۙۖۨۘۛۥۡۙۜۘۙۛۛۤۢۨ";
        }
    }

    private void OooOoO0() {
        String str = "ۦۦۢۜۡ۬ۢۦۘۛ۫ۨۦۦۨۘۙۦۧۘۥۦۘۚ۫ۢۤۛۖۘۦ۫";
        CaptureActivityHandler captureActivityHandler = null;
        while (true) {
            switch ((((str.hashCode() ^ 354) ^ 812) ^ 975) ^ 417950692) {
                case -1541486373:
                    captureActivityHandler = this.Oooooo0;
                    str = "۟ۤۗ۟ۨۧۖۤۤۛۖۘۘ۠ۙۥۧۧ۟ۛۚ۟۬ۢ۫ۨ۬ۦۘۤۡ۬ۢۘۧۦۥۛ";
                    break;
                case -798709408:
                    captureActivityHandler.OooO00o();
                    str = "۫ۧۡۘۚ۬ۙۦۙۜۘۙۤۖۘ۠۟ۦۢۚۜۘۘۗۖۧۘۘۗۗۡۡۜۨۥۖۦۢۥۡ";
                    break;
                case -517192751:
                    return;
                case -248381483:
                    this.Oooooo0 = null;
                    str = "ۘۘۦۘۦۖۚۦ۠ۢ۬ۡۛۡۦۥ۠ۗۙۨ۬۫ۜۧۡۥۙۦۗۨۜۘۘۥۘۘۧۗۥۦۙۡۘۜ۫ۗ۟ۦۦ";
                    break;
                case 193201106:
                    String str2 = "ۛ۫۠۬ۢۖۨۚ۠۠ۦۦۘۦ۫ۥۧۘ۫ۦۙۜۨۜۧ۟ۚۧۦ۫ۜۖۙ۬ۥۥۚۜۖۘۛۦۚۘۘۗۚۚۤۧۜۧۙۧ";
                    while (true) {
                        switch (str2.hashCode() ^ 1783781383) {
                            case 55654002:
                                str2 = "ۨۗۗۢۨۧۚۡۙۤۗ۠۬ۛۡۙۦۥۜۗۜۨۧۘۥۤ۫ۖۡ۠";
                                break;
                            case 246916907:
                                String str3 = "ۘۚۤۤۤۚۚۚۦۘۖ۬ۤ۠ۥ۫ۦۚۧۧۤۦۙۦۡۡ۫ۚ۠۟ۘۖۢۘ۠ۘۜۢۗ۬ۧۗۖۘۚۘ۫۬ۘۤ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1628738480) {
                                        case 204342967:
                                            str2 = "ۛۛۚۨ۠ۦۗ۠ۢۛۤۥۘۜۙۤۢۖۘۦۡۚ۬ۨۨۘۧۥۗ۬ۘۘۡۨۨۘۦۗ۬۫ۙۘۘۦۢۢۢۡۢ۫ۤۡ";
                                            break;
                                        case 926477852:
                                            str2 = "ۧۘۧۘۜ۠ۚۜۦۚ۟۫ۜۚۧ۟ۨۘ۟۟ۖۗۘ۫ۖۧۜۘۛۛۙ۫ۜۗۧۨۖ۠۫۟۬ۦۤۢۛۨۘۗۢ۟ۤ۫ۦۧۦۥۘ";
                                            break;
                                        case 1858936774:
                                            str3 = "۬ۗ۫ۨۜۗ۬۠۫ۗۘۘۘۨ۠ۚۗۨۗ۫ۙۦۘۡ۠ۖۙ۫ۖ۬۠ۦ";
                                            break;
                                        case 2119505223:
                                            str3 = captureActivityHandler != null ? "ۨۦ۫ۚۦ۟ۨۧۘۖۨۙۧ۫ۗۛۨۦۖۗۦۖۙۙۤ۠ۥۚۥ۬ۛ۬ۡۖ۬ۥۖۘ۠ۥ۠ۗۦۗۦۘۗۧۚ۟ۤۢۥۡۨ" : "ۧۦۦۘۖۧۛ۠ۡۗۛ۬۬ۙ۬ۚۗۗۚۢ۫ۦۘۧۨۖ۠ۢ۠ۖۙ۟ۡۦۙ۠ۦ۬ۙ۬ۛۡۛۙۗۦۘۛۚ۟";
                                            break;
                                    }
                                }
                                break;
                            case 315400924:
                                str = "ۧۦ۫۬ۜۧۤۦۦۘۜ۠۬ۚ۠ۚۙۨ۟ۛۙۢ۟ۥۦ۟ۖۨۘۨۜۤۚ۠ۧۥۨۡ";
                                continue;
                            case 1549654046:
                                str = "ۘۘۦۘۦۖۚۦ۠ۢ۬ۡۛۡۦۥ۠ۗۙۨ۬۫ۜۧۡۥۙۦۗۨۜۘۘۥۘۘۧۗۥۦۙۡۘۜ۫ۗ۟ۦۦ";
                                continue;
                        }
                    }
                    break;
                case 693270164:
                    jv.OooO0O0().OooO00o();
                    str = "ۤۨۧۘۡۜۦۘۨۙۡۤۥۙۘۧۜۘۧ۠۬ۚۡۦۚۚۗۡۖۚۖۦ۠ۢۖۜۘۚۖۘۘۧ۬ۗۥۗۨۗۡۡۘۙ۠ۘۜۦۤۤ۫ۖ";
                    break;
                case 2003451466:
                    str = "ۛۥ۟ۤۗ۠ۥۧۘۜۚۗۜۜۙۦۘۖۘۨۖ۟ۚۜۜۛۚۧۜۨۦ۠۠ۜۚ۫۟ۢ۟ۢۜۢ۠ۘ۟۟ۨۗۢۨۖ۟۠";
                    break;
            }
        }
    }

    private void initView() {
        String str = "ۛۙۤۖۥ۟ۛۗۖۘۘۢۖۘ۬ۙۖۥ۫ۢۚ۠ۢ۫ۘۥۢۦۗۤۥۘۚۗۥۘ۬۫";
        TranslateAnimation translateAnimation = null;
        int i = 0;
        RelativeLayout.LayoutParams layoutParams = null;
        int i2 = 0;
        while (true) {
            switch ((((str.hashCode() ^ 51) ^ UiMessage.CommandToUi.Command_Type.SET_FONT_SIZE_LEVEL_VALUE) ^ 492) ^ 59067993) {
                case -2120295237:
                    layoutParams.height = i;
                    str = "۬ۦ۠۫۠ۦۗۛۨۛۧۤۧۗ۟۠ۡۜۛۜۘۘ۠ۛ۠ۖۨۜۘۘۥۗۧۢۗۡۚ۬ۥ۫ۜۦۙۙۙۜ۫ۥۜۢ";
                    break;
                case -2041329603:
                    ((LinearLayout) findViewById(R.id.linear_open_light)).setOnClickListener(new OooO00o(this));
                    str = "ۖۥ۟۬ۙۧۦ۬ۜۦۥۖ۠ۘۘۘ۬ۧۚۥ۬ۡۘۤ۬ۥۘۢۢۡ۟ۡۦۘۚ۟ۚۗۦۡ";
                    break;
                case -1392873738:
                    str = "ۗۧۖۧ۬ۦۘۤۖۚۤۥۦۥۜۢۦ۫ۦ۟ۨ۫ۚۡۤۘۢۢۨۜ";
                    i = (i2 * 2) / 3;
                    break;
                case -1270259802:
                    str = "ۗۥۗۨ۠۠ۚۘۘ۟ۡۤۗۦۦۘۘ۠ۦۘ۫ۨۦۘ۟ۘ۬ۢ۟ۗۡ۟ۥۘۥۚ۫ۥۜۖۘ";
                    i2 = getResources().getDisplayMetrics().widthPixels;
                    break;
                case -1204961830:
                    this.Ooooooo = false;
                    str = "۬ۧۘۘۖۜۜۘۘۗۡۤۖۧۘ۟ۤۙۧۧۧۗۧۘ۟ۘۤ۫ۥۖۘۚ۫ۗۙۗۖ۠۬ۧۢۧۗۢ۠ۛۙۢۦۘۨۥۙۧ۬ۜۙۘۜۘ";
                    break;
                case -1122640132:
                    this.OooooOo.setAnimation(translateAnimation);
                    str = "ۙۛۡۜۤۙۗۤ۟ۗۡ۫ۘۤ۬۬ۧۜۘۤۖۧۘ۟ۨ۠ۙۘۘۥۚۜۘۤۜۡۖۚۗۨۢۗ۬ۥۢۗۘۡۘۚ۟ۦۘۗۢۦۨ۬";
                    break;
                case -984919409:
                    this.OooooOo = (ImageView) findViewById(R.id.capture_scan_line);
                    str = "۬ۜۧۘۚۥ۬ۗۗۖۗۜۘۘ۟ۚۢۛۡ۠ۥۦۡۘۨۧۤ۠ۖۢۡۚۘۘۢ۟ۢۗۡۚۡ۠ۘ۬ۖۙۧۤۤۜ";
                    break;
                case -670062029:
                    this.OooooOO = (RelativeLayout) findViewById(R.id.capture_crop_layout);
                    str = "ۙۤۡۘۘۖۢۤۛۚ۫ۢۥۧ۠ۚۡۧۜۘۙۥ۫ۥ۠ۚۡۥ۠۟ۖۘۧۜۥۘۨۚۥۘۘۨۗۛۢۛ";
                    break;
                case -370069998:
                    layoutParams.width = i;
                    str = "ۧۥۙۧۢۚۖۨۦۘۛ۬ۖۘ۠ۦۡۢۗۦۙۜۡۘ۫ۧۧۚۥۥۘ۬ۦ۠";
                    break;
                case -363803350:
                    translateAnimation.setRepeatCount(-1);
                    str = "ۗ۫ۤۚۤۖ۟ۖ۫ۘۧۥ۟ۘۙۚۜۥۥۘ۟ۨۛۚۛ۬ۦۖۡۙۦۡ۟۫ۖۛ۠ۤ۫ۘ۫ۛ۬ۜۚۘۘۦۙۨ۟ۡۖ";
                    break;
                case -24417612:
                    translateAnimation.setRepeatMode(2);
                    str = "ۡۥۨۘۘ۬ۦۧۤۨۦۤۤۨۙۥۘ۬ۗ۫۬۟ۚۢۦۨۘۨۖۨۘۥۖۦۘۡۡۦۘۨۘ۟۠ۢۘۡۜ۫۟ۡۘۢۡۤۚۛۦۘۧۦ۬";
                    break;
                case 334650264:
                    this.Oooooo = new pv(this);
                    str = "ۜۨۦۤ۟ۤ۬ۚۦۘ۟ۨۚۚۜۖۥۖۖۘ۠ۥۢۤۚ۟ۤ۠ۗ۟ۛۢ";
                    break;
                case 350442191:
                    this.OooooO0 = (RelativeLayout) findViewById(R.id.capture_containter);
                    str = "ۨۖ۬ۗۢۦۥۙۜۘۧۢۜۘۙۦۖۖ۠۟ۤ۠۠۠ۧۥۢۦۖۘۡ۬ۡۖۥۨ۫ۥۥۘ";
                    break;
                case 562042773:
                    translateAnimation.setDuration(1500L);
                    str = "ۘۤۖۗۚۘۘۖۡۚ۫ۖۥ۬۬ۘۘ۬ۛۘۙۨۦۡۗۥۙ۟ۗۖۗۨۘ";
                    break;
                case 978742478:
                    return;
                case 1147312734:
                    this.OooooOO.setLayoutParams(layoutParams);
                    str = "۫۬ۨۘۢۨۖۜۧۗۧۚۤۨۖۡۘۘۦۡۘۥۙۙۨۦۙۖۦۛۙ۫ۘۘۗۧۛۤ۬ۙۘۨۜۘۖۚۙۥ۫۬ۘۥۥ";
                    break;
                case 1442662415:
                    str = "ۡۚۛۧۧۛۜ۫۠ۢۜۤۗۢۚۦۡۥۢۨۥ۠ۖۖۘۡۙۢۚۘۤ";
                    translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 2, 0.0f, 2, 0.9f);
                    break;
                case 1601971333:
                    str = "ۙۦ۟۫۠ۛۢۗۙۗۖۚۜۙۚۧۨۘۘۢۦۧۗۜۘۧ۠ۥۖ۫ۥۘۖۛۥۘۥۥۢ";
                    break;
                case 1873460661:
                    str = "ۨۛۡ۬ۥۤۡۢۘۜ۟۬ۡۖۥۘ۫۟ۢۦۨۢ۠ۥۘۧۡۘۧۥۥۘ";
                    layoutParams = (RelativeLayout.LayoutParams) this.OooooOO.getLayoutParams();
                    break;
                case 1915218986:
                    jv.OooO0Oo(this);
                    str = "ۦۧۜۨۥۡۢۦ۟۫ۘۨ۬ۦۡۘۤ۠ۘ۟ۦۧۘ۠ۥۡۘۜۤۡۘۜۦۥۜۡۘ۫۬ۨۘۜۤۨۢۙۢ";
                    break;
                case 1961765630:
                    translateAnimation.setInterpolator(new LinearInterpolator());
                    str = "ۜۖۗۚۨ۫۟ۗ۬۫ۖۘۘۗۨۥۦۚ۠ۡ۫۬ۜۗ۟ۤۢۖۘۖۧۨۡ۬ۙۖۙۖۘۢ۬ۘ۠ۢۙۛۡ۬ۥۖۜۘ۠ۢۡ۬۟ۦۘ";
                    break;
            }
        }
    }

    public Handler OooO() {
        String str = "۟۟ۖۙۨ۬ۙۜۥۛۜۦۘ۫ۙۥۘ۟۬ۗۛۜۤ۟ۡ۟ۘ۟۫ۚ۟۬ۚۖۥۢۘۚ۫۬۬ۡۡۤۚ۬ۘۘۢۡ۬ۥۢۡۚۤ۠";
        while (true) {
            switch ((((str.hashCode() ^ 604) ^ UiMessage.CommandToUi.Command_Type.FW_SET_HEIGHT_VALUE) ^ 44) ^ 773559666) {
                case -1590650294:
                    return this.Oooooo0;
                case -1364537568:
                    str = "ۥۨ۬ۨۘۥۢ۫۫ۡۜۨۗۙۦۘۡ۫ۤۧۢۥۖ۟ۥۘۨۖۖۙۜ۟";
                    break;
            }
        }
    }

    public int OooO0oO() {
        String str = "۟ۘۥۘۛۚۨ۟ۥۤۗۧۜۢۜۤۖۘ۟ۧۜۦۘۙۨۨۘۤ۟ۚۛۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ a.aX) ^ 824) ^ 764) ^ (-167934215)) {
                case -882585:
                    str = "ۘۖۖۢۚۤۗۙۡۘۧۘۦۘۜۗۨۘ۬۫۬ۜۜۥۘ۟ۦ۫ۜۜۤۛۡۘۧۖۡۘۚۙ۟ۘۡۘۘ۟ۡۡۤۗۤۗۤ";
                    break;
                case 459052674:
                    return this.o00ooo;
            }
        }
    }

    public int OooO0oo() {
        String str = "ۡۜ۬۬ۜۘۧ۫ۡۤۤ۟ۙ۫ۗۡۥۡۘۤ۬ۙ۟۬ۨۘ۫ۘ۟ۥۖۘ۬ۖۨۘ۬ۡۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 545) ^ 866) ^ 470) ^ 1495513925) {
                case -1917683653:
                    str = "ۚ۫۠ۥۡ۬۠ۗۗۗۥۡۦۡۜ۠ۡۦۘ۫ۨۘۘۢۧ۟۫ۗ۬ۘۖۡ۫۟ۢۛۦۘۥۘۨ۬ۛۖۘ";
                    break;
                case -1031301673:
                    return this.o00o0O;
            }
        }
    }

    public int OooOO0() {
        String str = "ۨۨۙ۬ۖۜ۬ۨۡۧۘۘۜۚۢۙۖۖۘۜۘۗ۟ۢۡ۟۬۬ۛۗۡۡۤۜۘۤۡۛۤۥۥۘۤۦ";
        while (true) {
            switch ((((str.hashCode() ^ 750) ^ 131) ^ UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE) ^ (-1519590248)) {
                case -1811211749:
                    return this.o00Oo0;
                case 1432581242:
                    str = "ۤۤۦۖۦۜۜ۟ۤۗۜۖۖ۫۫ۗۨۚ۫ۡۘ۠ۦۗۗۦ۟ۛۗۙ";
                    break;
            }
        }
    }

    public int OooOO0O() {
        String str = "ۖۡۨۘۤۖ۟ۢۚ۟ۦۧۖۘ۟ۥۘۖۗۨۘۖ۟ۡۦۦۙ۫ۖۘۙۗ۟ۘۘۧۢۖ۟ۛۜۘۥۖۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ com.anythink.expressad.video.module.a.a.N) ^ 103) ^ UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE) ^ 314048341) {
                case -591227446:
                    str = "ۨ۠ۚۨۚۥۘۗۘۥۘ۟ۢۘۘۖۛۛۤۥۧۘۢ۫۠ۗ۟۠ۥۢۦۖۘۘۖۙۘۘۤۧ۠ۗ۟۫ۛۤۦۗ۫ۗۜۧ";
                    break;
                case -573298292:
                    return this.o00Ooo;
            }
        }
    }

    public void OooOO0o(String str) {
        Intent intent = null;
        String str2 = "ۨ۠ۥۡ۟ۡۜ۠ۥۨۦۢۗۖۤۤۡۛۦۧۡ۫ۦۘۖۜۘۘ۟ۙۜۘ";
        while (true) {
            switch ((((str2.hashCode() ^ 285) ^ 151) ^ 800) ^ 283635676) {
                case -2024759200:
                    intent.putExtra("SWEEP_RESULT_BACK", str);
                    str2 = "۫ۡۜۥۘ۫ۗۙۖۘۤۘۜۘ۫ۖ۟ۤۤۖۥۜۘۤ۟ۖ۬ۙۘۘۗۥۘۘ";
                    break;
                case -1579656963:
                    str2 = "ۚۛۚ۫۟۠ۙۙۘۘۤۡ۬ۡۖۧۜۦۤ۟۬ۦۖۗۥۧۜۨۗۥۙۡ۟۟ۥۜۖۘۗۢۜ۬ۙۢۦ۫ۜۘۡۡۘ";
                    break;
                case -1123257391:
                    String str3 = "ۛ۫ۢ۬ۧۡۘ۟ۘۡۘۨۥۧۘۦ۬۟ۥۥۜۚۛۨۘ۫ۨۧۘۙۧۚۜ۠ۗۡۥۥۥۧۚۜۛۙ۫ۤۜ";
                    while (true) {
                        switch (str3.hashCode() ^ 431379754) {
                            case -1675198980:
                                str2 = "ۢۧۧۖۜۡۦ۠ۜ۠ۗ۬ۜۨۗۛۡۗ۬۬ۦ۫۠ۨۘۘۗۡۦۙۘۘ۬۫ۥۘۦۛۡۘ۟ۦ۟ۤۢۢ";
                                continue;
                            case -1409844196:
                                str2 = "ۙۧۥۘۢۧۧۧۗۤۛۗۜۘ۠۟ۧ۠ۙۦۘۙۜۨۘۛۖ۟ۜۡۘ۬ۚۤۤۙۜۢۢ۬۫ۛۨۘۢ۬ۨۘ";
                                continue;
                            case -439764656:
                                str3 = "ۤۗۙ۠ۥۥۘ۟ۢ۠ۡ۫۫۟۫۬ۡۘۨۚۢ۟ۤۦۡ۫۬ۡۘۧۘۘۘۧۜۙ۬ۦۖۘۚ۫ۖۖ۫ۖۘۜۤۘۗۧۜۘۜۗۥۘ۟۟۠";
                                break;
                            case 1914702881:
                                String str4 = "ۜۖۚ۬۫ۘۤ۟ۛۢۧۙۙۜۖۚۘۥ۬۬ۥۘۨۤۜۛۡۦۘ۠ۖ۫ۨۘۨۦۙۢۘۧۧۙ۬ۛ۫۬ۖۥ۟۫۬۟ۚۧۘۘۘ";
                                while (true) {
                                    switch (str4.hashCode() ^ (-1561326195)) {
                                        case -769106932:
                                            str3 = "ۙۘۢۛۙۙۤۘۢۖۗۘۡۖۖۘۨۥۘۘۤۤۡ۠۫۬ۥۦۘ۟۠ۙ";
                                            break;
                                        case -244540535:
                                            str4 = str != null ? "ۢۧۤ۠ۗۨۘ۟ۥ۫ۛۨۨۘۧۤۚۙۙۢۖۧۦۧۚۢ۠۟ۦۡ۠ۨۘ" : "ۦۤۢ۟۟ۜۢۨۦۖ۬ۢۖ۠ۚۨۦۥۘ۟۬۠ۛۧۙ۫۬ۗ۬ۚۘۘۙۚۛۘ۬";
                                            break;
                                        case 414867884:
                                            str3 = "۬۟۠ۖۜۖۘۗ۫۟ۘ۫ۦۘۛۧۖۘ۟ۖۦۘۚۨۜ۬ۗۢۥ۠ۖۧ۠ۖۘۡۥ۠ۜۜۘۘ۬ۢ۬ۤۖۡ";
                                            break;
                                        case 1535538070:
                                            str4 = "ۙۦۘۘۧ۠ۦۘۗ۫ۨۢ۬ۨۘۗۛۨۘۧۜۡۘ۬ۖۜۡ۬ۨۘۤ۫ۨۙۚ۬";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -950710474:
                    finish();
                    str2 = "ۚ۬ۢۘ۫ۚۤۙۤۢۖ۬ۨۨۜۘۜۛۥۘۥۦۗۧۢۡۖۘۤۜۡۘ";
                    break;
                case 108150709:
                    OooOOoo();
                    str2 = "ۢ۫ۙۗۖۧۡۧ۠۫ۜۙۥۗۨۘۢۤۜۢ۬ۖۘۦۡ۫۟ۢ۟ۘۘ۫";
                    break;
                case 149316171:
                    setResult(-1, intent);
                    str2 = "ۦۥۖۘۙۦۜۗ۬ۢۧۦۧ۫ۗۨۚۖۢۥ۬ۖۥۢ۟ۤۡۘ۫ۡ۬ۢۧ۠ۦۚۦۤۦۘۘۘۙۛ";
                    break;
                case 553876752:
                    intent = new Intent();
                    str2 = "ۦۨۛ۫ۚۥۘ۠ۨۨۘۢۧۦ۫ۚ۬ۚۨۧ۠ۡۛ۬ۛۛ۬۫۟۠ۢۘۘۚۚۥۧۘۡۘۡۢۗۖۘۧ";
                    break;
                case 656637494:
                    str2 = "ۘۜۥۢۨ۟۬ۤۧۙۘۦۗۖۥۧ۠ۚ۫ۗۚۦۡۤۡۤ۫ۖۖۧۤۖۜۜۨ۬";
                    break;
                case 990150749:
                    c5.OooO0O0(this, R.string.sweep_error_tips);
                    str2 = "ۧ۬ۧۖۙۛ۬ۗۥۘۘۦۨۥۥ۟ۙۤ۠۫ۧۖۜ۠ۧۤۗۥۜۥ۬۠۬ۤۢۡۤ";
                    break;
                case 1153941591:
                    OooOoO0();
                    str2 = "۫ۗۦۨۜۜۘ۠۬ۖۜۗۤۦۨۚۥۨۘۥۢۧۨۥۘۘ۠ۘۜۘۥۖ۬ۦۢۚۦۤۥۘ۟ۜۨۥۦۤۢۜۧۘۚۦۦۘ";
                    break;
                case 1392226733:
                    this.Oooooo.OooO0O0();
                    str2 = "ۘۛۥۛۢۥۖۛ۫۬ۙۥ۟ۗۥۤۧۡ۠ۤۜۘ۫ۖۤۢۙۧۨۧۘ";
                    break;
                case 1630207484:
                    this.OooooOo.clearAnimation();
                    str2 = "ۜۤۖۘ۟۫ۜۘۗۨۡۚۢۜۡ۬ۥۘۤۗۛۡ۠ۨۘۥۜۜۖۛۨۨۧۨۢ۫۬ۘۨۗۥۖ۬ۙۚۡۘۛۘۨۘۡۛۗۡۡۜۘ۫۫۬";
                    break;
                case 1871487029:
                    return;
                case 2068666681:
                    str2 = "ۧ۬ۧۖۙۛ۬ۗۥۘۘۦۨۥۥ۟ۙۤ۠۫ۧۖۜ۠ۧۤۗۥۜۥ۬۠۬ۤۢۡۤ";
                    break;
            }
        }
    }

    public boolean OooOOOo() {
        String str = "ۢ۟ۡۘۦۛ۫ۘ۫ۜۘۥۜۤۦۗۘ۠۟۠ۦ۫ۦۘۦ۫ۨۦۦۦۖۧۥۘ۟۬ۖۧ۬ۛ۟ۢۢۜۢۦ";
        while (true) {
            switch ((((str.hashCode() ^ 975) ^ 942) ^ 755) ^ (-525185350)) {
                case -2098540093:
                    return this.OoooooO;
                case -1051824918:
                    str = "ۚۘۤۡ۟ۡۗۛۙ۟ۜۜۘۛ۬ۚ۬ۤۜۗ۬ۤۧ۟۬ۤۜۗۨۧۘ";
                    break;
            }
        }
    }

    public void OooOOo0() {
        String str = "ۢۚۡۘۥۦ۠ۧۦۦۘۛۘۧۘۡۖۧۖۨۥۦۧ۬ۧۗۦۗۢۥۛۦۗۦۘۜۘۦۘۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 94) ^ AudioAttributesCompat.FLAG_ALL) ^ 644) ^ 2125037766) {
                case -1849958739:
                    jv.OooO0O0().OooO0oO();
                    str = "۠۟ۤۚۗۖۜۛ۫ۥۢ۬ۗۛ۟ۨ۟۬۬ۢۜ۠ۥۦ۫ۡۙ۟ۖ۠ۢۢۗ۟ۤۤ";
                    break;
                case -1104011142:
                    jv.OooO0O0().OooO0o0();
                    str = "ۥۤۡۖۤ۫۟ۜۙ۟ۤۘۢۧۥۘ۠ۤۥ۟ۜ۟ۤۖۘۤ۫ۧۜۥۧۘۖۤۡۖۥۘۘ۟ۤۤۘۗۢۡۤ۫ۦۜۖۘۤ۬ۛۨۜ۟";
                    break;
                case -375357543:
                    str = "ۥۤۡۖۤ۫۟ۜۙ۟ۤۘۢۧۥۘ۠ۤۥ۟ۜ۟ۤۖۘۤ۫ۧۜۥۧۘۖۤۡۖۥۘۘ۟ۤۤۘۗۢۡۤ۫ۦۜۖۘۤ۬ۛۨۜ۟";
                    break;
                case 88091085:
                    String str2 = "۫ۢۗ۬ۜ۟ۜۚۤۥ۠ۦۘ۠ۨۢۤۧۦۘ۠ۘ۬ۧۢۡۘۧۖۘ۫ۚۡۧ۫ۛۖۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 76745360) {
                            case -1153577903:
                                str = "ۧ۠ۢۙۨۖۙ۬ۙ۠ۚۥۘ۫ۦۨ۫ۨۤۚۦۦۖۧۜۘۜۜۘۜۥۘۡۥۛۥۘۨ";
                                continue;
                            case -550992123:
                                String str3 = "۬ۤۛۚۤۗۗ۟ۜۘۘۧۧۜۡۥۗ۬ۥۧۡۥۘۖۨۘۨۧ۬ۢۥۘۘۚ۠ۨۘۜۥۙۖۢۧ۟ۛۚۖۦ۫ۡۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-500859483)) {
                                        case -1572156934:
                                            str2 = "ۚۨۡۧۗۥۘۦۛۢ۬ۢۦۦ۫ۢۦۨۘۗۜۧۡۜۜۘۙۧۨۘ۟ۗ۫۫ۧۛۙۚۨ";
                                            break;
                                        case -1447950000:
                                            str3 = this.oo000o ? "۠۬ۥۘۤ۬ۖۘۗۦۡۘۨۘۢۜۦ۟۟ۚ۠ۥۘۜۘۗۙۥۛۛۧۦۦۡ۫ۢ۬ۚۘۚۥۨ۟ۜۤۤۦۧۛۦ۟ۜۘۗۧۚۨ۠" : "ۚ۫ۡۘۥۛۜ۠ۤۥ۬ۙ۠۟ۛۦۘۧۛ۬ۥۘ۫۫۬۬ۥۥۢۚۦ۬ۛۦۘۚ۠ۧ";
                                            break;
                                        case -884666352:
                                            str3 = "۫ۛ۟ۖۡۨۜۖۜۚ۫ۨۧۡۙ۟۬۫ۘۛۨ۫۠ۨۙ۠ۚ۟ۜۘ۠۟ۗۨۧۧ";
                                            break;
                                        case -486780787:
                                            str2 = "ۡۜ۬ۖ۟ۡۘۤۦۖۘ۬ۘۦۘ۫ۧۜۡۙۜۘۜ۬۫۬ۗۘۘۧ۟ۨۥۜۜۘۗۥۤ۬ۤۤۚ۬ۖۘۢۚۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 187179815:
                                str2 = "ۚ۬ۡۙۦۙ۬ۘۥۘۧۤۘۘۡ۟ۖۘۡۜۜۥۗۨۢ۠ۙۙۥۦۤ۫ۜۡۘۗۜۥ۟ۖۨۘۢۤۡۖۢۨۘۙ۟ۚ";
                                break;
                            case 1036463558:
                                str = "ۢ۬ۗۛۥۡۤ۠ۡۥۦۨۘۤ۫۫ۗۗ۬ۚۨ۠ۡۢۜۖۥۧۖۡۚۤۦۘۤۙۜۘ۫ۗۖۘ۫ۚۦ۟ۜۜۢۨۘۘ";
                                continue;
                        }
                    }
                    break;
                case 910282734:
                    str = "ۢۜۧۘۜۜ۫ۧ۬ۚۘۨۘۘ۫۟ۨۘ۬ۦۜۛۜۜۘۡۥۘۘۜۨۤۥۨۘۡ۫ۨۧۥۖۛۦ۠ۗۤ۟";
                    break;
                case 1290913612:
                    this.oo000o = true;
                    str = "ۦۤۛ۟ۜۖ۟ۚ۫ۢۗۛ۫ۦۘۤۡۧۘۥۧۖ۬ۤۦۘۥۡۖۘۙۜ۟";
                    break;
                case 1475782830:
                    this.oo000o = false;
                    str = "ۛۢۛۖ۠ۥۚۖۘۡۤۢ۫۟ۥۤۦۡۙۢ۠ۨۙ۠ۢۤۤۖۘۢ";
                    break;
                case 1557137842:
                    return;
            }
        }
    }

    public void OooOo(int i) {
        String str = "ۨۧۨۘۚ۠۟ۚۖۥۘۙۙۦۘۛۖۘۜۤۧۤۥۨۧ۬ۨۗۘۥۦ۟ۤ";
        while (true) {
            switch ((((str.hashCode() ^ 478) ^ 794) ^ 389) ^ 2000884110) {
                case 23766191:
                    return;
                case 607080296:
                    str = "ۛۚۗۛ۫ۧۘ۠ۗۛۖۥۘ۠ۖۦۘۖۜۤ۠۟ۥۘ۟ۚۦۥۥۗۧ۬۟ۚۗۜۘۦۨۨۙۗ۟ۜۚۚۗ۟ۜ۟ۙۤۧۗۨۘۙۛۢ";
                    break;
                case 881246527:
                    str = "۟ۢۤۚۡۛۤۙۧ۠ۧۘ۬ۘۛ۟ۦۤۨۚۧ۟ۨۦۘۚ۠ۜۘۦ۫ۤ۫۠ۗۛ۠۬۫ۧۘۖۜۗ";
                    break;
                case 1375643017:
                    this.o00Ooo = i;
                    str = "ۨۦۜۘ۬۬۫ۦ۟۬۫۠۬ۦ۫ۗۨ۠ۢۥۦۘۙۢۨۘۨۧۖۛۘۧ۟ۙۛ۫ۗۡۘۤۗۙۚ۠ۖۘ";
                    break;
            }
        }
    }

    public void OooOo0(int i) {
        String str = "۠ۥۘۘ۠ۡۖ۟ۤۡۥۘۦ۟ۧۜۖ۬ۙۜۚۡۖۜ۫ۡۖ۫ۧ۠ۤۢ۟۬ۙۢۛۚۤۘۚۥۨۘۖۤ۠۬۟ۦۘ";
        while (true) {
            switch ((((str.hashCode() ^ 127) ^ 763) ^ 452) ^ 1351562290) {
                case -1438727964:
                    str = "۫ۤۡۜۚ۟۟ۗۥۧ۠ۜۡۧۥۜ۬۫۟ۢۙ۠۠ۤ۫۫ۡۘ۬ۜۦۘ۬ۢۦۗۧۧ";
                    break;
                case -891956237:
                    return;
                case 68648524:
                    str = "ۘۚ۫ۙۖۢۧ۫ۥۘ۬ۖۥۨۡۘۘ۠ۛۧۜۨۘۙۤۥۘ۫ۥۘۘۛۛۗۛۚ۠ۗۗ۟۬ۥۖۦۨۥۘ";
                    break;
                case 971357867:
                    this.o00o0O = i;
                    str = "ۚۦۗۥۜۡۥۙۚۚ۫ۡۘ۫۠ۗۤۚۡۘۨ۬ۘۘۜۜۥۘۡۙۙۖ۟ۦ۫ۚۘۘ۟ۦۙۚۦۤۡۘۧۤۧۚۜۧۛ";
                    break;
            }
        }
    }

    public void OooOo00(int i) {
        String str = "ۧۘ۠۟۠ۚۧۧۢۧۗۗۙۨۡ۟ۨ۫ۤۘۖۘۥۨۤۦۜۡۥۘۨ";
        while (true) {
            switch ((((str.hashCode() ^ 290) ^ 757) ^ 871) ^ (-1818996769)) {
                case -1116858640:
                    return;
                case 295204563:
                    this.o00ooo = i;
                    str = "ۡۚۢۜۢۡۖ۟ۧۢ۬ۧۘۙۨ۬ۧۗ۟ۦۛ۠ۜۡۡۙۙۥ۟ۨۘۡۛۘۘۢۛۜۙۘۖۘۙۗۧ۬ۙ۫ۢۖ";
                    break;
                case 1010761924:
                    str = "ۦۧۦۘۖۘۖۘ۟۬ۙ۫ۗۜۘۜ۫ۥۘ۫ۚۜۦۨۥۛۖۘۘ۬ۤۛۦۙۨۖۦۘ۠ۡۘۘ۟ۨۢۛ۠ۨۘ۟ۙ۬ۡۦۧ۟۬ۜ۠ۤ";
                    break;
                case 1603026873:
                    str = "ۦۗۡۙۧۚۙۦۜۖ۠ۙۢ۬ۦ۫ۜۨۘۖۧۨۦۤۨۘ۠ۤ۫ۥۖۖۧۘ۬ۥ۠ۤۜۛۘ۬ۜۦۘۛۖۙۦۢۜۘ";
                    break;
            }
        }
    }

    public void OooOo0O(boolean z) {
        String str = "ۖۙ۟ۚۘۢۧۡۧۚ۫۫ۜ۠ۛ۬ۡۢۚۙ۫ۙۥۢ۫ۧۚۛۜۘۘۤۥۖۢ۫۟۫ۥۘۨۤۤۚ۫ۗ۟ۚۘ۫ۖۥۘ۟ۖۛ";
        while (true) {
            switch ((((str.hashCode() ^ 337) ^ com.anythink.expressad.video.module.a.a.O) ^ 9) ^ 2066712691) {
                case -620411795:
                    str = "ۦۦۨۘ۬ۤۥۘ۠ۢۢۜ۠۫ۘ۫ۗۘۙۦۨۧ۫۬۬ۦۚۢۜۥ۟ۤۛۘۘۜۘۛۛۛۘۤۨۨۖۚۜۘۢ۠ۗۗۖۙۢ۟ۥۘ";
                    break;
                case 1124847393:
                    this.OoooooO = z;
                    str = "ۢۛۘۖۥۜ۟۠۟ۙۚ۠ۡۙۨ۟ۛۚ۟۟۫۟ۛۦ۟ۦ۫ۦۙۦۘ";
                    break;
                case 1259748899:
                    str = "۬ۢۗ۫ۨۘۘۤۘۡۘ۫۠۫۟ۨۨۡ۫ۥ۟ۢۦۘ۟ۡۦۘۖۦ۫۫ۙۘۘۙۘۘۘۗۗۘۘ";
                    break;
                case 1438552378:
                    return;
            }
        }
    }

    public void OooOo0o(int i) {
        String str = "ۡ۠۫۠ۨۛۡۙۚۚۦۧۘۖۚۥۘۦۛۥۛۙۖۘۗۙۛۡۛۧۜۘۥۘ۫۬۠ۢۥۘۘۖۚۢ۬۬ۖۘۦۘۚۧۢۦۘۙۛۜۘۧۧ۠";
        while (true) {
            switch ((((str.hashCode() ^ 604) ^ 867) ^ 936) ^ 1421148063) {
                case -524144985:
                    str = "۬ۘ۟ۜۚۗۧۗۜۜۜۜۘ۫ۨۧ۟ۖۖۜ۠۟ۨۡۖۖۛۛۙ۬ۖۘ";
                    break;
                case -351392294:
                    str = "ۤۦۥۘۛۤۨۛۚ۟ۥۤۥۘۦۗ۬ۨۙ۬ۗۦۗۖۤۨۚۜۤۗۚۥ۟ۦ۠ۥۧۘ۠ۛۙۤۧۜ";
                    break;
                case -137450918:
                    this.o00Oo0 = i;
                    str = "ۦ۠ۖۛۚۚ۟۟ۜۥۚۡۘۡۧۥۘ۬ۚ۫ۡۖ۟ۢۤ۟ۙۡۥۘ۫ۖۡۛۨۗۛ۠۫۫ۥۙۧۘۘۘ۫ۗۨۘۚۘۜۤ۠ۚ۬۠ۦۘ";
                    break;
                case 906124033:
                    return;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str = "ۜۗۦۙۢۜ۬ۨۥۘ۠ۦۥۙۙۗۤ۬ۜ۠ۤ۠ۡۥ۫ۥۖ۫ۡۜ۫ۙ۬ۦ۫ۢۚ";
        while (true) {
            switch ((((str.hashCode() ^ 856) ^ 398) ^ 386) ^ (-2043578581)) {
                case -1083644887:
                    str = "ۡۡۛۙ۠ۥۚۙۖۖۥ۟۠ۢۨۘ۠ۖ۬ۙ۫ۛۚۘۗ۬۬ۧ۬ۖۥۥۡۨۤۨ";
                    break;
                case -963420649:
                case 91800198:
                    return;
                case -780478847:
                    initView();
                    str = "ۤۗۘۘۖۛۦۘۜۜۨۧۙۙۤ۟۫۟۠ۘۤۜۜۧۧۘۖۧۖۘۗۜۦۘۙۢۤۡۜ";
                    break;
                case -452511018:
                    setContentView(R.layout.activity_sweep_code);
                    str = "ۤۙۥۘۧ۫ۦۦ۫ۘۘۤۗۗۧۡۛۨۜۜۥۗۛ۬ۨ۟ۛۘۚۤۡ۫ۙۦ۠ۗ۫";
                    break;
                case -237273573:
                    str = "۟ۧۡۘۖۦۖۘۤۡۘۧ۠ۥۘ۠۠ۨۘۥۨۘۙ۫ۡۜ۠ۢۨۛ۠ۢۛ۫۟۬ۗ۬۠ۡۡۘ۟ۜۢ";
                    break;
                case 471039255:
                    super.onCreate(bundle);
                    str = "ۦۥۖۘ۠ۢ۠ۗۥۨ۟ۖۦۜۦۖۗۡۖۘ۬ۤۤۙۨۘۙۡۧۥ۫ۘۘۡۧۖ۬ۡۖۙۢۖۘۜۧ";
                    break;
                case 549923272:
                    ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 0);
                    str = "۬ۘۧۘۖ۬۟۠ۢۜۘۧۙ۠ۛۨ۬ۘۙۚۨۗۨۘۨۡۖۘۦ۫ۘۘۖۢۨۘ";
                    break;
                case 914648207:
                    String str2 = "ۖۥۘۗ۟ۘۘۧۤ۫ۜۦۦۤۥۙ۟ۧۚۢۧۨۤۦ۬ۚۖۗ۠ۢۖۖۡۘۘۢۚۘۙۗ۟۬ۦۘۨۤۚۨۡۨۘۗ۫ۦۘۖۡ۬";
                    while (true) {
                        switch (str2.hashCode() ^ 224305942) {
                            case -677768125:
                                str = "۬ۚۜۘۧ۬ۨۘ۫ۤۖۘۧۛۦۘۦۡۥۘۗۤۤۖۜۘۢ۠ۗۢۦ۠ۜۘۛۧۗۜۘۢۥۦ";
                                continue;
                            case -554014754:
                                str = "ۦۛۨۦۘۢۙۖۜۨ۟ۢۚۘ۫۬۟ۜۨۗۜۘۘۥۨۥۧۧ۠ۢۢۘۥۘ۬ۦۘۤ۟ۗۨۧۨۧۘۚۢۖۨۘۖۧۡۘۤۦۨ";
                                continue;
                            case 263286840:
                                str2 = "۠ۗۛۥۘۧۘۛۦۘۥۧۡۗۨۛۤۘۚۧ۟ۘۨۖ۫ۛۨۚۙۥۖۗۙۢۗۗۘ";
                                break;
                            case 1052890555:
                                String str3 = "ۧ۟ۥۘ۟ۦۚ۬ۦۙۦ۫ۢۖۜۜۘ۫ۜۙۢۡۙۚۚۖۨۥۘ۬ۦۥ۬۫ۘۥۢۢۤۥۤۦ۟۫";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1116765791)) {
                                        case -1895244954:
                                            str3 = ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0 ? "۫ۨۖ۠ۖۨۘۙ۠ۦۘۥ۟ۦۘۤۙۙۤ۟ۖۦۘۖۘ۠ۜۡۘۤۨۥۧۨۨ۠ۧۛۡۤۤۚۤۦۘۜۨۡ۬۫ۖۘ۠ۘۨۖۙ۟ۦۗ" : "ۥۘۡۘۥۚۡۘۧۖۢۤ۬ۘۘ۟۟ۖۙ۬ۙۛۢۢ۟۟ۜۘ۠ۧۖۘۗۤۖ";
                                            break;
                                        case 750797155:
                                            str2 = "ۦۛۖۘۜۗۘۘۛۜ۠ۡۦۡۖۖۛ۠۫۬ۢۜۨۥ۟ۖۘۧ۫ۧۤۢ۟۠ۧۜۘۛۥۘۢۦ۟۟۟ۥۘۥ۫ۥۘۜ۬ۨۘۜۘۗۤ۫ۡ";
                                            break;
                                        case 1113245919:
                                            str2 = "۠۫ۜ۠ۨۢۤۚۤۦۧ۠ۛ۠ۥۦ۬ۛ۟ۡۚۗ۬ۜۘۦۤۛ۟ۜۡۘ۠۫ۨ۫ۦۜۜ۫ۖۘۖۤۡۛ۫ۦۤۘۘ";
                                            break;
                                        case 1579748579:
                                            str3 = "۬ۗ۫ۗۚۙۨۦۥۛ۬ۗۧۛۖۤ۬ۡۖۘۜۧۖۙۦۡۛۛۡۛ۫ۦۨ۫۠۫ۙ۠ۡۙۛ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 934864603:
                    OooOOOO();
                    str = "ۢۤۨ۫ۦۤۖۧۚۜ۟ۤۙۧۖۤۥۥ۟ۨۢ۟ۛۡۗ۫ۧۧۘۘۘ۫ۙۘۚ۬ۘ۟ۧۜۘۛۦۦۘ";
                    break;
            }
        }
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String str = "ۗۥۦۘۦۜ۠ۜۘۦۘ۟ۢۧۢ۠ۙۢۙۦ۬ۙۗۗۘۛۨۘۗۚۘۘۡ۟ۤۥۜۦۘۨۙۖۧۛۙ۫ۥ۟ۛۗۢ۟۫ۢ۟ۚ۠";
        while (true) {
            switch ((((str.hashCode() ^ 228) ^ 813) ^ 59) ^ (-846803954)) {
                case -887850784:
                    super.onDestroy();
                    str = "ۜۥۤۛۙۡۛۥۘۙۨ۟ۗ۫ۡۡۢ۠ۘۡۨۥۦۡۘۢ۫ۨۘ۫ۖۙ";
                    break;
                case -88508416:
                    str = "ۧ۫ۗۢۧۙ۫ۡۘۜۡۛ۬۠ۨۘ۠ۛۚۛ۟ۨۘ۫ۧ۫ۥۨ۠ۙۗ۫";
                    break;
                case 272489126:
                    return;
                case 734680729:
                    this.Oooooo.OooO0OO();
                    str = "ۗ۫۠ۗۘ۫ۘۦۘۨ۫ۜ۠۬ۧۤ۟ۥۘۗ۫۟ۖۜۙ۟ۜۨۘۡۜۨ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        String str = "ۜ۟ۜۘۗ۠ۜۘ۠۫ۡۧۦۤ۟ۧۖۢۚۥۨۨ۬ۘۛۡۘۘۛۨۚۚۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE) ^ 1004) ^ 194) ^ 877522043) {
                case -2130183924:
                    str = "۠ۧ۬۟ۚۦۦ۫ۛۚ۬۬ۛۘۘۦۥۢۢ۟ۧۧۗ۟ۨۤۥۢ۬ۡ۫ۡ۟۠۠۬ۨۚ۟ۧۡۥۘ";
                    break;
                case -1074716656:
                    return;
                case -899431927:
                    MobclickAgent.onPause(this);
                    str = "ۦۧۚۨ۟ۦۘۖۙۢ۫۫ۥۤۧ۠ۘۘۨۨۜۘۙ۠ۗۢۧۗۥ۫ۘ۟ۗۡۘۥۖۡ۠۟ۖۖ۫ۘ۫ۗۙ۬ۜۛ";
                    break;
                case 264771667:
                    super.onPause();
                    str = "ۖ۫ۡۘۜۡ۬ۚۙۖۘۥ۠ۡۘۨۜۜۥۘ۬ۙۖۖۚۥۘ۬ۨۜۡ۟ۜۘۨۢۨۘۧۙۨ۫ۢۖۘۦ";
                    break;
                case 1032983565:
                    OooOoO0();
                    str = "۟ۨۦۘۛۖۜۘۚ۫۫ۦۡۢۦۥۘۗ۫ۢۡۙۜۘۛۗۘۘ۬ۘۛۗۛۙۜۤ۫ۜ۟ۥ۠۬ۛۙۦۤ";
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        SurfaceHolder holder = null;
        String str = "۬۠۟۬۠ۘۘۧ۬ۖۜ۠ۘ۬ۨۙۚۨۖۘۧۢۗ۫ۨۘۦۜۗۙۢۦۘۢۗۨۨۢ۬ۤ۠۬ۗۤۘۜۥۨۘۚۨۡۘ۟ۤۜۘۜ۠ۦ";
        while (true) {
            switch ((((str.hashCode() ^ 454) ^ 632) ^ 294) ^ (-1968131953)) {
                case -2100058803:
                    MobclickAgent.onResume(this);
                    str = "ۚۙ۬ۗۨۨۘۢ۫ۢۘۖۘۘ۠ۚۙۗ۫ۙۦۖۘۡۙ۬ۨ۠ۘ۫ۖۗۡۙۜۘ۠ۧۘۘۥ۬ۛۖۨ۬۫ۚۦۘۤۢۚ";
                    break;
                case -1952315560:
                    holder.addCallback(this);
                    str = "ۜۤۡ۫ۥۦۙۘ۠ۖ۟ۤۜۤۢۘۖۦۘ۟ۨ۬ۨۡۡۘۤ۬ۛۙۜۢ";
                    break;
                case -1730086099:
                    OooOOO(holder);
                    str = "ۜۡ۬ۤۤۨۜ۬ۚۤۚۙۙۥۥۖۥۘۡۤۨۘۧۥۡۘۚۨۡ۫ۙۘ";
                    break;
                case -1585747840:
                    str = "ۛۡۖۙ۠ۤۨۛۤ۫ۤۦۘۨۢۦۘۡۢۥۚۤ۫ۗۘۗۤۥ۠ۘۥۢ۟ۤۦۘۗ۠ۤۧۨ۬ۢۦ۫";
                    break;
                case -1086160333:
                    this.o0OoOo0 = false;
                    str = "۟ۙۚۤۛۛ۠ۤ۠ۛۨ۟ۚۙۥۘ۫ۚۗۥۢ۫۟۠ۘۘۢۢۛۦۦۦۘ";
                    break;
                case -1065860256:
                    String str2 = "۟ۡۧۘۖ۬ۧۤ۟ۤۡۡۘۙۥۦۘۘۤۦۘۦۚۛۚۘۚۤۚۘۤۦۜۛۗۙۖۗۦ";
                    while (true) {
                        switch (str2.hashCode() ^ 1355899240) {
                            case 119835254:
                                String str3 = "۠ۘ۟ۢۤۦۘۛۗۦ۟۬ۖۘ۬ۧۖۧۙۨۘۙۖۖۘ۠ۗ۠ۡۢۧۦۛۤ۟ۙۖۘۢ۫ۥۘۜۗۖۚ۠۠ۘۤۦۚۖۡۘۤۦۗۚۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-914461695)) {
                                        case -1081182791:
                                            str3 = "ۜۜۦۘ۟ۖۘۢۖ۬ۢۘۙ۬ۢۙۢۢۚ۟ۨ۠۠ۛ۬ۛۡۤ۫ۙۤۚۥ۫۟ۥۨۘ۬ۨۘۘۥۧۙۜۗۧ۫ۦۜ";
                                            break;
                                        case -833272748:
                                            str3 = this.Ooooooo ? "ۖۖ۬ۥ۫ۜۚۘۜۦ۠ۗ۬ۖۤۤۗۢۤۤۡ۠ۡۦۦ۠ۧۡۥۡۡۡ۬ۢ۫ۛ" : "ۨۖۙ۬ۜۢۦۛ۬ۙۢۢۘۧۥۥۗۥۤۡۙۗ۬ۨۛۛۦۘۜۡۡۘۗ۠ۘ۫ۥۘۥۚۢۜۗۗۜۗۖۘۖۚۨۜ۟ۖۘۡۛۦ";
                                            break;
                                        case -269389732:
                                            str2 = "ۚۛۦۘ۠۠ۛۘۦ۟۟۠ۚۖۥۧۘ۫ۧۗۙۜ۠ۛۡۘ۫ۦۥۘۜۧ۠ۦۖ۬۫ۗۚۥ۫ۖۜۚۤ";
                                            break;
                                        case -191746136:
                                            str2 = "۫ۢۚۧ۟ۨۡۚ۫ۡۗ۬ۗۢۘۘۨۡ۬ۙۥۧۨ۠ۜۘۖۤۛۜۘۖۛۥۖۘ۫ۛۙ";
                                            break;
                                    }
                                }
                                break;
                            case 363506119:
                                str2 = "۟ۚۘۘۡۗ۠ۙۛ۟ۘۛۘۘۢۢۤ۫ۢۗۛۛۜۘۖۛۜ۟۫ۖۨۧۨۘ";
                                break;
                            case 1756211600:
                                str = "ۥۡۘۡۢ۠ۦۛۨۘ۬ۤۙۥۗ۠۬ۗۖۘ۬ۦۗۙۜ۬ۦۦۙۗۥۥۙۨۡۘۦۙۤۦ۫ۚ۬۬ۘ۟ۖۤۘۜ";
                                continue;
                            case 2060598659:
                                str = "۬۠۟ۥ۟ۦ۠۬ۨۖۜۚ۠ۥۧۘۡ۫ۖۘۚۗ۫ۛۜ۫ۦۛۡۦۡ۠۠ۗۨۤۨۘ۟ۥۢ۬ۡۘ";
                                continue;
                        }
                    }
                    break;
                case -1024896785:
                    this.ooOO = true;
                    str = "ۦۙۙۧ۟ۗۤۡۘۖۚۦۡۛۦۘۚ۟ۜۘۛۛۥۚۜۤۖۚۘۜۦ";
                    break;
                case -306871714:
                    str = "۫ۘۗۧۗ۫ۡ۬ۧۜۘۗۗ۬ۤۘۗۖ۬ۨۦۗۥ۫ۖۜۘۤۤۘۘۛۦۘۘۤۥۖۘ";
                    break;
                case -271755164:
                    holder = ((SurfaceView) findViewById(R.id.capture_preview)).getHolder();
                    str = "ۘۦۦۘۦۖۦۘۨۘۦۢۖۢۨۛۚۦۜۥۖۛ۫ۢۨۘۡۧۙۖۘۡۘۜۖۜۧۧۥۘ";
                    break;
                case 52506541:
                    OooOOO0();
                    str = "۬۬ۧۜ۠ۥۘۥۜۡۘۤ۬ۦۘۡۥۜۘۗۖۛۦۢۥۘۧۙۤۖۦۚۨۧۧۘۗۜ۫ۥۘ۫ۧۡۡۢۤۖۧ۟ۦۦ۫۬ۢ۟ۚۢۢ";
                    break;
                case 364177475:
                    return;
                case 530546421:
                    holder.setType(3);
                    str = "۫ۘۗۧۗ۫ۡ۬ۧۜۘۗۗ۬ۤۘۗۖ۬ۨۦۗۥ۫ۖۜۘۤۤۘۘۛۦۘۘۤۥۖۘ";
                    break;
                case 635302989:
                    String str4 = "ۛۙۦۘۦۗۚۜ۟ۦۖ۠۫۫ۜ۬ۖۛۘۘۜۚۦۧۤۘۘۥۛ۬ۧ۠ۡۥ۬۟ۗۖۦۘۚۘۧۘۨۤۥۘ";
                    while (true) {
                        switch (str4.hashCode() ^ 2441236) {
                            case -1211133459:
                                String str5 = "۠ۥۥۘۥۛۡۖۨۧۘۥۜۨۘۚۚ۟ۧۜۚۢ۠ۥۨۦ۠ۖۚۢ۠ۛۘۨ۫۟ۦۛۨۘۛ۬ۖۘۚۥۢۜۚۧۜۥۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 1739097711) {
                                        case -896370647:
                                            str5 = ((AudioManager) getSystemService(o.b)).getRingerMode() != 2 ? "ۤۥۦۘۚ۫۟ۗۗۨۜ۫ۧۘۗ۬۬ۗۥ۟ۡۥۤۛ۟ۙۚۤۨۡۘ۟ۗ۠ۖۛۘۘ" : "ۧ۬۬۬ۜۛۥۘۘۜ۠۫ۧۡۚ۟۟۠ۦ۫ۘۘۙۘۨۘۖ۟ۤۦ۫ۙۜۗۧۥۜۥۘۥ۫۠ۧۥۗۚۨۘ۠ۡۥۘ";
                                            break;
                                        case 411842875:
                                            str5 = "ۥۘۥۘۡۛۗۧۢۦۘ۬ۡۜۘۛۤۦ۟۫ۘۘۡۜۥۘ۠ۡۡۘۗۨۤۤ۫۠ۧۚۛۦۤ۫ۛۢۜۘۙۗ۟۟۟ۢۙۙۛ";
                                            break;
                                        case 793579027:
                                            str4 = "۫ۜۦۡۚۨۗ۟ۧۘۨ۠ۖۖۘ۟ۥۧۘۢۘۦۢۖۘۥۨۥۘ۟ۤۡۘ۟ۜ۬۬۟ۥ";
                                            break;
                                        case 2040392861:
                                            str4 = "ۛۚۙ۠ۖۘۛۨۧۚۨۦۘۙۜ۫۬ۚ۟ۚۛۨۗۚ۟ۘ۟ۡۘۘۙ۟۟ۘۗۦۘ۫ۢۙۦۧۗ۠";
                                            break;
                                    }
                                }
                                break;
                            case -754196455:
                                str = "۟ۙۚۤۛۛ۠ۤ۠ۛۨ۟ۚۙۥۘ۫ۚۗۥۢ۫۟۠ۘۘۢۢۛۦۦۦۘ";
                                continue;
                            case 809141462:
                                str = "۫ۦۧۘ۬ۦۦۦ۫ۜۘ۫ۤۜۘۘ۠ۧۢۗۘۜۛۗۜۘۢ۠ۘۘۡۘ۬۠ۥ۠۠ۘۚ";
                                continue;
                            case 1507257944:
                                str4 = "ۧۡۡۘ۫۟ۥۦۢۘۛ۬ۨۗ۠ۖۘۚ۠۬۠ۘ۟ۛۢۡۤۨۛۦ";
                                break;
                        }
                    }
                    break;
                case 742446722:
                    this.o0OoOo0 = true;
                    str = "ۚۧۘۘۤۖۤۘۧۚۘۚۗۤۖ۬ۖۨۘۤۢۚۜ۬۫ۙۜۨۜۨۖۘۘ۫ۛۥ۟ۗۨۗۦۢۤۢۙ۠ۡۘۛۗۜۘ۟ۥۥ۬ۛۛ";
                    break;
                case 1183901019:
                    super.onResume();
                    str = "ۛ۬ۢۡۧۚۖۨۚۜۘۢۥۗۡۘۡۖۘ۠ۥۧۘۛۛۥۤۨۙۚۢۡ";
                    break;
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        String str = "ۢۦۗۖۘۖ۫۬ۛۚۤۜ۫ۚۘ۟ۧۙۦ۠ۨۜۗۘ۟ۢ۠ۜۦۙۖۥۖۖۘۖ۬ۘۘۤۙۗۖۜۘۘۧۤۗ";
        while (true) {
            switch ((((str.hashCode() ^ 456) ^ 360) ^ 127) ^ (-1718957460)) {
                case -2124692516:
                    str = "ۗۛۦۤ۟ۢۨۢۧۨۥۡۘۚ۠ۖۨۨۜۘۢ۬ۗۗۛۛۧۚ۠ۘۙ۬ۤۘۦۘ۠۠ۚۜۛۤۖۙۖ";
                    break;
                case -482644779:
                    str = "ۜۥۜۛ۬ۜۧۡۖۘ۫ۨۜ۬ۦۖ۠ۘ۬ۛۙۚۙ۠۬ۖۨۥۥۜ۠ۙۨۥۙ۟ۖۗۘۧۘ۫ۨۧۘۥۨۥۘۖۚۘۧۦۥ۟ۗۘۘ";
                    break;
                case 425622447:
                    str = "ۘ۠۬۟۬ۗۗ۬ۜ۠ۜۘۘۙۘۘۧۡ۫۟ۧ۟۬ۦۥۨ۫۫۠ۤۢۖ۫ۖۦۖۘ";
                    break;
                case 1360000181:
                    str = "ۢ۬ۦۘ۠ۜۦۘۖۡۥۙۘۗ۫ۚ۫۫ۜۢۥ۬ۡۘۗۨۗۨۧۚۚۧۜۦۤ۟ۨۨۥۖۨۨۨۖۘۘۘۚۚۗۢۡ";
                    break;
                case 1661588044:
                    return;
                case 1873733049:
                    str = "۟ۖۜۘۚ۫۬۟۫ۙۙۧۘۘۤۥۜۢۛۙۜۡۖۧ۬ۥۜۘۦۦۖۡۘۜۖۧۘۗۢۖۘۚۜۜ۬ۜۘۡۖۜۢۜۗ";
                    break;
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        String str = "ۢۜ۬ۚۥۦۦۚۙۚۧۡۘۗۖۘۗۘۥۘۖۚۨ۠۠ۛۢۘ۫ۚۡۤۗۜۦۘۗ۫ۦۡۚۖ۫ۡۡۘۘ۬۫ۧۥ۬۬۟ۡۡۥۙ";
        while (true) {
            switch ((((str.hashCode() ^ 478) ^ 880) ^ 899) ^ (-2020460843)) {
                case -1278607733:
                    return;
                case 1003803216:
                    this.Ooooooo = true;
                    str = "ۨۘۧۘۦ۬ۘۘ۫ۖۘۘۦۘۘۦ۟ۥۘۚۚۦۙۗۧ۬۟ۡ۫۫ۗۖۤ۠";
                    break;
                case 1210946962:
                    str = "ۗۜ۠ۘ۫۫ۨ۠۠۟ۨ۬ۢۚۡۘۥۨۦۘۨ۟ۘۘ۫ۖۨۘۜۦ۬ۦۙۜۘ۟ۚۥ۟ۨۘۨۤۖۖۗۖۘۗ۬ۛۘۨۥۘ";
                    break;
                case 1551235692:
                    String str2 = "ۦۧۧۘ۟ۙ۟ۢۧۘ۬ۡۧ۠ۛۙ۬۫ۜ۬ۖۘۧ۫ۨۘ۠ۤۖۡ۟۫";
                    while (true) {
                        switch (str2.hashCode() ^ 1533160816) {
                            case -2084319869:
                                str = "ۗۖ۫۫ۖۧۘۥۢۘۚ۟ۨ۬ۨۚۗۥۨۘۘ۟ۛۙۜۘۘۛ۫ۛ۟ۤۥۢۙ۠ۚۘۚ";
                                continue;
                            case -1941783780:
                                String str3 = "ۡۧۡۡۘۘۘۛۥۦۘۘۤۡۘ۟ۘۜۘ۬ۜۨۘۢۘۜ۠ۡۚۧۛۡۘ۟ۚ";
                                while (true) {
                                    switch (str3.hashCode() ^ 714811904) {
                                        case -504161614:
                                            str3 = "۫ۗ۠ۨ۬ۖۘۜۙ۬ۥۡۛ۟ۨۖۘۦ۬۫ۛۛۧۤ۬ۥۘۧۚۧۤۙۚۚ۠ۜۢۚۨۚۜۗۘۙ";
                                            break;
                                        case -142050983:
                                            str2 = "۫۫ۦۚۙۛۢ۫ۗۖۢۨۘۗۢۜۘ۟ۖۤ۟ۨۗۤۦۨ۫ۢۦ۬ۦۗۧۗۛۛ۬ۛۢۨۘ۫ۛ۠ۢۤ۫ۤۖ۬ۤۢ۫۫ۨ";
                                            break;
                                        case -16065377:
                                            str3 = !this.Ooooooo ? "۬۫ۘ۠۬ۗۘ۫۬ۗۥ۬ۗۡۘۘ۫۟۠ۘۛۜۘۡۡۨۘ۠ۨۨۘۗۦۘ۬ۥۦۘ۬ۚ۬ۘ۠ۥۥۦۛ۬ۘۥۘۧۥۜۘ" : "۟۫ۜۗۧۦۘۥۥۘۛۡۨۖۚۢۙ۠ۡۜۖۤ۫ۜۨۛ۬ۙ۬ۧۢ";
                                            break;
                                        case 758082340:
                                            str2 = "۬ۖۧۘۚۢۡۛۖ۟۫ۡۗ۟ۥۗۤۥۛ۟۟ۥۤۚۘۘۨۖۧۧۧۤۡۢۧ۠ۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -1378381687:
                                str = "ۦۙۚۨۛۗۗۥۥۘۙۛ۠ۖۨۙۥۘۜۘ۠ۥ۟ۘۢۢۥ۫ۜۘ۠ۦۖۖۢۢۤۘۘ";
                                continue;
                            case -1111242796:
                                str2 = "ۛۙۥۥۗۤۚۨۖۛۨۖۥۖۗ۠ۡۥۘۤۡۘۛ۫ۙۜۗۘۘۜۙۥۘۡۙۦۚۜۢ";
                                break;
                        }
                    }
                    break;
                case 1814706113:
                    str = "ۤۚۙۡۜۜۘۦۖۨۚۙۥۘۡ۬ۡۘ۠ۦۖۥۤۖۗۨۥۡۦۦۘۥۦۡۢۜ۟۟ۡۥ۟ۦۘۖۡۚ";
                    break;
                case 2039296798:
                    OooOOO(surfaceHolder);
                    str = "ۗۖ۫۫ۖۧۘۥۢۘۚ۟ۨ۬ۨۚۗۥۨۘۘ۟ۛۙۜۘۘۛ۫ۛ۟ۤۥۢۙ۠ۚۘۚ";
                    break;
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        String str = "۟ۗۘۘۥ۟ۙۤۘۘۤۨۨۖۧۥۘ۫ۦۥۘۖۘۗۡ۫ۥۘۥۡۢ۟ۢ۠ۛۢۧۘۚۢۧۖۘۦۨۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 361) ^ 504) ^ 810) ^ (-417232547)) {
                case 235776724:
                    str = "ۛۗۚۤ۠۫ۛۢۡۘۗۨۤ۟ۖۗ۫ۧۘ۟ۤۤۙ۫ۗۖۨ۫ۤ۬۬";
                    break;
                case 736763607:
                    str = "۠ۧۦۡۜۦۙۘ۬۟ۚۙۖۙۥۢۜۧۘۡۙ۬۬ۙۢۖۘ۬ۤۖۦ";
                    break;
                case 978576860:
                    return;
                case 2004072509:
                    this.Ooooooo = false;
                    str = "۫۫ۦۘ۬۠ۥۘ۟ۖۦۘۡۚۥۘۗۜۜ۫ۙۥۘۤۗ۬ۚۢ۠ۨۗۖۜ۫ۘۘۤۡۦۜۖۥۘۨۚۗۙۥۢ";
                    break;
            }
        }
    }
}
