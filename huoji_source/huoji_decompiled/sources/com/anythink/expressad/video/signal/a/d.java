package com.anythink.expressad.video.signal.a;

import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.anythink.expressad.video.signal.e, com.anythink.expressad.video.signal.h {
    public static final String j = "DefaultJSContainerModule";

    @Override // com.anythink.expressad.video.signal.e
    public void configurationChanged(int i, int i2, int i3) {
    }

    @Override // com.anythink.expressad.video.signal.e
    public boolean endCardShowing() {
        return true;
    }

    @Override // com.anythink.expressad.video.signal.e, com.anythink.expressad.video.signal.h
    public void handlerPlayableException(String str) {
    }

    @Override // com.anythink.expressad.video.signal.e
    public void hideAlertWebview() {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void install(com.anythink.expressad.foundation.d.c cVar) {
        new StringBuilder("install ,campaign=").append(cVar);
    }

    @Override // com.anythink.expressad.video.signal.e
    public void ivRewardAdsWithoutVideo(String str) {
    }

    @Override // com.anythink.expressad.video.signal.e
    public boolean miniCardLoaded() {
        return false;
    }

    @Override // com.anythink.expressad.video.signal.e
    public boolean miniCardShowing() {
        return false;
    }

    @Override // com.anythink.expressad.video.signal.h
    public void notifyCloseBtn(int i) {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void orientation(Configuration configuration) {
        new StringBuilder("orientation ,config=").append(configuration);
    }

    @Override // com.anythink.expressad.video.signal.f
    public void preLoadData(com.anythink.expressad.video.signal.factory.b bVar) {
    }

    @Override // com.anythink.expressad.video.signal.e, com.anythink.expressad.video.signal.h
    public void readyStatus(int i) {
    }

    @Override // com.anythink.expressad.video.signal.e
    public void resizeMiniCard(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder("showMiniCard width = ");
        sb.append(i);
        sb.append(" height = ");
        sb.append(i2);
        sb.append(" radius = ");
        sb.append(i3);
    }

    @Override // com.anythink.expressad.video.signal.e
    public boolean showAlertWebView() {
        return false;
    }

    @Override // com.anythink.expressad.video.signal.e
    public void showEndcard(int i) {
    }

    @Override // com.anythink.expressad.video.signal.e
    public void showMiniCard(int i, int i2, int i3, int i4, int i5) {
        StringBuilder sb = new StringBuilder("showMiniCard top = ");
        sb.append(i);
        sb.append(" left = ");
        sb.append(i2);
        sb.append(" width = ");
        sb.append(i3);
        sb.append(" height = ");
        sb.append(i4);
        sb.append(" radius = ");
        sb.append(i5);
    }

    @Override // com.anythink.expressad.video.signal.e
    public void showPlayableView() {
    }

    @Override // com.anythink.expressad.video.signal.e
    public void showVideoClickView(int i) {
    }

    @Override // com.anythink.expressad.video.signal.e
    public void showVideoEndCover() {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void toggleCloseBtn(int i) {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void webviewshow() {
    }
}
