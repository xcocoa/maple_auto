package z2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import z2.dz;

/* JADX INFO: loaded from: classes2.dex */
public final class jz {
    public static final /* synthetic */ boolean OooOOO0 = false;
    public final OooO00o OooO;
    public long OooO00o = 0;
    public long OooO0O0;
    public final int OooO0OO;
    public final hz OooO0Oo;
    private dz.OooO00o OooO0o;
    private final Deque<jx> OooO0o0;
    private boolean OooO0oO;
    private final OooO0O0 OooO0oo;
    public final OooO0OO OooOO0;
    public final OooO0OO OooOO0O;
    public ErrorCode OooOO0o;

    public final class OooO00o implements d10 {
        private static final long OooooO0 = 16384;
        public static final /* synthetic */ boolean OooooOO = false;
        private final j00 OoooOoO = new j00();
        public boolean OoooOoo;
        public boolean Ooooo00;

        public OooO00o() {
        }

        private void OooOO0(boolean z) throws IOException {
            jz jzVar;
            long jMin;
            jz jzVar2;
            synchronized (jz.this) {
                jz.this.OooOO0O.OooOOO0();
                while (true) {
                    try {
                        jzVar = jz.this;
                        if (jzVar.OooO0O0 > 0 || this.Ooooo00 || this.OoooOoo || jzVar.OooOO0o != null) {
                            break;
                        } else {
                            jzVar.OooOo0o();
                        }
                    } finally {
                    }
                }
                jzVar.OooOO0O.OooOo0o();
                jz.this.OooO0o0();
                jMin = Math.min(jz.this.OooO0O0, this.OoooOoO.o00000O0());
                jzVar2 = jz.this;
                jzVar2.OooO0O0 -= jMin;
            }
            jzVar2.OooOO0O.OooOOO0();
            try {
                jz jzVar3 = jz.this;
                jzVar3.OooO0Oo.o000000o(jzVar3.OooO0OO, z && jMin == this.OoooOoO.o00000O0(), this.OoooOoO, jMin);
            } finally {
            }
        }

        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            this.OoooOoO.OooOooO(j00Var, j);
            while (this.OoooOoO.o00000O0() >= 16384) {
                OooOO0(false);
            }
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (jz.this) {
                if (this.OoooOoo) {
                    return;
                }
                if (!jz.this.OooO.Ooooo00) {
                    if (this.OoooOoO.o00000O0() > 0) {
                        while (this.OoooOoO.o00000O0() > 0) {
                            OooOO0(true);
                        }
                    } else {
                        jz jzVar = jz.this;
                        jzVar.OooO0Oo.o000000o(jzVar.OooO0OO, true, null, 0L);
                    }
                }
                synchronized (jz.this) {
                    this.OoooOoo = true;
                }
                jz.this.OooO0Oo.flush();
                jz.this.OooO0Oo();
            }
        }

        @Override // z2.d10, java.io.Flushable
        public void flush() throws IOException {
            synchronized (jz.this) {
                jz.this.OooO0o0();
            }
            while (this.OoooOoO.o00000O0() > 0) {
                OooOO0(false);
                jz.this.OooO0Oo.flush();
            }
        }

