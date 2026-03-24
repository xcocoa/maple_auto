package cn.haorui.sdk.platform.hr.image;

import cn.haorui.sdk.core.ad.image.ImageAdInteractionListener;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;

/* JADX INFO: loaded from: classes.dex */
public class NativeRecylcerAdInteractionListenerAdapter implements RecylcerAdInteractionListener {
    private ImageAdInteractionListener apiInteractionListener;

    public NativeRecylcerAdInteractionListenerAdapter(ImageAdInteractionListener imageAdInteractionListener) {
        this.apiInteractionListener = imageAdInteractionListener;
    }

    @Override // cn.haorui.sdk.core.loader.InteractionListener
    public void onAdClicked() {
        ImageAdInteractionListener imageAdInteractionListener = this.apiInteractionListener;
        if (imageAdInteractionListener != null) {
            imageAdInteractionListener.onAdClicked();
        }
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
    public void onAdClosed() {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
    public void onAdRenderFailed() {
    }
}
