package com.anythink.expressad.advanced.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.anythink.core.common.b.n;
import com.anythink.expressad.advanced.js.NativeAdvancedJSBridgeImpl;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.anythink.expressad.advanced.view.ATNativeAdvancedView;
import com.anythink.expressad.advanced.view.ATNativeAdvancedWebview;
import com.anythink.expressad.foundation.g.c.d;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.videocommon.b.e;
import com.anythink.expressad.videocommon.b.i;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static String a = "NativeAdvancedLoadManager";
    private static final int j = 1;
    private static final int k = 2;
    private static final int l = 3;
    private static final int m = 4;
    private static final int n = 5;
    private int A;
    private String b;
    private String c;
    private long d;
    private com.anythink.expressad.advanced.b.a e;
    private ATNativeAdvancedView g;
    private com.anythink.expressad.d.c h;
    private com.anythink.expressad.foundation.d.c i;
    private int o;
    private int p;
    private int q;
    private int r;
    private String s;
    private int t;
    private boolean u;
    private volatile boolean v;
    private com.anythink.expressad.videocommon.d.c w;
    private i.d x;
    private i.d y;
    private String z;
    private String B = "";
    private Handler C = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.advanced.c.a.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Object obj;
            super.handleMessage(message);
            int i = message.what;
            if (i == 1) {
                Object obj2 = message.obj;
                int i2 = message.arg1;
                if (obj2 == null || !(obj2 instanceof com.anythink.expressad.foundation.d.c)) {
                    return;
                }
                com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) obj2;
                a.a(a.this, i.a().c(cVar.c()), cVar, i2);
                return;
            }
            if (i == 2) {
                Object obj3 = message.obj;
                if (obj3 == null || !(obj3 instanceof String)) {
                    return;
                }
                a aVar = a.this;
                String string = obj3.toString();
                String unused = a.this.s;
                aVar.b(string, a.this.t);
                return;
            }
            if (i == 3) {
                Object obj4 = message.obj;
                if (obj4 == null || !(obj4 instanceof com.anythink.expressad.foundation.d.c)) {
                    return;
                }
                a aVar2 = a.this;
                aVar2.a((com.anythink.expressad.foundation.d.c) obj4, aVar2.t);
                return;
            }
            if (i != 4) {
                if (i == 5 && (obj = message.obj) != null && (obj instanceof com.anythink.expressad.foundation.d.c)) {
                    if (a.this.g != null) {
                        a.this.g.setVideoReady(true);
                    }
                    a aVar3 = a.this;
                    aVar3.a((com.anythink.expressad.foundation.d.c) obj, aVar3.t);
                    return;
                }
                return;
            }
            Object obj5 = message.obj;
            if (obj5 == null || !(obj5 instanceof com.anythink.expressad.foundation.d.c)) {
                return;
            }
            if (a.this.g != null) {
                a.this.g.setEndCardReady(true);
            }
            a aVar4 = a.this;
            aVar4.a((com.anythink.expressad.foundation.d.c) obj5, aVar4.t);
        }
    };
    private Runnable D = new Runnable() { // from class: com.anythink.expressad.advanced.c.a.3
        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            String unused = aVar.s;
            aVar.b("load timeout", a.this.t);
        }
    };
    private Context f = n.a().f();

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$10, reason: invalid class name */
    public class AnonymousClass10 implements Runnable {
        public final /* synthetic */ ATNativeAdvancedWebview a;
        public final /* synthetic */ String b;

        public AnonymousClass10(ATNativeAdvancedWebview aTNativeAdvancedWebview, String str) {
            this.a = aTNativeAdvancedWebview;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.a.loadUrl(x.c(this.b));
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$2, reason: invalid class name */
    public class AnonymousClass2 implements com.anythink.expressad.videocommon.d.c {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;

        public AnonymousClass2(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str) {
            String unused = a.a;
            Message messageObtain = Message.obtain();
            messageObtain.obj = this.a;
            messageObtain.what = 5;
            a.this.C.sendMessage(messageObtain);
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str, String str2) {
            String unused = a.a;
            Message messageObtain = Message.obtain();
            messageObtain.obj = str;
            messageObtain.what = 2;
            a.this.C.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$4, reason: invalid class name */
    public class AnonymousClass4 implements com.anythink.expressad.foundation.g.d.c {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b = 2;

        public AnonymousClass4(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            String unused = a.a;
            if (a.this.C != null) {
                a.this.C.post(new Runnable() { // from class: com.anythink.expressad.advanced.c.a.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        a.this.a(anonymousClass4.a, anonymousClass4.b);
                    }
                });
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
            String unused = a.a;
            if (a.this.C != null) {
                a.this.C.post(new Runnable() { // from class: com.anythink.expressad.advanced.c.a.4.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        a.this.a(anonymousClass4.a, anonymousClass4.b);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$5, reason: invalid class name */
    public class AnonymousClass5 implements i.d {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b = 2;

        public AnonymousClass5(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            String unused = a.a;
            if (a.this.C != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = this.a;
                messageObtain.arg1 = this.b;
                a.this.C.sendMessage(messageObtain);
            }
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            String unused = a.a;
            if (a.this.g != null) {
                a.this.g.setEndCardReady(false);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.obj = str;
            a.this.C.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$6, reason: invalid class name */
    public class AnonymousClass6 implements com.anythink.expressad.foundation.g.d.c {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b = 2;

        public AnonymousClass6(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            String unused = a.a;
            if (a.this.C != null) {
                a.this.C.post(new Runnable() { // from class: com.anythink.expressad.advanced.c.a.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        a.this.a(anonymousClass6.a, anonymousClass6.b);
                    }
                });
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
            String unused = a.a;
            if (a.this.C != null) {
                a.this.C.post(new Runnable() { // from class: com.anythink.expressad.advanced.c.a.6.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        a.this.a(anonymousClass6.a, anonymousClass6.b);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$7, reason: invalid class name */
    public class AnonymousClass7 implements Runnable {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b = 2;

        public AnonymousClass7(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            File file;
            final File file2;
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    try {
                        file2 = new File(this.a.d());
                        try {
                            if (!file2.exists()) {
                                String strB = d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_HTML);
                                String strA = p.a(x.a(this.a.d()));
                                if (TextUtils.isEmpty(strA)) {
                                    strA = String.valueOf(System.currentTimeMillis());
                                }
                                file = new File(strB, strA.concat(".html"));
                                try {
                                    if (!file.exists()) {
                                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                                        try {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("<script>");
                                            com.anythink.expressad.d.b.a.a();
                                            sb.append(com.anythink.expressad.d.b.a.b());
                                            sb.append("</script>");
                                            sb.append(this.a.d());
                                            fileOutputStream2.write(sb.toString().getBytes());
                                            fileOutputStream2.flush();
                                            fileOutputStream = fileOutputStream2;
                                        } catch (Exception e) {
                                            e = e;
                                            fileOutputStream = fileOutputStream2;
                                            e.printStackTrace();
                                            this.a.j("");
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            file2 = file;
                                        } catch (Throwable th) {
                                            th = th;
                                            fileOutputStream = fileOutputStream2;
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    file2 = file;
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Exception e3) {
                            e = e3;
                            file = file2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e4) {
                    e = e4;
                    file = null;
                }
                if (file2.exists() && file2.isFile() && file2.canRead()) {
                    this.a.b(file2.getAbsolutePath());
                    String unused = a.a;
                    n.a().b(new Runnable() { // from class: com.anythink.expressad.advanced.c.a.7.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            a aVar = a.this;
                            String str = "file:////" + file2.getAbsolutePath();
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            a.a(aVar, str, anonymousClass7.a, anonymousClass7.b);
                        }
                    });
                } else {
                    String unused2 = a.a;
                    a aVar = a.this;
                    String unused3 = aVar.s;
                    aVar.b("html file write failed", this.b);
                }
            } catch (Exception e5) {
                a aVar2 = a.this;
                String message = e5.getMessage();
                String unused4 = a.this.s;
                aVar2.b(message, this.b);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$8, reason: invalid class name */
    public class AnonymousClass8 implements i.d {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b = 2;

        public AnonymousClass8(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            String unused = a.a;
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = this.a;
            messageObtain.arg1 = this.b;
            a.this.C.sendMessage(messageObtain);
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            String unused = a.a;
            StringBuilder sb = new StringBuilder("zip download fail: ");
            sb.append(str2);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.obj = str;
            a.this.C.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.advanced.c.a$9, reason: invalid class name */
    public class AnonymousClass9 extends com.anythink.expressad.atsignalcommon.a.b {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b;

        public AnonymousClass9(com.anythink.expressad.foundation.d.c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!this.a.s()) {
                a.this.g.setH5Ready(true);
                com.anythink.expressad.advanced.a.a.a(this.a.Z());
                a.b(a.this, this.a, this.b);
            }
            NativeAdvancedJsUtils.fireOnJSBridgeConnected(webView);
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            StringBuilder sb = new StringBuilder("onReceivedError: ");
            sb.append(i);
            sb.append("  ");
            sb.append(str);
            sb.append("  ");
            sb.append(str2);
            a.this.b(str, this.b);
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            new StringBuilder("onReceivedSslError: ").append(sslError.getPrimaryError());
            a.this.b("onReceivedSslError:" + sslError.getUrl(), this.b);
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void readyState(WebView webView, int i) {
            super.readyState(webView, i);
            if (i != 1) {
                a.this.b("readyState 2", this.b);
                return;
            }
            a.this.g.setH5Ready(true);
            com.anythink.expressad.advanced.a.a.a(this.a.Z());
            a.b(a.this, this.a, this.b);
        }
    }

    public a(String str, String str2) {
        this.c = str;
        this.b = str2;
    }

    private void a(long j2) {
        this.C.postDelayed(this.D, j2);
    }

    public static /* synthetic */ void a(a aVar, String str, com.anythink.expressad.foundation.d.c cVar, int i) {
        ATNativeAdvancedView aTNativeAdvancedView = aVar.g;
        if (aTNativeAdvancedView == null || aTNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        NativeAdvancedJSBridgeImpl nativeAdvancedJSBridgeImpl = new NativeAdvancedJSBridgeImpl(aVar.g.getContext(), aVar.c, aVar.b);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar);
        nativeAdvancedJSBridgeImpl.setCampaignList(arrayList);
        nativeAdvancedJSBridgeImpl.setAllowSkip(aVar.o);
        nativeAdvancedJSBridgeImpl.setCountdownS(aVar.p);
        aVar.g.setAdvancedNativeJSBridgeImpl(nativeAdvancedJSBridgeImpl);
        System.currentTimeMillis();
        ATNativeAdvancedWebview advancedNativeWebview = aVar.g.getAdvancedNativeWebview();
        if (advancedNativeWebview == null) {
            aVar.b("webview is null", i);
            return;
        }
        if (advancedNativeWebview != null && advancedNativeWebview.isDestroyed()) {
            aVar.b("webview is destroyed", i);
            return;
        }
        advancedNativeWebview.setWebViewListener(aVar.new AnonymousClass9(cVar, i));
        if (advancedNativeWebview.isDestroyed()) {
            aVar.b("webview has destory", i);
            return;
        }
        Handler handler = aVar.C;
        if (handler != null) {
            handler.post(aVar.new AnonymousClass10(advancedNativeWebview, str));
        }
    }

    private void a(com.anythink.expressad.foundation.d.c cVar) {
        this.i = cVar;
        if (c.a(this.g, cVar)) {
            a(cVar, 2);
            return;
        }
        ATNativeAdvancedView aTNativeAdvancedView = this.g;
        if (aTNativeAdvancedView != null) {
            aTNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(cVar.c())) {
            new StringBuilder("start download zip: ").append(cVar.c());
            this.x = new AnonymousClass8(cVar);
            i.a().b(cVar.c(), (i.a) this.x);
        }
        if (!TextUtils.isEmpty(cVar.d())) {
            new StringBuilder("start download HTML: ").append(cVar.d());
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass7(cVar));
        }
        if (!TextUtils.isEmpty(cVar.S())) {
            new StringBuilder("start download Video: ").append(cVar.S());
            this.w = new AnonymousClass2(cVar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            e.a().a(this.b, arrayList, com.anythink.expressad.foundation.g.a.aX, this.w);
            if (e.a().a(com.anythink.expressad.foundation.g.a.aX, this.b, cVar.A())) {
                this.g.setVideoReady(true);
                a(cVar, 2);
            } else {
                e.a().d(this.b);
            }
        }
        if (!TextUtils.isEmpty(cVar.be())) {
            new StringBuilder("start download image: ").append(cVar.be());
            com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.be(), new AnonymousClass6(cVar));
        }
        if (!TextUtils.isEmpty(cVar.I())) {
            new StringBuilder("start download EndCard: ").append(cVar.I());
            this.y = new AnonymousClass5(cVar);
            i.a().b(cVar.I(), (i.a) this.y);
        }
        if (TextUtils.isEmpty(cVar.y())) {
            return;
        }
        new StringBuilder("start download gitUrl: ").append(cVar.y());
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.y(), new AnonymousClass4(cVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.anythink.expressad.foundation.d.c cVar, int i) {
        if (!c.a(this.g, cVar) || this.v) {
            return;
        }
        i();
        this.v = true;
        com.anythink.expressad.advanced.b.a aVar = this.e;
        if (aVar != null) {
            aVar.a(cVar, i);
        }
    }

    private void a(String str, int i) {
        b(str, i);
    }

    private void a(String str, com.anythink.expressad.foundation.d.c cVar, int i) {
        ATNativeAdvancedView aTNativeAdvancedView = this.g;
        if (aTNativeAdvancedView == null || aTNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        NativeAdvancedJSBridgeImpl nativeAdvancedJSBridgeImpl = new NativeAdvancedJSBridgeImpl(this.g.getContext(), this.c, this.b);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar);
        nativeAdvancedJSBridgeImpl.setCampaignList(arrayList);
        nativeAdvancedJSBridgeImpl.setAllowSkip(this.o);
        nativeAdvancedJSBridgeImpl.setCountdownS(this.p);
        this.g.setAdvancedNativeJSBridgeImpl(nativeAdvancedJSBridgeImpl);
        System.currentTimeMillis();
        ATNativeAdvancedWebview advancedNativeWebview = this.g.getAdvancedNativeWebview();
        if (advancedNativeWebview == null) {
            b("webview is null", i);
            return;
        }
        if (advancedNativeWebview != null && advancedNativeWebview.isDestroyed()) {
            b("webview is destroyed", i);
            return;
        }
        advancedNativeWebview.setWebViewListener(new AnonymousClass9(cVar, i));
        if (advancedNativeWebview.isDestroyed()) {
            b("webview has destory", i);
            return;
        }
        Handler handler = this.C;
        if (handler != null) {
            handler.post(new AnonymousClass10(advancedNativeWebview, str));
        }
    }

    private List<com.anythink.expressad.foundation.d.c> b(com.anythink.expressad.foundation.d.d dVar) {
        if (dVar == null || dVar.J == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        com.anythink.expressad.foundation.d.c cVar = dVar.J.get(0);
        cVar.l(this.b);
        this.z = dVar.c();
        if (cVar.O() == 99) {
            return arrayList;
        }
        if (TextUtils.isEmpty(cVar.c()) && TextUtils.isEmpty(cVar.d())) {
            return arrayList;
        }
        if (t.a(cVar)) {
            cVar.i(t.a(this.f, cVar.ba()) ? 1 : 2);
        }
        if (cVar.ae() != 1 && t.a(this.f, cVar.ba())) {
            StringBuilder sb = new StringBuilder("onload: ");
            sb.append(cVar.bb());
            sb.append(" has been installed.");
            if (!t.a(cVar)) {
                return arrayList;
            }
        }
        arrayList.add(cVar);
        return arrayList;
    }

    private void b(int i) {
        this.p = i;
    }

    public static /* synthetic */ void b(a aVar, com.anythink.expressad.foundation.d.c cVar, int i) {
        if (aVar.g.isH5Ready()) {
            aVar.a(cVar, i);
        }
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        ATNativeAdvancedView aTNativeAdvancedView = this.g;
        if (aTNativeAdvancedView != null) {
            aTNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(cVar.c())) {
            new StringBuilder("start download zip: ").append(cVar.c());
            this.x = new AnonymousClass8(cVar);
            i.a().b(cVar.c(), (i.a) this.x);
        }
        if (!TextUtils.isEmpty(cVar.d())) {
            new StringBuilder("start download HTML: ").append(cVar.d());
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass7(cVar));
        }
        if (!TextUtils.isEmpty(cVar.S())) {
            new StringBuilder("start download Video: ").append(cVar.S());
            this.w = new AnonymousClass2(cVar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            e.a().a(this.b, arrayList, com.anythink.expressad.foundation.g.a.aX, this.w);
            if (e.a().a(com.anythink.expressad.foundation.g.a.aX, this.b, cVar.A())) {
                this.g.setVideoReady(true);
                a(cVar, 2);
            } else {
                e.a().d(this.b);
            }
        }
        if (!TextUtils.isEmpty(cVar.be())) {
            new StringBuilder("start download image: ").append(cVar.be());
            com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.be(), new AnonymousClass6(cVar));
        }
        if (!TextUtils.isEmpty(cVar.I())) {
            new StringBuilder("start download EndCard: ").append(cVar.I());
            this.y = new AnonymousClass5(cVar);
            i.a().b(cVar.I(), (i.a) this.y);
        }
        if (TextUtils.isEmpty(cVar.y())) {
            return;
        }
        new StringBuilder("start download gitUrl: ").append(cVar.y());
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.y(), new AnonymousClass4(cVar));
    }

    private void b(com.anythink.expressad.foundation.d.c cVar, int i) {
        if (this.g.isH5Ready()) {
            a(cVar, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, int i) {
        if (this.v) {
            return;
        }
        i();
        this.v = true;
        com.anythink.expressad.advanced.b.a aVar = this.e;
        if (aVar != null) {
            aVar.a(str, i);
        }
    }

    private void c(com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.y(), new AnonymousClass4(cVar));
    }

    private void c(String str, int i) {
        b(str, i);
    }

    private void d(com.anythink.expressad.foundation.d.c cVar) {
        this.y = new AnonymousClass5(cVar);
        i.a().b(cVar.I(), (i.a) this.y);
    }

    private int e() {
        return this.p;
    }

    private void e(com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar.be(), new AnonymousClass6(cVar));
    }

    private void f() {
        try {
            int i = this.A + 1;
            this.A = i;
            com.anythink.expressad.d.c cVar = this.h;
            if (cVar == null || i > cVar.t()) {
                this.A = 0;
            }
            new StringBuilder("onload 算出 下次的offset是:").append(this.A);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void f(com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass7(cVar));
    }

    private static void g() {
    }

    private void g(com.anythink.expressad.foundation.d.c cVar) {
        this.x = new AnonymousClass8(cVar);
        i.a().b(cVar.c(), (i.a) this.x);
    }

    private void h() {
        this.A = 0;
    }

    private void h(com.anythink.expressad.foundation.d.c cVar) {
        this.w = new AnonymousClass2(cVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar);
        e.a().a(this.b, arrayList, com.anythink.expressad.foundation.g.a.aX, this.w);
        if (!e.a().a(com.anythink.expressad.foundation.g.a.aX, this.b, cVar.A())) {
            e.a().d(this.b);
        } else {
            this.g.setVideoReady(true);
            a(cVar, 2);
        }
    }

    private void i() {
        this.C.removeCallbacks(this.D);
    }

    private static void j() {
    }

    public final String a() {
        return this.B;
    }

    public final String a(String str) {
        int iK;
        if (this.i == null) {
            return "";
        }
        try {
            com.anythink.expressad.videocommon.b.c cVarA = e.a().a(this.b, this.i.aZ() + this.i.S() + this.i.B());
            if (cVarA == null || (iK = cVarA.k()) != 5) {
                return str;
            }
            String strE = cVarA.e();
            if (!new File(strE).exists()) {
                return str;
            }
            StringBuilder sb = new StringBuilder("download success locally,use local video url:");
            sb.append(strE);
            sb.append(" state:");
            sb.append(iK);
            return strE;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public final void a(int i) {
        this.o = i;
    }

    public final void a(int i, int i2) {
        this.r = i;
        this.q = i2;
    }

    public final void a(com.anythink.expressad.advanced.b.a aVar) {
        this.e = aVar;
    }

    public final void a(ATNativeAdvancedView aTNativeAdvancedView) {
        this.g = aTNativeAdvancedView;
    }

    public final void a(com.anythink.expressad.d.c cVar) {
        this.h = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.anythink.expressad.foundation.d.d dVar) {
        ArrayList arrayList;
        if (dVar == null || dVar.J == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            com.anythink.expressad.foundation.d.c cVar = dVar.J.get(0);
            cVar.l(this.b);
            this.z = dVar.c();
            if (cVar.O() != 99 && (!TextUtils.isEmpty(cVar.c()) || !TextUtils.isEmpty(cVar.d()))) {
                if (t.a(cVar)) {
                    cVar.i(t.a(this.f, cVar.ba()) ? 1 : 2);
                }
                if (cVar.ae() == 1 || !t.a(this.f, cVar.ba())) {
                    arrayList.add(cVar);
                } else {
                    StringBuilder sb = new StringBuilder("onload: ");
                    sb.append(cVar.bb());
                    sb.append(" has been installed.");
                    if (t.a(cVar)) {
                    }
                }
            }
        }
        if (arrayList == null || arrayList.size() <= 0) {
            b("invalid  campaign", 2);
            return;
        }
        try {
            int i = this.A + 1;
            this.A = i;
            com.anythink.expressad.d.c cVar2 = this.h;
            if (cVar2 == null || i > cVar2.t()) {
                this.A = 0;
            }
            new StringBuilder("onload 算出 下次的offset是:").append(this.A);
        } catch (Exception e) {
            e.printStackTrace();
        }
        new StringBuilder("onload load成功 size:").append(arrayList.size());
        com.anythink.expressad.foundation.d.c cVar3 = (com.anythink.expressad.foundation.d.c) arrayList.get(0);
        if (!TextUtils.isEmpty(cVar3.c()) || (!TextUtils.isEmpty(cVar3.d()) && cVar3.d().contains("<MBTPLMARK>"))) {
            cVar3.a(true);
            cVar3.b(false);
        } else {
            cVar3.a(false);
            cVar3.b(true);
        }
        this.i = cVar3;
        if (c.a(this.g, cVar3)) {
            a(cVar3, 2);
            return;
        }
        ATNativeAdvancedView aTNativeAdvancedView = this.g;
        if (aTNativeAdvancedView != null) {
            aTNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(cVar3.c())) {
            new StringBuilder("start download zip: ").append(cVar3.c());
            this.x = new AnonymousClass8(cVar3);
            i.a().b(cVar3.c(), (i.a) this.x);
        }
        if (!TextUtils.isEmpty(cVar3.d())) {
            new StringBuilder("start download HTML: ").append(cVar3.d());
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass7(cVar3));
        }
        if (!TextUtils.isEmpty(cVar3.S())) {
            new StringBuilder("start download Video: ").append(cVar3.S());
            this.w = new AnonymousClass2(cVar3);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(cVar3);
            e.a().a(this.b, arrayList2, com.anythink.expressad.foundation.g.a.aX, this.w);
            if (e.a().a(com.anythink.expressad.foundation.g.a.aX, this.b, cVar3.A())) {
                this.g.setVideoReady(true);
                a(cVar3, 2);
            } else {
                e.a().d(this.b);
            }
        }
        if (!TextUtils.isEmpty(cVar3.be())) {
            new StringBuilder("start download image: ").append(cVar3.be());
            com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar3.be(), new AnonymousClass6(cVar3));
        }
        if (!TextUtils.isEmpty(cVar3.I())) {
            new StringBuilder("start download EndCard: ").append(cVar3.I());
            this.y = new AnonymousClass5(cVar3);
            i.a().b(cVar3.I(), (i.a) this.y);
        }
        if (TextUtils.isEmpty(cVar3.y())) {
            return;
        }
        new StringBuilder("start download gitUrl: ").append(cVar3.y());
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(cVar3.y(), new AnonymousClass4(cVar3));
    }

    public final void b() {
        if (this.e != null) {
            this.e = null;
        }
        b("LoadManager release", this.t);
        if (this.w != null) {
            this.w = null;
        }
        if (this.x != null) {
            this.x = null;
        }
    }

    public final com.anythink.expressad.foundation.d.c c() {
        return this.i;
    }
}
