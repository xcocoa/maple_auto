package z2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class z00 implements k00 {
    public final j00 OoooOoO = new j00();
    public final d10 OoooOoo;
    public boolean Ooooo00;

    public class OooO00o extends OutputStream {
        public OooO00o() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws Throwable {
            z00.this.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            z00 z00Var = z00.this;
            if (z00Var.Ooooo00) {
                return;
            }
            z00Var.flush();
        }

        public String toString() {
            return z00.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            z00 z00Var = z00.this;
            if (z00Var.Ooooo00) {
                throw new IOException("closed");
            }
            z00Var.OoooOoO.OooOOOO((byte) i);
            z00.this.OooOo0();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            z00 z00Var = z00.this;
            if (z00Var.Ooooo00) {
                throw new IOException("closed");
            }
            z00Var.OoooOoO.OooOoo0(bArr, i, i2);
            z00.this.OooOo0();
        }
    }

    public z00(d10 d10Var) {
        Objects.requireNonNull(d10Var, "sink == null");
        this.OoooOoo = d10Var;
    }

    @Override // z2.k00
    public k00 OooO(long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooO(j);
        return OooOo0();
    }

    @Override // z2.k00
    public j00 OooO00o() {
        return this.OoooOoO;
    }

    @Override // z2.k00
    public k00 OooO0o(int i) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooO0o(i);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooO0o0() throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        long jO00000O0 = this.OoooOoO.o00000O0();
        if (jO00000O0 > 0) {
            this.OoooOoo.OooOooO(this.OoooOoO, jO00000O0);
        }
        return this;
    }

    @Override // z2.k00
    public k00 OooO0oO(int i) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooO0oO(i);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooO0oo(int i) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooO0oo(i);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooOOO0(int i) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOOO0(i);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooOOOO(int i) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOOOO(i);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooOo(int i) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOo(i);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooOo0() throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        long jOooooo = this.OoooOoO.Oooooo();
        if (jOooooo > 0) {
            this.OoooOoo.OooOooO(this.OoooOoO, jOooooo);
        }
        return this;
    }

    @Override // z2.k00
    public k00 OooOoO0(String str) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOoO0(str);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OooOoo0(byte[] bArr, int i, int i2) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOoo0(bArr, i, i2);
        return OooOo0();
    }

    @Override // z2.d10
    public void OooOooO(j00 j00Var, long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOooO(j00Var, j);
        OooOo0();
    }

    @Override // z2.k00
    public k00 OooOooo(String str, int i, int i2) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OooOooo(str, i, i2);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 Oooo(byte[] bArr) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.Oooo(bArr);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 Oooo0(String str, Charset charset) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.Oooo0(str, charset);
        return OooOo0();
    }

    @Override // z2.k00
    public long Oooo000(e10 e10Var) throws IOException {
        if (e10Var == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long j2 = e10Var.read(this.OoooOoO, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            OooOo0();
        }
    }

    @Override // z2.k00
    public k00 Oooo00O(long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.Oooo00O(j);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 Oooo0O0(e10 e10Var, long j) throws IOException {
        while (j > 0) {
            long j2 = e10Var.read(this.OoooOoO, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
            OooOo0();
        }
        return this;
    }

    @Override // z2.k00
    public k00 OoooO0(ByteString byteString) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OoooO0(byteString);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OoooOOo(long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OoooOOo(j);
        return OooOo0();
    }

    @Override // z2.k00
    public k00 OoooOoO(long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.OoooOoO(j);
        return OooOo0();
    }

    @Override // z2.k00
    public OutputStream OoooOoo() {
        return new OooO00o();
    }

    @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.Ooooo00) {
            return;
        }
        Throwable th = null;
        try {
            j00 j00Var = this.OoooOoO;
            long j = j00Var.OoooOoo;
            if (j > 0) {
                this.OoooOoo.OooOooO(j00Var, j);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.OoooOoo.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.Ooooo00 = true;
        if (th != null) {
            h10.OooO0o(th);
        }
    }

    @Override // z2.k00, z2.d10, java.io.Flushable
    public void flush() throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        j00 j00Var = this.OoooOoO;
        long j = j00Var.OoooOoo;
        if (j > 0) {
            this.OoooOoo.OooOooO(j00Var, j);
        }
        this.OoooOoo.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.Ooooo00;
    }

    @Override // z2.k00
    public k00 o000oOoO(String str, int i, int i2, Charset charset) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        this.OoooOoO.o000oOoO(str, i, i2, charset);
        return OooOo0();
    }

    @Override // z2.d10
    public f10 timeout() {
        return this.OoooOoo.timeout();
    }

    public String toString() {
        return "buffer(" + this.OoooOoo + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.OoooOoO.write(byteBuffer);
        OooOo0();
        return iWrite;
    }
}
