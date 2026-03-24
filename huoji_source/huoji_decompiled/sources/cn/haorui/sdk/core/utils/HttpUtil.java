package cn.haorui.sdk.core.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.core.domain.HttpResponse;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.anythink.expressad.exoplayer.k.o;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import z2.hx;
import z2.jx;
import z2.kx;
import z2.mx;
import z2.ox;
import z2.qx;
import z2.rx;
import z2.sx;
import z2.tw;
import z2.tx;
import z2.uw;

/* JADX INFO: loaded from: classes.dex */
public final class HttpUtil {
    private static final String TAG = "HttpUtil";
    private static ox adClient;
    private static ox client;
    private static final mx MEDIA_TYPE_TEXT = mx.OooO0Oo("text/x-markdown; charset=utf-8");
    private static final mx MEDIA_TYPE_JPG = mx.OooO0Oo("image/png");
    private static final mx MEDIA_TYPE_AUDIO = mx.OooO0Oo("audio/mp3");
    private static final mx MEDIA_TYPE_VIDEO = mx.OooO0Oo(o.e);
    private static final mx MEDIA_TYPE_OBJECT = mx.OooO0Oo(OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
    private static final mx MEDIA_TYPE_JSON = mx.OooO0Oo("application/json; charset=utf-8");
    private static Handler handler = new Handler(Looper.getMainLooper());

    public static class a implements uw {
        public final /* synthetic */ HttpGetJsonCallback a;

        public a(HttpGetJsonCallback httpGetJsonCallback) {
            this.a = httpGetJsonCallback;
        }

        @Override // z2.uw
        public void onFailure(@NotNull tw twVar, @NotNull IOException iOException) {
            this.a.onFailure(iOException);
        }

        @Override // z2.uw
        public void onResponse(@NotNull tw twVar, @NotNull sx sxVar) {
            tx txVarOooOO0 = sxVar.OooOO0();
            OriginalResponse originalResponse = new OriginalResponse(sxVar.OoooooO(), sxVar.o00o0O());
            originalResponse.setHeaders(sxVar.o00Oo0());
            if (txVarOooOO0 != null) {
                try {
                    originalResponse.setBody(txVarOooOO0.string());
                } catch (Throwable th) {
                    originalResponse.setBody("");
                    th.printStackTrace();
                }
            }
            try {
                try {
                    this.a.onResponse(originalResponse);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } finally {
                sxVar.close();
            }
        }
    }

    public static class b implements uw {
        public final /* synthetic */ HttpGetJsonCallback a;

        public class a implements Runnable {
            public final /* synthetic */ IOException a;

            public a(IOException iOException) {
                this.a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.a.onFailure(this.a);
            }
        }

        /* JADX INFO: renamed from: cn.haorui.sdk.core.utils.HttpUtil$b$b, reason: collision with other inner class name */
        public class RunnableC0027b implements Runnable {
            public final /* synthetic */ OriginalResponse a;

            public RunnableC0027b(OriginalResponse originalResponse) {
                this.a = originalResponse;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    b.this.a.onResponse(this.a);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        public b(HttpGetJsonCallback httpGetJsonCallback) {
            this.a = httpGetJsonCallback;
        }

        @Override // z2.uw
        public void onFailure(@NotNull tw twVar, @NotNull IOException iOException) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new a(iOException));
            }
        }

        @Override // z2.uw
        public void onResponse(@NotNull tw twVar, @NotNull sx sxVar) {
            tx txVarOooOO0 = sxVar.OooOO0();
            OriginalResponse originalResponse = new OriginalResponse(sxVar.OoooooO(), sxVar.o00o0O());
            originalResponse.setHeaders(sxVar.o00Oo0());
            if (txVarOooOO0 != null) {
                try {
                    originalResponse.setBody(txVarOooOO0.string());
                } catch (Throwable th) {
                    originalResponse.setBody("");
                    th.printStackTrace();
                }
            }
            sxVar.close();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new RunnableC0027b(originalResponse));
                return;
            }
            try {
                this.a.onResponse(originalResponse);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static class c implements uw {
        public final /* synthetic */ HttpGetWithStringCallback a;

        public class a implements Runnable {
            public final /* synthetic */ IOException a;

            public a(IOException iOException) {
                this.a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.a.onFailure(this.a);
                Integer num = cn.haorui.sdk.core.exception.a.a;
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ HttpResponse a;

            public b(HttpResponse httpResponse) {
                this.a = httpResponse;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.a.onResponse(this.a);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        public c(HttpGetWithStringCallback httpGetWithStringCallback) {
            this.a = httpGetWithStringCallback;
        }

        @Override // z2.uw
        public void onFailure(@NotNull tw twVar, @NotNull IOException iOException) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new a(iOException));
            }
        }

        @Override // z2.uw
        public void onResponse(@NotNull tw twVar, @NotNull sx sxVar) {
            HttpResponse<String> httpResponse = new HttpResponse<>();
            if (sxVar.o00o0O()) {
                httpResponse.setSuccessful(true);
                sxVar.OooOO0();
            } else {
                httpResponse.setSuccessful(false);
                httpResponse.setErrorCode(sxVar.OoooooO());
                httpResponse.setErrorDescription(sxVar.o00ooo());
            }
            sxVar.close();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new b(httpResponse));
                return;
            }
            try {
                this.a.onResponse(httpResponse);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static class d implements HttpGetJsonCallback<OriginalResponse> {
        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(HttpUtil.TAG, "onFailure: " + iOException.getMessage());
        }

        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onResponse(OriginalResponse originalResponse) {
        }
    }

    public static class e implements uw {
        public final /* synthetic */ HttpGetJsonCallback a;

        public class a implements Runnable {
            public final /* synthetic */ IOException a;

            public a(IOException iOException) {
                this.a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.a.onFailure(this.a);
                Integer num = cn.haorui.sdk.core.exception.a.a;
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ sx a;

            public b(sx sxVar) {
                this.a = sxVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.a.onResponse(this.a);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        public e(HttpGetJsonCallback httpGetJsonCallback) {
            this.a = httpGetJsonCallback;
        }

        @Override // z2.uw
        public void onFailure(@NotNull tw twVar, @NotNull IOException iOException) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new a(iOException));
            }
        }

        @Override // z2.uw
        public void onResponse(@NotNull tw twVar, @NotNull sx sxVar) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new b(sxVar));
                return;
            }
            try {
                this.a.onResponse(sxVar);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static class f implements HttpGetJsonCallback<OriginalResponse> {
        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onFailure(@NotNull IOException iOException) {
            LogUtil.e(HttpUtil.TAG, "Task_onFailure: " + iOException.getMessage());
        }

        @Override // cn.haorui.sdk.core.utils.HttpGetJsonCallback
        public void onResponse(OriginalResponse originalResponse) {
            LogUtil.e(HttpUtil.TAG, "Task_onResponse: " + originalResponse.getBody());
        }
    }

    public static class g implements uw {
        public final /* synthetic */ HttpGetBytesCallback a;

        public class a implements Runnable {
            public final /* synthetic */ IOException a;

            public a(IOException iOException) {
                this.a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.a.onFailure(this.a);
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ HttpResponse a;

            public b(HttpResponse httpResponse) {
                this.a = httpResponse;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    g.this.a.onResponse(this.a);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public g(HttpGetBytesCallback httpGetBytesCallback) {
            this.a = httpGetBytesCallback;
        }

        @Override // z2.uw
        public void onFailure(@NotNull tw twVar, IOException iOException) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                HttpUtil.handler.post(new a(iOException));
            } else {
                this.a.onFailure(iOException);
            }
        }

        @Override // z2.uw
        public void onResponse(@NotNull tw twVar, @NotNull sx sxVar) {
            String strO00ooo;
            HttpResponse httpResponse = new HttpResponse();
            try {
                if (!sxVar.o00o0O()) {
                    httpResponse.setSuccessful(false);
                    httpResponse.setErrorCode(sxVar.OoooooO());
                    strO00ooo = sxVar.o00ooo();
                } else {
                    if (sxVar.OooOO0() != null) {
                        byte[] bArrBytes = sxVar.OooOO0().bytes();
                        httpResponse.setSuccessful(true);
                        httpResponse.setResponseBody(bArrBytes);
                        SdkHandler.getInstance().runOnUiThread(new b(httpResponse));
                    }
                    httpResponse.setSuccessful(false);
                    httpResponse.setErrorCode(sxVar.OoooooO());
                    strO00ooo = "bad file";
                }
                httpResponse.setErrorDescription(strO00ooo);
                SdkHandler.getInstance().runOnUiThread(new b(httpResponse));
            } finally {
                sxVar.close();
            }
        }
    }

    public static class h implements Runnable {
        public final /* synthetic */ HttpGetBytesCallback a;

        public h(HttpGetBytesCallback httpGetBytesCallback) {
            this.a = httpGetBytesCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.onFailure(null);
        }
    }

    static {
        ox.OooO0O0 oooO0O0 = new ox.OooO0O0();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        adClient = oooO0O0.OooO(30L, timeUnit).OooOoo(30L, timeUnit).OooO0Oo();
        client = new ox.OooO0O0().OooO(30L, timeUnit).OooOoo(30L, timeUnit).OooO0Oo();
    }

    public static void asyncGetErrorReport(String str, Integer num, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (num == null) {
            num = -1;
        }
        String strReplaceMacros = replaceMacros(str, num.intValue(), str2);
        LogUtil.d(TAG, "错误上报： " + strReplaceMacros);
        asyncGetJson(strReplaceMacros, null, new d());
    }

    public static void asyncGetFile(String str, @NotNull HttpGetBytesCallback httpGetBytesCallback) {
        try {
            client.OooO00o(new qx.OooO00o().OooOOo0(str).OooO0O0()).OooOO0(new g(httpGetBytesCallback));
        } catch (Exception e2) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                handler.post(new h(httpGetBytesCallback));
            } else {
                httpGetBytesCallback.onFailure(null);
            }
            e2.printStackTrace();
        }
    }

    public static void asyncGetJson(@NotNull String str, Map<String, String> map, @NotNull HttpGetJsonCallback<OriginalResponse> httpGetJsonCallback) {
        try {
            kx kxVarOooOo0 = kx.OooOo0(str);
            if (kxVarOooOo0 == null) {
                return;
            }
            kx.OooO00o oooO00oOooOOoo = kxVarOooOo0.OooOOoo();
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    oooO00oOooOOoo.OooO0oO(entry.getKey(), entry.getValue());
                }
            }
            qx qxVarOooO0O0 = new qx.OooO00o().OooOOoo(oooO00oOooOOoo.OooO0oo()).OooO0o().OooO0O0();
            LogUtil.d(TAG, "url[" + qxVarOooO0O0.OooOO0O().OoooO0O().toString() + "]");
            adClient.OooO00o(qxVarOooO0O0).OooOO0(new b(httpGetJsonCallback));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void asyncGetTaskReport(String str) {
        String strSubstring;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String string = TextUtils.replace(str, new String[]{"__REQTIME__"}, new String[]{String.valueOf(System.currentTimeMillis())}).toString();
        if (TextUtils.isEmpty(string) || !string.contains("&")) {
            strSubstring = "";
        } else {
            try {
                Uri uri = Uri.parse(string);
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                TreeSet<String> treeSet = new TreeSet(new cn.haorui.sdk.core.taskcenter.g());
                treeSet.addAll(queryParameterNames);
                Log.e("SignUtil", "sortParams: " + treeSet.toString());
                StringBuilder sb = new StringBuilder();
                for (String str2 : treeSet) {
                    String queryParameter = uri.getQueryParameter(str2);
                    sb.append(str2);
                    sb.append("=");
                    sb.append(queryParameter);
                    sb.append("&");
                }
                strSubstring = sb.toString().substring(0, sb.length() - 1);
            } catch (Exception e2) {
                e2.printStackTrace();
                strSubstring = "";
            }
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest((strSubstring + "GlSjz6xbhIJ&KEK*6!pykPBDSe@6wP$M").getBytes("UTF-8"));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b2 : bArrDigest) {
                int i = b2 & 255;
                if (i < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i));
            }
            asyncGetJson(string + "&sign=" + sb2.toString(), null, new f());
        } catch (UnsupportedEncodingException e3) {
            throw new RuntimeException("UnsupportedEncodingException", e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException("NoSuchAlgorithmException", e4);
        }
    }

