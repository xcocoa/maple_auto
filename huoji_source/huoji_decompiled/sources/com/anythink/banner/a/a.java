package com.anythink.banner.a;

import android.content.Context;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.basead.e.g;
import com.anythink.basead.ui.ThirdPartyBannerATView;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f;
import com.anythink.core.common.f.a.e;
import com.anythink.core.common.f.v;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = h.j.c + a.class.getSimpleName();
    private static final Map<String, a> e = new ConcurrentHashMap(3);
    private final Context b;
    private final String c;
    private final f d;

    private a(Context context, String str) {
        this.b = context.getApplicationContext();
        this.c = str;
        this.d = f.a(context, str, "2");
    }

    public static a a(Context context, String str) {
        Map<String, a> map = e;
        a aVar = map.get(str);
        if (aVar == null) {
            synchronized (a.class) {
                if (aVar == null) {
                    aVar = new a(context, str);
                    map.put(str, aVar);
                }
            }
        }
        return aVar;
    }

    public static void a(String str) {
        e.remove(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(Context context, com.anythink.core.common.f.b bVar, CustomBannerAdapter customBannerAdapter, final b bVar2) {
        if (customBannerAdapter == null || bVar == null) {
            return null;
        }
        if (!customBannerAdapter.isMixFormatAd()) {
            customBannerAdapter.setAdEventListener(bVar2);
            return customBannerAdapter.getBannerView();
        }
        BaseAd baseAdE = bVar.e();
        if (!(baseAdE instanceof e)) {
            return null;
        }
        final ThirdPartyBannerATView thirdPartyBannerATView = new ThirdPartyBannerATView(context, baseAdE, new com.anythink.core.common.f.a.c((com.anythink.core.common.f.a.a) baseAdE, customBannerAdapter.getTrackingInfo(), Integer.parseInt("2")), new com.anythink.core.common.f.a.b((e) baseAdE), new g() { // from class: com.anythink.banner.a.a.1
            @Override // com.anythink.basead.e.g, com.anythink.basead.e.a
            public final void onAdClosed() {
                b bVar3 = bVar2;
                if (bVar3 != null) {
                    bVar3.onBannerAdClose();
                }
            }
        });
        baseAdE.setNativeEventListener(new com.anythink.core.common.b.g() { // from class: com.anythink.banner.a.a.2
            @Override // com.anythink.core.common.b.l
            public final void onAdClicked(View view) {
                b bVar3 = bVar2;
                if (bVar3 != null) {
                    bVar3.a(thirdPartyBannerATView.getClickedArea());
                    bVar2.onBannerAdClicked();
                }
            }

            @Override // com.anythink.core.common.b.g, com.anythink.core.common.b.l
            public final void onAdDislikeButtonClick() {
                b bVar3 = bVar2;
                if (bVar3 != null) {
                    bVar3.onBannerAdClose();
                }
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdImpressed() {
                b bVar3 = bVar2;
                if (bVar3 != null) {
                    bVar3.onBannerAdShow();
                }
            }

            @Override // com.anythink.core.common.b.l
            public final void onDeeplinkCallback(boolean z) {
                b bVar3 = bVar2;
                if (bVar3 != null) {
                    bVar3.onDeeplinkCallback(z);
                }
            }

            @Override // com.anythink.core.common.b.l
            public final void onDownloadConfirmCallback(Context context2, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                b bVar3 = bVar2;
                if (bVar3 != null) {
                    bVar3.onDownloadConfirm(context2, aTNetworkConfirmInfo);
                }
            }
        });
        return thirdPartyBannerATView;
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.d.a(context, map);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.d.b(context);
    }

    public final void a(Context context, int i, com.anythink.core.common.b.a aVar, com.anythink.core.common.b.b bVar, Map<String, Object> map, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        v vVar = new v();
        vVar.e = bVar;
        vVar.a(context);
        vVar.d = i;
        if (map != null) {
            try {
                vVar.g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        vVar.l = aTAdxBidFloorInfo;
        this.d.b(this.b, "2", this.c, vVar, aVar);
    }

    public final void a(com.anythink.core.common.f.b bVar) {
        this.d.a(bVar);
    }

    public final boolean a() {
        return this.d.f();
    }

    public final com.anythink.core.common.f.b b(Context context, Map<String, Object> map) {
        return this.d.a(context, false, true, map);
    }
}
