package cn.haorui.sdk.core.ad.paster;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.core.loader.a;
import cn.haorui.sdk.core.loader.d;

/* JADX INFO: loaded from: classes.dex */
public class PasterAdListenerProxy extends a<PasterAd, PasterAdListener> implements PasterAdListener {
    public PasterAdListenerProxy(@NonNull d dVar, @Nullable PasterAdListener pasterAdListener) {
        super(dVar, pasterAdListener);
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAdListener
    public void onVideoComplete() {
        ((PasterAdListener) this.listener).onVideoComplete();
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAdListener
    public void onVideoError() {
        ((PasterAdListener) this.listener).onVideoError();
    }

    @Override // cn.haorui.sdk.core.ad.paster.PasterAdListener
    public void onVideoLoaded() {
        ((PasterAdListener) this.listener).onVideoLoaded();
    }
}
