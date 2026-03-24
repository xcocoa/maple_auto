package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.internal.OSSRetryHandler;
import com.alibaba.sdk.android.oss.internal.OSSRetryType;
import com.alibaba.sdk.android.oss.internal.RequestMessage;
import com.alibaba.sdk.android.oss.internal.ResponseParser;
import com.alibaba.sdk.android.oss.internal.ResponseParsers;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import z2.mx;
import z2.ox;
import z2.qx;
import z2.rx;
import z2.sx;
import z2.tw;

/* JADX INFO: loaded from: classes.dex */
public class OSSRequestTask<T extends OSSResult> implements Callable<T> {
    private ox client;
    private ExecutionContext context;
    private int currentRetryCount = 0;
    private RequestMessage message;
    private ResponseParser<T> responseParser;
    private OSSRetryHandler retryHandler;

    /* JADX INFO: renamed from: com.alibaba.sdk.android.oss.network.OSSRequestTask$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod = iArr;
            try {
                iArr[HttpMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.GET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.HEAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public OSSRequestTask(RequestMessage requestMessage, ResponseParser responseParser, ExecutionContext executionContext, int i) {
        this.responseParser = responseParser;
        this.message = requestMessage;
        this.context = executionContext;
        this.client = executionContext.getClient();
        this.retryHandler = new OSSRetryHandler(i);
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        tw twVarOooO00o;
        qx qxVarOooO0O0;
        sx sxVarExecute;
        Exception clientException;
        OSSRequest request;
        InputStream uploadInputStream;
        try {
            if (this.context.getApplicationContext() != null) {
                OSSLog.logInfo(OSSUtils.buildBaseLogInfo(this.context.getApplicationContext()));
            }
            OSSLog.logDebug("[call] - ");
            request = this.context.getRequest();
            OSSUtils.ensureRequestValid(request, this.message);
            OSSUtils.signRequest(this.message);
        } catch (Exception e) {
            e = e;
            twVarOooO00o = null;
            qxVarOooO0O0 = null;
            sxVarExecute = null;
        }
        if (this.context.getCancellationHandler().isCancelled()) {
            throw new InterruptedIOException("This task is cancelled!");
        }
        qx.OooO00o oooO00oOooOOo0 = new qx.OooO00o().OooOOo0(this.message.buildCanonicalURL());
        for (String str : this.message.getHeaders().keySet()) {
            oooO00oOooOOo0 = oooO00oOooOOo0.OooO00o(str, this.message.getHeaders().get(str));
        }
        String str2 = this.message.getHeaders().get("Content-Type");
        int i = AnonymousClass1.$SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[this.message.getMethod().ordinal()];
        if (i == 1 || i == 2) {
            OSSUtils.assertTrue(str2 != null, "Content type can't be null when upload!");
            long readStreamLength = 0;
            if (this.message.getUploadData() != null) {
                uploadInputStream = new ByteArrayInputStream(this.message.getUploadData());
                readStreamLength = this.message.getUploadData().length;
            } else if (this.message.getUploadFilePath() != null) {
                File file = new File(this.message.getUploadFilePath());
                FileInputStream fileInputStream = new FileInputStream(file);
                long length = file.length();
                uploadInputStream = fileInputStream;
                readStreamLength = length;
            } else if (this.message.getUploadInputStream() != null) {
                uploadInputStream = this.message.getUploadInputStream();
                readStreamLength = this.message.getReadStreamLength();
            } else {
                uploadInputStream = null;
            }
            oooO00oOooOOo0 = uploadInputStream != null ? oooO00oOooOOo0.OooOO0(this.message.getMethod().toString(), NetworkProgressHelper.addProgressRequestBody(uploadInputStream, readStreamLength, str2, this.context)) : oooO00oOooOOo0.OooOO0(this.message.getMethod().toString(), rx.create((mx) null, new byte[0]));
        } else if (i == 3) {
            oooO00oOooOOo0 = oooO00oOooOOo0.OooO0o();
        } else if (i == 4) {
            oooO00oOooOOo0 = oooO00oOooOOo0.OooO0oO();
        } else if (i == 5) {
            oooO00oOooOOo0 = oooO00oOooOOo0.OooO0Oo();
        }
        qxVarOooO0O0 = oooO00oOooOOo0.OooO0O0();
        try {
            if (request instanceof GetObjectRequest) {
                this.client = NetworkProgressHelper.addProgressResponseListener(this.client, this.context);
                OSSLog.logDebug("getObject");
            }
            twVarOooO00o = this.client.OooO00o(qxVarOooO0O0);
            try {
                this.context.getCancellationHandler().setCall(twVarOooO00o);
                sxVarExecute = twVarOooO00o.execute();
            } catch (Exception e2) {
                e = e2;
                sxVarExecute = null;
            }
            try {
                Map<String, List<String>> mapOooOOO0 = sxVarExecute.o00Oo0().OooOOO0();
                StringBuilder sb = new StringBuilder();
                sb.append("response:---------------------\n");
                sb.append("response code: " + sxVarExecute.OoooooO() + " for url: " + qxVarOooO0O0.OooOO0O() + "\n");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("response msg: ");
                sb2.append(sxVarExecute.o00ooo());
                sb2.append("\n");
                sb.append(sb2.toString());
                for (String str3 : mapOooOOO0.keySet()) {
                    sb.append("responseHeader [" + str3 + "]: ");
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(mapOooOOO0.get(str3).get(0));
                    sb3.append("\n");
                    sb.append(sb3.toString());
                }
                OSSLog.logDebug(sb.toString());
                clientException = null;
            } catch (Exception e3) {
                e = e3;
                OSSLog.logError("Encounter local execpiton: " + e.toString());
                if (OSSLog.isEnableLog()) {
                    e.printStackTrace();
                }
                clientException = new ClientException(e.getMessage(), e);
            }
        } catch (Exception e4) {
            e = e4;
            twVarOooO00o = null;
            sxVarExecute = null;
        }
        if (sxVarExecute != null) {
            try {
                DateUtil.setCurrentServerTime(DateUtil.parseRfc822Date(sxVarExecute.o0OoOo0("Date")).getTime());
            } catch (Exception unused) {
            }
        }
        if (clientException == null && (sxVarExecute.OoooooO() == 203 || sxVarExecute.OoooooO() >= 300)) {
            try {
                clientException = ResponseParsers.parseResponseErrorXML(sxVarExecute, qxVarOooO0O0.OooO0oO().equals("HEAD"));
            } catch (IOException e5) {
                clientException = new ClientException(e5.getMessage(), e5);
            }
        } else if (clientException == null) {
            try {
                T t = (T) this.responseParser.parse(sxVarExecute);
                if (this.context.getCompletedCallback() != null) {
                    try {
                        this.context.getCompletedCallback().onSuccess(this.context.getRequest(), t);
                    } catch (Exception unused2) {
                    }
                }
                return t;
            } catch (IOException e6) {
                clientException = new ClientException(e6.getMessage(), e6);
            }
        }
        if ((twVarOooO00o != null && twVarOooO00o.isCanceled()) || this.context.getCancellationHandler().isCancelled()) {
            clientException = new ClientException("Task is cancelled!", clientException.getCause(), Boolean.TRUE);
        }
        OSSRetryType oSSRetryTypeShouldRetry = this.retryHandler.shouldRetry(clientException, this.currentRetryCount);
        OSSLog.logError("[run] - retry, retry type: " + oSSRetryTypeShouldRetry);
        if (oSSRetryTypeShouldRetry == OSSRetryType.OSSRetryTypeShouldRetry) {
            this.currentRetryCount++;
            if (this.context.getRetryCallback() != null) {
                this.context.getRetryCallback().onRetryCallback();
            }
            return (T) call();
        }
        if (oSSRetryTypeShouldRetry == OSSRetryType.OSSRetryTypeShouldFixedTimeSkewedAndRetry) {
            if (sxVarExecute != null) {
                this.message.getHeaders().put("Date", sxVarExecute.o0OoOo0("Date"));
            }
            this.currentRetryCount++;
            if (this.context.getRetryCallback() != null) {
                this.context.getRetryCallback().onRetryCallback();
            }
            return (T) call();
        }
        if (clientException instanceof ClientException) {
            if (this.context.getCompletedCallback() == null) {
                throw clientException;
            }
            this.context.getCompletedCallback().onFailure(this.context.getRequest(), (ClientException) clientException, null);
            throw clientException;
        }
        if (this.context.getCompletedCallback() == null) {
            throw clientException;
        }
        this.context.getCompletedCallback().onFailure(this.context.getRequest(), null, (ServiceException) clientException);
        throw clientException;
    }
}
