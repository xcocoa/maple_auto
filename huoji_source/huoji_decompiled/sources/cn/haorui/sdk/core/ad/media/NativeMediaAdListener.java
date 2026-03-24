package cn.haorui.sdk.core.ad.media;

import cn.haorui.sdk.core.loader.IAdLoadListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface NativeMediaAdListener extends IAdLoadListener<List<NativeMediaAdData>> {
    void onAdClicked(NativeMediaAdData nativeMediaAdData);

    void onVideoLoaded(NativeMediaAdData nativeMediaAdData);
}
