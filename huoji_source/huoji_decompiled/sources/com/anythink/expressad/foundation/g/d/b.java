package com.anythink.expressad.foundation.g.d;

import android.content.Context;
import android.graphics.Bitmap;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.g.d.d;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.foundation.h.t;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String a = "ImageLoader";
    private static final int b = 1;
    private static final int c = 2;
    private static final String d = "message_key";
    private static final String e = "message_bitmap";
    private static final String f = "message_message";
    private static b g;
    private com.anythink.expressad.foundation.g.g.c h;
    private final LinkedHashMap<String, List<c>> j = new LinkedHashMap<>();
    private com.anythink.expressad.foundation.g.a.e<String, Bitmap> i = new com.anythink.expressad.foundation.g.a.c(((int) Runtime.getRuntime().maxMemory()) / 5);

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.g.d.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;
        public final /* synthetic */ c d;
        public final /* synthetic */ boolean e = false;

        public AnonymousClass1(String str, String str2, String str3, c cVar) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            File file = new File(this.a);
            Bitmap bitmapA = b.this.a(this.b);
            if (bitmapA != null && !bitmapA.isRecycled()) {
                b.a(b.this, this.c, bitmapA, this.d);
                return;
            }
            if (file.length() <= 0) {
                b.a(b.this, this.c, this.b, this.a, false, this.d);
                return;
            }
            Bitmap bitmapA2 = a.a(this.a);
            if (bitmapA2 == null || bitmapA2.isRecycled()) {
                b.a(b.this, this.c, this.b, this.a, true, this.d);
            } else {
                b.this.a(this.b, bitmapA2);
                b.a(b.this, this.c, bitmapA2, this.d);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.g.d.b$2, reason: invalid class name */
    public class AnonymousClass2 implements d.a {
        public final /* synthetic */ String a;

        public AnonymousClass2(String str) {
            this.a = str;
        }

        @Override // com.anythink.expressad.foundation.g.d.d.a
        public final void a(final String str, final String str2) {
            com.anythink.core.common.o.b.b.a().a(new com.anythink.core.common.o.b.d() { // from class: com.anythink.expressad.foundation.g.d.b.2.1
                @Override // com.anythink.core.common.o.b.d
                public final void a() {
                    synchronized (b.this.j) {
                        Bitmap bitmapA = a.a(str2);
                        b.this.a(str, bitmapA);
                        LinkedList<c> linkedList = (LinkedList) b.this.j.remove(str);
                        if (linkedList != null) {
                            for (c cVar : linkedList) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                b.a(b.this, anonymousClass2.a, bitmapA, cVar);
                            }
                        }
                    }
                }
            });
        }

        @Override // com.anythink.expressad.foundation.g.d.d.a
        public final void b(final String str, final String str2) {
            com.anythink.core.common.o.b.b.a().a(new com.anythink.core.common.o.b.d() { // from class: com.anythink.expressad.foundation.g.d.b.2.2
                @Override // com.anythink.core.common.o.b.d
                public final void a() {
                    synchronized (b.this.j) {
                        LinkedList<c> linkedList = (LinkedList) b.this.j.remove(str);
                        if (linkedList != null) {
                            for (c cVar : linkedList) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                b bVar = b.this;
                                String str3 = anonymousClass2.a;
                                n.a().b(bVar.new AnonymousClass4(cVar, str2, str3));
                            }
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.g.d.b$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ c a;
        public final /* synthetic */ Bitmap b;
        public final /* synthetic */ String c;

        public AnonymousClass3(c cVar, Bitmap bitmap, String str) {
            this.a = cVar;
            this.b = bitmap;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.a != null) {
                Bitmap bitmap = this.b;
                if (bitmap == null || bitmap.isRecycled()) {
                    this.a.a("bitmap no available", this.c);
                } else {
                    this.a.a(this.b, this.c);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.g.d.b$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public final /* synthetic */ c a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        public AnonymousClass4(c cVar, String str, String str2) {
            this.a = cVar;
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            c cVar = this.a;
            if (cVar != null) {
                cVar.a(this.b, this.c);
            }
        }
    }

    private b(Context context) {
        this.h = new com.anythink.expressad.foundation.g.g.c(context);
    }

    public static b a(Context context) {
        if (g == null) {
            g = new b(context);
        }
        return g;
    }

    private d a(String str, String str2, String str3, boolean z) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(str);
        d dVar = new d(str, str2, str3);
        dVar.a(z);
        dVar.a(anonymousClass2);
        return dVar;
    }

    public static void a() {
        com.anythink.expressad.foundation.g.a.e<String, Bitmap> eVar = g.i;
        if (eVar != null) {
            eVar.b();
        }
    }

    public static /* synthetic */ void a(b bVar, String str, Bitmap bitmap, c cVar) {
        n.a().b(bVar.new AnonymousClass3(cVar, bitmap, str));
    }

    public static /* synthetic */ void a(b bVar, String str, String str2, String str3, boolean z, c cVar) {
        synchronized (bVar.j) {
            if (bVar.j.containsKey(str2)) {
                LinkedList linkedList = (LinkedList) bVar.j.get(str2);
                if (linkedList != null && cVar != null && !linkedList.contains(cVar)) {
                    linkedList.add(cVar);
                }
            } else {
                if (cVar != null) {
                    LinkedList linkedList2 = new LinkedList();
                    linkedList2.add(cVar);
                    bVar.j.put(str2, linkedList2);
                }
                AnonymousClass2 anonymousClass2 = bVar.new AnonymousClass2(str);
                d dVar = new d(str, str2, str3);
                dVar.a(z);
                dVar.a(anonymousClass2);
                bVar.h.a(dVar);
            }
        }
    }

    private void a(String str, Bitmap bitmap, c cVar) {
        n.a().b(new AnonymousClass3(cVar, bitmap, str));
    }

    private void a(String str, String str2, c cVar) {
        n.a().b(new AnonymousClass4(cVar, str2, str));
    }

    private void a(String str, String str2, String str3, c cVar) {
        if (t.a(str) || t.a(str2) || t.a(str3)) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass1(str3, str2, str, cVar));
    }

    private void a(String str, String str2, String str3, boolean z, c cVar) {
        synchronized (this.j) {
            if (this.j.containsKey(str2)) {
                LinkedList linkedList = (LinkedList) this.j.get(str2);
                if (linkedList != null && cVar != null && !linkedList.contains(cVar)) {
                    linkedList.add(cVar);
                }
            } else {
                if (cVar != null) {
                    LinkedList linkedList2 = new LinkedList();
                    linkedList2.add(cVar);
                    this.j.put(str2, linkedList2);
                }
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(str);
                d dVar = new d(str, str2, str3);
                dVar.a(z);
                dVar.a(anonymousClass2);
                this.h.a(dVar);
            }
        }
    }

    private void b() {
        this.i.b();
        LinkedHashMap<String, List<c>> linkedHashMap = this.j;
        if (linkedHashMap != null) {
            linkedHashMap.clear();
        }
    }

    private void c() {
        com.anythink.expressad.foundation.g.a.e<String, Bitmap> eVar = this.i;
        if (eVar != null) {
            eVar.b();
        }
    }

    private Bitmap d(String str) {
        Bitmap bitmapA;
        if (t.a(str)) {
            return null;
        }
        String strA = s.a(str);
        File file = new File(strA);
        if (a(str) != null) {
            return a(str);
        }
        if (!file.exists() || (bitmapA = a.a(strA)) == null) {
            return null;
        }
        a(str, bitmapA);
        return bitmapA;
    }

    public final Bitmap a(String str) {
        return this.i.b(str);
    }

    public final void a(String str, Bitmap bitmap) {
        if (a(str) != null || bitmap == null) {
            return;
        }
        this.i.a(str, bitmap);
    }

    public final void a(String str, c cVar) {
        String strA = s.a(str);
        if (t.a(str) || t.a(str) || t.a(strA)) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass1(strA, str, str, cVar));
    }

    public final boolean b(String str) {
        if (t.a(str)) {
            return false;
        }
        return a(str) != null || new File(s.a(str)).exists();
    }

    public final void c(String str) {
        try {
            com.anythink.expressad.foundation.g.a.e<String, Bitmap> eVar = this.i;
            if (eVar == null || !eVar.a().contains(str)) {
                return;
            }
            this.i.a(str);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
