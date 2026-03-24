package com.anythink.expressad.video.signal.a;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class g implements com.anythink.expressad.video.signal.j {
    public static final String n = "DefaultJSVideoModule";

    @Override // com.anythink.expressad.video.signal.j
    public void alertWebViewShowed() {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void closeVideoOperate(int i, int i2) {
        StringBuilder sb = new StringBuilder("closeOperte:close=");
        sb.append(i);
        sb.append("closeViewVisible=");
        sb.append(i2);
    }

    @Override // com.anythink.expressad.video.signal.j
    public void dismissAllAlert() {
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewHeight() {
        return 0;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewLeft() {
        return 0;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewRadius() {
        return 0;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewTop() {
        return 0;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewWidth() {
        return 0;
    }

    @Override // com.anythink.expressad.video.signal.j
    public String getCurrentProgress() {
        return MessageFormatter.DELIM_STR;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void hideAlertView(int i) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public boolean isH5Canvas() {
        return false;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void notifyCloseBtn(int i) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void progressBarOperate(int i) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void progressOperate(int i, int i2) {
        StringBuilder sb = new StringBuilder("progressOperate:progress=");
        sb.append(i);
        sb.append("progressViewVisible=");
        sb.append(i2);
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setCover(boolean z) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setInstallDialogState(boolean z) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setMiniEndCardState(boolean z) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setScaleFitXY(int i) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setVisible(int i) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void showAlertView() {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void showIVRewardAlertView(String str) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public void showVideoLocation(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        StringBuilder sb = new StringBuilder("showVideoLocation:marginTop=");
        sb.append(i);
        sb.append(",marginLeft=");
        sb.append(i2);
        sb.append(",width=");
        sb.append(i3);
        sb.append(",height=");
        sb.append(i4);
        sb.append(",radius=");
        sb.append(i5);
        sb.append(",borderTop=");
        sb.append(i6);
        sb.append(",borderTop=");
        sb.append(i6);
        sb.append(",borderLeft=");
        sb.append(i7);
        sb.append(",borderWidth=");
        sb.append(i8);
        sb.append(",borderHeight=");
        sb.append(i9);
    }

    @Override // com.anythink.expressad.video.signal.j
    public void soundOperate(int i, int i2) {
        StringBuilder sb = new StringBuilder("soundOperate:mute=");
        sb.append(i);
        sb.append(",soundViewVisible=");
        sb.append(i2);
    }

    @Override // com.anythink.expressad.video.signal.j
    public void soundOperate(int i, int i2, String str) {
        StringBuilder sb = new StringBuilder("soundOperate:mute=");
        sb.append(i);
        sb.append(",soundViewVisible=");
        sb.append(i2);
        sb.append(",pt=");
        sb.append(str);
    }

    @Override // com.anythink.expressad.video.signal.j
    public void videoOperate(int i) {
    }
}
