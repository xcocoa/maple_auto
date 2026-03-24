package z2;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o00Oo0 {
    public final int OooO00o;
    public final byte[] OooO0O0;
    public final Map<String, String> OooO0OO;
    public final boolean OooO0Oo;
    public final long OooO0o0;

    public o00Oo0(int i, byte[] bArr, Map<String, String> map, boolean z) {
        this(i, bArr, map, z, 0L);
    }

    public o00Oo0(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.OooO00o = i;
        this.OooO0O0 = bArr;
        this.OooO0OO = map;
        this.OooO0Oo = z;
        this.OooO0o0 = j;
    }

    public o00Oo0(byte[] bArr) {
        this(200, bArr, Collections.emptyMap(), false, 0L);
    }

    public o00Oo0(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
