package com.anythink.expressad.video.module.a.a;

import android.text.TextUtils;
import com.anythink.expressad.video.module.AnythinkContainerView;
import com.anythink.expressad.video.module.AnythinkVideoView;

/* JADX INFO: loaded from: classes.dex */
public final class m extends o {
    public static final long ag = 3000;
    private AnythinkVideoView ai;
    private AnythinkContainerView aj;
    private int ak;
    private final com.anythink.core.common.m.a al;
    private boolean am;
    private boolean an;
    private int ao;
    private int ap;
    private final com.anythink.core.common.m.b aq;

    public m(AnythinkVideoView anythinkVideoView, AnythinkContainerView anythinkContainerView, com.anythink.expressad.foundation.d.c cVar, com.anythink.expressad.videocommon.c.c cVar2, com.anythink.expressad.videocommon.b.c cVar3, String str, String str2, int i, int i2, com.anythink.expressad.video.module.a.a aVar, int i3, boolean z, int i4) {
        super(cVar, cVar2, cVar3, str, str2, aVar, i3, z);
        this.al = com.anythink.core.common.m.d.a();
        this.am = false;
        this.an = false;
        this.ao = 1;
        this.aq = new com.anythink.core.common.m.b() { // from class: com.anythink.expressad.video.module.a.a.m.1
            @Override // java.lang.Runnable
            public final void run() {
                m.this.aj.showVideoClickView(-1);
                m.this.ai.soundOperate(0, 2);
            }
        };
        this.ai = anythinkVideoView;
        this.aj = anythinkContainerView;
        this.ap = i;
        this.ak = i2;
        this.ao = i4;
        if (anythinkVideoView != null) {
            this.am = anythinkVideoView.getVideoSkipTime() == 0;
        }
        if (anythinkVideoView == null || anythinkContainerView == null) {
            this.W = false;
        }
    }

    private void a(int i, int i2) {
        com.anythink.expressad.foundation.d.c cVar;
        if (this.am || this.ai == null || (cVar = this.X) == null) {
            return;
        }
        int i3 = this.ak;
        char c = (i3 < 0 || i < i3) ? (char) 1 : (char) 2;
        if (c != 2 && (cVar.i() != 0 ? i > this.X.i() : this.ai.mCurrPlayNum > 1)) {
            c = 2;
        }
        if (c != 2 && this.ai.mCurrPlayNum > 1 && i == i2) {
            c = 2;
        }
        if (c == 2) {
            this.ai.closeVideoOperate(0, 2);
            this.am = true;
        }
    }

    private void g() {
        this.al.b(this.aq);
    }

    private void h() {
        g();
        this.al.a(this.aq);
    }

