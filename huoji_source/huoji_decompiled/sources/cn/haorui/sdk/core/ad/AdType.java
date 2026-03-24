package cn.haorui.sdk.core.ad;

/* JADX INFO: loaded from: classes.dex */
public enum AdType {
    FEED(1),
    FEED_PRE_RENDER(2),
    FEED_MIX(10),
    BANNER(3),
    SPLASH(4),
    INTERSTITIAL(5),
    PASTER(6),
    REWARD(7),
    DRAW(8),
    FULL_SCREEN_VIDEO(9);

    private int value;

    AdType(int i) {
        this.value = i;
    }

    public int value() {
        return this.value;
    }
}
