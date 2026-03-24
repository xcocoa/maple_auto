package com.anythink.expressad.video.signal.a;

import android.content.res.Configuration;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class f implements com.anythink.expressad.video.signal.i {
    public static final String a = "js";

    @Override // com.anythink.expressad.video.signal.i
    public String a() {
        return MessageFormatter.DELIM_STR;
    }

    @Override // com.anythink.expressad.video.signal.i
    public void a(String str) {
    }

    @Override // com.anythink.expressad.video.signal.i
    public void b(String str) {
    }

    @Override // com.anythink.expressad.video.signal.i, com.anythink.expressad.video.signal.h
    public void handlerPlayableException(String str) {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void install(com.anythink.expressad.foundation.d.c cVar) {
        new StringBuilder("install:campaignEx=").append(cVar);
    }

    @Override // com.anythink.expressad.video.signal.h
    public void notifyCloseBtn(int i) {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void orientation(Configuration configuration) {
        new StringBuilder("orientation，config=").append(configuration);
    }

    @Override // com.anythink.expressad.video.signal.h
    public void readyStatus(int i) {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void toggleCloseBtn(int i) {
    }

    @Override // com.anythink.expressad.video.signal.h
    public void webviewshow() {
    }
}
