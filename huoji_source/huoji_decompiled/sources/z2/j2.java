package z2;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class j2 extends FilterInputStream {
    private static final String Ooooo00 = "ContentLengthStream";
    private static final int Ooooo0o = -1;
    private final long OoooOoO;
    private int OoooOoo;

    private j2(@NonNull InputStream inputStream, long j) {
        super(inputStream);
        this.OoooOoO = j;
    }

    private int OooOO0(int i) throws IOException {
        if (i >= 0) {
            this.OoooOoo += i;
        } else if (this.OoooOoO - ((long) this.OoooOoo) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.OoooOoO + ", but read: " + this.OoooOoo);
        }
        return i;
    }

    @NonNull
    public static InputStream OooooOo(@NonNull InputStream inputStream, long j) {
        return new j2(inputStream, j);
    }

    private static int Oooooo(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                if (Log.isLoggable(Ooooo00, 3)) {
                    Log.d(Ooooo00, "failed to parse content length header: " + str, e);
                }
            }
        }
        return -1;
    }

    @NonNull
    public static InputStream Oooooo0(@NonNull InputStream inputStream, @Nullable String str) {
        return OooooOo(inputStream, Oooooo(str));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.OoooOoO - ((long) this.OoooOoo), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int i;
        i = super.read();
        OooOO0(i >= 0 ? 1 : -1);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return OooOO0(super.read(bArr, i, i2));
    }
}
