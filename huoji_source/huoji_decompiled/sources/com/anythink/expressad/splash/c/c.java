package com.anythink.expressad.splash.c;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.splash.a.b;
import com.anythink.expressad.splash.c.a;
import com.anythink.expressad.splash.c.e;
import com.anythink.expressad.splash.view.ATSplashView;
import com.anythink.expressad.videocommon.b.i;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static String c = "SplashLoadManager";
    private static final int l = 1;
    private static final int m = 2;
    private static final int n = 3;
    private int B;
    public com.anythink.expressad.foundation.d.c b;
    private String d;
    private String e;
    private long f;
    private long g;
    private com.anythink.expressad.splash.b.c h;
    private ATSplashView j;
    private com.anythink.expressad.d.c k;
    private boolean o;
    private int p;
    private int q;
    private int r;
    private String s;
    private int t;
    private boolean u;
    private volatile boolean v;
    private com.anythink.expressad.videocommon.d.c w;
    private i.d x;
    private String y;
    private int z;
    private String A = "";
    private Handler C = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.splash.c.c.1
        @Override // android.os.Handler
        public final void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 1) {
                Object obj = message.obj;
                int i2 = message.arg1;
                if (obj instanceof com.anythink.expressad.foundation.d.c) {
                    com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) obj;
                    c.a(c.this, i.a().c(cVar.c()), cVar, i2);
                    return;
                }
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                Object obj2 = message.obj;
                if (obj2 instanceof com.anythink.expressad.foundation.d.c) {
                    c cVar2 = c.this;
                    cVar2.b((com.anythink.expressad.foundation.d.c) obj2, cVar2.t);
                    return;
                }
                return;
            }
            Object obj3 = message.obj;
            if (obj3 instanceof String) {
                c cVar3 = c.this;
                String string = obj3.toString();
                String unused = c.this.s;
                int unused2 = c.this.t;
                cVar3.a(string);
            }
        }
    };
    private Runnable D = new Runnable() { // from class: com.anythink.expressad.splash.c.c.2
        @Override // java.lang.Runnable
        public final void run() {
            c cVar = c.this;
            String unused = cVar.s;
            int unused2 = c.this.t;
            cVar.a("load timeout");
        }
    };
    public boolean a = false;
    private Context i = n.a().f();

    /* JADX INFO: renamed from: com.anythink.expressad.splash.c.c$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b;

        public AnonymousClass4(com.anythink.expressad.foundation.d.c cVar, int i) {
            this.a = cVar;
            this.b = i;
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
                                String strB = com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_700_HTML);
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
                    } catch (Exception e4) {
                        c cVar = c.this;
                        String message = e4.getMessage();
                        String unused = c.this.s;
                        cVar.a(message);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e5) {
                e = e5;
                file = null;
            }
            if (file2.exists() && file2.isFile() && file2.canRead()) {
                this.a.b(file2.getAbsolutePath());
                n.a().b(new Runnable() { // from class: com.anythink.expressad.splash.c.c.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        c cVar2 = c.this;
                        String str = "file:////" + file2.getAbsolutePath();
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        c.a(cVar2, str, anonymousClass4.a, anonymousClass4.b);
                    }
                });
            } else {
                c cVar2 = c.this;
                String unused2 = cVar2.s;
                cVar2.a("html file write failed");
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.c.c$5, reason: invalid class name */
    public class AnonymousClass5 implements i.d {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b;

        public AnonymousClass5(com.anythink.expressad.foundation.d.c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = this.a;
            messageObtain.arg1 = this.b;
            c.this.C.sendMessage(messageObtain);
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            c cVar = c.this;
            String unused = cVar.s;
            cVar.a(str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.obj = str;
            c.this.C.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.c.c$6, reason: invalid class name */
    public class AnonymousClass6 implements com.anythink.expressad.splash.b.a {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b;

        public AnonymousClass6(com.anythink.expressad.foundation.d.c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        @Override // com.anythink.expressad.splash.b.a
        public final void a(View view) {
            if (c.this.j != null) {
                c.this.j.setDynamicView(true);
                c.this.j.setSplashNativeView(view);
                c.this.b(this.a, this.b);
            }
        }

        @Override // com.anythink.expressad.splash.b.a
        public final void a(String str) {
            c cVar = c.this;
            String unused = cVar.s;
            cVar.a(str);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.c.c$7, reason: invalid class name */
    public class AnonymousClass7 implements e.b {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;
        public final /* synthetic */ int b;

        public AnonymousClass7(com.anythink.expressad.foundation.d.c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        @Override // com.anythink.expressad.splash.c.e.b
        public final void a() {
            if (this.a.s()) {
                return;
            }
            c.c(c.this, this.a, this.b);
        }

        @Override // com.anythink.expressad.splash.c.e.b
        public final void a(int i) {
            if (i == 1) {
                c.c(c.this, this.a, this.b);
            } else {
                c.this.a("readyState 2");
            }
        }

        @Override // com.anythink.expressad.splash.c.e.b
        public final void a(String str) {
            c.this.a(str);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.c.c$8, reason: invalid class name */
    public class AnonymousClass8 implements com.anythink.expressad.videocommon.d.c {
        public final /* synthetic */ com.anythink.expressad.foundation.d.c a;

        public AnonymousClass8(com.anythink.expressad.foundation.d.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str) {
            c.this.j.setVideoReady(true);
            String unused = c.c;
            Message messageObtain = Message.obtain();
            messageObtain.obj = this.a;
            messageObtain.what = 3;
            c.this.C.sendMessage(messageObtain);
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str, String str2) {
            c.this.j.setVideoReady(false);
            String unused = c.c;
            Message messageObtain = Message.obtain();
            messageObtain.obj = str;
            messageObtain.what = 2;
            c.this.C.sendMessage(messageObtain);
        }
    }

    public c(String str, String str2, long j) {
        this.e = str;
        this.d = str2;
        this.g = j;
    }

    private void a(long j) {
        this.C.postDelayed(this.D, j);
    }

    private void a(com.anythink.expressad.foundation.d.c cVar, int i) {
        ATSplashView aTSplashView = this.j;
        if (aTSplashView != null) {
            aTSplashView.setDynamicView(false);
        }
        if (cVar.j()) {
            d(cVar, i);
        }
        if (b.a(this.j, cVar)) {
            b(cVar, i);
            return;
        }
        this.j.clearResState();
        if (!TextUtils.isEmpty(cVar.c()) && !cVar.j()) {
            this.x = new AnonymousClass5(cVar, i);
            i.a().b(cVar.c(), (i.a) this.x);
        }
        if (cVar.j()) {
            return;
        }
        if (!TextUtils.isEmpty(cVar.d())) {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(cVar, i));
        }
        if (!TextUtils.isEmpty(cVar.S())) {
            this.w = new AnonymousClass8(cVar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            com.anythink.expressad.videocommon.b.e.a().a(this.d, arrayList, com.anythink.expressad.foundation.g.a.aV, this.w);
            if (com.anythink.expressad.videocommon.b.e.a().a(com.anythink.expressad.foundation.g.a.aV, this.d, cVar.A())) {
                this.j.setVideoReady(true);
                b(cVar, i);
            } else {
                com.anythink.expressad.videocommon.b.e.a().d(this.d);
            }
        }
        if (TextUtils.isEmpty(cVar.be())) {
            return;
        }
        d(cVar, i);
    }

    private void a(com.anythink.expressad.foundation.d.d dVar, int i) {
        ArrayList arrayList;
        if (dVar == null || dVar.J == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            com.anythink.expressad.foundation.d.c cVar = dVar.J.get(0);
            cVar.l(this.d);
            this.y = dVar.c();
            if (cVar.O() != 99 && (!TextUtils.isEmpty(cVar.c()) || !TextUtils.isEmpty(cVar.d()))) {
                if (t.a(cVar)) {
                    cVar.i(t.a(this.i, cVar.ba()) ? 1 : 2);
                }
                if (cVar.ae() == 1 || !t.a(this.i, cVar.ba()) || t.a(cVar)) {
                    arrayList.add(cVar);
                }
            }
        }
        if (arrayList == null || arrayList.size() <= 0) {
            a("invalid  campaign");
            return;
        }
        g();
        new StringBuilder("onload load suc size:").append(arrayList.size());
        com.anythink.expressad.foundation.d.c cVar2 = (com.anythink.expressad.foundation.d.c) arrayList.get(0);
        if (!TextUtils.isEmpty(cVar2.c()) || (!TextUtils.isEmpty(cVar2.d()) && cVar2.d().contains("<MBTPLMARK>"))) {
            cVar2.a(true);
            cVar2.b(false);
        } else {
            cVar2.a(false);
            cVar2.b(true);
        }
        ATSplashView aTSplashView = this.j;
        if (aTSplashView != null) {
            aTSplashView.setDynamicView(false);
        }
        if (cVar2.j()) {
            d(cVar2, i);
        }
        if (b.a(this.j, cVar2)) {
            b(cVar2, i);
            return;
        }
        this.j.clearResState();
        if (!TextUtils.isEmpty(cVar2.c()) && !cVar2.j()) {
            this.x = new AnonymousClass5(cVar2, i);
            i.a().b(cVar2.c(), (i.a) this.x);
        }
        if (cVar2.j()) {
            return;
        }
        if (!TextUtils.isEmpty(cVar2.d())) {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(cVar2, i));
        }
        if (!TextUtils.isEmpty(cVar2.S())) {
            this.w = new AnonymousClass8(cVar2);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(cVar2);
            com.anythink.expressad.videocommon.b.e.a().a(this.d, arrayList2, com.anythink.expressad.foundation.g.a.aV, this.w);
            if (com.anythink.expressad.videocommon.b.e.a().a(com.anythink.expressad.foundation.g.a.aV, this.d, cVar2.A())) {
                this.j.setVideoReady(true);
                b(cVar2, i);
            } else {
                com.anythink.expressad.videocommon.b.e.a().d(this.d);
            }
        }
        if (TextUtils.isEmpty(cVar2.be())) {
            return;
        }
        d(cVar2, i);
    }

    public static /* synthetic */ void a(c cVar, String str, com.anythink.expressad.foundation.d.c cVar2, int i) {
        e.c cVar3 = new e.c();
        cVar3.c(cVar.d);
        cVar3.b(cVar.e);
        cVar3.a(cVar2);
        cVar3.a(str);
        cVar3.b(cVar.o);
        cVar3.a(cVar.p);
        cVar3.a(cVar.a);
        e.a.a.a(cVar.j, cVar3, cVar.new AnonymousClass7(cVar2, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.u) {
            this.u = false;
        } else {
            b(str);
        }
    }

    private void a(String str, com.anythink.expressad.foundation.d.c cVar, int i) {
        e.c cVar2 = new e.c();
        cVar2.c(this.d);
        cVar2.b(this.e);
        cVar2.a(cVar);
        cVar2.a(str);
        cVar2.b(this.o);
        cVar2.a(this.p);
        cVar2.a(this.a);
        e.a.a.a(this.j, cVar2, new AnonymousClass7(cVar, i));
    }

    private List<com.anythink.expressad.foundation.d.c> b(com.anythink.expressad.foundation.d.d dVar) {
        if (dVar == null || dVar.J == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        com.anythink.expressad.foundation.d.c cVar = dVar.J.get(0);
        cVar.l(this.d);
        this.y = dVar.c();
        if (cVar.O() == 99) {
            return arrayList;
        }
        if (TextUtils.isEmpty(cVar.c()) && TextUtils.isEmpty(cVar.d())) {
            return arrayList;
        }
        if (t.a(cVar)) {
            cVar.i(t.a(this.i, cVar.ba()) ? 1 : 2);
        }
        if (cVar.ae() != 1 && t.a(this.i, cVar.ba()) && !t.a(cVar)) {
            return arrayList;
        }
        arrayList.add(cVar);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.anythink.expressad.foundation.d.c cVar, int i) {
        if (!b.a(this.j, cVar) || this.v) {
            return;
        }
        l();
        this.b = cVar;
        this.v = true;
        com.anythink.expressad.splash.b.c cVar2 = this.h;
        if (cVar2 != null) {
            cVar2.a(cVar, i);
        }
    }

    public static /* synthetic */ void b(c cVar, com.anythink.expressad.foundation.d.c cVar2, int i) {
        if (cVar2.j()) {
            b.a aVar = new b.a();
            aVar.b(cVar.d).a(cVar.e).a(cVar.o).a(cVar2).a(cVar.p).h(cVar.B);
            try {
                if (!TextUtils.isEmpty(cVar2.c())) {
                    Uri uri = Uri.parse(cVar2.c());
                    String queryParameter = uri.getQueryParameter("hdbtn");
                    String queryParameter2 = uri.getQueryParameter(com.anythink.expressad.video.dynview.a.a.L);
                    String queryParameter3 = uri.getQueryParameter("hdinfo");
                    String queryParameter4 = uri.getQueryParameter("shake_show");
                    String queryParameter5 = uri.getQueryParameter("shake_strength");
                    String queryParameter6 = uri.getQueryParameter("shake_time");
                    String queryParameter7 = uri.getQueryParameter("n_logo");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        aVar.b(Integer.parseInt(queryParameter));
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        aVar.c(Integer.parseInt(queryParameter2));
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        aVar.d(Integer.parseInt(queryParameter3));
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        aVar.e(Integer.parseInt(queryParameter4));
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        aVar.f(Integer.parseInt(queryParameter5));
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        aVar.g(Integer.parseInt(queryParameter6));
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        aVar.i(Integer.parseInt(queryParameter7) == 0 ? 0 : 1);
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            a unused = a.C0145a.a;
            a.a(cVar.j, new com.anythink.expressad.splash.a.b(aVar), cVar.new AnonymousClass6(cVar2, i));
        }
    }

    private void b(String str) {
        if (this.v) {
            return;
        }
        l();
        this.v = true;
        com.anythink.expressad.splash.b.c cVar = this.h;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    private void c(com.anythink.expressad.foundation.d.c cVar, int i) {
        this.j.clearResState();
        if (!TextUtils.isEmpty(cVar.c()) && !cVar.j()) {
            this.x = new AnonymousClass5(cVar, i);
            i.a().b(cVar.c(), (i.a) this.x);
        }
        if (cVar.j()) {
            return;
        }
        if (!TextUtils.isEmpty(cVar.d())) {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(cVar, i));
        }
        if (!TextUtils.isEmpty(cVar.S())) {
            this.w = new AnonymousClass8(cVar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            com.anythink.expressad.videocommon.b.e.a().a(this.d, arrayList, com.anythink.expressad.foundation.g.a.aV, this.w);
            if (com.anythink.expressad.videocommon.b.e.a().a(com.anythink.expressad.foundation.g.a.aV, this.d, cVar.A())) {
                this.j.setVideoReady(true);
                b(cVar, i);
            } else {
                com.anythink.expressad.videocommon.b.e.a().d(this.d);
            }
        }
        if (TextUtils.isEmpty(cVar.be())) {
            return;
        }
        d(cVar, i);
    }

    public static /* synthetic */ void c(c cVar, com.anythink.expressad.foundation.d.c cVar2, int i) {
        if (cVar.j.isH5Ready()) {
            return;
        }
        cVar.j.setH5Ready(true);
        cVar.b(cVar2, i);
    }

    private void c(String str) {
        a(str);
    }

    private void d(final com.anythink.expressad.foundation.d.c cVar, final int i) {
        b.a(this.j, cVar, new com.anythink.expressad.splash.view.a() { // from class: com.anythink.expressad.splash.c.c.3
            @Override // com.anythink.expressad.splash.view.a
            public final void a() {
                if (cVar.j() && c.this.j != null) {
                    c.this.j.setImageReady(true);
                    c.b(c.this, cVar, i);
                }
                c.this.b(cVar, i);
            }

            @Override // com.anythink.expressad.splash.view.a
            public final void b() {
                if (!cVar.j() || c.this.j == null) {
                    return;
                }
                c.this.j.setImageReady(false);
                c cVar2 = c.this;
                String unused = cVar2.s;
                cVar2.a("Image resource load faile");
            }
        });
    }

    private void e(com.anythink.expressad.foundation.d.c cVar, int i) {
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(cVar, i));
    }

    private boolean e() {
        return this.o;
    }

    private int f() {
        return this.p;
    }

    private void f(com.anythink.expressad.foundation.d.c cVar, int i) {
        if (cVar.j()) {
            return;
        }
        this.x = new AnonymousClass5(cVar, i);
        i.a().b(cVar.c(), (i.a) this.x);
    }

    private void g() {
        try {
            int i = this.z + 1;
            this.z = i;
            com.anythink.expressad.d.c cVar = this.k;
            if (cVar == null || i > cVar.t()) {
                this.z = 0;
            }
            new StringBuilder("onload,next offset is:").append(this.z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void g(com.anythink.expressad.foundation.d.c cVar, int i) {
        if (cVar.j()) {
            b.a aVar = new b.a();
            aVar.b(this.d).a(this.e).a(this.o).a(cVar).a(this.p).h(this.B);
            try {
                if (!TextUtils.isEmpty(cVar.c())) {
                    Uri uri = Uri.parse(cVar.c());
                    String queryParameter = uri.getQueryParameter("hdbtn");
                    String queryParameter2 = uri.getQueryParameter(com.anythink.expressad.video.dynview.a.a.L);
                    String queryParameter3 = uri.getQueryParameter("hdinfo");
                    String queryParameter4 = uri.getQueryParameter("shake_show");
                    String queryParameter5 = uri.getQueryParameter("shake_strength");
                    String queryParameter6 = uri.getQueryParameter("shake_time");
                    String queryParameter7 = uri.getQueryParameter("n_logo");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        aVar.b(Integer.parseInt(queryParameter));
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        aVar.c(Integer.parseInt(queryParameter2));
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        aVar.d(Integer.parseInt(queryParameter3));
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        aVar.e(Integer.parseInt(queryParameter4));
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        aVar.f(Integer.parseInt(queryParameter5));
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        aVar.g(Integer.parseInt(queryParameter6));
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        aVar.i(Integer.parseInt(queryParameter7) == 0 ? 0 : 1);
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            a unused = a.C0145a.a;
            a.a(this.j, new com.anythink.expressad.splash.a.b(aVar), new AnonymousClass6(cVar, i));
        }
    }

    private static void h() {
    }

    private void h(com.anythink.expressad.foundation.d.c cVar, int i) {
        if (this.j.isH5Ready()) {
            return;
        }
        this.j.setH5Ready(true);
        b(cVar, i);
    }

    private static void i() {
    }

    private void i(com.anythink.expressad.foundation.d.c cVar, int i) {
        this.w = new AnonymousClass8(cVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar);
        com.anythink.expressad.videocommon.b.e.a().a(this.d, arrayList, com.anythink.expressad.foundation.g.a.aV, this.w);
        if (!com.anythink.expressad.videocommon.b.e.a().a(com.anythink.expressad.foundation.g.a.aV, this.d, cVar.A())) {
            com.anythink.expressad.videocommon.b.e.a().d(this.d);
        } else {
            this.j.setVideoReady(true);
            b(cVar, i);
        }
    }

    private void j() {
        this.z = 0;
    }

    private static void k() {
    }

    private void l() {
        this.C.removeCallbacks(this.D);
    }

    public final String a() {
        return this.A;
    }

    public final void a(int i) {
        this.B = i;
    }

    public final void a(int i, int i2) {
        this.r = i;
        this.q = i2;
    }

    public final void a(com.anythink.expressad.d.c cVar) {
        this.k = cVar;
    }

    public final void a(com.anythink.expressad.foundation.d.d dVar) {
        ArrayList arrayList;
        this.v = false;
        this.s = "";
        this.t = 2;
        if (dVar == null || dVar.J == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            com.anythink.expressad.foundation.d.c cVar = dVar.J.get(0);
            cVar.l(this.d);
            this.y = dVar.c();
            if (cVar.O() != 99 && (!TextUtils.isEmpty(cVar.c()) || !TextUtils.isEmpty(cVar.d()))) {
                if (t.a(cVar)) {
                    cVar.i(t.a(this.i, cVar.ba()) ? 1 : 2);
                }
                if (cVar.ae() == 1 || !t.a(this.i, cVar.ba()) || t.a(cVar)) {
                    arrayList.add(cVar);
                }
            }
        }
        if (arrayList == null || arrayList.size() <= 0) {
            a("invalid  campaign");
            return;
        }
        g();
        new StringBuilder("onload load suc size:").append(arrayList.size());
        com.anythink.expressad.foundation.d.c cVar2 = (com.anythink.expressad.foundation.d.c) arrayList.get(0);
        if (!TextUtils.isEmpty(cVar2.c()) || (!TextUtils.isEmpty(cVar2.d()) && cVar2.d().contains("<MBTPLMARK>"))) {
            cVar2.a(true);
            cVar2.b(false);
        } else {
            cVar2.a(false);
            cVar2.b(true);
        }
        ATSplashView aTSplashView = this.j;
        if (aTSplashView != null) {
            aTSplashView.setDynamicView(false);
        }
        if (cVar2.j()) {
            d(cVar2, 2);
        }
        if (b.a(this.j, cVar2)) {
            b(cVar2, 2);
            return;
        }
        this.j.clearResState();
        if (!TextUtils.isEmpty(cVar2.c()) && !cVar2.j()) {
            this.x = new AnonymousClass5(cVar2, 2);
            i.a().b(cVar2.c(), (i.a) this.x);
        }
        if (cVar2.j()) {
            return;
        }
        if (!TextUtils.isEmpty(cVar2.d())) {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(cVar2, 2));
        }
        if (!TextUtils.isEmpty(cVar2.S())) {
            this.w = new AnonymousClass8(cVar2);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(cVar2);
            com.anythink.expressad.videocommon.b.e.a().a(this.d, arrayList2, com.anythink.expressad.foundation.g.a.aV, this.w);
            if (com.anythink.expressad.videocommon.b.e.a().a(com.anythink.expressad.foundation.g.a.aV, this.d, cVar2.A())) {
                this.j.setVideoReady(true);
                b(cVar2, 2);
            } else {
                com.anythink.expressad.videocommon.b.e.a().d(this.d);
            }
        }
        if (TextUtils.isEmpty(cVar2.be())) {
            return;
        }
        d(cVar2, 2);
    }

    public final void a(com.anythink.expressad.splash.b.c cVar) {
        this.h = cVar;
    }

    public final void a(ATSplashView aTSplashView) {
        this.j = aTSplashView;
    }

    public final void a(boolean z) {
        this.a = z;
    }

    public final void b() {
        if (this.h != null) {
            this.h = null;
        }
        if (this.w != null) {
            this.w = null;
        }
        if (this.x != null) {
            this.x = null;
        }
    }

    public final void b(int i) {
        this.p = i;
    }

    public final void b(boolean z) {
        this.o = z;
    }

    public final com.anythink.expressad.foundation.d.c c() {
        return this.b;
    }
}