    private static void asyncGetWithHeaders(@NotNull String str, @Nullable Map<String, String> map, @NotNull HttpGetWithStringCallback httpGetWithStringCallback) {
        try {
            jx.OooO00o oooO00o = new jx.OooO00o();
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    oooO00o.OooO0O0(entry.getKey(), entry.getValue());
                }
            }
            kx kxVarOooOo0 = kx.OooOo0(str);
            if (kxVarOooOo0 == null) {
                return;
            }
            client.OooO00o(new qx.OooO00o().OooO(oooO00o.OooO0oo()).OooOOoo(kxVarOooOo0.OooOOoo().OooO0oo()).OooO0o().OooO0O0()).OooOO0(new c(httpGetWithStringCallback));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void asyncGetWithWebViewUA(@NonNull Context context, @NotNull String str, @NotNull HttpGetWithStringCallback httpGetWithStringCallback) {
        String defaultUserAgent;
        LogUtil.d(TAG, "url=" + str);
        HashMap map = new HashMap();
        try {
            defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        } catch (Exception e2) {
            e2.printStackTrace();
            defaultUserAgent = "";
        } catch (Throwable unused) {
            defaultUserAgent = "";
        }
        map.put("X-Requested-With", "");
        map.put("User-Agent", defaultUserAgent);
        asyncGetWithHeaders(str, map, httpGetWithStringCallback);
    }

