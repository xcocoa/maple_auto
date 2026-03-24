package cn.haorui.sdk.adsail_ad;

/* JADX INFO: loaded from: classes.dex */
public interface IAdListener<T> {
    void onADError(String str, Integer num);

    void onADExposure();

    void onADLoaded(T t);

    void onAdRenderFail(String str, int i);
}
