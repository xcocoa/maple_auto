package com.anythink.banner.a;

import android.content.Context;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.h;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.p;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class b implements CustomBannerEventListener {
    public WeakReference<d> a;
    public CustomBannerAdapter b;
    public boolean c;
    private int d;

    public b(d dVar, CustomBannerAdapter customBannerAdapter, boolean z) {
        this.c = false;
        this.a = new WeakReference<>(dVar);
        this.b = customBannerAdapter;
        this.c = z;
    }

    public final void a(int i) {
        this.d = i;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onBannerAdClicked() {
        CustomBannerAdapter customBannerAdapter = this.b;
        if (customBannerAdapter != null) {
            h trackingInfo = customBannerAdapter.getTrackingInfo();
            trackingInfo.G(this.d);
            com.anythink.core.common.n.c.a(n.a().f()).a(6, trackingInfo);
            p.a(trackingInfo, h.n.d, h.n.l, "");
            d dVar = this.a.get();
            if (dVar != null) {
                dVar.onBannerClicked(this.b);
            }
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onBannerAdClose() {
        if (this.b != null) {
            d dVar = this.a.get();
            if (dVar != null) {
                dVar.onBannerClose(this.b);
            }
            com.anythink.core.common.f.h trackingInfo = this.b.getTrackingInfo();
            p.a(trackingInfo, h.n.e, h.n.l, "");
            if (trackingInfo != null) {
                e.a(trackingInfo, false);
            }
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onBannerAdShow() {
        if (this.b != null) {
            d dVar = this.a.get();
            if (dVar != null) {
                dVar.onBannerShow(this.b, this.c);
            }
            com.anythink.core.common.f.h trackingInfo = this.b.getTrackingInfo();
            trackingInfo.a(this.b.getNetworkInfoMap());
            p.a(trackingInfo, h.n.c, h.n.l, "");
            com.anythink.core.common.n.c.a(n.a().f()).a(4, trackingInfo, this.b.getUnitGroupInfo());
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onDeeplinkCallback(boolean z) {
        d dVar = this.a.get();
        if (dVar != null) {
            dVar.onDeeplinkCallback(this.b, z);
        }
        CustomBannerAdapter customBannerAdapter = this.b;
        if (customBannerAdapter != null) {
            p.a(customBannerAdapter.getTrackingInfo(), h.n.i, z ? h.n.l : h.n.m, "");
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerEventListener
    public final void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        d dVar = this.a.get();
        if (dVar != null) {
            dVar.onDownloadConfirm(context, this.b, aTNetworkConfirmInfo);
        }
        CustomBannerAdapter customBannerAdapter = this.b;
        if (customBannerAdapter != null) {
            p.a(customBannerAdapter.getTrackingInfo(), h.n.j, h.n.l, "");
        }
    }
}
