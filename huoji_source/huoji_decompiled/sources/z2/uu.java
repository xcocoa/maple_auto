package z2;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import z2.wu;

/* JADX INFO: loaded from: classes2.dex */
public class uu implements Closeable {
    private Socket OoooOoO;
    private InputStream Ooooo00;
    public OutputStream Ooooo0o;
    private boolean OooooOO;
    private boolean OooooOo;
    private vu Oooooo;
    private int Oooooo0;
    private boolean OoooooO;
    private HashMap<Integer, xu> Ooooooo = new HashMap<>();
    private int OoooOoo = 0;
    private Thread OooooO0 = o00oO0o();

    public class OooO00o implements Runnable {
        public final /* synthetic */ uu OoooOoO;

        public OooO00o(uu uuVar) {
            this.OoooOoO = uuVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            wu.OooO00o OooO00o;
            xu xuVar;
            byte[] bArrOooO00o;
            while (!uu.this.OooooO0.isInterrupted()) {
                try {
                    OooO00o = wu.OooO00o.OooO00o(uu.this.Ooooo00);
                } catch (Exception unused) {
                }
                if (wu.OooO(OooO00o)) {
                    switch (OooO00o.OooO00o) {
                        case wu.OooOOO0 /* 1163086915 */:
                        case wu.OooOOO /* 1163154007 */:
                        case wu.OooOO0o /* 1497451343 */:
                            if (this.OoooOoO.OooooOo && (xuVar = (xu) uu.this.Ooooooo.get(Integer.valueOf(OooO00o.OooO0OO))) != null) {
                                synchronized (xuVar) {
                                    int i = OooO00o.OooO00o;
                                    if (i == 1497451343) {
                                        xuVar.o0OoOo0(OooO00o.OooO0O0);
                                        xuVar.OoooooO();
                                        xuVar.notify();
                                    } else if (i == 1163154007) {
                                        xuVar.OooOO0(OooO00o.OooO0oO);
                                        xuVar.Ooooooo();
                                    } else if (i == 1163086915) {
                                        this.OoooOoO.Ooooooo.remove(Integer.valueOf(OooO00o.OooO0OO));
                                        xuVar.Oooooo0();
                                    }
                                }
                            }
                            break;
                        case wu.OooO0oO /* 1213486401 */:
                            if (OooO00o.OooO0O0 != 1) {
                                continue;
                            } else {
                                if (this.OoooOoO.OoooooO) {
                                    bArrOooO00o = wu.OooO00o(3, this.OoooOoO.Oooooo.OooO0OO());
                                } else {
                                    bArrOooO00o = wu.OooO00o(2, this.OoooOoO.Oooooo.OooO0oO(OooO00o.OooO0oO));
                                    this.OoooOoO.OoooooO = true;
                                }
                                this.OoooOoO.Ooooo0o.write(bArrOooO00o);
                                this.OoooOoO.Ooooo0o.flush();
                            }
                            break;
                        case wu.OooO0OO /* 1314410051 */:
                            synchronized (this.OoooOoO) {
                                this.OoooOoO.Oooooo0 = OooO00o.OooO0OO;
                                this.OoooOoO.OooooOo = true;
                                this.OoooOoO.notifyAll();
                                break;
                            }
                            break;
                        default:
                            continue;
                    }
                    synchronized (this.OoooOoO) {
                        uu.this.o00o0O();
                        this.OoooOoO.notifyAll();
                        this.OoooOoO.OooooOO = false;
                    }
                    return;
                }
            }
            synchronized (this.OoooOoO) {
            }
        }
    }

    private uu() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o00o0O() {
        Iterator<xu> it = this.Ooooooo.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException unused) {
            }
        }
        this.Ooooooo.clear();
    }

    private Thread o00oO0o() {
        return new Thread(new OooO00o(this));
    }

    public static uu oo000o(Socket socket, vu vuVar) throws IOException {
        uu uuVar = new uu();
        uuVar.Oooooo = vuVar;
        uuVar.OoooOoO = socket;
        uuVar.Ooooo00 = socket.getInputStream();
        uuVar.Ooooo0o = socket.getOutputStream();
        socket.setTcpNoDelay(true);
        return uuVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.OooooO0 == null) {
            return;
        }
        this.OoooOoO.close();
        this.OooooO0.interrupt();
        try {
            this.OooooO0.join();
        } catch (InterruptedException unused) {
        }
    }

    public int o00oO0O() throws InterruptedException, IOException {
        if (!this.OooooOO) {
            throw new IllegalStateException("connect() must be called first");
        }
        synchronized (this) {
            if (!this.OooooOo) {
                wait();
            }
            if (!this.OooooOo) {
                throw new IOException("Connection failed");
            }
        }
        return this.Oooooo0;
    }

    public void o00ooo() throws InterruptedException, IOException {
        if (this.OooooOo) {
            throw new IllegalStateException("Already connected");
        }
        this.Ooooo0o.write(wu.OooO0OO());
        this.Ooooo0o.flush();
        this.OooooOO = true;
        this.OooooO0.start();
        synchronized (this) {
            if (!this.OooooOo) {
                wait();
            }
            if (!this.OooooOo) {
                throw new IOException("Connection failed");
            }
        }
    }

    public xu o0ooOO0(String str) throws InterruptedException, IOException {
        int i = this.OoooOoo + 1;
        this.OoooOoo = i;
        if (!this.OooooOO) {
            throw new IllegalStateException("connect() must be called first");
        }
        synchronized (this) {
            if (!this.OooooOo) {
                wait();
            }
            if (!this.OooooOo) {
                throw new IOException("Connection failed");
            }
        }
        xu xuVar = new xu(this, i);
        this.Ooooooo.put(Integer.valueOf(i), xuVar);
        this.Ooooo0o.write(wu.OooO0o0(i, str));
        this.Ooooo0o.flush();
        synchronized (xuVar) {
            xuVar.wait();
        }
        if (xuVar.OooooOo()) {
            throw new ConnectException("Stream open actively rejected by remote peer");
        }
        return xuVar;
    }
}
