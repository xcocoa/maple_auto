package z2;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class oO00000o implements o0O0O0Oo {
    private final Map<Class<?>, o0O0o000<?>> OooO;
    private final Object OooO0OO;
    private final int OooO0Oo;
    private final Class<?> OooO0o;
    private final int OooO0o0;
    private final Class<?> OooO0oO;
    private final o0O0O0Oo OooO0oo;
    private final o0O0OOO0 OooOO0;
    private int OooOO0O;

    public oO00000o(Object obj, o0O0O0Oo o0o0o0oo, int i, int i2, Map<Class<?>, o0O0o000<?>> map, Class<?> cls, Class<?> cls2, o0O0OOO0 o0o0ooo0) {
        this.OooO0OO = r2.OooO0Oo(obj);
        this.OooO0oo = (o0O0O0Oo) r2.OooO0o0(o0o0o0oo, "Signature must not be null");
        this.OooO0Oo = i;
        this.OooO0o0 = i2;
        this.OooO = (Map) r2.OooO0Oo(map);
        this.OooO0o = (Class) r2.OooO0o0(cls, "Resource class must not be null");
        this.OooO0oO = (Class) r2.OooO0o0(cls2, "Transcode class must not be null");
        this.OooOO0 = (o0O0OOO0) r2.OooO0Oo(o0o0ooo0);
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (!(obj instanceof oO00000o)) {
            return false;
        }
        oO00000o oo00000o = (oO00000o) obj;
        return this.OooO0OO.equals(oo00000o.OooO0OO) && this.OooO0oo.equals(oo00000o.OooO0oo) && this.OooO0o0 == oo00000o.OooO0o0 && this.OooO0Oo == oo00000o.OooO0Oo && this.OooO.equals(oo00000o.OooO) && this.OooO0o.equals(oo00000o.OooO0o) && this.OooO0oO.equals(oo00000o.OooO0oO) && this.OooOO0.equals(oo00000o.OooOO0);
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        if (this.OooOO0O == 0) {
            int iHashCode = this.OooO0OO.hashCode();
            this.OooOO0O = iHashCode;
            int iHashCode2 = (iHashCode * 31) + this.OooO0oo.hashCode();
            this.OooOO0O = iHashCode2;
            int i = (iHashCode2 * 31) + this.OooO0Oo;
            this.OooOO0O = i;
            int i2 = (i * 31) + this.OooO0o0;
            this.OooOO0O = i2;
            int iHashCode3 = (i2 * 31) + this.OooO.hashCode();
            this.OooOO0O = iHashCode3;
            int iHashCode4 = (iHashCode3 * 31) + this.OooO0o.hashCode();
            this.OooOO0O = iHashCode4;
            int iHashCode5 = (iHashCode4 * 31) + this.OooO0oO.hashCode();
            this.OooOO0O = iHashCode5;
            this.OooOO0O = (iHashCode5 * 31) + this.OooOO0.hashCode();
        }
        return this.OooOO0O;
    }

    public String toString() {
        return "EngineKey{model=" + this.OooO0OO + ", width=" + this.OooO0Oo + ", height=" + this.OooO0o0 + ", resourceClass=" + this.OooO0o + ", transcodeClass=" + this.OooO0oO + ", signature=" + this.OooO0oo + ", hashCode=" + this.OooOO0O + ", transformations=" + this.OooO + ", options=" + this.OooOO0 + MessageFormatter.DELIM_STOP;
    }
}
