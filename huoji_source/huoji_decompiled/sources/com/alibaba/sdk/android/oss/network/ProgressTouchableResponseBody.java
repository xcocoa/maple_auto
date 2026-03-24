package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import z2.e10;
import z2.j00;
import z2.l00;
import z2.mx;
import z2.p00;
import z2.tx;
import z2.w00;

/* JADX INFO: loaded from: classes.dex */
public class ProgressTouchableResponseBody<T extends OSSRequest> extends tx {
    private l00 mBufferedSource;
    private OSSProgressCallback mProgressListener;
    private final tx mResponseBody;
    private T request;

    public ProgressTouchableResponseBody(tx txVar, ExecutionContext executionContext) {
        this.mResponseBody = txVar;
        this.mProgressListener = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    private e10 source(e10 e10Var) {
        return new p00(e10Var) { // from class: com.alibaba.sdk.android.oss.network.ProgressTouchableResponseBody.1
            private long totalBytesRead = 0;

            @Override // z2.p00, z2.e10
            public long read(j00 j00Var, long j) throws IOException {
                long j2 = super.read(j00Var, j);
                this.totalBytesRead += j2 != -1 ? j2 : 0L;
                if (ProgressTouchableResponseBody.this.mProgressListener != null) {
                    long j3 = this.totalBytesRead;
                    if (j3 != -1 && j3 != 0) {
                        ProgressTouchableResponseBody.this.mProgressListener.onProgress(ProgressTouchableResponseBody.this.request, this.totalBytesRead, ProgressTouchableResponseBody.this.mResponseBody.contentLength());
                    }
                }
                return j2;
            }
        };
    }

    @Override // z2.tx
    public long contentLength() {
        return this.mResponseBody.contentLength();
    }

    @Override // z2.tx
    public mx contentType() {
        return this.mResponseBody.contentType();
    }

    @Override // z2.tx
    public l00 source() {
        if (this.mBufferedSource == null) {
            this.mBufferedSource = w00.OooO0Oo(source(this.mResponseBody.source()));
        }
        return this.mBufferedSource;
    }
}
