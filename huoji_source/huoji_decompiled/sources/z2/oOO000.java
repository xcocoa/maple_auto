package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class oOO000 implements o0oO0O0o<InputStream> {
    private static final String OooO0O0 = "StreamEncoder";
    private final oO0OOo0o OooO00o;

    public oOO000(oO0OOo0o oo0ooo0o) {
        this.OooO00o = oo0ooo0o;
    }

    @Override // z2.o0oO0O0o
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull InputStream inputStream, @NonNull File file, @NonNull o0O0OOO0 o0o0ooo0) throws Throwable {
        FileOutputStream fileOutputStream;
        byte[] bArr = (byte[]) this.OooO00o.OooO0o0(65536, byte[].class);
        boolean z = false;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException unused) {
                }
            } catch (IOException e) {
                e = e;
            }
            while (true) {
                try {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i);
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream2 = fileOutputStream;
                    if (Log.isLoggable(OooO0O0, 3)) {
                        Log.d(OooO0O0, "Failed to encode data onto the OutputStream", e);
                    }
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    this.OooO00o.put(bArr);
                    return z;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.OooO00o.put(bArr);
                    throw th;
                }
                this.OooO00o.put(bArr);
                return z;
            }
            fileOutputStream.close();
            z = true;
            fileOutputStream.close();
            this.OooO00o.put(bArr);
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
