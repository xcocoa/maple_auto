package cn.haorui.sdk.adsail_ad.splash;

import android.view.ViewGroup;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.ad.BaseAdSlot;

/* JADX INFO: loaded from: classes.dex */
public class SplashAdSlot extends NativeAdSlot {
    private ViewGroup adContainer;
    private String clk_area;
    private int clk_type = 3;
    private int is_eyes;
    private int power_index;
    private int power_type;

    public class SplashBuilder extends BaseAdSlot.Builder<SplashBuilder, SplashAdSlot> {
        public SplashBuilder() {
            super();
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public SplashAdSlot build() {
            return SplashAdSlot.this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public SplashBuilder returnThis() {
            return this;
        }

        public SplashBuilder setAdContainer(ViewGroup viewGroup) {
            SplashAdSlot.this.adContainer = viewGroup;
            return this;
        }

        public SplashBuilder setClkArea(String str) {
            SplashAdSlot.this.clk_area = str;
            return this;
        }

        public SplashBuilder setClkType(int i) {
            SplashAdSlot.this.clk_type = i;
            return this;
        }

        public SplashBuilder setIsEyes(int i) {
            SplashAdSlot.this.is_eyes = i;
            return this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public SplashBuilder setPowerIndex(int i) {
            SplashAdSlot.this.power_index = i;
            return this;
        }

        public SplashBuilder setPowerType(int i) {
            SplashAdSlot.this.power_type = i;
            return this;
        }

        public SplashBuilder setVideo_complete(String[] strArr) {
            SplashAdSlot.this.video_complete = strArr;
            return this;
        }

        public SplashBuilder setVideo_cover(String str) {
            SplashAdSlot.this.video_cover = str;
            return this;
        }

        public SplashBuilder setVideo_endcover(String str) {
            SplashAdSlot.this.video_endcover = str;
            return this;
        }

        public SplashBuilder setVideo_keep_time(Long l) {
            SplashAdSlot.this.video_keep_time = l;
            return this;
        }

        public SplashBuilder setVideo_mute(String[] strArr) {
            SplashAdSlot.this.video_mute = strArr;
            return this;
        }

        public SplashBuilder setVideo_one_half(String[] strArr) {
            SplashAdSlot.this.video_one_half = strArr;
            return this;
        }

        public SplashBuilder setVideo_one_quarter(String[] strArr) {
            SplashAdSlot.this.video_one_quarter = strArr;
            return this;
        }

        public SplashBuilder setVideo_pause(String[] strArr) {
            SplashAdSlot.this.video_pause = strArr;
            return this;
        }

        public SplashBuilder setVideo_replay(String[] strArr) {
            SplashAdSlot.this.video_replay = strArr;
            return this;
        }

        public SplashBuilder setVideo_resume(String[] strArr) {
            SplashAdSlot.this.video_resume = strArr;
            return this;
        }

        public SplashBuilder setVideo_start(String[] strArr) {
            SplashAdSlot.this.video_start = strArr;
            return this;
        }

        public SplashBuilder setVideo_three_quarter(String[] strArr) {
            SplashAdSlot.this.video_three_quarter = strArr;
            return this;
        }

        public SplashBuilder setVideo_unmute(String[] strArr) {
            SplashAdSlot.this.video_unmute = strArr;
            return this;
        }
    }

    public ViewGroup getAdContainer() {
        return this.adContainer;
    }

    public String getClk_area() {
        return this.clk_area;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAdSlot
    public int getClk_type() {
        return this.clk_type;
    }

    public int getIs_eyes() {
        return this.is_eyes;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAdSlot
    public int getPower_index() {
        return this.power_index;
    }

    public int getPower_type() {
        return this.power_type;
    }

    public void setClk_type(int i) {
        this.clk_type = i;
    }
}
