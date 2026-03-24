package z2;

import android.graphics.Bitmap;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class dd0 {
    private final GifInfoHandle OooO00o;

    public dd0(@NonNull ld0 ld0Var) throws IOException {
        this(ld0Var, null);
    }

    public dd0(@NonNull ld0 ld0Var, @Nullable hd0 hd0Var) throws IOException {
        GifInfoHandle gifInfoHandleOooO0OO = ld0Var.OooO0OO();
        this.OooO00o = gifInfoHandleOooO0OO;
        if (hd0Var != null) {
            gifInfoHandleOooO0OO.Oooo0OO(hd0Var.OooO00o, hd0Var.OooO0O0);
        }
    }

    private void OooO00o(Bitmap bitmap) {
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("Bitmap is recycled");
        }
        if (bitmap.getWidth() < this.OooO00o.OooOOo0() || bitmap.getHeight() < this.OooO00o.OooO()) {
            throw new IllegalArgumentException("Bitmap ia too small, size must be greater than or equal to GIF size");
        }
        if (bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
            return;
        }
        throw new IllegalArgumentException("Only Config.ARGB_8888 is supported. Current bitmap config: " + bitmap.getConfig());
    }

    public long OooO() {
        return this.OooO00o.OooOOOo();
    }

    public long OooO0O0() {
        return this.OooO00o.OooO0O0();
    }

    public String OooO0OO() {
        return this.OooO00o.OooO0OO();
    }

    public int OooO0Oo() {
        return this.OooO00o.OooO0oO();
    }

    public int OooO0o() {
        return this.OooO00o.OooO();
    }

    public int OooO0o0(@IntRange(from = 0) int i) {
        return this.OooO00o.OooO0oo(i);
    }

    public int OooO0oO() {
        return this.OooO00o.OooOO0();
    }

    public int OooO0oo() {
        return this.OooO00o.OooOOO();
    }

    public int OooOO0() {
        return this.OooO00o.OooOOo0();
    }

    public boolean OooOO0O() {
        return this.OooO00o.OooOOO() > 1 && OooO0Oo() > 0;
    }

    public void OooOO0o() {
        this.OooO00o.OooOoOO();
    }

    public void OooOOO(@IntRange(from = 0, to = 2147483647L) int i, @NonNull Bitmap bitmap) {
        OooO00o(bitmap);
        this.OooO00o.Oooo0(i, bitmap);
    }

    public void OooOOO0(@IntRange(from = 0, to = 2147483647L) int i, @NonNull Bitmap bitmap) {
        OooO00o(bitmap);
        this.OooO00o.Oooo00O(i, bitmap);
    }
}
