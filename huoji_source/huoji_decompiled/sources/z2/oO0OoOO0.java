package z2;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class oO0OoOO0 implements o0O0O0Oo {
    private static final o2<Class<?>, byte[]> OooOO0O = new o2<>(50);
    private final o0O0OOO0 OooO;
    private final oO0OOo0o OooO0OO;
    private final o0O0O0Oo OooO0Oo;
    private final int OooO0o;
    private final o0O0O0Oo OooO0o0;
    private final int OooO0oO;
    private final Class<?> OooO0oo;
    private final o0O0o000<?> OooOO0;

    public oO0OoOO0(oO0OOo0o oo0ooo0o, o0O0O0Oo o0o0o0oo, o0O0O0Oo o0o0o0oo2, int i, int i2, o0O0o000<?> o0o0o000, Class<?> cls, o0O0OOO0 o0o0ooo0) {
        this.OooO0OO = oo0ooo0o;
        this.OooO0Oo = o0o0o0oo;
        this.OooO0o0 = o0o0o0oo2;
        this.OooO0o = i;
        this.OooO0oO = i2;
        this.OooOO0 = o0o0o000;
        this.OooO0oo = cls;
        this.OooO = o0o0ooo0;
    }

    private byte[] OooO0OO() {
        o2<Class<?>, byte[]> o2Var = OooOO0O;
        byte[] bArrOooOO0O = o2Var.OooOO0O(this.OooO0oo);
        if (bArrOooOO0O != null) {
            return bArrOooOO0O;
        }
        byte[] bytes = this.OooO0oo.getName().getBytes(o0O0O0Oo.OooO0O0);
        o2Var.OooOOOO(this.OooO0oo, bytes);
        return bytes;
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.OooO0OO.OooO0OO(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.OooO0o).putInt(this.OooO0oO).array();
        this.OooO0o0.OooO00o(messageDigest);
        this.OooO0Oo.OooO00o(messageDigest);
        messageDigest.update(bArr);
        o0O0o000<?> o0o0o000 = this.OooOO0;
        if (o0o0o000 != null) {
            o0o0o000.OooO00o(messageDigest);
        }
        this.OooO.OooO00o(messageDigest);
        messageDigest.update(OooO0OO());
        this.OooO0OO.put(bArr);
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (!(obj instanceof oO0OoOO0)) {
            return false;
        }
        oO0OoOO0 oo0oooo0 = (oO0OoOO0) obj;
        return this.OooO0oO == oo0oooo0.OooO0oO && this.OooO0o == oo0oooo0.OooO0o && t2.OooO0Oo(this.OooOO0, oo0oooo0.OooOO0) && this.OooO0oo.equals(oo0oooo0.OooO0oo) && this.OooO0Oo.equals(oo0oooo0.OooO0Oo) && this.OooO0o0.equals(oo0oooo0.OooO0o0) && this.OooO.equals(oo0oooo0.OooO);
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        int iHashCode = (((((this.OooO0Oo.hashCode() * 31) + this.OooO0o0.hashCode()) * 31) + this.OooO0o) * 31) + this.OooO0oO;
        o0O0o000<?> o0o0o000 = this.OooOO0;
        if (o0o0o000 != null) {
            iHashCode = (iHashCode * 31) + o0o0o000.hashCode();
        }
        return (((iHashCode * 31) + this.OooO0oo.hashCode()) * 31) + this.OooO.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.OooO0Oo + ", signature=" + this.OooO0o0 + ", width=" + this.OooO0o + ", height=" + this.OooO0oO + ", decodedResourceClass=" + this.OooO0oo + ", transformation='" + this.OooOO0 + "', options=" + this.OooO + MessageFormatter.DELIM_STOP;
    }
}
