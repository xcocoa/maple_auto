package com.octopus.ad.internal.network;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.github.kevinsawicki.http.HttpRequest;
import com.octopus.ad.AdRequest;
import com.octopus.ad.R;
import com.octopus.ad.b.a;
import com.octopus.ad.b.b;
import com.octopus.ad.b.d;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.d;
import com.octopus.ad.internal.e;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.utilities.DeviceInfo;
import com.octopus.ad.internal.utilities.DeviceInfoUtil;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.HashingFunctions;
import com.octopus.ad.internal.utilities.SPUtils;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.UserEnvInfo;
import com.octopus.ad.internal.utilities.UserEnvInfoUtil;
import com.octopus.ad.internal.utilities.WebviewUtil;
import com.octopus.ad.utils.b.f;
import com.octopus.ad.utils.b.g;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AsyncTask<Void, Integer, ServerResponse> {
    private SoftReference<e> a;
    private final Bundle d;
    private boolean e;
    private int f;
    private final Set<String> g;
    private final Set<String> h;
    private Date i;
    private String j;
    private int k;
    private String l;
    private int m;
    private boolean n;
    private static final ServerResponse c = new ServerResponse(true);
    public static final String b = HashingFunctions.md5("emulator");

    /* JADX INFO: renamed from: com.octopus.ad.internal.network.a$a, reason: collision with other inner class name */
    public static final class C0197a {
        private Date d;
        private String e;
        private String h;
        private boolean j;
        private final HashSet<String> a = new HashSet<>();
        private final Bundle b = new Bundle();
        private final HashSet<String> c = new HashSet<>();
        private int f = -1;
        private boolean g = false;
        private int i = -1;

        public Bundle a(Class<? extends Object> cls) {
            return this.b.getBundle(cls.getName());
        }

        public Date a() {
            return this.d;
        }

        public void a(int i) {
            this.f = i;
        }

        public void a(Class<? extends Object> cls, Bundle bundle) {
            this.b.putBundle(cls.getName(), bundle);
        }

        public void a(String str) {
            this.a.add(str);
        }

        public void a(Date date) {
            this.d = date;
        }

        public void a(boolean z) {
            this.i = z ? 1 : 0;
        }

        public String b() {
            return this.e;
        }

        public void b(String str) {
            this.c.add(str);
        }

        public void b(boolean z) {
            this.j = z;
        }

        public int c() {
            return this.f;
        }

        public void c(String str) {
            this.e = str;
        }

        public Set<String> d() {
            return this.a;
        }

        public void d(String str) {
            this.h = str;
        }
    }

    public a() {
        this.g = new HashSet();
        this.d = null;
        this.h = new HashSet();
    }

    public a(C0197a c0197a) {
        this.i = c0197a.d;
        this.j = c0197a.e;
        this.k = c0197a.f;
        this.g = Collections.unmodifiableSet(c0197a.a);
        this.d = c0197a.b;
        this.h = Collections.unmodifiableSet(c0197a.c);
        this.e = c0197a.g;
        this.l = c0197a.h;
        this.m = c0197a.i;
        this.n = c0197a.j;
    }

    private HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        return httpURLConnection;
    }

    private void a(int i) {
        e eVar = this.a.get();
        if (eVar != null) {
            eVar.a(i);
        }
        HaoboLog.clearLastResponse();
    }

    private void a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setRequestProperty("User-Agent", m.a().h());
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpRequest.HEADER_ACCEPT, "application/json");
        String cookie = WebviewUtil.getCookie();
        if (!TextUtils.isEmpty(cookie)) {
            httpURLConnection.setRequestProperty("Cookie", cookie);
        }
        httpURLConnection.setRequestProperty("Connect-Length", Integer.toString(bArr.length));
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArr);
        outputStream.flush();
        outputStream.close();
    }

    private boolean b(int i) {
        if (i == 200) {
            return true;
        }
        HaoboLog.i(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.http_bad_status, i));
        return false;
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ServerResponse doInBackground(Void... voidArr) {
        d dVarB;
        String str;
        int i;
        String strF;
        String string = "";
        e eVar = this.a.get();
        if (eVar == null || (dVarB = eVar.b()) == null) {
            return null;
        }
        try {
            boolean z = dVarB.k() == l.PREFETCH;
            m mVarA = m.a();
            DeviceInfo deviceInfo = DeviceInfo.getInstance();
            d.a aVarA = new d.a.C0193a().a(deviceInfo.sdkUID).k(DeviceInfo.density).l(DeviceInfo.densityDpi).b(com.octopus.ad.utils.a.b.a(mVarA.g())).m(com.octopus.ad.utils.a.b.d(mVarA.g())).o(g.a(mVarA.g())).p(g.b(mVarA.g())).q(deviceInfo.bootMark).r(deviceInfo.updateMark).c("").d(deviceInfo.os).a(e.EnumC0194e.PLATFORM_ANDROID).a(deviceInfo.devType).e(deviceInfo.brand).f(deviceInfo.model).g(deviceInfo.manufacturer).h(deviceInfo.resolution).i(deviceInfo.screenSize).j(deviceInfo.language).n(deviceInfo.root).s(deviceInfo.agVercode).t(deviceInfo.hmsVercode).a(deviceInfo.wxInstalled).u(DeviceInfo.physicalMemoryByte).v(DeviceInfo.harddiskSizeByte).w(deviceInfo.appList).a();
            UserEnvInfo userEnvInfo = UserEnvInfo.getInstance();
            d.c cVarA = new d.c.a().a(userEnvInfo.f5net).a(userEnvInfo.isp).a();
            String strD = mVarA.d();
            if ("OctopusGroup".equals(dVarB.d())) {
                strF = mVarA.e();
                if (!TextUtils.isEmpty(strF)) {
                    strD = strF;
                }
            } else {
                strF = mVarA.f();
                if (!TextUtils.isEmpty(strF)) {
                    strD = strF;
                }
            }
            a.b.C0190a c0190aC = new a.b.C0190a().a("1.5.8.9").a(e.i.SRC_APP).d(UserEnvInfoUtil.getVersionName(m.a().h)).a(z ? e.g.REQ_WIFI_PRELOAD : e.g.REQ_AD).a(com.octopus.ad.utils.b.l.c()).b(strD).c("OctopusGroup".equals(dVarB.d()) ? dVarB.e() : "").a(aVarA).a(cVarA).d(com.octopus.ad.utils.b.l.e(dVarB.b())).e(com.octopus.ad.utils.b.l.f(dVarB.b())).f(com.octopus.ad.utils.b.l.d(dVarB.b())).b(com.octopus.ad.utils.b.l.a(dVarB.b())).c(com.octopus.ad.utils.b.l.c(dVarB.b()));
            if (z) {
                for (String str2 : m.a().p()) {
                    if (!StringUtil.isEmpty(str2)) {
                        c0190aC.a(new a.C0188a.C0189a().a(str2).c(dVarB.a()).a());
                    }
                }
            } else {
                c0190aC.a(new a.C0188a.C0189a().a(dVarB.c()).c(dVarB.a()).b(dVarB.m()).a());
            }
            a.b bVarA = c0190aC.a();
            Boolean bool = (Boolean) SPUtils.getFromGroupSdk(m.a().h, "encrypt", Boolean.TRUE);
            if (bool == null || bool.booleanValue()) {
                String strA = com.octopus.ad.utils.b.a.a(com.octopus.ad.utils.b.e.a(), bVarA.toString());
                if (strA != null) {
                    string = strA;
                }
                Log.i("requestData:", string);
            } else {
                string = bVarA.toString();
            }
            byte[] bytes = string.getBytes();
            f.d("octopus", "sdkRequest:" + bVarA.toString());
            String strJ = mVarA.j();
            if (!"OctopusGroup".equals(dVarB.d())) {
                strJ = strJ + "&v=1";
            }
            f.d("octopus", "getRequestBaseUrl:" + strJ);
            HaoboLog.setLastRequest(bVarA.toString());
            HaoboLog.i(HaoboLog.httpReqLogTag, HaoboLog.getString(R.string.fetch_url, HaoboLog.getLastRequest()));
            HttpURLConnection httpURLConnectionA = a(new URL(strJ));
            a(httpURLConnectionA, bytes);
            httpURLConnectionA.connect();
            this.f = httpURLConnectionA.getResponseCode();
            if (!b(httpURLConnectionA.getResponseCode())) {
                return c;
            }
            if (httpURLConnectionA.getContentLength() == 0) {
                HaoboLog.e(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.response_blank));
            }
            InputStream inputStream = httpURLConnectionA.getInputStream();
            b.q qVarA = b.q.a(inputStream);
            inputStream.close();
            return new ServerResponse(qVarA, httpURLConnectionA.getHeaderFields(), dVarB.k());
        } catch (MalformedURLException unused) {
            str = HaoboLog.httpReqLogTag;
            i = R.string.http_url_malformed;
            HaoboLog.e(str, HaoboLog.getString(i));
            return c;
        } catch (IOException unused2) {
            str = HaoboLog.httpReqLogTag;
            i = R.string.http_io;
            HaoboLog.e(str, HaoboLog.getString(i));
            return c;
        } catch (IllegalArgumentException unused3) {
            str = HaoboLog.httpReqLogTag;
            i = R.string.http_unknown;
            HaoboLog.e(str, HaoboLog.getString(i));
            return c;
        } catch (SecurityException unused4) {
            str = HaoboLog.httpReqLogTag;
            i = R.string.permissions_internet;
            HaoboLog.e(str, HaoboLog.getString(i));
            return c;
        } catch (Exception e) {
            e.printStackTrace();
            HaoboLog.e(HaoboLog.httpReqLogTag, Log.getStackTraceString(e));
            str = HaoboLog.httpReqLogTag;
            i = R.string.unknown_exception;
            HaoboLog.e(str, HaoboLog.getString(i));
            return c;
        }
    }

    public void a(com.octopus.ad.internal.e eVar) {
        int i;
        this.a = new SoftReference<>(eVar);
        com.octopus.ad.internal.d dVarB = eVar.b();
        if (dVarB == null || dVarB.b() == null) {
            i = AdRequest.ERROR_CODE_INVALID_REQUEST;
        } else {
            DeviceInfoUtil.retrieveDeviceInfo(dVarB.b().getApplicationContext());
            UserEnvInfoUtil.retrieveUserEnvInfo(dVarB.b().getApplicationContext());
            if (c.a(dVarB.b().getApplicationContext()).b(dVarB.b())) {
                return;
            } else {
                i = AdRequest.ERROR_CODE_INTERNAL_ERROR;
            }
        }
        a(i);
        cancel(true);
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(ServerResponse serverResponse) {
        int i;
        if (serverResponse == null || this.f == 204) {
            HaoboLog.v(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.no_response));
            i = AdRequest.ERROR_CODE_NO_FILL;
        } else {
            if (!serverResponse.a()) {
                com.octopus.ad.internal.e eVar = this.a.get();
                if (eVar != null) {
                    eVar.a(serverResponse);
                    return;
                }
                return;
            }
            i = AdRequest.ERROR_CODE_NETWORK_ERROR;
        }
        a(i);
    }

    @Override // android.os.AsyncTask
    @TargetApi(11)
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onCancelled(ServerResponse serverResponse) {
        super.onCancelled(serverResponse);
        HaoboLog.w(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.cancel_request));
    }
}
