package cn.haorui.sdk.core.ad.draw;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import cn.haorui.sdk.core.loader.d;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawAd extends BaseAd implements IDrawAd {
    public static final int DRAW_AD_TYPE_EXPRESS = 2;
    public static final int DRAW_AD_TYPE_NATIVE = 1;
    public IDrawVideoListener listener;

    public interface IDrawVideoListener {
        void onClickRetry();

        void onProgressUpdate(long j, long j2);

        void onVideoError(int i, int i2);

        void onVideoLoad();

        void pauseBtnClick();

        void playCompletion();

        void playError();

        void playPause();

        void playRenderingStart();

        void playResume();
    }

    public DrawAd(d dVar, String str) {
        super(dVar, str);
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void bindAdToView(ViewGroup viewGroup, ViewGroup viewGroup2, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener) {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void destroy() {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public Bitmap getAdLogo() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public long getCurrentPosition() {
        return 0L;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public String getDescription() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public int getDrawType() {
        return 2;
    }

    public IDrawVideoListener getDrawVideoListener() {
        return this.listener;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public long getDuration() {
        return 0L;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public String getIconUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public int getImageMode() {
        return 0;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public List<String> getImageUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public int getInteractionType() {
        return 0;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public String getSource() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public String getTitle() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public boolean isPlaying() {
        return false;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public boolean isShowEndFrame() {
        return false;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void pause() {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void resume() {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setActivityForDownloadApp(Activity activity) {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setCanClickVideo(boolean z) {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setCanInterruptVideoPlay(boolean z) {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setOnDrawVideoListener(IDrawVideoListener iDrawVideoListener) {
        this.listener = iDrawVideoListener;
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setPauseIcon(Bitmap bitmap, int i) {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void setVideoMute(boolean z) {
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.addView(adView);
        }
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void showAd(ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            viewGroup.addView(adView, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    @Override // cn.haorui.sdk.core.ad.draw.IDrawAd
    public void stop() {
    }
}
