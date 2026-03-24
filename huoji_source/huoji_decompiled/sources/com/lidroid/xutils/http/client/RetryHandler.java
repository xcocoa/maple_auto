package com.lidroid.xutils.http.client;

import android.os.SystemClock;
import com.lidroid.xutils.util.LogUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes2.dex */
public class RetryHandler implements HttpRequestRetryHandler {
    private static final int RETRY_SLEEP_INTERVAL = 500;
    private final int maxRetries;
    private static HashSet<Class<?>> exceptionWhiteList = new HashSet<>();
    private static HashSet<Class<?>> exceptionBlackList = new HashSet<>();

    static {
        exceptionWhiteList.add(NoHttpResponseException.class);
        exceptionWhiteList.add(UnknownHostException.class);
        exceptionWhiteList.add(SocketException.class);
        exceptionBlackList.add(InterruptedIOException.class);
        exceptionBlackList.add(SSLHandshakeException.class);
    }

    public RetryHandler(int i) {
        this.maxRetries = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    @Override // org.apache.http.client.HttpRequestRetryHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        String method;
        boolean zEquals = false;
        if (iOException != null && httpContext != null) {
            Object attribute = httpContext.getAttribute("http.request_sent");
            if (attribute != null) {
                ((Boolean) attribute).booleanValue();
            }
            boolean z = true;
            if (i <= this.maxRetries && !exceptionBlackList.contains(iOException.getClass())) {
                exceptionWhiteList.contains(iOException.getClass());
            } else {
                z = false;
            }
            if (z) {
                try {
                    Object attribute2 = httpContext.getAttribute("http.request");
                    if (attribute2 != null) {
                        if (attribute2 instanceof HttpRequestBase) {
                            method = ((HttpRequestBase) attribute2).getMethod();
                        } else {
                            if (attribute2 instanceof RequestWrapper) {
                                method = ((RequestWrapper) attribute2).getMethod();
                            }
                            zEquals = z;
                        }
                        zEquals = "GET".equals(method);
                    } else {
                        LogUtils.e("retry error, curr request is null");
                    }
                } catch (Throwable th) {
                    LogUtils.e("retry error", th);
                }
                if (zEquals) {
                    SystemClock.sleep(500L);
                }
            } else {
                zEquals = z;
                if (zEquals) {
                }
            }
        }
        return zEquals;
    }
}
