package com.octopus.ad;

import android.app.Activity;

/* JADX INFO: loaded from: classes2.dex */
public interface IRewardVideoAd {
    void destroy();

    int getPrice();

    String getTagId();

    boolean isLoaded();

    void loadAd();

    void pause();

    void resume();

    void setAdSlotId(String str);

    void show(Activity activity);
}
