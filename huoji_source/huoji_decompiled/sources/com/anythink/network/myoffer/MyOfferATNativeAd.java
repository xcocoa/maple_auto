package com.anythink.network.myoffer;

import android.content.Context;
import android.view.View;
import com.anythink.basead.b;
import com.anythink.basead.e.a;
import com.anythink.basead.e.i;
import com.anythink.basead.f.e;
import com.anythink.core.common.f.h;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;

/* JADX INFO: loaded from: classes.dex */
public class MyOfferATNativeAd extends CustomNativeAd {
    public e a;
    public Context b;
    public View c;

    /* JADX WARN: Removed duplicated region for block: B:12:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MyOfferATNativeAd(Context context, e eVar) {
        this.b = context.getApplicationContext();
        this.a = eVar;
        eVar.a(new a() { // from class: com.anythink.network.myoffer.MyOfferATNativeAd.1
            @Override // com.anythink.basead.e.a
            public final void onAdClick(i iVar) {
                h detail = MyOfferATNativeAd.this.getDetail();
                if (detail != null) {
                    detail.B(iVar.a);
                    detail.C(iVar.b);
                }
                MyOfferATNativeAd.this.notifyAdClicked();
            }

            @Override // com.anythink.basead.e.a
            public final void onAdClosed() {
            }

            @Override // com.anythink.basead.e.a
            public final void onAdShow(i iVar) {
                MyOfferATNativeAd.this.notifyAdImpression();
            }

            @Override // com.anythink.basead.e.a
            public final void onDeeplinkCallback(boolean z) {
            }

            @Override // com.anythink.basead.e.a
            public final void onShowFailed(com.anythink.basead.c.e eVar2) {
            }
        });
        setNetworkInfoMap(b.a(this.a.e()));
        setAdChoiceIconUrl(this.a.j());
        setTitle(this.a.b());
        setDescriptionText(this.a.f());
        setIconImageUrl(this.a.h());
        setMainImageUrl(this.a.i());
        setCallToActionText(this.a.g());
        int iP = this.a.p();
        if (iP == 1) {
            setNativeInteractionType(1);
        } else if (iP == 2 || iP == 3) {
            setNativeInteractionType(2);
        } else if (iP == 4) {
        }
        setMainImageWidth(this.a.l());
        setMainImageHeight(this.a.m());
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        e eVar = this.a;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        e eVar = this.a;
        if (eVar != null) {
            eVar.a((a) null);
            this.a.o();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.c == null) {
            this.c = e.k();
        }
        return this.c;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadStatus() {
        int iQ;
        e eVar = this.a;
        if (eVar == null || (iQ = eVar.q()) < 0) {
            return 0;
        }
        return iQ;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (this.a != null) {
            this.a.a(view, aTNativePrepareInfo.getClickViewList(), aTNativePrepareInfo instanceof ATNativePrepareExInfo ? ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList() : null);
        }
    }
}
