package mobi.oneway.export.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import mobi.oneway.export.g.h;
import mobi.oneway.export.g.j;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static final String a = "POST";
    public static final String b = "HEAD";
    public static final String c = "Content-Type";
    public static final String d = "application/json";
    private static final int e = 15000;
    private String f;
    private String g;
    private String h;
    private final Map<String, String> i;
    private final Map<String, String> j;
    private int k;
    private int l;
    private boolean m;
    private File n;
    private boolean o;
    private volatile boolean p;
    private boolean q;
    private long r;
    private long s;
    private boolean t;
    private String[] u;
    private String v;
    private int w;

    public interface a {
        void a(int i, int i2, mobi.oneway.export.d.b bVar);

        void b(int i, int i2, mobi.oneway.export.d.b bVar);
    }

    public interface b {
        void a(Throwable th, mobi.oneway.export.d.b bVar);

        void a(mobi.oneway.export.d.b bVar);
    }

    public static class c extends Handler {
        public static final int a = 0;
        public static final int b = 1;
        private b c;

        public c(b bVar) {
            super(Looper.getMainLooper());
            this.c = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                this.c.a((mobi.oneway.export.d.b) message.obj);
            } else {
                mobi.oneway.export.d.b bVar = (mobi.oneway.export.d.b) message.obj;
                this.c.a(bVar.m(), bVar);
            }
        }
    }

    public f(String str) {
        this.i = new HashMap();
        this.j = new HashMap();
        this.k = 15000;
        this.l = 15000;
        this.m = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.t = false;
        b(str);
        this.r = System.currentTimeMillis();
    }

    public f(String[] strArr, String str) {
        this.i = new HashMap();
        this.j = new HashMap();
        this.k = 15000;
        this.l = 15000;
        this.m = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.t = false;
        this.u = strArr;
        this.v = str;
        this.w = 0;
        this.r = System.currentTimeMillis();
    }

    private int a(HttpURLConnection httpURLConnection, OutputStream outputStream, mobi.oneway.export.d.b bVar) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        int i;
        Thread threadCurrentThread = Thread.currentThread();
        BufferedInputStream bufferedInputStream = null;
        try {
            httpURLConnection.getContentLength();
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(httpURLConnection.getResponseCode() == 200 ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream());
                try {
                    byte[] bArr = new byte[1024];
                    int i2 = 0;
                    while (!e() && !threadCurrentThread.isInterrupted() && (i = bufferedInputStream2.read(bArr)) != -1) {
                        bufferedOutputStream.write(bArr, 0, i);
                        i2 += i;
                        bufferedOutputStream.flush();
                    }
                    bufferedOutputStream.flush();
                    if (!e() && threadCurrentThread.isInterrupted()) {
                        d();
                    }
                    j.a(outputStream, bufferedInputStream2, bufferedOutputStream);
                    return i2;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    j.a(outputStream, bufferedInputStream, bufferedOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    public static String a(Map<String, String> map, boolean z) {
        StringBuilder sb = new StringBuilder();
        for (String strD : map.keySet()) {
            String strD2 = map.get(strD);
            if (strD2 != null) {
                if (z) {
                    strD = d(strD);
                    strD2 = d(strD2);
                }
                sb.append(strD);
                sb.append('=');
                sb.append(strD2);
                sb.append('&');
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private void a(HttpURLConnection httpURLConnection) throws Throwable {
        String strH;
        if (!"POST".equals(g())) {
            return;
        }
        PrintWriter printWriter = null;
        try {
            httpURLConnection.setDoOutput(true);
            PrintWriter printWriter2 = new PrintWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8"));
            try {
                if (TextUtils.isEmpty(this.h)) {
                    if (!TextUtils.isEmpty(h())) {
                        strH = h();
                    }
                    printWriter2.flush();
                    j.a(printWriter2);
                }
                strH = this.h;
                printWriter2.write(strH);
                printWriter2.flush();
                j.a(printWriter2);
            } catch (Throwable th) {
                th = th;
                printWriter = printWriter2;
                j.a(printWriter);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean c(int i) {
        return i >= 200 && i < 300;
    }

    private static String d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    private boolean o() {
        return this.n != null;
    }

    private boolean p() {
        String[] strArr = this.u;
        return strArr != null && strArr.length > 0 && this.w < strArr.length - 1;
    }

    private HttpURLConnection q() throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(f()).openConnection();
        httpURLConnection.setInstanceFollowRedirects(this.m);
        httpURLConnection.setConnectTimeout(i());
        httpURLConnection.setReadTimeout(j());
        httpURLConnection.setRequestMethod(g());
        httpURLConnection.setRequestProperty(HttpRequest.HEADER_ACCEPT_ENCODING, "");
        if (!this.j.isEmpty()) {
            for (String str : this.j.keySet()) {
                httpURLConnection.setRequestProperty(str, this.j.get(str));
            }
        }
        if (URLUtil.isHttpsUrl(this.f)) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            httpsURLConnection.setHostnameVerifier(d.b());
            httpsURLConnection.setSSLSocketFactory(d.a());
        }
        return httpURLConnection;
    }

    private void r() {
        if (this.g == null) {
            this.g = "GET";
        }
        this.g = this.g.toUpperCase();
        if (j() <= 0) {
            throw new IllegalArgumentException("read timeout=" + j() + " is <= 0.");
        }
        if (this.k <= 0) {
            throw new IllegalArgumentException("connect timeout=" + i() + " is <= 0.");
        }
        String[] strArr = this.u;
        if (strArr != null && strArr.length > 0 && !TextUtils.isEmpty(this.v)) {
            this.f = this.u[this.w] + this.v;
        }
        if (this.i.isEmpty()) {
            return;
        }
        String strA = a(this.i, true);
        if ("POST".equals(this.g) && TextUtils.isEmpty(this.h)) {
            this.h = strA;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f);
        sb.append(this.f.indexOf("?") > 0 ? "&" : "?");
        this.f = sb.toString();
        this.f += strA;
    }

    public f a(int i) {
        this.k = i;
        return this;
    }

    public f a(int i, int i2) {
        a(i);
        b(i2);
        return this;
    }

    public f a(File file) {
        return a(file, false);
    }

    public f a(File file, boolean z) {
        this.n = file;
        this.o = z;
        if (z) {
            a(HttpHeaders.RANGE, "bytes=" + file.length() + "-");
        }
        return this;
    }

    public f a(String str) {
        this.h = str;
        a("Content-Type", "application/json");
        return this;
    }

    public f a(String str, Object obj) {
        if (obj == null) {
            return this;
        }
        this.i.put(str, String.valueOf(obj));
        return this;
    }

    public f a(String str, String str2) {
        this.j.put(str, str2);
        return this;
    }

    public f a(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            this.j.putAll(map);
        }
        return this;
    }

    public f a(JSONArray jSONArray) {
        this.h = jSONArray.toString();
        a("Content-Type", "application/json");
        return this;
    }

    public f a(JSONObject jSONObject) {
        this.h = jSONObject.toString();
        a("Content-Type", "application/json");
        return this;
    }

    public f a(boolean z) {
        this.q = z;
        return this;
    }

    public boolean a() {
        return this.q;
    }

    public f b(int i) {
        this.l = i;
        return this;
    }

    public f b(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            this.i.putAll(map);
        }
        return this;
    }

    public f b(boolean z) {
        this.t = z;
        return this;
    }

    public void b(String str) {
        this.f = str;
    }

    public boolean b() {
        return this.t;
    }

    public Map<String, String> c() {
        return this.i;
    }

    public f c(String str) {
        this.g = str;
        return this;
    }

    public f c(boolean z) {
        this.m = z;
        return this;
    }

    public void d() {
        this.p = true;
    }

    public boolean e() {
        return this.p;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    public String h() {
        return new URL(this.f).getQuery();
    }

    public int i() {
        return this.k;
    }

    public int j() {
        return this.l;
    }

    public String k() {
        return n().d();
    }

    public byte[] l() {
        return n().c();
    }

    public JSONObject m() {
        return new JSONObject(k());
    }

    public mobi.oneway.export.d.b n() throws Throwable {
        HttpURLConnection httpURLConnectionQ;
        this.s = System.currentTimeMillis();
        mobi.oneway.export.d.b bVar = new mobi.oneway.export.d.b(this);
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                r();
                httpURLConnectionQ = q();
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            a(httpURLConnectionQ);
            int responseCode = httpURLConnectionQ.getResponseCode();
            bVar.a(responseCode);
            bVar.a(httpURLConnectionQ.getHeaderFields());
            int contentLength = httpURLConnectionQ.getContentLength();
            bVar.a(contentLength);
            if (!this.q) {
                if (o()) {
                    bVar.a(this.n);
                    h.c(this.n.getParent(), (String) null);
                    a(httpURLConnectionQ, new FileOutputStream(this.n, this.o), bVar);
                } else {
                    if (contentLength > 2097152) {
                        throw new IOException("Body is too large to load in memory: contentLength = " + contentLength + " B");
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    a(httpURLConnectionQ, byteArrayOutputStream, bVar);
                    bVar.a(byteArrayOutputStream.toByteArray());
                }
            }
            if (!p() || c(responseCode)) {
                j.a(httpURLConnectionQ);
                return bVar;
            }
            this.w++;
            mobi.oneway.export.d.b bVarN = n();
            j.a(httpURLConnectionQ);
            return bVarN;
        } catch (IOException e3) {
            e = e3;
            httpURLConnection = httpURLConnectionQ;
            if (!p()) {
                throw e;
            }
            this.w++;
            mobi.oneway.export.d.b bVarN2 = n();
            j.a(httpURLConnection);
            return bVarN2;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = httpURLConnectionQ;
            j.a(httpURLConnection);
            throw th;
        }
    }
}
