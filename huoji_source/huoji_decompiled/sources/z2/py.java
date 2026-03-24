package z2;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import z2.lx;
import z2.oy;

/* JADX INFO: loaded from: classes2.dex */
public final class py {
    public static final /* synthetic */ boolean OooOOOO = false;
    private int OooO;
    public final pw OooO00o;
    private oy.OooO00o OooO0O0;
    private ux OooO0OO;
    private final zw OooO0Oo;
    public final gx OooO0o;
    public final tw OooO0o0;
    private final Object OooO0oO;
    private final oy OooO0oo;
    private my OooOO0;
    private boolean OooOO0O;
    private boolean OooOO0o;
    private sy OooOOO;
    private boolean OooOOO0;

    public static final class OooO00o extends WeakReference<py> {
        public final Object OooO00o;

        public OooO00o(py pyVar, Object obj) {
            super(pyVar);
            this.OooO00o = obj;
        }
    }

    public py(zw zwVar, pw pwVar, tw twVar, gx gxVar, Object obj) {
        this.OooO0Oo = zwVar;
        this.OooO00o = pwVar;
        this.OooO0o0 = twVar;
        this.OooO0o = gxVar;
        this.OooO0oo = new oy(pwVar, OooOOOo(), twVar, gxVar);
        this.OooO0oO = obj;
    }

