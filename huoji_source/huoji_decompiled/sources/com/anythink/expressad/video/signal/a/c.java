package com.anythink.expressad.video.signal.a;

import android.app.Activity;
import android.content.Context;
import com.anythink.expressad.out.p;
import com.anythink.expressad.video.signal.c;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.anythink.expressad.video.signal.c {
    public static final String d = "DefaultJSCommon";
    public String n;
    public com.anythink.expressad.videocommon.e.d o;
    public com.anythink.expressad.videocommon.c.c p;
    public com.anythink.expressad.a.a q;
    public boolean e = false;
    public boolean f = false;
    public int g = 0;
    public int h = 0;
    public int i = 0;
    public int j = 0;
    public int k = 0;
    public int l = 1;
    public int m = -1;
    public c.a r = new a();
    public int s = 2;

    public static class a implements c.a {
        @Override // com.anythink.expressad.video.signal.c.a
        public void a(int i, String str) {
            StringBuilder sb = new StringBuilder("onH5Error,code:");
            sb.append(i);
            sb.append("，msg:");
            sb.append(str);
        }

        @Override // com.anythink.expressad.out.p.c
        public void a(com.anythink.expressad.foundation.d.c cVar, String str) {
            StringBuilder sb = new StringBuilder("onStartRedirection,campaign:");
            sb.append(cVar);
            sb.append(",url:");
            sb.append(str);
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public void a(com.anythink.expressad.foundation.d.c cVar, boolean z) {
        }

        @Override // com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.out.j jVar) {
            new StringBuilder("onShowLoading,campaign:").append(jVar);
        }

        @Override // com.anythink.expressad.out.p.c
        public void a(com.anythink.expressad.out.j jVar, String str) {
            StringBuilder sb = new StringBuilder("onFinishRedirection,campaign:");
            sb.append(jVar);
            sb.append(",url:");
            sb.append(str);
        }

        @Override // com.anythink.expressad.out.p.c
        public final boolean a() {
            return false;
        }

        @Override // com.anythink.expressad.out.p.c
        public final void b() {
        }

        @Override // com.anythink.expressad.out.p.c
        public final void b(com.anythink.expressad.out.j jVar) {
            new StringBuilder("onDismissLoading,campaign:").append(jVar);
        }

        @Override // com.anythink.expressad.out.p.c
        public void b(com.anythink.expressad.out.j jVar, String str) {
            StringBuilder sb = new StringBuilder("onFinishRedirection,campaign:");
            sb.append(jVar);
            sb.append(",url:");
            sb.append(str);
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public void c() {
        }

        @Override // com.anythink.expressad.out.p.c
        public final void c(com.anythink.expressad.out.j jVar) {
            new StringBuilder("onDownloadStart,campaign:").append(jVar);
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public void d() {
        }

        @Override // com.anythink.expressad.out.p.c
        public final void d(com.anythink.expressad.out.j jVar) {
            new StringBuilder("onDownloadFinish,campaign:").append(jVar);
        }
    }

    public static class b implements c.a {
        private com.anythink.expressad.video.signal.c a;
        private c.a b;

        public b(com.anythink.expressad.video.signal.c cVar, c.a aVar) {
            this.a = cVar;
            this.b = aVar;
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public final void a(int i, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(i, str);
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.foundation.d.c cVar, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(cVar, str);
            }
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public final void a(com.anythink.expressad.foundation.d.c cVar, boolean z) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(cVar, z);
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.out.j jVar) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(jVar);
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final void a(com.anythink.expressad.out.j jVar, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.a(jVar, str);
            }
            com.anythink.expressad.video.signal.c cVar = this.a;
            if (cVar != null) {
                cVar.j();
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final boolean a() {
            c.a aVar = this.b;
            return aVar != null && aVar.a();
        }

        @Override // com.anythink.expressad.out.p.c
        public final void b() {
        }

        @Override // com.anythink.expressad.out.p.c
        public final void b(com.anythink.expressad.out.j jVar) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.b(jVar);
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final void b(com.anythink.expressad.out.j jVar, String str) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.b(jVar, str);
            }
            com.anythink.expressad.video.signal.c cVar = this.a;
            if (cVar != null) {
                cVar.j();
            }
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public final void c() {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.c();
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final void c(com.anythink.expressad.out.j jVar) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.c(jVar);
            }
        }

        @Override // com.anythink.expressad.video.signal.c.a
        public final void d() {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.d();
            }
        }

        @Override // com.anythink.expressad.out.p.c
        public final void d(com.anythink.expressad.out.j jVar) {
            c.a aVar = this.b;
            if (aVar != null) {
                aVar.d(jVar);
            }
        }
    }

    private void a(com.anythink.expressad.videocommon.c.c cVar) {
        this.p = cVar;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void a(int i) {
        this.s = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public void a(int i, String str) {
        StringBuilder sb = new StringBuilder("statistics,type:");
        sb.append(i);
        sb.append(",json:");
        sb.append(str);
    }

    @Override // com.anythink.expressad.video.signal.c
    public void a(Activity activity) {
    }

    @Override // com.anythink.expressad.video.signal.c
    public void a(Context context) {
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void a(c.a aVar) {
        new StringBuilder("setTrackingListener:").append(aVar);
        this.r = aVar;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void a(com.anythink.expressad.videocommon.e.d dVar) {
        new StringBuilder("setSetting:").append(dVar);
        this.o = dVar;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void a(String str) {
        this.n = str;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void a(boolean z) {
        this.f = z;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final boolean a() {
        return this.f;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int b() {
        if (this.h == 0 && this.f) {
            this.h = 1;
        }
        return this.h;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void b(int i) {
        this.h = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public void b(String str) {
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int c() {
        if (this.g == 0 && this.f) {
            this.g = 1;
        }
        return this.g;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void c(int i) {
        this.g = i;
    }

    @Override // com.anythink.expressad.video.signal.d
    public void click(int i, String str) {
        StringBuilder sb = new StringBuilder("click:type");
        sb.append(i);
        sb.append(",pt:");
        sb.append(str);
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int d() {
        if (this.i == 0 && this.f) {
            this.i = 1;
        }
        return this.i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void d(int i) {
        this.i = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int e() {
        return this.j;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void e(int i) {
        this.j = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int f() {
        return this.k;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void f(int i) {
        this.k = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void g(int i) {
        this.m = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final boolean g() {
        return this.e;
    }

    @Override // com.anythink.expressad.video.signal.c
    public String h(int i) {
        return MessageFormatter.DELIM_STR;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void h() {
        this.e = true;
    }

    @Override // com.anythink.expressad.video.signal.d
    public void handlerH5Exception(int i, String str) {
        StringBuilder sb = new StringBuilder("handlerH5Exception,code=");
        sb.append(i);
        sb.append(",msg:");
        sb.append(str);
    }

    @Override // com.anythink.expressad.video.signal.c
    public String i() {
        return MessageFormatter.DELIM_STR;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void i(int i) {
        this.l = i;
    }

    @Override // com.anythink.expressad.video.signal.c
    public void j() {
    }

    @Override // com.anythink.expressad.video.signal.c
    public final void k() {
        com.anythink.expressad.a.a aVar = this.q;
        if (aVar != null) {
            aVar.a();
            this.q.a((p.c) null);
            this.q.b();
        }
    }

    @Override // com.anythink.expressad.video.signal.c
    public void l() {
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int m() {
        return this.m;
    }

    @Override // com.anythink.expressad.video.signal.c
    public final int n() {
        new StringBuilder("getAlertDialogRole ").append(this.l);
        return this.l;
    }

    @Override // com.anythink.expressad.video.signal.c
    public String o() {
        return null;
    }
}
