package com.anythink.core.api;

import android.content.Context;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class IOfferClickHandler implements Serializable {
    public abstract boolean startDownloadApp(Context context, l lVar, m mVar, String str);
}
