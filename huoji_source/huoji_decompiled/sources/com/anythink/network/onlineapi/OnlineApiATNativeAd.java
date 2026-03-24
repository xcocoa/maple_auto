package com.anythink.network.onlineapi;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.basead.b;
import com.anythink.basead.c.e;
import com.anythink.basead.d.h;
import com.anythink.basead.e.a;
import com.anythink.basead.e.i;
import com.anythink.basead.ui.BaseMediaATView;
import com.anythink.basead.ui.OwnNativeATView;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.network.adx.AdxAppDownloadInfo;

/* JADX INFO: loaded from: classes.dex */
public class OnlineApiATNativeAd extends CustomNativeAd {
    public h a;
    public Context b;
    public View c;

    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public OnlineApiATNativeAd(Context context, h hVar) {
        this.b = context.getApplicationContext();
        this.a = hVar;
        hVar.a(new a() { // from class: com.anythink.network.onlineapi.OnlineApiATNativeAd.1
            @Override // com.anythink.basead.e.a
            public final void onAdClick(i iVar) {
                com.anythink.core.common.f.h detail = OnlineApiATNativeAd.this.getDetail();
                if (detail != null) {
                    detail.B(iVar.a);
                    detail.C(iVar.b);
                }
                OnlineApiATNativeAd.this.notifyAdClicked();
            }

            @Override // com.anythink.basead.e.a
            public final void onAdClosed() {
            }

            @Override // com.anythink.basead.e.a
            public final void onAdShow(i iVar) {
                OnlineApiATNativeAd.this.notifyAdImpression();
            }

            @Override // com.anythink.basead.e.a
            public final void onDeeplinkCallback(boolean z) {
                OnlineApiATNativeAd.this.notifyDeeplinkCallback(z);
            }

            @Override // com.anythink.basead.e.a
            public final void onShowFailed(e eVar) {
            }
        });
        setNetworkInfoMap(b.a(this.a.a()));
        setAdChoiceIconUrl(this.a.g());
        setTitle(this.a.b());
        setDescriptionText(this.a.c());
        setIconImageUrl(this.a.e());
        setMainImageUrl(this.a.f());
        setCallToActionText(this.a.d());
        if (this.a.n()) {
            setAdAppInfo(new AdxAppDownloadInfo(this.a));
        }
        int iW = this.a.w();
        if (iW == 1) {
            setNativeInteractionType(1);
        } else if (iW == 2 || iW == 3) {
            setNativeInteractionType(2);
        } else if (iW == 4) {
        }
        setMainImageWidth(this.a.u());
        setMainImageHeight(this.a.v());
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        h hVar = this.a;
        if (hVar != null) {
            hVar.p();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        h hVar = this.a;
        if (hVar != null) {
            hVar.a((a) null);
            this.a.q();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.c == null) {
            this.c = this.a.a(this.b, false, (BaseMediaATView.a) null);
        }
        return this.c;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        if (this.a != null) {
            return new OwnNativeATView(this.b);
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadStatus() {
        int iX;
        h hVar = this.a;
        if (hVar == null || (iX = hVar.x()) < 0) {
            return 0;
        }
        return iX;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (this.a != null) {
            this.a.a(view, aTNativePrepareInfo.getClickViewList(), aTNativePrepareInfo instanceof ATNativePrepareExInfo ? ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList() : null);
        }
    }
}
