package z2;

import android.content.Context;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class o0O0O0o0<T> implements o0O0o000<T> {
    private final Collection<? extends o0O0o000<T>> OooO0OO;

    public o0O0O0o0(@NonNull Collection<? extends o0O0o000<T>> collection) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.OooO0OO = collection;
    }

    @SafeVarargs
    public o0O0O0o0(@NonNull o0O0o000<T>... o0o0o000Arr) {
        if (o0o0o000Arr.length == 0) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.OooO0OO = Arrays.asList(o0o0o000Arr);
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        Iterator<? extends o0O0o000<T>> it = this.OooO0OO.iterator();
        while (it.hasNext()) {
            it.next().OooO00o(messageDigest);
        }
    }

    @Override // z2.o0O0o000
    @NonNull
    public oO0Ooooo<T> OooO0O0(@NonNull Context context, @NonNull oO0Ooooo<T> oo0ooooo, int i, int i2) {
        Iterator<? extends o0O0o000<T>> it = this.OooO0OO.iterator();
        oO0Ooooo<T> oo0ooooo2 = oo0ooooo;
        while (it.hasNext()) {
            oO0Ooooo<T> oo0oooooOooO0O0 = it.next().OooO0O0(context, oo0ooooo2, i, i2);
            if (oo0ooooo2 != null && !oo0ooooo2.equals(oo0ooooo) && !oo0ooooo2.equals(oo0oooooOooO0O0)) {
                oo0ooooo2.recycle();
            }
            oo0ooooo2 = oo0oooooOooO0O0;
        }
        return oo0ooooo2;
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (obj instanceof o0O0O0o0) {
            return this.OooO0OO.equals(((o0O0O0o0) obj).OooO0OO);
        }
        return false;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return this.OooO0OO.hashCode();
    }
}
