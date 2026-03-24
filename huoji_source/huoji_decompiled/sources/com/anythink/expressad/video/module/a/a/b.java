package com.anythink.expressad.video.module.a.a;

import com.anythink.expressad.video.module.AnythinkContainerView;
import com.anythink.expressad.video.module.AnythinkVideoView;

/* JADX INFO: loaded from: classes.dex */
public final class b extends d {
    private AnythinkVideoView ag;
    private AnythinkContainerView ah;

    public b(AnythinkVideoView anythinkVideoView, AnythinkContainerView anythinkContainerView, com.anythink.expressad.foundation.d.c cVar, com.anythink.expressad.videocommon.c.c cVar2, com.anythink.expressad.videocommon.b.c cVar3, String str, String str2, com.anythink.expressad.video.module.a.a aVar, int i, boolean z) {
        super(cVar, cVar3, cVar2, str, str2, aVar, i, z);
        this.ag = anythinkVideoView;
        this.ah = anythinkContainerView;
        if (anythinkVideoView == null || anythinkContainerView == null) {
            this.W = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0064 A[PHI: r0
      0x0064: PHI (r0v4 com.anythink.expressad.video.module.AnythinkVideoView) = 
      (r0v3 com.anythink.expressad.video.module.AnythinkVideoView)
      (r0v7 com.anythink.expressad.video.module.AnythinkVideoView)
     binds: [B:28:0x0062, B:22:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.anythink.expressad.video.module.a.a.d, com.anythink.expressad.video.module.a.a.k, com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i, Object obj) {
        AnythinkVideoView anythinkVideoView;
        AnythinkVideoView anythinkVideoView2;
        if (this.W) {
            if (i != 8) {
                int i2 = 1;
                if (i == 107) {
                    this.ah.showVideoClickView(-1);
                    this.ag.setCover(false);
                    anythinkVideoView2 = this.ag;
                } else if (i == 112) {
                    this.ag.setCover(true);
                    anythinkVideoView2 = this.ag;
                    i2 = 2;
                } else if (i == 115) {
                    this.ah.resizeMiniCard(this.ag.getBorderViewWidth(), this.ag.getBorderViewHeight(), this.ag.getBorderViewRadius());
                }
                anythinkVideoView2.videoOperate(i2);
            } else {
                AnythinkContainerView anythinkContainerView = this.ah;
                if (anythinkContainerView == null) {
                    anythinkVideoView = this.ag;
                    if (anythinkVideoView != null) {
                    }
                } else if (anythinkContainerView.showAlertWebView()) {
                    AnythinkVideoView anythinkVideoView3 = this.ag;
                    if (anythinkVideoView3 != null) {
                        anythinkVideoView3.alertWebViewShowed();
                    }
                } else {
                    anythinkVideoView = this.ag;
                    if (anythinkVideoView != null) {
                        anythinkVideoView.showAlertView();
                    }
                }
            }
        }
        super.a(i, obj);
    }
}
