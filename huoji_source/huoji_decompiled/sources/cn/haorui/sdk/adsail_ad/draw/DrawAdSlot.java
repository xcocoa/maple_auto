package cn.haorui.sdk.adsail_ad.draw;

import cn.haorui.sdk.core.ad.BaseAdSlot;

/* JADX INFO: loaded from: classes.dex */
public class DrawAdSlot extends BaseAdSlot {

    public class DrawBuilder extends BaseAdSlot.Builder<DrawBuilder, DrawAdSlot> {
        public DrawBuilder() {
            super();
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public DrawAdSlot build() {
            return DrawAdSlot.this;
        }

        @Override // cn.haorui.sdk.core.ad.BaseAdSlot.Builder
        public DrawBuilder returnThis() {
            return this;
        }
    }
}
