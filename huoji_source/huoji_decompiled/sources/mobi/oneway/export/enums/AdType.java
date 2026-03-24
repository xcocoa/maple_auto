package mobi.oneway.export.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum AdType {
    unknown(0),
    rewarded(1),
    feed(2),
    interstitial(3),
    banner(4),
    recommend(5),
    interstitialimage(6),
    splash(7),
    interactive(11);

    private int value;

    AdType(int i) {
        this.value = i;
    }

    public static AdType valueOf(int i) {
        for (AdType adType : values()) {
            if (adType.value == i) {
                return adType;
            }
        }
        return unknown;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.valueOf(this.value);
    }

    public int value() {
        return this.value;
    }
}
