package com.lidroid.xutils.http.client.util;

import android.text.TextUtils;
import com.lidroid.xutils.util.LogUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class URIBuilder {
    private String encodedAuthority;
    private String encodedFragment;
    private String encodedPath;
    private String encodedQuery;
    private String encodedSchemeSpecificPart;
    private String encodedUserInfo;
    private String fragment;
    private String host;
    private String path;
    private int port;
    private List<NameValuePair> queryParams;
    private String scheme;
    private String userInfo;

    public URIBuilder() {
        this.port = -1;
    }

    public URIBuilder(String str) {
        try {
            digestURI(new URI(str));
        } catch (URISyntaxException e) {
            LogUtils.e(e.getMessage(), e);
        }
    }

    public URIBuilder(URI uri) {
        digestURI(uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String buildString(Charset charset) {
        String str;
        String strEncodePath;
        String strEncodeFragment;
        StringBuilder sb = new StringBuilder();
        String str2 = this.scheme;
        if (str2 != null) {
            sb.append(str2);
            sb.append(':');
        }
        String strEncodeQuery = this.encodedSchemeSpecificPart;
        if (strEncodeQuery == null) {
            if (this.encodedAuthority != null) {
                sb.append("//");
                sb.append(this.encodedAuthority);
            } else if (this.host != null) {
                sb.append("//");
                String strEncodeUserInfo = this.encodedUserInfo;
                if (strEncodeUserInfo == null) {
                    String str3 = this.userInfo;
                    if (str3 != null) {
                        strEncodeUserInfo = encodeUserInfo(str3, charset);
                        sb.append(strEncodeUserInfo);
                        sb.append("@");
                    }
                    if (InetAddressUtils.isIPv6Address(this.host)) {
                        str = this.host;
                    } else {
                        sb.append("[");
                        sb.append(this.host);
                        str = "]";
                    }
                    sb.append(str);
                    if (this.port >= 0) {
                        sb.append(":");
                        sb.append(this.port);
                    }
                } else {
                    sb.append(strEncodeUserInfo);
                    sb.append("@");
                    if (InetAddressUtils.isIPv6Address(this.host)) {
                    }
                    sb.append(str);
                    if (this.port >= 0) {
                    }
                }
            }
            String str4 = this.encodedPath;
            if (str4 != null) {
                strEncodePath = normalizePath(str4);
            } else {
                String str5 = this.path;
                if (str5 != null) {
                    strEncodePath = encodePath(normalizePath(str5), charset);
                }
                if (this.encodedQuery == null) {
                    sb.append("?");
                    strEncodeQuery = this.encodedQuery;
                } else if (this.queryParams != null) {
                    sb.append("?");
                    strEncodeQuery = encodeQuery(this.queryParams, charset);
                }
                sb.append(strEncodeQuery);
            }
            sb.append(strEncodePath);
            if (this.encodedQuery == null) {
            }
            sb.append(strEncodeQuery);
        } else {
            sb.append(strEncodeQuery);
        }
        if (this.encodedFragment == null) {
            if (this.fragment != null) {
                sb.append("#");
                strEncodeFragment = encodeFragment(this.fragment, charset);
            }
            return sb.toString();
        }
        sb.append("#");
        strEncodeFragment = this.encodedFragment;
        sb.append(strEncodeFragment);
        return sb.toString();
    }

    private void digestURI(URI uri) {
        this.scheme = uri.getScheme();
        this.encodedSchemeSpecificPart = uri.getRawSchemeSpecificPart();
        this.encodedAuthority = uri.getRawAuthority();
        this.host = uri.getHost();
        this.port = uri.getPort();
        this.encodedUserInfo = uri.getRawUserInfo();
        this.userInfo = uri.getUserInfo();
        this.encodedPath = uri.getRawPath();
        this.path = uri.getPath();
        this.encodedQuery = uri.getRawQuery();
        this.queryParams = parseQuery(uri.getRawQuery());
        this.encodedFragment = uri.getRawFragment();
        this.fragment = uri.getFragment();
    }

    private String encodeFragment(String str, Charset charset) {
        return URLEncodedUtils.encFragment(str, charset);
    }

    private String encodePath(String str, Charset charset) {
        return URLEncodedUtils.encPath(str, charset).replace(Marker.ANY_NON_NULL_MARKER, "20%");
    }

    private String encodeQuery(List<NameValuePair> list, Charset charset) {
        return URLEncodedUtils.format(list, charset);
    }

    private String encodeUserInfo(String str, Charset charset) {
        return URLEncodedUtils.encUserInfo(str, charset);
    }

    private static String normalizePath(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        while (i < str.length() && str.charAt(i) == '/') {
            i++;
        }
        return i > 1 ? str.substring(i - 1) : str;
    }

    private List<NameValuePair> parseQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return URLEncodedUtils.parse(str);
    }

    public URIBuilder addParameter(String str, String str2) {
        if (this.queryParams == null) {
            this.queryParams = new ArrayList();
        }
        this.queryParams.add(new BasicNameValuePair(str, str2));
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
        return this;
    }

    public URI build(Charset charset) throws URISyntaxException {
        return new URI(buildString(charset));
    }

    public String getFragment() {
        return this.fragment;
    }

    public String getHost() {
        return this.host;
    }

    public String getPath() {
        return this.path;
    }

    public int getPort() {
        return this.port;
    }

    public List<NameValuePair> getQueryParams() {
        return this.queryParams != null ? new ArrayList(this.queryParams) : new ArrayList();
    }

    public String getScheme() {
        return this.scheme;
    }

    public String getUserInfo() {
        return this.userInfo;
    }

    public URIBuilder setFragment(String str) {
        this.fragment = str;
        this.encodedFragment = null;
        return this;
    }

    public URIBuilder setHost(String str) {
        this.host = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
        return this;
    }

    public URIBuilder setParameter(String str, String str2) {
        if (this.queryParams == null) {
            this.queryParams = new ArrayList();
        }
        if (!this.queryParams.isEmpty()) {
            Iterator<NameValuePair> it = this.queryParams.iterator();
            while (it.hasNext()) {
                if (it.next().getName().equals(str)) {
                    it.remove();
                }
            }
        }
        this.queryParams.add(new BasicNameValuePair(str, str2));
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
        return this;
    }

    public URIBuilder setPath(String str) {
        this.path = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedPath = null;
        return this;
    }

    public URIBuilder setPort(int i) {
        if (i < 0) {
            i = -1;
        }
        this.port = i;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
        return this;
    }

    public URIBuilder setQuery(String str) {
        this.queryParams = parseQuery(str);
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
        return this;
    }

    public URIBuilder setScheme(String str) {
        this.scheme = str;
        return this;
    }

    public URIBuilder setUserInfo(String str) {
        this.userInfo = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
        this.encodedUserInfo = null;
        return this;
    }

    public URIBuilder setUserInfo(String str, String str2) {
        return setUserInfo(String.valueOf(str) + ':' + str2);
    }
}
