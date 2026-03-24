package cn.haorui.sdk.platform.ms.recycler;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerFeedAd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomFeedAd extends MsCustomRecyclerFeedAd {
    private HRRecyclerAdLoader adWrapper;
    private RecyclerAdData feedAd;

    public HrCustomFeedAd(HRRecyclerAdLoader hRRecyclerAdLoader, RecyclerAdData recyclerAdData) {
        super(hRRecyclerAdLoader);
        this.adWrapper = hRRecyclerAdLoader;
        this.feedAd = recyclerAdData;
    }

    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list) {
        HRRecyclerAdLoader hRRecyclerAdLoader = this.adWrapper;
        if (hRRecyclerAdLoader != null) {
            hRRecyclerAdLoader.bindExpressAdToView(context, viewGroup, list);
        }
    }

    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.bindMediaView(viewGroup, new cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener() { // from class: cn.haorui.sdk.platform.ms.recycler.HrCustomFeedAd.1
                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoCompleted() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoError() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoLoaded() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoPause() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoResume() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                public void onVideoStart() {
                }
            });
        }
    }

    public void destroy() {
    }

    public String getActionText() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getActionText();
        }
        return null;
    }

    public int getAdPatternType() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getAdPatternType();
        }
        return 12;
    }

    public String getAppName() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getAppName();
        }
        return null;
    }

    public String getContent() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getContent();
        }
        return null;
    }

    public String getDesc() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getDesc();
        }
        return null;
    }

    public long getDuration() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getDuration();
        }
        return 0L;
    }

    public String getFrom() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getFrom();
        }
        return null;
    }

    public String getFromId() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getFromId();
        }
        return null;
    }

    public String getFromLogo() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getFromLogo();
        }
        return null;
    }

    public int getHeight() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getHeight();
        }
        return 0;
    }

    public String getIconTitle() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getIconTitle();
        }
        return null;
    }

    public String getIconUrl() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getIconUrl();
        }
        return null;
    }

    public String[] getImgUrls() {
        RecyclerAdData recyclerAdData = this.feedAd;
        return recyclerAdData != null ? recyclerAdData.getImgUrls() : new String[0];
    }

    public int getInteractionType() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getInteractionType();
        }
        return 0;
    }

    public String getPackageName() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getPackageName();
        }
        return null;
    }

    public String getTitle() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getTitle();
        }
        return null;
    }

    public String getVideoUrl() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getVideoUrl();
        }
        return null;
    }

    public int getWidth() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            return recyclerAdData.getWidth();
        }
        return 0;
    }

    public boolean isNativeExpress() {
        return false;
    }

    public void mute() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.mute();
        }
    }

    public void pauseVideo() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.pauseVideo();
        }
    }

    public void replay() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.replay();
        }
    }

    public void resumeVideo() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.resumeVideo();
        }
    }

    public void startVideo() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.startVideo();
        }
    }

    public void stopVideo() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.stopVideo();
        }
    }

    public void unmute() {
        RecyclerAdData recyclerAdData = this.feedAd;
        if (recyclerAdData != null) {
            recyclerAdData.unmute();
        }
    }
}
