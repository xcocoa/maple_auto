package com.octopus.ad.internal.b;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.octopus.ad.internal.utilities.HaoboLog;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private final Object a;
    private final ExecutorService b;
    private final Map<String, g> c;
    private final ServerSocket d;
    private final int e;
    private final Thread f;
    private final com.octopus.ad.internal.b.c g;
    private final j h;

    public static final class a {
        private File a;
        private com.octopus.ad.internal.b.b.c d;
        private com.octopus.ad.internal.b.a.a c = new com.octopus.ad.internal.b.a.g(536870912);
        private com.octopus.ad.internal.b.a.c b = new com.octopus.ad.internal.b.a.f();

        public a(Context context) {
            this.d = com.octopus.ad.internal.b.b.d.a(context);
            this.a = q.a(context);
        }

        private com.octopus.ad.internal.b.c b() {
            return new com.octopus.ad.internal.b.c(this.a, this.b, this.c, this.d);
        }

        public a a(long j) {
            this.c = new com.octopus.ad.internal.b.a.g(j);
            return this;
        }

        public f a() {
            return new f(b());
        }
    }

    public final class b implements Runnable {
        private final Socket b;

        public b(Socket socket) {
            this.b = socket;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.a(this.b);
        }
    }

    public final class c implements Runnable {
        private final CountDownLatch b;

        public c(CountDownLatch countDownLatch) {
            this.b = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.b.countDown();
            f.this.b();
        }
    }

    private f(com.octopus.ad.internal.b.c cVar) {
        this.a = new Object();
        this.b = Executors.newFixedThreadPool(8);
        this.c = new ConcurrentHashMap();
        this.g = (com.octopus.ad.internal.b.c) k.a(cVar);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.e = localPort;
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new c(countDownLatch));
            this.f = thread;
            thread.start();
            countDownLatch.await();
            this.h = new j("127.0.0.1", localPort);
            HaoboLog.i(HaoboLog.httpProxyCacheServerLogTag, "Proxy cache server started. Is it alive? " + a());
        } catch (IOException | InterruptedException e) {
            this.b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e);
        }
    }

    private void a(File file) {
        try {
            this.g.c.a(file);
        } catch (IOException e) {
            HaoboLog.e(HaoboLog.httpProxyCacheServerLogTag, "Error touching file " + file, e);
        }
    }

    private void a(Throwable th) {
        HaoboLog.e(HaoboLog.httpProxyCacheServerLogTag, "HttpProxyCacheServer error", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Socket socket) {
        String str;
        StringBuilder sb;
        try {
            try {
                d dVarA = d.a(socket.getInputStream());
                HaoboLog.d(HaoboLog.httpProxyCacheServerLogTag, "Request to cache proxy:" + dVarA);
                String strC = n.c(dVarA.a);
                if (this.h.a(strC)) {
                    this.h.a(socket);
                } else {
                    e(strC).a(dVarA, socket);
                }
                b(socket);
                str = HaoboLog.httpProxyCacheServerLogTag;
                sb = new StringBuilder();
            } catch (Throwable th) {
                b(socket);
                HaoboLog.d(HaoboLog.httpProxyCacheServerLogTag, "Opened connections: " + c());
                throw th;
            }
        } catch (m e) {
            e = e;
            a(new m("Error processing request", e));
            b(socket);
            str = HaoboLog.httpProxyCacheServerLogTag;
            sb = new StringBuilder();
        } catch (SocketException unused) {
            b(socket);
            str = HaoboLog.httpProxyCacheServerLogTag;
            sb = new StringBuilder();
        } catch (IOException e2) {
            e = e2;
            a(new m("Error processing request", e));
            b(socket);
            str = HaoboLog.httpProxyCacheServerLogTag;
            sb = new StringBuilder();
        }
        sb.append("Opened connections: ");
        sb.append(c());
        HaoboLog.d(str, sb.toString());
    }

    private boolean a() {
        return this.h.a(3, 70);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Socket socketAccept = this.d.accept();
                HaoboLog.d(HaoboLog.httpProxyCacheServerLogTag, "Accept new socket " + socketAccept);
                this.b.submit(new b(socketAccept));
            } catch (IOException e) {
                a(new m("Error during waiting connection", e));
                return;
            }
        }
    }

    private void b(Socket socket) {
        c(socket);
        d(socket);
        e(socket);
    }

    private int c() {
        int iA;
        synchronized (this.a) {
            iA = 0;
            Iterator<g> it = this.c.values().iterator();
            while (it.hasNext()) {
                iA += it.next().a();
            }
        }
        return iA;
    }

    private String c(String str) {
        String strA = com.octopus.ad.utils.b.c.a("aHR0cDovLyVzOiVkLyVz");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return String.format(Locale.US, strA, "127.0.0.1", Integer.valueOf(this.e), n.b(str));
    }

    private void c(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
        } catch (IOException e) {
            a(new m("Error closing socket input stream", e));
        }
    }

    private File d(String str) {
        com.octopus.ad.internal.b.c cVar = this.g;
        return new File(cVar.a, cVar.b.a(str));
    }

    private void d(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException e) {
            HaoboLog.w(HaoboLog.httpProxyCacheServerLogTag, "Failed to close socket on proxy side: {}. It seems client have already closed connection.", e);
        }
    }

    private g e(String str) throws m {
        g gVar;
        synchronized (this.a) {
            gVar = this.c.get(str);
            if (gVar == null) {
                gVar = new g(str, this.g);
                this.c.put(str, gVar);
            }
        }
        return gVar;
    }

    private void e(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e) {
            a(new m("Error closing socket", e));
        }
    }

    public String a(String str) {
        return a(str, true);
    }

    public String a(String str, boolean z) {
        if (!z || !b(str)) {
            return a() ? c(str) : str;
        }
        File fileD = d(str);
        a(fileD);
        return Uri.fromFile(fileD).toString();
    }

    public boolean b(String str) {
        k.a(str, "Url can't be null!");
        return d(str).exists();
    }
}
