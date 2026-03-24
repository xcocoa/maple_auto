package cn.haorui.sdk.core.ad;

import cn.haorui.sdk.core.view.TouchPositionListener;

/* JADX INFO: loaded from: classes.dex */
public class TouchData {
    private TouchPositionListener.TouchPosition touchPosition;

    public TouchPositionListener.TouchPosition getTouchPosition() {
        return this.touchPosition;
    }

    public void setTouchPosition(TouchPositionListener.TouchPosition touchPosition) {
        this.touchPosition = touchPosition;
    }
}
