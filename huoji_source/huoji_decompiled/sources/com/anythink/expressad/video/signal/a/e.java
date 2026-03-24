package com.anythink.expressad.video.signal.a;

import com.anythink.expressad.video.module.AnythinkVideoView;

/* JADX INFO: loaded from: classes.dex */
public class e implements com.anythink.expressad.video.signal.g {
    public static final String m = "DefaultJSNotifyProxy";

    @Override // com.anythink.expressad.video.signal.g
    public void a() {
    }

    @Override // com.anythink.expressad.video.signal.g
    public void a(int i) {
    }

    @Override // com.anythink.expressad.video.signal.g
    public void a(int i, int i2, int i3, int i4) {
    }

    @Override // com.anythink.expressad.video.signal.g
    public void a(int i, String str) {
        StringBuilder sb = new StringBuilder("onClick:");
        sb.append(i);
        sb.append(",pt:");
        sb.append(str);
    }

    @Override // com.anythink.expressad.video.signal.g
    public void a(AnythinkVideoView.a aVar) {
        new StringBuilder("onProgressNotify:").append(aVar.toString());
    }

    @Override // com.anythink.expressad.video.signal.g
    public void a(Object obj) {
        new StringBuilder("onWebviewShow:").append(obj);
    }
}
