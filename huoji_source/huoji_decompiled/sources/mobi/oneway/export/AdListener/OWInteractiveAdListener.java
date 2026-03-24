package mobi.oneway.export.AdListener;

import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public interface OWInteractiveAdListener {
    void onAdClose(String str, OnewayAdCloseType onewayAdCloseType);

    void onAdReady();

    void onAdShow(String str);

    void onReward(String str);

    void onSdkError(OnewaySdkError onewaySdkError, String str);
}
