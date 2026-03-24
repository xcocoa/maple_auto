package cn.haorui.sdk.adsail_ad.nativ;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cn.haorui.sdk.R;
import cn.haorui.sdk.activity.HRDetailActivity;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.adsail_ad.lifecycle.LifecycleHelper;
import cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener;
import cn.haorui.sdk.adsail_ad.view.HRVideoTextureView;
import cn.haorui.sdk.core.ad.recycler.IAdExposureListener;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import z2.o000;
import z2.o000O;
import z2.o000OO00;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class NormalMediaView extends FrameLayout implements MediaView {
    public static final String ACTION_DOWNLOAD_CLICKED = "ACTION_DOWNLOAD_CLICKED";
    private static final int PLAY_STATE_COMPLETE = 3;
    private static final int PLAY_STATE_INIT = 0;
    private static final int PLAY_STATE_PAUSE = 2;
    private static final int PLAY_STATE_PLAYING = 1;
    private static final int UPDATE_TIME = 1;
    private final String TAG;
    private o000 aQuery;
    private INativeAdListener adListener;
    private boolean attachWindow;
    private boolean autoStart;
    private BroadcastReceiver broadcastReceiver;
    private int configHeight;
    private int configWidth;
    private float containerHeight;
    private float containerWidth;
    private String coverUrl;
    private int currentPosition;
    private TextView currentTimeView;
    private String endCoverUrl;
    private TextView endTimeView;
    private int isEyes;
    private boolean isVideoSkiped;
    private long keepTime;
    private volatile boolean keepTimeFinishedPerformed;
    private LifecycleHelper lifecycleHelper;
    private LifecycleListener lifecycleListener;
    private IAdExposureListener mExposureListener;
    private IPreparedListener mPreparedListener;
    private MediaPlayer mediaPlayer;
    private NativeAdData nativeAdData;
    private NativeAdMediaListener nativeAdMediaListener;
    private MediaPlayer.OnInfoListener onInfoListener;
    private List<MediaView.OnVideoCompleteListener> onVideoCompleteListeners;
    private MediaView.OnVideoKeepTimeFinishListener onVideoKeepTimeFinishListener;
    private MediaView.OnVideoLoadedListener onVideoLoadedListener;
    private volatile boolean oneHalfPerformed;
    private volatile boolean oneQuarterPerformed;
    private boolean paused;
    private boolean playOnce;
    private int playState;
    private boolean prepared;
    private boolean recycler;
    private ProgressBar seekBar;
    private boolean showControl;
    private boolean showDetail;
    private volatile boolean threeQuarterPerformed;

    @SuppressLint({"HandlerLeak"})
    private Handler uiHandler;
    private boolean videoStartSent;
    private String videoUrl;
    private HRVideoTextureView videoView;

    public interface IPreparedListener {
        void onPrepared();
    }

    public NormalMediaView(@NonNull Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.autoStart = true;
        this.keepTime = -1L;
        this.playState = 0;
        this.videoStartSent = false;
        this.prepared = false;
        this.playOnce = false;
        this.recycler = false;
        this.paused = false;
        this.uiHandler = new Handler() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int currentPosition = NormalMediaView.this.videoView.getCurrentPosition();
                NormalMediaView normalMediaView = NormalMediaView.this;
                normalMediaView.updateTimeFormat(normalMediaView.currentTimeView, currentPosition);
                NormalMediaView.this.seekBar.setProgress(currentPosition);
                long duration = NormalMediaView.this.videoView.getDuration();
                if (NormalMediaView.this.keepTime > duration) {
                    NormalMediaView.this.keepTime = duration - 100;
                }
                if (NormalMediaView.this.keepTime > 0 && currentPosition >= NormalMediaView.this.keepTime && !NormalMediaView.this.keepTimeFinishedPerformed) {
                    NormalMediaView.this.keepTimeFinishedPerformed = true;
                    if (NormalMediaView.this.onVideoKeepTimeFinishListener != null) {
                        NormalMediaView.this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
                    }
                }
                double d = (currentPosition * 1.0f) / duration;
                if (d < 0.25d || d >= 0.5d) {
                    if (d < 0.5d || d >= 0.75d) {
                        if (d >= 0.75d && d < 1.0d && !NormalMediaView.this.threeQuarterPerformed) {
                            if (NormalMediaView.this.nativeAdMediaListener != null) {
                                NormalMediaView.this.nativeAdMediaListener.onVideoThreeQuarter();
                            }
                            NormalMediaView.this.threeQuarterPerformed = true;
                        }
                    } else if (!NormalMediaView.this.oneHalfPerformed) {
                        if (NormalMediaView.this.nativeAdMediaListener != null) {
                            NormalMediaView.this.nativeAdMediaListener.onVideoOneHalf();
                        }
                        NormalMediaView.this.oneHalfPerformed = true;
                    }
                } else if (!NormalMediaView.this.oneQuarterPerformed) {
                    if (NormalMediaView.this.nativeAdMediaListener != null) {
                        NormalMediaView.this.nativeAdMediaListener.onVideoOneQuarter();
                    }
                    NormalMediaView.this.oneQuarterPerformed = true;
                }
                NormalMediaView.this.uiHandler.sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.onVideoCompleteListeners = new ArrayList();
        this.lifecycleListener = new LifecycleListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.12
            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onDestroy() {
                LogUtil.d(NormalMediaView.this.TAG, "onDestroy isEyes=" + NormalMediaView.this.isEyes);
                if (NormalMediaView.this.showDetail || NormalMediaView.this.isEyes == 1) {
                    return;
                }
                NormalMediaView.this.destroy();
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onPause() {
                if (NormalMediaView.this.playState == 3 || !NormalMediaView.this.attachWindow || NormalMediaView.this.showDetail || NormalMediaView.this.isEyes == 1) {
                    return;
                }
                LogUtil.d(NormalMediaView.this.TAG, "onPause");
                NormalMediaView.this.pause();
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onResume() {
                LogUtil.d(NormalMediaView.this.TAG, "onResume,playState=" + NormalMediaView.this.playState);
                if (NormalMediaView.this.playState == 2 || (NormalMediaView.this.showDetail && NormalMediaView.this.playState != 3 && NormalMediaView.this.attachWindow)) {
                    NormalMediaView.this.resume();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStart() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStop() {
            }
        };
        this.broadcastReceiver = new BroadcastReceiver() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.13
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ClickHandler.gotoDownload(NormalMediaView.this.getContext(), NormalMediaView.this.nativeAdData);
                ClickHandler.clearShowDialogActivity();
            }
        };
        init(context);
    }

    public NormalMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.autoStart = true;
        this.keepTime = -1L;
        this.playState = 0;
        this.videoStartSent = false;
        this.prepared = false;
        this.playOnce = false;
        this.recycler = false;
        this.paused = false;
        this.uiHandler = new Handler() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int currentPosition = NormalMediaView.this.videoView.getCurrentPosition();
                NormalMediaView normalMediaView = NormalMediaView.this;
                normalMediaView.updateTimeFormat(normalMediaView.currentTimeView, currentPosition);
                NormalMediaView.this.seekBar.setProgress(currentPosition);
                long duration = NormalMediaView.this.videoView.getDuration();
                if (NormalMediaView.this.keepTime > duration) {
                    NormalMediaView.this.keepTime = duration - 100;
                }
                if (NormalMediaView.this.keepTime > 0 && currentPosition >= NormalMediaView.this.keepTime && !NormalMediaView.this.keepTimeFinishedPerformed) {
                    NormalMediaView.this.keepTimeFinishedPerformed = true;
                    if (NormalMediaView.this.onVideoKeepTimeFinishListener != null) {
                        NormalMediaView.this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
                    }
                }
                double d = (currentPosition * 1.0f) / duration;
                if (d < 0.25d || d >= 0.5d) {
                    if (d < 0.5d || d >= 0.75d) {
                        if (d >= 0.75d && d < 1.0d && !NormalMediaView.this.threeQuarterPerformed) {
                            if (NormalMediaView.this.nativeAdMediaListener != null) {
                                NormalMediaView.this.nativeAdMediaListener.onVideoThreeQuarter();
                            }
                            NormalMediaView.this.threeQuarterPerformed = true;
                        }
                    } else if (!NormalMediaView.this.oneHalfPerformed) {
                        if (NormalMediaView.this.nativeAdMediaListener != null) {
                            NormalMediaView.this.nativeAdMediaListener.onVideoOneHalf();
                        }
                        NormalMediaView.this.oneHalfPerformed = true;
                    }
                } else if (!NormalMediaView.this.oneQuarterPerformed) {
                    if (NormalMediaView.this.nativeAdMediaListener != null) {
                        NormalMediaView.this.nativeAdMediaListener.onVideoOneQuarter();
                    }
                    NormalMediaView.this.oneQuarterPerformed = true;
                }
                NormalMediaView.this.uiHandler.sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.onVideoCompleteListeners = new ArrayList();
        this.lifecycleListener = new LifecycleListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.12
            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onDestroy() {
                LogUtil.d(NormalMediaView.this.TAG, "onDestroy isEyes=" + NormalMediaView.this.isEyes);
                if (NormalMediaView.this.showDetail || NormalMediaView.this.isEyes == 1) {
                    return;
                }
                NormalMediaView.this.destroy();
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onPause() {
                if (NormalMediaView.this.playState == 3 || !NormalMediaView.this.attachWindow || NormalMediaView.this.showDetail || NormalMediaView.this.isEyes == 1) {
                    return;
                }
                LogUtil.d(NormalMediaView.this.TAG, "onPause");
                NormalMediaView.this.pause();
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onResume() {
                LogUtil.d(NormalMediaView.this.TAG, "onResume,playState=" + NormalMediaView.this.playState);
                if (NormalMediaView.this.playState == 2 || (NormalMediaView.this.showDetail && NormalMediaView.this.playState != 3 && NormalMediaView.this.attachWindow)) {
                    NormalMediaView.this.resume();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStart() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStop() {
            }
        };
        this.broadcastReceiver = new BroadcastReceiver() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.13
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ClickHandler.gotoDownload(NormalMediaView.this.getContext(), NormalMediaView.this.nativeAdData);
                ClickHandler.clearShowDialogActivity();
            }
        };
        init(context);
    }

    public NormalMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = getClass().getSimpleName();
        this.autoStart = true;
        this.keepTime = -1L;
        this.playState = 0;
        this.videoStartSent = false;
        this.prepared = false;
        this.playOnce = false;
        this.recycler = false;
        this.paused = false;
        this.uiHandler = new Handler() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int currentPosition = NormalMediaView.this.videoView.getCurrentPosition();
                NormalMediaView normalMediaView = NormalMediaView.this;
                normalMediaView.updateTimeFormat(normalMediaView.currentTimeView, currentPosition);
                NormalMediaView.this.seekBar.setProgress(currentPosition);
                long duration = NormalMediaView.this.videoView.getDuration();
                if (NormalMediaView.this.keepTime > duration) {
                    NormalMediaView.this.keepTime = duration - 100;
                }
                if (NormalMediaView.this.keepTime > 0 && currentPosition >= NormalMediaView.this.keepTime && !NormalMediaView.this.keepTimeFinishedPerformed) {
                    NormalMediaView.this.keepTimeFinishedPerformed = true;
                    if (NormalMediaView.this.onVideoKeepTimeFinishListener != null) {
                        NormalMediaView.this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
                    }
                }
                double d = (currentPosition * 1.0f) / duration;
                if (d < 0.25d || d >= 0.5d) {
                    if (d < 0.5d || d >= 0.75d) {
                        if (d >= 0.75d && d < 1.0d && !NormalMediaView.this.threeQuarterPerformed) {
                            if (NormalMediaView.this.nativeAdMediaListener != null) {
                                NormalMediaView.this.nativeAdMediaListener.onVideoThreeQuarter();
                            }
                            NormalMediaView.this.threeQuarterPerformed = true;
                        }
                    } else if (!NormalMediaView.this.oneHalfPerformed) {
                        if (NormalMediaView.this.nativeAdMediaListener != null) {
                            NormalMediaView.this.nativeAdMediaListener.onVideoOneHalf();
                        }
                        NormalMediaView.this.oneHalfPerformed = true;
                    }
                } else if (!NormalMediaView.this.oneQuarterPerformed) {
                    if (NormalMediaView.this.nativeAdMediaListener != null) {
                        NormalMediaView.this.nativeAdMediaListener.onVideoOneQuarter();
                    }
                    NormalMediaView.this.oneQuarterPerformed = true;
                }
                NormalMediaView.this.uiHandler.sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.onVideoCompleteListeners = new ArrayList();
        this.lifecycleListener = new LifecycleListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.12
            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onDestroy() {
                LogUtil.d(NormalMediaView.this.TAG, "onDestroy isEyes=" + NormalMediaView.this.isEyes);
                if (NormalMediaView.this.showDetail || NormalMediaView.this.isEyes == 1) {
                    return;
                }
                NormalMediaView.this.destroy();
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onPause() {
                if (NormalMediaView.this.playState == 3 || !NormalMediaView.this.attachWindow || NormalMediaView.this.showDetail || NormalMediaView.this.isEyes == 1) {
                    return;
                }
                LogUtil.d(NormalMediaView.this.TAG, "onPause");
                NormalMediaView.this.pause();
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onResume() {
                LogUtil.d(NormalMediaView.this.TAG, "onResume,playState=" + NormalMediaView.this.playState);
                if (NormalMediaView.this.playState == 2 || (NormalMediaView.this.showDetail && NormalMediaView.this.playState != 3 && NormalMediaView.this.attachWindow)) {
                    NormalMediaView.this.resume();
                }
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStart() {
            }

            @Override // cn.haorui.sdk.adsail_ad.lifecycle.LifecycleListener
            public void onStop() {
            }
        };
        this.broadcastReceiver = new BroadcastReceiver() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.13
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ClickHandler.gotoDownload(NormalMediaView.this.getContext(), NormalMediaView.this.nativeAdData);
                ClickHandler.clearShowDialogActivity();
            }
        };
        init(context);
    }

    private void init(Context context) {
        setTag(MediaView.MEDIA_VIEW_TAG);
        initUI(context);
        initEvent();
    }

    private void initEvent() {
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NormalMediaView.this.playState == 2) {
                    NormalMediaView.this.resume();
                } else {
                    NormalMediaView.this.replay();
                }
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_play_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NormalMediaView.this.videoView.isPlaying()) {
                    return;
                }
                NormalMediaView.this.resume();
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_pause_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NormalMediaView.this.videoView.isPlaying()) {
                    NormalMediaView.this.pause();
                }
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_video_volume_mute).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NormalMediaView.this.onUnmute();
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_video_volume).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NormalMediaView.this.onMute();
            }
        });
        this.mediaPlayer = this.videoView.getMediaPlayer();
        this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.8
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                LogUtil.e(NormalMediaView.this.TAG, "MediaPlayer onError" + i + o4.OooO00o.OooO0Oo + i2);
                if (NormalMediaView.this.nativeAdMediaListener != null) {
                    NormalMediaView.this.nativeAdMediaListener.onVideoError();
                }
                if (NormalMediaView.this.adListener != null) {
                    NormalMediaView.this.adListener.onAdRenderFail("MediaPlayer onError", i);
                }
                NormalMediaView.this.destroy();
                return true;
            }
        });
        this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.9
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                LogUtil.d(NormalMediaView.this.TAG, "MediaPlayer.onPrepared " + NormalMediaView.this.prepared + o4.OooO00o.OooO0Oo + NormalMediaView.this.hashCode());
                NormalMediaView.this.prepared = true;
                mediaPlayer.setVideoScalingMode(2);
                if (NormalMediaView.this.playState == 1) {
                    mediaPlayer.start();
                    NormalMediaView.this.onPlay();
                } else {
                    NormalMediaView.this.onReset();
                }
                NormalMediaView.this.aQuery.o00oO0o(R.id.adsail_progress_loading).o00Ooo();
                if (NormalMediaView.this.mPreparedListener != null) {
                    NormalMediaView.this.mPreparedListener.onPrepared();
                }
                if (NormalMediaView.this.nativeAdMediaListener != null) {
                    NormalMediaView.this.nativeAdMediaListener.onVideoLoaded();
                }
            }
        });
        this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.10
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                NormalMediaView.this.onCompletion();
            }
        });
        this.videoView.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.11
            /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
            @Override // android.media.MediaPlayer.OnInfoListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                String str;
                String str2;
                if (!NormalMediaView.this.videoView.isPrepared()) {
                    return true;
                }
                if (i != 701) {
                    if (i == 702) {
                        NormalMediaView.this.aQuery.o00oO0o(R.id.adsail_progress_loading).o00Ooo();
                        str = NormalMediaView.this.TAG;
                        str2 = "MediaPlayer.MEDIA_INFO_BUFFERING_END";
                    }
                    if (NormalMediaView.this.onInfoListener != null) {
                        NormalMediaView.this.onInfoListener.onInfo(mediaPlayer, i, i2);
                    }
                    return true;
                }
                NormalMediaView.this.aQuery.o00oO0o(R.id.adsail_progress_loading).o000o00();
                str = NormalMediaView.this.TAG;
                str2 = "MediaPlayer.MEDIA_INFO_BUFFERING_START";
                LogUtil.d(str, str2);
                if (NormalMediaView.this.onInfoListener != null) {
                }
                return true;
            }
        });
        if (getContext() instanceof Activity) {
            LifecycleHelper lifecycleHelper = new LifecycleHelper();
            this.lifecycleHelper = lifecycleHelper;
            lifecycleHelper.setActivity((Activity) getContext());
        }
    }

    private void initUI(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.adsail_normal_video_player_layout, (ViewGroup) null);
        addView(viewInflate);
        this.videoView = (HRVideoTextureView) viewInflate.findViewById(R.id.adsail_video_view);
        o000 o000Var = new o000(this);
        this.aQuery = o000Var;
        this.currentTimeView = o000Var.o00oO0o(R.id.adsail_video_currentTime).ooOO();
        this.endTimeView = this.aQuery.o00oO0o(R.id.adsail_video_endTime).ooOO();
        this.seekBar = this.aQuery.o00oO0o(R.id.adsail_video_seekBar).Ooooo0o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCompletion() {
        HRVideoTextureView hRVideoTextureView;
        try {
            this.playState = 3;
            if (this.isEyes == 1 && (hRVideoTextureView = this.videoView) != null) {
                this.aQuery.o00oO0o(R.id.adsail_video_cover).o0OOO0o(hRVideoTextureView.getBitmap()).o000o00();
            }
            String str = !TextUtils.isEmpty(this.endCoverUrl) ? this.endCoverUrl : this.coverUrl;
            if (str != null) {
                this.aQuery.o00oO0o(R.id.adsail_video_cover).o000000(str).o000o00();
                if (this.playOnce) {
                    this.aQuery.o00oO0o(R.id.adsail_video_view).o00Ooo();
                }
            }
            onPause();
            int duration = this.videoView.getDuration();
            updateTimeFormat(this.currentTimeView, duration);
            this.seekBar.setProgress(duration);
            if (!this.autoStart) {
                this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(0);
            }
            if (this.isVideoSkiped) {
                return;
            }
            if (this.keepTime <= 0 && this.onVideoKeepTimeFinishListener != null && !this.keepTimeFinishedPerformed) {
                this.keepTimeFinishedPerformed = true;
                this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
            }
            Iterator<MediaView.OnVideoCompleteListener> it = this.onVideoCompleteListeners.iterator();
            while (it.hasNext()) {
                it.next().onCompleted();
            }
            NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
            if (nativeAdMediaListener != null) {
                nativeAdMediaListener.onVideoComplete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void onPause() {
        if (this.showControl) {
            this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(0);
        }
        if (this.uiHandler.hasMessages(1)) {
            this.uiHandler.removeMessages(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlay() {
        LogUtil.d(this.TAG, "onPlay " + hashCode());
        sendVideoStart();
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(8);
        if (this.prepared) {
            this.aQuery.o00oO0o(R.id.adsail_video_cover).o00000oo();
            this.aQuery.o00oO0o(R.id.adsail_progress_loading).o00Ooo();
        }
        this.seekBar.setMax(this.videoView.getDuration());
        updateTimeFormat(this.endTimeView, this.videoView.getDuration());
        if (this.uiHandler.hasMessages(1)) {
            return;
        }
        this.uiHandler.sendEmptyMessage(1);
    }

    private void onReplay() {
        NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
        if (nativeAdMediaListener != null) {
            nativeAdMediaListener.onVideoReplay();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReset() {
        try {
            updateTimeFormat(this.currentTimeView, 0);
            updateTimeFormat(this.endTimeView, this.videoView.getDuration());
            this.seekBar.setProgress(0);
            if (this.uiHandler.hasMessages(1)) {
                this.uiHandler.removeMessages(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void sendVideoStart() {
        if (!this.prepared || this.videoStartSent || this.recycler) {
            return;
        }
        INativeAdListener iNativeAdListener = this.adListener;
        if (iNativeAdListener != null) {
            iNativeAdListener.onADExposure();
        }
        this.videoStartSent = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimeFormat(TextView textView, int i) {
        int i2 = i / 1000;
        textView.setText(String.format(Locale.CHINA, "%02d:%02d", Integer.valueOf(i2 / 60), Integer.valueOf(i2 % 60)));
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void addOnVideoCompleteListener(MediaView.OnVideoCompleteListener onVideoCompleteListener) {
        if (onVideoCompleteListener != null) {
            this.onVideoCompleteListeners.add(onVideoCompleteListener);
        }
    }

    public void adjustVideoSize() {
        if (this.configWidth <= 0 || this.configHeight <= 0) {
            this.configWidth = this.mediaPlayer.getVideoWidth();
            this.configHeight = this.mediaPlayer.getVideoHeight();
            requestLayout();
        }
    }

    public void destroy() {
        LogUtil.e(this.TAG, "destroy");
        HRVideoTextureView hRVideoTextureView = this.videoView;
        if (hRVideoTextureView != null) {
            hRVideoTextureView.destroy();
        }
        LifecycleHelper lifecycleHelper = this.lifecycleHelper;
        if (lifecycleHelper != null) {
            lifecycleHelper.setActivity(null);
        }
        this.adListener = null;
        this.onVideoLoadedListener = null;
        this.nativeAdMediaListener = null;
    }

    public HRVideoTextureView getAdSailVideoView() {
        return this.videoView;
    }

    public int getCurrentPosition() {
        try {
            this.currentPosition = this.videoView.getCurrentPosition();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.currentPosition;
    }

    public int getDuration() {
        return this.videoView.getDuration();
    }

    public HRVideoTextureView getHrVideoView() {
        return this.videoView;
    }

    public int getPlayState() {
        return this.playState;
    }

    public Bitmap getVideoThumb() {
        if (TextUtils.isEmpty(this.videoUrl)) {
            return null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(this.videoUrl);
        return mediaMetadataRetriever.getFrameAtTime();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public View getVideoView() {
        return this;
    }

    public boolean isPlaying() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                return mediaPlayer.isPlaying();
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public boolean isPrepared() {
        return this.videoView.isPrepared();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void mute() {
        onMute();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachWindow = true;
        if (this.recycler) {
            if (!this.videoStartSent) {
                INativeAdListener iNativeAdListener = this.adListener;
                if (iNativeAdListener != null) {
                    iNativeAdListener.onADExposure();
                }
                IAdExposureListener iAdExposureListener = this.mExposureListener;
                if (iAdExposureListener != null) {
                    iAdExposureListener.onAdExposure();
                }
                this.videoStartSent = true;
            }
            int i = this.playState;
            if (i == 0 && this.autoStart) {
                start();
            } else if (i == 1 || (i == 2 && this.autoStart)) {
                resume();
            }
        }
        if (this.autoStart) {
            LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.broadcastReceiver, new IntentFilter(ACTION_DOWNLOAD_CLICKED));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachWindow = false;
        if (this.recycler && this.playState == 1 && !this.showDetail && this.autoStart) {
            pause();
        }
        if (this.autoStart) {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.broadcastReceiver);
        }
    }

    public void onDetailReturn() {
        this.showDetail = false;
        if (this.attachWindow) {
            return;
        }
        destroy();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int i3;
        float f;
        float f2;
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        float f3 = this.containerWidth;
        if (0.0f < f3) {
            float f4 = this.containerHeight;
            if (0.0f >= f4) {
                int i6 = this.configWidth;
                if (i6 > 0 && (i3 = this.configHeight) > 0) {
                    if (size > 0 && size2 == 0) {
                        f = i3 * size;
                        f2 = i6;
                    } else if (size == 0 && size2 > 0) {
                        i4 = (int) ((i6 * size2) / i3);
                        i = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                    } else if (size > 0 && size2 > 0) {
                        i = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                        f = this.configHeight * size;
                        f2 = this.configWidth;
                    }
                    i5 = (int) (f / f2);
                    i2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                }
            } else if (size > 0 && size2 == 0) {
                i5 = (int) ((f4 * size) / f3);
                i2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            } else if (size == 0 && size2 > 0) {
                i4 = (int) ((f3 * size2) / f4);
                i = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            }
        }
        super.onMeasure(i, i2);
    }

    public void onMute() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(0.0f, 0.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.aQuery.o00oO0o(R.id.adsail_video_volume_mute).o000o000(0);
            this.aQuery.o00oO0o(R.id.adsail_video_volume).o000o000(8);
            NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
            if (nativeAdMediaListener != null) {
                nativeAdMediaListener.onVideoMute();
            }
        }
    }

    public void onUnmute() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(1.0f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.aQuery.o00oO0o(R.id.adsail_video_volume_mute).o000o000(8);
            this.aQuery.o00oO0o(R.id.adsail_video_volume).o000o000(0);
            NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
            if (nativeAdMediaListener != null) {
                nativeAdMediaListener.onVideoUnmute();
            }
        }
    }

    public void onVideoSkiped() {
        this.isVideoSkiped = true;
        stop();
        onCompletion();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        int i;
        super.onWindowFocusChanged(z);
        if (!z && (i = this.playState) != 3 && i != 0 && this.attachWindow && !this.showDetail && this.isEyes != 1) {
            LogUtil.d(this.TAG, "onWindowFocusChanged,onPause");
            pause();
            return;
        }
        if (z) {
            int i2 = this.playState;
            if (i2 == 2 || (this.showDetail && i2 != 3 && this.attachWindow)) {
                LogUtil.d(this.TAG, "onResume,playState=" + this.playState);
                resume();
            }
        }
    }

    public void openDetail() {
        this.showDetail = true;
        NativeAdSlot adSlot = this.nativeAdData.getAdSlot();
        HRDetailActivity.setVideoView(this);
        Intent intent = new Intent(getContext(), (Class<?>) HRDetailActivity.class);
        intent.setFlags(67108864);
        intent.putExtra(HRDetailActivity.EXTRA_INTERACTION_TYPE, adSlot.getInteractionType());
        intent.putExtra(HRDetailActivity.EXTRA_DURL, adSlot.getdUrl());
        intent.putExtra(HRDetailActivity.EXTRA_APP_NAME, adSlot.getAppName());
        intent.putExtra(HRDetailActivity.EXTRA_ICON_URL, adSlot.getIconUrl());
        intent.putExtra(HRDetailActivity.EXTRA_CONTENT, adSlot.getContent());
        intent.putExtra(HRDetailActivity.EXTRA_SCORE, adSlot.getScore());
        intent.putExtra(HRDetailActivity.EXTRA_DOWN_NUM, adSlot.getDownNum());
        intent.putExtra(HRDetailActivity.EXTRA_VIDEO_WIDTH, adSlot.getWidth());
        intent.putExtra(HRDetailActivity.EXTRA_VIDEO_HEIGHT, adSlot.getHeight());
        if (!(getContext() instanceof Activity)) {
            intent.addFlags(268435456);
        }
        getContext().startActivity(intent);
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void pause() {
        if ((this.playOnce && this.playState == 3) || this.playState == 0) {
            return;
        }
        this.paused = true;
        this.playState = 2;
        this.videoView.pause();
        onPause();
        NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
        if (nativeAdMediaListener != null) {
            nativeAdMediaListener.onVideoPause();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void performVideoActions() {
        MediaView.OnVideoLoadedListener onVideoLoadedListener = this.onVideoLoadedListener;
        if (onVideoLoadedListener != null) {
            onVideoLoadedListener.onLoaded(this);
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void replay() {
        if (this.playOnce && this.playState == 3) {
            return;
        }
        this.playState = 0;
        this.paused = false;
        start();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void resume() {
        if ((this.playOnce && this.playState == 3) || this.playState == 0) {
            return;
        }
        this.paused = false;
        this.playState = 1;
        this.videoView.resume();
        onPlay();
        NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
        if (nativeAdMediaListener != null) {
            nativeAdMediaListener.onVideoResume();
        }
    }

    public void setActivityForLifecycle(Activity activity) {
        if (this.lifecycleHelper == null) {
            LifecycleHelper lifecycleHelper = new LifecycleHelper();
            this.lifecycleHelper = lifecycleHelper;
            lifecycleHelper.setActivity(activity);
        }
    }

    public void setAdListener(INativeAdListener iNativeAdListener) {
        this.adListener = iNativeAdListener;
    }

    public void setAutoStart(boolean z) {
        this.autoStart = z;
        if (z) {
            return;
        }
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(0);
    }

    public void setConfigHeight(int i) {
        this.configHeight = i;
    }

    public void setConfigWidth(int i) {
        this.configWidth = i;
    }

    public void setContainerHeight(float f) {
        this.containerHeight = f;
    }

    public void setContainerWidth(float f) {
        this.containerWidth = f;
    }

    public void setDisplayMode(int i) {
        this.videoView.setDisplayMode(i);
    }

    public void setFromLogo(String str) {
        if (str != null) {
            this.aQuery.o00oO0o(R.id.adsail_img_ad_tag).o000000(str);
        }
    }

    public void setFromLogoVisibility(int i) {
        this.aQuery.o00oO0o(R.id.adsail_img_ad_tag).o000o000(i);
    }

    public void setInitMute(boolean z) {
        o000 o000VarO00oO0o = this.aQuery.o00oO0o(R.id.adsail_video_volume_mute);
        if (z) {
            o000VarO00oO0o.o000o000(0);
            this.aQuery.o00oO0o(R.id.adsail_video_volume).o000o000(8);
        } else {
            o000VarO00oO0o.o000o000(8);
            this.aQuery.o00oO0o(R.id.adsail_video_volume).o000o000(0);
        }
        this.videoView.setInitMute(z);
    }

    public void setIsEyes(int i) {
        this.isEyes = i;
    }

    public void setMsAd(NativeAdData nativeAdData) {
        this.nativeAdData = nativeAdData;
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void setNativeAdMediaListener(NativeAdMediaListener nativeAdMediaListener) {
        this.nativeAdMediaListener = nativeAdMediaListener;
    }

    public void setOnExposureListener(IAdExposureListener iAdExposureListener) {
        this.mExposureListener = iAdExposureListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.onInfoListener = onInfoListener;
    }

    public void setOnPreparedListener(IPreparedListener iPreparedListener) {
        this.mPreparedListener = iPreparedListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void setOnVideoKeepTimeFinishListener(MediaView.OnVideoKeepTimeFinishListener onVideoKeepTimeFinishListener, long j) {
        this.onVideoKeepTimeFinishListener = onVideoKeepTimeFinishListener;
        if (j > 0) {
            this.keepTime = j;
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void setOnVideoLoadedListener(MediaView.OnVideoLoadedListener onVideoLoadedListener) {
        this.onVideoLoadedListener = onVideoLoadedListener;
    }

    public void setPlayOnce(boolean z) {
        this.playOnce = z;
    }

    public void setRecycler(boolean z) {
        this.recycler = z;
    }

    public void setUseTransform(boolean z) {
        this.videoView.setUseTransform(z);
    }

    public void setVideoCover(String str) {
        this.coverUrl = str;
        this.aQuery.o00oO0o(R.id.adsail_video_cover).o00000o0(str, true, false, 0, 0, new o000OO00() { // from class: cn.haorui.sdk.adsail_ad.nativ.NormalMediaView.2
            @Override // z2.o000OO00
            public void callback(String str2, ImageView imageView, Bitmap bitmap, o000O o000o) {
                if (NormalMediaView.this.prepared) {
                    return;
                }
                imageView.setImageBitmap(bitmap);
            }
        });
    }

    public void setVideoEndCover(String str) {
        this.endCoverUrl = str;
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void setVideoPath(String str) {
        this.videoUrl = str;
        this.videoView.setVideoPath(str);
    }

    public void showControl(boolean z) {
        this.showControl = z;
        if (z) {
            this.aQuery.o00oO0o(R.id.adsail_control).o000o00();
        } else {
            this.aQuery.o00oO0o(R.id.adsail_control).o00Ooo();
        }
    }

    public void showProgressLoading() {
        this.aQuery.o00oO0o(R.id.adsail_progress_loading).o000o00();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void start() {
        int i = this.playState;
        if (i == 0 || i == 3) {
            if (this.playOnce && i == 3) {
                return;
            }
            this.playState = 1;
            this.oneQuarterPerformed = false;
            this.oneHalfPerformed = false;
            this.threeQuarterPerformed = false;
            if (this.paused) {
                return;
            }
            this.videoView.start();
            onPlay();
            NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
            if (nativeAdMediaListener != null) {
                nativeAdMediaListener.onVideoStart();
            }
        }
    }

    public void stop() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                this.mediaPlayer.stop();
                this.mediaPlayer.release();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        onPause();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void unmute() {
        onUnmute();
    }
}
