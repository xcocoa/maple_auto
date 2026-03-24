package z2;

import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.Protocol;
import okio.ByteString;
import z2.e00;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public final class c00 implements vx, e00.OooO00o {
    private static final List<Protocol> OooOo = Collections.singletonList(Protocol.HTTP_1_1);
    private static final long OooOoO = 60000;
    private static final long OooOoO0 = 16777216;
    public static final /* synthetic */ boolean OooOoOO = false;
    private f00 OooO;
    private final qx OooO00o;
    public final wx OooO0O0;
    private final Random OooO0OO;
    private final long OooO0Oo;
    private tw OooO0o;
    private final String OooO0o0;
    private final Runnable OooO0oO;
    private e00 OooO0oo;
    private ScheduledExecutorService OooOO0;
    private OooOO0O OooOO0O;
    private long OooOOO;
    private boolean OooOOOO;
    private ScheduledFuture<?> OooOOOo;
    private String OooOOo;
    private boolean OooOOoo;
    private int OooOo0;
    private int OooOo00;
    private int OooOo0O;
    private boolean OooOo0o;
    private final ArrayDeque<ByteString> OooOO0o = new ArrayDeque<>();
    private final ArrayDeque<Object> OooOOO0 = new ArrayDeque<>();
    private int OooOOo0 = -1;

    public static final class OooO {
        public final int OooO00o;
        public final ByteString OooO0O0;

        public OooO(int i, ByteString byteString) {
            this.OooO00o = i;
            this.OooO0O0 = byteString;
        }
    }

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            do {
                try {
                } catch (IOException e) {
                    c00.this.OooOOO(e, null);
                    return;
                }
            } while (c00.this.OooOoO0());
        }
    }

    public class OooO0O0 implements uw {
        public final /* synthetic */ qx OooO00o;

        public OooO0O0(qx qxVar) {
            this.OooO00o = qxVar;
        }

        @Override // z2.uw
        public void onFailure(tw twVar, IOException iOException) {
            c00.this.OooOOO(iOException, null);
        }

        @Override // z2.uw
        public void onResponse(tw twVar, sx sxVar) {
            try {
                c00.this.OooOO0O(sxVar);
                py pyVarOooOOOO = xx.OooO00o.OooOOOO(twVar);
                pyVarOooOOOO.OooOO0();
                OooOO0O oooOO0OOooOOoo = pyVarOooOOOO.OooO0Oo().OooOOoo(pyVarOooOOOO);
                try {
                    c00 c00Var = c00.this;
                    c00Var.OooO0O0.OooO0o(c00Var, sxVar);
                    c00.this.OooOOOO("OkHttp WebSocket " + this.OooO00o.OooOO0O().Oooo0oO(), oooOO0OOooOOoo);
                    pyVarOooOOOO.OooO0Oo().OooO0Oo().setSoTimeout(0);
                    c00.this.OooOOOo();
                } catch (Exception e) {
                    c00.this.OooOOO(e, null);
                }
            } catch (ProtocolException e2) {
                c00.this.OooOOO(e2, sxVar);
                zx.OooO0oO(sxVar);
            }
        }
    }

    public final class OooO0OO implements Runnable {
        public OooO0OO() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c00.this.cancel();
        }
    }

    public static final class OooO0o {
        public final int OooO00o;
        public final ByteString OooO0O0;
        public final long OooO0OO;

        public OooO0o(int i, ByteString byteString, long j) {
            this.OooO00o = i;
            this.OooO0O0 = byteString;
            this.OooO0OO = j;
        }
    }

    public final class OooOO0 implements Runnable {
        public OooOO0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c00.this.OooOoO();
        }
    }

    public static abstract class OooOO0O implements Closeable {
        public final boolean OoooOoO;
        public final l00 OoooOoo;
        public final k00 Ooooo00;

        public OooOO0O(boolean z, l00 l00Var, k00 k00Var) {
            this.OoooOoO = z;
            this.OoooOoo = l00Var;
            this.Ooooo00 = k00Var;
        }
    }

    public c00(qx qxVar, wx wxVar, Random random, long j) {
        if (!"GET".equals(qxVar.OooO0oO())) {
            throw new IllegalArgumentException("Request must be GET: " + qxVar.OooO0oO());
        }
        this.OooO00o = qxVar;
        this.OooO0O0 = wxVar;
        this.OooO0OO = random;
        this.OooO0Oo = j;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.OooO0o0 = ByteString.of(bArr).base64();
        this.OooO0oO = new OooO00o();
    }

    private void OooOo0() {
        ScheduledExecutorService scheduledExecutorService = this.OooOO0;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.execute(this.OooO0oO);
        }
    }

    private synchronized boolean OooOo0O(ByteString byteString, int i) {
        if (!this.OooOOoo && !this.OooOOOO) {
            if (this.OooOOO + ((long) byteString.size()) > OooOoO0) {
                OooO0o(1001, null);
                return false;
            }
            this.OooOOO += (long) byteString.size();
            this.OooOOO0.add(new OooO(i, byteString));
            OooOo0();
            return true;
        }
        return false;
    }

    @Override // z2.e00.OooO00o
    public void OooO(int i, String str) {
        OooOO0O oooOO0O;
        if (i == -1) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            if (this.OooOOo0 != -1) {
                throw new IllegalStateException("already closed");
            }
            this.OooOOo0 = i;
            this.OooOOo = str;
            oooOO0O = null;
            if (this.OooOOOO && this.OooOOO0.isEmpty()) {
                OooOO0O oooOO0O2 = this.OooOO0O;
                this.OooOO0O = null;
                ScheduledFuture<?> scheduledFuture = this.OooOOOo;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.OooOO0.shutdown();
                oooOO0O = oooOO0O2;
            }
        }
        try {
            this.OooO0O0.OooO0O0(this, i, str);
            if (oooOO0O != null) {
                this.OooO0O0.OooO00o(this, i, str);
            }
        } finally {
            zx.OooO0oO(oooOO0O);
        }
    }

    @Override // z2.vx
    public boolean OooO00o(ByteString byteString) {
        Objects.requireNonNull(byteString, "bytes == null");
        return OooOo0O(byteString, 2);
    }

    @Override // z2.vx
    public boolean OooO0O0(String str) {
        Objects.requireNonNull(str, "text == null");
        return OooOo0O(ByteString.encodeUtf8(str), 1);
    }

    @Override // z2.e00.OooO00o
    public void OooO0OO(ByteString byteString) throws IOException {
        this.OooO0O0.OooO0o0(this, byteString);
    }

    @Override // z2.e00.OooO00o
    public void OooO0Oo(String str) throws IOException {
        this.OooO0O0.OooO0Oo(this, str);
    }

    @Override // z2.vx
    public boolean OooO0o(int i, String str) {
        return OooOO0o(i, str, OooOoO);
    }

    @Override // z2.e00.OooO00o
    public synchronized void OooO0o0(ByteString byteString) {
        if (!this.OooOOoo && (!this.OooOOOO || !this.OooOOO0.isEmpty())) {
            this.OooOO0o.add(byteString);
            OooOo0();
            this.OooOo0++;
        }
    }

    @Override // z2.vx
    public synchronized long OooO0oO() {
        return this.OooOOO;
    }

    @Override // z2.e00.OooO00o
    public synchronized void OooO0oo(ByteString byteString) {
        this.OooOo0O++;
        this.OooOo0o = false;
    }

    public void OooOO0(int i, TimeUnit timeUnit) throws InterruptedException {
        this.OooOO0.awaitTermination(i, timeUnit);
    }

    public void OooOO0O(sx sxVar) throws ProtocolException {
        if (sxVar.OoooooO() != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + sxVar.OoooooO() + o4.OooO00o.OooO0Oo + sxVar.o00ooo() + "'");
        }
        String strO0OoOo0 = sxVar.o0OoOo0("Connection");
        if (!"Upgrade".equalsIgnoreCase(strO0OoOo0)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + strO0OoOo0 + "'");
        }
        String strO0OoOo02 = sxVar.o0OoOo0("Upgrade");
        if (!"websocket".equalsIgnoreCase(strO0OoOo02)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + strO0OoOo02 + "'");
        }
        String strO0OoOo03 = sxVar.o0OoOo0("Sec-WebSocket-Accept");
        String strBase64 = ByteString.encodeUtf8(this.OooO0o0 + d00.OooO00o).sha1().base64();
        if (strBase64.equals(strO0OoOo03)) {
            return;
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + strBase64 + "' but was '" + strO0OoOo03 + "'");
    }

    public synchronized boolean OooOO0o(int i, String str, long j) {
        d00.OooO0Oo(i);
        ByteString byteStringEncodeUtf8 = null;
        if (str != null) {
            byteStringEncodeUtf8 = ByteString.encodeUtf8(str);
            if (byteStringEncodeUtf8.size() > 123) {
                throw new IllegalArgumentException("reason.size() > 123: " + str);
            }
        }
        if (!this.OooOOoo && !this.OooOOOO) {
            this.OooOOOO = true;
            this.OooOOO0.add(new OooO0o(i, byteStringEncodeUtf8, j));
            OooOo0();
            return true;
        }
        return false;
    }

    public void OooOOO(Exception exc, @Nullable sx sxVar) {
        synchronized (this) {
            if (this.OooOOoo) {
                return;
            }
            this.OooOOoo = true;
            OooOO0O oooOO0O = this.OooOO0O;
            this.OooOO0O = null;
            ScheduledFuture<?> scheduledFuture = this.OooOOOo;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            ScheduledExecutorService scheduledExecutorService = this.OooOO0;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
            }
            try {
                this.OooO0O0.OooO0OO(this, exc, sxVar);
            } finally {
                zx.OooO0oO(oooOO0O);
            }
        }
    }

    public void OooOOO0(ox oxVar) {
        ox oxVarOooO0Oo = oxVar.OooOo0().OooOOOo(gx.OooO00o).OooOoO0(OooOo).OooO0Oo();
        qx qxVarOooO0O0 = this.OooO00o.OooO0oo().OooO0oo("Upgrade", "websocket").OooO0oo("Connection", "Upgrade").OooO0oo("Sec-WebSocket-Key", this.OooO0o0).OooO0oo("Sec-WebSocket-Version", "13").OooO0O0();
        tw twVarOooOO0O = xx.OooO00o.OooOO0O(oxVarOooO0Oo, qxVarOooO0O0);
        this.OooO0o = twVarOooOO0O;
        twVarOooOO0O.timeout().OooO0O0();
        this.OooO0o.OooOO0(new OooO0O0(qxVarOooO0O0));
    }

    public void OooOOOO(String str, OooOO0O oooOO0O) throws IOException {
        synchronized (this) {
            this.OooOO0O = oooOO0O;
            this.OooO = new f00(oooOO0O.OoooOoO, oooOO0O.Ooooo00, this.OooO0OO);
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, zx.Oooo00o(str, false));
            this.OooOO0 = scheduledThreadPoolExecutor;
            if (this.OooO0Oo != 0) {
                OooOO0 oooOO0 = new OooOO0();
                long j = this.OooO0Oo;
                scheduledThreadPoolExecutor.scheduleAtFixedRate(oooOO0, j, j, TimeUnit.MILLISECONDS);
            }
            if (!this.OooOOO0.isEmpty()) {
                OooOo0();
            }
        }
        this.OooO0oo = new e00(oooOO0O.OoooOoO, oooOO0O.OoooOoo, this);
    }

    public void OooOOOo() throws IOException {
        while (this.OooOOo0 == -1) {
            this.OooO0oo.OooO00o();
        }
    }

    public boolean OooOOo() throws IOException {
        try {
            this.OooO0oo.OooO00o();
            return this.OooOOo0 == -1;
        } catch (Exception e) {
            OooOOO(e, null);
            return false;
        }
    }

    public synchronized boolean OooOOo0(ByteString byteString) {
        boolean z;
        if (this.OooOOoo || (this.OooOOOO && this.OooOOO0.isEmpty())) {
            z = false;
        } else {
            this.OooOO0o.add(byteString);
            OooOo0();
            z = true;
        }
        return z;
    }

    public synchronized int OooOOoo() {
        return this.OooOo0;
    }

    public void OooOo() throws InterruptedException {
        ScheduledFuture<?> scheduledFuture = this.OooOOOo;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.OooOO0.shutdown();
        this.OooOO0.awaitTermination(10L, TimeUnit.SECONDS);
    }

    public synchronized int OooOo00() {
        return this.OooOo0O;
    }

    public synchronized int OooOo0o() {
        return this.OooOo00;
    }

    public void OooOoO() {
        synchronized (this) {
            if (this.OooOOoo) {
                return;
            }
            f00 f00Var = this.OooO;
            int i = this.OooOo0o ? this.OooOo00 : -1;
            this.OooOo00++;
            this.OooOo0o = true;
            if (i == -1) {
                try {
                    f00Var.OooO0o0(ByteString.EMPTY);
                    return;
                } catch (IOException e) {
                    OooOOO(e, null);
                    return;
                }
            }
            OooOOO(new SocketTimeoutException("sent ping but didn't receive pong within " + this.OooO0Oo + "ms (after " + (i - 1) + " successful ping/pongs)"), null);
        }
    }

    public boolean OooOoO0() throws IOException {
        OooOO0O oooOO0O;
        String str;
        synchronized (this) {
            if (this.OooOOoo) {
                return false;
            }
            f00 f00Var = this.OooO;
            ByteString byteStringPoll = this.OooOO0o.poll();
            int i = -1;
            Object obj = null;
            if (byteStringPoll == null) {
                Object objPoll = this.OooOOO0.poll();
                if (objPoll instanceof OooO0o) {
                    int i2 = this.OooOOo0;
                    str = this.OooOOo;
                    if (i2 != -1) {
                        OooOO0O oooOO0O2 = this.OooOO0O;
                        this.OooOO0O = null;
                        this.OooOO0.shutdown();
                        obj = objPoll;
                        i = i2;
                        oooOO0O = oooOO0O2;
                    } else {
                        this.OooOOOo = this.OooOO0.schedule(new OooO0OO(), ((OooO0o) objPoll).OooO0OO, TimeUnit.MILLISECONDS);
                        i = i2;
                        oooOO0O = null;
                    }
                } else {
                    if (objPoll == null) {
                        return false;
                    }
                    oooOO0O = null;
                    str = null;
                }
                obj = objPoll;
            } else {
                oooOO0O = null;
                str = null;
            }
            try {
                if (byteStringPoll != null) {
                    f00Var.OooO0o(byteStringPoll);
                } else if (obj instanceof OooO) {
                    ByteString byteString = ((OooO) obj).OooO0O0;
                    k00 k00VarOooO0OO = w00.OooO0OO(f00Var.OooO00o(((OooO) obj).OooO00o, byteString.size()));
                    k00VarOooO0OO.OoooO0(byteString);
                    k00VarOooO0OO.close();
                    synchronized (this) {
                        this.OooOOO -= (long) byteString.size();
                    }
                } else {
                    if (!(obj instanceof OooO0o)) {
                        throw new AssertionError();
                    }
                    OooO0o oooO0o = (OooO0o) obj;
                    f00Var.OooO0O0(oooO0o.OooO00o, oooO0o.OooO0O0);
                    if (oooOO0O != null) {
                        this.OooO0O0.OooO00o(this, i, str);
                    }
                }
                return true;
            } finally {
                zx.OooO0oO(oooOO0O);
            }
        }
    }

    @Override // z2.vx
    public void cancel() {
        this.OooO0o.cancel();
    }

    @Override // z2.vx
    public qx request() {
        return this.OooO00o;
    }
}
