package mobi.oneway.export.AdListener.feed;

import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* JADX INFO: loaded from: classes2.dex */
public interface OWFeedVideoAdListener {
    void onVideoError(OnewaySdkError onewaySdkError, String str);

    void onVideoLoad(IFeedAd iFeedAd);

    void onVideoPlay(IFeedAd iFeedAd);
}
