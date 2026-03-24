package mobi.oneway.export.AdListener;

import mobi.oneway.export.enums.OnewaySdkError;

/* JADX INFO: loaded from: classes2.dex */
public interface OWSplashAdListener {
    void onAdClick();

    void onAdError(OnewaySdkError onewaySdkError, String str);

    void onAdFinish();

    void onAdShow();
}
