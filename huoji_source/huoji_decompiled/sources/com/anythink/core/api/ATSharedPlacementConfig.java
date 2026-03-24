package com.anythink.core.api;

import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ATSharedPlacementConfig {
    public Map<String, Object> bannerLocalExtra;
    public Map<String, Object> interstitialLocalExtra;
    public Map<String, Object> nativeLocalExtra;
    public Map<String, Object> rewardVideoLocalExtra;
    public Map<String, Object> splashLocalExtra;

    public static class Builder {
        public Map<String, Object> bannerLocalExtra;
        public Map<String, Object> interstitialLocalExtra;
        public Map<String, Object> nativeLocalExtra;
        public Map<String, Object> rewardVideoLocalExtra;
        public Map<String, Object> splashLocalExtra;

        public Builder bannerLocalExtra(Map<String, Object> map) {
            this.bannerLocalExtra = map;
            return this;
        }

        public ATSharedPlacementConfig build() {
            return new ATSharedPlacementConfig(this);
        }

        public Builder interstitialLocalExtra(Map<String, Object> map) {
            this.interstitialLocalExtra = map;
            return this;
        }

        public Builder nativeLocalExtra(Map<String, Object> map) {
            this.nativeLocalExtra = map;
            return this;
        }

        public Builder rewardVideoLocalExtra(Map<String, Object> map) {
            this.rewardVideoLocalExtra = map;
            return this;
        }

        public Builder splashLocalExtra(Map<String, Object> map) {
            this.splashLocalExtra = map;
            return this;
        }
    }

    private ATSharedPlacementConfig(Builder builder) {
        this.rewardVideoLocalExtra = builder.rewardVideoLocalExtra;
        this.interstitialLocalExtra = builder.interstitialLocalExtra;
        this.splashLocalExtra = builder.splashLocalExtra;
        this.bannerLocalExtra = builder.bannerLocalExtra;
        this.nativeLocalExtra = builder.nativeLocalExtra;
    }

    public Map<String, Object> getBannerLocalExtra() {
        return this.bannerLocalExtra;
    }

    public Map<String, Object> getInterstitialLocalExtra() {
        return this.interstitialLocalExtra;
    }

    public Map<String, Object> getNativeLocalExtra() {
        return this.nativeLocalExtra;
    }

    public Map<String, Object> getRewardVideoLocalExtra() {
        return this.rewardVideoLocalExtra;
    }

    public Map<String, Object> getSplashLocalExtra() {
        return this.splashLocalExtra;
    }

    public String toString() {
        return "ATSharedPlacementConfig{rewardVideoLocalExtra=" + this.rewardVideoLocalExtra + ", interstitialLocalExtra=" + this.interstitialLocalExtra + ", splashLocalExtra=" + this.splashLocalExtra + ", bannerLocalExtra=" + this.bannerLocalExtra + ", nativeLocalExtra=" + this.nativeLocalExtra + MessageFormatter.DELIM_STOP;
    }
}
