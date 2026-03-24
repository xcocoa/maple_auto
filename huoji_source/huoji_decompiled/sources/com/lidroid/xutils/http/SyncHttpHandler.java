package com.lidroid.xutils.http;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import java.io.IOException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes2.dex */
public class SyncHttpHandler {
    private String charset;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private HttpRedirectHandler httpRedirectHandler;
    private String requestMethod;
    private String requestUrl;
    private int retriedTimes = 0;
    private long expiry = HttpCache.getDefaultExpiryTime();

    public SyncHttpHandler(AbstractHttpClient abstractHttpClient, HttpContext httpContext, String str) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.charset = str;
    }

    private ResponseStream handleResponse(HttpResponse httpResponse) throws HttpException, IOException {
        if (httpResponse == null) {
            throw new HttpException("response is null");
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        int statusCode = statusLine.getStatusCode();
        if (statusCode < 300) {
            ResponseStream responseStream = new ResponseStream(httpResponse, this.charset, this.requestUrl, this.expiry);
            responseStream.setRequestMethod(this.requestMethod);
            return responseStream;
        }
        if (statusCode != 301 && statusCode != 302) {
            if (statusCode == 416) {
                throw new HttpException(statusCode, "maybe the file has downloaded completely");
            }
            throw new HttpException(statusCode, statusLine.getReasonPhrase());
        }
        if (this.httpRedirectHandler == null) {
            this.httpRedirectHandler = new DefaultHttpRedirectHandler();
        }
        HttpRequestBase directRequest = this.httpRedirectHandler.getDirectRequest(httpResponse);
        if (directRequest != null) {
            return sendRequest(directRequest);
        }
        return null;
    }

    public ResponseStream sendRequest(HttpRequestBase httpRequestBase) throws HttpException {
        IOException iOException;
        boolean zRetryRequest;
        String str;
        HttpRequestRetryHandler httpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
        do {
            try {
                this.requestUrl = httpRequestBase.getURI().toString();
                String method = httpRequestBase.getMethod();
                this.requestMethod = method;
                HttpCache httpCache = HttpUtils.sHttpCache;
                return (!httpCache.isEnabled(method) || (str = httpCache.get(this.requestUrl)) == null) ? handleResponse(this.client.execute(httpRequestBase, this.context)) : new ResponseStream(str);
            } catch (HttpException e) {
                throw e;
            } catch (UnknownHostException e2) {
                e = e2;
                int i = this.retriedTimes + 1;
                this.retriedTimes = i;
                boolean zRetryRequest2 = httpRequestRetryHandler.retryRequest(e, i, this.context);
                iOException = e;
                zRetryRequest = zRetryRequest2;
            } catch (IOException e3) {
                e = e3;
                int i2 = this.retriedTimes + 1;
                this.retriedTimes = i2;
                boolean zRetryRequest22 = httpRequestRetryHandler.retryRequest(e, i2, this.context);
                iOException = e;
                zRetryRequest = zRetryRequest22;
            } catch (NullPointerException e4) {
                e = e4;
                iOException = new IOException(e.getMessage());
                iOException.initCause(e);
                int i3 = this.retriedTimes + 1;
                this.retriedTimes = i3;
                zRetryRequest = httpRequestRetryHandler.retryRequest(iOException, i3, this.context);
            } catch (Throwable th) {
                e = th;
                iOException = new IOException(e.getMessage());
                iOException.initCause(e);
                int i32 = this.retriedTimes + 1;
                this.retriedTimes = i32;
                zRetryRequest = httpRequestRetryHandler.retryRequest(iOException, i32, this.context);
            }
        } while (zRetryRequest);
        throw new HttpException(iOException);
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setHttpRedirectHandler(HttpRedirectHandler httpRedirectHandler) {
        this.httpRedirectHandler = httpRedirectHandler;
    }
}