    private my OooO0o(int i, int i2, int i3, int i4, boolean z) throws Throwable {
        my myVar;
        Socket socketOooOOO;
        my myVar2;
        Socket socketOooO0o;
        ux uxVarOooO0OO;
        boolean z3;
        boolean z4;
        oy.OooO00o oooO00o;
        synchronized (this.OooO0Oo) {
            if (this.OooOO0o) {
                throw new IllegalStateException("released");
            }
            if (this.OooOOO != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.OooOOO0) {
                throw new IOException("Canceled");
            }
            myVar = this.OooOO0;
            socketOooOOO = OooOOO();
            myVar2 = this.OooOO0;
            socketOooO0o = null;
            if (myVar2 != null) {
                myVar = null;
            } else {
                myVar2 = null;
            }
            if (!this.OooOO0O) {
                myVar = null;
            }
            if (myVar2 == null) {
                xx.OooO00o.OooO0oo(this.OooO0Oo, this.OooO00o, this, null);
                my myVar3 = this.OooOO0;
                if (myVar3 != null) {
                    myVar2 = myVar3;
                    z3 = true;
                    uxVarOooO0OO = null;
                } else {
                    uxVarOooO0OO = this.OooO0OO;
                }
            } else {
                uxVarOooO0OO = null;
            }
            z3 = false;
        }
        zx.OooO(socketOooOOO);
        if (myVar != null) {
            this.OooO0o.OooO0oo(this.OooO0o0, myVar);
        }
        if (z3) {
            this.OooO0o.OooO0oO(this.OooO0o0, myVar2);
        }
        if (myVar2 != null) {
            return myVar2;
        }
        if (uxVarOooO0OO != null || ((oooO00o = this.OooO0O0) != null && oooO00o.OooO0O0())) {
            z4 = false;
        } else {
            this.OooO0O0 = this.OooO0oo.OooO0o0();
            z4 = true;
        }
        synchronized (this.OooO0Oo) {
            if (this.OooOOO0) {
                throw new IOException("Canceled");
            }
            if (z4) {
                List<ux> listOooO00o = this.OooO0O0.OooO00o();
                int size = listOooO00o.size();
                int i5 = 0;
                while (true) {
                    if (i5 >= size) {
                        break;
                    }
                    ux uxVar = listOooO00o.get(i5);
                    xx.OooO00o.OooO0oo(this.OooO0Oo, this.OooO00o, this, uxVar);
                    my myVar4 = this.OooOO0;
                    if (myVar4 != null) {
                        this.OooO0OO = uxVar;
                        myVar2 = myVar4;
                        z3 = true;
                        break;
                    }
                    i5++;
                }
            }
            if (!z3) {
                if (uxVarOooO0OO == null) {
                    uxVarOooO0OO = this.OooO0O0.OooO0OO();
                }
                this.OooO0OO = uxVarOooO0OO;
                this.OooO = 0;
                myVar2 = new my(this.OooO0Oo, uxVarOooO0OO);
                OooO00o(myVar2, false);
            }
        }
        if (!z3) {
            myVar2.OooO0oo(i, i2, i3, i4, z, this.OooO0o0, this.OooO0o);
            OooOOOo().OooO00o(myVar2.OooO0O0());
            synchronized (this.OooO0Oo) {
                this.OooOO0O = true;
                xx.OooO00o.OooOO0o(this.OooO0Oo, myVar2);
                if (myVar2.OooOOo0()) {
                    socketOooO0o = xx.OooO00o.OooO0o(this.OooO0Oo, this.OooO00o, this);
                    myVar2 = this.OooOO0;
                }
            }
            zx.OooO(socketOooO0o);
        }
        this.OooO0o.OooO0oO(this.OooO0o0, myVar2);
        return myVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Socket OooO0o0(boolean z, boolean z3, boolean z4) {
        Socket socketOooO0Oo;
        if (z4) {
            this.OooOOO = null;
        }
        if (z3) {
            this.OooOO0o = true;
        }
        my myVar = this.OooOO0;
        if (myVar == null) {
            return null;
        }
        if (z) {
            myVar.OooOO0O = true;
        }
        if (this.OooOOO != null) {
            return null;
        }
        if (!this.OooOO0o && !myVar.OooOO0O) {
            return null;
        }
        OooOO0o(myVar);
        if (this.OooOO0.OooOOO.isEmpty()) {
            this.OooOO0.OooOOOO = System.nanoTime();
            socketOooO0Oo = xx.OooO00o.OooO0o0(this.OooO0Oo, this.OooOO0) ? this.OooOO0.OooO0Oo() : null;
        }
        this.OooOO0 = null;
        return socketOooO0Oo;
    }

    private my OooO0oO(int i, int i2, int i3, int i4, boolean z, boolean z3) throws Throwable {
        while (true) {
            my myVarOooO0o = OooO0o(i, i2, i3, i4, z);
            synchronized (this.OooO0Oo) {
                if (myVarOooO0o.OooOO0o == 0) {
                    return myVarOooO0o;
                }
                if (myVarOooO0o.OooOOOo(z3)) {
                    return myVarOooO0o;
                }
                OooOO0();
            }
        }
    }

    private void OooOO0o(my myVar) {
        int size = myVar.OooOOO.size();
        for (int i = 0; i < size; i++) {
            if (myVar.OooOOO.get(i).get() == this) {
                myVar.OooOOO.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket OooOOO() {
        my myVar = this.OooOO0;
        if (myVar == null || !myVar.OooOO0O) {
            return null;
        }
        return OooO0o0(false, false, true);
    }

    private ny OooOOOo() {
        return xx.OooO00o.OooOOO0(this.OooO0Oo);
    }

    public sy OooO(ox oxVar, lx.OooO00o oooO00o, boolean z) {
        try {
            sy syVarOooOOo = OooO0oO(oooO00o.OooO0oo(), oooO00o.OooO0O0(), oooO00o.OooO0OO(), oxVar.OooOo0o(), oxVar.OooOoo(), z).OooOOo(oxVar, oooO00o, this);
            synchronized (this.OooO0Oo) {
                this.OooOOO = syVarOooOOo;
            }
            return syVarOooOOo;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    public void OooO00o(my myVar, boolean z) {
        if (this.OooOO0 != null) {
            throw new IllegalStateException();
        }
        this.OooOO0 = myVar;
        this.OooOO0O = z;
        myVar.OooOOO.add(new OooO00o(this, this.OooO0oO));
    }

    public void OooO0O0() {
        sy syVar;
        my myVar;
        synchronized (this.OooO0Oo) {
            this.OooOOO0 = true;
            syVar = this.OooOOO;
            myVar = this.OooOO0;
        }
        if (syVar != null) {
            syVar.cancel();
        } else if (myVar != null) {
            myVar.OooO0oO();
        }
    }

    public sy OooO0OO() {
        sy syVar;
        synchronized (this.OooO0Oo) {
            syVar = this.OooOOO;
        }
        return syVar;
    }

    public synchronized my OooO0Oo() {
        return this.OooOO0;
    }

    public boolean OooO0oo() {
        oy.OooO00o oooO00o;
        return this.OooO0OO != null || ((oooO00o = this.OooO0O0) != null && oooO00o.OooO0O0()) || this.OooO0oo.OooO0OO();
    }

    public void OooOO0() {
        my myVar;
        Socket socketOooO0o0;
        synchronized (this.OooO0Oo) {
            myVar = this.OooOO0;
            socketOooO0o0 = OooO0o0(true, false, false);
            if (this.OooOO0 != null) {
                myVar = null;
            }
        }
        zx.OooO(socketOooO0o0);
        if (myVar != null) {
            this.OooO0o.OooO0oo(this.OooO0o0, myVar);
        }
    }

    public void OooOO0O() {
        my myVar;
        Socket socketOooO0o0;
        synchronized (this.OooO0Oo) {
            myVar = this.OooOO0;
            socketOooO0o0 = OooO0o0(false, true, false);
            if (this.OooOO0 != null) {
                myVar = null;
            }
        }
        zx.OooO(socketOooO0o0);
        if (myVar != null) {
            xx.OooO00o.OooOOOo(this.OooO0o0, null);
            this.OooO0o.OooO0oo(this.OooO0o0, myVar);
            this.OooO0o.OooO00o(this.OooO0o0);
        }
    }

    public Socket OooOOO0(my myVar) {
        if (this.OooOOO != null || this.OooOO0.OooOOO.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<py> reference = this.OooOO0.OooOOO.get(0);
        Socket socketOooO0o0 = OooO0o0(true, false, false);
        this.OooOO0 = myVar;
        myVar.OooOOO.add(reference);
        return socketOooO0o0;
    }

    public ux OooOOOO() {
        return this.OooO0OO;
    }

    public void OooOOo(boolean z, sy syVar, long j, IOException iOException) {
        my myVar;
        Socket socketOooO0o0;
        boolean z3;
        this.OooO0o.OooOOOo(this.OooO0o0, j);
        synchronized (this.OooO0Oo) {
            if (syVar != null) {
                if (syVar == this.OooOOO) {
                    if (!z) {
                        this.OooOO0.OooOO0o++;
                    }
                    myVar = this.OooOO0;
                    socketOooO0o0 = OooO0o0(z, false, true);
                    if (this.OooOO0 != null) {
                        myVar = null;
                    }
                    z3 = this.OooOO0o;
                }
            }
            throw new IllegalStateException("expected " + this.OooOOO + " but was " + syVar);
        }
        zx.OooO(socketOooO0o0);
        if (myVar != null) {
            this.OooO0o.OooO0oo(this.OooO0o0, myVar);
        }
        if (iOException != null) {
            this.OooO0o.OooO0O0(this.OooO0o0, xx.OooO00o.OooOOOo(this.OooO0o0, iOException));
        } else if (z3) {
            xx.OooO00o.OooOOOo(this.OooO0o0, null);
            this.OooO0o.OooO00o(this.OooO0o0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
    
        if (r7 != okhttp3.internal.http2.ErrorCode.CANCEL) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004e A[Catch: all -> 0x0062, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:8:0x0012, B:13:0x001e, B:28:0x0044, B:30:0x004e, B:34:0x0054, B:11:0x001a, B:14:0x0021, B:16:0x0025, B:18:0x002b, B:20:0x002f, B:22:0x0035, B:25:0x003b), top: B:42:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooOOo0(IOException iOException) {
        my myVar;
        boolean z;
        my myVar2;
        Socket socketOooO0o0;
        synchronized (this.OooO0Oo) {
            myVar = null;
            if (iOException instanceof StreamResetException) {
                ErrorCode errorCode = ((StreamResetException) iOException).errorCode;
                if (errorCode == ErrorCode.REFUSED_STREAM) {
                    int i = this.OooO + 1;
                    this.OooO = i;
                    if (i > 1) {
                        this.OooO0OO = null;
                        z = true;
                        myVar2 = this.OooOO0;
                        socketOooO0o0 = OooO0o0(z, false, true);
                        if (this.OooOO0 == null && this.OooOO0O) {
                            myVar = myVar2;
                        }
                    }
                    z = false;
                    myVar2 = this.OooOO0;
                    socketOooO0o0 = OooO0o0(z, false, true);
                    if (this.OooOO0 == null) {
                        myVar = myVar2;
                    }
                }
            } else {
                my myVar3 = this.OooOO0;
                if (myVar3 != null && (!myVar3.OooOOo0() || (iOException instanceof ConnectionShutdownException))) {
                    if (this.OooOO0.OooOO0o == 0) {
                        ux uxVar = this.OooO0OO;
                        if (uxVar != null && iOException != null) {
                            this.OooO0oo.OooO00o(uxVar, iOException);
                        }
                        this.OooO0OO = null;
                    }
                    z = true;
                    myVar2 = this.OooOO0;
                    socketOooO0o0 = OooO0o0(z, false, true);
                    if (this.OooOO0 == null) {
                    }
                }
                z = false;
                myVar2 = this.OooOO0;
                socketOooO0o0 = OooO0o0(z, false, true);
                if (this.OooOO0 == null) {
                }
            }
        }
        zx.OooO(socketOooO0o0);
        if (myVar != null) {
            this.OooO0o.OooO0oo(this.OooO0o0, myVar);
        }
    }

    public String toString() {
        my myVarOooO0Oo = OooO0Oo();
        return myVarOooO0Oo != null ? myVarOooO0Oo.toString() : this.OooO00o.toString();
    }
}
