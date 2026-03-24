package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.client.util.URLEncodedUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes2.dex */
public class BodyParamsEntity extends AbstractHttpEntity implements Cloneable {
    private String charset;
    public byte[] content;
    private boolean dirty;
    private List<NameValuePair> params;

    public BodyParamsEntity() {
        this((String) null);
    }

    public BodyParamsEntity(String str) {
        this.dirty = true;
        this.charset = "UTF-8";
        if (str != null) {
            this.charset = str;
        }
        setContentType("application/x-www-form-urlencoded");
        this.params = new ArrayList();
    }

    public BodyParamsEntity(List<NameValuePair> list) {
        this(list, null);
    }

    public BodyParamsEntity(List<NameValuePair> list, String str) {
        this.dirty = true;
        this.charset = "UTF-8";
        if (str != null) {
            this.charset = str;
        }
        setContentType("application/x-www-form-urlencoded");
        this.params = list;
        refreshContent();
    }

    private void refreshContent() {
        if (this.dirty) {
            try {
                this.content = URLEncodedUtils.format(this.params, this.charset).getBytes(this.charset);
            } catch (UnsupportedEncodingException e) {
                LogUtils.e(e.getMessage(), e);
            }
            this.dirty = false;
        }
    }

    public BodyParamsEntity addParameter(String str, String str2) {
        this.params.add(new BasicNameValuePair(str, str2));
        this.dirty = true;
        return this;
    }

    public BodyParamsEntity addParams(List<NameValuePair> list) {
        this.params.addAll(list);
        this.dirty = true;
        return this;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        refreshContent();
        return new ByteArrayInputStream(this.content);
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        refreshContent();
        return this.content.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        refreshContent();
        outputStream.write(this.content);
        outputStream.flush();
    }
}
