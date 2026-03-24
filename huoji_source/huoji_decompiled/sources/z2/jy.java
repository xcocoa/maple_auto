package z2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class jy {
    private static final int OooOO0O = 1;
    private static final int OooOO0o = 2;
    private static final long OooOOOO = 32;
    public final long OooO;
    public RandomAccessFile OooO00o;
    public Thread OooO0O0;
    public e10 OooO0OO;
    public boolean OooO0o;
    public long OooO0o0;
    private final ByteString OooO0oO;
    public int OooOO0;
    public static final ByteString OooOOO0 = ByteString.encodeUtf8("OkHttp cache v1\n");
    public static final ByteString OooOOO = ByteString.encodeUtf8("OkHttp DIRTY :(\n");
    public final j00 OooO0Oo = new j00();
    public final j00 OooO0oo = new j00();

    public class OooO00o implements e10 {
        private final f10 OoooOoO = new f10();
        private iy OoooOoo;
        private long Ooooo00;

        public OooO00o() {
            this.OoooOoo = new iy(jy.this.OooO00o.getChannel());
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (this.OoooOoo == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.OoooOoo = null;
            synchronized (jy.this) {
                jy jyVar = jy.this;
                int i = jyVar.OooOO0 - 1;
                jyVar.OooOO0 = i;
                if (i == 0) {
                    RandomAccessFile randomAccessFile2 = jyVar.OooO00o;
                    jyVar.OooO00o = null;
                    randomAccessFile = randomAccessFile2;
                }
            }
            if (randomAccessFile != null) {
                zx.OooO0oO(randomAccessFile);
            }
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            long j2;
            char c;
            jy jyVar;
            if (this.OoooOoo == null) {
                throw new IllegalStateException("closed");
            }
            synchronized (jy.this) {
                while (true) {
                    long j3 = this.Ooooo00;
                    jy jyVar2 = jy.this;
                    j2 = jyVar2.OooO0o0;
                    if (j3 != j2) {
                        long jO00000O0 = j2 - jyVar2.OooO0oo.o00000O0();
                        long j4 = this.Ooooo00;
                        if (j4 >= jO00000O0) {
                            long jMin = Math.min(j, j2 - j4);
                            jy.this.OooO0oo.o0OoOo0(j00Var, this.Ooooo00 - jO00000O0, jMin);
                            this.Ooooo00 += jMin;
                            return jMin;
                        }
                        c = 2;
                    } else if (!jyVar2.OooO0o) {
                        if (jyVar2.OooO0O0 == null) {
                            jyVar2.OooO0O0 = Thread.currentThread();
                            c = 1;
                            break;
                        }
                        this.OoooOoO.OooOO0(jyVar2);
                    } else {
                        return -1L;
                    }
                }
                if (c == 2) {
                    long jMin2 = Math.min(j, j2 - this.Ooooo00);
                    this.OoooOoo.OooO00o(this.Ooooo00 + 32, j00Var, jMin2);
                    this.Ooooo00 += jMin2;
                    return jMin2;
                }
                try {
                    jy jyVar3 = jy.this;
                    long j5 = jyVar3.OooO0OO.read(jyVar3.OooO0Oo, jyVar3.OooO);
                    if (j5 == -1) {
                        jy.this.OooO00o(j2);
                        synchronized (jy.this) {
                            jy jyVar4 = jy.this;
                            jyVar4.OooO0O0 = null;
                            jyVar4.notifyAll();
                        }
                        return -1L;
                    }
                    long jMin3 = Math.min(j5, j);
                    jy.this.OooO0Oo.o0OoOo0(j00Var, 0L, jMin3);
                    this.Ooooo00 += jMin3;
                    this.OoooOoo.OooO0O0(j2 + 32, jy.this.OooO0Oo.clone(), j5);
                    synchronized (jy.this) {
                        jy jyVar5 = jy.this;
                        jyVar5.OooO0oo.OooOooO(jyVar5.OooO0Oo, j5);
                        long jO00000O02 = jy.this.OooO0oo.o00000O0();
                        jy jyVar6 = jy.this;
                        if (jO00000O02 > jyVar6.OooO) {
                            j00 j00Var2 = jyVar6.OooO0oo;
                            j00Var2.skip(j00Var2.o00000O0() - jy.this.OooO);
                        }
                        jyVar = jy.this;
                        jyVar.OooO0o0 += j5;
                    }
                    synchronized (jyVar) {
                        jy jyVar7 = jy.this;
                        jyVar7.OooO0O0 = null;
                        jyVar7.notifyAll();
                    }
                    return jMin3;
                } catch (Throwable th) {
                    synchronized (jy.this) {
                        jy jyVar8 = jy.this;
                        jyVar8.OooO0O0 = null;
                        jyVar8.notifyAll();
                        throw th;
                    }
                }
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return this.OoooOoO;
        }
    }

    private jy(RandomAccessFile randomAccessFile, e10 e10Var, long j, ByteString byteString, long j2) {
        this.OooO00o = randomAccessFile;
        this.OooO0OO = e10Var;
        this.OooO0o = e10Var == null;
        this.OooO0o0 = j;
        this.OooO0oO = byteString;
        this.OooO = j2;
    }

    public static jy OooO0O0(File file, e10 e10Var, ByteString byteString, long j) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        jy jyVar = new jy(randomAccessFile, e10Var, 0L, byteString, j);
        randomAccessFile.setLength(0L);
        jyVar.OooO0oO(OooOOO, -1L, -1L);
        return jyVar;
    }

    public static jy OooO0o(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        iy iyVar = new iy(randomAccessFile.getChannel());
        j00 j00Var = new j00();
        iyVar.OooO00o(0L, j00Var, 32L);
        if (!j00Var.OooO0Oo(r2.size()).equals(OooOOO0)) {
            throw new IOException("unreadable cache file");
        }
        long j = j00Var.readLong();
        long j2 = j00Var.readLong();
        j00 j00Var2 = new j00();
        iyVar.OooO00o(j + 32, j00Var2, j2);
        return new jy(randomAccessFile, null, j, j00Var2.Oooo00o(), 0L);
    }

    private void OooO0oO(ByteString byteString, long j, long j2) throws IOException {
        j00 j00Var = new j00();
        j00Var.OoooO0(byteString);
        j00Var.OoooOOo(j);
        j00Var.OoooOOo(j2);
        if (j00Var.o00000O0() != 32) {
            throw new IllegalArgumentException();
        }
        new iy(this.OooO00o.getChannel()).OooO0O0(0L, j00Var, 32L);
    }

    private void OooO0oo(long j) throws IOException {
        j00 j00Var = new j00();
        j00Var.OoooO0(this.OooO0oO);
        new iy(this.OooO00o.getChannel()).OooO0O0(32 + j, j00Var, this.OooO0oO.size());
    }

    public void OooO00o(long j) throws IOException {
        OooO0oo(j);
        this.OooO00o.getChannel().force(false);
        OooO0oO(OooOOO0, j, this.OooO0oO.size());
        this.OooO00o.getChannel().force(false);
        synchronized (this) {
            this.OooO0o = true;
        }
        zx.OooO0oO(this.OooO0OO);
        this.OooO0OO = null;
    }

    public boolean OooO0OO() {
        return this.OooO00o == null;
    }

    public ByteString OooO0Oo() {
        return this.OooO0oO;
    }

    public e10 OooO0o0() {
        synchronized (this) {
            if (this.OooO00o == null) {
                return null;
            }
            this.OooOO0++;
            return new OooO00o();
        }
    }
}
