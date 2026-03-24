package com.anythink.expressad.video.module.a.a;

import com.anythink.expressad.video.module.AnythinkVideoView;
import com.anythink.expressad.video.signal.factory.IJSFactory;

/* JADX INFO: loaded from: classes.dex */
public final class n extends o {
    private IJSFactory ag;
    private int ai;
    private boolean aj;
    private int ak;
    private boolean al;

    public n(IJSFactory iJSFactory, com.anythink.expressad.foundation.d.c cVar, com.anythink.expressad.videocommon.c.c cVar2, com.anythink.expressad.videocommon.b.c cVar3, String str, String str2, int i, int i2, com.anythink.expressad.video.module.a.a aVar, int i3, boolean z, int i4) {
        super(cVar, cVar2, cVar3, str, str2, aVar, i3, z);
        this.aj = false;
        this.al = false;
        this.ag = iJSFactory;
        this.ai = i;
        this.aj = i2 == 0;
        this.ak = i4;
        if (iJSFactory == null) {
            this.W = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x026e  */
    @Override // com.anythink.expressad.video.module.a.a.o, com.anythink.expressad.video.module.a.a.k, com.anythink.expressad.video.module.a.a.f, com.anythink.expressad.video.module.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i, Object obj) {
        com.anythink.expressad.video.signal.g jSNotifyProxy;
        int i2;
        if (this.W) {
            String strValueOf = "";
            if (i != 1) {
                if (i != 2) {
                    int i3 = 5;
                    if (i != 5) {
                        i3 = 6;
                        if (i == 6) {
                            this.ag.getJSVideoModule().dismissAllAlert();
                            if (i == 2) {
                                this.ag.getJSNotifyProxy().a(2, "");
                            }
                            this.ag.getJSVideoModule().videoOperate(3);
                            if (this.ag.getJSCommon().m() == 2) {
                                i = 16;
                                this.ag.getJSNotifyProxy().a(1);
                            } else {
                                if (this.X.F() != 3) {
                                    this.ag.getJSVideoModule().setVisible(8);
                                } else {
                                    this.ag.getJSVideoModule().setVisible(0);
                                }
                                if (this.ai == 2 && !this.ag.getJSContainerModule().endCardShowing() && this.X.f() != 2) {
                                    this.ag.getJSContainerModule().showEndcard(this.X.F());
                                }
                                this.ag.getJSNotifyProxy().a(1);
                            }
                        } else if (i != 8) {
                            if (i != 114) {
                                if (i != 116) {
                                    switch (i) {
                                        case 10:
                                            this.al = true;
                                            this.ag.getJSNotifyProxy().a(0);
                                            break;
                                        case 11:
                                        case 12:
                                            this.ag.getJSVideoModule().videoOperate(3);
                                            if (this.X.F() == 3) {
                                                this.ag.getJSVideoModule().setVisible(0);
                                            } else if (this.X.f() != 2) {
                                                this.ag.getJSVideoModule().setVisible(8);
                                            }
                                            if (i == 12) {
                                                f();
                                                i2 = 2;
                                            } else {
                                                i2 = 1;
                                            }
                                            this.ag.getJSNotifyProxy().a(i2);
                                            if (this.ag.getJSCommon().m() == 2) {
                                                this.ag.getJSVideoModule().setVisible(0);
                                                com.anythink.expressad.video.signal.j jSVideoModule = this.ag.getJSVideoModule();
                                                this.ag.getJSContainerModule().showMiniCard(jSVideoModule.getBorderViewTop(), jSVideoModule.getBorderViewLeft(), jSVideoModule.getBorderViewWidth(), jSVideoModule.getBorderViewHeight(), jSVideoModule.getBorderViewRadius());
                                            } else if (i == 12) {
                                                if (this.ak == 1) {
                                                    if (this.X.f() != 2) {
                                                        this.ag.getJSContainerModule().showEndcard(this.X.F());
                                                    } else {
                                                        this.ag.getJSContainerModule().showVideoEndCover();
                                                    }
                                                }
                                            } else if (this.X.f() != 2) {
                                            }
                                            this.ag.getJSVideoModule().dismissAllAlert();
                                            if (i == 12 && !this.al && this.ak == 1) {
                                                f();
                                                e();
                                                d();
                                                c();
                                            }
                                            break;
                                        case 13:
                                            if (!this.ag.getJSVideoModule().isH5Canvas()) {
                                                this.ag.getJSVideoModule().closeVideoOperate(0, 2);
                                            }
                                            this.ag.getJSNotifyProxy().a(-1);
                                            break;
                                        case 14:
                                            if (!this.aj) {
                                                this.ag.getJSVideoModule().closeVideoOperate(0, 1);
                                            }
                                            break;
                                        case 15:
                                            if (obj != null && (obj instanceof AnythinkVideoView.a)) {
                                                this.aj = true;
                                                this.ag.getJSNotifyProxy().a((AnythinkVideoView.a) obj);
                                            }
                                            break;
                                        default:
                                            switch (i) {
                                                case com.anythink.expressad.video.module.a.a.N /* 123 */:
                                                case com.anythink.expressad.video.module.a.a.O /* 124 */:
                                                    jSNotifyProxy = this.ag.getJSNotifyProxy();
                                                    if (i == 123) {
                                                        i3 = 7;
                                                    }
                                                    jSNotifyProxy.a(i3, strValueOf);
                                                    break;
                                                case 125:
                                                    this.ag.getJSContainerModule().hideAlertWebview();
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    com.anythink.expressad.video.signal.j jSVideoModule2 = this.ag.getJSVideoModule();
                                    this.ag.getJSContainerModule().configurationChanged(jSVideoModule2.getBorderViewWidth(), jSVideoModule2.getBorderViewHeight(), jSVideoModule2.getBorderViewRadius());
                                }
                            } else if (this.ag.getJSCommon().m() == 2) {
                                com.anythink.expressad.video.signal.j jSVideoModule3 = this.ag.getJSVideoModule();
                                this.ag.getJSContainerModule().showMiniCard(jSVideoModule3.getBorderViewTop(), jSVideoModule3.getBorderViewLeft(), jSVideoModule3.getBorderViewWidth(), jSVideoModule3.getBorderViewHeight(), jSVideoModule3.getBorderViewRadius());
                            }
                        } else if (this.ag.getJSContainerModule().showAlertWebView()) {
                            this.ag.getJSVideoModule().alertWebViewShowed();
                        } else {
                            this.ag.getJSVideoModule().showAlertView();
                        }
                    } else if (obj != null && (obj instanceof Integer)) {
                        Integer num = ((Integer) obj).intValue() == 1 ? 2 : 1;
                        this.ag.getJSVideoModule().soundOperate(num.intValue(), -1);
                        jSNotifyProxy = this.ag.getJSNotifyProxy();
                        strValueOf = String.valueOf(num);
                        jSNotifyProxy.a(i3, strValueOf);
                    }
                }
            } else if (!this.ag.getJSContainerModule().endCardShowing()) {
                this.ag.getJSNotifyProxy().a(1, "");
            }
        }
        super.a(i, obj);
    }
}
