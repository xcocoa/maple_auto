package cn.haorui.sdk.adsail_ad.interstitial;

import cn.haorui.sdk.core.ad.BaseAdSlot;

/* JADX INFO: loaded from: classes.dex */
public class InterstitialAdSlot extends BaseAdSlot {
    public String actionText;
    private int height;
    private int insert_style;
    public String title;
    private int width;

    public class InterstitialBuilder extends BaseAdSlot.Builder<InterstitialBuilder, InterstitialAdSlot> {
        public InterstitialBuilder() {
            super();
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public InterstitialAdSlot build() {
            return InterstitialAdSlot.this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public InterstitialBuilder returnThis() {
            return this;
        }

        public InterstitialBuilder setActionText(String str) {
            InterstitialAdSlot.this.actionText = str;
            return this;
        }

        public InterstitialBuilder setHeight(int i) {
            InterstitialAdSlot.this.height = i;
            return this;
        }

        public InterstitialBuilder setInsertStyle(int i) {
            InterstitialAdSlot.this.insert_style = i;
            return this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public InterstitialBuilder setTitle(String str) {
            InterstitialAdSlot.this.title = str;
            return this;
        }

        public InterstitialBuilder setWidth(int i) {
            InterstitialAdSlot.this.width = i;
            return this;
        }
    }

    public String getActionText() {
        return this.actionText;
    }

    public int getHeight() {
        return this.height;
    }

    public int getInsert_style() {
        return this.insert_style;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAdSlot
    public String getTitle() {
        return this.title;
    }

    public int getWidth() {
        return this.width;
    }
}
