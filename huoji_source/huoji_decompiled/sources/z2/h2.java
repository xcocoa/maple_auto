package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class h2 {
    private static final int OooO00o = 16384;
    private static final AtomicReference<byte[]> OooO0O0 = new AtomicReference<>();

    public static class OooO00o extends InputStream {
        private static final int Ooooo00 = -1;

        @NonNull
        private final ByteBuffer OoooOoO;
        private int OoooOoo = -1;

        public OooO00o(@NonNull ByteBuffer byteBuffer) {
            this.OoooOoO = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.OoooOoO.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            this.OoooOoo = this.OoooOoO.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.OoooOoO.hasRemaining()) {
                return this.OoooOoO.get();
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            if (!this.OoooOoO.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i2, available());
            this.OoooOoO.get(bArr, i, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i = this.OoooOoo;
            if (i == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.OoooOoO.position(i);
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (!this.OoooOoO.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j, available());
            ByteBuffer byteBuffer = this.OoooOoO;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }
    }

    public static final class OooO0O0 {
        public final int OooO00o;
        public final int OooO0O0;
        public final byte[] OooO0OO;

        public OooO0O0(@NonNull byte[] bArr, int i, int i2) {
            this.OooO0OO = bArr;
            this.OooO00o = i;
            this.OooO0O0 = i2;
        }
    }

    private h2() {
    }

    @NonNull
    public static ByteBuffer OooO00o(@NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, com.anythink.expressad.foundation.d.c.bk);
            try {
                channel = randomAccessFile.getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused) {
                    }
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return mappedByteBufferLoad;
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static ByteBuffer OooO0O0(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = OooO0O0.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int i = inputStream.read(andSet);
            if (i < 0) {
                OooO0O0.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(andSet, 0, i);
        }
    }

    @Nullable
    private static OooO0O0 OooO0OO(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new OooO0O0(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    @NonNull
    public static byte[] OooO0Oo(@NonNull ByteBuffer byteBuffer) {
        OooO0O0 oooO0O0OooO0OO = OooO0OO(byteBuffer);
        if (oooO0O0OooO0OO != null && oooO0O0OooO0OO.OooO00o == 0 && oooO0O0OooO0OO.OooO0O0 == oooO0O0OooO0OO.OooO0OO.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    @NonNull
    public static InputStream OooO0o(@NonNull ByteBuffer byteBuffer) {
        return new OooO00o(byteBuffer);
    }

    public static void OooO0o0(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused) {
                    }
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static void OooO0oO(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        OooO0O0 oooO0O0OooO0OO = OooO0OO(byteBuffer);
        if (oooO0O0OooO0OO != null) {
            byte[] bArr = oooO0O0OooO0OO.OooO0OO;
            int i = oooO0O0OooO0OO.OooO00o;
            outputStream.write(bArr, i, oooO0O0OooO0OO.OooO0O0 + i);
            return;
        }
        byte[] andSet = OooO0O0.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int iMin = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, iMin);
            outputStream.write(andSet, 0, iMin);
        }
        OooO0O0.set(andSet);
    }
}
