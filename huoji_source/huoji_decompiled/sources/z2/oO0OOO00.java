package z2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import z2.o0O00;
import z2.oO00Oo0;

/* JADX INFO: loaded from: classes.dex */
public class oO0OOO00 implements oO00Oo0 {
    private static oO0OOO00 OooO = null;
    private static final String OooO0o = "DiskLruCacheWrapper";
    private static final int OooO0oO = 1;
    private static final int OooO0oo = 1;
    private final File OooO0O0;
    private final long OooO0OO;
    private o0O00 OooO0o0;
    private final oO00o000 OooO0Oo = new oO00o000();
    private final oOo000o0 OooO00o = new oOo000o0();

    @Deprecated
    public oO0OOO00(File file, long j) {
        this.OooO0O0 = file;
        this.OooO0OO = j;
    }

    public static oO00Oo0 OooO0Oo(File file, long j) {
        return new oO0OOO00(file, j);
    }

    private synchronized o0O00 OooO0o() throws IOException {
        if (this.OooO0o0 == null) {
            this.OooO0o0 = o0O00.oo0o0Oo(this.OooO0O0, 1, 1, this.OooO0OO);
        }
        return this.OooO0o0;
    }

    @Deprecated
    public static synchronized oO00Oo0 OooO0o0(File file, long j) {
        if (OooO == null) {
            OooO = new oO0OOO00(file, j);
        }
        return OooO;
    }

    private synchronized void OooO0oO() {
        this.OooO0o0 = null;
    }

    @Override // z2.oO00Oo0
    public void OooO00o(o0O0O0Oo o0o0o0oo, oO00Oo0.OooO0O0 oooO0O0) {
        o0O00 o0o00OooO0o;
        String strOooO0O0 = this.OooO00o.OooO0O0(o0o0o0oo);
        this.OooO0Oo.OooO00o(strOooO0O0);
        try {
            if (Log.isLoggable(OooO0o, 2)) {
                Log.v(OooO0o, "Put: Obtained: " + strOooO0O0 + " for for Key: " + o0o0o0oo);
            }
            try {
                o0o00OooO0o = OooO0o();
            } catch (IOException e) {
                if (Log.isLoggable(OooO0o, 5)) {
                    Log.w(OooO0o, "Unable to put to disk cache", e);
                }
            }
            if (o0o00OooO0o.o0ooOO0(strOooO0O0) != null) {
                return;
            }
            o0O00.OooO0OO oooO0OOO00oO0o = o0o00OooO0o.o00oO0o(strOooO0O0);
            if (oooO0OOO00oO0o == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + strOooO0O0);
            }
            try {
                if (oooO0O0.OooO00o(oooO0OOO00oO0o.OooO0o(0))) {
                    oooO0OOO00oO0o.OooO0o0();
                }
                oooO0OOO00oO0o.OooO0O0();
            } catch (Throwable th) {
                oooO0OOO00oO0o.OooO0O0();
                throw th;
            }
        } finally {
            this.OooO0Oo.OooO0O0(strOooO0O0);
        }
    }

    @Override // z2.oO00Oo0
    public File OooO0O0(o0O0O0Oo o0o0o0oo) {
        String strOooO0O0 = this.OooO00o.OooO0O0(o0o0o0oo);
        if (Log.isLoggable(OooO0o, 2)) {
            Log.v(OooO0o, "Get: Obtained: " + strOooO0O0 + " for for Key: " + o0o0o0oo);
        }
        try {
            o0O00.OooO oooOO0ooOO0 = OooO0o().o0ooOO0(strOooO0O0);
            if (oooOO0ooOO0 != null) {
                return oooOO0ooOO0.OooO0O0(0);
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable(OooO0o, 5)) {
                return null;
            }
            Log.w(OooO0o, "Unable to get from disk cache", e);
            return null;
        }
    }

    @Override // z2.oO00Oo0
    public void OooO0OO(o0O0O0Oo o0o0o0oo) {
        try {
            OooO0o().o000000o(this.OooO00o.OooO0O0(o0o0o0oo));
        } catch (IOException e) {
            if (Log.isLoggable(OooO0o, 5)) {
                Log.w(OooO0o, "Unable to delete from disk cache", e);
            }
        }
    }

    @Override // z2.oO00Oo0
    public synchronized void clear() {
        try {
            try {
                OooO0o().o00ooo();
            } catch (IOException e) {
                if (Log.isLoggable(OooO0o, 5)) {
                    Log.w(OooO0o, "Unable to clear disk cache or disk cache cleared externally", e);
                }
            }
        } finally {
            OooO0oO();
        }
    }
}
