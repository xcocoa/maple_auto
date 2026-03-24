package z2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;
import z2.jx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class cz implements sy {
    private static final int OooO = 1;
    private static final int OooO0oo = 0;
    private static final int OooOO0 = 2;
    private static final int OooOO0O = 3;
    private static final int OooOO0o = 4;
    private static final int OooOOO = 6;
    private static final int OooOOO0 = 5;
    private static final int OooOOOO = 262144;
    public final ox OooO0O0;
    public final py OooO0OO;
    public final l00 OooO0Oo;
    public final k00 OooO0o0;
    public int OooO0o = 0;
    private long OooO0oO = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    public final class OooO implements d10 {
        private final q00 OoooOoO;
        private boolean OoooOoo;
        private long Ooooo00;

        public OooO(long j) {
            this.OoooOoO = new q00(cz.this.OooO0o0.timeout());
            this.Ooooo00 = j;
        }

        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            if (this.OoooOoo) {
                throw new IllegalStateException("closed");
            }
            zx.OooO0o(j00Var.o00000O0(), 0L, j);
            if (j <= this.Ooooo00) {
                cz.this.OooO0o0.OooOooO(j00Var, j);
                this.Ooooo00 -= j;
                return;
            }
            throw new ProtocolException("expected " + this.Ooooo00 + " bytes but received " + j);
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            this.OoooOoo = true;
            if (this.Ooooo00 > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            cz.this.OooO0oO(this.OoooOoO);
            cz.this.OooO0o = 3;
        }

        @Override // z2.d10, java.io.Flushable
        public void flush() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            cz.this.OooO0o0.flush();
        }

        @Override // z2.d10
        public f10 timeout() {
            return this.OoooOoO;
        }
    }

    public abstract class OooO0O0 implements e10 {
        public final q00 OoooOoO;
        public boolean OoooOoo;
        public long Ooooo00;

        private OooO0O0() {
            this.OoooOoO = new q00(cz.this.OooO0Oo.timeout());
            this.Ooooo00 = 0L;
        }

        public final void OooOO0(boolean z, IOException iOException) throws IOException {
            cz czVar = cz.this;
            int i = czVar.OooO0o;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                throw new IllegalStateException("state: " + cz.this.OooO0o);
            }
            czVar.OooO0oO(this.OoooOoO);
            cz czVar2 = cz.this;
            czVar2.OooO0o = 6;
            py pyVar = czVar2.OooO0OO;
            if (pyVar != null) {
                pyVar.OooOOo(!z, czVar2, this.Ooooo00, iOException);
            }
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            try {
                long j2 = cz.this.OooO0Oo.read(j00Var, j);
                if (j2 > 0) {
                    this.Ooooo00 += j2;
                }
                return j2;
            } catch (IOException e) {
                OooOO0(false, e);
                throw e;
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return this.OoooOoO;
        }
    }

    public final class OooO0OO implements d10 {
        private final q00 OoooOoO;
        private boolean OoooOoo;

        public OooO0OO() {
            this.OoooOoO = new q00(cz.this.OooO0o0.timeout());
        }

        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            if (this.OoooOoo) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            cz.this.OooO0o0.Oooo00O(j);
            cz.this.OooO0o0.OooOoO0(IOUtils.LINE_SEPARATOR_WINDOWS);
            cz.this.OooO0o0.OooOooO(j00Var, j);
            cz.this.OooO0o0.OooOoO0(IOUtils.LINE_SEPARATOR_WINDOWS);
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            this.OoooOoo = true;
            cz.this.OooO0o0.OooOoO0("0\r\n\r\n");
            cz.this.OooO0oO(this.OoooOoO);
            cz.this.OooO0o = 3;
        }

        @Override // z2.d10, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            cz.this.OooO0o0.flush();
        }

        @Override // z2.d10
        public f10 timeout() {
            return this.OoooOoO;
        }
    }

    public class OooO0o extends OooO0O0 {
        private static final long Oooooo = -1;
        private final kx OooooO0;
        private long OooooOO;
        private boolean OooooOo;

        public OooO0o(kx kxVar) {
            super();
            this.OooooOO = -1L;
            this.OooooOo = true;
            this.OooooO0 = kxVar;
        }

        private void OooooOo() throws IOException {
            if (this.OooooOO != -1) {
                cz.this.OooO0Oo.Oooo0OO();
            }
            try {
                this.OooooOO = cz.this.OooO0Oo.Ooooo0o();
                String strTrim = cz.this.OooO0Oo.Oooo0OO().trim();
                if (this.OooooOO < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.OooooOO + strTrim + "\"");
                }
                if (this.OooooOO == 0) {
                    this.OooooOo = false;
                    uy.OooOO0O(cz.this.OooO0O0.OooOO0O(), this.OooooO0, cz.this.OooOOOO());
                    OooOO0(true, null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            if (this.OooooOo && !zx.OooOOo0(this, 100, TimeUnit.MILLISECONDS)) {
                OooOO0(false, null);
            }
            this.OoooOoo = true;
        }

        @Override // z2.cz.OooO0O0, z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.OoooOoo) {
                throw new IllegalStateException("closed");
            }
            if (!this.OooooOo) {
                return -1L;
            }
            long j2 = this.OooooOO;
            if (j2 == 0 || j2 == -1) {
                OooooOo();
                if (!this.OooooOo) {
                    return -1L;
                }
            }
            long j3 = super.read(j00Var, Math.min(j, this.OooooOO));
            if (j3 != -1) {
                this.OooooOO -= j3;
                return j3;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            OooOO0(false, protocolException);
            throw protocolException;
        }
    }

    public class OooOO0 extends OooO0O0 {
        private long OooooO0;

        public OooOO0(long j) throws IOException {
            super();
            this.OooooO0 = j;
            if (j == 0) {
                OooOO0(true, null);
            }
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            if (this.OooooO0 != 0 && !zx.OooOOo0(this, 100, TimeUnit.MILLISECONDS)) {
                OooOO0(false, null);
            }
            this.OoooOoo = true;
        }

        @Override // z2.cz.OooO0O0, z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.OoooOoo) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.OooooO0;
            if (j2 == 0) {
                return -1L;
            }
            long j3 = super.read(j00Var, Math.min(j2, j));
            if (j3 == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                OooOO0(false, protocolException);
                throw protocolException;
            }
            long j4 = this.OooooO0 - j3;
            this.OooooO0 = j4;
            if (j4 == 0) {
                OooOO0(true, null);
            }
            return j3;
        }
    }

    public class OooOO0O extends OooO0O0 {
        private boolean OooooO0;

        public OooOO0O() {
            super();
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (this.OoooOoo) {
                return;
            }
            if (!this.OooooO0) {
                OooOO0(false, null);
            }
            this.OoooOoo = true;
        }

        @Override // z2.cz.OooO0O0, z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.OoooOoo) {
                throw new IllegalStateException("closed");
            }
            if (this.OooooO0) {
                return -1L;
            }
            long j2 = super.read(j00Var, j);
            if (j2 != -1) {
                return j2;
            }
            this.OooooO0 = true;
            OooOO0(true, null);
            return -1L;
        }
    }

    public cz(ox oxVar, py pyVar, l00 l00Var, k00 k00Var) {
        this.OooO0O0 = oxVar;
        this.OooO0OO = pyVar;
        this.OooO0Oo = l00Var;
        this.OooO0o0 = k00Var;
    }

    private String OooOOO() throws IOException {
        String strOooOo0o = this.OooO0Oo.OooOo0o(this.OooO0oO);
        this.OooO0oO -= (long) strOooOo0o.length();
        return strOooOo0o;
    }

    public d10 OooO() {
        if (this.OooO0o == 1) {
            this.OooO0o = 2;
            return new OooO0OO();
        }
        throw new IllegalStateException("state: " + this.OooO0o);
    }

    @Override // z2.sy
    public void OooO00o() throws IOException {
        this.OooO0o0.flush();
    }

    @Override // z2.sy
    public void OooO0O0(qx qxVar) throws IOException {
        OooOOOo(qxVar.OooO0o0(), yy.OooO00o(qxVar, this.OooO0OO.OooO0Oo().OooO0O0().OooO0O0().type()));
    }

    @Override // z2.sy
    public tx OooO0OO(sx sxVar) throws IOException {
        py pyVar = this.OooO0OO;
        pyVar.OooO0o.OooOOo0(pyVar.OooO0o0);
        String strO0OoOo0 = sxVar.o0OoOo0("Content-Type");
        if (!uy.OooO0OO(sxVar)) {
            return new xy(strO0OoOo0, 0L, w00.OooO0Oo(OooOO0o(0L)));
        }
        if ("chunked".equalsIgnoreCase(sxVar.o0OoOo0("Transfer-Encoding"))) {
            return new xy(strO0OoOo0, -1L, w00.OooO0Oo(OooOO0(sxVar.o0OOO0o().OooOO0O())));
        }
        long jOooO0O0 = uy.OooO0O0(sxVar);
        return jOooO0O0 != -1 ? new xy(strO0OoOo0, jOooO0O0, w00.OooO0Oo(OooOO0o(jOooO0O0))) : new xy(strO0OoOo0, -1L, w00.OooO0Oo(OooOOO0()));
    }

    @Override // z2.sy
    public sx.OooO00o OooO0Oo(boolean z) throws IOException {
        int i = this.OooO0o;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.OooO0o);
        }
        try {
            az azVarOooO0O0 = az.OooO0O0(OooOOO());
            sx.OooO00o oooO00oOooOO0 = new sx.OooO00o().OooOOO(azVarOooO0O0.OooO00o).OooO0oO(azVarOooO0O0.OooO0O0).OooOO0O(azVarOooO0O0.OooO0OO).OooOO0(OooOOOO());
            if (z && azVarOooO0O0.OooO0O0 == 100) {
                return null;
            }
            if (azVarOooO0O0.OooO0O0 == 100) {
                this.OooO0o = 3;
                return oooO00oOooOO0;
            }
            this.OooO0o = 4;
            return oooO00oOooOO0;
        } catch (EOFException e) {
            IOException iOException = new IOException("unexpected end of stream on " + this.OooO0OO);
            iOException.initCause(e);
            throw iOException;
        }
    }

    @Override // z2.sy
    public d10 OooO0o(qx qxVar, long j) {
        if ("chunked".equalsIgnoreCase(qxVar.OooO0OO("Transfer-Encoding"))) {
            return OooO();
        }
        if (j != -1) {
            return OooOO0O(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // z2.sy
    public void OooO0o0() throws IOException {
        this.OooO0o0.flush();
    }

    public void OooO0oO(q00 q00Var) {
        f10 f10VarOooOO0O = q00Var.OooOO0O();
        q00Var.OooOO0o(f10.OooO0Oo);
        f10VarOooOO0O.OooO00o();
        f10VarOooOO0O.OooO0O0();
    }

    public boolean OooO0oo() {
        return this.OooO0o == 6;
    }

    public e10 OooOO0(kx kxVar) throws IOException {
        if (this.OooO0o == 4) {
            this.OooO0o = 5;
            return new OooO0o(kxVar);
        }
        throw new IllegalStateException("state: " + this.OooO0o);
    }

    public d10 OooOO0O(long j) {
        if (this.OooO0o == 1) {
            this.OooO0o = 2;
            return new OooO(j);
        }
        throw new IllegalStateException("state: " + this.OooO0o);
    }

    public e10 OooOO0o(long j) throws IOException {
        if (this.OooO0o == 4) {
            this.OooO0o = 5;
            return new OooOO0(j);
        }
        throw new IllegalStateException("state: " + this.OooO0o);
    }

    public e10 OooOOO0() throws IOException {
        if (this.OooO0o != 4) {
            throw new IllegalStateException("state: " + this.OooO0o);
        }
        py pyVar = this.OooO0OO;
        if (pyVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.OooO0o = 5;
        pyVar.OooOO0();
        return new OooOO0O();
    }

    public jx OooOOOO() throws IOException {
        jx.OooO00o oooO00o = new jx.OooO00o();
        while (true) {
            String strOooOOO = OooOOO();
            if (strOooOOO.length() == 0) {
                return oooO00o.OooO0oo();
            }
            xx.OooO00o.OooO00o(oooO00o, strOooOOO);
        }
    }

    public void OooOOOo(jx jxVar, String str) throws IOException {
        if (this.OooO0o != 0) {
            throw new IllegalStateException("state: " + this.OooO0o);
        }
        this.OooO0o0.OooOoO0(str).OooOoO0(IOUtils.LINE_SEPARATOR_WINDOWS);
        int iOooOO0o = jxVar.OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            this.OooO0o0.OooOoO0(jxVar.OooO0oO(i)).OooOoO0(": ").OooOoO0(jxVar.OooOOO(i)).OooOoO0(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        this.OooO0o0.OooOoO0(IOUtils.LINE_SEPARATOR_WINDOWS);
        this.OooO0o = 1;
    }

    @Override // z2.sy
    public void cancel() {
        my myVarOooO0Oo = this.OooO0OO.OooO0Oo();
        if (myVarOooO0Oo != null) {
            myVarOooO0Oo.OooO0oO();
        }
    }
}
