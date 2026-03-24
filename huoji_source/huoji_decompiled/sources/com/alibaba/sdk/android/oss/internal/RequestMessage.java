package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.alibaba.sdk.android.oss.common.utils.HttpUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpdnsMini;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RequestMessage {
    private String bucketName;
    private OSSCredentialProvider credentialProvider;
    private URI endpoint;
    private HttpMethod method;
    private String objectKey;
    private long readStreamLength;
    private byte[] uploadData;
    private String uploadFilePath;
    private InputStream uploadInputStream;
    private boolean isAuthorizationRequired = true;
    private Map<String, String> headers = new HashMap();
    private Map<String, String> parameters = new LinkedHashMap();
    private boolean httpDnsEnable = false;
    private boolean isInCustomCnameExcludeList = false;

    public String buildCanonicalURL() {
        OSSUtils.assertTrue(this.endpoint != null, "Endpoint haven't been set!");
        String scheme = this.endpoint.getScheme();
        String host = this.endpoint.getHost();
        if (!OSSUtils.isCname(host) && this.bucketName != null) {
            host = this.bucketName + "." + host;
        }
        String ipByHostAsync = null;
        if (isHttpDnsEnable()) {
            ipByHostAsync = HttpdnsMini.getInstance().getIpByHostAsync(host);
        } else {
            OSSLog.logDebug("[buildCannonicalURL], disable httpdns");
        }
        if (ipByHostAsync == null) {
            ipByHostAsync = host;
        }
        if (OSSUtils.isCname(host) && isInCustomCnameExcludeList() && this.bucketName != null) {
            host = this.bucketName + "." + host;
        }
        this.headers.put(HttpHeaders.HOST, host);
        String str = scheme + "://" + ipByHostAsync;
        if (this.objectKey != null) {
            str = str + "/" + HttpUtil.urlEncode(this.objectKey, "utf-8");
        }
        String strParamToQueryString = OSSUtils.paramToQueryString(this.parameters, "utf-8");
        StringBuilder sb = new StringBuilder();
        sb.append("request---------------------\n");
        sb.append("request url=" + str + "\n");
        sb.append("request params=" + strParamToQueryString + "\n");
        for (String str2 : this.headers.keySet()) {
            sb.append("requestHeader [" + str2 + "]: ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.headers.get(str2));
            sb2.append("\n");
            sb.append(sb2.toString());
        }
        OSSLog.logDebug(sb.toString());
        if (OSSUtils.isEmptyString(strParamToQueryString)) {
            return str;
        }
        return str + "?" + strParamToQueryString;
    }

    public void createBucketRequestBodyMarshall(String str) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null) {
            stringBuffer.append("<CreateBucketConfiguration>");
            stringBuffer.append("<LocationConstraint>" + str + "</LocationConstraint>");
            stringBuffer.append("</CreateBucketConfiguration>");
            byte[] bytes = stringBuffer.toString().getBytes("utf-8");
            setUploadInputStream(new ByteArrayInputStream(bytes), (long) bytes.length);
        }
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public OSSCredentialProvider getCredentialProvider() {
        return this.credentialProvider;
    }

    public URI getEndpoint() {
        return this.endpoint;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public HttpMethod getMethod() {
        return this.method;
    }

    public String getObjectKey() {
        return this.objectKey;
    }

    public Map<String, String> getParameters() {
        return this.parameters;
    }

    public long getReadStreamLength() {
        return this.readStreamLength;
    }

    public byte[] getUploadData() {
        return this.uploadData;
    }

    public String getUploadFilePath() {
        return this.uploadFilePath;
    }

    public InputStream getUploadInputStream() {
        return this.uploadInputStream;
    }

    public boolean isAuthorizationRequired() {
        return this.isAuthorizationRequired;
    }

    public boolean isHttpDnsEnable() {
        return this.httpDnsEnable;
    }

    public boolean isInCustomCnameExcludeList() {
        return this.isInCustomCnameExcludeList;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setCredentialProvider(OSSCredentialProvider oSSCredentialProvider) {
        this.credentialProvider = oSSCredentialProvider;
    }

    public void setEndpoint(URI uri) {
        this.endpoint = uri;
    }

    public void setHttpDnsEnable(boolean z) {
        this.httpDnsEnable = z;
    }

    public void setIsAuthorizationRequired(boolean z) {
        this.isAuthorizationRequired = z;
    }

    public void setIsInCustomCnameExcludeList(boolean z) {
        this.isInCustomCnameExcludeList = z;
    }

    public void setMethod(HttpMethod httpMethod) {
        this.method = httpMethod;
    }

    public void setObjectKey(String str) {
        this.objectKey = str;
    }

    public void setParameters(Map<String, String> map) {
        this.parameters = map;
    }

    public void setUploadData(byte[] bArr) {
        this.uploadData = bArr;
    }

    public void setUploadFilePath(String str) {
        this.uploadFilePath = str;
    }

    public void setUploadInputStream(InputStream inputStream, long j) {
        if (inputStream != null) {
            this.uploadInputStream = inputStream;
            this.readStreamLength = j;
        }
    }
}
