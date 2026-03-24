package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class oOOO00Oo implements o0O0OOOo<ByteBuffer, Bitmap> {
    private final oOOOoo00 OooO00o;

    public oOOO00Oo(oOOOoo00 oooooo00) {
        this.OooO00o = oooooo00;
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0Ooooo<Bitmap> OooO0O0(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        return this.OooO00o.OooO0Oo(h2.OooO0o(byteBuffer), i, i2, o0o0ooo0);
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull ByteBuffer byteBuffer, @NonNull o0O0OOO0 o0o0ooo0) {
        return this.OooO00o.OooOOO(byteBuffer);
    }
}
