package cn.haorui.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot.RewardBuilder;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.adsail_ad.reward.CircleProcessBar;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.IAd;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.view.NoNavigationDialog;
import cn.haorui.sdk.core.view.TouchAdContainer;
import cn.haorui.sdk.core.view.TouchPositionListener;
import cn.haorui.sdk.core.view.gif.GifImageView;
import cn.haorui.sdk.platform.hr.BaseFullScreenVideoAd;
import cn.haorui.sdk.platform.hr.recycler.HRAdMediaListenerAdapter;
import com.anythink.expressad.d.b;
import com.anythink.expressad.foundation.g.a;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import z2.o000;

/* JADX INFO: loaded from: classes.dex */
public class HRRewardVideoPlayerActivity extends AppCompatActivity {
    public static final String Action_text = "Action_text";
    public static final String Ad_content = "Ad_content";
    public static final String Ad_icon_url = "Ad_icon_url";
    public static final String Ad_title = "Ad_title";
    public static final String Ad_type = "Ad_type";
    public static final String Clickable_range = "Clickable_range";
    public static final String Clk_type = "clk_type";
    public static final String Close_btn = "Close_btn";
    public static final String From_logo = "From_logo";
    public static final String Interaction_type = "Interaction_type";
    public static final String Power_count = "power_count";
    public static final String Power_delay = "power_delay";
    public static final String Power_index = "power_index";
    private static final String TAG = "AdsailRewardVideoPlayerActivity";
    public static final String Video_complete_key = "Video_complete_key";
    public static final String Video_cover = "Video_cover";
    public static final String Video_endcover = "Video_endcover";
    public static final String Video_keep_time = "Video_keep_time";
    public static final String Video_mute_key = "Video_mute_key";
    public static final String Video_one_half_key = "Video_one_half_key";
    public static final String Video_one_quarter_key = "Video_one_quarter_key";
    public static final String Video_pause_key = "Video_pause_key";
    public static final String Video_replay_key = "Video_replay_key";
    public static final String Video_resume_key = "Video_resume_key";
    public static final String Video_start_key = "Video_start_key";
    public static final String Video_three_quarter_key = "Video_three_quarter_key";
    public static final String Video_unmute_key = "Video_unmute_key";
    private static BaseFullScreenVideoAd ad = null;
    private static DownloadDialogBean downloadBean = null;
    public static final String local_ad_id_key = "local_ad_id_key";
    public static final String orientation_key = "orientation_key";
    private o000 aQuery;
    private int adType;
    private String localAdId;
    private NormalMediaView mediaView;
    private ViewGroup mediaViewContainer;
    private boolean onCompletedInvoked;
    private boolean onReward;
    private CircleProcessBar processBar;
    private int shakeId;
    private GifImageView shakeImageView;
    private TouchAdContainer touchContainer;
    private Runnable updateProcessRunnable = new Runnable() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.11
        @Override // java.lang.Runnable
        public void run() {
            if (HRRewardVideoPlayerActivity.this.onCompletedInvoked || HRRewardVideoPlayerActivity.this.mediaView == null) {
                return;
            }
            HRRewardVideoPlayerActivity.this.processBar.refreshProcess(HRRewardVideoPlayerActivity.this.mediaView.getCurrentPosition());
            HRRewardVideoPlayerActivity.this.mediaView.postDelayed(this, 100L);
        }
    };
    private boolean videoLoaded;
    private static Map<String, MediaView> rewardMediaViews = new HashMap();
    private static List<IAd> baseFullScreenVideoAdList = new ArrayList();
    private static boolean isMute = false;

    private byte[] getImageBytes(Context context, int i) {
        try {
            InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = inputStreamOpenRawResource.read(bArr);
                if (-1 == i2) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static MediaView getRewardMediaView(String str) {
        return rewardMediaViews.get(str);
    }

    private void handleDownloadView(int i) {
        try {
            LogUtil.e(TAG, "interaction_type=" + i + ", downloadBean=" + downloadBean);
            if (i != 1 || downloadBean == null) {
                return;
            }
            TextView textView = (TextView) findViewById(R.id.adsail_download_layer_textview);
            textView.setVisibility(0);
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(downloadBean.getApp_name())) {
                sb.append("应用名称：");
                sb.append(downloadBean.getApp_name());
                sb.append(" | ");
            }
            if (!TextUtils.isEmpty(downloadBean.getApp_ver())) {
                sb.append("应用版本：");
                sb.append(downloadBean.getApp_ver());
                sb.append(" | ");
            }
            if (!TextUtils.isEmpty(downloadBean.getApp_size())) {
                sb.append("应用大小：");
                sb.append(downloadBean.getApp_size());
                sb.append(" | ");
            }
            if (!TextUtils.isEmpty(downloadBean.getDeveloper())) {
                sb.append("开发者：");
                sb.append(downloadBean.getDeveloper());
                sb.append(" | ");
            }
            if (!TextUtils.isEmpty(downloadBean.getApp_permission_url()) || downloadBean.getApp_permission() != null) {
                sb.append(" 权限详情>");
                sb.append(" |");
            }
            if (!TextUtils.isEmpty(downloadBean.getApp_private_agreement())) {
                sb.append(" 隐私协议 > ");
                sb.append(" |");
            }
            if (!TextUtils.isEmpty(downloadBean.getApp_intor_url()) || !TextUtils.isEmpty(downloadBean.getApp_intro())) {
                sb.append(" 功能介绍>");
            }
            String string = sb.toString();
            if (TextUtils.isEmpty(string)) {
                textView.setVisibility(8);
            } else if (string.endsWith(a.bQ)) {
                string.substring(0, string.length() - 1);
            }
            textView.setText(string);
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (HRRewardVideoPlayerActivity.downloadBean != null) {
                            HRDownloadDetailActivity.startActivity(HRRewardVideoPlayerActivity.this, HRRewardVideoPlayerActivity.downloadBean);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick() {
        NormalMediaView normalMediaView = this.mediaView;
        if (normalMediaView == null || !normalMediaView.isPrepared()) {
            return;
        }
        ClickHandler.setShowDialogActivity(this);
        sendBroadcast(BaseFullScreenVideoAd.broadcast_onclick);
    }

    public static void removeRewardMediaView(String str) {
        MediaView mediaViewRemove;
        if (str == null || (mediaViewRemove = rewardMediaViews.remove(str)) == null || !(mediaViewRemove instanceof NormalMediaView)) {
            return;
        }
        ((NormalMediaView) mediaViewRemove).destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBroadcast(@NonNull String str) {
        Intent intent = new Intent();
        intent.setAction(str);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    public static void setDownloadDialogBean(DownloadDialogBean downloadDialogBean) {
        downloadBean = downloadDialogBean;
    }

    public static void setFullScreenAd(IAd iAd) {
        baseFullScreenVideoAdList.add(iAd);
    }

    public static void setRewardMediaView(String str, MediaView mediaView) {
        MediaView mediaView2 = rewardMediaViews.get(str);
        if (mediaView2 != null) {
            ((NormalMediaView) mediaView2.getVideoView()).stop();
        }
        rewardMediaViews.put(str, mediaView);
    }

    public static void setVideoMute(boolean z) {
        isMute = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startVideo(MediaView mediaView) {
        ((NormalMediaView) mediaView.getVideoView()).start();
        if (this.adType == AdType.REWARD.value()) {
            this.processBar.setVisibility(0);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:0|2|(1:4)(22:(1:7)|8|(21:10|(3:12|(1:14)(1:15)|16)(3:17|(2:(1:20)(1:21)|22)|23)|(7:27|(1:31)|32|(1:34)|35|(1:37)(1:38)|39)|42|(1:46)(1:45)|(1:49)|97|(1:51)(2:55|(1:57)(1:58))|52|59|(1:63)|64|(1:66)|67|(1:69)(1:70)|71|(1:73)|74|(1:76)|77|(9:79|100|80|(1:82)(1:83)|99|87|(1:91)|92|(2:94|103)(1:102))(2:95|96))(1:40)|41|42|(1:46)(0)|(0)|97|(0)(0)|52|59|(0)|64|(0)|67|(0)(0)|71|(0)|74|(0)|77|(0)(0))|5|8|(0)(0)|41|42|(0)(0)|(0)|97|(0)(0)|52|59|(0)|64|(0)|67|(0)(0)|71|(0)|74|(0)|77|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0223, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0250, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0203 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x020f A[Catch: Exception -> 0x0223, TRY_ENTER, TryCatch #0 {Exception -> 0x0223, blocks: (B:51:0x020f, B:52:0x0220, B:59:0x024c, B:57:0x0228, B:58:0x023a), top: B:97:0x020d }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x045d  */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCreate(Bundle bundle) {
        int i;
        String stringExtra;
        String stringExtra2;
        int intExtra;
        int intExtra2;
        String str;
        String str2;
        int i2;
        int i3;
        String str3;
        o000 o000VarO00oO0o;
        View.OnClickListener onClickListener;
        final MediaView mediaView;
        o000 o000VarO00oO0o2;
        int i4;
        int i5;
        int i6;
        super.onCreate(bundle);
        getWindow().getDecorView().setSystemUiVisibility(3330);
        Intent intent = getIntent();
        int intExtra3 = intent.getIntExtra(orientation_key, 1);
        if (intExtra3 == 1) {
            setRequestedOrientation(1);
            i = R.layout.adsail_activity_reward_portrait_video;
        } else {
            if (intExtra3 == 2) {
                setRequestedOrientation(0);
                i = R.layout.adsail_activity_reward_landscape_video;
            }
            this.touchContainer = (TouchAdContainer) findViewById(R.id.adsail_activity_reward_video_touch_ad_container);
            this.aQuery = new o000((Activity) this);
            final String stringExtra3 = intent.getStringExtra(Action_text);
            this.localAdId = intent.getStringExtra(local_ad_id_key);
            String[] stringArrayExtra = intent.getStringArrayExtra(Video_start_key);
            String[] stringArrayExtra2 = intent.getStringArrayExtra(Video_one_quarter_key);
            String[] stringArrayExtra3 = intent.getStringArrayExtra(Video_one_half_key);
            String[] stringArrayExtra4 = intent.getStringArrayExtra(Video_three_quarter_key);
            String[] stringArrayExtra5 = intent.getStringArrayExtra(Video_complete_key);
            String[] stringArrayExtra6 = intent.getStringArrayExtra(Video_pause_key);
            String[] stringArrayExtra7 = intent.getStringArrayExtra(Video_resume_key);
            String[] stringArrayExtra8 = intent.getStringArrayExtra(Video_mute_key);
            String[] stringArrayExtra9 = intent.getStringArrayExtra(Video_unmute_key);
            String[] stringArrayExtra10 = intent.getStringArrayExtra(Video_replay_key);
            String stringExtra4 = intent.getStringExtra(Video_cover);
            String stringExtra5 = intent.getStringExtra(Video_endcover);
            long longExtra = intent.getLongExtra(Video_keep_time, -1L);
            String stringExtra6 = intent.getStringExtra(Ad_title);
            String stringExtra7 = intent.getStringExtra(Ad_content);
            stringExtra = intent.getStringExtra(Ad_icon_url);
            stringExtra2 = intent.getStringExtra(From_logo);
            intExtra = intent.getIntExtra(Clickable_range, -1);
            intExtra2 = intent.getIntExtra(Close_btn, 2);
            int intExtra4 = intent.getIntExtra(Clk_type, -1);
            int intExtra5 = intent.getIntExtra(Power_index, 15);
            int intExtra6 = intent.getIntExtra(Power_count, 1);
            int intExtra7 = intent.getIntExtra(Power_delay, b.b);
            int intExtra8 = intent.getIntExtra(Interaction_type, 0);
            handleDownloadView(intExtra8);
            this.adType = intent.getIntExtra(Ad_type, -1);
            o000 o000Var = this.aQuery;
            int i7 = R.id.adsail_reward_skip_button;
            o000Var.o00oO0o(i7).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (HRRewardVideoPlayerActivity.this.mediaView != null && HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                            HRRewardVideoPlayerActivity.this.mediaView.pause();
                        }
                        NoNavigationDialog noNavigationDialog = new NoNavigationDialog(HRRewardVideoPlayerActivity.this);
                        noNavigationDialog.setTitle("观看完成即可获得奖励");
                        noNavigationDialog.setButton(-1, "继续观看", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i8) {
                                dialogInterface.dismiss();
                                if (HRRewardVideoPlayerActivity.this.mediaView == null || !HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                                    return;
                                }
                                HRRewardVideoPlayerActivity.this.mediaView.resume();
                            }
                        });
                        noNavigationDialog.setButton(-2, "放弃奖励", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.1.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i8) {
                                dialogInterface.dismiss();
                                if (HRRewardVideoPlayerActivity.this.mediaView != null) {
                                    HRRewardVideoPlayerActivity.this.mediaView.onVideoSkiped();
                                }
                                HRRewardVideoPlayerActivity.this.onCompletedInvoked = true;
                                HRRewardVideoPlayerActivity.this.onReward = true;
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_video_playing_ad_info_container).o00Ooo();
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_ad_info_container).o000o00();
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_download_button).o000Oo00(stringExtra3);
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_close_button_parent).o000o00();
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_skip_button).o00Ooo();
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_include_ad_tag).o00Ooo();
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_include_ad_tag_end).o000o00();
                                if (HRRewardVideoPlayerActivity.this.processBar != null) {
                                    HRRewardVideoPlayerActivity.this.processBar.setVisibility(8);
                                }
                            }
                        });
                        noNavigationDialog.show();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            o000 o000Var2 = this.aQuery;
            int i8 = R.id.adsail_reward_close_button_parent;
            o000Var2.o00oO0o(i8).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (!HRRewardVideoPlayerActivity.this.onReward && HRRewardVideoPlayerActivity.this.adType == AdType.REWARD.value()) {
                            if (HRRewardVideoPlayerActivity.this.mediaView != null && HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                                HRRewardVideoPlayerActivity.this.mediaView.pause();
                            }
                            NoNavigationDialog noNavigationDialog = new NoNavigationDialog(HRRewardVideoPlayerActivity.this);
                            noNavigationDialog.setTitle("观看完成即可获得奖励");
                            noNavigationDialog.setButton(-1, "继续观看", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.2.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i9) {
                                    dialogInterface.dismiss();
                                    if (HRRewardVideoPlayerActivity.this.mediaView == null || !HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                                        return;
                                    }
                                    HRRewardVideoPlayerActivity.this.mediaView.resume();
                                }
                            });
                            noNavigationDialog.setButton(-2, "放弃奖励", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.2.2
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i9) {
                                    dialogInterface.dismiss();
                                    HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_onclosed);
                                    HRRewardVideoPlayerActivity.this.finish();
                                }
                            });
                            noNavigationDialog.show();
                            return;
                        }
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_onclosed);
                        HRRewardVideoPlayerActivity.this.finish();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (HRRewardVideoPlayerActivity.this.mediaView != null && HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                            if (HRRewardVideoPlayerActivity.isMute) {
                                boolean unused = HRRewardVideoPlayerActivity.isMute = false;
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).o0ooOoO(R.drawable.adsail_voice_open);
                                HRRewardVideoPlayerActivity.this.mediaView.onUnmute();
                            } else {
                                boolean unused2 = HRRewardVideoPlayerActivity.isMute = true;
                                HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).o0ooOoO(R.drawable.adsail_voice_closed);
                                HRRewardVideoPlayerActivity.this.mediaView.onMute();
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
            this.shakeImageView = (GifImageView) findViewById(R.id.shake_img);
            TextView textView = (TextView) findViewById(R.id.shake_text);
            TextView textView2 = (TextView) findViewById(R.id.adsail_shake_text_bottom);
            final LinearLayout linearLayout = (LinearLayout) findViewById(R.id.shake_root_view);
            if (this.adType != AdType.REWARD.value()) {
                int i9 = intExtra4 & 4;
                if (i9 == 4) {
                    textView2.setText(intExtra8 == 1 ? "摇一摇或点击下载三方应用" : "摇一摇或点击查看详情");
                    str = stringExtra7;
                    str2 = stringExtra6;
                    i5 = 4;
                    i4 = 8;
                } else {
                    str = stringExtra7;
                    str2 = stringExtra6;
                    i4 = 8;
                    if ((intExtra4 & 8) == 8) {
                        textView2.setText(intExtra8 == 1 ? "扭一扭或点击下载三方应用" : "扭一扭或点击查看详情");
                    }
                    i5 = 4;
                }
                if (i9 == i5 || (intExtra4 & 8) == i4) {
                    linearLayout.setVisibility(0);
                    byte[] imageBytes = getImageBytes(this, R.raw.adsail_new_shake);
                    if (imageBytes != null && imageBytes.length > 0) {
                        this.shakeImageView.setBytes(imageBytes, 1);
                        this.shakeImageView.startAnimation();
                    }
                    if (this.shakeId == 0) {
                        this.shakeId = g.c.a.b();
                    }
                    if (i9 != 4) {
                        textView.setText("扭一扭手机");
                        i6 = 2;
                    } else {
                        i6 = 1;
                    }
                    g.c.a.a(intExtra5, i6, intExtra7, intExtra6, this.shakeId, 0, new g.d() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.4
                        @Override // cn.haorui.sdk.core.loader.g.d
                        public void onShake() {
                            HRRewardVideoPlayerActivity.this.onClick();
                            if (HRRewardVideoPlayerActivity.this.shakeImageView != null) {
                                HRRewardVideoPlayerActivity.this.shakeImageView.clear();
                                linearLayout.setVisibility(8);
                            }
                            g.c.a.a(HRRewardVideoPlayerActivity.this.shakeId);
                        }
                    });
                    i2 = 1;
                    g.c.a.a(true);
                }
                if (intExtra == 2 || intExtra == i2) {
                    i3 = -1;
                } else {
                    i3 = -1;
                    intExtra = -1;
                }
                if (intExtra == i3) {
                    intExtra = 1;
                }
                if (intExtra2 == 0) {
                    this.aQuery.o00oO0o(i7).o00Ooo();
                    o000VarO00oO0o2 = this.aQuery.o00oO0o(i8);
                } else if (intExtra2 == 1) {
                    this.aQuery.o00oO0o(i8).o000o00();
                    o000VarO00oO0o2 = this.aQuery.o00oO0o(i7);
                } else {
                    this.aQuery.o00oO0o(i7).o000o00();
                    o000VarO00oO0o2 = this.aQuery.o00oO0o(i8);
                }
                o000VarO00oO0o2.o00Ooo();
                if (stringExtra2 != null) {
                    o000 o000VarOooo0O0 = this.aQuery.Oooo0O0(R.id.adsail_include_ad_tag);
                    int i10 = R.id.adsail_img_ad_tag;
                    o000VarOooo0O0.o00oO0o(i10).o000000(stringExtra2);
                    this.aQuery.Oooo0O0(R.id.adsail_include_ad_tag_end).o00oO0o(i10).o000000(stringExtra2);
                }
                str3 = str2;
                this.aQuery.o00oO0o(R.id.adsail_video_playing_reward_ad_title).o000Oo00(str3);
                String str4 = str;
                this.aQuery.o00oO0o(R.id.adsail_video_playing_reward_ad_content).o000Oo00(str4);
                o000 o000Var3 = this.aQuery;
                int i11 = R.id.adsail_video_playing_download_button;
                o000Var3.o00oO0o(i11).o000Oo00(stringExtra3);
                if (stringExtra != null) {
                    this.aQuery.o00oO0o(R.id.adsail_reward_ad_icon).o000000(stringExtra).o000o00();
                    this.aQuery.o00oO0o(R.id.adsail_reward_ad_icon_end).o000000(stringExtra).o000o00();
                }
                o000 o000Var4 = this.aQuery;
                if (intExtra == 1) {
                    o000Var4.o00oO0o(i11).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            LogUtil.e(HRRewardVideoPlayerActivity.TAG, "video_playing_download_button  clicked");
                            HRRewardVideoPlayerActivity.this.onClick();
                        }
                    });
                    o000VarO00oO0o = this.aQuery.o00oO0o(R.id.adsail_download_button);
                    onClickListener = new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            LogUtil.e(HRRewardVideoPlayerActivity.TAG, "download_button  clicked");
                            HRRewardVideoPlayerActivity.this.onClick();
                        }
                    };
                } else {
                    o000VarO00oO0o = o000Var4.o00oO0o(R.id.adsail_fullscreen_clickable_range);
                    onClickListener = new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            HRRewardVideoPlayerActivity.this.onClick();
                        }
                    };
                }
                o000VarO00oO0o.OooOo0o(onClickListener);
                if (!TextUtils.isEmpty(str3)) {
                    this.aQuery.o00oO0o(R.id.adsail_reward_ad_title).o000Oo00(str3);
                }
                if (!TextUtils.isEmpty(str3)) {
                    this.aQuery.o00oO0o(R.id.adsail_reward_ad_content).o000Oo00(str4);
                }
                this.mediaViewContainer = (ViewGroup) findViewById(R.id.adsail_media_video);
                this.processBar = (CircleProcessBar) findViewById(R.id.adsail_process_bar);
                mediaView = rewardMediaViews.get(this.localAdId);
                if (mediaView == null) {
                    finish();
                    return;
                }
                NormalMediaView normalMediaView = (NormalMediaView) mediaView.getVideoView();
                this.mediaView = normalMediaView;
                normalMediaView.setActivityForLifecycle(this);
                this.mediaView.post(this.updateProcessRunnable);
                this.mediaView.setVideoCover(stringExtra4);
                this.mediaView.setVideoEndCover(stringExtra5);
                this.mediaView.showProgressLoading();
                try {
                    if (isMute) {
                        this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).o0ooOoO(R.drawable.adsail_voice_closed);
                        this.mediaView.onMute();
                    } else {
                        this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).o0ooOoO(R.drawable.adsail_voice_open);
                        this.mediaView.onUnmute();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                final long j = 1000 * longExtra;
                mediaView.setOnVideoKeepTimeFinishListener(new MediaView.OnVideoKeepTimeFinishListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.8
                    @Override // cn.haorui.sdk.adsail_ad.MediaView.OnVideoKeepTimeFinishListener
                    public void onKeepTimeFinished() {
                        HRRewardVideoPlayerActivity.this.onReward = true;
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_close_button_parent).o000o00();
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_skip_button).o00Ooo();
                        HRRewardVideoPlayerActivity.this.processBar.setVisibility(8);
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_onreward);
                    }
                }, j);
                mediaView.addOnVideoCompleteListener(new MediaView.OnVideoCompleteListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.9
                    @Override // cn.haorui.sdk.adsail_ad.MediaView.OnVideoCompleteListener
                    public void onCompleted() {
                        HRRewardVideoPlayerActivity.this.onCompletedInvoked = true;
                        HRRewardVideoPlayerActivity.this.onReward = true;
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_video_playing_ad_info_container).o00Ooo();
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_ad_info_container).o000o00();
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_download_button).o000Oo00(stringExtra3);
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_close_button_parent).o000o00();
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_skip_button).o00Ooo();
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_include_ad_tag).o00Ooo();
                        HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_include_ad_tag_end).o000o00();
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_on_video_complete);
                    }
                });
                this.mediaViewContainer.removeAllViews();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(13, -1);
                if (this.mediaView.getParent() != null && (this.mediaView.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) this.mediaView.getParent()).removeView(this.mediaView);
                }
                this.mediaViewContainer.addView(this.mediaView, layoutParams);
                mediaView.setNativeAdMediaListener(new HRAdMediaListenerAdapter(this, new NativeAdSlot().new RewardBuilder().setVideo_start(stringArrayExtra).setVideo_one_quarter(stringArrayExtra2).setVideo_one_half(stringArrayExtra3).setVideo_three_quarter(stringArrayExtra4).setVideo_complete(stringArrayExtra5).setVideo_pause(stringArrayExtra6).setVideo_resume(stringArrayExtra7).setVideo_mute(stringArrayExtra8).setVideo_unmute(stringArrayExtra9).setVideo_replay(stringArrayExtra10).setVideoType(2).build(), new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.10
                    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                    public void onVideoCompleted() {
                    }

                    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                    public void onVideoError() {
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_on_video_error);
                        for (int i12 = 0; i12 < HRRewardVideoPlayerActivity.baseFullScreenVideoAdList.size(); i12++) {
                            try {
                                BaseFullScreenVideoAd baseFullScreenVideoAd = (BaseFullScreenVideoAd) HRRewardVideoPlayerActivity.baseFullScreenVideoAdList.get(i12);
                                if (baseFullScreenVideoAd != null) {
                                    baseFullScreenVideoAd.destroy();
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                        HRRewardVideoPlayerActivity.this.finish();
                    }

                    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                    public void onVideoLoaded() {
                        HRRewardVideoPlayerActivity.this.videoLoaded = true;
                        HRRewardVideoPlayerActivity.this.startVideo(mediaView);
                    }

                    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                    public void onVideoPause() {
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_on_video_pause);
                    }

                    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                    public void onVideoResume() {
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_on_video_resume);
                    }

                    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                    public void onVideoStart() {
                        if (HRRewardVideoPlayerActivity.this.mediaView == null) {
                            return;
                        }
                        long j2 = j;
                        HRRewardVideoPlayerActivity.this.processBar.setmTotalTime((j2 <= 0 || j2 >= ((long) HRRewardVideoPlayerActivity.this.mediaView.getDuration())) ? HRRewardVideoPlayerActivity.this.mediaView.getDuration() : (int) j);
                        HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_on_video_start);
                    }
                }));
                if (mediaView.isPrepared()) {
                    startVideo(mediaView);
                    this.videoLoaded = true;
                    return;
                }
                return;
            }
            str = stringExtra7;
            str2 = stringExtra6;
            i2 = 1;
            if (intExtra == 2) {
                i3 = -1;
            }
            if (intExtra == i3) {
            }
            if (intExtra2 == 0) {
            }
            o000VarO00oO0o2.o00Ooo();
            if (stringExtra2 != null) {
            }
            str3 = str2;
            this.aQuery.o00oO0o(R.id.adsail_video_playing_reward_ad_title).o000Oo00(str3);
            String str42 = str;
            this.aQuery.o00oO0o(R.id.adsail_video_playing_reward_ad_content).o000Oo00(str42);
            o000 o000Var32 = this.aQuery;
            int i112 = R.id.adsail_video_playing_download_button;
            o000Var32.o00oO0o(i112).o000Oo00(stringExtra3);
            if (stringExtra != null) {
            }
            o000 o000Var42 = this.aQuery;
            if (intExtra == 1) {
            }
            o000VarO00oO0o.OooOo0o(onClickListener);
            if (!TextUtils.isEmpty(str3)) {
            }
            if (!TextUtils.isEmpty(str3)) {
            }
            this.mediaViewContainer = (ViewGroup) findViewById(R.id.adsail_media_video);
            this.processBar = (CircleProcessBar) findViewById(R.id.adsail_process_bar);
            mediaView = rewardMediaViews.get(this.localAdId);
            if (mediaView == null) {
            }
        }
        setContentView(i);
        this.touchContainer = (TouchAdContainer) findViewById(R.id.adsail_activity_reward_video_touch_ad_container);
        this.aQuery = new o000((Activity) this);
        final String stringExtra32 = intent.getStringExtra(Action_text);
        this.localAdId = intent.getStringExtra(local_ad_id_key);
        String[] stringArrayExtra11 = intent.getStringArrayExtra(Video_start_key);
        String[] stringArrayExtra22 = intent.getStringArrayExtra(Video_one_quarter_key);
        String[] stringArrayExtra32 = intent.getStringArrayExtra(Video_one_half_key);
        String[] stringArrayExtra42 = intent.getStringArrayExtra(Video_three_quarter_key);
        String[] stringArrayExtra52 = intent.getStringArrayExtra(Video_complete_key);
        String[] stringArrayExtra62 = intent.getStringArrayExtra(Video_pause_key);
        String[] stringArrayExtra72 = intent.getStringArrayExtra(Video_resume_key);
        String[] stringArrayExtra82 = intent.getStringArrayExtra(Video_mute_key);
        String[] stringArrayExtra92 = intent.getStringArrayExtra(Video_unmute_key);
        String[] stringArrayExtra102 = intent.getStringArrayExtra(Video_replay_key);
        String stringExtra42 = intent.getStringExtra(Video_cover);
        String stringExtra52 = intent.getStringExtra(Video_endcover);
        long longExtra2 = intent.getLongExtra(Video_keep_time, -1L);
        String stringExtra62 = intent.getStringExtra(Ad_title);
        String stringExtra72 = intent.getStringExtra(Ad_content);
        stringExtra = intent.getStringExtra(Ad_icon_url);
        stringExtra2 = intent.getStringExtra(From_logo);
        intExtra = intent.getIntExtra(Clickable_range, -1);
        intExtra2 = intent.getIntExtra(Close_btn, 2);
        int intExtra42 = intent.getIntExtra(Clk_type, -1);
        int intExtra52 = intent.getIntExtra(Power_index, 15);
        int intExtra62 = intent.getIntExtra(Power_count, 1);
        int intExtra72 = intent.getIntExtra(Power_delay, b.b);
        int intExtra82 = intent.getIntExtra(Interaction_type, 0);
        handleDownloadView(intExtra82);
        this.adType = intent.getIntExtra(Ad_type, -1);
        o000 o000Var5 = this.aQuery;
        int i72 = R.id.adsail_reward_skip_button;
        o000Var5.o00oO0o(i72).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (HRRewardVideoPlayerActivity.this.mediaView != null && HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                        HRRewardVideoPlayerActivity.this.mediaView.pause();
                    }
                    NoNavigationDialog noNavigationDialog = new NoNavigationDialog(HRRewardVideoPlayerActivity.this);
                    noNavigationDialog.setTitle("观看完成即可获得奖励");
                    noNavigationDialog.setButton(-1, "继续观看", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i82) {
                            dialogInterface.dismiss();
                            if (HRRewardVideoPlayerActivity.this.mediaView == null || !HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                                return;
                            }
                            HRRewardVideoPlayerActivity.this.mediaView.resume();
                        }
                    });
                    noNavigationDialog.setButton(-2, "放弃奖励", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.1.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i82) {
                            dialogInterface.dismiss();
                            if (HRRewardVideoPlayerActivity.this.mediaView != null) {
                                HRRewardVideoPlayerActivity.this.mediaView.onVideoSkiped();
                            }
                            HRRewardVideoPlayerActivity.this.onCompletedInvoked = true;
                            HRRewardVideoPlayerActivity.this.onReward = true;
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_video_playing_ad_info_container).o00Ooo();
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_ad_info_container).o000o00();
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_download_button).o000Oo00(stringExtra32);
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_close_button_parent).o000o00();
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_skip_button).o00Ooo();
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_include_ad_tag).o00Ooo();
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_include_ad_tag_end).o000o00();
                            if (HRRewardVideoPlayerActivity.this.processBar != null) {
                                HRRewardVideoPlayerActivity.this.processBar.setVisibility(8);
                            }
                        }
                    });
                    noNavigationDialog.show();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        o000 o000Var22 = this.aQuery;
        int i82 = R.id.adsail_reward_close_button_parent;
        o000Var22.o00oO0o(i82).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (!HRRewardVideoPlayerActivity.this.onReward && HRRewardVideoPlayerActivity.this.adType == AdType.REWARD.value()) {
                        if (HRRewardVideoPlayerActivity.this.mediaView != null && HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                            HRRewardVideoPlayerActivity.this.mediaView.pause();
                        }
                        NoNavigationDialog noNavigationDialog = new NoNavigationDialog(HRRewardVideoPlayerActivity.this);
                        noNavigationDialog.setTitle("观看完成即可获得奖励");
                        noNavigationDialog.setButton(-1, "继续观看", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.2.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i92) {
                                dialogInterface.dismiss();
                                if (HRRewardVideoPlayerActivity.this.mediaView == null || !HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                                    return;
                                }
                                HRRewardVideoPlayerActivity.this.mediaView.resume();
                            }
                        });
                        noNavigationDialog.setButton(-2, "放弃奖励", new DialogInterface.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.2.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i92) {
                                dialogInterface.dismiss();
                                HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_onclosed);
                                HRRewardVideoPlayerActivity.this.finish();
                            }
                        });
                        noNavigationDialog.show();
                        return;
                    }
                    HRRewardVideoPlayerActivity.this.sendBroadcast(BaseFullScreenVideoAd.broadcast_onclosed);
                    HRRewardVideoPlayerActivity.this.finish();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRRewardVideoPlayerActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (HRRewardVideoPlayerActivity.this.mediaView != null && HRRewardVideoPlayerActivity.this.mediaView.isPlaying()) {
                        if (HRRewardVideoPlayerActivity.isMute) {
                            boolean unused = HRRewardVideoPlayerActivity.isMute = false;
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).o0ooOoO(R.drawable.adsail_voice_open);
                            HRRewardVideoPlayerActivity.this.mediaView.onUnmute();
                        } else {
                            boolean unused2 = HRRewardVideoPlayerActivity.isMute = true;
                            HRRewardVideoPlayerActivity.this.aQuery.o00oO0o(R.id.adsail_reward_voice_button).o0ooOoO(R.drawable.adsail_voice_closed);
                            HRRewardVideoPlayerActivity.this.mediaView.onMute();
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
        this.shakeImageView = (GifImageView) findViewById(R.id.shake_img);
        TextView textView3 = (TextView) findViewById(R.id.shake_text);
        TextView textView22 = (TextView) findViewById(R.id.adsail_shake_text_bottom);
        final LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.shake_root_view);
        if (this.adType != AdType.REWARD.value()) {
        }
        i2 = 1;
        if (intExtra == 2) {
        }
        if (intExtra == i3) {
        }
        if (intExtra2 == 0) {
        }
        o000VarO00oO0o2.o00Ooo();
        if (stringExtra2 != null) {
        }
        str3 = str2;
        this.aQuery.o00oO0o(R.id.adsail_video_playing_reward_ad_title).o000Oo00(str3);
        String str422 = str;
        this.aQuery.o00oO0o(R.id.adsail_video_playing_reward_ad_content).o000Oo00(str422);
        o000 o000Var322 = this.aQuery;
        int i1122 = R.id.adsail_video_playing_download_button;
        o000Var322.o00oO0o(i1122).o000Oo00(stringExtra32);
        if (stringExtra != null) {
        }
        o000 o000Var422 = this.aQuery;
        if (intExtra == 1) {
        }
        o000VarO00oO0o.OooOo0o(onClickListener);
        if (!TextUtils.isEmpty(str3)) {
        }
        if (!TextUtils.isEmpty(str3)) {
        }
        this.mediaViewContainer = (ViewGroup) findViewById(R.id.adsail_media_video);
        this.processBar = (CircleProcessBar) findViewById(R.id.adsail_process_bar);
        mediaView = rewardMediaViews.get(this.localAdId);
        if (mediaView == null) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        baseFullScreenVideoAdList.clear();
        rewardMediaViews.remove(this.localAdId);
        g.c.a.a(this.shakeId);
        downloadBean = null;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        for (int i = 0; i < baseFullScreenVideoAdList.size(); i++) {
            IAd iAd = baseFullScreenVideoAdList.get(i);
            if (iAd != null) {
                this.touchContainer.setTouchPositionListener(new TouchPositionListener(iAd));
            }
        }
    }
}
