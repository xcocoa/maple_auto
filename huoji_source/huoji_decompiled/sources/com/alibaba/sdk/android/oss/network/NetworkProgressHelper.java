package com.alibaba.sdk.android.oss.network;

import java.io.IOException;
import java.io.InputStream;
import z2.lx;
import z2.ox;
import z2.sx;

/* JADX INFO: loaded from: classes.dex */
public class NetworkProgressHelper {
    public static ProgressTouchableRequestBody addProgressRequestBody(InputStream inputStream, long j, String str, ExecutionContext executionContext) {
        return new ProgressTouchableRequestBody(inputStream, j, str, executionContext);
    }

    public static ox addProgressResponseListener(ox oxVar, final ExecutionContext executionContext) {
        return oxVar.OooOo0().OooO0O0(new lx() { // from class: com.alibaba.sdk.android.oss.network.NetworkProgressHelper.1
            @Override // z2.lx
            public sx intercept(lx.OooO00o oooO00o) throws IOException {
                sx sxVarOooO0o0 = oooO00o.OooO0o0(oooO00o.request());
                return sxVarOooO0o0.o00oO0o().OooO0O0(new ProgressTouchableResponseBody(sxVarOooO0o0.OooOO0(), executionContext)).OooO0OO();
            }
        }).OooO0Oo();
    }
}
