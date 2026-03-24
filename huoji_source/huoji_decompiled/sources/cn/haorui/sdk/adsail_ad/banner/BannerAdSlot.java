package cn.haorui.sdk.adsail_ad.banner;

import cn.haorui.sdk.core.ad.BaseAdSlot;

/* JADX INFO: loaded from: classes.dex */
public class BannerAdSlot extends BaseAdSlot {

    public class BannerBuilder extends BaseAdSlot.Builder<BannerBuilder, BannerAdSlot> {
        public BannerBuilder() {
            super();
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public BannerAdSlot build() {
            return BannerAdSlot.this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public BannerBuilder returnThis() {
            return this;
        }
    }
}
