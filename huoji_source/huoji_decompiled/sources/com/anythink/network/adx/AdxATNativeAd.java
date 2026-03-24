package com.anythink.network.adx;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.basead.b;
import com.anythink.basead.d.h;
import com.anythink.basead.e.a;
import com.anythink.basead.e.e;
import com.anythink.basead.e.i;
import com.anythink.basead.ui.BaseMediaATView;
import com.anythink.basead.ui.OwnNativeATView;
import com.anythink.core.common.d.c;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;

/* JADX INFO: loaded from: classes.dex */
public class AdxATNativeAd extends CustomNativeAd {
    public h a;
    public Context b;
    public boolean c;
    public boolean d;
    public View e;
    public e f;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AdxATNativeAd(final Context context, h hVar, boolean z, boolean z3) {
        String str;
        this.b = context.getApplicationContext();
        this.a = hVar;
        setNetworkInfoMap(b.a(hVar.a()));
        e eVar = new e(this.a.a(), null) { // from class: com.anythink.network.adx.AdxATNativeAd.1
            @Override // com.anythink.basead.e.e, com.anythink.basead.e.a
            public final void onAdClick(i iVar) {
                super.onAdClick(iVar);
                AdxATNativeAd.this.notifyAdClicked();
                if (AdxATNativeAd.this.a.a().r() == 67) {
                    if (AdxATNativeAd.this.a.a(true, false)) {
                        c.a(context).a(AdxATNativeAd.this.a.a().t(), 1, 0);
                    }
                    if (AdxATNativeAd.this.a.a(false, false)) {
                        com.anythink.core.common.d.b.a(context).a(AdxATNativeAd.this.a.a().t(), 1, 0);
                    }
                }
            }

            @Override // com.anythink.basead.e.a
            public final void onAdClosed() {
                AdxATNativeAd.this.notifyAdDislikeClick();
            }

            @Override // com.anythink.basead.e.e, com.anythink.basead.e.a
            public final void onAdShow(i iVar) {
                super.onAdShow(iVar);
                AdxATNativeAd.this.notifyAdImpression();
                if (AdxATNativeAd.this.a.a().r() == 67) {
                    if (AdxATNativeAd.this.a.a(true, true)) {
                        c.a(context).a(AdxATNativeAd.this.a.a().t(), 0, 1);
                    }
                    if (AdxATNativeAd.this.a.a(false, true)) {
                        com.anythink.core.common.d.b.a(context).a(AdxATNativeAd.this.a.a().t(), 0, 1);
                    }
                }
            }

            @Override // com.anythink.basead.e.a
            public final void onDeeplinkCallback(boolean z4) {
                AdxATNativeAd.this.notifyDeeplinkCallback(z4);
            }

            @Override // com.anythink.basead.e.a
            public final void onShowFailed(com.anythink.basead.c.e eVar2) {
            }
        };
        this.f = eVar;
        this.a.a(eVar);
        this.c = z;
        this.d = z3;
        int iT = this.a.t();
        if (iT != 1) {
            str = iT == 2 ? "2" : "1";
            if (this.a.o()) {
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
                return;
            }
            return;
        }
        this.mAdSourceType = str;
        if (this.a.o()) {
        }
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
        if (this.e == null) {
            this.e = this.a.a(this.b, this.d, new BaseMediaATView.a() { // from class: com.anythink.network.adx.AdxATNativeAd.2
                @Override // com.anythink.basead.ui.BaseMediaATView.a
                public final void onClickCloseView() {
                    AdxATNativeAd.this.notifyAdDislikeClick();
                }
            });
        }
        return this.e;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public ViewGroup getCustomAdContainer() {
        if (this.a == null || this.c) {
            return null;
        }
        return new OwnNativeATView(this.b);
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
    public boolean isNativeExpress() {
        return this.a.o();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onPause() {
        h hVar = this.a;
        if (hVar != null) {
            hVar.s();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onResume() {
        h hVar = this.a;
        if (hVar != null) {
            hVar.r();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        e eVar = this.f;
        if (eVar != null) {
            eVar.updateTrackingInfo(getDetail());
        }
        this.a.r();
        if (this.c || this.a == null) {
            return;
        }
        this.a.a(view, aTNativePrepareInfo.getClickViewList(), aTNativePrepareInfo instanceof ATNativePrepareExInfo ? ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList() : null);
    }
}
