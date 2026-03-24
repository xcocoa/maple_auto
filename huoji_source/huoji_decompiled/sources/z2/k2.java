package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class k2 extends InputStream {
    private static final Queue<k2> Ooooo00 = t2.OooO0o(0);
    private InputStream OoooOoO;
    private IOException OoooOoo;

    public static void OooOO0() {
        while (true) {
            Queue<k2> queue = Ooooo00;
            if (queue.isEmpty()) {
                return;
            } else {
                queue.remove();
            }
        }
    }

    @NonNull
    public static k2 Oooooo0(@NonNull InputStream inputStream) {
        k2 k2VarPoll;
        Queue<k2> queue = Ooooo00;
        synchronized (queue) {
            k2VarPoll = queue.poll();
        }
        if (k2VarPoll == null) {
            k2VarPoll = new k2();
        }
        k2VarPoll.OoooooO(inputStream);
        return k2VarPoll;
    }

    @Nullable
    public IOException OooooOo() {
        return this.OoooOoo;
    }

    public void Oooooo() {
        this.OoooOoo = null;
        this.OoooOoO = null;
        Queue<k2> queue = Ooooo00;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    public void OoooooO(@NonNull InputStream inputStream) {
        this.OoooOoO = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.OoooOoO.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoO.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.OoooOoO.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.OoooOoO.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.OoooOoO.read();
        } catch (IOException e) {
            this.OoooOoo = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.OoooOoO.read(bArr);
        } catch (IOException e) {
            this.OoooOoo = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.OoooOoO.read(bArr, i, i2);
        } catch (IOException e) {
            this.OoooOoo = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.OoooOoO.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.OoooOoO.skip(j);
        } catch (IOException e) {
            this.OoooOoo = e;
            return 0L;
        }
    }
}