    public static void asyncPostGetJson(String str, String str2, @NotNull HttpGetJsonCallback<sx> httpGetJsonCallback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        client.OooO00o(new qx.OooO00o().OooOOo0(str).OooOO0o(rx.create(mx.OooO0Oo("application/json; charset=utf-8"), str2)).OooO0O0()).OooOO0(new e(httpGetJsonCallback));
    }

    public static void asyncRequestJson(@NotNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NotNull HttpGetJsonCallback<OriginalResponse> httpGetJsonCallback) {
        try {
            kx kxVarOooOo0 = kx.OooOo0(str);
            if (kxVarOooOo0 == null) {
                return;
            }
            kx.OooO00o oooO00oOooOOoo = kxVarOooOo0.OooOOoo();
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    oooO00oOooOOoo.OooO0oO(entry.getKey(), entry.getValue());
                }
            }
            qx.OooO00o oooO00oOooOOoo2 = new qx.OooO00o().OooOOoo(oooO00oOooOOoo.OooO0oo());
            if (map2 == null) {
                oooO00oOooOOoo2.OooO0o();
            } else {
                hx.OooO00o oooO00o = new hx.OooO00o();
                for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                    oooO00o.OooO00o(entry2.getKey(), entry2.getValue());
                }
                oooO00oOooOOoo2.OooOO0o(oooO00o.OooO0OO());
            }
            if (map3 != null) {
                jx.OooO00o oooO00o2 = new jx.OooO00o();
                for (Map.Entry<String, String> entry3 : map3.entrySet()) {
                    oooO00o2.OooO0O0(entry3.getKey(), entry3.getValue());
                }
                oooO00oOooOOoo2.OooO(oooO00o2.OooO0oo());
            }
            qx qxVarOooO0O0 = oooO00oOooOOoo2.OooO0O0();
            LogUtil.d(TAG, "url[" + qxVarOooO0O0.OooOO0O().OoooO0O().toString() + "]");
            adClient.OooO00o(qxVarOooO0O0).OooOO0(new a(httpGetJsonCallback));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void doCommonRequest(qx qxVar, uw uwVar) {
        client.OooO00o(qxVar).OooOO0(uwVar);
    }

    public static String replaceMacros(@NonNull String str, int i, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String[] strArr = {"__ERROR_CODE__", "__ERROR_MESSAGE__", "__MS_EVENT_SEC__", "__MS_EVENT_MSEC__"};
        String[] strArr2 = new String[4];
        strArr2[0] = i != 0 ? String.valueOf(i) : "__ERROR_CODE__";
        if (TextUtils.isEmpty(str2)) {
            str2 = "__ERROR_MESSAGE__";
        }
        strArr2[1] = str2;
        strArr2[2] = String.valueOf(jCurrentTimeMillis / 1000);
        strArr2[3] = String.valueOf(jCurrentTimeMillis);
        return TextUtils.replace(str, strArr, strArr2).toString();
    }
}
