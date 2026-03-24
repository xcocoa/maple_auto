package cn.haorui.sdk.core.ad.recycler;

/* JADX INFO: loaded from: classes.dex */
public interface ExpressMediaListener {
    void onVideoCompleted();

    void onVideoError(int i, String str);

    void onVideoLoaded();

    void onVideoPause();

    void onVideoResume();

    void onVideoStart();
}
