package com.anythink.basead.a.b;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.anythink.basead.a.b.d;
import com.anythink.basead.mraid.MraidWebView;
import com.anythink.basead.mraid.d;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b implements d.a {
    public static final String a = "b";
    public l b;
    public n c;
    public m d;
    public com.anythink.core.common.m.b e = new com.anythink.core.common.m.b() { // from class: com.anythink.basead.a.b.b.1
        @Override // java.lang.Runnable
        public final void run() {
            b.this.a(com.anythink.basead.c.f.a("20001", com.anythink.basead.c.f.q));
        }
    };
    private String f;
    private boolean g;
    private int h;
    private String i;
    private List<String> j;
    private InterfaceC0049b k;
    private com.anythink.basead.a.a.c<Void, com.anythink.basead.c.e> l;
    private MraidWebView m;
    private volatile boolean n;

    /* JADX INFO: renamed from: com.anythink.basead.a.b.b$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ String a;

        public AnonymousClass2(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            com.anythink.core.common.n.b.a();
            String strA = com.anythink.core.common.n.b.a(b.this.d);
            com.anythink.core.common.n.b bVarA = com.anythink.core.common.n.b.a();
            long jCurrentTimeMillis = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder("recordOfferGetImageSizeStartTime, ");
            sb.append(strA);
            sb.append(", timeStamp: ");
            sb.append(jCurrentTimeMillis);
            bVarA.a(strA).d = jCurrentTimeMillis;
            b.a(b.this, this.a);
            com.anythink.core.common.n.b bVarA2 = com.anythink.core.common.n.b.a();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb2 = new StringBuilder("recordOfferGetImageSizeEndTime, ");
            sb2.append(strA);
            sb2.append(", timeStamp: ");
            sb2.append(jCurrentTimeMillis2);
            bVarA2.a(strA).e = jCurrentTimeMillis2;
            b.this.c();
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.b.b$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;

        public AnonymousClass3(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                b.this.m = new MraidWebView(com.anythink.core.common.b.n.a().f());
                String str = this.a;
                String str2 = this.b;
                MraidWebView mraidWebView = b.this.m;
                d.a aVar = new d.a() { // from class: com.anythink.basead.a.b.b.3.1
                    @Override // com.anythink.basead.mraid.d.a
                    public final void a() {
                        b.this.c();
                    }

                    @Override // com.anythink.basead.mraid.d.a
                    public final void a(com.anythink.basead.c.e eVar) {
                        b.this.a(eVar);
                    }
                };
                b bVar = b.this;
                com.anythink.basead.mraid.d.a(str, str2, mraidWebView, aVar, bVar.b, bVar.d, 5);
            } catch (Throwable th) {
                b.this.a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.G, com.anythink.basead.c.f.P + th.getMessage()));
            }
        }
    }

    public class a implements com.anythink.basead.a.a.b<Void, com.anythink.basead.c.e> {
        private a() {
        }

        public /* synthetic */ a(b bVar, byte b) {
            this();
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(com.anythink.basead.c.e eVar) {
            if (b.this.k != null) {
                String str = b.a;
                new StringBuilder("Offer load failed, OfferId -> ").append(b.this.i);
                b.this.k.a(eVar);
            }
            b.e(b.this);
        }

        private void b() {
            if (b.this.k != null) {
                String str = b.a;
                new StringBuilder("Offer load success, OfferId -> ").append(b.this.i);
                b.this.k.a();
            }
            b.e(b.this);
        }

        @Override // com.anythink.basead.a.a.b
        public final /* synthetic */ void a() {
            if (b.this.k != null) {
                String str = b.a;
                new StringBuilder("Offer load success, OfferId -> ").append(b.this.i);
                b.this.k.a();
            }
            b.e(b.this);
        }

        @Override // com.anythink.basead.a.a.b
        public final /* synthetic */ void a(com.anythink.basead.c.e eVar) {
            com.anythink.basead.c.e eVar2 = eVar;
            if (b.this.k != null) {
                String str = b.a;
                new StringBuilder("Offer load failed, OfferId -> ").append(b.this.i);
                b.this.k.a(eVar2);
            }
            b.e(b.this);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.b.b$b, reason: collision with other inner class name */
    public interface InterfaceC0049b {
        void a();

        void a(com.anythink.basead.c.e eVar);
    }

    public b(String str, boolean z, l lVar, m mVar) {
        this.f = str;
        this.g = z;
        this.b = lVar;
        this.d = mVar;
        n nVar = mVar.n;
        this.c = nVar;
        this.h = nVar.s();
        com.anythink.basead.a.b.a aVar = new com.anythink.basead.a.b.a();
        this.l = aVar;
        aVar.a((com.anythink.basead.a.a.b) new a(this, (byte) 0));
    }

    private void a() {
        List<String> listB = this.b.b(this.c);
        if (listB == null) {
            a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.m, "Incomplete resource allocation! MissResource: ".concat(String.valueOf(this.b.q()))));
            return;
        }
        int size = listB.size();
        if (size == 0) {
            c();
            return;
        }
        this.j = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = listB.get(i);
            if (!TextUtils.isEmpty(str)) {
                if (this.b.E(str)) {
                    if (!c.a(this.b, this.c) && !this.j.contains(str)) {
                        StringBuilder sb = new StringBuilder("videoInfo:video file is not ready to play -> ");
                        sb.append(str);
                        sb.append(",need readyRate:");
                        sb.append(this.c.W());
                        this.j.add(str);
                    }
                } else if (!c.c(str) && !this.j.contains(str)) {
                    this.j.add(str);
                }
            }
        }
        int size2 = this.j.size();
        if (size2 == 0) {
            StringBuilder sb2 = new StringBuilder("Offer(");
            sb2.append(this.i);
            sb2.append("), all files have already exist");
            c();
            return;
        }
        synchronized (this) {
            d.a().a(this);
            for (int i2 = 0; i2 < size2; i2++) {
                String str2 = this.j.get(i2);
                boolean zE = this.b.E(str2);
                int iW = this.c.W();
                if (zE) {
                    if (c.a(this.b, this.c)) {
                        StringBuilder sb3 = new StringBuilder("Video file ready -> ");
                        sb3.append(str2);
                        sb3.append(",videoNeedReadyRate:");
                        sb3.append(iW);
                        d.a().a(str2, iW);
                    } else {
                        StringBuilder sb4 = new StringBuilder("Video file not exis -> ");
                        sb4.append(str2);
                        sb4.append(",videoNeedReadyRate:");
                        sb4.append(iW);
                        new f(this.f, this.b, this.c).a();
                    }
                } else if (!c.a(str2)) {
                    if (c.c(str2)) {
                        c.a(str2, 100);
                        d.a().a(str2, 100);
                    } else {
                        c.a(str2, 0);
                        new e(this.f, this.g, this.b, str2).d();
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(b bVar, String str) throws Throwable {
        int i;
        int i2;
        int i3;
        InputStream inputStreamOpenStream;
        InputStream inputStream = null;
        try {
            try {
                inputStreamOpenStream = new URL(str).openStream();
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStreamOpenStream, null, options);
                i3 = options.outWidth;
                try {
                    i2 = options.outHeight;
                } catch (IOException e2) {
                    e = e2;
                    i2 = 0;
                }
                try {
                    StringBuilder sb = new StringBuilder("getImageDimensions, width: ");
                    sb.append(i3);
                    sb.append(", height: ");
                    sb.append(i2);
                    if (inputStreamOpenStream != null) {
                        try {
                            inputStreamOpenStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                } catch (IOException e4) {
                    e = e4;
                    i = i3;
                    inputStream = inputStreamOpenStream;
                    StringBuilder sb2 = new StringBuilder("getImageDimensions, ");
                    sb2.append(str);
                    sb2.append(", \n error: ");
                    sb2.append(e.getMessage());
                    e.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    i3 = i;
                }
            } catch (IOException e6) {
                e = e6;
                inputStream = inputStreamOpenStream;
                i = 0;
                i2 = 0;
                StringBuilder sb22 = new StringBuilder("getImageDimensions, ");
                sb22.append(str);
                sb22.append(", \n error: ");
                sb22.append(e.getMessage());
                e.printStackTrace();
                if (inputStream != null) {
                }
                i3 = i;
                if (i3 < 0) {
                }
                if (i2 >= 0) {
                }
                bVar.b.m(i3);
                bVar.b.n(i);
            }
            if (i3 < 0) {
                i3 = 0;
            }
            int i4 = i2 >= 0 ? i2 : 0;
            bVar.b.m(i3);
            bVar.b.n(i4);
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.anythink.basead.c.e eVar) {
        this.n = true;
        com.anythink.basead.a.a.c<Void, com.anythink.basead.c.e> cVar = this.l;
        if (cVar != null) {
            cVar.a(eVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(String str) throws Throwable {
        int i;
        int i2;
        int i3;
        InputStream inputStreamOpenStream;
        InputStream inputStream = null;
        try {
            try {
                inputStreamOpenStream = new URL(str).openStream();
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStreamOpenStream, null, options);
                i3 = options.outWidth;
                try {
                    i2 = options.outHeight;
                } catch (IOException e2) {
                    e = e2;
                    i2 = 0;
                }
                try {
                    StringBuilder sb = new StringBuilder("getImageDimensions, width: ");
                    sb.append(i3);
                    sb.append(", height: ");
                    sb.append(i2);
                    if (inputStreamOpenStream != null) {
                        try {
                            inputStreamOpenStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                } catch (IOException e4) {
                    e = e4;
                    i = i3;
                    inputStream = inputStreamOpenStream;
                    StringBuilder sb2 = new StringBuilder("getImageDimensions, ");
                    sb2.append(str);
                    sb2.append(", \n error: ");
                    sb2.append(e.getMessage());
                    e.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    i3 = i;
                }
            } catch (IOException e6) {
                e = e6;
                inputStream = inputStreamOpenStream;
                i = 0;
                i2 = 0;
                StringBuilder sb22 = new StringBuilder("getImageDimensions, ");
                sb22.append(str);
                sb22.append(", \n error: ");
                sb22.append(e.getMessage());
                e.printStackTrace();
                if (inputStream != null) {
                }
                i3 = i;
                if (i3 < 0) {
                }
                if (i2 >= 0) {
                }
                this.b.m(i3);
                this.b.n(i);
            }
            if (i3 < 0) {
                i3 = 0;
            }
            int i4 = i2 >= 0 ? i2 : 0;
            this.b.m(i3);
            this.b.n(i4);
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            throw th;
        }
    }

    private void a(boolean z) {
        String strA = com.anythink.basead.mraid.d.a(this.d, this.b);
        if (TextUtils.isEmpty(strA)) {
            a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.G, com.anythink.basead.c.f.M));
        } else if (!z) {
            c();
        } else {
            com.anythink.core.common.b.n.a().b(new AnonymousClass3(c.b(this.d, this.b), strA));
        }
    }

    private void b() {
        m mVar = this.d;
        if (!mVar.p) {
            c();
            return;
        }
        if (!String.valueOf(mVar.j).equals("0")) {
            c();
            return;
        }
        l lVar = this.b;
        if ((lVar instanceof j) && !TextUtils.isEmpty(((j) lVar).a())) {
            c();
            return;
        }
        if (this.d.o) {
            c();
            return;
        }
        String strY = this.b.y();
        if (TextUtils.isEmpty(strY)) {
            c();
        } else {
            com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass2(strY), 4, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.anythink.basead.a.a.c<Void, com.anythink.basead.c.e> cVar = this.l;
        if (cVar != null) {
            cVar.a();
        }
    }

    private void d() {
        d.a().b(this);
        com.anythink.core.common.m.d.a().b(this.e);
    }

    private void e() {
        com.anythink.core.common.m.d.a().a(this.e, this.h, false);
    }

    public static /* synthetic */ void e(b bVar) {
        d.a().b(bVar);
        com.anythink.core.common.m.d.a().b(bVar.e);
    }

    private void f() {
        m mVar = this.d;
        if (mVar == null || mVar.n == null) {
            return;
        }
        Context contextF = com.anythink.core.common.b.n.a().f();
        int iMin = 0;
        try {
            iMin = Math.min(contextF.getResources().getDisplayMetrics().widthPixels, contextF.getResources().getDisplayMetrics().heightPixels) / 2;
        } catch (Throwable unused) {
        }
        if (String.valueOf(this.d.j).equals("1") && !this.b.I() && this.d.n.aj() != 1) {
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(contextF).b(com.anythink.core.common.b.n.a().o());
            int iAk = this.d.n.ak();
            List<String> listI = iAk != 2 ? iAk != 3 ? iAk != 5 ? null : aVarB.i() : aVarB.j() : aVarB.h();
            if (listI != null && listI.size() > 0) {
                for (String str : listI) {
                    if (!TextUtils.isEmpty(str) && !c.b(str, 3)) {
                        com.anythink.core.common.res.b.a(contextF).a(new com.anythink.core.common.res.e(3, str), iMin, iMin, null);
                    }
                }
            }
        }
        if (this.d.n.Q() != 1 || TextUtils.isEmpty(this.d.n.b())) {
            return;
        }
        com.anythink.core.common.res.b.a(contextF).a(new com.anythink.core.common.res.e(3, this.d.n.b()), iMin, iMin, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(InterfaceC0049b interfaceC0049b) {
        String str;
        String str2;
        int iMin;
        l lVar = this.b;
        if (lVar == null || this.l == null) {
            str = "-9999";
            str2 = com.anythink.basead.c.f.x;
        } else {
            this.i = lVar.t();
            this.k = interfaceC0049b;
            m mVar = this.d;
            if (mVar != null && mVar.n != null) {
                Context contextF = com.anythink.core.common.b.n.a().f();
                try {
                    iMin = Math.min(contextF.getResources().getDisplayMetrics().widthPixels, contextF.getResources().getDisplayMetrics().heightPixels) / 2;
                } catch (Throwable unused) {
                    iMin = 0;
                }
                if (String.valueOf(this.d.j).equals("1") && !this.b.I() && this.d.n.aj() != 1) {
                    com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(contextF).b(com.anythink.core.common.b.n.a().o());
                    int iAk = this.d.n.ak();
                    List<String> listI = iAk != 2 ? iAk != 3 ? iAk != 5 ? null : aVarB.i() : aVarB.j() : aVarB.h();
                    if (listI != null && listI.size() > 0) {
                        for (String str3 : listI) {
                            if (!TextUtils.isEmpty(str3) && !c.b(str3, 3)) {
                                com.anythink.core.common.res.b.a(contextF).a(new com.anythink.core.common.res.e(3, str3), iMin, iMin, null);
                            }
                        }
                    }
                }
                if (this.d.n.Q() == 1 && !TextUtils.isEmpty(this.d.n.b())) {
                    com.anythink.core.common.res.b.a(contextF).a(new com.anythink.core.common.res.e(3, this.d.n.b()), iMin, iMin, null);
                }
            }
            com.anythink.core.common.m.d.a().a(this.e, this.h, false);
            if (!this.b.k()) {
                this.l.a(2);
                m mVar2 = this.d;
                if (mVar2.p && String.valueOf(mVar2.j).equals("0")) {
                    l lVar2 = this.b;
                    if ((!(lVar2 instanceof j) || TextUtils.isEmpty(((j) lVar2).a())) && !this.d.o) {
                        String strY = this.b.y();
                        if (TextUtils.isEmpty(strY)) {
                            c();
                        } else {
                            com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass2(strY), 4, true);
                        }
                    }
                }
                a();
                return;
            }
            this.n = false;
            n nVar = this.c;
            if (nVar == null) {
                return;
            }
            String strValueOf = String.valueOf(nVar.z());
            boolean z = strValueOf.equals("1") || strValueOf.equals("3");
            this.l.a(1);
            if (z) {
                this.l.a(2);
                a();
            }
            if (this.n) {
                return;
            }
            boolean Z = this.c.Z();
            String strA = com.anythink.basead.mraid.d.a(this.d, this.b);
            if (!TextUtils.isEmpty(strA)) {
                if (Z) {
                    com.anythink.core.common.b.n.a().b(new AnonymousClass3(c.b(this.d, this.b), strA));
                    return;
                } else {
                    c();
                    return;
                }
            }
            str = com.anythink.basead.c.f.G;
            str2 = com.anythink.basead.c.f.M;
        }
        a(com.anythink.basead.c.f.a(str, str2));
    }

    @Override // com.anythink.basead.a.b.d.a
    public final void a(String str, int i) {
        synchronized (this) {
            c.a(str, i);
            if (this.j.contains(str) && (!this.b.E(str) || this.c.W() <= i)) {
                if (this.b.E(str)) {
                    g.a(this.b, this.c);
                }
                List<String> list = this.j;
                if (list != null) {
                    list.remove(str);
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.i);
                    sb.append(" onResourceLoadSuccess -> resourceUrl:");
                    sb.append(str);
                    sb.append(",curmUrlList.size():");
                    sb.append(this.j.size());
                    if (this.j.size() == 0) {
                        c();
                    }
                }
            }
        }
    }

    @Override // com.anythink.basead.a.b.d.a
    public final void a(String str, com.anythink.basead.c.e eVar) {
        synchronized (this) {
            c.a(str, -1);
            a(eVar);
        }
    }
}
