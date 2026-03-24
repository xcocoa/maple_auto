package com.lidroid.xutils.http;

import android.os.SystemClock;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.FileDownloadHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.callback.StringDownloadHandler;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.UnknownHostException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes2.dex */
public class HttpHandler<T> extends PriorityAsyncTask<Object, Object, Void> implements RequestCallBackHandler {
    private static final int UPDATE_FAILURE = 3;
    private static final int UPDATE_LOADING = 2;
    private static final int UPDATE_START = 1;
    private static final int UPDATE_SUCCESS = 4;
    private static final NotUseApacheRedirectHandler notUseApacheRedirectHandler = new NotUseApacheRedirectHandler(null);
    private RequestCallBack<T> callback;
    private String charset;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private HttpRedirectHandler httpRedirectHandler;
    private long lastUpdateTime;
    private HttpRequestBase request;
    private String requestMethod;
    private String requestUrl;
    private boolean isUploading = true;
    private int retriedCount = 0;
    private String fileSavePath = null;
    private boolean isDownloadingFile = false;
    private boolean autoResume = false;
    private boolean autoRename = false;
    private State state = State.WAITING;
    private long expiry = HttpCache.getDefaultExpiryTime();

    public static final class NotUseApacheRedirectHandler implements RedirectHandler {
        private NotUseApacheRedirectHandler() {
        }

        public /* synthetic */ NotUseApacheRedirectHandler(NotUseApacheRedirectHandler notUseApacheRedirectHandler) {
            this();
        }

        @Override // org.apache.http.client.RedirectHandler
        public final URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
            return null;
        }

