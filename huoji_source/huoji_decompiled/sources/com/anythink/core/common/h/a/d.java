package com.anythink.core.common.h.a;

import com.anythink.core.common.b.n;
import com.anythink.core.common.h.a.c;
import com.anythink.core.common.o.i;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private static d g;
    private String h;
    private int i;
    private Socket j;
    private final int c = 0;
    private final int d = 7;
    private final int e = 1;
    private final String f = d.class.getSimpleName();
    public byte[] a = null;
    public byte[] b = new byte[1];

    /* JADX INFO: renamed from: com.anythink.core.common.h.a.d$1, reason: invalid class name */
    public class AnonymousClass1 extends com.anythink.core.common.o.b.d {
        public final /* synthetic */ c a;
        public final /* synthetic */ c.a b;

        public AnonymousClass1(c cVar, c.a aVar) {
            this.a = cVar;
            this.b = aVar;
        }

        @Override // com.anythink.core.common.o.b.d
        public final void a() {
            try {
                try {
                    d.this.a(this.a);
                    int iE = d.this.e();
                    if (iE != 1) {
                        throw new Exception("Response Error Code:".concat(String.valueOf(iE)));
                    }
                    c.a aVar = this.b;
                    if (aVar != null) {
                        aVar.a(this.a);
                    }
                } catch (SocketException unused) {
                    d.b(d.this);
                    d.this.a(this.a);
                    int iE2 = d.this.e();
                    if (iE2 != 1) {
                        throw new Exception("Response Error Code:".concat(String.valueOf(iE2)));
                    }
                    c.a aVar2 = this.b;
                    if (aVar2 != null) {
                        aVar2.a(this.a);
                    }
                }
            } catch (Throwable th) {
                this.a.a("", th.getMessage() + "," + i.a(th.getStackTrace()), d.this.h, d.this.i);
                c.a aVar3 = this.b;
                if (aVar3 != null) {
                    aVar3.a(th);
                }
            }
        }
    }

    private d() {
    }

    public static synchronized d a() {
        if (g == null) {
            g = new d();
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(c cVar) {
        Socket socket = this.j;
        if (!((socket == null || !socket.isConnected() || this.j.isClosed()) ? false : true)) {
            synchronized (this) {
                if (this.j == null) {
                    Socket socket2 = new Socket();
                    this.j = socket2;
                    socket2.setSoTimeout(60000);
                }
                com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
                if (aVarB != null) {
                    this.h = aVarB.x();
                    this.i = aVarB.y();
                    this.j.connect(new InetSocketAddress(this.h, this.i), 30000);
                }
            }
        }
        byte[] bArrE = cVar.e();
        if (bArrE != null) {
            int length = bArrE.length;
            if (bArrE.length == 0) {
                return;
            }
            int i = length + 7;
            byte[] bArr = this.a;
            if (bArr == null || bArr.length < i) {
                this.a = new byte[i];
            }
            byte[] bArr2 = this.a;
            bArr2[0] = 0;
            bArr2[1] = 3;
            bArr2[2] = (byte) cVar.c();
            byte[] bArr3 = this.a;
            bArr3[3] = (byte) ((length >>> 24) & 255);
            bArr3[4] = (byte) ((length >>> 16) & 255);
            bArr3[5] = (byte) ((length >>> 8) & 255);
            bArr3[6] = (byte) ((length >>> 0) & 255);
            System.arraycopy(bArrE, 0, bArr3, 7, bArrE.length);
            OutputStream outputStream = this.j.getOutputStream();
            outputStream.write(this.a, 0, i);
            outputStream.flush();
        }
    }

    private void a(c cVar, c.a aVar) {
        com.anythink.core.common.o.b.b.a().a((com.anythink.core.common.o.b.d) new AnonymousClass1(cVar, aVar), 3);
    }

    private void b() {
        synchronized (this) {
            if (this.j == null) {
                Socket socket = new Socket();
                this.j = socket;
                socket.setSoTimeout(60000);
            }
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
            if (aVarB != null) {
                this.h = aVarB.x();
                this.i = aVarB.y();
                this.j.connect(new InetSocketAddress(this.h, this.i), 30000);
            }
        }
    }

    public static /* synthetic */ void b(d dVar) {
        synchronized (dVar) {
            try {
                Socket socket = dVar.j;
                if (socket != null) {
                    socket.close();
                    dVar.j = null;
                }
            } catch (Exception unused) {
            }
        }
    }

    private void c() {
        synchronized (this) {
            try {
                Socket socket = this.j;
                if (socket != null) {
                    socket.close();
                    this.j = null;
                }
            } catch (Exception unused) {
            }
        }
    }

    private boolean d() {
        Socket socket = this.j;
        return (socket == null || !socket.isConnected() || this.j.isClosed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int e() {
        byte b;
        if (this.j.getInputStream().read(this.b, 0, 1) == -1) {
            throw new SocketException("Socket.InputStream read length = -1!");
        }
        byte[] bArr = this.b;
        b = bArr[0];
        bArr[0] = 0;
        return b;
    }
}
