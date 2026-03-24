package com.alibaba.sdk.android.oss.network;

import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import java.io.InputStream;
import z2.e10;
import z2.k00;
import z2.mx;
import z2.rx;
import z2.w00;

/* JADX INFO: loaded from: classes.dex */
public class ProgressTouchableRequestBody<T extends OSSRequest> extends rx {
    private static final int SEGMENT_SIZE = 2048;
    private OSSProgressCallback callback;
    private long contentLength;
    private String contentType;
    private InputStream inputStream;
    private T request;

    public ProgressTouchableRequestBody(InputStream inputStream, long j, String str, ExecutionContext executionContext) {
        this.inputStream = inputStream;
        this.contentType = str;
        this.contentLength = j;
        this.callback = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    @Override // z2.rx
    public long contentLength() throws IOException {
        return this.contentLength;
    }

    @Override // z2.rx
    public mx contentType() {
        return mx.OooO0Oo(this.contentType);
    }

    @Override // z2.rx
    public void writeTo(k00 k00Var) throws IOException {
        e10 e10VarOooOO0o = w00.OooOO0o(this.inputStream);
        long j = 0;
        while (true) {
            long j2 = this.contentLength;
            if (j >= j2) {
                break;
            }
            long j3 = e10VarOooOO0o.read(k00Var.OooO00o(), Math.min(j2 - j, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH));
            if (j3 == -1) {
                break;
            }
            j += j3;
            k00Var.flush();
            OSSProgressCallback oSSProgressCallback = this.callback;
            if (oSSProgressCallback != null && j != 0) {
                oSSProgressCallback.onProgress(this.request, j, this.contentLength);
            }
        }
        if (e10VarOooOO0o != null) {
            e10VarOooOO0o.close();
        }
    }
}
