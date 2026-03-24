package cn.haorui.sdk.platform.hr.recycler;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;

/* JADX INFO: loaded from: classes.dex */
public class HRAdMediaListenerAdapter implements NativeAdMediaListener {
    private static final String TAG = "AdSailAdMediaListenerAdapter";
    private NativeAdSlot adSlot;
    private RecyclerAdMediaListener apiRecyclerAdMediaListener;
    private Context context;
    private boolean isStarted;

    public HRAdMediaListenerAdapter(@NonNull Context context, NativeAdSlot nativeAdSlot, RecyclerAdMediaListener recyclerAdMediaListener) {
        this.context = context;
        this.adSlot = nativeAdSlot;
        this.apiRecyclerAdMediaListener = recyclerAdMediaListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoComplete() {
        LogUtil.d(TAG, "send onVideoComplete");
        String[] video_complete = this.adSlot.getVideo_complete();
        if (video_complete != null) {
            for (String str : video_complete) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        RecyclerAdMediaListener recyclerAdMediaListener = this.apiRecyclerAdMediaListener;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoCompleted();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoError() {
        RecyclerAdMediaListener recyclerAdMediaListener = this.apiRecyclerAdMediaListener;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoError();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoLoaded() {
        RecyclerAdMediaListener recyclerAdMediaListener = this.apiRecyclerAdMediaListener;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoLoaded();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoMute() {
        LogUtil.d(TAG, "send onVideoMute");
        String[] video_mute = this.adSlot.getVideo_mute();
        if (video_mute != null) {
            for (String str : video_mute) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoOneHalf() {
        LogUtil.d(TAG, "send onVideoOneHalf");
        String[] video_one_half = this.adSlot.getVideo_one_half();
        if (video_one_half != null) {
            for (String str : video_one_half) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoOneQuarter() {
        LogUtil.d(TAG, "send onVideoOneQuarter");
        String[] video_one_quarter = this.adSlot.getVideo_one_quarter();
        if (video_one_quarter != null) {
            for (String str : video_one_quarter) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoPause() {
        LogUtil.d(TAG, "send onVideoPause");
        String[] video_pause = this.adSlot.getVideo_pause();
        if (video_pause != null) {
            for (String str : video_pause) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        RecyclerAdMediaListener recyclerAdMediaListener = this.apiRecyclerAdMediaListener;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoPause();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoReplay() {
        LogUtil.d(TAG, "send onVideoReplay");
        String[] video_replay = this.adSlot.getVideo_replay();
        if (video_replay != null) {
            for (String str : video_replay) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoResume() {
        LogUtil.d(TAG, "send onVideoResume");
        String[] video_resume = this.adSlot.getVideo_resume();
        if (video_resume != null) {
            for (String str : video_resume) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        RecyclerAdMediaListener recyclerAdMediaListener = this.apiRecyclerAdMediaListener;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoResume();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoStart() {
        LogUtil.d(TAG, "send onVideoStart");
        if (!this.isStarted) {
            String[] video_start = this.adSlot.getVideo_start();
            if (video_start != null) {
                for (String str : video_start) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            this.isStarted = true;
        }
        RecyclerAdMediaListener recyclerAdMediaListener = this.apiRecyclerAdMediaListener;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoStart();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoThreeQuarter() {
        LogUtil.d(TAG, "send onVideoThreeQuarter");
        String[] video_three_quarter = this.adSlot.getVideo_three_quarter();
        if (video_three_quarter != null) {
            for (String str : video_three_quarter) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdMediaListener
    public void onVideoUnmute() {
        LogUtil.d(TAG, "send onVideoUnmute");
        String[] video_unmute = this.adSlot.getVideo_unmute();
        if (video_unmute != null) {
            for (String str : video_unmute) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
    }
}
