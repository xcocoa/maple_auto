package com.anythink.core.common.res;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.g;
import com.anythink.core.common.res.image.a;
import java.io.FileInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String b = "ImageLoader";
    private static volatile b c;
    public Context a;
    private Map<String, Integer> d;
    private c<String, SoftReference<Bitmap>> e;
    private final Object f = new Object();
    private final ConcurrentHashMap<String, List<a>> g = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.anythink.core.common.res.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ Bitmap a;
        public final /* synthetic */ a b;
        public final /* synthetic */ String c;

        public AnonymousClass1(Bitmap bitmap, a aVar, String str) {
            this.a = bitmap;
            this.b = aVar;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Bitmap bitmap = this.a;
            if (bitmap != null) {
                this.b.onSuccess(this.c, bitmap);
            } else {
                this.b.onFail(this.c, "Bitmap load fail");
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.res.b$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ a a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        public AnonymousClass2(a aVar, String str, String str2) {
            this.a = aVar;
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.a.onFail(this.b, this.c);
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.res.b$5, reason: invalid class name */
    public class AnonymousClass5 implements a.InterfaceC0095a {
        public final /* synthetic */ int a;
        public final /* synthetic */ int b;
        public final /* synthetic */ e c;

        public AnonymousClass5(int i, int i2, e eVar) {
            this.a = i;
            this.b = i2;
            this.c = eVar;
        }

        @Override // com.anythink.core.common.res.image.a.InterfaceC0095a
        public final void a(e eVar) {
            new StringBuilder("Load Success:").append(eVar.f);
            Bitmap bitmapA = b.this.a(eVar, this.a, this.b);
            if (bitmapA != null) {
                b.this.a(eVar.f, bitmapA);
            }
            b.a(b.this, this.c.f, bitmapA);
        }

        @Override // com.anythink.core.common.res.image.a.InterfaceC0095a
        public final void a(e eVar, String str) {
            b.a(b.this, eVar.f, str);
        }
    }

    public interface a {
        void onFail(String str, String str2);

        void onSuccess(String str, Bitmap bitmap);
    }

    private b(Context context) {
        this.a = context.getApplicationContext();
        int iMaxMemory = ((int) Runtime.getRuntime().maxMemory()) / 5;
        StringBuilder sb = new StringBuilder("ImageLoad init cache size: ");
        sb.append(iMaxMemory);
        sb.append("B");
        this.e = new c<String, SoftReference<Bitmap>>(iMaxMemory) { // from class: com.anythink.core.common.res.b.3
            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
            private int a2(String str, SoftReference<Bitmap> softReference) {
                Bitmap bitmap = softReference != null ? softReference.get() : null;
                if (b.this.d == null) {
                    b.this.d = new HashMap(8);
                }
                if (bitmap != null) {
                    int rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
                    b.this.d.put(str, Integer.valueOf(rowBytes));
                    return rowBytes;
                }
                Integer num = (Integer) b.this.d.get(str);
                if (num != null) {
                    return num.intValue();
                }
                return 0;
            }

            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
            private void a2(boolean z, String str, SoftReference<Bitmap> softReference, SoftReference<Bitmap> softReference2) {
                Bitmap bitmap;
                super.a(z, str, softReference, softReference2);
                if (softReference != null) {
                    try {
                        bitmap = softReference.get();
                    } catch (Exception unused) {
                        return;
                    }
                } else {
                    bitmap = null;
                }
                if (b.this.d != null) {
                    b.this.d.remove(str);
                }
                if (softReference == null || softReference.equals(softReference2) || bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
            }

            @Override // com.anythink.core.common.res.c
            public final /* synthetic */ int a(String str, SoftReference<Bitmap> softReference) {
                String str2 = str;
                SoftReference<Bitmap> softReference2 = softReference;
                Bitmap bitmap = softReference2 != null ? softReference2.get() : null;
                if (b.this.d == null) {
                    b.this.d = new HashMap(8);
                }
                if (bitmap != null) {
                    int rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
                    b.this.d.put(str2, Integer.valueOf(rowBytes));
                    return rowBytes;
                }
                Integer num = (Integer) b.this.d.get(str2);
                if (num != null) {
                    return num.intValue();
                }
                return 0;
            }

            @Override // com.anythink.core.common.res.c
            public final /* synthetic */ void a(boolean z, String str, SoftReference<Bitmap> softReference, SoftReference<Bitmap> softReference2) {
                Bitmap bitmap;
                String str2 = str;
                SoftReference<Bitmap> softReference3 = softReference;
                SoftReference<Bitmap> softReference4 = softReference2;
                super.a(z, str2, softReference3, softReference4);
                if (softReference3 != null) {
                    try {
                        bitmap = softReference3.get();
                    } catch (Exception unused) {
                        return;
                    }
                } else {
                    bitmap = null;
                }
                if (b.this.d != null) {
                    b.this.d.remove(str2);
                }
                if (softReference3 == null || softReference3.equals(softReference4) || bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
            }
        };
    }

    private Bitmap a(String str) {
        SoftReference<Bitmap> softReferenceA = this.e.a(str);
        if (softReferenceA != null) {
            return softReferenceA.get();
        }
        return null;
    }

    public static b a(Context context) {
        if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = new b(context);
                }
            }
        }
        return c;
    }

    private void a() {
        try {
            c<String, SoftReference<Bitmap>> cVar = this.e;
            if (cVar != null) {
                cVar.a();
            }
            ConcurrentHashMap<String, List<a>> concurrentHashMap = this.g;
            if (concurrentHashMap != null) {
                concurrentHashMap.clear();
            }
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void a(b bVar, e eVar, int i, int i2, a aVar) {
        synchronized (bVar.g) {
            if (bVar.g.containsKey(eVar.f)) {
                LinkedList linkedList = (LinkedList) bVar.g.get(eVar.f);
                if (linkedList != null && aVar != null && !linkedList.contains(aVar)) {
                    linkedList.add(aVar);
                }
            } else {
                if (aVar != null) {
                    LinkedList linkedList2 = new LinkedList();
                    linkedList2.add(aVar);
                    bVar.g.put(eVar.f, linkedList2);
                }
                com.anythink.core.common.res.image.a aVar2 = new com.anythink.core.common.res.image.a(eVar);
                aVar2.a(bVar.new AnonymousClass5(i, i2, eVar));
                aVar2.d();
            }
        }
    }

    public static /* synthetic */ void a(b bVar, String str, Bitmap bitmap) {
        LinkedList<a> linkedList;
        synchronized (bVar.g) {
            try {
                linkedList = (LinkedList) bVar.g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                for (a aVar : linkedList) {
                    if (aVar != null) {
                        n.a().b(bVar.new AnonymousClass1(bitmap, aVar, str));
                    }
                }
            }
        }
    }

    public static /* synthetic */ void a(b bVar, String str, String str2) {
        LinkedList<a> linkedList;
        synchronized (bVar.g) {
            try {
                linkedList = (LinkedList) bVar.g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                for (a aVar : linkedList) {
                    if (aVar != null) {
                        n.a().b(bVar.new AnonymousClass2(aVar, str, str2));
                    }
                }
            }
        }
    }

    private void a(String str, String str2) {
        LinkedList<a> linkedList;
        synchronized (this.g) {
            try {
                linkedList = (LinkedList) this.g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                for (a aVar : linkedList) {
                    if (aVar != null) {
                        n.a().b(new AnonymousClass2(aVar, str, str2));
                    }
                }
            }
        }
    }

    private void b(e eVar, int i, int i2, a aVar) {
        synchronized (this.g) {
            if (this.g.containsKey(eVar.f)) {
                LinkedList linkedList = (LinkedList) this.g.get(eVar.f);
                if (linkedList != null && aVar != null && !linkedList.contains(aVar)) {
                    linkedList.add(aVar);
                }
            } else {
                if (aVar != null) {
                    LinkedList linkedList2 = new LinkedList();
                    linkedList2.add(aVar);
                    this.g.put(eVar.f, linkedList2);
                }
                com.anythink.core.common.res.image.a aVar2 = new com.anythink.core.common.res.image.a(eVar);
                aVar2.a(new AnonymousClass5(i, i2, eVar));
                aVar2.d();
            }
        }
    }

    private void b(String str, Bitmap bitmap) {
        LinkedList<a> linkedList;
        synchronized (this.g) {
            try {
                linkedList = (LinkedList) this.g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                for (a aVar : linkedList) {
                    if (aVar != null) {
                        n.a().b(new AnonymousClass1(bitmap, aVar, str));
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x004b A[EXC_TOP_SPLITTER, PHI: r0
      0x004b: PHI (r0v2 android.graphics.Bitmap) = (r0v0 android.graphics.Bitmap), (r0v4 android.graphics.Bitmap) binds: [B:22:0x004f, B:19:0x0049] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap a(e eVar, int i, int i2) {
        Bitmap bitmapA = null;
        if (eVar == null || TextUtils.isEmpty(eVar.f)) {
            return null;
        }
        String strA = g.a(eVar.f);
        if (i <= 0) {
            try {
                i = this.a.getResources().getDisplayMetrics().widthPixels;
            } catch (Throwable unused) {
            }
        }
        if (i2 <= 0) {
            i2 = this.a.getResources().getDisplayMetrics().heightPixels;
        }
        synchronized (this.f) {
            FileInputStream fileInputStreamA = d.a(this.a).a(eVar.e, strA);
            if (fileInputStreamA == null) {
                return null;
            }
            try {
                bitmapA = com.anythink.core.common.o.c.a(fileInputStreamA.getFD(), i, i2);
            } catch (Throwable unused2) {
                if (fileInputStreamA != null) {
                }
            }
            if (fileInputStreamA != null) {
                try {
                    fileInputStreamA.close();
                } catch (Exception unused3) {
                }
            }
            return bitmapA;
        }
    }

    public final void a(final e eVar, final int i, final int i2, final a aVar) {
        if (eVar == null || TextUtils.isEmpty(eVar.f)) {
            if (aVar != null) {
                aVar.onFail("", "No url info.");
                return;
            }
            return;
        }
        Bitmap bitmapA = a(eVar.f);
        if (bitmapA == null || bitmapA.isRecycled()) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.res.b.4
                @Override // java.lang.Runnable
                public final void run() {
                    Bitmap bitmapA2 = b.this.a(eVar, i, i2);
                    if (bitmapA2 == null || bitmapA2.isRecycled()) {
                        b.a(b.this, eVar, i, i2, aVar);
                        return;
                    }
                    StringBuilder sb = new StringBuilder("url image [");
                    sb.append(eVar.f);
                    sb.append("] is downloaded");
                    b.this.a(eVar.f, bitmapA2);
                    if (aVar != null) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(aVar);
                        b.this.g.put(eVar.f, linkedList);
                    }
                    b.a(b.this, eVar.f, bitmapA2);
                }
            }, 2, true);
        } else if (aVar != null) {
            aVar.onSuccess(eVar.f, bitmapA);
        }
    }

    public final void a(e eVar, a aVar) {
        a(eVar, -1, -1, aVar);
    }

    public final void a(String str, Bitmap bitmap) {
        if (a(str) != null || bitmap == null) {
            return;
        }
        this.e.b(str, new SoftReference<>(bitmap));
    }

    public final Bitmap b(e eVar, int i, int i2) {
        if (TextUtils.isEmpty(eVar.f)) {
            return null;
        }
        Bitmap bitmapA = a(eVar.f);
        if (bitmapA != null && !bitmapA.isRecycled()) {
            return bitmapA;
        }
        Bitmap bitmapA2 = a(eVar, i, i2);
        if (bitmapA2 != null && !bitmapA2.isRecycled()) {
            a(eVar.f, bitmapA2);
        }
        return bitmapA2;
    }
}
