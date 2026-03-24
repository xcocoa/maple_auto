package cn.haorui.sdk.core.ad.recycler;

import cn.haorui.sdk.core.loader.InteractionListener;

/* JADX INFO: loaded from: classes.dex */
public interface RecylcerAdInteractionListener extends InteractionListener {
    void onAdClosed();

    void onAdRenderFailed();
}
