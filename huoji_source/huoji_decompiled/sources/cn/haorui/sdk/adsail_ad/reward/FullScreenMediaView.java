package cn.haorui.sdk.adsail_ad.reward;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener;
import cn.haorui.sdk.adsail_ad.view.HRVideoTextureView;
import cn.haorui.sdk.core.utils.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import z2.o000;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenMediaView extends FrameLayout implements MediaView {
    private static final String TAG = "FullScreenMediaView";
    private static final int UPDATE_TIME = 1;
    private o000 aQuery;
    private INativeAdListener adListener;
    private long keepTime;
    private boolean keepTimeFinishedPerformed;
    private MediaPlayer mediaPlayer;
    private NativeAdMediaListener nativeAdMediaListener;
    private List<MediaView.OnVideoCompleteListener> onVideoCompleteListeners;
    private MediaView.OnVideoKeepTimeFinishListener onVideoKeepTimeFinishListener;
    private MediaView.OnVideoLoadedListener onVideoLoadedListener;
    private boolean oneHalfPerformed;
    private boolean oneQuarterPerformed;
    private boolean prepared;
    private CircleProcessBar processBar;
    private boolean started;
    private boolean threeQuarterPerformed;
    private Handler uiHandler;
    private boolean videoStartSent;
    private HRVideoTextureView videoView;

    public FullScreenMediaView(@NonNull Context context) {
        super(context);
        this.keepTime = -1L;
        this.videoStartSent = false;
        this.prepared = false;
        this.uiHandler = new Handler(Looper.getMainLooper()) { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int currentPosition = FullScreenMediaView.this.videoView.getCurrentPosition();
                FullScreenMediaView.this.processBar.refreshProcess(currentPosition);
                if (FullScreenMediaView.this.keepTime > 0 && currentPosition >= FullScreenMediaView.this.keepTime && !FullScreenMediaView.this.keepTimeFinishedPerformed) {
                    FullScreenMediaView.this.keepTimeFinishedPerformed = true;
                    if (FullScreenMediaView.this.onVideoKeepTimeFinishListener != null) {
                        FullScreenMediaView.this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
                    }
                }
                double duration = ((double) currentPosition) / ((double) FullScreenMediaView.this.videoView.getDuration());
                if (duration < 0.25d || duration >= 0.5d) {
                    if (duration < 0.5d || duration >= 0.75d) {
                        if (duration >= 0.75d && duration < 1.0d && !FullScreenMediaView.this.threeQuarterPerformed) {
                            if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                                FullScreenMediaView.this.nativeAdMediaListener.onVideoThreeQuarter();
                            }
                            FullScreenMediaView.this.threeQuarterPerformed = true;
                        }
                    } else if (!FullScreenMediaView.this.oneHalfPerformed) {
                        if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                            FullScreenMediaView.this.nativeAdMediaListener.onVideoOneHalf();
                        }
                        FullScreenMediaView.this.oneHalfPerformed = true;
                    }
                } else if (!FullScreenMediaView.this.oneQuarterPerformed) {
                    if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                        FullScreenMediaView.this.nativeAdMediaListener.onVideoOneQuarter();
                    }
                    FullScreenMediaView.this.oneQuarterPerformed = true;
                }
                FullScreenMediaView.this.uiHandler.sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.onVideoCompleteListeners = new ArrayList();
        init(context);
    }

    public FullScreenMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.keepTime = -1L;
        this.videoStartSent = false;
        this.prepared = false;
        this.uiHandler = new Handler(Looper.getMainLooper()) { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int currentPosition = FullScreenMediaView.this.videoView.getCurrentPosition();
                FullScreenMediaView.this.processBar.refreshProcess(currentPosition);
                if (FullScreenMediaView.this.keepTime > 0 && currentPosition >= FullScreenMediaView.this.keepTime && !FullScreenMediaView.this.keepTimeFinishedPerformed) {
                    FullScreenMediaView.this.keepTimeFinishedPerformed = true;
                    if (FullScreenMediaView.this.onVideoKeepTimeFinishListener != null) {
                        FullScreenMediaView.this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
                    }
                }
                double duration = ((double) currentPosition) / ((double) FullScreenMediaView.this.videoView.getDuration());
                if (duration < 0.25d || duration >= 0.5d) {
                    if (duration < 0.5d || duration >= 0.75d) {
                        if (duration >= 0.75d && duration < 1.0d && !FullScreenMediaView.this.threeQuarterPerformed) {
                            if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                                FullScreenMediaView.this.nativeAdMediaListener.onVideoThreeQuarter();
                            }
                            FullScreenMediaView.this.threeQuarterPerformed = true;
                        }
                    } else if (!FullScreenMediaView.this.oneHalfPerformed) {
                        if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                            FullScreenMediaView.this.nativeAdMediaListener.onVideoOneHalf();
                        }
                        FullScreenMediaView.this.oneHalfPerformed = true;
                    }
                } else if (!FullScreenMediaView.this.oneQuarterPerformed) {
                    if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                        FullScreenMediaView.this.nativeAdMediaListener.onVideoOneQuarter();
                    }
                    FullScreenMediaView.this.oneQuarterPerformed = true;
                }
                FullScreenMediaView.this.uiHandler.sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.onVideoCompleteListeners = new ArrayList();
        init(context);
    }

    public FullScreenMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.keepTime = -1L;
        this.videoStartSent = false;
        this.prepared = false;
        this.uiHandler = new Handler(Looper.getMainLooper()) { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int currentPosition = FullScreenMediaView.this.videoView.getCurrentPosition();
                FullScreenMediaView.this.processBar.refreshProcess(currentPosition);
                if (FullScreenMediaView.this.keepTime > 0 && currentPosition >= FullScreenMediaView.this.keepTime && !FullScreenMediaView.this.keepTimeFinishedPerformed) {
                    FullScreenMediaView.this.keepTimeFinishedPerformed = true;
                    if (FullScreenMediaView.this.onVideoKeepTimeFinishListener != null) {
                        FullScreenMediaView.this.onVideoKeepTimeFinishListener.onKeepTimeFinished();
                    }
                }
                double duration = ((double) currentPosition) / ((double) FullScreenMediaView.this.videoView.getDuration());
                if (duration < 0.25d || duration >= 0.5d) {
                    if (duration < 0.5d || duration >= 0.75d) {
                        if (duration >= 0.75d && duration < 1.0d && !FullScreenMediaView.this.threeQuarterPerformed) {
                            if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                                FullScreenMediaView.this.nativeAdMediaListener.onVideoThreeQuarter();
                            }
                            FullScreenMediaView.this.threeQuarterPerformed = true;
                        }
                    } else if (!FullScreenMediaView.this.oneHalfPerformed) {
                        if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                            FullScreenMediaView.this.nativeAdMediaListener.onVideoOneHalf();
                        }
                        FullScreenMediaView.this.oneHalfPerformed = true;
                    }
                } else if (!FullScreenMediaView.this.oneQuarterPerformed) {
                    if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                        FullScreenMediaView.this.nativeAdMediaListener.onVideoOneQuarter();
                    }
                    FullScreenMediaView.this.oneQuarterPerformed = true;
                }
                FullScreenMediaView.this.uiHandler.sendEmptyMessageDelayed(1, 100L);
            }
        };
        this.onVideoCompleteListeners = new ArrayList();
        init(context);
    }

    private void init(Context context) {
        setTag(MediaView.MEDIA_VIEW_TAG);
        initUI(context);
        initEvent();
    }

    private void initEvent() {
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FullScreenMediaView.this.videoView.isPlaying()) {
                    return;
                }
                FullScreenMediaView.this.start();
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_play_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FullScreenMediaView.this.videoView.isPlaying()) {
                    return;
                }
                FullScreenMediaView.this.start();
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_pause_button).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FullScreenMediaView.this.videoView.isPlaying()) {
                    FullScreenMediaView.this.pause();
                }
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_video_volume_mute).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FullScreenMediaView.this.onOpenVolume();
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_video_volume).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FullScreenMediaView.this.onMute();
            }
        });
        this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.7
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                LogUtil.e(FullScreenMediaView.TAG, "MediaPlayer onError: " + i + o4.OooO00o.OooO0Oo + i2);
                return false;
            }
        });
        this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.8
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                FullScreenMediaView.this.mediaPlayer = mediaPlayer;
                mediaPlayer.setVideoScalingMode(1);
                FullScreenMediaView.this.prepared = true;
                if (FullScreenMediaView.this.started) {
                    FullScreenMediaView.this.onPlay();
                } else {
                    FullScreenMediaView.this.onReset();
                }
                FullScreenMediaView.this.processBar.setVisibility(0);
                FullScreenMediaView.this.started = false;
                if (FullScreenMediaView.this.nativeAdMediaListener != null) {
                    FullScreenMediaView.this.nativeAdMediaListener.onVideoLoaded();
                }
            }
        });
        this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.haorui.sdk.adsail_ad.reward.FullScreenMediaView.9
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                FullScreenMediaView.this.onCompletion();
            }
        });
    }

    private void initUI(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.adsail_full_screen_video_player_layout, (ViewGroup) null);
        addView(viewInflate);
        HRVideoTextureView hRVideoTextureView = (HRVideoTextureView) viewInflate.findViewById(R.id.adsail_video_view);
        this.videoView = hRVideoTextureView;
        hRVideoTextureView.setUseTransform(false);
        o000 o000Var = new o000(this);
        this.aQuery = o000Var;
        CircleProcessBar circleProcessBar = (CircleProcessBar) o000Var.o00oO0o(R.id.adsail_process_bar).o00O0O();
        this.processBar = circleProcessBar;
        circleProcessBar.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCompletion() {
        MediaView.OnVideoKeepTimeFinishListener onVideoKeepTimeFinishListener;
        this.started = false;
        this.processBar.setVisibility(8);
        onPause();
        if (this.keepTime <= 0 && (onVideoKeepTimeFinishListener = this.onVideoKeepTimeFinishListener) != null) {
            onVideoKeepTimeFinishListener.onKeepTimeFinished();
        }
        Iterator<MediaView.OnVideoCompleteListener> it = this.onVideoCompleteListeners.iterator();
        while (it.hasNext()) {
            it.next().onCompleted();
        }
        NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
        if (nativeAdMediaListener != null) {
            nativeAdMediaListener.onVideoComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMute() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(0.0f, 0.0f);
            this.aQuery.o00oO0o(R.id.adsail_video_volume_mute).o000o000(0);
            this.aQuery.o00oO0o(R.id.adsail_video_volume).o000o000(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOpenVolume() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(1.0f, 1.0f);
            this.aQuery.o00oO0o(R.id.adsail_video_volume_mute).o000o000(8);
            this.aQuery.o00oO0o(R.id.adsail_video_volume).o000o000(0);
        }
    }

    private void onPause() {
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_play_button).o000o000(0);
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(0);
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_pause_button).o000o000(8);
        if (this.uiHandler.hasMessages(1)) {
            this.uiHandler.removeMessages(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlay() {
        sendVideoStart();
        this.started = true;
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_play_button).o000o000(8);
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(8);
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_pause_button).o000o000(0);
        long j = this.keepTime;
        this.processBar.setmTotalTime((j <= 0 || j >= ((long) this.videoView.getDuration())) ? this.videoView.getDuration() : (int) this.keepTime);
        if (this.uiHandler.hasMessages(1)) {
            return;
        }
        this.uiHandler.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReset() {
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_play_button).o000o000(0);
        this.aQuery.o00oO0o(R.id.adsail_center_play_button).o000o000(0);
        this.aQuery.o00oO0o(R.id.adsail_controlbar_video_pause_button).o000o000(8);
        this.processBar.refreshProcess(0);
        this.processBar.setmTotalTime(this.mediaPlayer.getDuration());
        if (this.uiHandler.hasMessages(1)) {
            this.uiHandler.removeMessages(1);
        }
    }

    private void onResume() {
        onPlay();
    }

    private void sendVideoStart() {
        if (this.videoStartSent || !this.prepared) {
            return;
        }
        NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
        if (nativeAdMediaListener != null) {
            nativeAdMediaListener.onVideoStart();
        }
        INativeAdListener iNativeAdListener = this.adListener;
        if (iNativeAdListener != null) {
            iNativeAdListener.onADExposure();
        }
        this.videoStartSent = true;
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void addOnVideoCompleteListener(MediaView.OnVideoCompleteListener onVideoCompleteListener) {
        if (onVideoCompleteListener != null) {
            this.onVideoCompleteListeners.add(onVideoCompleteListener);
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public View getVideoView() {
        return this;
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
    public void onDetachedFromWindow() {
        LogUtil.d(TAG, "onDetachedFromWindow: ");
        super.onDetachedFromWindow();
        Handler handler = this.uiHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void pause() {
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
        if (this.started) {
            return;
        }
        start();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void resume() {
        this.videoView.start();
        onResume();
        NativeAdMediaListener nativeAdMediaListener = this.nativeAdMediaListener;
        if (nativeAdMediaListener != null) {
            nativeAdMediaListener.onVideoResume();
        }
    }

    public void setAdListener(INativeAdListener iNativeAdListener) {
        this.adListener = iNativeAdListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void setNativeAdMediaListener(NativeAdMediaListener nativeAdMediaListener) {
        this.nativeAdMediaListener = nativeAdMediaListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.videoView.setOnInfoListener(onInfoListener);
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

    public void setVideoCover(String str) {
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void setVideoPath(String str) {
        this.videoView.setVideoPath(str);
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void start() {
        this.videoView.start();
        onPlay();
    }

    public void stop() {
        this.videoView.stopPlayback();
        onPause();
    }

    @Override // cn.haorui.sdk.adsail_ad.MediaView
    public void unmute() {
        onOpenVolume();
    }
}
