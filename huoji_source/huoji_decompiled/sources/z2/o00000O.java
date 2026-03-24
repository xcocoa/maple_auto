package z2;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;
import z2.o000000O;

/* JADX INFO: loaded from: classes.dex */
public class o00000O implements o00000O0 {
    private static final String OooO0OO = "Content-Type";
    private final OooO00o OooO00o;
    private final SSLSocketFactory OooO0O0;

    public interface OooO00o {
        String OooO00o(String str);
    }

    public o00000O() {
        this(null);
    }

    public o00000O(OooO00o oooO00o) {
        this(oooO00o, null);
    }

    public o00000O(OooO00o oooO00o, SSLSocketFactory sSLSocketFactory) {
        this.OooO00o = oooO00o;
        this.OooO0O0 = sSLSocketFactory;
    }

    private static void OooO0O0(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        byte[] bArrOooOO0 = request.OooOO0();
        if (bArrOooOO0 != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", request.OooOO0O());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrOooOO0);
            dataOutputStream.close();
        }
    }

    private static HttpEntity OooO0Oo(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException unused) {
            errorStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(errorStream);
        basicHttpEntity.setContentLength(httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    public static void OooO0o(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        String str;
        String str2;
        switch (request.OooOOOo()) {
            case -1:
                byte[] bArrOooOOoo = request.OooOOoo();
                if (bArrOooOOoo != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", request.OooOo00());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(bArrOooOOoo);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                str = "GET";
                httpURLConnection.setRequestMethod(str);
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                OooO0O0(httpURLConnection, request);
                return;
            case 2:
                str2 = HttpRequest.METHOD_PUT;
                httpURLConnection.setRequestMethod(str2);
                OooO0O0(httpURLConnection, request);
                return;
            case 3:
                str = HttpRequest.METHOD_DELETE;
                httpURLConnection.setRequestMethod(str);
                return;
            case 4:
                str = "HEAD";
                httpURLConnection.setRequestMethod(str);
                return;
            case 5:
                str = HttpRequest.METHOD_OPTIONS;
                httpURLConnection.setRequestMethod(str);
                return;
            case 6:
                str = HttpRequest.METHOD_TRACE;
                httpURLConnection.setRequestMethod(str);
                return;
            case 7:
                str2 = o000000O.OooO00o.OooO00o;
                httpURLConnection.setRequestMethod(str2);
                OooO0O0(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private HttpURLConnection OooO0o0(URL url, Request<?> request) throws IOException {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection httpURLConnectionOooO0OO = OooO0OO(url);
        int iOooOoOO = request.OooOoOO();
        httpURLConnectionOooO0OO.setConnectTimeout(iOooOoOO);
        httpURLConnectionOooO0OO.setReadTimeout(iOooOoOO);
        httpURLConnectionOooO0OO.setUseCaches(false);
        httpURLConnectionOooO0OO.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.OooO0O0) != null) {
            ((HttpsURLConnection) httpURLConnectionOooO0OO).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpURLConnectionOooO0OO;
    }

    @Override // z2.o00000O0
    public HttpResponse OooO00o(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        String strOooOoo = request.OooOoo();
        HashMap map2 = new HashMap();
        map2.putAll(request.OooOOOO());
        map2.putAll(map);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            String strOooO00o = oooO00o.OooO00o(strOooOoo);
            if (strOooO00o == null) {
                throw new IOException("URL blocked by rewriter: " + strOooOoo);
            }
            strOooOoo = strOooO00o;
        }
        HttpURLConnection httpURLConnectionOooO0o0 = OooO0o0(new URL(strOooOoo), request);
        for (String str : map2.keySet()) {
            httpURLConnectionOooO0o0.addRequestProperty(str, (String) map2.get(str));
        }
        OooO0o(httpURLConnectionOooO0o0, request);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (httpURLConnectionOooO0o0.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, httpURLConnectionOooO0o0.getResponseCode(), httpURLConnectionOooO0o0.getResponseMessage()));
        basicHttpResponse.setEntity(OooO0Oo(httpURLConnectionOooO0o0));
        for (Map.Entry<String, List<String>> entry : httpURLConnectionOooO0o0.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return basicHttpResponse;
    }

    public HttpURLConnection OooO0OO(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }
}
