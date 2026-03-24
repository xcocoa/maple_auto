package mobi.oneway.export.AdListener;

import mobi.oneway.export.enums.OnewayAdCloseType;
import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public interface AdMonitor {
    void onAdClick(String str);

    void onAdClose(String str, OnewayAdCloseType onewayAdCloseType);

    void onAdFinish(String str, OnewayAdCloseType onewayAdCloseType, String str2);

    void onAdReady();

    void onAdShow(String str);

    void onSdkError(OnewaySdkError onewaySdkError, String str);
}
