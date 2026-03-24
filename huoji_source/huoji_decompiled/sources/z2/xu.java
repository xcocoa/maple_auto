package z2;

import java.io.Closeable;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class xu implements Closeable {
    private uu OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private Queue<byte[]> OooooO0 = new ConcurrentLinkedQueue();
    private AtomicBoolean Ooooo0o = new AtomicBoolean(false);
    private boolean OooooOO = false;

    public xu(uu uuVar, int i) {
        this.OoooOoO = uuVar;
        this.OoooOoo = i;
    }

    public void OooOO0(byte[] bArr) {
        synchronized (this.OooooO0) {
            this.OooooO0.add(bArr);
            this.OooooO0.notifyAll();
        }
    }

    public boolean OooooOo() {
        return this.OooooOO;
    }

    public byte[] Oooooo() throws InterruptedException, IOException {
        byte[] bArrPoll;
        synchronized (this.OooooO0) {
            bArrPoll = null;
            while (!this.OooooOO && (bArrPoll = this.OooooO0.poll()) == null) {
                this.OooooO0.wait();
            }
            if (this.OooooOO) {
                throw new IOException("Stream closed");
            }
        }
        return bArrPoll;
    }

    public void Oooooo0() {
        this.OooooOO = true;
        synchronized (this) {
            notifyAll();
        }
        synchronized (this.OooooO0) {
            this.OooooO0.notifyAll();
        }
    }

    public void OoooooO() {
        this.Ooooo0o.set(true);
    }

    public void Ooooooo() throws IOException {
        this.OoooOoO.Ooooo0o.write(wu.OooO0o(this.OoooOoo, this.Ooooo00));
        this.OoooOoO.Ooooo0o.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.OooooOO) {
                return;
            }
            Oooooo0();
            this.OoooOoO.Ooooo0o.write(wu.OooO0O0(this.OoooOoo, this.Ooooo00));
            this.OoooOoO.Ooooo0o.flush();
        }
    }

    public void o00O0O(byte[] bArr) throws InterruptedException, IOException {
        o00Oo0(bArr, true);
    }

    public void o00Oo0(byte[] bArr, boolean z) throws InterruptedException, IOException {
        synchronized (this) {
            while (!this.OooooOO && !this.Ooooo0o.compareAndSet(true, false)) {
                wait();
            }
            if (this.OooooOO) {
                throw new IOException("Stream closed");
            }
        }
        this.OoooOoO.Ooooo0o.write(wu.OooO0oO(this.OoooOoo, this.Ooooo00, bArr));
        if (z) {
            this.OoooOoO.Ooooo0o.flush();
        }
    }

    public void o0OoOo0(int i) {
        this.Ooooo00 = i;
    }

    public void ooOO(String str) throws InterruptedException, IOException {
        o00Oo0(str.getBytes("UTF-8"), false);
        o00Oo0(new byte[]{0}, true);
    }
}
