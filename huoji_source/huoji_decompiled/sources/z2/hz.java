package z2;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;
import z2.iz;

/* JADX INFO: loaded from: classes2.dex */
public final class hz implements Closeable {
    public static final int o00oO0O = 16777216;
    private static final ExecutorService o0ooOO0 = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), zx.Oooo00o("OkHttp Http2Connection", true));
    public static final /* synthetic */ boolean o0ooOOo = false;
    public final boolean OoooOoO;
    public final OooOOO0 OoooOoo;
    public final String Ooooo0o;
    public int OooooO0;
    public int OooooOO;
    public boolean OooooOo;
    private final ExecutorService Oooooo;
    private final ScheduledExecutorService Oooooo0;
    public final mz OoooooO;
    private boolean Ooooooo;
    public final nz o00Oo0;
    public boolean o00Ooo;
    public final Socket o00o0O;
    public final Set<Integer> o00oO0o;
    public final kz o00ooo;
    public final OooOOOO oo000o;
    public long ooOO;
    public final Map<Integer, jz> Ooooo00 = new LinkedHashMap();
    public long o0OoOo0 = 0;
    public nz o00O0O = new nz();

    public class OooO extends yx {
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ j00 Ooooo00;
        public final /* synthetic */ int Ooooo0o;
        public final /* synthetic */ boolean OooooO0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO(String str, Object[] objArr, int i, j00 j00Var, int i2, boolean z) {
            super(str, objArr);
            this.OoooOoo = i;
            this.Ooooo00 = j00Var;
            this.Ooooo0o = i2;
            this.OooooO0 = z;
        }

        @Override // z2.yx
        public void OooOO0o() {
            try {
                boolean zOooO0Oo = hz.this.OoooooO.OooO0Oo(this.OoooOoo, this.Ooooo00, this.Ooooo0o, this.OooooO0);
                if (zOooO0Oo) {
                    hz.this.o00ooo.o00o0O(this.OoooOoo, ErrorCode.CANCEL);
                }
                if (zOooO0Oo || this.OooooO0) {
                    synchronized (hz.this) {
                        hz.this.o00oO0o.remove(Integer.valueOf(this.OoooOoo));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    public class OooO00o extends yx {
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ ErrorCode Ooooo00;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            this.OoooOoo = i;
            this.Ooooo00 = errorCode;
        }

        @Override // z2.yx
        public void OooOO0o() {
            try {
                hz.this.o00000OO(this.OoooOoo, this.Ooooo00);
            } catch (IOException unused) {
                hz.this.o0OoOo0();
            }
        }
    }

    public class OooO0O0 extends yx {
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ long Ooooo00;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.OoooOoo = i;
            this.Ooooo00 = j;
        }

        @Override // z2.yx
        public void OooOO0o() {
            try {
                hz.this.o00ooo.o00oO0O(this.OoooOoo, this.Ooooo00);
            } catch (IOException unused) {
                hz.this.o0OoOo0();
            }
        }
    }

    public class OooO0OO extends yx {
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ List Ooooo00;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0OO(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.OoooOoo = i;
            this.Ooooo00 = list;
        }

        @Override // z2.yx
        public void OooOO0o() {
            if (hz.this.OoooooO.OooO00o(this.OoooOoo, this.Ooooo00)) {
                try {
                    hz.this.o00ooo.o00o0O(this.OoooOoo, ErrorCode.CANCEL);
                    synchronized (hz.this) {
                        hz.this.o00oO0o.remove(Integer.valueOf(this.OoooOoo));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    public class OooO0o extends yx {
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ List Ooooo00;
        public final /* synthetic */ boolean Ooooo0o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0o(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.OoooOoo = i;
            this.Ooooo00 = list;
            this.Ooooo0o = z;
        }

        @Override // z2.yx
        public void OooOO0o() {
            boolean zOooO0O0 = hz.this.OoooooO.OooO0O0(this.OoooOoo, this.Ooooo00, this.Ooooo0o);
            if (zOooO0O0) {
                try {
                    hz.this.o00ooo.o00o0O(this.OoooOoo, ErrorCode.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (zOooO0O0 || this.Ooooo0o) {
                synchronized (hz.this) {
                    hz.this.o00oO0o.remove(Integer.valueOf(this.OoooOoo));
                }
            }
        }
    }

    public class OooOO0 extends yx {
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ ErrorCode Ooooo00;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooOO0(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            this.OoooOoo = i;
            this.Ooooo00 = errorCode;
        }

        @Override // z2.yx
        public void OooOO0o() {
            hz.this.OoooooO.OooO0OO(this.OoooOoo, this.Ooooo00);
            synchronized (hz.this) {
                hz.this.o00oO0o.remove(Integer.valueOf(this.OoooOoo));
            }
        }
    }

    public static class OooOO0O {
        public Socket OooO00o;
        public String OooO0O0;
        public l00 OooO0OO;
        public k00 OooO0Oo;
        public boolean OooO0oO;
        public int OooO0oo;
        public OooOOO0 OooO0o0 = OooOOO0.OooO00o;
        public mz OooO0o = mz.OooO00o;

        public OooOO0O(boolean z) {
            this.OooO0oO = z;
        }

        public hz OooO00o() {
            return new hz(this);
        }

        public OooOO0O OooO0O0(OooOOO0 oooOOO0) {
            this.OooO0o0 = oooOOO0;
            return this;
        }

        public OooOO0O OooO0OO(int i) {
            this.OooO0oo = i;
            return this;
        }

        public OooOO0O OooO0Oo(mz mzVar) {
            this.OooO0o = mzVar;
            return this;
        }

        public OooOO0O OooO0o(Socket socket, String str, l00 l00Var, k00 k00Var) {
            this.OooO00o = socket;
            this.OooO0O0 = str;
            this.OooO0OO = l00Var;
            this.OooO0Oo = k00Var;
            return this;
        }

        public OooOO0O OooO0o0(Socket socket) throws IOException {
            return OooO0o(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), w00.OooO0Oo(w00.OooOOO(socket)), w00.OooO0OO(w00.OooO(socket)));
        }
    }

    public final class OooOOO extends yx {
        public final boolean OoooOoo;
        public final int Ooooo00;
        public final int Ooooo0o;

        public OooOOO(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", hz.this.Ooooo0o, Integer.valueOf(i), Integer.valueOf(i2));
            this.OoooOoo = z;
            this.Ooooo00 = i;
            this.Ooooo0o = i2;
        }

        @Override // z2.yx
        public void OooOO0o() {
            hz.this.o00000(this.OoooOoo, this.Ooooo00, this.Ooooo0o);
        }
    }

    public static abstract class OooOOO0 {
        public static final OooOOO0 OooO00o = new OooO00o();

        public class OooO00o extends OooOOO0 {
            @Override // z2.hz.OooOOO0
            public void OooO0o(jz jzVar) throws IOException {
                jzVar.OooO0o(ErrorCode.REFUSED_STREAM);
            }
        }

        public abstract void OooO0o(jz jzVar) throws IOException;

        public void OooO0o0(hz hzVar) {
        }
    }

    public class OooOOOO extends yx implements iz.OooO0O0 {
        public final iz OoooOoo;

        public class OooO00o extends yx {
            public final /* synthetic */ jz OoooOoo;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OooO00o(String str, Object[] objArr, jz jzVar) {
                super(str, objArr);
                this.OoooOoo = jzVar;
            }

            @Override // z2.yx
            public void OooOO0o() {
                try {
                    hz.this.OoooOoo.OooO0o(this.OoooOoo);
                } catch (IOException e) {
                    uz.OooOO0O().OooOOo(4, "Http2Connection.Listener failure for " + hz.this.Ooooo0o, e);
                    try {
                        this.OoooOoo.OooO0o(ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public class OooO0O0 extends yx {
            public OooO0O0(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // z2.yx
            public void OooOO0o() {
                hz hzVar = hz.this;
                hzVar.OoooOoo.OooO0o0(hzVar);
            }
        }

        public class OooO0OO extends yx {
            public final /* synthetic */ nz OoooOoo;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OooO0OO(String str, Object[] objArr, nz nzVar) {
                super(str, objArr);
                this.OoooOoo = nzVar;
            }

            @Override // z2.yx
            public void OooOO0o() {
                try {
                    hz.this.o00ooo.OooOO0(this.OoooOoo);
                } catch (IOException unused) {
                    hz.this.o0OoOo0();
                }
            }
        }

        public OooOOOO(iz izVar) {
            super("OkHttp %s", hz.this.Ooooo0o);
            this.OoooOoo = izVar;
        }

        private void OooOOO0(nz nzVar) {
            try {
                hz.this.Oooooo0.execute(new OooO0OO("OkHttp %s ACK Settings", new Object[]{hz.this.Ooooo0o}, nzVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO(int i, ErrorCode errorCode) {
            if (hz.this.o0Oo0oo(i)) {
                hz.this.o0ooOoO(i, errorCode);
                return;
            }
            jz jzVarO0OO00O = hz.this.o0OO00O(i);
            if (jzVarO0OO00O != null) {
                jzVarO0OO00O.OooOo00(errorCode);
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO00o() {
        }

        @Override // z2.iz.OooO0O0
        public void OooO0O0(boolean z, nz nzVar) {
            jz[] jzVarArr;
            long j;
            int i;
            synchronized (hz.this) {
                int iOooO0o0 = hz.this.o00Oo0.OooO0o0();
                if (z) {
                    hz.this.o00Oo0.OooO00o();
                }
                hz.this.o00Oo0.OooOO0(nzVar);
                OooOOO0(nzVar);
                int iOooO0o02 = hz.this.o00Oo0.OooO0o0();
                jzVarArr = null;
                if (iOooO0o02 == -1 || iOooO0o02 == iOooO0o0) {
                    j = 0;
                } else {
                    j = iOooO0o02 - iOooO0o0;
                    hz hzVar = hz.this;
                    if (!hzVar.o00Ooo) {
                        hzVar.o00Ooo = true;
                    }
                    if (!hzVar.Ooooo00.isEmpty()) {
                        jzVarArr = (jz[]) hz.this.Ooooo00.values().toArray(new jz[hz.this.Ooooo00.size()]);
                    }
                }
                hz.o0ooOO0.execute(new OooO0O0("OkHttp %s settings", hz.this.Ooooo0o));
            }
            if (jzVarArr == null || j == 0) {
                return;
            }
            for (jz jzVar : jzVarArr) {
                synchronized (jzVar) {
                    jzVar.OooO0OO(j);
                }
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO0OO(boolean z, int i, int i2, List<dz> list) {
            if (hz.this.o0Oo0oo(i)) {
                hz.this.o0ooOO0(i, list, z);
                return;
            }
            synchronized (hz.this) {
                jz jzVarO00O0O = hz.this.o00O0O(i);
                if (jzVarO00O0O != null) {
                    jzVarO00O0O.OooOOoo(list);
                    if (z) {
                        jzVarO00O0O.OooOOo();
                        return;
                    }
                    return;
                }
                hz hzVar = hz.this;
                if (hzVar.OooooOo) {
                    return;
                }
                if (i <= hzVar.OooooO0) {
                    return;
                }
                if (i % 2 == hzVar.OooooOO % 2) {
                    return;
                }
                jz jzVar = new jz(i, hz.this, false, z, zx.Oooo0(list));
                hz hzVar2 = hz.this;
                hzVar2.OooooO0 = i;
                hzVar2.Ooooo00.put(Integer.valueOf(i), jzVar);
                hz.o0ooOO0.execute(new OooO00o("OkHttp %s stream %d", new Object[]{hz.this.Ooooo0o, Integer.valueOf(i)}, jzVar));
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO0Oo(int i, long j) {
            hz hzVar = hz.this;
            if (i == 0) {
                synchronized (hzVar) {
                    hz hzVar2 = hz.this;
                    hzVar2.ooOO += j;
                    hzVar2.notifyAll();
                }
                return;
            }
            jz jzVarO00O0O = hzVar.o00O0O(i);
            if (jzVarO00O0O != null) {
                synchronized (jzVarO00O0O) {
                    jzVarO00O0O.OooO0OO(j);
                }
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO0o(boolean z, int i, l00 l00Var, int i2) throws IOException {
            if (hz.this.o0Oo0oo(i)) {
                hz.this.o00oO0o(i, l00Var, i2, z);
                return;
            }
            jz jzVarO00O0O = hz.this.o00O0O(i);
            if (jzVarO00O0O == null) {
                hz.this.o00000Oo(i, ErrorCode.PROTOCOL_ERROR);
                long j = i2;
                hz.this.o000000O(j);
                l00Var.skip(j);
                return;
            }
            jzVarO00O0O.OooOOo0(l00Var, i2);
            if (z) {
                jzVarO00O0O.OooOOo();
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO0o0(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }

        @Override // z2.iz.OooO0O0
        public void OooO0oO(boolean z, int i, int i2) {
            if (!z) {
                try {
                    hz.this.Oooooo0.execute(hz.this.new OooOOO(true, i, i2));
                } catch (RejectedExecutionException unused) {
                }
            } else {
                synchronized (hz.this) {
                    hz.this.Ooooooo = false;
                    hz.this.notifyAll();
                }
            }
        }

        @Override // z2.iz.OooO0O0
        public void OooO0oo(int i, int i2, int i3, boolean z) {
        }

        @Override // z2.iz.OooO0O0
        public void OooOO0(int i, int i2, List<dz> list) {
            hz.this.o0ooOOo(i2, list);
        }

        @Override // z2.iz.OooO0O0
        public void OooOO0O(int i, ErrorCode errorCode, ByteString byteString) {
            jz[] jzVarArr;
            byteString.size();
            synchronized (hz.this) {
                jzVarArr = (jz[]) hz.this.Ooooo00.values().toArray(new jz[hz.this.Ooooo00.size()]);
                hz.this.OooooOo = true;
            }
            for (jz jzVar : jzVarArr) {
                if (jzVar.OooOO0O() > i && jzVar.OooOOO()) {
                    jzVar.OooOo00(ErrorCode.REFUSED_STREAM);
                    hz.this.o0OO00O(jzVar.OooOO0O());
                }
            }
        }

        @Override // z2.yx
        public void OooOO0o() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    this.OoooOoo.Oooooo0(this);
                    while (this.OoooOoo.OooooOo(false, this)) {
                    }
                    errorCode = ErrorCode.NO_ERROR;
                    try {
                        try {
                            hz.this.Ooooooo(errorCode, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            hz.this.Ooooooo(errorCode3, errorCode3);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            hz.this.Ooooooo(errorCode, errorCode2);
                        } catch (IOException unused2) {
                        }
                        zx.OooO0oO(this.OoooOoo);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                errorCode = errorCode2;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                hz.this.Ooooooo(errorCode, errorCode2);
                zx.OooO0oO(this.OoooOoo);
                throw th;
            }
            zx.OooO0oO(this.OoooOoo);
        }
    }

    public hz(OooOO0O oooOO0O) {
        nz nzVar = new nz();
        this.o00Oo0 = nzVar;
        this.o00Ooo = false;
        this.o00oO0o = new LinkedHashSet();
        this.OoooooO = oooOO0O.OooO0o;
        boolean z = oooOO0O.OooO0oO;
        this.OoooOoO = z;
        this.OoooOoo = oooOO0O.OooO0o0;
        int i = z ? 1 : 2;
        this.OooooOO = i;
        if (z) {
            this.OooooOO = i + 2;
        }
        if (z) {
            this.o00O0O.OooOO0O(7, 16777216);
        }
        String str = oooOO0O.OooO0O0;
        this.Ooooo0o = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, zx.Oooo00o(zx.OooOOoo("OkHttp %s Writer", str), false));
        this.Oooooo0 = scheduledThreadPoolExecutor;
        if (oooOO0O.OooO0oo != 0) {
            OooOOO oooOOO = new OooOOO(false, 0, 0);
            int i2 = oooOO0O.OooO0oo;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(oooOOO, i2, i2, TimeUnit.MILLISECONDS);
        }
        this.Oooooo = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zx.Oooo00o(zx.OooOOoo("OkHttp %s Push Observer", str), true));
        nzVar.OooOO0O(7, 65535);
        nzVar.OooOO0O(5, 16384);
        this.ooOO = nzVar.OooO0o0();
        this.o00o0O = oooOO0O.OooO00o;
        this.o00ooo = new kz(oooOO0O.OooO0Oo, z);
        this.oo000o = new OooOOOO(new iz(oooOO0O.OooO0OO, z));
    }

    private jz o00o0O(int i, List<dz> list, boolean z) throws IOException {
        int i2;
        jz jzVar;
        boolean z3;
        boolean z4 = !z;
        synchronized (this.o00ooo) {
            synchronized (this) {
                if (this.OooooOO > 1073741823) {
                    o0O0O00(ErrorCode.REFUSED_STREAM);
                }
                if (this.OooooOo) {
                    throw new ConnectionShutdownException();
                }
                i2 = this.OooooOO;
                this.OooooOO = i2 + 2;
                jzVar = new jz(i2, this, z4, false, null);
                z3 = !z || this.ooOO == 0 || jzVar.OooO0O0 == 0;
                if (jzVar.OooOOOO()) {
                    this.Ooooo00.put(Integer.valueOf(i2), jzVar);
                }
            }
            if (i == 0) {
                this.o00ooo.o00oO0o(z4, i2, i, list);
            } else {
                if (this.OoooOoO) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.o00ooo.o00Ooo(i, i2, list);
            }
        }
        if (z3) {
            this.o00ooo.flush();
        }
        return jzVar;
    }

    private synchronized void o00oO0O(yx yxVar) {
        if (!o00Oo0()) {
            this.Oooooo.execute(yxVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0OoOo0() {
        try {
            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
            Ooooooo(errorCode, errorCode);
        } catch (IOException unused) {
        }
    }

    public synchronized void OoooooO() throws InterruptedException {
        while (this.Ooooooo) {
            wait();
        }
    }

    public void Ooooooo(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        jz[] jzVarArr = null;
        try {
            o0O0O00(errorCode);
            e = null;
        } catch (IOException e) {
            e = e;
        }
        synchronized (this) {
            if (!this.Ooooo00.isEmpty()) {
                jzVarArr = (jz[]) this.Ooooo00.values().toArray(new jz[this.Ooooo00.size()]);
                this.Ooooo00.clear();
            }
        }
        if (jzVarArr != null) {
            for (jz jzVar : jzVarArr) {
                try {
                    jzVar.OooO0o(errorCode2);
                } catch (IOException e2) {
                    if (e != null) {
                        e = e2;
                    }
                }
            }
        }
        try {
            this.o00ooo.close();
        } catch (IOException e3) {
            if (e == null) {
                e = e3;
            }
        }
        try {
            this.o00o0O.close();
        } catch (IOException e4) {
            e = e4;
        }
        this.Oooooo0.shutdown();
        this.Oooooo.shutdown();
        if (e != null) {
            throw e;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Ooooooo(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public void flush() throws IOException {
        this.o00ooo.flush();
    }

    public void o00000(boolean z, int i, int i2) {
        boolean z3;
        if (!z) {
            synchronized (this) {
                z3 = this.Ooooooo;
                this.Ooooooo = true;
            }
            if (z3) {
                o0OoOo0();
                return;
            }
        }
        try {
            this.o00ooo.o00Oo0(z, i, i2);
        } catch (IOException unused) {
            o0OoOo0();
        }
    }

    public void o000000(boolean z) throws IOException {
        if (z) {
            this.o00ooo.OooooOo();
            this.o00ooo.o00ooo(this.o00O0O);
            if (this.o00O0O.OooO0o0() != 65535) {
                this.o00ooo.o00oO0O(0, r6 - 65535);
            }
        }
        new Thread(this.oo000o).start();
    }

    public synchronized void o000000O(long j) {
        long j2 = this.o0OoOo0 + j;
        this.o0OoOo0 = j2;
        if (j2 >= this.o00O0O.OooO0o0() / 2) {
            o00000o0(0, this.o0OoOo0);
            this.o0OoOo0 = 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.o00ooo.o00O0O());
        r6 = r3;
        r8.ooOO -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void o000000o(int i, boolean z, j00 j00Var, long j) throws IOException {
        int iMin;
        long j2;
        if (j == 0) {
            this.o00ooo.Oooooo0(z, i, j00Var, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        long j3 = this.ooOO;
                        if (j3 > 0) {
                            break;
                        } else {
                            if (!this.Ooooo00.containsKey(Integer.valueOf(i))) {
                                throw new IOException("stream closed");
                            }
                            wait();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
            }
            j -= j2;
            this.o00ooo.Oooooo0(z && j == 0, i, j00Var, iMin);
        }
    }

    public void o00000O(int i, boolean z, List<dz> list) throws IOException {
        this.o00ooo.oo000o(z, i, list);
    }

    public void o00000O0() throws InterruptedException {
        o00000(false, 1330343787, -257978967);
        OoooooO();
    }

    public void o00000OO(int i, ErrorCode errorCode) throws IOException {
        this.o00ooo.o00o0O(i, errorCode);
    }

    public void o00000Oo(int i, ErrorCode errorCode) {
        try {
            this.Oooooo0.execute(new OooO00o("OkHttp %s stream %d", new Object[]{this.Ooooo0o, Integer.valueOf(i)}, i, errorCode));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void o00000o0(int i, long j) {
        try {
            this.Oooooo0.execute(new OooO0O0("OkHttp Window Update %s stream %d", new Object[]{this.Ooooo0o, Integer.valueOf(i)}, i, j));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void o000OOo() throws IOException {
        o000000(true);
    }

    public synchronized jz o00O0O(int i) {
        return this.Ooooo00.get(Integer.valueOf(i));
    }

    public synchronized boolean o00Oo0() {
        return this.OooooOo;
    }

    public synchronized int o00Ooo() {
        return this.o00Oo0.OooO0o(Integer.MAX_VALUE);
    }

    public void o00oO0o(int i, l00 l00Var, int i2, boolean z) throws IOException {
        j00 j00Var = new j00();
        long j = i2;
        l00Var.OoooOo0(j);
        l00Var.read(j00Var, j);
        if (j00Var.o00000O0() == j) {
            o00oO0O(new OooO("OkHttp %s Push Data[%s]", new Object[]{this.Ooooo0o, Integer.valueOf(i)}, i, j00Var, i2, z));
            return;
        }
        throw new IOException(j00Var.o00000O0() + " != " + i2);
    }

    public jz o00ooo(List<dz> list, boolean z) throws IOException {
        return o00o0O(0, list, z);
    }

    public void o0O0O00(ErrorCode errorCode) throws IOException {
        synchronized (this.o00ooo) {
            synchronized (this) {
                if (this.OooooOo) {
                    return;
                }
                this.OooooOo = true;
                this.o00ooo.Ooooooo(this.OooooO0, errorCode, zx.OooO00o);
            }
        }
    }

    public synchronized jz o0OO00O(int i) {
        jz jzVarRemove;
        jzVarRemove = this.Ooooo00.remove(Integer.valueOf(i));
        notifyAll();
        return jzVarRemove;
    }

    public jz o0OOO0o(int i, List<dz> list, boolean z) throws IOException {
        if (this.OoooOoO) {
            throw new IllegalStateException("Client cannot push requests.");
        }
        return o00o0O(i, list, z);
    }

    public boolean o0Oo0oo(int i) {
        return i != 0 && (i & 1) == 0;
    }

    public void o0ooOO0(int i, List<dz> list, boolean z) {
        try {
            o00oO0O(new OooO0o("OkHttp %s Push Headers[%s]", new Object[]{this.Ooooo0o, Integer.valueOf(i)}, i, list, z));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void o0ooOOo(int i, List<dz> list) {
        synchronized (this) {
            if (this.o00oO0o.contains(Integer.valueOf(i))) {
                o00000Oo(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.o00oO0o.add(Integer.valueOf(i));
            try {
                o00oO0O(new OooO0OO("OkHttp %s Push Request[%s]", new Object[]{this.Ooooo0o, Integer.valueOf(i)}, i, list));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public void o0ooOoO(int i, ErrorCode errorCode) {
        o00oO0O(new OooOO0("OkHttp %s Push Reset[%s]", new Object[]{this.Ooooo0o, Integer.valueOf(i)}, i, errorCode));
    }

    public synchronized int oo000o() {
        return this.Ooooo00.size();
    }

    public void oo0o0Oo(nz nzVar) throws IOException {
        synchronized (this.o00ooo) {
            synchronized (this) {
                if (this.OooooOo) {
                    throw new ConnectionShutdownException();
                }
                this.o00O0O.OooOO0(nzVar);
            }
            this.o00ooo.o00ooo(nzVar);
        }
    }

    public Protocol ooOO() {
        return Protocol.HTTP_2;
    }
}
