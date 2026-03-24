package com.iflytek.voiceads.download;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.iflytek.voiceads.download.DownloadService;
import com.iflytek.voiceads.download.b.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a implements com.iflytek.voiceads.download.a.b, d.a {
    private static a a;
    private com.iflytek.voiceads.download.b.a e;
    private com.iflytek.voiceads.download.c.a f;
    private Context g;
    private com.iflytek.voiceads.download.d.a h;
    private DownloadService.a i;
    private ServiceConnection j = new b(this);
    private List<com.iflytek.voiceads.download.d.a> d = new ArrayList();
    private ConcurrentHashMap<Integer, Object> c = new ConcurrentHashMap<>();
    private ExecutorService b = Executors.newFixedThreadPool(2);

    private a(Context context) {
        this.g = context;
        this.f = new com.iflytek.voiceads.download.c.b(context);
        this.e = new com.iflytek.voiceads.download.b.b(this.f);
    }

    public static com.iflytek.voiceads.download.a.b a(Context context) {
        synchronized (a.class) {
            if (a == null) {
                a = new a(context);
            }
        }
        return a;
    }

    private void c() {
        for (com.iflytek.voiceads.download.d.a aVar : this.d) {
            if (aVar.g() == 3) {
                e(aVar);
                return;
            }
        }
    }

    private void e(com.iflytek.voiceads.download.d.a aVar) {
        if (this.c.size() >= 2) {
            aVar.a(3);
            this.e.a(aVar);
            return;
        }
        com.iflytek.voiceads.download.b.d dVar = new com.iflytek.voiceads.download.b.d(this.b, this.e, aVar, this);
        this.c.put(Integer.valueOf(aVar.h()), dVar);
        aVar.a(1);
        this.e.a(aVar);
        dVar.a();
    }

    @Override // com.iflytek.voiceads.download.a.b
    public com.iflytek.voiceads.download.d.a a(int i) {
        return this.f.a(i);
    }

    public List<com.iflytek.voiceads.download.d.a> a() {
        return this.f.a();
    }

    @Override // com.iflytek.voiceads.download.a.b
    public void a(com.iflytek.voiceads.download.d.a aVar) {
        this.h = aVar;
        if (this.i != null) {
            this.i.a(aVar);
            return;
        }
        try {
            Class.forName("com.iflytek.voiceads.download.DownloadService");
            Intent intent = new Intent(this.g, (Class<?>) DownloadService.class);
            this.g.startService(intent);
            this.g.bindService(intent, this.j, 1);
        } catch (ClassNotFoundException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "service not found");
        }
    }

    @Override // com.iflytek.voiceads.download.a.b
    public void b() {
        try {
            for (com.iflytek.voiceads.download.d.a aVar : a()) {
                File file = new File(aVar.c());
                if (file.exists() && file.delete()) {
                    this.f.b(aVar);
                }
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "clearAllDownloaded:" + e.getMessage());
        }
    }

    @Override // com.iflytek.voiceads.download.a.b
    public void b(com.iflytek.voiceads.download.d.a aVar) {
        this.d.add(aVar);
        e(aVar);
    }

    @Override // com.iflytek.voiceads.download.b.d.a
    public void c(com.iflytek.voiceads.download.d.a aVar) {
        if (aVar != null) {
            this.c.remove(Integer.valueOf(aVar.h()));
            this.d.remove(aVar);
        }
        c();
    }

    @Override // com.iflytek.voiceads.download.b.d.a
    public void d(com.iflytek.voiceads.download.d.a aVar) {
        if (aVar != null) {
            this.c.remove(Integer.valueOf(aVar.h()));
            this.d.remove(aVar);
        }
    }
}