        @Override // z2.d10
        public f10 timeout() {
            return jz.this.OooOO0O;
        }
    }

    public final class OooO0O0 implements e10 {
        public static final /* synthetic */ boolean OooooOo = false;
        private final j00 OoooOoO = new j00();
        private final j00 OoooOoo = new j00();
        private final long Ooooo00;
        public boolean Ooooo0o;
        public boolean OooooO0;

        public OooO0O0(long j) {
            this.Ooooo00 = j;
        }

        private void OooooOo(long j) {
            jz.this.OooO0Oo.o000000O(j);
        }

        public void OooOO0(l00 l00Var, long j) throws IOException {
            boolean z;
            boolean z3;
            boolean z4;
            while (j > 0) {
                synchronized (jz.this) {
                    z = this.OooooO0;
                    z3 = true;
                    z4 = this.OoooOoo.o00000O0() + j > this.Ooooo00;
                }
                if (z4) {
                    l00Var.skip(j);
                    jz.this.OooO0oo(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    l00Var.skip(j);
                    return;
                }
                long j2 = l00Var.read(this.OoooOoO, j);
                if (j2 == -1) {
                    throw new EOFException();
                }
                j -= j2;
                synchronized (jz.this) {
                    if (this.OoooOoo.o00000O0() != 0) {
                        z3 = false;
                    }
                    this.OoooOoo.Oooo000(this.OoooOoO);
                    if (z3) {
                        jz.this.notifyAll();
                    }
                }
            }
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            long jO00000O0;
            dz.OooO00o oooO00o;
            ArrayList arrayList;
            synchronized (jz.this) {
                this.Ooooo0o = true;
                jO00000O0 = this.OoooOoo.o00000O0();
                this.OoooOoo.OooooOo();
                oooO00o = null;
                if (jz.this.OooO0o0.isEmpty() || jz.this.OooO0o == null) {
                    arrayList = null;
                } else {
                    ArrayList arrayList2 = new ArrayList(jz.this.OooO0o0);
                    jz.this.OooO0o0.clear();
                    oooO00o = jz.this.OooO0o;
                    arrayList = arrayList2;
                }
                jz.this.notifyAll();
            }
            if (jO00000O0 > 0) {
                OooooOo(jO00000O0);
            }
            jz.this.OooO0Oo();
            if (oooO00o != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    oooO00o.OooO00o((jx) it.next());
                }
            }
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            ErrorCode errorCode;
            long j2;
            jx jxVar;
            dz.OooO00o oooO00o;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            while (true) {
                synchronized (jz.this) {
                    jz.this.OooOO0.OooOOO0();
                    try {
                        jz jzVar = jz.this;
                        errorCode = jzVar.OooOO0o;
                        if (errorCode == null) {
                            errorCode = null;
                        }
                        if (!this.Ooooo0o) {
                            if (!jzVar.OooO0o0.isEmpty() && jz.this.OooO0o != null) {
                                jxVar = (jx) jz.this.OooO0o0.removeFirst();
                                oooO00o = jz.this.OooO0o;
                            } else if (this.OoooOoo.o00000O0() > 0) {
                                j00 j00Var2 = this.OoooOoo;
                                j2 = j00Var2.read(j00Var, Math.min(j, j00Var2.o00000O0()));
                                jz jzVar2 = jz.this;
                                long j3 = jzVar2.OooO00o + j2;
                                jzVar2.OooO00o = j3;
                                if (errorCode == null && j3 >= jzVar2.OooO0Oo.o00O0O.OooO0o0() / 2) {
                                    jz jzVar3 = jz.this;
                                    jzVar3.OooO0Oo.o00000o0(jzVar3.OooO0OO, jzVar3.OooO00o);
                                    jz.this.OooO00o = 0L;
                                }
                                jxVar = null;
                                oooO00o = null;
                                if (jxVar == null || oooO00o == null) {
                                    break;
                                }
                                oooO00o.OooO00o(jxVar);
                            } else if (this.OooooO0 || errorCode != null) {
                                jxVar = null;
                                oooO00o = null;
                            } else {
                                jz.this.OooOo0o();
                                jz.this.OooOO0.OooOo0o();
                            }
                            j2 = -1;
                            if (jxVar == null) {
                                break;
                            }
                            break;
                            break;
                        }
                        throw new IOException("stream closed");
                    } finally {
                    }
                }
            }
            if (j2 != -1) {
                OooooOo(j2);
                return j2;
            }
            if (errorCode == null) {
                return -1L;
            }
            throw new StreamResetException(errorCode);
        }

        @Override // z2.e10
        public f10 timeout() {
            return jz.this.OooOO0;
        }
    }

    public class OooO0OO extends h00 {
        public OooO0OO() {
        }

        @Override // z2.h00
        public IOException OooOOo0(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // z2.h00
        public void OooOo0O() {
            jz.this.OooO0oo(ErrorCode.CANCEL);
        }

        public void OooOo0o() throws IOException {
            if (OooOOOo()) {
                throw OooOOo0(null);
            }
        }
    }

    public jz(int i, hz hzVar, boolean z, boolean z3, @Nullable jx jxVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.OooO0o0 = arrayDeque;
        this.OooOO0 = new OooO0OO();
        this.OooOO0O = new OooO0OO();
        this.OooOO0o = null;
        Objects.requireNonNull(hzVar, "connection == null");
        this.OooO0OO = i;
        this.OooO0Oo = hzVar;
        this.OooO0O0 = hzVar.o00Oo0.OooO0o0();
        OooO0O0 oooO0O0 = new OooO0O0(hzVar.o00O0O.OooO0o0());
        this.OooO0oo = oooO0O0;
        OooO00o oooO00o = new OooO00o();
        this.OooO = oooO00o;
        oooO0O0.OooooO0 = z3;
        oooO00o.Ooooo00 = z;
        if (jxVar != null) {
            arrayDeque.add(jxVar);
        }
        if (OooOOO() && jxVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!OooOOO() && jxVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    private boolean OooO0oO(ErrorCode errorCode) {
        synchronized (this) {
            if (this.OooOO0o != null) {
                return false;
            }
            if (this.OooO0oo.OooooO0 && this.OooO.Ooooo00) {
                return false;
            }
            this.OooOO0o = errorCode;
            notifyAll();
            this.OooO0Oo.o0OO00O(this.OooO0OO);
            return true;
        }
    }

    public hz OooO() {
        return this.OooO0Oo;
    }

    public void OooO0OO(long j) {
        this.OooO0O0 += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooO0Oo() throws IOException {
        boolean z;
        boolean zOooOOOO;
        synchronized (this) {
            OooO0O0 oooO0O0 = this.OooO0oo;
            if (oooO0O0.OooooO0 || !oooO0O0.Ooooo0o) {
                z = false;
                zOooOOOO = OooOOOO();
            } else {
                OooO00o oooO00o = this.OooO;
                if (oooO00o.Ooooo00 || oooO00o.OoooOoo) {
                    z = true;
                }
                zOooOOOO = OooOOOO();
            }
        }
        if (z) {
            OooO0o(ErrorCode.CANCEL);
        } else {
            if (zOooOOOO) {
                return;
            }
            this.OooO0Oo.o0OO00O(this.OooO0OO);
        }
    }

    public void OooO0o(ErrorCode errorCode) throws IOException {
        if (OooO0oO(errorCode)) {
            this.OooO0Oo.o00000OO(this.OooO0OO, errorCode);
        }
    }

    public void OooO0o0() throws IOException {
        OooO00o oooO00o = this.OooO;
        if (oooO00o.OoooOoo) {
            throw new IOException("stream closed");
        }
        if (oooO00o.Ooooo00) {
            throw new IOException("stream finished");
        }
        if (this.OooOO0o != null) {
            throw new StreamResetException(this.OooOO0o);
        }
    }

    public void OooO0oo(ErrorCode errorCode) {
        if (OooO0oO(errorCode)) {
            this.OooO0Oo.o00000Oo(this.OooO0OO, errorCode);
        }
    }

    public synchronized ErrorCode OooOO0() {
        return this.OooOO0o;
    }

    public int OooOO0O() {
        return this.OooO0OO;
    }

    public d10 OooOO0o() {
        synchronized (this) {
            if (!this.OooO0oO && !OooOOO()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.OooO;
    }

    public boolean OooOOO() {
        return this.OooO0Oo.OoooOoO == ((this.OooO0OO & 1) == 1);
    }

    public e10 OooOOO0() {
        return this.OooO0oo;
    }

    public synchronized boolean OooOOOO() {
        if (this.OooOO0o != null) {
            return false;
        }
        OooO0O0 oooO0O0 = this.OooO0oo;
        if (oooO0O0.OooooO0 || oooO0O0.Ooooo0o) {
            OooO00o oooO00o = this.OooO;
            if (oooO00o.Ooooo00 || oooO00o.OoooOoo) {
                if (this.OooO0oO) {
                    return false;
                }
            }
        }
        return true;
    }

    public f10 OooOOOo() {
        return this.OooOO0;
    }

    public void OooOOo() {
        boolean zOooOOOO;
        synchronized (this) {
            this.OooO0oo.OooooO0 = true;
            zOooOOOO = OooOOOO();
            notifyAll();
        }
        if (zOooOOOO) {
            return;
        }
        this.OooO0Oo.o0OO00O(this.OooO0OO);
    }

    public void OooOOo0(l00 l00Var, int i) throws IOException {
        this.OooO0oo.OooOO0(l00Var, i);
    }

    public void OooOOoo(List<dz> list) {
        boolean zOooOOOO;
        synchronized (this) {
            this.OooO0oO = true;
            this.OooO0o0.add(zx.Oooo0(list));
            zOooOOOO = OooOOOO();
            notifyAll();
        }
        if (zOooOOOO) {
            return;
        }
        this.OooO0Oo.o0OO00O(this.OooO0OO);
    }

    public void OooOo(List<dz> list, boolean z) throws IOException {
        boolean z3;
        boolean z4;
        boolean z5;
        Objects.requireNonNull(list, "headers == null");
        synchronized (this) {
            z3 = true;
            this.OooO0oO = true;
            if (z) {
                z4 = false;
                z5 = false;
            } else {
                this.OooO.Ooooo00 = true;
                z4 = true;
                z5 = true;
            }
        }
        if (!z4) {
            synchronized (this.OooO0Oo) {
                if (this.OooO0Oo.ooOO != 0) {
                    z3 = false;
                }
            }
            z4 = z3;
        }
        this.OooO0Oo.o00000O(this.OooO0OO, z5, list);
        if (z4) {
            this.OooO0Oo.flush();
        }
    }

    public synchronized void OooOo0(dz.OooO00o oooO00o) {
        this.OooO0o = oooO00o;
        if (!this.OooO0o0.isEmpty() && oooO00o != null) {
            notifyAll();
        }
    }

    public synchronized void OooOo00(ErrorCode errorCode) {
        if (this.OooOO0o == null) {
            this.OooOO0o = errorCode;
            notifyAll();
        }
    }

    public synchronized jx OooOo0O() throws IOException {
        this.OooOO0.OooOOO0();
        while (this.OooO0o0.isEmpty() && this.OooOO0o == null) {
            try {
                OooOo0o();
            } catch (Throwable th) {
                this.OooOO0.OooOo0o();
                throw th;
            }
        }
        this.OooOO0.OooOo0o();
        if (this.OooO0o0.isEmpty()) {
            throw new StreamResetException(this.OooOO0o);
        }
        return this.OooO0o0.removeFirst();
    }

    public void OooOo0o() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public f10 OooOoO0() {
        return this.OooOO0O;
    }
}
