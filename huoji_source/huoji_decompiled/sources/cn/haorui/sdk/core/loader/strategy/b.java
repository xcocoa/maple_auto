package cn.haorui.sdk.core.loader.strategy;

import android.os.SystemClock;
import android.text.TextUtils;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.MacroUtil;

/* JADX INFO: loaded from: classes.dex */
public class b implements Runnable {
    public final /* synthetic */ c a;

    public b(c cVar) {
        this.a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar = this.a;
        cVar.getClass();
        if (SystemClock.uptimeMillis() - cVar.k <= cVar.p) {
            if (cVar.e.size() > cVar.d) {
                for (cn.haorui.sdk.core.loader.loadbean.a aVar : cVar.e.get(cVar.d)) {
                    int i = aVar.c;
                    if (i == 1 || i == 4) {
                        synchronized (aVar) {
                            aVar.c = 5;
                        }
                        aVar.d = 2;
                    }
                }
            }
            cVar.f();
            return;
        }
        cVar.u = true;
        cVar.c();
        for (int i2 = 0; i2 < cVar.f.size(); i2++) {
            cn.haorui.sdk.core.loader.loadbean.a aVar2 = cVar.f.get(i2);
            SdkAdInfo sdkAdInfo = aVar2.a;
            if (sdkAdInfo != null) {
                String err = sdkAdInfo.getErr();
                if (err.contains("__MS_ERRNO__")) {
                    String strReplace = err.replace("__MS_ERRNO__", "1025").replace("__TIMEOUT__", String.valueOf(10));
                    aVar2.a.setErr(strReplace);
                    if (!TextUtils.isEmpty(strReplace)) {
                        HttpUtil.asyncGetWithWebViewUA(cVar.a.getContext().getApplicationContext(), MacroUtil.replaceExposureMacros(strReplace), new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
        }
    }
}
