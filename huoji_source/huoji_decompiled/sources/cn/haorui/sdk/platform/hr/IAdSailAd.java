package cn.haorui.sdk.platform.hr;

import android.content.Context;
import cn.haorui.sdk.core.ad.AdSlot;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.IAd;
import cn.haorui.sdk.core.loader.InteractionListener;

/* JADX INFO: loaded from: classes.dex */
public interface IAdSailAd<T extends InteractionListener> extends IAd<T> {
    AdSlot getAdSlot();

    AdType getAdType();

    Context getContext();

    int getInteractionType();
}