        @Override // org.apache.http.client.RedirectHandler
        public final boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
            return false;
        }
    }

    public enum State {
        WAITING(0),
        STARTED(1),
        LOADING(2),
        FAILURE(3),
        CANCELLED(4),
        SUCCESS(5);

        private int value;

        State(int i) {
            this.value = 0;
            this.value = i;
        }

        public static State valueOf(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? FAILURE : SUCCESS : CANCELLED : FAILURE : LOADING : STARTED : WAITING;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static State[] valuesCustom() {
            State[] stateArrValuesCustom = values();
            int length = stateArrValuesCustom.length;
            State[] stateArr = new State[length];
            System.arraycopy(stateArrValuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }

        public final int value() {
            return this.value;
        }
    }

    public HttpHandler(AbstractHttpClient abstractHttpClient, HttpContext httpContext, String str, RequestCallBack<T> requestCallBack) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.callback = requestCallBack;
        this.charset = str;
        abstractHttpClient.setRedirectHandler(notUseApacheRedirectHandler);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private ResponseInfo<T> handleResponse(HttpResponse httpResponse) throws Throwable {
        if (httpResponse == null) {
            throw new HttpException("response is null");
        }
        Object objHandleEntity = null;
        if (isCancelled()) {
            return null;
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        int statusCode = statusLine.getStatusCode();
        if (statusCode >= 300) {
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
        HttpEntity entity = httpResponse.getEntity();
        if (entity != null) {
            this.isUploading = false;
            if (this.isDownloadingFile) {
                this.autoResume = this.autoResume && OtherUtils.isSupportRange(httpResponse);
                objHandleEntity = new FileDownloadHandler().handleEntity(entity, this, this.fileSavePath, this.autoResume, this.autoRename ? OtherUtils.getFileNameFromHttpResponse(httpResponse) : null);
            } else {
                String strHandleEntity = new StringDownloadHandler().handleEntity(entity, this, this.charset);
                HttpCache httpCache = HttpUtils.sHttpCache;
                objHandleEntity = strHandleEntity;
                if (httpCache.isEnabled(this.requestMethod)) {
                    httpCache.put(this.requestUrl, strHandleEntity, this.expiry);
                    objHandleEntity = strHandleEntity;
                }
            }
        }
        return new ResponseInfo<>(httpResponse, objHandleEntity, false);
    }

    private ResponseInfo<T> sendRequest(HttpRequestBase httpRequestBase) throws HttpException {
        IOException iOException;
        boolean zRetryRequest;
        String str;
        HttpRequestRetryHandler httpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
        do {
            if (this.autoResume && this.isDownloadingFile) {
                File file = new File(this.fileSavePath);
                long length = (file.isFile() && file.exists()) ? file.length() : 0L;
                if (length > 0) {
                    httpRequestBase.setHeader("RANGE", "bytes=" + length + "-");
                }
            }
            try {
                String method = httpRequestBase.getMethod();
                this.requestMethod = method;
                HttpCache httpCache = HttpUtils.sHttpCache;
                if (httpCache.isEnabled(method) && (str = httpCache.get(this.requestUrl)) != null) {
                    return new ResponseInfo<>(null, str, true);
                }
                if (isCancelled()) {
                    return null;
                }
                return handleResponse(this.client.execute(httpRequestBase, this.context));
            } catch (HttpException e) {
                throw e;
            } catch (UnknownHostException e2) {
                e = e2;
                int i = this.retriedCount + 1;
                this.retriedCount = i;
                zRetryRequest = httpRequestRetryHandler.retryRequest(e, i, this.context);
                iOException = e;
            } catch (IOException e3) {
                e = e3;
                int i2 = this.retriedCount + 1;
                this.retriedCount = i2;
                zRetryRequest = httpRequestRetryHandler.retryRequest(e, i2, this.context);
                iOException = e;
            } catch (NullPointerException e4) {
                e = e4;
                iOException = new IOException(e.getMessage());
                iOException.initCause(e);
                int i3 = this.retriedCount + 1;
                this.retriedCount = i3;
                zRetryRequest = httpRequestRetryHandler.retryRequest(iOException, i3, this.context);
            } catch (Throwable th) {
                e = th;
                iOException = new IOException(e.getMessage());
                iOException.initCause(e);
                int i32 = this.retriedCount + 1;
                this.retriedCount = i32;
                zRetryRequest = httpRequestRetryHandler.retryRequest(iOException, i32, this.context);
            }
        } while (zRetryRequest);
        throw new HttpException(iOException);
    }

    @Override // com.lidroid.xutils.task.PriorityAsyncTask, com.lidroid.xutils.task.TaskHandler
    public void cancel() {
        this.state = State.CANCELLED;
        HttpRequestBase httpRequestBase = this.request;
        if (httpRequestBase != null && !httpRequestBase.isAborted()) {
            try {
                this.request.abort();
            } catch (Throwable unused) {
            }
        }
        if (!isCancelled()) {
            try {
                cancel(true);
            } catch (Throwable unused2) {
            }
        }
        RequestCallBack<T> requestCallBack = this.callback;
        if (requestCallBack != null) {
            requestCallBack.onCancelled();
        }
    }

    @Override // com.lidroid.xutils.task.PriorityAsyncTask
    public Void doInBackground(Object... objArr) {
        State state = this.state;
        State state2 = State.CANCELLED;
        if (state != state2 && objArr != null && objArr.length != 0) {
            if (objArr.length > 3) {
                String strValueOf = String.valueOf(objArr[1]);
                this.fileSavePath = strValueOf;
                this.isDownloadingFile = strValueOf != null;
                this.autoResume = ((Boolean) objArr[2]).booleanValue();
                this.autoRename = ((Boolean) objArr[3]).booleanValue();
            }
            try {
                if (this.state == state2) {
                    return null;
                }
                HttpRequestBase httpRequestBase = (HttpRequestBase) objArr[0];
                this.request = httpRequestBase;
                String string = httpRequestBase.getURI().toString();
                this.requestUrl = string;
                RequestCallBack<T> requestCallBack = this.callback;
                if (requestCallBack != null) {
                    requestCallBack.setRequestUrl(string);
                }
                publishProgress(1);
                this.lastUpdateTime = SystemClock.uptimeMillis();
                ResponseInfo<T> responseInfoSendRequest = sendRequest(this.request);
                if (responseInfoSendRequest != null) {
                    publishProgress(4, responseInfoSendRequest);
                    return null;
                }
            } catch (HttpException e) {
                publishProgress(3, e, e.getMessage());
            }
        }
        return null;
    }

    public RequestCallBack<T> getRequestCallBack() {
        return this.callback;
    }

    public State getState() {
        return this.state;
    }

    @Override // com.lidroid.xutils.task.PriorityAsyncTask
    public void onProgressUpdate(Object... objArr) {
        if (this.state == State.CANCELLED || objArr == null || objArr.length == 0 || this.callback == null) {
            return;
        }
        int iIntValue = ((Integer) objArr[0]).intValue();
        if (iIntValue == 1) {
            this.state = State.STARTED;
            this.callback.onStart();
            return;
        }
        if (iIntValue == 2) {
            if (objArr.length != 3) {
                return;
            }
            this.state = State.LOADING;
            this.callback.onLoading(Long.valueOf(String.valueOf(objArr[1])).longValue(), Long.valueOf(String.valueOf(objArr[2])).longValue(), this.isUploading);
            return;
        }
        if (iIntValue == 3) {
            if (objArr.length != 3) {
                return;
            }
            this.state = State.FAILURE;
            this.callback.onFailure((HttpException) objArr[1], (String) objArr[2]);
            return;
        }
        if (iIntValue == 4 && objArr.length == 2) {
            this.state = State.SUCCESS;
            this.callback.onSuccess((ResponseInfo) objArr[1]);
        }
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setHttpRedirectHandler(HttpRedirectHandler httpRedirectHandler) {
        if (httpRedirectHandler != null) {
            this.httpRedirectHandler = httpRedirectHandler;
        }
    }

    public void setRequestCallBack(RequestCallBack<T> requestCallBack) {
        this.callback = requestCallBack;
    }

    @Override // com.lidroid.xutils.http.callback.RequestCallBackHandler
    public boolean updateProgress(long j, long j2, boolean z) {
        if (this.callback != null && this.state != State.CANCELLED) {
            if (z) {
                publishProgress(2, Long.valueOf(j), Long.valueOf(j2));
            } else {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (jUptimeMillis - this.lastUpdateTime >= this.callback.getRate()) {
                    this.lastUpdateTime = jUptimeMillis;
                    publishProgress(2, Long.valueOf(j), Long.valueOf(j2));
                }
            }
        }
        return this.state != State.CANCELLED;
    }
}
