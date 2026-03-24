package cn.haorui.sdk.adsail_ad;

import android.view.View;
import android.view.ViewParent;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener;

/* JADX INFO: loaded from: classes.dex */
public interface MediaView {
    public static final String MEDIA_VIEW_TAG = "adsail_media_view";

    public interface OnVideoCompleteListener {
        void onCompleted();
    }

    public interface OnVideoKeepTimeFinishListener {
        void onKeepTimeFinished();
    }

    public interface OnVideoLoadedListener {
        void onLoaded(MediaView mediaView);
    }

    void addOnVideoCompleteListener(OnVideoCompleteListener onVideoCompleteListener);

    ViewParent getParent();

    View getVideoView();

    boolean isPrepared();

    void mute();

    void pause();

    void performVideoActions();

    void replay();

    void resume();

    void setNativeAdMediaListener(NativeAdMediaListener nativeAdMediaListener);

    void setOnVideoKeepTimeFinishListener(OnVideoKeepTimeFinishListener onVideoKeepTimeFinishListener, long j);

    void setOnVideoLoadedListener(OnVideoLoadedListener onVideoLoadedListener);

    void setVideoPath(String str);

    void start();

    void unmute();
}
