package z2;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Xml;
import android.view.View;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public abstract class o000OO0O<T, K> implements Runnable {
    private static String AGENT = null;
    private static final Class<?>[] DEFAULT_SIG = {String.class, Object.class, o000O.class};
    private static boolean GZIP = true;
    private static int NETWORK_POOL = 4;
    private static int NET_TIMEOUT = 30000;
    private static boolean REUSE_CLIENT = true;
    private static boolean SIMULATE_ERROR = false;
    private static final String boundary = "*****";
    private static DefaultHttpClient client = null;
    private static ExecutorService fetchExe = null;
    private static int lastStatus = 200;
    private static final String lineEnd = "\r\n";
    private static o00O0000 proxyHandle = null;
    private static SocketFactory ssf = null;
    private static o0O0ooO st = null;
    private static final String twoHyphens = "--";
    private boolean abort;
    private WeakReference<Activity> act;
    public o000Oo0 ah;
    private boolean blocked;
    private File cacheDir;
    private String callback;
    private boolean completed;
    public Map<String, String> cookies;
    private long expire;
    public boolean fileCache;
    private Object handler;
    public Map<String, String> headers;
    public boolean memCache;
    private String networkUrl;
    public Map<String, Object> params;
    private WeakReference<Object> progress;
    private HttpHost proxy;
    private boolean reauth;
    private boolean refresh;
    private HttpUriRequest request;
    public T result;
    public o000O status;
    private File targetFile;
    private o0O0ooO transformer;
    private Class<T> type;
    private String url;
    private Reference<Object> whandler;
    private int policy = 0;
    private int timeout = 0;
    private boolean redirect = true;
    private String encoding = "UTF-8";
    private int method = 4;
    private boolean uiCallback = true;
    private int retry = 0;

    public class OooO00o implements Runnable {
        private final /* synthetic */ Object OoooOoo;
        private final /* synthetic */ boolean Ooooo00;

        public OooO00o(Object obj, boolean z) {
            this.OoooOoo = obj;
            this.Ooooo00 = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            o00O000o.OooOOOO(this.OoooOoo, o000OO0O.this.url, this.Ooooo00);
        }
    }

    private void afterWork() {
        String str = this.url;
        if (str != null && this.memCache) {
            memPut(str, this.result);
        }
        callback();
        clear();
    }

    private void backgroundWork() throws Throwable {
        if (!this.refresh && this.fileCache) {
            fileWork();
        }
        if (this.result == null) {
            datastoreWork();
        }
        if (this.result == null) {
            networkWork();
        }
    }

    public static void cancel() {
        ExecutorService executorService = fetchExe;
        if (executorService != null) {
            executorService.shutdownNow();
            fetchExe = null;
        }
        o000OO00.clearTasks();
    }

    private void clear() {
        this.whandler = null;
        this.handler = null;
        this.progress = null;
        this.request = null;
        this.transformer = null;
        this.ah = null;
        this.act = null;
    }

    private void copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        WeakReference<Object> weakReference = this.progress;
        Object obj = weakReference != null ? weakReference.get() : null;
        o00O000.OooO0oo(inputStream, outputStream, i, obj != null ? new oOO00O(obj) : null);
    }

    private void copy(InputStream inputStream, OutputStream outputStream, int i, File file, File file2) throws IOException {
        if (file2 == null) {
            copy(inputStream, outputStream, i);
            return;
        }
        try {
            copy(inputStream, outputStream, i);
            inputStream.close();
            outputStream.close();
            file.renameTo(file2);
        } catch (IOException e) {
            o00O000.OooO("copy failed, deleting files");
            file.delete();
            file2.delete();
            o00O000.OooO0o(inputStream);
            o00O000.OooO0o(outputStream);
            throw e;
        }
    }

    private String correctEncoding(byte[] bArr, String str, o000O o000o) {
        String str2 = null;
        try {
        } catch (Exception e) {
            e = e;
        }
        if (!"utf-8".equalsIgnoreCase(str)) {
            return new String(bArr, str);
        }
        String charset = parseCharset(o000o.OooOOoo("Content-Type"));
        o00O000.OooOO0("parsing header", charset);
        if (charset != null) {
            return new String(bArr, charset);
        }
        String str3 = new String(bArr, "utf-8");
        try {
            String charset2 = getCharset(str3);
            o00O000.OooOO0("parsing needed", charset2);
            if (charset2 == null || "utf-8".equalsIgnoreCase(charset2)) {
                return str3;
            }
            o00O000.OooOO0("correction needed", charset2);
            String str4 = new String(bArr, charset2);
            try {
                o000o.OooO0o(str4.getBytes("utf-8"));
                return str4;
            } catch (Exception e2) {
                e = e2;
                str2 = str4;
            }
        } catch (Exception e3) {
            e = e3;
            str2 = str3;
        }
        o00O000.OoooO0O(e);
        return str2;
    }

    private void datastoreWork() {
        T tDatastoreGet = datastoreGet(this.url);
        this.result = tDatastoreGet;
        if (tDatastoreGet != null) {
            this.status.Oooo0(2).OooO0oO();
        }
    }

    private HttpResponse execute(HttpUriRequest httpUriRequest, DefaultHttpClient defaultHttpClient, HttpContext httpContext) throws IOException {
        if (!httpUriRequest.getURI().getAuthority().contains("_")) {
            return defaultHttpClient.execute(httpUriRequest, httpContext);
        }
        URL url = httpUriRequest.getURI().toURL();
        return defaultHttpClient.execute(url.getPort() == -1 ? new HttpHost(url.getHost(), 80, url.getProtocol()) : new HttpHost(url.getHost(), url.getPort(), url.getProtocol()), httpUriRequest, httpContext);
    }

    public static void execute(Runnable runnable) {
        if (fetchExe == null) {
            fetchExe = Executors.newFixedThreadPool(NETWORK_POOL);
        }
        fetchExe.execute(runnable);
    }

    private static Map<String, Object> extractParams(Uri uri) {
        HashMap map = new HashMap();
        for (String str : uri.getQuery().split("&")) {
            String[] strArrSplit = str.split("=");
            if (strArrSplit.length >= 2) {
                map.put(strArrSplit[0], strArrSplit[1]);
            } else if (strArrSplit.length == 1) {
                map.put(strArrSplit[0], "");
            }
        }
        return map;
    }

    private static String extractUrl(Uri uri) {
        String str = String.valueOf(uri.getScheme()) + "://" + uri.getAuthority() + uri.getPath();
        String fragment = uri.getFragment();
        if (fragment == null) {
            return str;
        }
        return String.valueOf(str) + "#" + fragment;
    }

    private void filePut() {
        if (this.result == null || !this.fileCache) {
            if (this.status.OooOO0o() == -103) {
                File cacheFile = getCacheFile();
                if (cacheFile.exists()) {
                    cacheFile.delete();
                    o00O000.OooO("invalidated cache due to transform error");
                    return;
                }
                return;
            }
            return;
        }
        byte[] bArrOooOOO = this.status.OooOOO();
        if (bArrOooOOO != null) {
            try {
                if (this.status.OooOoO() == 1) {
                    File cacheFile2 = getCacheFile();
                    if (!this.status.OooOo0()) {
                        filePut(this.url, this.result, cacheFile2, bArrOooOOO);
                    } else if (cacheFile2.exists()) {
                        cacheFile2.delete();
                    }
                }
            } catch (Exception e) {
                o00O000.OooOO0O(e);
            }
        }
        this.status.OooO0o(null);
    }

    private void fileWork() {
        File fileAccessFile = accessFile(this.cacheDir, getCacheUrl());
        if (fileAccessFile != null) {
            this.status.Oooo0(3);
            T tFileGet = fileGet(this.url, fileAccessFile, this.status);
            this.result = tFileGet;
            if (tFileGet != null) {
                this.status.Oooo0O0(new Date(fileAccessFile.lastModified())).OooO0oO();
            }
        }
    }

    public static int getActiveCount() {
        ExecutorService executorService = fetchExe;
        if (executorService instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) executorService).getActiveCount();
        }
        return 0;
    }

    private String getCacheUrl() {
        o000Oo0 o000oo0 = this.ah;
        return o000oo0 != null ? o000oo0.OooO0oo(this.url) : this.url;
    }

    private String getCharset(String str) {
        Matcher matcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str);
        if (matcher.find()) {
            return parseCharset(matcher.group());
        }
        return null;
    }

    private static DefaultHttpClient getClient() {
        if (client == null || !REUSE_CLIENT) {
            o00O000.OooO("creating http client");
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, NET_TIMEOUT);
            HttpConnectionParams.setSoTimeout(basicHttpParams, NET_TIMEOUT);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(25));
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            SocketFactory socketFactory = ssf;
            if (socketFactory == null) {
                socketFactory = SSLSocketFactory.getSocketFactory();
            }
            schemeRegistry.register(new Scheme("https", socketFactory, 443));
            client = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        }
        return client;
    }

    private String getEncoding(HttpEntity httpEntity) {
        Header contentEncoding;
        if (httpEntity == null || (contentEncoding = httpEntity.getContentEncoding()) == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    public static int getLastStatus() {
        return lastStatus;
    }

    private String getNetworkUrl(String str) {
        String str2 = this.networkUrl;
        if (str2 != null) {
            str = str2;
        }
        o000Oo0 o000oo0 = this.ah;
        return o000oo0 != null ? o000oo0.OooO(str) : str;
    }

    private File getPreFile() {
        File fileOooOOoo;
        if (isStreamingContent()) {
            fileOooOOoo = this.targetFile;
            if (fileOooOOoo == null) {
                if (this.fileCache) {
                    fileOooOOoo = getCacheFile();
                } else {
                    File fileOooOoo0 = o00O000.OooOoo0();
                    if (fileOooOoo0 == null) {
                        fileOooOoo0 = this.cacheDir;
                    }
                    fileOooOOoo = o00O000.OooOOoo(fileOooOoo0, this.url);
                }
            }
        } else {
            fileOooOOoo = null;
        }
        if (fileOooOOoo != null && !fileOooOOoo.exists()) {
            try {
                fileOooOOoo.getParentFile().mkdirs();
                fileOooOOoo.createNewFile();
            } catch (Exception e) {
                o00O000.OoooO0O(e);
                return null;
            }
        }
        return fileOooOOoo;
    }

    private void httpDelete(String str, o000O o000o) throws Throwable {
        o00O000.OooOO0("get", str);
        String strPatchUrl = patchUrl(str);
        httpDo(new HttpDelete(strPatchUrl), strPatchUrl, o000o);
    }

    private void httpDo(HttpUriRequest httpUriRequest, String str, o000O o000o) throws Throwable {
        HttpResponse httpResponseExecute;
        InputStream content;
        String str2;
        String str3;
        File preFile;
        OutputStream bufferedOutputStream;
        File file;
        byte[] byteArray;
        Map<String, String> map;
        DefaultHttpClient client2 = getClient();
        o00O0000 o00o0000 = proxyHandle;
        if (o00o0000 != null) {
            o00o0000.OooO00o(this, httpUriRequest, client2);
        }
        String str4 = AGENT;
        if (str4 != null) {
            httpUriRequest.addHeader("User-Agent", str4);
        } else if (str4 == null && GZIP) {
            httpUriRequest.addHeader("User-Agent", "gzip");
        }
        Map<String, String> map2 = this.headers;
        if (map2 != null) {
            for (String str5 : map2.keySet()) {
                httpUriRequest.addHeader(str5, this.headers.get(str5));
            }
        }
        if (GZIP && ((map = this.headers) == null || !map.containsKey(HttpRequest.HEADER_ACCEPT_ENCODING))) {
            httpUriRequest.addHeader(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip");
        }
        o000Oo0 o000oo0 = this.ah;
        if (o000oo0 != null) {
            o000oo0.OooO0O0(this, httpUriRequest);
        }
        String strMakeCookie = makeCookie();
        if (strMakeCookie != null) {
            httpUriRequest.addHeader("Cookie", strMakeCookie);
        }
        HttpParams params = httpUriRequest.getParams();
        HttpHost httpHost = this.proxy;
        if (httpHost != null) {
            params.setParameter("http.route.default-proxy", httpHost);
        }
        int i = this.timeout;
        if (i > 0) {
            params.setParameter("http.connection.timeout", Integer.valueOf(i));
            params.setParameter("http.socket.timeout", Integer.valueOf(this.timeout));
        }
        if (!this.redirect) {
            params.setBooleanParameter("http.protocol.handle-redirects", false);
        }
        BasicHttpContext basicHttpContext = new BasicHttpContext();
        basicHttpContext.setAttribute("http.cookie-store", new BasicCookieStore());
        this.request = httpUriRequest;
        if (this.abort) {
            throw new IOException("Aborted");
        }
        if (SIMULATE_ERROR) {
            throw new IOException("Simulated Error");
        }
        InputStream inputStream = null;
        inputStream = null;
        InputStream inputStream2 = null;
        byte[] bArr = null;
        try {
            httpResponseExecute = execute(httpUriRequest, client2, basicHttpContext);
        } catch (HttpHostConnectException e) {
            if (this.proxy == null) {
                throw e;
            }
            o00O000.OooO("proxy failed, retrying without proxy");
            params.setParameter("http.route.default-proxy", null);
            httpResponseExecute = execute(httpUriRequest, client2, basicHttpContext);
        }
        HttpResponse httpResponse = httpResponseExecute;
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        String reasonPhrase = httpResponse.getStatusLine().getReasonPhrase();
        HttpEntity entity = httpResponse.getEntity();
        if (statusCode < 200 || statusCode >= 300) {
            if (entity != null) {
                try {
                    content = entity.getContent();
                    try {
                        try {
                            str2 = new String(toData(getEncoding(entity), content), "UTF-8");
                        } catch (Exception e2) {
                            e = e2;
                            str2 = null;
                        }
                        try {
                            o00O000.OooOO0("error", str2);
                        } catch (Exception e3) {
                            e = e3;
                            o00O000.OooOO0O(e);
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = content;
                        o00O000.OooO0o(inputStream);
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    content = null;
                    str2 = null;
                } catch (Throwable th2) {
                    th = th2;
                    o00O000.OooO0o(inputStream);
                    throw th;
                }
            } else {
                content = null;
                str2 = null;
            }
            o00O000.OooO0o(content);
            str3 = str;
            preFile = null;
        } else {
            str3 = String.valueOf(((HttpHost) basicHttpContext.getAttribute("http.target_host")).toURI()) + ((HttpUriRequest) basicHttpContext.getAttribute("http.request")).getURI();
            int iMax = Math.max(32, Math.min(65536, (int) entity.getContentLength()));
            try {
                preFile = getPreFile();
                if (preFile == null) {
                    bufferedOutputStream = new o00O00O(iMax);
                    file = null;
                } else {
                    File fileMakeTempFile = makeTempFile(preFile);
                    file = fileMakeTempFile;
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileMakeTempFile));
                }
                try {
                    InputStream content2 = entity.getContent();
                    try {
                        InputStream gZIPInputStream = "gzip".equalsIgnoreCase(getEncoding(entity)) ? new GZIPInputStream(content2) : content2;
                        try {
                            copy(gZIPInputStream, bufferedOutputStream, (int) entity.getContentLength(), file, preFile);
                            if (preFile == null) {
                                byteArray = ((o00O00O) bufferedOutputStream).toByteArray();
                            } else if (!preFile.exists() || preFile.length() == 0) {
                                byteArray = null;
                                preFile = null;
                            } else {
                                byteArray = null;
                            }
                            o00O000.OooO0o(gZIPInputStream);
                            o00O000.OooO0o(bufferedOutputStream);
                            str2 = null;
                            bArr = byteArray;
                        } catch (Throwable th3) {
                            th = th3;
                            inputStream2 = gZIPInputStream;
                            o00O000.OooO0o(inputStream2);
                            o00O000.OooO0o(bufferedOutputStream);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        inputStream2 = content2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedOutputStream = null;
            }
        }
        o00O000.OooOO0("response", Integer.valueOf(statusCode));
        if (bArr != null) {
            o00O000.OooOO0(Integer.valueOf(bArr.length), str);
        }
        o000o.OooO0Oo(statusCode).OooOooO(reasonPhrase).OooO0oo(str2).Oooo000(str3).Oooo0O0(new Date()).OooO0o(bArr).OooOO0(preFile).OooO00o(client2).OooO0o0(basicHttpContext).OooOoo0(httpResponse.getAllHeaders());
    }

    private void httpEntity(String str, HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Map<String, Object> map, o000O o000o) throws Throwable {
        HttpEntity urlEncodedFormEntity;
        httpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        Object obj = map.get(o00O00.Oooo0o);
        if (obj instanceof HttpEntity) {
            urlEncodedFormEntity = (HttpEntity) obj;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    arrayList.add(new BasicNameValuePair(entry.getKey(), value.toString()));
                }
            }
            urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "UTF-8");
        }
        Map<String, String> map2 = this.headers;
        if (map2 != null && !map2.containsKey("Content-Type")) {
            this.headers.put("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
        }
        httpEntityEnclosingRequestBase.setEntity(urlEncodedFormEntity);
        httpDo(httpEntityEnclosingRequestBase, str, o000o);
    }

    private void httpGet(String str, o000O o000o) throws Throwable {
        o00O000.OooOO0("get", str);
        String strPatchUrl = patchUrl(str);
        httpDo(new HttpGet(strPatchUrl), strPatchUrl, o000o);
    }

    private void httpMulti(String str, Map<String, Object> map, o000O o000o) throws IOException {
        Proxy proxyOooO0O0;
        String str2;
        byte[] data;
        o00O000.OooOO0("multipart", str);
        URL url = new URL(str);
        HttpHost httpHost = this.proxy;
        if (httpHost != null) {
            o00O000.OooOO0("proxy", httpHost);
            proxyOooO0O0 = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.proxy.getHostName(), this.proxy.getPort()));
        } else {
            o00O0000 o00o0000 = proxyHandle;
            proxyOooO0O0 = o00o0000 != null ? o00o0000.OooO0O0(this) : null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) (proxyOooO0O0 == null ? url.openConnection() : url.openConnection(proxyOooO0O0));
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(NET_TIMEOUT * 4);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Connection", com.anythink.expressad.foundation.g.f.g.b.c);
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;charset=utf-8;boundary=*****");
        Map<String, String> map2 = this.headers;
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                httpURLConnection.setRequestProperty(str3, this.headers.get(str3));
            }
        }
        String strMakeCookie = makeCookie();
        if (strMakeCookie != null) {
            httpURLConnection.setRequestProperty("Cookie", strMakeCookie);
        }
        o000Oo0 o000oo0 = this.ah;
        if (o000oo0 != null) {
            o000oo0.OooO00o(this, httpURLConnection);
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            writeObject(dataOutputStream, entry.getKey(), entry.getValue());
        }
        dataOutputStream.writeBytes("--*****--\r\n");
        dataOutputStream.flush();
        dataOutputStream.close();
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (responseCode < 200 || responseCode >= 300) {
            str2 = new String(toData(contentEncoding, httpURLConnection.getErrorStream()), "UTF-8");
            o00O000.OooOO0("error", str2);
            data = null;
        } else {
            data = toData(contentEncoding, httpURLConnection.getInputStream());
            str2 = null;
        }
        o00O000.OooOO0("response", Integer.valueOf(responseCode));
        if (data != null) {
            o00O000.OooOO0(Integer.valueOf(data.length), str);
        }
        o000o.OooO0Oo(responseCode).OooOooO(responseMessage).Oooo000(str).Oooo0O0(new Date()).OooO0o(data).OooO0oo(str2).OooO00o(null);
    }

    private void httpPost(String str, Map<String, Object> map, o000O o000o) throws Throwable {
        o00O000.OooOO0("post", str);
        httpEntity(str, new HttpPost(str), map, o000o);
    }

    private void httpPut(String str, Map<String, Object> map, o000O o000o) throws Throwable {
        o00O000.OooOO0("put", str);
        httpEntity(str, new HttpPut(str), map, o000o);
    }

    private boolean isActive() {
        WeakReference<Activity> weakReference = this.act;
        if (weakReference == null) {
            return true;
        }
        Activity activity = weakReference.get();
        return (activity == null || activity.isFinishing()) ? false : true;
    }

    private static boolean isMultiPart(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            o00O000.OooOO0(entry.getKey(), value);
            if ((value instanceof File) || (value instanceof byte[]) || (value instanceof InputStream)) {
                return true;
            }
        }
        return false;
    }

    private static String makeAuthHeader(String str, String str2) {
        byte[] bytes = (String.valueOf(str) + ":" + str2).getBytes();
        return "Basic " + new String(o00O000.OooOOOO(bytes, 0, bytes.length));
    }

    private String makeCookie() {
        Map<String, String> map = this.cookies;
        if (map == null || map.size() == 0) {
            return null;
        }
        Iterator<String> it = this.cookies.keySet().iterator();
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            String next = it.next();
            String str = this.cookies.get(next);
            sb.append(next);
            sb.append("=");
            sb.append(str);
            if (it.hasNext()) {
                sb.append("; ");
            }
        }
        return sb.toString();
    }

    private File makeTempFile(File file) throws IOException {
        File file2 = new File(String.valueOf(file.getAbsolutePath()) + ".tmp");
        file2.createNewFile();
        return file2;
    }

    private void network() throws Throwable {
        String str = this.url;
        Map<String, Object> map = this.params;
        if (map == null && str.length() > 2000) {
            Uri uri = Uri.parse(str);
            String strExtractUrl = extractUrl(uri);
            map = extractParams(uri);
            str = strExtractUrl;
        }
        String networkUrl = getNetworkUrl(str);
        int i = this.method;
        if (2 == i) {
            httpDelete(networkUrl, this.status);
            return;
        }
        if (3 == i) {
            httpPut(networkUrl, map, this.status);
            return;
        }
        if (1 == i && map == null) {
            map = new HashMap<>();
        }
        if (map == null) {
            httpGet(networkUrl, this.status);
        } else if (isMultiPart(map)) {
            httpMulti(networkUrl, map, this.status);
        } else {
            httpPost(networkUrl, map, this.status);
        }
    }

    private void network(int i) throws Throwable {
        if (i <= 1) {
            network();
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            try {
                network();
                return;
            } catch (IOException e) {
                if (i2 == i - 1) {
                    throw e;
                }
            }
        }
    }

    private void networkWork() throws Throwable {
        o000O o000oOooO0Oo;
        if (this.url == null) {
            o000oOooO0Oo = this.status.OooO0Oo(-101);
        } else {
            byte[] bArrOooOOO = null;
            try {
                network(this.retry + 1);
                o000Oo0 o000oo0 = this.ah;
                if (o000oo0 != null && o000oo0.OooO0o(this, this.status) && !this.reauth) {
                    o00O000.OooOO0("reauth needed", this.status.OooOo0O());
                    this.reauth = true;
                    if (!this.ah.OooOO0(this)) {
                        this.status.OooOooo(true);
                        return;
                    }
                    network();
                }
                bArrOooOOO = this.status.OooOOO();
            } catch (IOException e) {
                o00O000.OooO("IOException");
                String message = e.getMessage();
                if (message == null || !message.contains("No authentication challenges found")) {
                    this.status.OooO0Oo(-101).OooOooO("network error");
                } else {
                    this.status.OooO0Oo(UiMessage.CommandToUi.Command_Type.GET_ENABLED_VALUE).OooOooO(message);
                }
            } catch (Exception e2) {
                o00O000.OooOO0O(e2);
                this.status.OooO0Oo(-101).OooOooO("network error");
            }
            try {
                this.result = transform(this.url, bArrOooOOO, this.status);
            } catch (Exception e3) {
                o00O000.OooOO0O(e3);
            }
            if (this.result == null && bArrOooOOO != null) {
                this.status.OooO0Oo(o000O.OooOoO).OooOooO("transform error");
            }
            lastStatus = this.status.OooOO0o();
            o000oOooO0Oo = this.status;
        }
        o000oOooO0Oo.OooO0oO();
    }

    private String parseCharset(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(HttpRequest.PARAM_CHARSET)) == -1) {
            return null;
        }
        int iIndexOf2 = str.indexOf(";", iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = str.length();
        }
        return str.substring(iIndexOf + 7, iIndexOf2).replaceAll("[^\\w-]", "");
    }

    private static String patchUrl(String str) {
        return str.replaceAll(o4.OooO00o.OooO0Oo, "%20").replaceAll("\\|", "%7C");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private K self() {
        return this;
    }

    public static void setAgent(String str) {
        AGENT = str;
    }

    public static void setGZip(boolean z) {
        GZIP = z;
    }

    public static void setNetworkLimit(int i) {
        int iMax = Math.max(1, Math.min(25, i));
        NETWORK_POOL = iMax;
        fetchExe = null;
        o00O000.OooOO0("setting network limit", Integer.valueOf(iMax));
    }

    public static void setProxyHandle(o00O0000 o00o0000) {
        proxyHandle = o00o0000;
    }

    public static void setReuseHttpClient(boolean z) {
        REUSE_CLIENT = z;
        client = null;
    }

    public static void setSSF(SocketFactory socketFactory) {
        ssf = socketFactory;
        client = null;
    }

    public static void setSimulateError(boolean z) {
        SIMULATE_ERROR = z;
    }

    public static void setTimeout(int i) {
        NET_TIMEOUT = i;
    }

    public static void setTransformer(o0O0ooO o0o0ooo) {
        st = o0o0ooo;
    }

    private byte[] toData(String str, InputStream inputStream) throws IOException {
        if ("gzip".equalsIgnoreCase(str)) {
            inputStream = new GZIPInputStream(inputStream);
        }
        return o00O000.OooooO0(inputStream);
    }

    private void wake() {
        if (this.blocked) {
            synchronized (this) {
                try {
                    notifyAll();
                } catch (Exception unused) {
                }
            }
        }
    }

    private void work(Context context) {
        T tMemGet = memGet(this.url);
        if (tMemGet == null) {
            this.cacheDir = o00O000.OooOOo(context, this.policy);
            execute(this);
        } else {
            this.result = tMemGet;
            this.status.Oooo0(4).OooO0oO();
            callback();
        }
    }

    private static void writeData(DataOutputStream dataOutputStream, String str, String str2, InputStream inputStream) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"\r\n");
        dataOutputStream.writeBytes("Content-Type: application/octet-stream");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("\r\n");
        o00O000.OooO0oO(inputStream, dataOutputStream);
        dataOutputStream.writeBytes("\r\n");
    }

    private static void writeField(DataOutputStream dataOutputStream, String str, String str2) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.write(str2.getBytes("UTF-8"));
        dataOutputStream.writeBytes("\r\n");
    }

    private static void writeObject(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof File) {
            File file = (File) obj;
            writeData(dataOutputStream, str, file.getName(), new FileInputStream(file));
        } else if (obj instanceof byte[]) {
            writeData(dataOutputStream, str, str, new ByteArrayInputStream((byte[]) obj));
        } else if (obj instanceof InputStream) {
            writeData(dataOutputStream, str, str, (InputStream) obj);
        } else {
            writeField(dataOutputStream, str, obj.toString());
        }
    }

    public void abort() {
        this.abort = true;
        HttpUriRequest httpUriRequest = this.request;
        if (httpUriRequest == null || httpUriRequest.isAborted()) {
            return;
        }
        this.request.abort();
    }

    public File accessFile(File file, String str) {
        if (this.expire < 0) {
            return null;
        }
        File fileOooOo0O = o00O000.OooOo0O(file, str);
        if (fileOooOo0O == null || this.expire == 0 || System.currentTimeMillis() - fileOooOo0O.lastModified() <= this.expire) {
            return fileOooOo0O;
        }
        return null;
    }

    public void async(Activity activity) {
        if (activity.isFinishing()) {
            o00O000.OooooOo("Warning", "Possible memory leak. Calling ajax with a terminated activity.");
        }
        if (this.type == null) {
            o00O000.OooooOo("Warning", "type() is not called with response type.");
        } else {
            this.act = new WeakReference<>(activity);
            async((Context) activity);
        }
    }

    public void async(Context context) {
        o000O o000o = this.status;
        if (o000o == null) {
            o000O o000o2 = new o000O();
            this.status = o000o2;
            o000o2.Oooo000(this.url).Oooo00O(this.refresh);
        } else if (o000o.OooOOOO()) {
            this.status.Oooo00o();
            this.result = null;
        }
        showProgress(true);
        o000Oo0 o000oo0 = this.ah;
        if (o000oo0 == null || o000oo0.OooO0o0()) {
            work(context);
        } else {
            o00O000.OooOO0("auth needed", this.url);
            this.ah.OooO0Oo(this);
        }
    }

    public K auth(Activity activity, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 5 && str.startsWith("g.")) {
            this.ah = new o000O0(activity, str, str2);
        }
        return self();
    }

    public K auth(o000Oo0 o000oo0) {
        this.ah = o000oo0;
        return self();
    }

    public void block() {
        if (o00O000.Oooo00O()) {
            throw new IllegalStateException("Cannot block UI thread.");
        }
        if (this.completed) {
            return;
        }
        try {
            synchronized (this) {
                this.blocked = true;
                wait(NET_TIMEOUT + 5000);
            }
        } catch (Exception unused) {
        }
    }

    public boolean cacheAvailable(Context context) {
        return this.fileCache && o00O000.OooOo0O(o00O000.OooOOo(context, this.policy), this.url) != null;
    }

    public void callback() {
        showProgress(false);
        this.completed = true;
        if (!isActive()) {
            skip(this.url, this.result, this.status);
        } else if (this.callback != null) {
            o00O000.OooOoo(getHandler(), this.callback, true, true, new Class[]{String.class, this.type, o000O.class}, DEFAULT_SIG, this.url, this.result, this.status);
        } else {
            try {
                callback(this.url, this.result, this.status);
            } catch (Exception e) {
                o00O000.OoooO0O(e);
            }
        }
        filePut();
        if (!this.blocked) {
            this.status.OooO0O0();
        }
        wake();
        o00O000.OooOO0o();
    }

    public void callback(String str, T t, o000O o000o) {
    }

    public K cookie(String str, String str2) {
        if (this.cookies == null) {
            this.cookies = new HashMap();
        }
        this.cookies.put(str, str2);
        return self();
    }

    public K cookies(Map<String, String> map) {
        this.cookies = map;
        return self();
    }

    public T datastoreGet(String str) {
        return null;
    }

    public K encoding(String str) {
        this.encoding = str;
        return self();
    }

    public K expire(long j) {
        this.expire = j;
        return self();
    }

    public void failure(int i, String str) {
        o000O o000o = this.status;
        if (o000o != null) {
            o000o.OooO0Oo(i).OooOooO(str).OooO0oO();
            if (this.uiCallback) {
                o00O000.Oooo0o(this);
            } else {
                afterWork();
            }
        }
    }

    public K fileCache(boolean z) {
        this.fileCache = z;
        return self();
    }

    public T fileGet(String str, File file, o000O o000o) {
        byte[] bArrOooooO0;
        try {
            if (isStreamingContent()) {
                o000o.OooOO0(file);
                bArrOooooO0 = null;
            } else {
                bArrOooooO0 = o00O000.OooooO0(new FileInputStream(file));
            }
            return transform(str, bArrOooooO0, o000o);
        } catch (Exception e) {
            o00O000.OooOO0O(e);
            return null;
        }
    }

    public void filePut(String str, T t, File file, byte[] bArr) {
        if (file == null || bArr == null) {
            return;
        }
        o00O000.OoooOoO(file, bArr, 0L);
    }

    public File getCacheFile() {
        return o00O000.OooOOoo(this.cacheDir, getCacheUrl());
    }

    public String getCallback() {
        return this.callback;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public Object getHandler() {
        Object obj = this.handler;
        if (obj != null) {
            return obj;
        }
        Reference<Object> reference = this.whandler;
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public T getResult() {
        return this.result;
    }

    public o000O getStatus() {
        return this.status;
    }

    public Class<T> getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public K handler(Object obj, String str) {
        this.handler = obj;
        this.callback = str;
        this.whandler = null;
        return self();
    }

    public K header(String str, String str2) {
        if (this.headers == null) {
            this.headers = new HashMap();
        }
        this.headers.put(str, str2);
        return self();
    }

    public K headers(Map<String, String> map) {
        this.headers = map;
        return self();
    }

    public boolean isStreamingContent() {
        return File.class.equals(this.type) || XmlPullParser.class.equals(this.type) || InputStream.class.equals(this.type) || oo00o.class.equals(this.type);
    }

    public K memCache(boolean z) {
        this.memCache = z;
        return self();
    }

    public T memGet(String str) {
        return null;
    }

    public void memPut(String str, T t) {
    }

    public K method(int i) {
        this.method = i;
        return self();
    }

    public K networkUrl(String str) {
        this.networkUrl = str;
        return self();
    }

    public K param(String str, Object obj) {
        if (this.params == null) {
            this.params = new HashMap();
        }
        this.params.put(str, obj);
        return self();
    }

    public K params(Map<String, ?> map) {
        this.params = map;
        return self();
    }

    public K policy(int i) {
        this.policy = i;
        return self();
    }

    public K progress(Dialog dialog) {
        return progress((Object) dialog);
    }

    public K progress(View view) {
        return progress((Object) view);
    }

    public K progress(Object obj) {
        if (obj != null) {
            this.progress = new WeakReference<>(obj);
        }
        return self();
    }

    public K proxy(String str, int i) {
        this.proxy = new HttpHost(str, i);
        return self();
    }

    public K proxy(String str, int i, String str2, String str3) {
        proxy(str, i);
        String strMakeAuthHeader = makeAuthHeader(str2, str3);
        o00O000.OooOO0("proxy auth", strMakeAuthHeader);
        return header(HttpRequest.HEADER_PROXY_AUTHORIZATION, strMakeAuthHeader);
    }

    public K redirect(boolean z) {
        this.redirect = z;
        return self();
    }

    public K refresh(boolean z) {
        this.refresh = z;
        return self();
    }

    public K retry(int i) {
        this.retry = i;
        return self();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.status.OooOOOO()) {
            try {
                backgroundWork();
            } catch (Throwable th) {
                o00O000.OooOO0O(th);
                this.status.OooO0Oo(-101).OooO0oO();
            }
            if (this.status.OooOo0o()) {
                return;
            }
            if (this.uiCallback) {
                o00O000.Oooo0o(this);
                return;
            }
        }
        afterWork();
    }

    public void showProgress(boolean z) {
        WeakReference<Object> weakReference = this.progress;
        Object obj = weakReference == null ? null : weakReference.get();
        if (obj != null) {
            if (o00O000.Oooo00O()) {
                o00O000o.OooOOOO(obj, this.url, z);
            } else {
                o00O000.Oooo0o(new OooO00o(obj, z));
            }
        }
    }

    public void skip(String str, T t, o000O o000o) {
    }

    public K targetFile(File file) {
        this.targetFile = file;
        return self();
    }

    public K timeout(int i) {
        this.timeout = i;
        return self();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r9v12, types: [T, java.io.Closeable, java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r9v13, types: [T, org.xmlpull.v1.XmlPullParser] */
    public T transform(String str, byte[] bArr, o000O o000o) {
        String str2;
        if (this.type == null) {
            return null;
        }
        ?? r0 = (T) o000o.OooOOo();
        if (bArr != 0) {
            if (this.type.equals(Bitmap.class)) {
                return (T) BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            }
            if (this.type.equals(JSONObject.class)) {
                try {
                    str2 = new String(bArr, this.encoding);
                } catch (Exception e) {
                    e = e;
                    str2 = null;
                }
                try {
                    return (T) ((JSONObject) new JSONTokener(str2).nextValue());
                } catch (Exception e2) {
                    e = e2;
                    o00O000.OooOO0O(e);
                    o00O000.OooO(str2);
                    return null;
                }
            }
            if (this.type.equals(JSONArray.class)) {
                try {
                    return (T) ((JSONArray) new JSONTokener(new String(bArr, this.encoding)).nextValue());
                } catch (Exception e3) {
                    o00O000.OooOO0O(e3);
                    return null;
                }
            }
            if (this.type.equals(String.class)) {
                if (o000o.OooOoO() == 1) {
                    o00O000.OooO("network");
                    return (T) correctEncoding(bArr, this.encoding, o000o);
                }
                o00O000.OooO("file");
                try {
                    return (T) new String(bArr, this.encoding);
                } catch (Exception e4) {
                    o00O000.OooOO0O(e4);
                    return null;
                }
            }
            if (this.type.equals(byte[].class)) {
                return bArr;
            }
            o0O0ooO o0o0ooo = this.transformer;
            if (o0o0ooo != null) {
                return (T) o0o0ooo.OooO00o(str, this.type, this.encoding, bArr, o000o);
            }
            o0O0ooO o0o0ooo2 = st;
            if (o0o0ooo2 != null) {
                return (T) o0o0ooo2.OooO00o(str, this.type, this.encoding, bArr, o000o);
            }
        } else if (r0 != 0) {
            if (this.type.equals(File.class)) {
                return r0;
            }
            if (this.type.equals(oo00o.class)) {
                try {
                    FileInputStream fileInputStream = new FileInputStream((File) r0);
                    T t = (T) new oo00o(fileInputStream);
                    o000o.OooO0OO(fileInputStream);
                    return t;
                } catch (Exception e5) {
                    o00O000.OoooO0O(e5);
                    return null;
                }
            }
            if (this.type.equals(XmlPullParser.class)) {
                ?? r9 = (T) Xml.newPullParser();
                try {
                    FileInputStream fileInputStream2 = new FileInputStream((File) r0);
                    r9.setInput(fileInputStream2, this.encoding);
                    o000o.OooO0OO(fileInputStream2);
                    return r9;
                } catch (Exception e6) {
                    o00O000.OoooO0O(e6);
                    return null;
                }
            }
            if (this.type.equals(InputStream.class)) {
                try {
                    ?? r92 = (T) new FileInputStream((File) r0);
                    o000o.OooO0OO(r92);
                    return r92;
                } catch (Exception e7) {
                    o00O000.OoooO0O(e7);
                }
            }
        }
        return null;
    }

    public K transformer(o0O0ooO o0o0ooo) {
        this.transformer = o0o0ooo;
        return self();
    }

    public K type(Class<T> cls) {
        this.type = cls;
        return self();
    }

    public K uiCallback(boolean z) {
        this.uiCallback = z;
        return self();
    }

    public K url(String str) {
        this.url = str;
        return self();
    }

    public K weakHandler(Object obj, String str) {
        this.whandler = new WeakReference(obj);
        this.callback = str;
        this.handler = null;
        return self();
    }
}
