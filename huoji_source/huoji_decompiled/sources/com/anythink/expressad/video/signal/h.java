package com.anythink.expressad.video.signal;

import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
public interface h {
    void handlerPlayableException(String str);

    void install(com.anythink.expressad.foundation.d.c cVar);

    void notifyCloseBtn(int i);

    void orientation(Configuration configuration);

    void readyStatus(int i);

    void toggleCloseBtn(int i);

    void webviewshow();
}
