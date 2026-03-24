package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class o0O0OO0<T> {
    private static final OooO0O0<Object> OooO0o0 = new OooO00o();
    private final T OooO00o;
    private final OooO0O0<T> OooO0O0;
    private final String OooO0OO;
    private volatile byte[] OooO0Oo;

    public class OooO00o implements OooO0O0<Object> {
        @Override // z2.o0O0OO0.OooO0O0
        public void OooO00o(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    public interface OooO0O0<T> {
        void OooO00o(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    private o0O0OO0(@NonNull String str, @Nullable T t, @NonNull OooO0O0<T> oooO0O0) {
        this.OooO0OO = r2.OooO0O0(str);
        this.OooO00o = t;
        this.OooO0O0 = (OooO0O0) r2.OooO0Oo(oooO0O0);
    }

    @NonNull
    public static <T> o0O0OO0<T> OooO00o(@NonNull String str, @NonNull OooO0O0<T> oooO0O0) {
        return new o0O0OO0<>(str, null, oooO0O0);
    }

    @NonNull
    public static <T> o0O0OO0<T> OooO0O0(@NonNull String str, @Nullable T t, @NonNull OooO0O0<T> oooO0O0) {
        return new o0O0OO0<>(str, t, oooO0O0);
    }

    @NonNull
    private static <T> OooO0O0<T> OooO0OO() {
        return (OooO0O0<T>) OooO0o0;
    }

    @NonNull
    public static <T> o0O0OO0<T> OooO0o(@NonNull String str) {
        return new o0O0OO0<>(str, null, OooO0OO());
    }

    @NonNull
    private byte[] OooO0o0() {
        if (this.OooO0Oo == null) {
            this.OooO0Oo = this.OooO0OO.getBytes(o0O0O0Oo.OooO0O0);
        }
        return this.OooO0Oo;
    }

    @NonNull
    public static <T> o0O0OO0<T> OooO0oO(@NonNull String str, @NonNull T t) {
        return new o0O0OO0<>(str, t, OooO0OO());
    }

    @Nullable
    public T OooO0Oo() {
        return this.OooO00o;
    }

    public void OooO0oo(@NonNull T t, @NonNull MessageDigest messageDigest) {
        this.OooO0O0.OooO00o(OooO0o0(), t, messageDigest);
    }

    public boolean equals(Object obj) {
        if (obj instanceof o0O0OO0) {
            return this.OooO0OO.equals(((o0O0OO0) obj).OooO0OO);
        }
        return false;
    }

    public int hashCode() {
        return this.OooO0OO.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.OooO0OO + '\'' + MessageFormatter.DELIM_STOP;
    }
}
