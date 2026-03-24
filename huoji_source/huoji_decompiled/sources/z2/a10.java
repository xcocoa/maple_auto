package z2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class a10 implements l00 {
    public final j00 OoooOoO = new j00();
    public final e10 OoooOoo;
    public boolean Ooooo00;

    public class OooO00o extends InputStream {
        public OooO00o() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            a10 a10Var = a10.this;
            if (a10Var.Ooooo00) {
                throw new IOException("closed");
            }
            return (int) Math.min(a10Var.OoooOoO.OoooOoo, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a10.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            a10 a10Var = a10.this;
            if (a10Var.Ooooo00) {
                throw new IOException("closed");
            }
            j00 j00Var = a10Var.OoooOoO;
            if (j00Var.OoooOoo == 0 && a10Var.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return a10.this.OoooOoO.readByte() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (a10.this.Ooooo00) {
                throw new IOException("closed");
            }
            h10.OooO0O0(bArr.length, i, i2);
            a10 a10Var = a10.this;
            j00 j00Var = a10Var.OoooOoO;
            if (j00Var.OoooOoo == 0 && a10Var.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return a10.this.OoooOoO.read(bArr, i, i2);
        }

        public String toString() {
            return a10.this + ".inputStream()";
        }
    }

    public a10(e10 e10Var) {
        Objects.requireNonNull(e10Var, "source == null");
        this.OoooOoo = e10Var;
    }

    @Override // z2.l00
    public j00 OooO00o() {
        return this.OoooOoO;
    }

    @Override // z2.l00
    public String OooO0O0(long j) throws IOException {
        OoooOo0(j);
        return this.OoooOoO.OooO0O0(j);
    }

    @Override // z2.l00
    public long OooO0OO(ByteString byteString, long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jOooO0OO = this.OoooOoO.OooO0OO(byteString, j);
            if (jOooO0OO != -1) {
                return jOooO0OO;
            }
            j00 j00Var = this.OoooOoO;
            long j2 = j00Var.OoooOoo;
            if (this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, (j2 - ((long) byteString.size())) + 1);
        }
    }

    @Override // z2.l00
    public ByteString OooO0Oo(long j) throws IOException {
        OoooOo0(j);
        return this.OoooOoO.OooO0Oo(j);
    }

    @Override // z2.l00
    public byte[] OooOO0O() throws IOException {
        this.OoooOoO.Oooo000(this.OoooOoo);
        return this.OoooOoO.OooOO0O();
    }

    @Override // z2.l00
    public long OooOO0o(ByteString byteString) throws IOException {
        return OooO0OO(byteString, 0L);
    }

    @Override // z2.l00
    public boolean OooOOO() throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        return this.OoooOoO.OooOOO() && this.OoooOoo.read(this.OoooOoO, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // z2.l00
    public long OooOOOo(byte b, long j) throws IOException {
        return OooOOo(b, j, Long.MAX_VALUE);
    }

    @Override // z2.l00
    public long OooOOo(byte b, long j, long j2) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        while (j < j2) {
            long jOooOOo = this.OoooOoO.OooOOo(b, j, j2);
            if (jOooOOo != -1) {
                return jOooOOo;
            }
            j00 j00Var = this.OoooOoO;
            long j3 = j00Var.OoooOoo;
            if (j3 >= j2 || this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j = Math.max(j, j3);
        }
        return -1L;
    }

    @Override // z2.l00
    public void OooOOo0(j00 j00Var, long j) throws IOException {
        try {
            OoooOo0(j);
            this.OoooOoO.OooOOo0(j00Var, j);
        } catch (EOFException e) {
            j00Var.Oooo000(this.OoooOoO);
            throw e;
        }
    }

    @Override // z2.l00
    public long OooOOoo(ByteString byteString) throws IOException {
        return OoooOOO(byteString, 0L);
    }

    @Override // z2.l00
    @Nullable
    public String OooOo00() throws IOException {
        long jOoooo00 = Ooooo00((byte) 10);
        if (jOoooo00 != -1) {
            return this.OoooOoO.o0O0O00(jOoooo00);
        }
        long j = this.OoooOoO.OoooOoo;
        if (j != 0) {
            return OooO0O0(j);
        }
        return null;
    }

    @Override // z2.l00
    public long OooOo0O() throws IOException {
        byte bO00Oo0;
        OoooOo0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            bO00Oo0 = this.OoooOoO.o00Oo0(i);
            if ((bO00Oo0 < 48 || bO00Oo0 > 57) && !(i == 0 && bO00Oo0 == 45)) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(bO00Oo0)));
        }
        return this.OoooOoO.OooOo0O();
    }

    @Override // z2.l00
    public String OooOo0o(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long jOooOOo = OooOOo((byte) 10, 0L, j2);
        if (jOooOOo != -1) {
            return this.OoooOoO.o0O0O00(jOooOOo);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && this.OoooOoO.o00Oo0(j2 - 1) == 13 && request(1 + j2) && this.OoooOoO.o00Oo0(j2) == 10) {
            return this.OoooOoO.o0O0O00(j2);
        }
        j00 j00Var = new j00();
        j00 j00Var2 = this.OoooOoO;
        j00Var2.o0OoOo0(j00Var, 0L, Math.min(32L, j00Var2.o00000O0()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.OoooOoO.o00000O0(), j) + " content=" + j00Var.Oooo00o().hex() + (char) 8230);
    }

    @Override // z2.l00
    public boolean OooOoO(long j, ByteString byteString) throws IOException {
        return Oooo0o(j, byteString, 0, byteString.size());
    }

    @Override // z2.l00
    public String OooOoOO(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.OoooOoO.Oooo000(this.OoooOoo);
        return this.OoooOoO.OooOoOO(charset);
    }

    @Override // z2.l00
    public int OooOoo() throws IOException {
        long j;
        OoooOo0(1L);
        byte bO00Oo0 = this.OoooOoO.o00Oo0(0L);
        if ((bO00Oo0 & 224) == 192) {
            j = 2;
        } else {
            if ((bO00Oo0 & 240) != 224) {
                if ((bO00Oo0 & 248) == 240) {
                    j = 4;
                }
                return this.OoooOoO.OooOoo();
            }
            j = 3;
        }
        OoooOo0(j);
        return this.OoooOoO.OooOoo();
    }

    @Override // z2.l00
    public ByteString Oooo00o() throws IOException {
        this.OoooOoO.Oooo000(this.OoooOoo);
        return this.OoooOoO.Oooo00o();
    }

    @Override // z2.l00
    public String Oooo0OO() throws IOException {
        return OooOo0o(Long.MAX_VALUE);
    }

    @Override // z2.l00
    public boolean Oooo0o(long j, ByteString byteString, int i, int i2) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = ((long) i3) + j;
            if (!request(1 + j2) || this.OoooOoO.o00Oo0(j2) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // z2.l00
    public int Oooo0o0() throws IOException {
        OoooOo0(4L);
        return this.OoooOoO.Oooo0o0();
    }

    @Override // z2.l00
    public byte[] Oooo0oO(long j) throws IOException {
        OoooOo0(j);
        return this.OoooOoO.Oooo0oO(j);
    }

    @Override // z2.l00
    public String Oooo0oo() throws IOException {
        this.OoooOoO.Oooo000(this.OoooOoo);
        return this.OoooOoO.Oooo0oo();
    }

    @Override // z2.l00
    public long OoooO() throws IOException {
        OoooOo0(8L);
        return this.OoooOoO.OoooO();
    }

    @Override // z2.l00
    public String OoooO00(long j, Charset charset) throws IOException {
        OoooOo0(j);
        if (charset != null) {
            return this.OoooOoO.OoooO00(j, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // z2.l00
    public short OoooO0O() throws IOException {
        OoooOo0(2L);
        return this.OoooOoO.OoooO0O();
    }

    @Override // z2.l00
    public long OoooOO0(d10 d10Var) throws IOException {
        j00 j00Var;
        if (d10Var == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j = 0;
        while (true) {
            long j2 = this.OoooOoo.read(this.OoooOoO, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            j00Var = this.OoooOoO;
            if (j2 == -1) {
                break;
            }
            long jOooooo = j00Var.Oooooo();
            if (jOooooo > 0) {
                j += jOooooo;
                d10Var.OooOooO(this.OoooOoO, jOooooo);
            }
        }
        if (j00Var.o00000O0() <= 0) {
            return j;
        }
        long jO00000O0 = j + this.OoooOoO.o00000O0();
        j00 j00Var2 = this.OoooOoO;
        d10Var.OooOooO(j00Var2, j00Var2.o00000O0());
        return jO00000O0;
    }

    @Override // z2.l00
    public long OoooOOO(ByteString byteString, long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jOoooOOO = this.OoooOoO.OoooOOO(byteString, j);
            if (jOoooOOO != -1) {
                return jOoooOOO;
            }
            j00 j00Var = this.OoooOoO;
            long j2 = j00Var.OoooOoo;
            if (this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // z2.l00
    public void OoooOo0(long j) throws IOException {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // z2.l00
    public long Ooooo00(byte b) throws IOException {
        return OooOOo(b, 0L, Long.MAX_VALUE);
    }

    @Override // z2.l00
    public long Ooooo0o() throws IOException {
        byte bO00Oo0;
        OoooOo0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            bO00Oo0 = this.OoooOoO.o00Oo0(i);
            if ((bO00Oo0 < 48 || bO00Oo0 > 57) && ((bO00Oo0 < 97 || bO00Oo0 > 102) && (bO00Oo0 < 65 || bO00Oo0 > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bO00Oo0)));
        }
        return this.OoooOoO.Ooooo0o();
    }

    @Override // z2.l00
    public InputStream OooooO0() {
        return new OooO00o();
    }

    @Override // z2.l00
    public int OooooOO(x00 x00Var) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        do {
            int iO000000 = this.OoooOoO.o000000(x00Var, true);
            if (iO000000 == -1) {
                return -1;
            }
            if (iO000000 != -2) {
                this.OoooOoO.skip(x00Var.OoooOoO[iO000000].size());
                return iO000000;
            }
        } while (this.OoooOoo.read(this.OoooOoO, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.Ooooo00) {
            return;
        }
        this.Ooooo00 = true;
        this.OoooOoo.close();
        this.OoooOoO.OooooOo();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.Ooooo00;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        j00 j00Var = this.OoooOoO;
        if (j00Var.OoooOoo == 0 && this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.OoooOoO.read(byteBuffer);
    }

    @Override // z2.l00
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // z2.l00
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j = i2;
        h10.OooO0O0(bArr.length, i, j);
        j00 j00Var = this.OoooOoO;
        if (j00Var.OoooOoo == 0 && this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.OoooOoO.read(bArr, i, (int) Math.min(j, this.OoooOoO.OoooOoo));
    }

    @Override // z2.e10
    public long read(j00 j00Var, long j) throws IOException {
        if (j00Var == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        j00 j00Var2 = this.OoooOoO;
        if (j00Var2.OoooOoo == 0 && this.OoooOoo.read(j00Var2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.OoooOoO.read(j00Var, Math.min(j, this.OoooOoO.OoooOoo));
    }

    @Override // z2.l00
    public byte readByte() throws IOException {
        OoooOo0(1L);
        return this.OoooOoO.readByte();
    }

    @Override // z2.l00
    public void readFully(byte[] bArr) throws IOException {
        try {
            OoooOo0(bArr.length);
            this.OoooOoO.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                j00 j00Var = this.OoooOoO;
                long j = j00Var.OoooOoo;
                if (j <= 0) {
                    throw e;
                }
                int i2 = j00Var.read(bArr, i, (int) j);
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
        }
    }

    @Override // z2.l00
    public int readInt() throws IOException {
        OoooOo0(4L);
        return this.OoooOoO.readInt();
    }

    @Override // z2.l00
    public long readLong() throws IOException {
        OoooOo0(8L);
        return this.OoooOoO.readLong();
    }

    @Override // z2.l00
    public short readShort() throws IOException {
        OoooOo0(2L);
        return this.OoooOoO.readShort();
    }

    @Override // z2.l00
    public boolean request(long j) throws IOException {
        j00 j00Var;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        do {
            j00Var = this.OoooOoO;
            if (j00Var.OoooOoo >= j) {
                return true;
            }
        } while (this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return false;
    }

    @Override // z2.l00
    public void skip(long j) throws IOException {
        if (this.Ooooo00) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            j00 j00Var = this.OoooOoO;
            if (j00Var.OoooOoo == 0 && this.OoooOoo.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.OoooOoO.o00000O0());
            this.OoooOoO.skip(jMin);
            j -= jMin;
        }
    }

    @Override // z2.e10
    public f10 timeout() {
        return this.OoooOoo.timeout();
    }

    public String toString() {
        return "buffer(" + this.OoooOoo + ")";
    }
}
