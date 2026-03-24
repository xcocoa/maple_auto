package cn.haorui.sdk.core.exception;

import cn.haorui.sdk.core.utils.LogUtil;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import z2.sx;
import z2.tw;
import z2.uw;

/* JADX INFO: loaded from: classes.dex */
public final class b implements uw {
    public final /* synthetic */ CountDownLatch a;

    public b(CountDownLatch countDownLatch) {
        this.a = countDownLatch;
    }

    @Override // z2.uw
    public void onFailure(tw twVar, IOException iOException) {
        iOException.printStackTrace();
        this.a.countDown();
        LogUtil.e("UncaughtExceptionProcessor", "uploadException error ");
    }

    @Override // z2.uw
    public void onResponse(tw twVar, sx sxVar) {
        this.a.countDown();
        LogUtil.d("UncaughtExceptionProcessor", "uploadException " + sxVar.toString());
    }
}
