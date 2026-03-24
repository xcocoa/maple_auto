package z2;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public class o000000O implements o00000O0 {
    private static final String OooO0O0 = "Content-Type";
    public final HttpClient OooO00o;

    public static final class OooO00o extends HttpEntityEnclosingRequestBase {
        public static final String OooO00o = "PATCH";

        public OooO00o() {
        }

        public OooO00o(String str) {
            setURI(URI.create(str));
        }

        public OooO00o(URI uri) {
            setURI(uri);
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return OooO00o;
        }
    }

    public o000000O(HttpClient httpClient) {
        this.OooO00o = httpClient;
    }

    private static void OooO0O0(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    public static HttpUriRequest OooO0OO(Request<?> request, Map<String, String> map) throws AuthFailureError {
        switch (request.OooOOOo()) {
            case -1:
                byte[] bArrOooOOoo = request.OooOOoo();
                if (bArrOooOOoo == null) {
                    return new HttpGet(request.OooOoo());
                }
                HttpPost httpPost = new HttpPost(request.OooOoo());
                httpPost.addHeader("Content-Type", request.OooOo00());
                httpPost.setEntity(new ByteArrayEntity(bArrOooOOoo));
                return httpPost;
            case 0:
                return new HttpGet(request.OooOoo());
            case 1:
                HttpPost httpPost2 = new HttpPost(request.OooOoo());
                httpPost2.addHeader("Content-Type", request.OooOO0O());
                OooO0o(httpPost2, request);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(request.OooOoo());
                httpPut.addHeader("Content-Type", request.OooOO0O());
                OooO0o(httpPut, request);
                return httpPut;
            case 3:
                return new HttpDelete(request.OooOoo());
            case 4:
                return new HttpHead(request.OooOoo());
            case 5:
                return new HttpOptions(request.OooOoo());
            case 6:
                return new HttpTrace(request.OooOoo());
            case 7:
                OooO00o oooO00o = new OooO00o(request.OooOoo());
                oooO00o.addHeader("Content-Type", request.OooOO0O());
                OooO0o(oooO00o, request);
                return oooO00o;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    private static List<NameValuePair> OooO0Oo(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (String str : map.keySet()) {
            arrayList.add(new BasicNameValuePair(str, map.get(str)));
        }
        return arrayList;
    }

    private static void OooO0o(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Request<?> request) throws AuthFailureError {
        byte[] bArrOooOO0 = request.OooOO0();
        if (bArrOooOO0 != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(bArrOooOO0));
        }
    }

    @Override // z2.o00000O0
    public HttpResponse OooO00o(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        HttpUriRequest httpUriRequestOooO0OO = OooO0OO(request, map);
        OooO0O0(httpUriRequestOooO0OO, map);
        OooO0O0(httpUriRequestOooO0OO, request.OooOOOO());
        OooO0o0(httpUriRequestOooO0OO);
        HttpParams params = httpUriRequestOooO0OO.getParams();
        int iOooOoOO = request.OooOoOO();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, iOooOoOO);
        return this.OooO00o.execute(httpUriRequestOooO0OO);
    }

    public void OooO0o0(HttpUriRequest httpUriRequest) throws IOException {
    }
}