    private void i() {
        com.anythink.expressad.foundation.d.c cVar = this.X;
        if (cVar == null || cVar.k() != 5) {
            return;
        }
        com.anythink.expressad.foundation.d.c cVar2 = null;
        AnythinkVideoView anythinkVideoView = this.ai;
        if (anythinkVideoView != null && anythinkVideoView.mCampOrderViewData != null) {
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 < this.ai.mCampOrderViewData.size()) {
                    if (this.ai.mCampOrderViewData.get(i2) != null && this.ai.mCampOrderViewData.get(i2).aZ() == this.X.aZ()) {
                        i = i2 - 1;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
            if (i >= 0 && this.ai.mCampOrderViewData.get(i) != null) {
                cVar2 = this.ai.mCampOrderViewData.get(i);
            }
        }
        if (cVar2 != null) {
            AnythinkVideoView anythinkVideoView2 = this.ai;
            if (anythinkVideoView2 != null) {
                anythinkVideoView2.setCampaign(cVar2);
            }
            AnythinkContainerView anythinkContainerView = this.aj;
            if (anythinkContainerView != null) {
                anythinkContainerView.setCampaign(cVar2);
            }
            a(cVar2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x021f A[PHI: r0
      0x021f: PHI (r0v33 com.anythink.expressad.video.module.AnythinkVideoView) = 
      (r0v32 com.anythink.expressad.video.module.AnythinkVideoView)
      (r0v36 com.anythink.expressad.video.module.AnythinkVideoView)
     binds: [B:157:0x021d, B:151:0x020f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0097  */
    @Override // com.anythink.expressad.video.module.a.a.o, com.anythink.expressad.video.module.a.a.k, com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i, Object obj) {
        AnythinkContainerView anythinkContainerView;
        AnythinkVideoView anythinkVideoView;
        int i2;
        int i3;
        com.anythink.expressad.foundation.d.c cVar;
        if (this.W) {
            if (i != 1) {
                if (i == 2) {
                    this.ai.dismissAllAlert();
                    this.ai.videoOperate(3);
                    com.anythink.expressad.foundation.d.c cVar2 = this.X;
                    if (cVar2 != null && cVar2.j() && this.X.k() == 5 && this.aj != null) {
                        AnythinkVideoView anythinkVideoView2 = this.ai;
                        if (anythinkVideoView2.mCurrPlayNum == anythinkVideoView2.mCampaignSize) {
                            if (this.X.f() != 2) {
                                anythinkContainerView = this.aj;
                                anythinkContainerView.setRewardStatus(true);
                                this.aj.showOrderCampView();
                            }
                        }
                        i = 16;
                    } else if (this.ap != 2 || this.aj.endCardShowing() || this.X.f() == 2) {
                        i = 16;
                    } else {
                        this.aj.showEndcard(this.X.F());
                    }
                } else if (i != 5) {
                    if (i != 6) {
                        if (i != 8) {
                            switch (i) {
                                case 10:
                                    this.an = true;
                                    this.ai.soundOperate(0, 2);
                                    this.ai.progressOperate(0, 2);
                                    break;
                                case 11:
                                    this.ai.videoOperate(3);
                                    this.ai.dismissAllAlert();
                                    if (this.X.F() == 3) {
                                        this.ai.setVisibility(0);
                                    } else if (this.X.f() != 2) {
                                        this.ai.setVisibility(8);
                                    }
                                    com.anythink.expressad.foundation.d.c cVar3 = this.X;
                                    if (cVar3 != null && cVar3.k() == 5) {
                                        AnythinkVideoView anythinkVideoView3 = this.ai;
                                        if (anythinkVideoView3.mCurrPlayNum == anythinkVideoView3.mCampaignSize) {
                                            anythinkContainerView = this.aj;
                                            if (anythinkContainerView != null) {
                                                anythinkContainerView.setRewardStatus(true);
                                                this.aj.showOrderCampView();
                                            }
                                        }
                                    }
                                    if (this.X.f() == 2) {
                                        this.aj.showVideoEndCover();
                                        break;
                                    }
                                    break;
                                case 12:
                                    f();
                                    this.ai.videoOperate(3);
                                    this.ai.dismissAllAlert();
                                    if (this.X.F() != 3) {
                                        this.ai.setVisibility(8);
                                    } else {
                                        this.ai.setVisibility(0);
                                    }
                                    if (this.an || this.ao != 0) {
                                        if (this.X.j() && this.X.k() == 5 && TextUtils.isEmpty(this.X.I())) {
                                            com.anythink.expressad.foundation.d.c cVar4 = this.X;
                                            if (cVar4 != null && cVar4.k() == 5) {
                                                com.anythink.expressad.foundation.d.c cVar5 = null;
                                                AnythinkVideoView anythinkVideoView4 = this.ai;
                                                if (anythinkVideoView4 != null && anythinkVideoView4.mCampOrderViewData != null) {
                                                    int i4 = 0;
                                                    while (true) {
                                                        if (i4 >= this.ai.mCampOrderViewData.size()) {
                                                            i2 = 0;
                                                        } else if (this.ai.mCampOrderViewData.get(i4) == null || this.ai.mCampOrderViewData.get(i4).aZ() != this.X.aZ()) {
                                                            i4++;
                                                        } else {
                                                            i2 = i4 - 1;
                                                        }
                                                    }
                                                    if (i2 >= 0 && this.ai.mCampOrderViewData.get(i2) != null) {
                                                        cVar5 = this.ai.mCampOrderViewData.get(i2);
                                                    }
                                                }
                                                if (cVar5 != null) {
                                                    AnythinkVideoView anythinkVideoView5 = this.ai;
                                                    if (anythinkVideoView5 != null) {
                                                        anythinkVideoView5.setCampaign(cVar5);
                                                    }
                                                    AnythinkContainerView anythinkContainerView2 = this.aj;
                                                    if (anythinkContainerView2 != null) {
                                                        anythinkContainerView2.setCampaign(cVar5);
                                                    }
                                                    a(cVar5);
                                                }
                                            }
                                            this.ao = 0;
                                        }
                                        if (!this.an && this.ao == 1) {
                                            e();
                                            d();
                                            c();
                                        }
                                        if (this.X.f() != 2) {
                                        }
                                    }
                                    break;
                                case 13:
                                    this.ai.closeVideoOperate(0, 2);
                                    break;
                                case 14:
                                    if (!this.am) {
                                        this.ai.closeVideoOperate(0, 1);
                                    }
                                    break;
                                case 15:
                                    if (obj != null && (obj instanceof AnythinkVideoView.a)) {
                                        AnythinkVideoView.a aVar = (AnythinkVideoView.a) obj;
                                        int videoInteractiveType = this.aj.getVideoInteractiveType();
                                        if (this.X.f() == 2) {
                                            this.aj.showVideoClickView(1);
                                        } else if (videoInteractiveType >= 0 && aVar.a >= videoInteractiveType) {
                                            this.aj.showVideoClickView(1);
                                            this.ai.soundOperate(0, 1);
                                        }
                                        this.am = aVar.c;
                                        if (this.X.k() == 5) {
                                            int i5 = aVar.a;
                                            int i6 = aVar.b;
                                            if (!this.am && this.ai != null && (cVar = this.X) != null) {
                                                int i7 = this.ak;
                                                char c = (i7 < 0 || i5 < i7) ? (char) 1 : (char) 2;
                                                if (c != 2 && (cVar.i() != 0 ? i5 > this.X.i() : this.ai.mCurrPlayNum > 1)) {
                                                    c = 2;
                                                }
                                                if (c != 2 && this.ai.mCurrPlayNum > 1 && i5 == i6) {
                                                    c = 2;
                                                }
                                                if (c == 2) {
                                                    this.ai.closeVideoOperate(0, 2);
                                                    this.am = true;
                                                }
                                            }
                                            break;
                                        } else {
                                            int i8 = this.ak;
                                            if (((i8 >= 0 && ((i3 = aVar.a) >= i8 || i3 == aVar.b)) || (this.X.i() > 0 && (aVar.a > this.X.i() || aVar.a == aVar.b))) && !this.am) {
                                            }
                                        }
                                    }
                                    break;
                            }
                        } else {
                            AnythinkContainerView anythinkContainerView3 = this.aj;
                            if (anythinkContainerView3 == null) {
                                anythinkVideoView = this.ai;
                                if (anythinkVideoView != null) {
                                }
                            } else if (anythinkContainerView3.showAlertWebView()) {
                                AnythinkVideoView anythinkVideoView6 = this.ai;
                                if (anythinkVideoView6 != null) {
                                    anythinkVideoView6.alertWebViewShowed();
                                }
                            } else {
                                anythinkVideoView = this.ai;
                                if (anythinkVideoView != null) {
                                    anythinkVideoView.showAlertView();
                                }
                            }
                        }
                    }
                } else if (obj != null && (obj instanceof Integer)) {
                    this.ai.soundOperate((((Integer) obj).intValue() == 1 ? 2 : 1).intValue(), -1);
                }
            } else if (!this.aj.endCardShowing()) {
                int videoInteractiveType2 = this.aj.getVideoInteractiveType();
                if (videoInteractiveType2 != -2) {
                    if (videoInteractiveType2 == -1) {
                        if (this.aj.isLast()) {
                            this.aj.showVideoClickView(1);
                            this.ai.soundOperate(0, 1);
                            g();
                            this.al.a(this.aq);
                        } else {
                            this.aj.showVideoClickView(-1);
                            this.ai.soundOperate(0, 2);
                            g();
                        }
                    }
                } else if (this.aj.miniCardLoaded()) {
                    this.aj.showVideoClickView(2);
                }
            }
        }
        super.a(i, obj);
    }
}
