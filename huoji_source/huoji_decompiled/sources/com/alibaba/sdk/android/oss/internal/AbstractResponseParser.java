package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.model.OSSResult;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.Map;
import z2.jx;
import z2.sx;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractResponseParser<T extends OSSResult> implements ResponseParser {
    private Map<String, String> parseResponseHeader(sx sxVar) {
        HashMap map = new HashMap();
        jx jxVarO00Oo0 = sxVar.o00Oo0();
        for (int i = 0; i < jxVarO00Oo0.OooOO0o(); i++) {
            map.put(jxVarO00Oo0.OooO0oO(i), jxVarO00Oo0.OooOOO(i));
        }
        return map;
    }

    public static void safeCloseResponse(sx sxVar) {
        try {
            sxVar.OooOO0().close();
        } catch (Exception unused) {
        }
    }

    public boolean needCloseResponse() {
        return true;
    }

    @Override // com.alibaba.sdk.android.oss.internal.ResponseParser
    public T parse(sx sxVar) throws IOException {
        try {
            try {
                T t = (T) ((Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();
                if (t != null) {
                    t.setRequestId(sxVar.o0OoOo0(OSSHeaders.OSS_HEADER_REQUEST_ID));
                    t.setStatusCode(sxVar.OoooooO());
                    t.setResponseHeader(parseResponseHeader(sxVar));
                    t = (T) parseData(sxVar, t);
                }
                return t;
            } catch (Exception e) {
                IOException iOException = new IOException(e.getMessage(), e);
                e.printStackTrace();
                OSSLog.logThrowable2Local(e);
                throw iOException;
            }
        } finally {
            if (needCloseResponse()) {
                safeCloseResponse(sxVar);
            }
        }
    }

    public abstract T parseData(sx sxVar, T t) throws Exception;
}
