package com.lidroid.xutils.http;

import android.text.TextUtils;
import com.lidroid.xutils.http.client.entity.BodyParamsEntity;
import com.lidroid.xutils.http.client.multipart.HttpMultipartMode;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import com.lidroid.xutils.http.client.multipart.content.FileBody;
import com.lidroid.xutils.http.client.multipart.content.InputStreamBody;
import com.lidroid.xutils.http.client.multipart.content.StringBody;
import com.lidroid.xutils.task.Priority;
import com.lidroid.xutils.util.LogUtils;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes2.dex */
public class RequestParams {
    private HttpEntity bodyEntity;
    private List<NameValuePair> bodyParams;
    private String charset;
    private HashMap<String, ContentBody> fileParams;
    private List<HeaderItem> headers;
    private Priority priority;
    private List<NameValuePair> queryStringParams;

    public class HeaderItem {
        public final Header header;
        public final boolean overwrite;

        public HeaderItem(String str, String str2) {
            this.overwrite = false;
            this.header = new BasicHeader(str, str2);
        }

        public HeaderItem(String str, String str2, boolean z) {
            this.overwrite = z;
            this.header = new BasicHeader(str, str2);
        }

        public HeaderItem(Header header) {
            this.overwrite = false;
            this.header = header;
        }

        public HeaderItem(Header header, boolean z) {
            this.overwrite = z;
            this.header = header;
        }
    }

    public RequestParams() {
        this.charset = "UTF-8";
    }

    public RequestParams(String str) {
        this.charset = "UTF-8";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.charset = str;
    }

    public void addBodyParameter(String str, File file) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new FileBody(file));
    }

    public void addBodyParameter(String str, File file, String str2) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new FileBody(file, str2));
    }

    public void addBodyParameter(String str, File file, String str2, String str3) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new FileBody(file, str2, str3));
    }

    public void addBodyParameter(String str, File file, String str2, String str3, String str4) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new FileBody(file, str2, str3, str4));
    }

    public void addBodyParameter(String str, InputStream inputStream, long j) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new InputStreamBody(inputStream, j));
    }

    public void addBodyParameter(String str, InputStream inputStream, long j, String str2) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new InputStreamBody(inputStream, j, str2));
    }

    public void addBodyParameter(String str, InputStream inputStream, long j, String str2, String str3) {
        if (this.fileParams == null) {
            this.fileParams = new HashMap<>();
        }
        this.fileParams.put(str, new InputStreamBody(inputStream, j, str2, str3));
    }

    public void addBodyParameter(String str, String str2) {
        if (this.bodyParams == null) {
            this.bodyParams = new ArrayList();
        }
        this.bodyParams.add(new BasicNameValuePair(str, str2));
    }

    public void addBodyParameter(List<NameValuePair> list) {
        if (this.bodyParams == null) {
            this.bodyParams = new ArrayList();
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<NameValuePair> it = list.iterator();
        while (it.hasNext()) {
            this.bodyParams.add(it.next());
        }
    }

    public void addBodyParameter(NameValuePair nameValuePair) {
        if (this.bodyParams == null) {
            this.bodyParams = new ArrayList();
        }
        this.bodyParams.add(nameValuePair);
    }

    public void addHeader(String str, String str2) {
        if (this.headers == null) {
            this.headers = new ArrayList();
        }
        this.headers.add(new HeaderItem(str, str2));
    }

    public void addHeader(Header header) {
        if (this.headers == null) {
            this.headers = new ArrayList();
        }
        this.headers.add(new HeaderItem(header));
    }

    public void addHeaders(List<Header> list) {
        if (this.headers == null) {
            this.headers = new ArrayList();
        }
        Iterator<Header> it = list.iterator();
        while (it.hasNext()) {
            this.headers.add(new HeaderItem(it.next()));
        }
    }

    public void addQueryStringParameter(String str, String str2) {
        if (this.queryStringParams == null) {
            this.queryStringParams = new ArrayList();
        }
        this.queryStringParams.add(new BasicNameValuePair(str, str2));
    }

    public void addQueryStringParameter(List<NameValuePair> list) {
        if (this.queryStringParams == null) {
            this.queryStringParams = new ArrayList();
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<NameValuePair> it = list.iterator();
        while (it.hasNext()) {
            this.queryStringParams.add(it.next());
        }
    }

    public void addQueryStringParameter(NameValuePair nameValuePair) {
        if (this.queryStringParams == null) {
            this.queryStringParams = new ArrayList();
        }
        this.queryStringParams.add(nameValuePair);
    }

    public String getCharset() {
        return this.charset;
    }

    public HttpEntity getEntity() {
        HttpEntity httpEntity = this.bodyEntity;
        if (httpEntity != null) {
            return httpEntity;
        }
        HashMap<String, ContentBody> map = this.fileParams;
        if (map == null || map.isEmpty()) {
            List<NameValuePair> list = this.bodyParams;
            if (list == null || list.isEmpty()) {
                return null;
            }
            return new BodyParamsEntity(this.bodyParams, this.charset);
        }
        MultipartEntity multipartEntity = new MultipartEntity(HttpMultipartMode.STRICT, null, Charset.forName(this.charset));
        List<NameValuePair> list2 = this.bodyParams;
        if (list2 != null && !list2.isEmpty()) {
            for (NameValuePair nameValuePair : this.bodyParams) {
                try {
                    multipartEntity.addPart(nameValuePair.getName(), new StringBody(nameValuePair.getValue()));
                } catch (UnsupportedEncodingException e) {
                    LogUtils.e(e.getMessage(), e);
                }
            }
        }
        for (Map.Entry<String, ContentBody> entry : this.fileParams.entrySet()) {
            multipartEntity.addPart(entry.getKey(), entry.getValue());
        }
        return multipartEntity;
    }

    public List<HeaderItem> getHeaders() {
        return this.headers;
    }

    public Priority getPriority() {
        return this.priority;
    }

    public List<NameValuePair> getQueryStringParams() {
        return this.queryStringParams;
    }

    public void setBodyEntity(HttpEntity httpEntity) {
        this.bodyEntity = httpEntity;
        List<NameValuePair> list = this.bodyParams;
        if (list != null) {
            list.clear();
            this.bodyParams = null;
        }
        HashMap<String, ContentBody> map = this.fileParams;
        if (map != null) {
            map.clear();
            this.fileParams = null;
        }
    }

    public void setContentType(String str) {
        setHeader("Content-Type", str);
    }

    public void setHeader(String str, String str2) {
        if (this.headers == null) {
            this.headers = new ArrayList();
        }
        this.headers.add(new HeaderItem(str, str2, true));
    }

    public void setHeader(Header header) {
        if (this.headers == null) {
            this.headers = new ArrayList();
        }
        this.headers.add(new HeaderItem(header, true));
    }

    public void setHeaders(List<Header> list) {
        if (this.headers == null) {
            this.headers = new ArrayList();
        }
        Iterator<Header> it = list.iterator();
        while (it.hasNext()) {
            this.headers.add(new HeaderItem(it.next(), true));
        }
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }
}
