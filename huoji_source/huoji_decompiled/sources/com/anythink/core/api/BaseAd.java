package com.anythink.core.api;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.core.basead.b.b;
import com.anythink.core.common.b.l;
import com.anythink.core.common.f.h;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAd implements IATThirdPartyMaterial {
    public abstract void clear(View view);

    public abstract void destroy();

    public abstract ViewGroup getCustomAdContainer();

    public abstract h getDetail();

    @Override // com.anythink.core.api.IATThirdPartyMaterial
    public abstract Map<String, Object> getNetworkInfoMap();

    public abstract void registerListener(View view, List<View> list, FrameLayout.LayoutParams layoutParams);

    public abstract void registerListener(View view, List<View> list, FrameLayout.LayoutParams layoutParams, b bVar);

    public abstract void setNativeEventListener(l lVar);

    public abstract void setNetworkInfoMap(Map<String, Object> map);

    public abstract void setTrackingInfo(h hVar);

    public abstract void setVideoMute(boolean z);
}
