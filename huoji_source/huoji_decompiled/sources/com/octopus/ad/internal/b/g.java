package com.octopus.ad.internal.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    private final AtomicInteger a = new AtomicInteger(0);
    private final String b;
    private volatile e c;
    private final List<b> d;
    private final b e;
    private final c f;

    public static final class a extends Handler implements b {
        private final String a;
        private final List<b> b;

        public a(String str, List<b> list) {
            super(Looper.getMainLooper());
            this.a = str;
            this.b = list;
        }

        @Override // com.octopus.ad.internal.b.b
        public void a(File file, String str, int i) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i;
            messageObtainMessage.obj = file;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator<b> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().a((File) message.obj, this.a, message.arg1);
            }
        }
    }

    public g(String str, c cVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.d = copyOnWriteArrayList;
        this.b = (String) k.a(str);
        this.f = (c) k.a(cVar);
        this.e = new a(str, copyOnWriteArrayList);
    }

    private synchronized void b() throws m {
        this.c = this.c == null ? d() : this.c;
    }

    private synchronized void c() {
        if (this.a.decrementAndGet() <= 0) {
            this.c.a();
            this.c = null;
        }
    }

    private e d() throws m {
        e eVar = new e(new h(this.b, this.f.d), new com.octopus.ad.internal.b.a.b(this.f.a(this.b), this.f.c));
        eVar.a(this.e);
        return eVar;
    }

    public int a() {
        return this.a.get();
    }

    public void a(d dVar, Socket socket) throws m, IOException {
        b();
        try {
            this.a.incrementAndGet();
            this.c.a(dVar, socket);
        } finally {
            c();
        }
    }
}
