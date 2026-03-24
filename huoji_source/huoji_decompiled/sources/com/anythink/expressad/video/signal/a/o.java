package com.anythink.expressad.video.signal.a;

import android.app.Activity;
import com.anythink.expressad.video.module.AnythinkContainerView;

/* JADX INFO: loaded from: classes.dex */
public final class o extends e {
    private Activity n;
    private AnythinkContainerView o;

    private o(Activity activity, AnythinkContainerView anythinkContainerView) {
        this.n = activity;
        this.o = anythinkContainerView;
    }

    @Override // com.anythink.expressad.video.signal.a.e, com.anythink.expressad.video.signal.g
    public final void a(int i, String str) {
        Activity activity;
        super.a(i, str);
        int iIntValue = 1;
        if (i != 1) {
            if (i == 2 && (activity = this.n) != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (this.o != null) {
            try {
                iIntValue = Integer.valueOf(str).intValue();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            this.o.showVideoClickView(iIntValue);
        }
    }
}
