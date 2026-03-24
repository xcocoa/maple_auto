package z2;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class o0OOOO00 implements o0O0O0Oo {
    private final o0O0O0Oo OooO0OO;
    private final o0O0O0Oo OooO0Oo;

    public o0OOOO00(o0O0O0Oo o0o0o0oo, o0O0O0Oo o0o0o0oo2) {
        this.OooO0OO = o0o0o0oo;
        this.OooO0Oo = o0o0o0oo2;
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        this.OooO0OO.OooO00o(messageDigest);
        this.OooO0Oo.OooO00o(messageDigest);
    }

    public o0O0O0Oo OooO0OO() {
        return this.OooO0OO;
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (!(obj instanceof o0OOOO00)) {
            return false;
        }
        o0OOOO00 o0oooo00 = (o0OOOO00) obj;
        return this.OooO0OO.equals(o0oooo00.OooO0OO) && this.OooO0Oo.equals(o0oooo00.OooO0Oo);
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return (this.OooO0OO.hashCode() * 31) + this.OooO0Oo.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.OooO0OO + ", signature=" + this.OooO0Oo + MessageFormatter.DELIM_STOP;
    }
}
