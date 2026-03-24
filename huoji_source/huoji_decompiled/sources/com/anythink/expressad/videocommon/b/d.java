package com.anythink.expressad.videocommon.b;

import android.text.TextUtils;
import com.anythink.expressad.videocommon.b.i;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class d implements i.c {
    private static String a = "DownLoadH5SourceListener";
    private ConcurrentMap<String, d> b;
    private m c;
    private CopyOnWriteArrayList<i.d> d;
    private String e;

    public d(ConcurrentMap<String, d> concurrentMap, m mVar, i.d dVar, String str) {
        CopyOnWriteArrayList<i.d> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.d = copyOnWriteArrayList;
        this.b = concurrentMap;
        this.c = mVar;
        copyOnWriteArrayList.add(dVar);
        this.e = str;
    }

    @Override // com.anythink.expressad.videocommon.b.i.c
    public final void a() {
    }

    public final void a(i.d dVar) {
        this.d.add(dVar);
    }

    @Override // com.anythink.expressad.videocommon.b.i.c
    public final void a(String str) {
        ConcurrentMap<String, d> concurrentMap;
        try {
            concurrentMap = this.b;
        } catch (Exception e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
            try {
                str = e.getMessage();
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        if (concurrentMap == null) {
            for (i.d dVar : this.d) {
                if (dVar != null) {
                    dVar.a(this.e, "mResDownloadingMap  is null");
                    this.d.remove(dVar);
                }
            }
            return;
        }
        if (concurrentMap.containsKey(this.e)) {
            this.b.remove(this.e);
        }
        for (i.d dVar2 : this.d) {
            if (dVar2 != null) {
                dVar2.a(this.e, str);
                this.d.remove(dVar2);
            }
        }
    }

    @Override // com.anythink.expressad.videocommon.b.i.c
    public final void a(byte[] bArr, String str) {
        String message;
        ConcurrentMap<String, d> concurrentMap;
        try {
            concurrentMap = this.b;
        } catch (Exception e) {
            if (com.anythink.expressad.a.a) {
                e.printStackTrace();
            }
            try {
                message = e.getMessage();
            } catch (Throwable th) {
                th.getMessage();
                message = "";
            }
        }
        if (concurrentMap == null) {
            for (i.d dVar : this.d) {
                if (dVar != null) {
                    dVar.a(str, "mResDownloadingMap  is null");
                    this.d.remove(dVar);
                }
            }
            return;
        }
        if (concurrentMap.containsKey(str)) {
            this.b.remove(str);
        }
        if (bArr == null || bArr.length <= 0) {
            message = "response data is error";
        } else {
            String strA = this.c.a(str, bArr);
            if (TextUtils.isEmpty(strA)) {
                for (i.d dVar2 : this.d) {
                    if (dVar2 != null) {
                        dVar2.a(str);
                        this.d.remove(dVar2);
                    }
                }
                return;
            }
            message = "data save failed:".concat(String.valueOf(strA));
        }
        for (i.d dVar3 : this.d) {
            if (dVar3 != null) {
                dVar3.a(str, message);
            }
        }
    }
}
