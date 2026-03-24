package cn.haorui.sdk.core.view.gif;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GifHeader {
    public int bgColor;
    public int bgIndex;
    public b currentFrame;
    public boolean gctFlag;
    public int gctSize;
    public int height;
    public int pixelAspect;
    public int width;
    public int[] gct = null;
    public int status = 0;
    public int frameCount = 0;
    public List<b> frames = new ArrayList();
    public int loopCount = 0;

    public int getHeight() {
        return this.height;
    }

    public int getNumFrames() {
        return this.frameCount;
    }

    public int getStatus() {
        return this.status;
    }

    public int getWidth() {
        return this.width;
    }
}
