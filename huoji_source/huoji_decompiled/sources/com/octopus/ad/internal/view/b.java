package com.octopus.ad.internal.view;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface b {
    void destroy();

    boolean failed();

    int getCreativeHeight();

    int getCreativeWidth();

    int getRefreshInterval();

    View getView();

    void onDestroy();

    void onPause();

    void onResume();

    void visible();
}
