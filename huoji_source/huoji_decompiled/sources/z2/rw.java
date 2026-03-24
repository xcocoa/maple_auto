package z2;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import okhttp3.Protocol;
import okhttp3.TlsVersion;
import okio.ByteString;
import z2.fy;
import z2.jx;
import z2.qx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class rw implements Closeable, Flushable {
    private static final int Oooooo = 0;
    private static final int Oooooo0 = 201105;
    private static final int OoooooO = 1;
    private static final int Ooooooo = 2;
    public final hy OoooOoO;
    public final fy OoooOoo;
    public int Ooooo00;
    public int Ooooo0o;
    private int OooooO0;
    private int OooooOO;
    private int OooooOo;

    public static final class OooO {
        private static final String OooOO0O = uz.OooOO0O().OooOO0o() + "-Sent-Millis";
        private static final String OooOO0o = uz.OooOO0O().OooOO0o() + "-Received-Millis";
        private final long OooO;
        private final String OooO00o;
        private final jx OooO0O0;
        private final String OooO0OO;
        private final Protocol OooO0Oo;
        private final String OooO0o;
        private final int OooO0o0;
        private final jx OooO0oO;

        @Nullable
        private final ix OooO0oo;
        private final long OooOO0;

        public OooO(e10 e10Var) throws IOException {
            try {
                l00 l00VarOooO0Oo = w00.OooO0Oo(e10Var);
                this.OooO00o = l00VarOooO0Oo.Oooo0OO();
                this.OooO0OO = l00VarOooO0Oo.Oooo0OO();
                jx.OooO00o oooO00o = new jx.OooO00o();
                int iO00ooo = rw.o00ooo(l00VarOooO0Oo);
                for (int i = 0; i < iO00ooo; i++) {
                    oooO00o.OooO0o0(l00VarOooO0Oo.Oooo0OO());
                }
                this.OooO0O0 = oooO00o.OooO0oo();
                az azVarOooO0O0 = az.OooO0O0(l00VarOooO0Oo.Oooo0OO());
                this.OooO0Oo = azVarOooO0O0.OooO00o;
                this.OooO0o0 = azVarOooO0O0.OooO0O0;
                this.OooO0o = azVarOooO0O0.OooO0OO;
                jx.OooO00o oooO00o2 = new jx.OooO00o();
                int iO00ooo2 = rw.o00ooo(l00VarOooO0Oo);
                for (int i2 = 0; i2 < iO00ooo2; i2++) {
                    oooO00o2.OooO0o0(l00VarOooO0Oo.Oooo0OO());
                }
                String str = OooOO0O;
                String strOooO = oooO00o2.OooO(str);
                String str2 = OooOO0o;
                String strOooO2 = oooO00o2.OooO(str2);
                oooO00o2.OooOO0(str);
                oooO00o2.OooOO0(str2);
                this.OooO = strOooO != null ? Long.parseLong(strOooO) : 0L;
                this.OooOO0 = strOooO2 != null ? Long.parseLong(strOooO2) : 0L;
                this.OooO0oO = oooO00o2.OooO0oo();
                if (OooO00o()) {
                    String strOooo0OO = l00VarOooO0Oo.Oooo0OO();
                    if (strOooo0OO.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + strOooo0OO + "\"");
                    }
                    this.OooO0oo = ix.OooO0OO(!l00VarOooO0Oo.OooOOO() ? TlsVersion.forJavaName(l00VarOooO0Oo.Oooo0OO()) : TlsVersion.SSL_3_0, xw.OooO00o(l00VarOooO0Oo.Oooo0OO()), OooO0OO(l00VarOooO0Oo), OooO0OO(l00VarOooO0Oo));
                } else {
                    this.OooO0oo = null;
                }
            } finally {
                e10Var.close();
            }
        }

        public OooO(sx sxVar) {
            this.OooO00o = sxVar.o0OOO0o().OooOO0O().toString();
            this.OooO0O0 = uy.OooOo0(sxVar);
            this.OooO0OO = sxVar.o0OOO0o().OooO0oO();
            this.OooO0Oo = sxVar.o0ooOOo();
            this.OooO0o0 = sxVar.OoooooO();
            this.OooO0o = sxVar.o00ooo();
            this.OooO0oO = sxVar.o00Oo0();
            this.OooO0oo = sxVar.Ooooooo();
            this.OooO = sxVar.o0Oo0oo();
            this.OooOO0 = sxVar.o0ooOoO();
        }

        private boolean OooO00o() {
            return this.OooO00o.startsWith("https://");
        }

        private List<Certificate> OooO0OO(l00 l00Var) throws IOException {
            int iO00ooo = rw.o00ooo(l00Var);
            if (iO00ooo == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(iO00ooo);
                for (int i = 0; i < iO00ooo; i++) {
                    String strOooo0OO = l00Var.Oooo0OO();
                    j00 j00Var = new j00();
                    j00Var.OoooO0(ByteString.decodeBase64(strOooo0OO));
                    arrayList.add(certificateFactory.generateCertificate(j00Var.OooooO0()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private void OooO0o0(k00 k00Var, List<Certificate> list) throws IOException {
            try {
                k00Var.OoooOoO(list.size()).OooOOOO(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    k00Var.OooOoO0(ByteString.of(list.get(i).getEncoded()).base64()).OooOOOO(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public boolean OooO0O0(qx qxVar, sx sxVar) {
            return this.OooO00o.equals(qxVar.OooOO0O().toString()) && this.OooO0OO.equals(qxVar.OooO0oO()) && uy.OooOo0O(sxVar, this.OooO0O0, qxVar);
        }

        public sx OooO0Oo(fy.OooOO0 oooOO0) {
            String strOooO0Oo = this.OooO0oO.OooO0Oo("Content-Type");
            String strOooO0Oo2 = this.OooO0oO.OooO0Oo("Content-Length");
            return new sx.OooO00o().OooOOo0(new qx.OooO00o().OooOOo0(this.OooO00o).OooOO0(this.OooO0OO, null).OooO(this.OooO0O0).OooO0O0()).OooOOO(this.OooO0Oo).OooO0oO(this.OooO0o0).OooOO0O(this.OooO0o).OooOO0(this.OooO0oO).OooO0O0(new OooO0o(oooOO0, strOooO0Oo, strOooO0Oo2)).OooO0oo(this.OooO0oo).OooOOo(this.OooO).OooOOOO(this.OooOO0).OooO0OO();
        }

        public void OooO0o(fy.OooO0o oooO0o) throws IOException {
            k00 k00VarOooO0OO = w00.OooO0OO(oooO0o.OooO0o0(0));
            k00VarOooO0OO.OooOoO0(this.OooO00o).OooOOOO(10);
            k00VarOooO0OO.OooOoO0(this.OooO0OO).OooOOOO(10);
            k00VarOooO0OO.OoooOoO(this.OooO0O0.OooOO0o()).OooOOOO(10);
            int iOooOO0o = this.OooO0O0.OooOO0o();
            for (int i = 0; i < iOooOO0o; i++) {
                k00VarOooO0OO.OooOoO0(this.OooO0O0.OooO0oO(i)).OooOoO0(": ").OooOoO0(this.OooO0O0.OooOOO(i)).OooOOOO(10);
            }
            k00VarOooO0OO.OooOoO0(new az(this.OooO0Oo, this.OooO0o0, this.OooO0o).toString()).OooOOOO(10);
            k00VarOooO0OO.OoooOoO(this.OooO0oO.OooOO0o() + 2).OooOOOO(10);
            int iOooOO0o2 = this.OooO0oO.OooOO0o();
            for (int i2 = 0; i2 < iOooOO0o2; i2++) {
                k00VarOooO0OO.OooOoO0(this.OooO0oO.OooO0oO(i2)).OooOoO0(": ").OooOoO0(this.OooO0oO.OooOOO(i2)).OooOOOO(10);
            }
            k00VarOooO0OO.OooOoO0(OooOO0O).OooOoO0(": ").OoooOoO(this.OooO).OooOOOO(10);
            k00VarOooO0OO.OooOoO0(OooOO0o).OooOoO0(": ").OoooOoO(this.OooOO0).OooOOOO(10);
            if (OooO00o()) {
                k00VarOooO0OO.OooOOOO(10);
                k00VarOooO0OO.OooOoO0(this.OooO0oo.OooO00o().OooO0Oo()).OooOOOO(10);
                OooO0o0(k00VarOooO0OO, this.OooO0oo.OooO0o());
                OooO0o0(k00VarOooO0OO, this.OooO0oo.OooO0Oo());
                k00VarOooO0OO.OooOoO0(this.OooO0oo.OooO0oo().javaName()).OooOOOO(10);
            }
            k00VarOooO0OO.close();
        }
    }

    public class OooO00o implements hy {
        public OooO00o() {
        }

        @Override // z2.hy
        public void OooO00o() {
            rw.this.o0ooOO0();
        }

        @Override // z2.hy
        public void OooO0O0(ey eyVar) {
            rw.this.o0ooOOo(eyVar);
        }

        @Override // z2.hy
        public void OooO0OO(qx qxVar) throws IOException {
            rw.this.oo000o(qxVar);
        }

        @Override // z2.hy
        public dy OooO0Oo(sx sxVar) throws IOException {
            return rw.this.o00o0O(sxVar);
        }

        @Override // z2.hy
        public void OooO0o(sx sxVar, sx sxVar2) {
            rw.this.o0ooOoO(sxVar, sxVar2);
        }

        @Override // z2.hy
        public sx OooO0o0(qx qxVar) throws IOException {
            return rw.this.OoooooO(qxVar);
        }
    }

    public class OooO0O0 implements Iterator<String> {
        public final Iterator<fy.OooOO0> OoooOoO;

        @Nullable
        public String OoooOoo;
        public boolean Ooooo00;

        public OooO0O0() throws IOException {
            this.OoooOoO = rw.this.OoooOoo.oo0o0Oo();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.OoooOoo;
            this.OoooOoo = null;
            this.Ooooo00 = true;
            return str;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.OoooOoo != null) {
                return true;
            }
            this.Ooooo00 = false;
            while (this.OoooOoO.hasNext()) {
                fy.OooOO0 next = this.OoooOoO.next();
                try {
                    this.OoooOoo = w00.OooO0Oo(next.Oooooo(0)).Oooo0OO();
                    return true;
                } catch (IOException unused) {
                } finally {
                    next.close();
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.Ooooo00) {
                throw new IllegalStateException("remove() before next()");
            }
            this.OoooOoO.remove();
        }
    }

    public final class OooO0OO implements dy {
        private final fy.OooO0o OooO00o;
        private d10 OooO0O0;
        private d10 OooO0OO;
        public boolean OooO0Oo;

        public class OooO00o extends n00 {
            public final /* synthetic */ rw OoooOoo;
            public final /* synthetic */ fy.OooO0o Ooooo00;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OooO00o(d10 d10Var, rw rwVar, fy.OooO0o oooO0o) {
                super(d10Var);
                this.OoooOoo = rwVar;
                this.Ooooo00 = oooO0o;
            }

            @Override // z2.n00, z2.d10, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                synchronized (rw.this) {
                    OooO0OO oooO0OO = OooO0OO.this;
                    if (oooO0OO.OooO0Oo) {
                        return;
                    }
                    oooO0OO.OooO0Oo = true;
                    rw.this.Ooooo00++;
                    super.close();
                    this.Ooooo00.OooO0OO();
                }
            }
        }

        public OooO0OO(fy.OooO0o oooO0o) {
            this.OooO00o = oooO0o;
            d10 d10VarOooO0o0 = oooO0o.OooO0o0(1);
            this.OooO0O0 = d10VarOooO0o0;
            this.OooO0OO = new OooO00o(d10VarOooO0o0, rw.this, oooO0o);
        }

        @Override // z2.dy
        public d10 OooO00o() {
            return this.OooO0OO;
        }

        @Override // z2.dy
        public void abort() {
            synchronized (rw.this) {
                if (this.OooO0Oo) {
                    return;
                }
                this.OooO0Oo = true;
                rw.this.Ooooo0o++;
                zx.OooO0oO(this.OooO0O0);
                try {
                    this.OooO00o.OooO00o();
                } catch (IOException unused) {
                }
            }
        }
    }

    public static class OooO0o extends tx {
        public final fy.OooOO0 OoooOoO;
        private final l00 OoooOoo;

        @Nullable
        private final String Ooooo00;

        @Nullable
        private final String Ooooo0o;

        public class OooO00o extends p00 {
            public final /* synthetic */ fy.OooOO0 OoooOoO;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OooO00o(e10 e10Var, fy.OooOO0 oooOO0) {
                super(e10Var);
                this.OoooOoO = oooOO0;
            }

            @Override // z2.p00, z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
            public void close() throws IOException {
                this.OoooOoO.close();
                super.close();
            }
        }

        public OooO0o(fy.OooOO0 oooOO0, String str, String str2) {
            this.OoooOoO = oooOO0;
            this.Ooooo00 = str;
            this.Ooooo0o = str2;
            this.OoooOoo = w00.OooO0Oo(new OooO00o(oooOO0.Oooooo(1), oooOO0));
        }

        @Override // z2.tx
        public long contentLength() {
            try {
                String str = this.Ooooo0o;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // z2.tx
        public mx contentType() {
            String str = this.Ooooo00;
            if (str != null) {
                return mx.OooO0Oo(str);
            }
            return null;
        }

        @Override // z2.tx
        public l00 source() {
            return this.OoooOoo;
        }
    }

    public rw(File file, long j) {
        this(file, j, oz.OooO00o);
    }

    public rw(File file, long j, oz ozVar) {
        this.OoooOoO = new OooO00o();
        this.OoooOoo = fy.Oooooo0(ozVar, file, Oooooo0, 2, j);
    }

    private void OooOO0(@Nullable fy.OooO0o oooO0o) {
        if (oooO0o != null) {
            try {
                oooO0o.OooO00o();
            } catch (IOException unused) {
            }
        }
    }

    public static String o00O0O(kx kxVar) {
        return ByteString.encodeUtf8(kxVar.toString()).md5().hex();
    }

    public static int o00ooo(l00 l00Var) throws IOException {
        try {
            long jOooOo0O = l00Var.OooOo0O();
            String strOooo0OO = l00Var.Oooo0OO();
            if (jOooOo0O >= 0 && jOooOo0O <= 2147483647L && strOooo0OO.isEmpty()) {
                return (int) jOooOo0O;
            }
            throw new IOException("expected an int but was \"" + jOooOo0O + strOooo0OO + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }

    public void OooooOo() throws IOException {
        this.OoooOoo.Oooooo();
    }

    public void Oooooo() throws IOException {
        this.OoooOoo.o0OoOo0();
    }

    public File Oooooo0() {
        return this.OoooOoo.o00O0O();
    }

    @Nullable
    public sx OoooooO(qx qxVar) {
        try {
            fy.OooOO0 oooOO0OoOO = this.OoooOoo.ooOO(o00O0O(qxVar.OooOO0O()));
            if (oooOO0OoOO == null) {
                return null;
            }
            try {
                OooO oooO = new OooO(oooOO0OoOO.Oooooo(0));
                sx sxVarOooO0Oo = oooO.OooO0Oo(oooOO0OoOO);
                if (oooO.OooO0O0(qxVar, sxVarOooO0Oo)) {
                    return sxVarOooO0Oo;
                }
                zx.OooO0oO(sxVarOooO0Oo.OooOO0());
                return null;
            } catch (IOException unused) {
                zx.OooO0oO(oooOO0OoOO);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public synchronized int Ooooooo() {
        return this.OooooOO;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoo.close();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.OoooOoo.flush();
    }

    public long o00Oo0() {
        return this.OoooOoo.o00Oo0();
    }

    public synchronized int o00Ooo() {
        return this.OooooO0;
    }

    @Nullable
    public dy o00o0O(sx sxVar) {
        fy.OooO0o oooO0oOoooooO;
        String strOooO0oO = sxVar.o0OOO0o().OooO0oO();
        if (vy.OooO00o(sxVar.o0OOO0o().OooO0oO())) {
            try {
                oo000o(sxVar.o0OOO0o());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!strOooO0oO.equals("GET") || uy.OooO0o0(sxVar)) {
            return null;
        }
        OooO oooO = new OooO(sxVar);
        try {
            oooO0oOoooooO = this.OoooOoo.OoooooO(o00O0O(sxVar.o0OOO0o().OooOO0O()));
            if (oooO0oOoooooO == null) {
                return null;
            }
            try {
                oooO.OooO0o(oooO0oOoooooO);
                return new OooO0OO(oooO0oOoooooO);
            } catch (IOException unused2) {
                OooOO0(oooO0oOoooooO);
                return null;
            }
        } catch (IOException unused3) {
            oooO0oOoooooO = null;
        }
    }

    public long o00oO0O() throws IOException {
        return this.OoooOoo.o0OO00O();
    }

    public synchronized int o00oO0o() {
        return this.OooooOo;
    }

    public synchronized int o0OO00O() {
        return this.Ooooo00;
    }

    public Iterator<String> o0OOO0o() throws IOException {
        return new OooO0O0();
    }

    public synchronized int o0Oo0oo() {
        return this.Ooooo0o;
    }

    public void o0OoOo0() throws IOException {
        this.OoooOoo.o00Ooo();
    }

    public synchronized void o0ooOO0() {
        this.OooooOO++;
    }

    public synchronized void o0ooOOo(ey eyVar) {
        this.OooooOo++;
        if (eyVar.OooO00o != null) {
            this.OooooO0++;
        } else if (eyVar.OooO0O0 != null) {
            this.OooooOO++;
        }
    }

    public void o0ooOoO(sx sxVar, sx sxVar2) {
        fy.OooO0o oooO0oOooooOo;
        OooO oooO = new OooO(sxVar2);
        try {
            oooO0oOooooOo = ((OooO0o) sxVar.OooOO0()).OoooOoO.OooooOo();
            if (oooO0oOooooOo != null) {
                try {
                    oooO.OooO0o(oooO0oOooooOo);
                    oooO0oOooooOo.OooO0OO();
                } catch (IOException unused) {
                    OooOO0(oooO0oOooooOo);
                }
            }
        } catch (IOException unused2) {
            oooO0oOooooOo = null;
        }
    }

    public void oo000o(qx qxVar) throws IOException {
        this.OoooOoo.o0ooOoO(o00O0O(qxVar.OooOO0O()));
    }

    public boolean ooOO() {
        return this.OoooOoo.o00o0O();
    }
}
