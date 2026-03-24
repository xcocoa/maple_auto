package com.octopus.ad.internal.network;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import android.widget.Toast;
import com.octopus.ad.AdActivity;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.b.b;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.h;
import com.octopus.ad.internal.i;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.utilities.HTTPResponse;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ReportEventUtil;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.UrlUtil;
import com.octopus.ad.internal.utilities.WebviewUtil;
import com.octopus.ad.utils.b.d;
import com.octopus.ad.utils.b.f;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class ServerResponse {
    public static final String EXTRAS_KEY_MRAID = "MRAID";
    public static final String EXTRAS_KEY_ORIENTATION = "ORIENTATION";
    public static final String EXTRAS_KEY_REWARD_ITEM = "REWARD_ITEM";
    public static final String EXTRAS_KEY_SCALE = "SCALE";
    private int A;
    private boolean B;
    private b.C0191b.C0192b C;
    private b.C0191b.a D;
    private int E;
    private String F;
    private String G;
    private String H;
    private String I;
    private b.i J;
    private b.C0191b K;
    private b.m L;
    private b.t M;
    private List<b.j> N;
    private String O;
    private String P;
    private List<Pair<i, String>> Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private LinkedList<String> V;
    private HashMap<String, Object> W;
    private boolean X;
    private boolean Y;
    private com.octopus.ad.internal.nativead.c Z;
    private String a;
    private String b;
    private e.a c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    public String mDetectClickUrl;
    public String mDetectViewUrl;
    public l mMediaType;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private boolean s;
    private int t;
    private AdLogoInfo u;
    private AdLogoInfo v;
    private boolean w;
    private int x;
    private int y;
    private String z;

    public static class AdLogoInfo {
        public static int TYPE_PIC = 0;
        public static int TYPE_TEXT = 1;
        public String adurl;
        public int type = 0;

        /* JADX INFO: Access modifiers changed from: private */
        public void setAdurl(String str) {
            this.adurl = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(int i) {
            this.type = i;
        }

        public String getAdurl() {
            return this.adurl;
        }

        public int getType() {
            return this.type;
        }
    }

    public ServerResponse(b.q qVar, Map<String, List<String>> map, l lVar) {
        this.d = 0;
        this.e = 1;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.k = false;
        this.l = true;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = 0;
        this.r = 0;
        this.s = false;
        this.t = 0;
        this.u = new AdLogoInfo();
        this.v = new AdLogoInfo();
        this.w = false;
        this.B = false;
        this.Q = new LinkedList();
        this.V = new LinkedList<>();
        this.W = new HashMap<>();
        this.X = false;
        this.Y = false;
        if (qVar == null) {
            HaoboLog.clearLastResponse();
            return;
        }
        HaoboLog.setLastResponse(qVar.toString());
        HaoboLog.d(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.response_body, HaoboLog.getLastResponse()));
        this.mMediaType = lVar;
        a(map);
        a(qVar);
        b();
    }

    public ServerResponse(HTTPResponse hTTPResponse, l lVar) {
        this.d = 0;
        this.e = 1;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.k = false;
        this.l = true;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = 0;
        this.r = 0;
        this.s = false;
        this.t = 0;
        this.u = new AdLogoInfo();
        this.v = new AdLogoInfo();
        this.w = false;
        this.B = false;
        this.Q = new LinkedList();
        this.V = new LinkedList<>();
        this.W = new HashMap<>();
        this.X = false;
        this.Y = false;
        this.mMediaType = lVar;
        a(hTTPResponse.getHeaders());
        try {
            a(b.q.a(hTTPResponse.getResponseBinaryBody().toByteArray()));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public ServerResponse(boolean z) {
        this.d = 0;
        this.e = 1;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.k = false;
        this.l = true;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = 0;
        this.r = 0;
        this.s = false;
        this.t = 0;
        this.u = new AdLogoInfo();
        this.v = new AdLogoInfo();
        this.w = false;
        this.B = false;
        this.Q = new LinkedList();
        this.V = new LinkedList<>();
        this.W = new HashMap<>();
        this.X = false;
        this.Y = false;
        this.Y = z;
    }

    private String a(b.a aVar) {
        if (aVar.a() != e.f.RENDER_H5 && aVar.a() != e.f.RENDER_PIC) {
            return "";
        }
        if (aVar.a() == e.f.RENDER_PIC && aVar.d() > 0) {
            return "<!DOCTYPE html>\n<html lang=\"en\" style=\"width: 100%; height: 100%;\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" id=\"viewport\" content=\"width=device-width, height=device-height, initial-scale=1\">\n    <title>Document</title>\n</head>\n<body style=\"width: 100%; height: 100%; padding: 0; margin: 0;\">\n<img style=\"width: 100%; height: 100%\" src=\"https://v.behe.com/dsp20/ad/2017/5/5/28d147ed3e96a3ba8ac90703e4d66de2.jpg\" alt=\"\"/>\n</body>\n</html><!DOCTYPE html>".replace("https://v.behe.com/dsp20/ad/2017/5/5/28d147ed3e96a3ba8ac90703e4d66de2.jpg", aVar.c().get(0).b());
        }
        Matcher matcher = Pattern.compile("\\{(\\d+)\\.value\\}").matcher(aVar.b());
        HashMap map = new HashMap();
        for (int i = 0; i < aVar.d(); i++) {
            map.put(Integer.valueOf(i), aVar.c().get(i).b());
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            Integer numValueOf = Integer.valueOf(Integer.parseInt(matcher.group(1)));
            if (map.get(numValueOf) != null) {
                matcher.appendReplacement(stringBuffer, (String) map.get(numValueOf));
            } else {
                matcher.appendReplacement(stringBuffer, "");
                HaoboLog.e(HaoboLog.pbLogTag, HaoboLog.getString(R.string.invalid_string_placeholder, matcher.group(0)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private void a(int i) {
        List<b.j> listM;
        StringBuilder sb;
        b.C0191b c0191b = this.K;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listM.size(); i2++) {
            b.j jVar = listM.get(i2);
            if (jVar != null && !TextUtils.isEmpty(jVar.c())) {
                String strC = jVar.c();
                if (strC.startsWith("http://v.adintl.cn/deepLink")) {
                    if (this.B) {
                        sb = new StringBuilder();
                        sb.append(strC);
                        sb.append("&opt=1");
                    } else if (i != 0) {
                        sb = new StringBuilder();
                        sb.append(strC);
                        sb.append("&opt=");
                        sb.append(i);
                    }
                    strC = sb.toString();
                }
                new h(strC).execute(new Void[0]);
            }
        }
    }

    private void a(b.C0191b c0191b) {
        this.K = c0191b;
        this.N = c0191b.m();
        this.C = c0191b.l();
        this.D = c0191b.k();
        this.E = c0191b.c();
        this.F = c0191b.d();
        this.G = c0191b.e();
        this.H = c0191b.f();
        this.I = c0191b.g();
        this.J = c0191b.h();
        if (TextUtils.isEmpty(this.G)) {
            this.G = "octopus";
        }
        if (TextUtils.isEmpty(this.F)) {
            this.F = "Octopus";
        }
        if (TextUtils.isEmpty(this.H)) {
            this.H = "Ad Download";
        }
    }

    private void a(b.q qVar) {
        if (b(qVar)) {
            l lVar = this.mMediaType;
            if (lVar == l.PREFETCH) {
                if (d(qVar)) {
                    return;
                }
            } else if (lVar != l.NATIVE) {
                if (c(qVar)) {
                    return;
                }
            } else if (e(qVar)) {
                return;
            }
            f(qVar);
        }
    }

    private void a(Map<String, List<String>> map) {
        if (map != null) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                if (entry.getKey() != null) {
                    for (String str : entry.getValue()) {
                        if (!TextUtils.isEmpty(str)) {
                            HaoboLog.v(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.response_header, entry.getKey(), str));
                        }
                    }
                }
            }
        }
    }

    private void b() {
        if (this.V.isEmpty()) {
            return;
        }
        final m mVarA = m.a();
        mVarA.c().post(new Runnable() { // from class: com.octopus.ad.internal.network.ServerResponse.1
            @Override // java.lang.Runnable
            public void run() {
                int i;
                for (String str : ServerResponse.this.V) {
                    try {
                        InputStream inputStreamOpenStream = new URL(mVarA.b().a(str)).openStream();
                        byte[] bArr = new byte[1024];
                        while (i > 0) {
                            int i2 = inputStreamOpenStream.read(bArr);
                            i = i2 != -1 ? i - i2 : 1024000;
                        }
                    } catch (IOException unused) {
                        HaoboLog.v(HaoboLog.baseLogTag, "Ignored request: " + str);
                    }
                }
            }
        });
    }

    private boolean b(b.q qVar) {
        if (qVar.b() == 0) {
            return true;
        }
        HaoboLog.e(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.response_error, qVar.c(), qVar.d()));
        return false;
    }

    private boolean c(b.q qVar) {
        AdLogoInfo adLogoInfo;
        int i;
        AdLogoInfo adLogoInfo2;
        int i2;
        if (qVar.a() > 0) {
            b.s sVar = qVar.e().get(0);
            this.a = sVar.a();
            this.b = sVar.b();
            this.c = sVar.c();
            this.d = sVar.d();
            this.e = sVar.e() == e.h.PORTRAIT ? 1 : 2;
            this.i = Integer.parseInt(sVar.g());
            this.h = Integer.parseInt(sVar.h());
            if (sVar.i() != null && (getAdType() == e.a.ADP_TABLE || getAdType() == e.a.ADP_CUSTOMER)) {
                b.f fVarI = sVar.i();
                this.f = Integer.parseInt(fVarI.a());
                this.g = Integer.parseInt(fVarI.b());
            } else if (!StringUtil.isEmpty(sVar.b()) && getAdType() == e.a.ADP_IVIDEO) {
                addToExtras(EXTRAS_KEY_REWARD_ITEM, sVar.b());
            }
            this.j = sVar.r();
            this.k = sVar.s();
            this.l = sVar.p();
            this.m = sVar.u();
            this.n = sVar.q();
            this.o = sVar.l();
            this.p = sVar.n();
            this.q = sVar.o();
            this.r = sVar.m();
            this.s = sVar.t();
            this.L = sVar.j();
            this.M = sVar.k();
            this.A = sVar.v();
            this.y = sVar.f();
            List<b.d> listW = sVar.w();
            if (listW != null && listW.size() > 0) {
                this.x = listW.get(0).i();
                this.z = listW.get(0).j();
            }
            if (this.j && this.i == 0 && this.h == 0) {
                this.i = 720;
                this.h = 1280;
            }
            if (sVar.x() > 0) {
                int i3 = 0;
                for (b.d dVar : sVar.w()) {
                    if (i3 == 0) {
                        this.P = dVar.b();
                        f.a("OctopusAd", "mAdid = " + this.P);
                    }
                    if (dVar.h() <= 0 || dVar.g().get(0) == null) {
                        this.O = dVar.a();
                        b.c cVarE = dVar.e();
                        if (cVarE != null) {
                            if (TextUtils.isEmpty(cVarE.a())) {
                                this.u.setAdurl(cVarE.b());
                                adLogoInfo = this.u;
                                i = AdLogoInfo.TYPE_TEXT;
                            } else {
                                this.u.setAdurl(cVarE.a());
                                adLogoInfo = this.u;
                                i = AdLogoInfo.TYPE_PIC;
                            }
                            adLogoInfo.setType(i);
                            if (TextUtils.isEmpty(cVarE.c())) {
                                this.v.setAdurl(cVarE.d());
                                adLogoInfo2 = this.v;
                                i2 = AdLogoInfo.TYPE_TEXT;
                            } else {
                                this.v.setAdurl(cVarE.c());
                                adLogoInfo2 = this.v;
                                i2 = AdLogoInfo.TYPE_PIC;
                            }
                            adLogoInfo2.setType(i2);
                        }
                        if (dVar.d() > 0) {
                            for (b.a aVar : dVar.f()) {
                                if (this.l) {
                                    for (int i4 = 0; i4 < aVar.d(); i4++) {
                                        if (!StringUtil.isEmpty(aVar.c().get(i4).a())) {
                                            this.V.add(aVar.c().get(i4).b());
                                        }
                                    }
                                }
                                if ((aVar.a() == e.f.RENDER_VIDEO || aVar.a() == e.f.RENDER_VAST_VIDEO) && aVar.d() > 0) {
                                    this.Q.add(Pair.create(i.VIDEO, aVar.c().get(0).b()));
                                } else {
                                    String strA = a(aVar);
                                    this.Q.add(Pair.create(i.HTML, strA));
                                    if (strA.contains("mraid.js")) {
                                        addToExtras(EXTRAS_KEY_MRAID, Boolean.TRUE);
                                    }
                                }
                            }
                        }
                        if (dVar.c() != null) {
                            b.C0191b c0191bC = dVar.c();
                            a(c0191bC);
                            this.S = c0191bC.a();
                            this.U = c0191bC.i();
                            this.T = c0191bC.b();
                            b.j jVarJ = c0191bC.j();
                            if (jVarJ != null && !TextUtils.isEmpty(jVarJ.a())) {
                                this.mDetectViewUrl = jVarJ.a();
                            }
                            if (jVarJ != null && !TextUtils.isEmpty(jVarJ.b())) {
                                this.mDetectClickUrl = jVarJ.b();
                            }
                            if (jVarJ != null && !TextUtils.isEmpty(jVarJ.f())) {
                                this.R = jVarJ.f();
                            }
                        }
                    }
                    i3++;
                    if (!this.Q.isEmpty()) {
                        break;
                    }
                }
            }
        } else {
            HaoboLog.e(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.blank_ad));
        }
        if (this.Q.isEmpty()) {
            return false;
        }
        this.X = true;
        return true;
    }

    private boolean d(b.q qVar) {
        if (qVar.a() > 0) {
            for (b.s sVar : qVar.e()) {
                this.l = sVar.p();
                if (sVar.x() > 0) {
                    for (b.d dVar : sVar.w()) {
                        if (dVar.h() <= 0 || dVar.g().get(0) == null) {
                            if (dVar.d() > 0) {
                                for (b.a aVar : dVar.f()) {
                                    if (this.l) {
                                        for (int i = 0; i < aVar.d(); i++) {
                                            if (!StringUtil.isEmpty(aVar.c().get(i).a())) {
                                                this.V.add(aVar.c().get(i).b());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (this.V.isEmpty()) {
            return false;
        }
        this.X = true;
        return true;
    }

    private boolean e(b.q qVar) {
        AdLogoInfo adLogoInfo;
        int i;
        AdLogoInfo adLogoInfo2;
        int i2;
        if (qVar.a() > 0) {
            b.s sVar = qVar.e().get(0);
            this.a = sVar.a();
            this.b = sVar.b();
            this.c = sVar.c();
            this.d = sVar.d();
            this.e = sVar.e() == e.h.PORTRAIT ? 1 : 2;
            this.i = Integer.parseInt(sVar.g());
            this.h = Integer.parseInt(sVar.h());
            this.y = sVar.f();
            List<b.d> listW = sVar.w();
            if (listW != null && listW.size() > 0) {
                this.x = listW.get(0).i();
                this.z = listW.get(0).j();
            }
            this.j = sVar.r();
            this.k = sVar.s();
            this.l = sVar.p();
            this.m = sVar.u();
            this.n = sVar.q();
            this.o = sVar.l();
            this.p = sVar.n();
            this.q = sVar.o();
            this.r = sVar.m();
            this.s = sVar.t();
            this.L = sVar.j();
            this.M = sVar.k();
            this.A = sVar.v();
            if (this.j && this.i == 0 && this.h == 0) {
                this.i = 720;
                this.h = 1280;
            }
            if (sVar.x() > 0) {
                for (b.d dVar : sVar.w()) {
                    if (dVar.h() <= 0 || dVar.g().get(0) == null) {
                        this.O = dVar.a();
                        if (dVar.d() >= 0) {
                            for (b.a aVar : dVar.f()) {
                                if (this.l) {
                                    for (int i3 = 0; i3 < aVar.d(); i3++) {
                                        if (!StringUtil.isEmpty(aVar.c().get(i3).a())) {
                                            this.V.add(aVar.c().get(i3).b());
                                        }
                                    }
                                }
                                if (aVar.a() == e.f.RENDER_JSON && aVar.d() > 0) {
                                    try {
                                        b.c cVarE = dVar.e();
                                        if (cVarE != null) {
                                            if (TextUtils.isEmpty(cVarE.a())) {
                                                this.u.setAdurl(cVarE.b());
                                                adLogoInfo = this.u;
                                                i = AdLogoInfo.TYPE_TEXT;
                                            } else {
                                                this.u.setAdurl(cVarE.a());
                                                adLogoInfo = this.u;
                                                i = AdLogoInfo.TYPE_PIC;
                                            }
                                            adLogoInfo.setType(i);
                                            if (TextUtils.isEmpty(cVarE.c())) {
                                                this.v.setAdurl(cVarE.d());
                                                adLogoInfo2 = this.v;
                                                i2 = AdLogoInfo.TYPE_TEXT;
                                            } else {
                                                this.v.setAdurl(cVarE.c());
                                                adLogoInfo2 = this.v;
                                                i2 = AdLogoInfo.TYPE_PIC;
                                            }
                                            adLogoInfo2.setType(i2);
                                        }
                                        com.octopus.ad.internal.nativead.c cVarA = com.octopus.ad.internal.nativead.c.a(new JSONObject(aVar.b()));
                                        this.Z = cVarA;
                                        cVarA.a(this);
                                        this.Z.a(getFilter());
                                        this.Z.b(getLogoInfo());
                                        this.Z.a(getTextLogInfo());
                                        if (dVar.c() != null) {
                                            a(dVar.c());
                                            b.C0191b c0191bC = dVar.c();
                                            this.S = c0191bC.a();
                                            this.T = c0191bC.b();
                                            this.U = c0191bC.i();
                                            this.Z.b(!StringUtil.isEmpty(this.S) ? this.S : this.U);
                                            this.Z.c(this.T);
                                            this.Z.a(dVar.c());
                                            b.j jVarJ = c0191bC.j();
                                            if (jVarJ != null && !TextUtils.isEmpty(jVarJ.a())) {
                                                this.Z.d(jVarJ.a());
                                            }
                                            if (jVarJ != null && !TextUtils.isEmpty(jVarJ.b())) {
                                                this.Z.e(jVarJ.b());
                                            }
                                            List<b.j> listM = c0191bC.m();
                                            if (listM != null && listM.size() > 0) {
                                                for (int i4 = 0; i4 < listM.size(); i4++) {
                                                    String strB = listM.get(i4).b();
                                                    if (!TextUtils.isEmpty(strB)) {
                                                        this.Z.e(strB);
                                                    }
                                                    String strA = listM.get(i4).a();
                                                    if (!TextUtils.isEmpty(strA)) {
                                                        this.Z.d(strA);
                                                    }
                                                }
                                            }
                                        }
                                    } catch (JSONException unused) {
                                    }
                                    if (this.Z != null) {
                                        this.X = true;
                                        return true;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        } else {
            HaoboLog.e(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.blank_ad));
        }
        if (this.Q.isEmpty()) {
            return false;
        }
        this.X = true;
        return true;
    }

    private boolean f(b.q qVar) {
        if (qVar.a() > 0) {
            b.s sVar = qVar.e().get(0);
            List<b.d> listW = sVar.w();
            if (listW != null && listW.size() > 0) {
                b.d dVar = listW.get(0);
                if (dVar.c() != null) {
                    b.C0191b c0191bC = dVar.c();
                    a(c0191bC);
                    this.S = c0191bC.a();
                    this.U = c0191bC.i();
                    b.j jVarJ = c0191bC.j();
                    if (jVarJ != null && !TextUtils.isEmpty(jVarJ.a())) {
                        this.mDetectViewUrl = jVarJ.a();
                    }
                    if (jVarJ != null && !TextUtils.isEmpty(jVarJ.b())) {
                        this.mDetectClickUrl = jVarJ.b();
                    }
                    if (jVarJ != null && !TextUtils.isEmpty(jVarJ.f())) {
                        this.R = jVarJ.f();
                    }
                }
            }
            this.a = sVar.a();
            this.b = sVar.b();
            this.c = sVar.c();
            this.d = sVar.d();
            this.e = sVar.e() == e.h.PORTRAIT ? 1 : 2;
            this.h = Integer.parseInt(sVar.g());
            this.i = Integer.parseInt(sVar.h());
            this.y = sVar.f();
            List<b.d> listW2 = sVar.w();
            if (listW2 != null && listW2.size() > 0) {
                this.x = listW2.get(0).i();
                this.z = listW2.get(0).j();
            }
            this.f = 0;
            this.g = 0;
            if (sVar.i() != null && getAdType() == e.a.ADP_TABLE) {
                b.f fVarI = sVar.i();
                this.f = Integer.parseInt(fVarI.a());
                this.g = Integer.parseInt(fVarI.b());
            }
        }
        return false;
    }

    public boolean a() {
        return this.Y;
    }

    public void addToExtras(String str, Object obj) {
        this.W.put(str, obj);
    }

    public boolean containsAds() {
        return this.X;
    }

    public void doClick(View view, boolean z, int i) {
        String str;
        StringBuilder sb;
        StringBuilder sb2;
        f.a("OctopusAd", "handleClick========" + z);
        if (!z) {
            if (!StringUtil.isEmpty(this.mDetectClickUrl)) {
                new h(this.mDetectClickUrl).execute(new Void[0]);
                this.mDetectClickUrl = "";
            }
            if (this.K != null && this.N != null) {
                for (int i2 = 0; i2 < this.N.size(); i2++) {
                    b.j jVar = this.N.get(i2);
                    if (jVar != null && !TextUtils.isEmpty(jVar.b())) {
                        String strB = jVar.b();
                        if (strB.startsWith("http://v.adintl.cn/clk")) {
                            if (this.B) {
                                sb2 = new StringBuilder();
                                sb2.append(strB);
                                sb2.append("&opt=1");
                            } else if (i != 0) {
                                sb2 = new StringBuilder();
                                sb2.append(strB);
                                sb2.append("&opt=");
                                sb2.append(i);
                            }
                            strB = sb2.toString();
                        }
                        new h(StringUtil.replaceClick(view, strB)).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
                    }
                }
                this.N = null;
            }
        }
        f.a("OctopusAd", "mDeepLinkUrl:" + this.T + ",appDownloadURL = " + this.I + ",mLandingPageUrl = " + this.S);
        if (TextUtils.isEmpty(this.T)) {
            if (!TextUtils.isEmpty(this.I) && this.E == 2) {
                if (view != null) {
                    if (d.a(view.getContext(), this.G)) {
                        d.b(view.getContext(), this.G);
                        b.C0191b.a aVar = this.D;
                        if (aVar != null) {
                            ReportEventUtil.report(aVar.a());
                            return;
                        }
                        return;
                    }
                    File fileA = d.a(view.getContext());
                    String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
                    com.octopus.ad.utils.b.a(view.getContext()).b(view.getContext()).a(this.J).a(this.B || i == 8 || i == 9).a(new com.octopus.ad.utils.a(this.I, this.G + com.anythink.china.common.a.a.g, this.G, absolutePath, this.F, this.H, view.getContext().getPackageName() + ".fileprovider", this.D)).b();
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(this.S) || !this.S.startsWith("http")) {
                StringUtil.isEmpty(this.U);
                return;
            }
            if (!this.w) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(this.S)));
                    if (view != null) {
                        view.getContext().startActivity(intent);
                        return;
                    }
                    return;
                } catch (Exception unused) {
                    Toast.makeText(view.getContext(), R.string.action_cant_be_completed, 0).show();
                    return;
                }
            }
            Class clsA = AdActivity.a();
            try {
                WebView webView = new WebView(new MutableContextWrapper(m.a().g()));
                WebviewUtil.setWebViewSettings(webView);
                webView.loadUrl(this.S);
                com.octopus.ad.internal.a.a.a.add(webView);
                Intent intent2 = new Intent(m.a().g(), (Class<?>) clsA);
                intent2.setFlags(268435456);
                intent2.putExtra("ACTIVITY_TYPE", "DOWNLOADBROWSER");
                m.a().g().startActivity(intent2);
                return;
            } catch (ActivityNotFoundException unused2) {
                HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adactivity_missing, clsA.getName()));
                com.octopus.ad.internal.a.a.a.remove();
            } catch (Exception e) {
                e = e;
                str = HaoboLog.baseLogTag;
                sb = new StringBuilder();
                sb.append("Exception initializing the redirect webview: ");
                sb.append(e.getMessage());
                HaoboLog.e(str, sb.toString());
            }
        }
        try {
            if (this.D != null && view != null) {
                ReportEventUtil.report(d.a(view.getContext(), this.G) ? this.D.h() : this.D.i());
            }
            Uri uri = Uri.parse(Uri.decode(this.T));
            if (uri.getScheme() == null || !uri.getScheme().equals("bzopen") || TextUtils.isEmpty(uri.getHost()) || uri.getPathSegments().size() <= 0) {
                Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                intent3.setFlags(268435456);
                if (view != null) {
                    view.getContext().startActivity(intent3);
                }
            } else {
                Intent intent4 = new Intent();
                intent4.setAction("android.intent.action.MAIN");
                intent4.addCategory("android.intent.category.LAUNCHER");
                String queryParameter = uri.getQueryParameter("flags");
                if (!TextUtils.isEmpty(queryParameter)) {
                    try {
                        intent4.setFlags((queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) ? Integer.parseInt(queryParameter.substring(2), 16) : Integer.parseInt(queryParameter));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                intent4.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                String queryParameter2 = uri.getQueryParameter("rect");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    try {
                        String[] strArrSplit = queryParameter2.split(":");
                        if (strArrSplit.length == 4) {
                            Rect rect = new Rect();
                            rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                            intent4.setSourceBounds(rect);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                if (view != null) {
                    view.getContext().startActivity(intent4);
                }
            }
            a(i);
            b.C0191b.a aVar2 = this.D;
            if (aVar2 == null || view == null) {
                return;
            }
            ReportEventUtil.report(aVar2.f());
        } catch (Exception e4) {
            e = e4;
            b.C0191b.a aVar3 = this.D;
            if (aVar3 != null) {
                ReportEventUtil.report(aVar3.g());
            }
            if (TextUtils.isEmpty(this.S) || !this.S.startsWith("http")) {
                return;
            }
            if (!this.w) {
                try {
                    Intent intent5 = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(this.S)));
                    if (view != null) {
                        view.getContext().startActivity(intent5);
                        return;
                    }
                    return;
                } catch (Exception unused3) {
                    if (view == null) {
                        return;
                    }
                    Toast.makeText(view.getContext(), R.string.action_cant_be_completed, 0).show();
                    return;
                }
            }
            Class clsA2 = AdActivity.a();
            try {
                WebView webView2 = new WebView(new MutableContextWrapper(view.getContext()));
                WebviewUtil.setWebViewSettings(webView2);
                webView2.loadUrl(this.S);
                com.octopus.ad.internal.a.a.a.add(webView2);
                Intent intent6 = new Intent(m.a().g(), (Class<?>) clsA2);
                intent6.setFlags(268435456);
                intent6.putExtra("ACTIVITY_TYPE", "DOWNLOADBROWSER");
                view.getContext().startActivity(intent6);
            } catch (ActivityNotFoundException unused4) {
                HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adactivity_missing, clsA2.getName()));
                com.octopus.ad.internal.a.a.a.remove();
            } catch (Exception unused5) {
                str = HaoboLog.baseLogTag;
                sb = new StringBuilder();
                sb.append("Exception initializing the redirect webview: ");
                sb.append(e.getMessage());
                HaoboLog.e(str, sb.toString());
            }
        }
    }

    public int getAcRatio() {
        return this.A;
    }

    public String getAdExtInfo() {
        return this.O;
    }

    public String getAdId() {
        return this.P;
    }

    public b.C0191b getAdInteractInfo() {
        return this.K;
    }

    public int getAdOrientation() {
        return this.e;
    }

    public e.a getAdType() {
        return this.c;
    }

    public List<Pair<i, String>> getCreatives() {
        return this.Q;
    }

    public HashMap<String, Object> getExtras() {
        return this.W;
    }

    public int getFilter() {
        return this.y;
    }

    public b.C0191b.a getFollowTrackExt() {
        return this.D;
    }

    public int getHeight() {
        return this.h;
    }

    public b.m getInterEvent() {
        return this.L;
    }

    public int getLeft() {
        return this.f;
    }

    public AdLogoInfo getLogoInfo() {
        return this.v;
    }

    public int getMaxTimer() {
        return this.r;
    }

    public int getMinTimer() {
        return this.q;
    }

    public NativeAdResponse getNativeAdResponse() {
        return this.Z;
    }

    public LinkedList<String> getPrefetchResources() {
        return this.V;
    }

    public int getPrice() {
        return this.x;
    }

    public int getRefreshInterval() {
        return this.d;
    }

    public b.t getStrategy() {
        return this.M;
    }

    public String getTagId() {
        return this.z;
    }

    public AdLogoInfo getTextLogInfo() {
        return this.u;
    }

    public int getTop() {
        return this.g;
    }

    public b.C0191b.C0192b getVideoTrackExt() {
        return this.C;
    }

    public int getWidth() {
        return this.i;
    }

    public void handleClick(View view, com.octopus.ad.b.c cVar, String str, String str2, boolean z, String str3, int i, int i2) {
        doClick(view, z, i2);
    }

    public void handleClick(View view, String str, String str2, String str3, String str4, String str5, String str6, boolean z, String str7, int i) {
        doClick(view, z, i);
    }

    public void handleConvert(View view) {
        HaoboLog.e(HaoboLog.baseLogTag, "handleClick called with convertUrl = " + this.R);
        if (StringUtil.isEmpty(this.R)) {
            return;
        }
        new h(this.R).execute(new Void[0]);
    }

    public void handleOnCompletion() {
        List<b.j> listM;
        b.C0191b c0191b = this.K;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i = 0; i < listM.size(); i++) {
            UrlUtil.sendOnCompletionInfoToServer(listM.get(i));
        }
    }

    public void handleOnPause(View view) {
        List<b.j> listM;
        b.C0191b c0191b = this.K;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i = 0; i < listM.size(); i++) {
            UrlUtil.sendOnPauseInfoToServer(listM.get(i));
        }
    }

    public void handleOnStart(View view, int i) {
        List<b.j> listM;
        b.C0191b c0191b = this.K;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listM.size(); i2++) {
            UrlUtil.sendOnStartInfoToServer(listM.get(i2));
        }
    }

    public void handleView(View view, String str) {
        List<b.j> listM;
        int i = this.t;
        if (i <= 0) {
            this.t = i + 1;
            if (!StringUtil.isEmpty(this.mDetectViewUrl)) {
                this.mDetectViewUrl = UrlUtil.replaceToTouchEventUrl(this.mDetectViewUrl, "", "", "", "", "", "", "");
                new h(this.mDetectViewUrl).execute(new Void[0]);
                this.mDetectViewUrl = "";
            }
            b.C0191b c0191b = this.K;
            if (c0191b == null || (listM = c0191b.m()) == null) {
                return;
            }
            for (int i2 = 0; i2 < listM.size(); i2++) {
                b.j jVar = listM.get(i2);
                if (jVar != null && !TextUtils.isEmpty(jVar.a()) && view != null) {
                    boolean zIsEmpty = TextUtils.isEmpty(str);
                    String strA = jVar.a();
                    if (!zIsEmpty) {
                        strA = strA.replace("__REQUESTUUID__", str);
                    }
                    if (this.B) {
                        strA = strA + "&opt=1";
                    }
                    new h(StringUtil.replaceView(0, view, strA)).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
                }
            }
        }
    }

    public boolean isAutoClose() {
        return this.o;
    }

    public boolean isAutoPlay() {
        return this.s;
    }

    public boolean isBackgroundDim() {
        return this.k;
    }

    public boolean isFullScreen() {
        return this.j;
    }

    public boolean isManualClose() {
        return this.p;
    }

    public boolean isMuted() {
        return this.n;
    }

    public boolean isWifiOnly() {
        return this.m;
    }

    public boolean isWifiPreload() {
        return this.l;
    }

    public void reportLoss(int i, String str, String str2) {
        List<b.j> listM;
        b.C0191b c0191b = this.K;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listM.size(); i2++) {
            b.j jVar = listM.get(i2);
            if (jVar != null && !TextUtils.isEmpty(jVar.e())) {
                new h(UrlUtil.replaceLossUrl(jVar.e(), i, str, str2)).execute(new Void[0]);
            }
        }
    }

    public void reportWin(int i) {
        List<b.j> listM;
        b.C0191b c0191b = this.K;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listM.size(); i2++) {
            b.j jVar = listM.get(i2);
            if (jVar != null && !TextUtils.isEmpty(jVar.d())) {
                new h(UrlUtil.replaceWinUrl(jVar.d(), i)).execute(new Void[0]);
            }
        }
    }

    public void setAdOrientation(int i) {
        this.e = i;
    }

    public void setIsLiftUp(boolean z) {
        this.B = z;
    }

    public void setOpenInNativeBrowser(boolean z) {
        this.w = z;
    }
}
