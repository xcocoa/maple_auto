package com.anythink.expressad.atsignalcommon.bridge;

import android.content.Context;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;

/* JADX INFO: loaded from: classes.dex */
public class BannerJSPlugin extends AbsFeedBackForH5 {
    private final String h = "BannerJSBridge";
    private IBannerJSBridge i;

    public void cai(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.cai(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void click(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.click(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void getFileInfo(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.getFileInfo(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void getNetstat(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.getNetstat(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void gial(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.gial(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void handlerH5Exception(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.handlerH5Exception(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void increaseOfferFrequence(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.increaseOfferFrequence(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void init(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.init(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.expressad.atsignalcommon.windvane.l
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (context instanceof IBannerJSBridge) {
                this.i = (IBannerJSBridge) context;
            } else {
                if (windVaneWebView.getObject() == null || !(windVaneWebView.getObject() instanceof IBannerJSBridge)) {
                    return;
                }
                this.i = (IBannerJSBridge) windVaneWebView.getObject();
            }
        } catch (Throwable unused) {
        }
    }

    public void install(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.install(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void onJSBridgeConnect(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.onJSBridgeConnect(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void openURL(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.openURL(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void readyStatus(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.readyStatus(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void reportUrls(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.reportUrls(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void resetCountdown(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.resetCountdown(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void sendImpressions(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.sendImpressions(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.toggleCloseBtn(obj, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        try {
            IBannerJSBridge iBannerJSBridge = this.i;
            if (iBannerJSBridge != null) {
                iBannerJSBridge.triggerCloseBtn(obj, str);
            }
        } catch (Throwable unused) {
        }
    }
}
