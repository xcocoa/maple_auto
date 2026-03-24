package z2;

import android.support.v4.media.session.PlaybackStateCompat;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.UIDFolder;
import okio.ByteString;
import okio.SegmentedByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class j00 implements l00, k00, Cloneable, ByteChannel {
    private static final byte[] Ooooo00 = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    public static final int Ooooo0o = 65533;

    @Nullable
    public b10 OoooOoO;
    public long OoooOoo;

    public class OooO00o extends OutputStream {
        public OooO00o() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return j00.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            j00.this.OooOOOO((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            j00.this.OooOoo0(bArr, i, i2);
        }
    }

    public class OooO0O0 extends InputStream {
        public OooO0O0() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(j00.this.OoooOoo, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            j00 j00Var = j00.this;
            if (j00Var.OoooOoo > 0) {
                return j00Var.readByte() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            return j00.this.read(bArr, i, i2);
        }

        public String toString() {
            return j00.this + ".inputStream()";
        }
    }

    public static final class OooO0OO implements Closeable {
        public j00 OoooOoO;
        public boolean OoooOoo;
        private b10 Ooooo00;
        public byte[] OooooO0;
        public long Ooooo0o = -1;
        public int OooooOO = -1;
        public int OooooOo = -1;

        public final long OooOO0(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: " + i);
            }
            if (i > 8192) {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i);
            }
            j00 j00Var = this.OoooOoO;
            if (j00Var == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.OoooOoo) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long j = j00Var.OoooOoo;
            b10 b10VarO00000Oo = j00Var.o00000Oo(i);
            int i2 = 8192 - b10VarO00000Oo.OooO0OO;
            b10VarO00000Oo.OooO0OO = 8192;
            long j2 = i2;
            this.OoooOoO.OoooOoo = j + j2;
            this.Ooooo00 = b10VarO00000Oo;
            this.Ooooo0o = j;
            this.OooooO0 = b10VarO00000Oo.OooO00o;
            this.OooooOO = 8192 - i2;
            this.OooooOo = 8192;
            return j2;
        }

        public final int OooooOo() {
            long j = this.Ooooo0o;
            if (j != this.OoooOoO.OoooOoo) {
                return Oooooo(j == -1 ? 0L : j + ((long) (this.OooooOo - this.OooooOO)));
            }
            throw new IllegalStateException();
        }

        public final int Oooooo(long j) {
            if (j >= -1) {
                j00 j00Var = this.OoooOoO;
                long j2 = j00Var.OoooOoo;
                if (j <= j2) {
                    if (j == -1 || j == j2) {
                        this.Ooooo00 = null;
                        this.Ooooo0o = j;
                        this.OooooO0 = null;
                        this.OooooOO = -1;
                        this.OooooOo = -1;
                        return -1;
                    }
                    long j3 = 0;
                    b10 b10Var = j00Var.OoooOoO;
                    b10 b10VarOooO0OO = this.Ooooo00;
                    if (b10VarOooO0OO != null) {
                        long j4 = this.Ooooo0o - ((long) (this.OooooOO - b10VarOooO0OO.OooO0O0));
                        if (j4 > j) {
                            j2 = j4;
                            b10VarOooO0OO = b10Var;
                            b10Var = b10VarOooO0OO;
                        } else {
                            j3 = j4;
                        }
                    } else {
                        b10VarOooO0OO = b10Var;
                    }
                    if (j2 - j > j - j3) {
                        while (true) {
                            int i = b10VarOooO0OO.OooO0OO;
                            int i2 = b10VarOooO0OO.OooO0O0;
                            if (j < ((long) (i - i2)) + j3) {
                                break;
                            }
                            j3 += (long) (i - i2);
                            b10VarOooO0OO = b10VarOooO0OO.OooO0o;
                        }
                    } else {
                        while (j2 > j) {
                            b10Var = b10Var.OooO0oO;
                            j2 -= (long) (b10Var.OooO0OO - b10Var.OooO0O0);
                        }
                        b10VarOooO0OO = b10Var;
                        j3 = j2;
                    }
                    if (this.OoooOoo && b10VarOooO0OO.OooO0Oo) {
                        b10 b10VarOooO0o = b10VarOooO0OO.OooO0o();
                        j00 j00Var2 = this.OoooOoO;
                        if (j00Var2.OoooOoO == b10VarOooO0OO) {
                            j00Var2.OoooOoO = b10VarOooO0o;
                        }
                        b10VarOooO0OO = b10VarOooO0OO.OooO0OO(b10VarOooO0o);
                        b10VarOooO0OO.OooO0oO.OooO0O0();
                    }
                    this.Ooooo00 = b10VarOooO0OO;
                    this.Ooooo0o = j;
                    this.OooooO0 = b10VarOooO0OO.OooO00o;
                    int i3 = b10VarOooO0OO.OooO0O0 + ((int) (j - j3));
                    this.OooooOO = i3;
                    int i4 = b10VarOooO0OO.OooO0OO;
                    this.OooooOo = i4;
                    return i4 - i3;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j), Long.valueOf(this.OoooOoO.OoooOoo)));
        }

        public final long Oooooo0(long j) {
            j00 j00Var = this.OoooOoO;
            if (j00Var == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.OoooOoo) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long j2 = j00Var.OoooOoo;
            if (j <= j2) {
                if (j < 0) {
                    throw new IllegalArgumentException("newSize < 0: " + j);
                }
                long j3 = j2 - j;
                while (true) {
                    if (j3 <= 0) {
                        break;
                    }
                    j00 j00Var2 = this.OoooOoO;
                    b10 b10Var = j00Var2.OoooOoO.OooO0oO;
                    int i = b10Var.OooO0OO;
                    long j4 = i - b10Var.OooO0O0;
                    if (j4 > j3) {
                        b10Var.OooO0OO = (int) (((long) i) - j3);
                        break;
                    }
                    j00Var2.OoooOoO = b10Var.OooO0O0();
                    c10.OooO00o(b10Var);
                    j3 -= j4;
                }
                this.Ooooo00 = null;
                this.Ooooo0o = j;
                this.OooooO0 = null;
                this.OooooOO = -1;
                this.OooooOo = -1;
            } else if (j > j2) {
                long j5 = j - j2;
                boolean z = true;
                while (j5 > 0) {
                    b10 b10VarO00000Oo = this.OoooOoO.o00000Oo(1);
                    int iMin = (int) Math.min(j5, 8192 - b10VarO00000Oo.OooO0OO);
                    int i2 = b10VarO00000Oo.OooO0OO + iMin;
                    b10VarO00000Oo.OooO0OO = i2;
                    j5 -= (long) iMin;
                    if (z) {
                        this.Ooooo00 = b10VarO00000Oo;
                        this.Ooooo0o = j2;
                        this.OooooO0 = b10VarO00000Oo.OooO00o;
                        this.OooooOO = i2 - iMin;
                        this.OooooOo = i2;
                        z = false;
                    }
                }
            }
            this.OoooOoO.OoooOoo = j;
            return j2;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.OoooOoO == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.OoooOoO = null;
            this.Ooooo00 = null;
            this.Ooooo0o = -1L;
            this.OooooO0 = null;
            this.OooooOO = -1;
            this.OooooOo = -1;
        }
    }

    private ByteString o00Ooo(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            b10 b10Var = this.OoooOoO;
            if (b10Var != null) {
                byte[] bArr = b10Var.OooO00o;
                int i = b10Var.OooO0O0;
                mac.update(bArr, i, b10Var.OooO0OO - i);
                b10 b10Var2 = this.OoooOoO;
                while (true) {
                    b10Var2 = b10Var2.OooO0o;
                    if (b10Var2 == this.OoooOoO) {
                        break;
                    }
                    byte[] bArr2 = b10Var2.OooO00o;
                    int i2 = b10Var2.OooO0O0;
                    mac.update(bArr2, i2, b10Var2.OooO0OO - i2);
                }
            }
            return ByteString.of(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private boolean o00oO0O(b10 b10Var, int i, ByteString byteString, int i2, int i3) {
        int i4 = b10Var.OooO0OO;
        byte[] bArr = b10Var.OooO00o;
        while (i2 < i3) {
            if (i == i4) {
                b10Var = b10Var.OooO0o;
                byte[] bArr2 = b10Var.OooO00o;
                bArr = bArr2;
                i = b10Var.OooO0O0;
                i4 = b10Var.OooO0OO;
            }
            if (bArr[i] != byteString.getByte(i2)) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    private void o0Oo0oo(InputStream inputStream, long j, boolean z) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j <= 0 && !z) {
                return;
            }
            b10 b10VarO00000Oo = o00000Oo(1);
            int i = inputStream.read(b10VarO00000Oo.OooO00o, b10VarO00000Oo.OooO0OO, (int) Math.min(j, 8192 - b10VarO00000Oo.OooO0OO));
            if (i == -1) {
                if (!z) {
                    throw new EOFException();
                }
                return;
            } else {
                b10VarO00000Oo.OooO0OO += i;
                long j2 = i;
                this.OoooOoo += j2;
                j -= j2;
            }
        }
    }

    private ByteString ooOO(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            b10 b10Var = this.OoooOoO;
            if (b10Var != null) {
                byte[] bArr = b10Var.OooO00o;
                int i = b10Var.OooO0O0;
                messageDigest.update(bArr, i, b10Var.OooO0OO - i);
                b10 b10Var2 = this.OoooOoO;
                while (true) {
                    b10Var2 = b10Var2.OooO0o;
                    if (b10Var2 == this.OoooOoO) {
                        break;
                    }
                    byte[] bArr2 = b10Var2.OooO00o;
                    int i2 = b10Var2.OooO0O0;
                    messageDigest.update(bArr2, i2, b10Var2.OooO0OO - i2);
                }
            }
            return ByteString.of(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    @Override // z2.l00
    public j00 OooO00o() {
        return this;
    }

    @Override // z2.l00
    public String OooO0O0(long j) throws EOFException {
        return OoooO00(j, h10.OooO00o);
    }

    @Override // z2.l00
    public long OooO0OO(ByteString byteString, long j) throws IOException {
        byte[] bArr;
        if (byteString.size() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        b10 b10Var = this.OoooOoO;
        long j3 = -1;
        if (b10Var == null) {
            return -1L;
        }
        long j4 = this.OoooOoo;
        if (j4 - j < j) {
            while (j4 > j) {
                b10Var = b10Var.OooO0oO;
                j4 -= (long) (b10Var.OooO0OO - b10Var.OooO0O0);
            }
        } else {
            while (true) {
                long j5 = ((long) (b10Var.OooO0OO - b10Var.OooO0O0)) + j2;
                if (j5 >= j) {
                    break;
                }
                b10Var = b10Var.OooO0o;
                j2 = j5;
            }
            j4 = j2;
        }
        byte b = byteString.getByte(0);
        int size = byteString.size();
        long j6 = 1 + (this.OoooOoo - ((long) size));
        long j7 = j;
        b10 b10Var2 = b10Var;
        long j8 = j4;
        while (j8 < j6) {
            byte[] bArr2 = b10Var2.OooO00o;
            int iMin = (int) Math.min(b10Var2.OooO0OO, (((long) b10Var2.OooO0O0) + j6) - j8);
            int i = (int) ((((long) b10Var2.OooO0O0) + j7) - j8);
            while (i < iMin) {
                if (bArr2[i] == b) {
                    bArr = bArr2;
                    if (o00oO0O(b10Var2, i + 1, byteString, 1, size)) {
                        return ((long) (i - b10Var2.OooO0O0)) + j8;
                    }
                } else {
                    bArr = bArr2;
                }
                i++;
                bArr2 = bArr;
            }
            j8 += (long) (b10Var2.OooO0OO - b10Var2.OooO0O0);
            b10Var2 = b10Var2.OooO0o;
            j7 = j8;
            j3 = -1;
        }
        return j3;
    }

    @Override // z2.l00
    public ByteString OooO0Oo(long j) throws EOFException {
        return new ByteString(Oooo0oO(j));
    }

    @Override // z2.k00
    public k00 OooO0o0() {
        return this;
    }

    @Override // z2.l00
    public byte[] OooOO0O() {
        try {
            return Oooo0oO(this.OoooOoo);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // z2.l00
    public long OooOO0o(ByteString byteString) throws IOException {
        return OooO0OO(byteString, 0L);
    }

    @Override // z2.l00
    public boolean OooOOO() {
        return this.OoooOoo == 0;
    }

    @Override // z2.l00
    public long OooOOOo(byte b, long j) {
        return OooOOo(b, j, Long.MAX_VALUE);
    }

    @Override // z2.l00
    public long OooOOo(byte b, long j, long j2) {
        b10 b10Var;
        long j3 = 0;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.OoooOoo), Long.valueOf(j), Long.valueOf(j2)));
        }
        long j4 = this.OoooOoo;
        long j5 = j2 > j4 ? j4 : j2;
        if (j == j5 || (b10Var = this.OoooOoO) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                b10Var = b10Var.OooO0oO;
                j4 -= (long) (b10Var.OooO0OO - b10Var.OooO0O0);
            }
        } else {
            while (true) {
                long j6 = ((long) (b10Var.OooO0OO - b10Var.OooO0O0)) + j3;
                if (j6 >= j) {
                    break;
                }
                b10Var = b10Var.OooO0o;
                j3 = j6;
            }
            j4 = j3;
        }
        long j7 = j;
        while (j4 < j5) {
            byte[] bArr = b10Var.OooO00o;
            int iMin = (int) Math.min(b10Var.OooO0OO, (((long) b10Var.OooO0O0) + j5) - j4);
            for (int i = (int) ((((long) b10Var.OooO0O0) + j7) - j4); i < iMin; i++) {
                if (bArr[i] == b) {
                    return ((long) (i - b10Var.OooO0O0)) + j4;
                }
            }
            j4 += (long) (b10Var.OooO0OO - b10Var.OooO0O0);
            b10Var = b10Var.OooO0o;
            j7 = j4;
        }
        return -1L;
    }

    @Override // z2.l00
    public void OooOOo0(j00 j00Var, long j) throws EOFException {
        long j2 = this.OoooOoo;
        if (j2 >= j) {
            j00Var.OooOooO(this, j);
        } else {
            j00Var.OooOooO(this, j2);
            throw new EOFException();
        }
    }

    @Override // z2.l00
    public long OooOOoo(ByteString byteString) {
        return OoooOOO(byteString, 0L);
    }

    @Override // z2.l00
    @Nullable
    public String OooOo00() throws EOFException {
        long jOoooo00 = Ooooo00((byte) 10);
        if (jOoooo00 != -1) {
            return o0O0O00(jOoooo00);
        }
        long j = this.OoooOoo;
        if (j != 0) {
            return OooO0O0(j);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        r1 = new z2.j00().o0000(r3).o00000oo(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
    
        if (r8 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
    
        r1.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
    
        throw new java.lang.NumberFormatException("Number too large: " + r1.Oooo0oo());
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9  */
    @Override // z2.l00
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long OooOo0O() {
        long j = 0;
        if (this.OoooOoo == 0) {
            throw new IllegalStateException("size == 0");
        }
        long j2 = -922337203685477580L;
        long j3 = -7;
        int i = 0;
        boolean z = false;
        boolean z3 = false;
        loop0: while (true) {
            b10 b10Var = this.OoooOoO;
            byte[] bArr = b10Var.OooO00o;
            int i2 = b10Var.OooO0O0;
            int i3 = b10Var.OooO0OO;
            while (i2 < i3) {
                byte b = bArr[i2];
                if (b >= 48 && b <= 57) {
                    int i4 = 48 - b;
                    if (j < j2 || (j == j2 && i4 < j3)) {
                        break loop0;
                    }
                    j = (j * 10) + ((long) i4);
                } else if (b == 45 && i == 0) {
                    j3--;
                    z = true;
                } else {
                    if (i == 0) {
                        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(b));
                    }
                    z3 = true;
                    if (i2 != i3) {
                        this.OoooOoO = b10Var.OooO0O0();
                        c10.OooO00o(b10Var);
                    } else {
                        b10Var.OooO0O0 = i2;
                    }
                    if (!!z3 || this.OoooOoO == null) {
                        break;
                    }
                    j2 = -922337203685477580L;
                }
                i2++;
                i++;
                j2 = -922337203685477580L;
            }
            if (i2 != i3) {
            }
            if (!z3) {
                break;
            }
            break;
            break;
        }
        this.OoooOoo -= (long) i;
        return z ? j : -j;
    }

    @Override // z2.l00
    public String OooOo0o(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long jOooOOo = OooOOo((byte) 10, 0L, j2);
        if (jOooOOo != -1) {
            return o0O0O00(jOooOOo);
        }
        if (j2 < o00000O0() && o00Oo0(j2 - 1) == 13 && o00Oo0(j2) == 10) {
            return o0O0O00(j2);
        }
        j00 j00Var = new j00();
        o0OoOo0(j00Var, 0L, Math.min(32L, o00000O0()));
        throw new EOFException("\\n not found: limit=" + Math.min(o00000O0(), j) + " content=" + j00Var.Oooo00o().hex() + (char) 8230);
    }

    @Override // z2.l00
    public boolean OooOoO(long j, ByteString byteString) {
        return Oooo0o(j, byteString, 0, byteString.size());
    }

    @Override // z2.l00
    public String OooOoOO(Charset charset) {
        try {
            return OoooO00(this.OoooOoo, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // z2.l00
    public int OooOoo() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.OoooOoo == 0) {
            throw new EOFException();
        }
        byte bO00Oo0 = o00Oo0(0L);
        if ((bO00Oo0 & 128) == 0) {
            i = bO00Oo0 & 127;
            i2 = 1;
            i3 = 0;
        } else if ((bO00Oo0 & 224) == 192) {
            i = bO00Oo0 & 31;
            i2 = 2;
            i3 = 128;
        } else if ((bO00Oo0 & 240) == 224) {
            i = bO00Oo0 & com.umeng.commonsdk.proguard.bg.m;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((bO00Oo0 & 248) != 240) {
                skip(1L);
                return Ooooo0o;
            }
            i = bO00Oo0 & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (this.OoooOoo < j) {
            throw new EOFException("size < " + i2 + ": " + this.OoooOoo + " (to read code point prefixed 0x" + Integer.toHexString(bO00Oo0) + ")");
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte bO00Oo02 = o00Oo0(j2);
            if ((bO00Oo02 & 192) != 128) {
                skip(j2);
                return Ooooo0o;
            }
            i = (i << 6) | (bO00Oo02 & 63);
        }
        skip(j);
        return i > 1114111 ? Ooooo0o : ((i < 55296 || i > 57343) && i >= i3) ? i : Ooooo0o;
    }

    @Override // z2.d10
    public void OooOooO(j00 j00Var, long j) {
        if (j00Var == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (j00Var == this) {
            throw new IllegalArgumentException("source == this");
        }
        h10.OooO0O0(j00Var.OoooOoo, 0L, j);
        while (j > 0) {
            b10 b10Var = j00Var.OoooOoO;
            if (j < b10Var.OooO0OO - b10Var.OooO0O0) {
                b10 b10Var2 = this.OoooOoO;
                b10 b10Var3 = b10Var2 != null ? b10Var2.OooO0oO : null;
                if (b10Var3 != null && b10Var3.OooO0o0) {
                    if ((((long) b10Var3.OooO0OO) + j) - ((long) (b10Var3.OooO0Oo ? 0 : b10Var3.OooO0O0)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        b10Var.OooO0oO(b10Var3, (int) j);
                        j00Var.OoooOoo -= j;
                        this.OoooOoo += j;
                        return;
                    }
                }
                j00Var.OoooOoO = b10Var.OooO0o0((int) j);
            }
            b10 b10Var4 = j00Var.OoooOoO;
            long j2 = b10Var4.OooO0OO - b10Var4.OooO0O0;
            j00Var.OoooOoO = b10Var4.OooO0O0();
            b10 b10Var5 = this.OoooOoO;
            if (b10Var5 == null) {
                this.OoooOoO = b10Var4;
                b10Var4.OooO0oO = b10Var4;
                b10Var4.OooO0o = b10Var4;
            } else {
                b10Var5.OooO0oO.OooO0OO(b10Var4).OooO00o();
            }
            j00Var.OoooOoo -= j2;
            this.OoooOoo += j2;
            j -= j2;
        }
    }

    @Override // z2.k00
    public long Oooo000(e10 e10Var) throws IOException {
        if (e10Var == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long j2 = e10Var.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    @Override // z2.l00
    public ByteString Oooo00o() {
        return new ByteString(OooOO0O());
    }

    @Override // z2.k00
    public k00 Oooo0O0(e10 e10Var, long j) throws IOException {
        while (j > 0) {
            long j2 = e10Var.read(this, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
        }
        return this;
    }

    @Override // z2.l00
    public String Oooo0OO() throws EOFException {
        return OooOo0o(Long.MAX_VALUE);
    }

    @Override // z2.l00
    public boolean Oooo0o(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.OoooOoo - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (o00Oo0(((long) i3) + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // z2.l00
    public int Oooo0o0() {
        return h10.OooO0OO(readInt());
    }

    @Override // z2.l00
    public byte[] Oooo0oO(long j) throws EOFException {
        h10.OooO0O0(this.OoooOoo, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // z2.l00
    public String Oooo0oo() {
        try {
            return OoooO00(this.OoooOoo, h10.OooO00o);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // z2.l00
    public long OoooO() {
        return h10.OooO0Oo(readLong());
    }

    @Override // z2.l00
    public String OoooO00(long j, Charset charset) throws EOFException {
        h10.OooO0O0(this.OoooOoo, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        b10 b10Var = this.OoooOoO;
        if (((long) b10Var.OooO0O0) + j > b10Var.OooO0OO) {
            return new String(Oooo0oO(j), charset);
        }
        String str = new String(b10Var.OooO00o, b10Var.OooO0O0, (int) j, charset);
        int i = (int) (((long) b10Var.OooO0O0) + j);
        b10Var.OooO0O0 = i;
        this.OoooOoo -= j;
        if (i == b10Var.OooO0OO) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        }
        return str;
    }

    @Override // z2.l00
    public short OoooO0O() {
        return h10.OooO0o0(readShort());
    }

    @Override // z2.l00
    public long OoooOO0(d10 d10Var) throws IOException {
        long j = this.OoooOoo;
        if (j > 0) {
            d10Var.OooOooO(this, j);
        }
        return j;
    }

    @Override // z2.l00
    public long OoooOOO(ByteString byteString, long j) {
        int i;
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        b10 b10Var = this.OoooOoO;
        if (b10Var == null) {
            return -1L;
        }
        long j3 = this.OoooOoo;
        if (j3 - j < j) {
            while (j3 > j) {
                b10Var = b10Var.OooO0oO;
                j3 -= (long) (b10Var.OooO0OO - b10Var.OooO0O0);
            }
        } else {
            while (true) {
                long j4 = ((long) (b10Var.OooO0OO - b10Var.OooO0O0)) + j2;
                if (j4 >= j) {
                    break;
                }
                b10Var = b10Var.OooO0o;
                j2 = j4;
            }
            j3 = j2;
        }
        if (byteString.size() == 2) {
            byte b = byteString.getByte(0);
            byte b2 = byteString.getByte(1);
            while (j3 < this.OoooOoo) {
                byte[] bArr = b10Var.OooO00o;
                i = (int) ((((long) b10Var.OooO0O0) + j) - j3);
                int i2 = b10Var.OooO0OO;
                while (i < i2) {
                    byte b3 = bArr[i];
                    if (b3 == b || b3 == b2) {
                        return ((long) (i - b10Var.OooO0O0)) + j3;
                    }
                    i++;
                }
                j3 += (long) (b10Var.OooO0OO - b10Var.OooO0O0);
                b10Var = b10Var.OooO0o;
                j = j3;
            }
            return -1L;
        }
        byte[] bArrInternalArray = byteString.internalArray();
        while (j3 < this.OoooOoo) {
            byte[] bArr2 = b10Var.OooO00o;
            i = (int) ((((long) b10Var.OooO0O0) + j) - j3);
            int i3 = b10Var.OooO0OO;
            while (i < i3) {
                byte b4 = bArr2[i];
                for (byte b5 : bArrInternalArray) {
                    if (b4 == b5) {
                        return ((long) (i - b10Var.OooO0O0)) + j3;
                    }
                }
                i++;
            }
            j3 += (long) (b10Var.OooO0OO - b10Var.OooO0O0);
            b10Var = b10Var.OooO0o;
            j = j3;
        }
        return -1L;
    }

    @Override // z2.l00
    public void OoooOo0(long j) throws EOFException {
        if (this.OoooOoo < j) {
            throw new EOFException();
        }
    }

    @Override // z2.k00
    public OutputStream OoooOoo() {
        return new OooO00o();
    }

    @Override // z2.l00
    public long Ooooo00(byte b) {
        return OooOOo(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a5 A[EDGE_INSN: B:44:0x00a5->B:38:0x00a5 BREAK  A[LOOP:0: B:5:0x000b->B:46:?], SYNTHETIC] */
    @Override // z2.l00
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long Ooooo0o() {
        int i;
        int i2;
        if (this.OoooOoo == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i3 = 0;
        long j = 0;
        boolean z = false;
        do {
            b10 b10Var = this.OoooOoO;
            byte[] bArr = b10Var.OooO00o;
            int i4 = b10Var.OooO0O0;
            int i5 = b10Var.OooO0OO;
            while (i4 < i5) {
                byte b = bArr[i4];
                if (b < 48 || b > 57) {
                    if (b >= 97 && b <= 102) {
                        i = b - 97;
                    } else if (b >= 65 && b <= 70) {
                        i = b - 65;
                    } else {
                        if (i3 == 0) {
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b));
                        }
                        z = true;
                        if (i4 != i5) {
                            this.OoooOoO = b10Var.OooO0O0();
                            c10.OooO00o(b10Var);
                        } else {
                            b10Var.OooO0O0 = i4;
                        }
                        if (!z) {
                            break;
                        }
                    }
                    i2 = i + 10;
                } else {
                    i2 = b - 48;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    throw new NumberFormatException("Number too large: " + new j00().Oooo00O(j).OooOOOO(b).Oooo0oo());
                }
                j = (j << 4) | ((long) i2);
                i4++;
                i3++;
            }
            if (i4 != i5) {
            }
            if (!z) {
            }
        } while (this.OoooOoO != null);
        this.OoooOoo -= (long) i3;
        return j;
    }

    @Override // z2.l00
    public InputStream OooooO0() {
        return new OooO0O0();
    }

    @Override // z2.l00
    public int OooooOO(x00 x00Var) {
        int iO000000 = o000000(x00Var, false);
        if (iO000000 == -1) {
            return -1;
        }
        try {
            skip(x00Var.OoooOoO[iO000000].size());
            return iO000000;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public final void OooooOo() {
        try {
            skip(this.OoooOoo);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final long Oooooo() {
        long j = this.OoooOoo;
        if (j == 0) {
            return 0L;
        }
        b10 b10Var = this.OoooOoO.OooO0oO;
        int i = b10Var.OooO0OO;
        return (i >= 8192 || !b10Var.OooO0o0) ? j : j - ((long) (i - b10Var.OooO0O0));
    }

    /* JADX INFO: renamed from: Oooooo0, reason: merged with bridge method [inline-methods] */
    public j00 clone() {
        j00 j00Var = new j00();
        if (this.OoooOoo == 0) {
            return j00Var;
        }
        b10 b10VarOooO0Oo = this.OoooOoO.OooO0Oo();
        j00Var.OoooOoO = b10VarOooO0Oo;
        b10VarOooO0Oo.OooO0oO = b10VarOooO0Oo;
        b10VarOooO0Oo.OooO0o = b10VarOooO0Oo;
        b10 b10Var = this.OoooOoO;
        while (true) {
            b10Var = b10Var.OooO0o;
            if (b10Var == this.OoooOoO) {
                j00Var.OoooOoo = this.OoooOoo;
                return j00Var;
            }
            j00Var.OoooOoO.OooO0oO.OooO0OO(b10Var.OooO0Oo());
        }
    }

    public final j00 OoooooO(OutputStream outputStream) throws IOException {
        return Ooooooo(outputStream, 0L, this.OoooOoo);
    }

    public final j00 Ooooooo(OutputStream outputStream, long j, long j2) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        h10.OooO0O0(this.OoooOoo, j, j2);
        if (j2 == 0) {
            return this;
        }
        b10 b10Var = this.OoooOoO;
        while (true) {
            int i = b10Var.OooO0OO;
            int i2 = b10Var.OooO0O0;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            b10Var = b10Var.OooO0o;
        }
        while (j2 > 0) {
            int i3 = (int) (((long) b10Var.OooO0O0) + j);
            int iMin = (int) Math.min(b10Var.OooO0OO - i3, j2);
            outputStream.write(b10Var.OooO00o, i3, iMin);
            j2 -= (long) iMin;
            b10Var = b10Var.OooO0o;
            j = 0;
        }
        return this;
    }

    @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j00)) {
            return false;
        }
        j00 j00Var = (j00) obj;
        long j = this.OoooOoo;
        if (j != j00Var.OoooOoo) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        b10 b10Var = this.OoooOoO;
        b10 b10Var2 = j00Var.OoooOoO;
        int i = b10Var.OooO0O0;
        int i2 = b10Var2.OooO0O0;
        while (j2 < this.OoooOoo) {
            long jMin = Math.min(b10Var.OooO0OO - i, b10Var2.OooO0OO - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (b10Var.OooO00o[i] != b10Var2.OooO00o[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == b10Var.OooO0OO) {
                b10Var = b10Var.OooO0o;
                i = b10Var.OooO0O0;
            }
            if (i2 == b10Var2.OooO0OO) {
                b10Var2 = b10Var2.OooO0o;
                i2 = b10Var2.OooO0O0;
            }
            j2 += jMin;
        }
        return true;
    }

    @Override // z2.k00, z2.d10, java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        b10 b10Var = this.OoooOoO;
        if (b10Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = b10Var.OooO0OO;
            for (int i3 = b10Var.OooO0O0; i3 < i2; i3++) {
                i = (i * 31) + b10Var.OooO00o[i3];
            }
            b10Var = b10Var.OooO0o;
        } while (b10Var != this.OoooOoO);
        return i;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000, reason: merged with bridge method [inline-methods] */
    public j00 OoooOoO(long j) {
        if (j == 0) {
            return OooOOOO(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return OooOoO0("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < com.anythink.expressad.exoplayer.b.h ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= UMAmapConfig.AMAP_CACHE_WRITE_TIME) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        b10 b10VarO00000Oo = o00000Oo(i);
        byte[] bArr = b10VarO00000Oo.OooO00o;
        int i2 = b10VarO00000Oo.OooO0OO + i;
        while (j != 0) {
            i2--;
            bArr[i2] = Ooooo00[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        b10VarO00000Oo.OooO0OO += i;
        this.OoooOoo += (long) i;
        return this;
    }

    public final ByteString o00000() {
        return ooOO("SHA-512");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        if (r19 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int o000000(x00 x00Var, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        b10 b10Var;
        b10 b10Var2 = this.OoooOoO;
        int i5 = -2;
        if (b10Var2 != null) {
            byte[] bArr = b10Var2.OooO00o;
            int i6 = b10Var2.OooO0O0;
            int i7 = b10Var2.OooO0OO;
            int[] iArr = x00Var.OoooOoo;
            b10 b10Var3 = b10Var2;
            int i8 = 0;
            int i9 = -1;
            loop0: while (true) {
                int i10 = i8 + 1;
                int i11 = iArr[i8];
                int i12 = i10 + 1;
                int i13 = iArr[i10];
                if (i13 != -1) {
                    i9 = i13;
                }
                if (b10Var3 == null) {
                    break;
                }
                if (i11 >= 0) {
                    int i14 = i6 + 1;
                    int i15 = bArr[i6] & 255;
                    int i16 = i12 + i11;
                    while (i12 != i16) {
                        if (i15 == iArr[i12]) {
                            i = iArr[i12 + i11];
                            if (i14 == i7) {
                                b10Var3 = b10Var3.OooO0o;
                                i2 = b10Var3.OooO0O0;
                                bArr = b10Var3.OooO00o;
                                i7 = b10Var3.OooO0OO;
                                if (b10Var3 == b10Var2) {
                                    b10Var3 = null;
                                }
                            } else {
                                i2 = i14;
                            }
                        } else {
                            i12++;
                        }
                    }
                    return i9;
                }
                int i17 = i12 + (i11 * (-1));
                while (true) {
                    int i18 = i6 + 1;
                    int i19 = i12 + 1;
                    if ((bArr[i6] & 255) != iArr[i12]) {
                        return i9;
                    }
                    boolean z3 = i19 == i17;
                    if (i18 == i7) {
                        b10 b10Var4 = b10Var3.OooO0o;
                        i4 = b10Var4.OooO0O0;
                        byte[] bArr2 = b10Var4.OooO00o;
                        i3 = b10Var4.OooO0OO;
                        if (b10Var4 != b10Var2) {
                            b10Var = b10Var4;
                            bArr = bArr2;
                        } else {
                            if (!z3) {
                                break loop0;
                            }
                            bArr = bArr2;
                            b10Var = null;
                        }
                    } else {
                        b10 b10Var5 = b10Var3;
                        i3 = i7;
                        i4 = i18;
                        b10Var = b10Var5;
                    }
                    if (z3) {
                        i = iArr[i19];
                        i2 = i4;
                        i7 = i3;
                        b10Var3 = b10Var;
                        break;
                    }
                    i6 = i4;
                    i7 = i3;
                    i12 = i19;
                    b10Var3 = b10Var;
                }
                if (i >= 0) {
                    return i;
                }
                i8 = -i;
                i6 = i2;
                i5 = -2;
            }
        } else {
            if (z) {
                return -2;
            }
            return x00Var.indexOf(ByteString.EMPTY);
        }
    }

    public final ByteString o000000O() {
        return ooOO("SHA-1");
    }

    public final ByteString o000000o() {
        return ooOO("SHA-256");
    }

    public final ByteString o00000O() {
        long j = this.OoooOoo;
        if (j <= 2147483647L) {
            return o00000OO((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.OoooOoo);
    }

    public final long o00000O0() {
        return this.OoooOoo;
    }

    public final ByteString o00000OO(int i) {
        return i == 0 ? ByteString.EMPTY : new SegmentedByteString(this, i);
    }

    public b10 o00000Oo(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        b10 b10Var = this.OoooOoO;
        if (b10Var != null) {
            b10 b10Var2 = b10Var.OooO0oO;
            return (b10Var2.OooO0OO + i > 8192 || !b10Var2.OooO0o0) ? b10Var2.OooO0OO(c10.OooO0O0()) : b10Var2;
        }
        b10 b10VarOooO0O0 = c10.OooO0O0();
        this.OoooOoO = b10VarOooO0O0;
        b10VarOooO0O0.OooO0oO = b10VarOooO0O0;
        b10VarOooO0O0.OooO0o = b10VarOooO0O0;
        return b10VarOooO0O0;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o00000o0, reason: merged with bridge method [inline-methods] */
    public j00 OoooO0(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.write(this);
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o00000oO, reason: merged with bridge method [inline-methods] */
    public j00 OooOoo0(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        h10.OooO0O0(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            b10 b10VarO00000Oo = o00000Oo(1);
            int iMin = Math.min(i3 - i, 8192 - b10VarO00000Oo.OooO0OO);
            System.arraycopy(bArr, i, b10VarO00000Oo.OooO00o, b10VarO00000Oo.OooO0OO, iMin);
            i += iMin;
            b10VarO00000Oo.OooO0OO += iMin;
        }
        this.OoooOoo += j;
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o00000oo, reason: merged with bridge method [inline-methods] */
    public j00 OooOOOO(int i) {
        b10 b10VarO00000Oo = o00000Oo(1);
        byte[] bArr = b10VarO00000Oo.OooO00o;
        int i2 = b10VarO00000Oo.OooO0OO;
        b10VarO00000Oo.OooO0OO = i2 + 1;
        bArr[i2] = (byte) i;
        this.OoooOoo++;
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000O, reason: merged with bridge method [inline-methods] */
    public j00 OooOo(int i) {
        return OooO0o(h10.OooO0o0((short) i));
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000O0, reason: merged with bridge method [inline-methods] */
    public j00 OoooOOo(long j) {
        b10 b10VarO00000Oo = o00000Oo(8);
        byte[] bArr = b10VarO00000Oo.OooO00o;
        int i = b10VarO00000Oo.OooO0OO;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        b10VarO00000Oo.OooO0OO = i8 + 1;
        this.OoooOoo += 8;
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000O00, reason: merged with bridge method [inline-methods] */
    public j00 Oooo00O(long j) {
        if (j == 0) {
            return OooOOOO(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        b10 b10VarO00000Oo = o00000Oo(iNumberOfTrailingZeros);
        byte[] bArr = b10VarO00000Oo.OooO00o;
        int i = b10VarO00000Oo.OooO0OO;
        for (int i2 = (i + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = Ooooo00[(int) (15 & j)];
            j >>>= 4;
        }
        b10VarO00000Oo.OooO0OO += iNumberOfTrailingZeros;
        this.OoooOoo += (long) iNumberOfTrailingZeros;
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000O0O, reason: merged with bridge method [inline-methods] */
    public j00 OooO(long j) {
        return OoooOOo(h10.OooO0Oo(j));
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000OO, reason: merged with bridge method [inline-methods] */
    public j00 Oooo0(String str, Charset charset) {
        return o000oOoO(str, 0, str.length(), charset);
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000OO0, reason: merged with bridge method [inline-methods] */
    public j00 o000oOoO(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(h10.OooO00o)) {
                return OooOooo(str, i, i2);
            }
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return OooOoo0(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
    }

    public final j00 o0000OOO(OutputStream outputStream) throws IOException {
        return o0000OOo(outputStream, this.OoooOoo);
    }

    public final j00 o0000OOo(OutputStream outputStream, long j) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        h10.OooO0O0(this.OoooOoo, 0L, j);
        b10 b10Var = this.OoooOoO;
        while (j > 0) {
            int iMin = (int) Math.min(j, b10Var.OooO0OO - b10Var.OooO0O0);
            outputStream.write(b10Var.OooO00o, b10Var.OooO0O0, iMin);
            int i = b10Var.OooO0O0 + iMin;
            b10Var.OooO0O0 = i;
            long j2 = iMin;
            this.OoooOoo -= j2;
            j -= j2;
            if (i == b10Var.OooO0OO) {
                b10 b10VarOooO0O0 = b10Var.OooO0O0();
                this.OoooOoO = b10VarOooO0O0;
                c10.OooO00o(b10Var);
                b10Var = b10VarOooO0O0;
            }
        }
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000Oo, reason: merged with bridge method [inline-methods] */
    public j00 OooOooo(String str, int i, int i2) {
        int i3;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                b10 b10VarO00000Oo = o00000Oo(1);
                byte[] bArr = b10VarO00000Oo.OooO00o;
                int i4 = b10VarO00000Oo.OooO0OO - i;
                int iMin = Math.min(i2, 8192 - i4);
                int i5 = i + 1;
                bArr[i + i4] = (byte) cCharAt;
                while (i5 < iMin) {
                    char cCharAt2 = str.charAt(i5);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i5 + i4] = (byte) cCharAt2;
                    i5++;
                }
                int i6 = b10VarO00000Oo.OooO0OO;
                int i7 = (i4 + i5) - i6;
                b10VarO00000Oo.OooO0OO = i6 + i7;
                this.OoooOoo += (long) i7;
                i = i5;
            } else {
                if (cCharAt < 2048) {
                    i3 = (cCharAt >> 6) | 192;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    OooOOOO((cCharAt >> '\f') | 224);
                    i3 = ((cCharAt >> 6) & 63) | 128;
                } else {
                    int i8 = i + 1;
                    char cCharAt3 = i8 < i2 ? str.charAt(i8) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        OooOOOO(63);
                        i = i8;
                    } else {
                        int i9 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        OooOOOO((i9 >> 18) | 240);
                        OooOOOO(((i9 >> 12) & 63) | 128);
                        OooOOOO(((i9 >> 6) & 63) | 128);
                        OooOOOO((i9 & 63) | 128);
                        i += 2;
                    }
                }
                OooOOOO(i3);
                OooOOOO((cCharAt & '?') | 128);
                i++;
            }
        }
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000Oo0, reason: merged with bridge method [inline-methods] */
    public j00 OooOoO0(String str) {
        return OooOooo(str, 0, str.length());
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000OoO, reason: merged with bridge method [inline-methods] */
    public j00 OooO0oO(int i) {
        int i2;
        int i3;
        if (i >= 128) {
            if (i < 2048) {
                i3 = (i >> 6) | 192;
            } else {
                if (i < 65536) {
                    if (i < 55296 || i > 57343) {
                        i2 = (i >> 12) | 224;
                    } else {
                        OooOOOO(63);
                    }
                } else {
                    if (i > 1114111) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
                    }
                    OooOOOO((i >> 18) | 240);
                    i2 = ((i >> 12) & 63) | 128;
                }
                OooOOOO(i2);
                i3 = ((i >> 6) & 63) | 128;
            }
            OooOOOO(i3);
            i = (i & 63) | 128;
            OooOOOO(i);
        } else {
            OooOOOO(i);
        }
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000Ooo, reason: merged with bridge method [inline-methods] */
    public j00 Oooo(byte[] bArr) {
        if (bArr != null) {
            return OooOoo0(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000oO, reason: merged with bridge method [inline-methods] */
    public j00 OooOOO0(int i) {
        return OooO0oo(h10.OooO0OO(i));
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o0000oo, reason: merged with bridge method [inline-methods] */
    public j00 OooO0oo(int i) {
        b10 b10VarO00000Oo = o00000Oo(4);
        byte[] bArr = b10VarO00000Oo.OooO00o;
        int i2 = b10VarO00000Oo.OooO0OO;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        b10VarO00000Oo.OooO0OO = i5 + 1;
        this.OoooOoo += 4;
        return this;
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o000OO, reason: merged with bridge method [inline-methods] */
    public j00 OooO0o(int i) {
        b10 b10VarO00000Oo = o00000Oo(2);
        byte[] bArr = b10VarO00000Oo.OooO00o;
        int i2 = b10VarO00000Oo.OooO0OO;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        b10VarO00000Oo.OooO0OO = i3 + 1;
        this.OoooOoo += 2;
        return this;
    }

    public List<Integer> o000OOo() {
        if (this.OoooOoO == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        b10 b10Var = this.OoooOoO;
        arrayList.add(Integer.valueOf(b10Var.OooO0OO - b10Var.OooO0O0));
        b10 b10Var2 = this.OoooOoO;
        while (true) {
            b10Var2 = b10Var2.OooO0o;
            if (b10Var2 == this.OoooOoO) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(b10Var2.OooO0OO - b10Var2.OooO0O0));
        }
    }

    @Override // z2.k00
    /* JADX INFO: renamed from: o00O0O, reason: merged with bridge method [inline-methods] */
    public j00 OooOo0() {
        return this;
    }

    public final byte o00Oo0(long j) {
        int i;
        h10.OooO0O0(this.OoooOoo, j, 1L);
        long j2 = this.OoooOoo;
        if (j2 - j <= j) {
            long j3 = j - j2;
            b10 b10Var = this.OoooOoO;
            do {
                b10Var = b10Var.OooO0oO;
                int i2 = b10Var.OooO0OO;
                i = b10Var.OooO0O0;
                j3 += (long) (i2 - i);
            } while (j3 < 0);
            return b10Var.OooO00o[i + ((int) j3)];
        }
        b10 b10Var2 = this.OoooOoO;
        while (true) {
            int i3 = b10Var2.OooO0OO;
            int i4 = b10Var2.OooO0O0;
            long j4 = i3 - i4;
            if (j < j4) {
                return b10Var2.OooO00o[i4 + ((int) j)];
            }
            j -= j4;
            b10Var2 = b10Var2.OooO0o;
        }
    }

    public final ByteString o00o0O(ByteString byteString) {
        return o00Ooo("HmacSHA1", byteString);
    }

    public final ByteString o00oO0o() {
        return ooOO("MD5");
    }

    public final ByteString o00ooo(ByteString byteString) {
        return o00Ooo("HmacSHA256", byteString);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String o0O0O00(long j) throws EOFException {
        String strOooO0O0;
        long j2 = 1;
        if (j > 0) {
            long j3 = j - 1;
            if (o00Oo0(j3) == 13) {
                strOooO0O0 = OooO0O0(j3);
                j2 = 2;
            } else {
                strOooO0O0 = OooO0O0(j);
            }
        }
        skip(j2);
        return strOooO0O0;
    }

    public final OooO0OO o0OO00O() {
        return oo0o0Oo(new OooO0OO());
    }

    public final j00 o0OOO0o(InputStream inputStream, long j) throws IOException {
        if (j >= 0) {
            o0Oo0oo(inputStream, j, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    public final j00 o0OoOo0(j00 j00Var, long j, long j2) {
        if (j00Var == null) {
            throw new IllegalArgumentException("out == null");
        }
        h10.OooO0O0(this.OoooOoo, j, j2);
        if (j2 == 0) {
            return this;
        }
        j00Var.OoooOoo += j2;
        b10 b10Var = this.OoooOoO;
        while (true) {
            int i = b10Var.OooO0OO;
            int i2 = b10Var.OooO0O0;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            b10Var = b10Var.OooO0o;
        }
        while (j2 > 0) {
            b10 b10VarOooO0Oo = b10Var.OooO0Oo();
            int i3 = (int) (((long) b10VarOooO0Oo.OooO0O0) + j);
            b10VarOooO0Oo.OooO0O0 = i3;
            b10VarOooO0Oo.OooO0OO = Math.min(i3 + ((int) j2), b10VarOooO0Oo.OooO0OO);
            b10 b10Var2 = j00Var.OoooOoO;
            if (b10Var2 == null) {
                b10VarOooO0Oo.OooO0oO = b10VarOooO0Oo;
                b10VarOooO0Oo.OooO0o = b10VarOooO0Oo;
                j00Var.OoooOoO = b10VarOooO0Oo;
            } else {
                b10Var2.OooO0oO.OooO0OO(b10VarOooO0Oo);
            }
            j2 -= (long) (b10VarOooO0Oo.OooO0OO - b10VarOooO0Oo.OooO0O0);
            b10Var = b10Var.OooO0o;
            j = 0;
        }
        return this;
    }

    public final OooO0OO o0ooOO0() {
        return o0ooOOo(new OooO0OO());
    }

    public final OooO0OO o0ooOOo(OooO0OO oooO0OO) {
        if (oooO0OO.OoooOoO != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        oooO0OO.OoooOoO = this;
        oooO0OO.OoooOoo = true;
        return oooO0OO;
    }

    public final j00 o0ooOoO(InputStream inputStream) throws IOException {
        o0Oo0oo(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    public final ByteString oo000o(ByteString byteString) {
        return o00Ooo("HmacSHA512", byteString);
    }

    public final OooO0OO oo0o0Oo(OooO0OO oooO0OO) {
        if (oooO0OO.OoooOoO != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        oooO0OO.OoooOoO = this;
        oooO0OO.OoooOoo = false;
        return oooO0OO;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        b10 b10Var = this.OoooOoO;
        if (b10Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), b10Var.OooO0OO - b10Var.OooO0O0);
        byteBuffer.put(b10Var.OooO00o, b10Var.OooO0O0, iMin);
        int i = b10Var.OooO0O0 + iMin;
        b10Var.OooO0O0 = i;
        this.OoooOoo -= (long) iMin;
        if (i == b10Var.OooO0OO) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        }
        return iMin;
    }

    @Override // z2.l00
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // z2.l00
    public int read(byte[] bArr, int i, int i2) {
        h10.OooO0O0(bArr.length, i, i2);
        b10 b10Var = this.OoooOoO;
        if (b10Var == null) {
            return -1;
        }
        int iMin = Math.min(i2, b10Var.OooO0OO - b10Var.OooO0O0);
        System.arraycopy(b10Var.OooO00o, b10Var.OooO0O0, bArr, i, iMin);
        int i3 = b10Var.OooO0O0 + iMin;
        b10Var.OooO0O0 = i3;
        this.OoooOoo -= (long) iMin;
        if (i3 == b10Var.OooO0OO) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        }
        return iMin;
    }

    @Override // z2.e10
    public long read(j00 j00Var, long j) {
        if (j00Var == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        long j2 = this.OoooOoo;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        j00Var.OooOooO(this, j);
        return j;
    }

    @Override // z2.l00
    public byte readByte() {
        long j = this.OoooOoo;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        b10 b10Var = this.OoooOoO;
        int i = b10Var.OooO0O0;
        int i2 = b10Var.OooO0OO;
        int i3 = i + 1;
        byte b = b10Var.OooO00o[i];
        this.OoooOoo = j - 1;
        if (i3 == i2) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        } else {
            b10Var.OooO0O0 = i3;
        }
        return b;
    }

    @Override // z2.l00
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int i2 = read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    @Override // z2.l00
    public int readInt() {
        long j = this.OoooOoo;
        if (j < 4) {
            throw new IllegalStateException("size < 4: " + this.OoooOoo);
        }
        b10 b10Var = this.OoooOoO;
        int i = b10Var.OooO0O0;
        int i2 = b10Var.OooO0OO;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = b10Var.OooO00o;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.OoooOoo = j - 4;
        if (i8 == i2) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        } else {
            b10Var.OooO0O0 = i8;
        }
        return i9;
    }

    @Override // z2.l00
    public long readLong() {
        long j = this.OoooOoo;
        if (j < 8) {
            throw new IllegalStateException("size < 8: " + this.OoooOoo);
        }
        b10 b10Var = this.OoooOoO;
        int i = b10Var.OooO0O0;
        int i2 = b10Var.OooO0OO;
        if (i2 - i < 8) {
            return ((((long) readInt()) & UIDFolder.MAXUID) << 32) | (UIDFolder.MAXUID & ((long) readInt()));
        }
        byte[] bArr = b10Var.OooO00o;
        int i3 = i + 1;
        long j2 = (((long) bArr[i]) & 255) << 56;
        int i4 = i3 + 1;
        long j3 = ((((long) bArr[i3]) & 255) << 48) | j2;
        int i5 = i4 + 1;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 40);
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32) | ((((long) bArr[i6]) & 255) << 24);
        int i8 = i7 + 1;
        long j6 = j5 | ((((long) bArr[i7]) & 255) << 16);
        int i9 = i8 + 1;
        long j7 = j6 | ((((long) bArr[i8]) & 255) << 8);
        int i10 = i9 + 1;
        long j8 = j7 | (((long) bArr[i9]) & 255);
        this.OoooOoo = j - 8;
        if (i10 == i2) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        } else {
            b10Var.OooO0O0 = i10;
        }
        return j8;
    }

    @Override // z2.l00
    public short readShort() {
        long j = this.OoooOoo;
        if (j < 2) {
            throw new IllegalStateException("size < 2: " + this.OoooOoo);
        }
        b10 b10Var = this.OoooOoO;
        int i = b10Var.OooO0O0;
        int i2 = b10Var.OooO0OO;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = b10Var.OooO00o;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.OoooOoo = j - 2;
        if (i4 == i2) {
            this.OoooOoO = b10Var.OooO0O0();
            c10.OooO00o(b10Var);
        } else {
            b10Var.OooO0O0 = i4;
        }
        return (short) i5;
    }

    @Override // z2.l00
    public boolean request(long j) {
        return this.OoooOoo >= j;
    }

    @Override // z2.l00
    public void skip(long j) throws EOFException {
        while (j > 0) {
            if (this.OoooOoO == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, r0.OooO0OO - r0.OooO0O0);
            long j2 = iMin;
            this.OoooOoo -= j2;
            j -= j2;
            b10 b10Var = this.OoooOoO;
            int i = b10Var.OooO0O0 + iMin;
            b10Var.OooO0O0 = i;
            if (i == b10Var.OooO0OO) {
                this.OoooOoO = b10Var.OooO0O0();
                c10.OooO00o(b10Var);
            }
        }
    }

    @Override // z2.e10
    public f10 timeout() {
        return f10.OooO0Oo;
    }

    public String toString() {
        return o00000O().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            b10 b10VarO00000Oo = o00000Oo(1);
            int iMin = Math.min(i, 8192 - b10VarO00000Oo.OooO0OO);
            byteBuffer.get(b10VarO00000Oo.OooO00o, b10VarO00000Oo.OooO0OO, iMin);
            i -= iMin;
            b10VarO00000Oo.OooO0OO += iMin;
        }
        this.OoooOoo += (long) iRemaining;
        return iRemaining;
    }
}
