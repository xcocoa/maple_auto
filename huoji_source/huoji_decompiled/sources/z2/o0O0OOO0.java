package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class o0O0OOO0 implements o0O0O0Oo {
    private final ArrayMap<o0O0OO0<?>, Object> OooO0OO = new i2();

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void OooO0o(@NonNull o0O0OO0<T> o0o0oo0, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        o0o0oo0.OooO0oo(obj, messageDigest);
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        for (int i = 0; i < this.OooO0OO.size(); i++) {
            OooO0o(this.OooO0OO.keyAt(i), this.OooO0OO.valueAt(i), messageDigest);
        }
    }

    @Nullable
    public <T> T OooO0OO(@NonNull o0O0OO0<T> o0o0oo0) {
        return this.OooO0OO.containsKey(o0o0oo0) ? (T) this.OooO0OO.get(o0o0oo0) : o0o0oo0.OooO0Oo();
    }

    public void OooO0Oo(@NonNull o0O0OOO0 o0o0ooo0) {
        this.OooO0OO.putAll((SimpleArrayMap<? extends o0O0OO0<?>, ? extends Object>) o0o0ooo0.OooO0OO);
    }

    @NonNull
    public <T> o0O0OOO0 OooO0o0(@NonNull o0O0OO0<T> o0o0oo0, @NonNull T t) {
        this.OooO0OO.put(o0o0oo0, t);
        return this;
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (obj instanceof o0O0OOO0) {
            return this.OooO0OO.equals(((o0O0OOO0) obj).OooO0OO);
        }
        return false;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return this.OooO0OO.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.OooO0OO + MessageFormatter.DELIM_STOP;
    }
}
