package z2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class oOO0OOO implements oo0OOoo<BitmapDrawable> {
    private final oO000o00 OooO00o;
    private final oo0OOoo<Bitmap> OooO0O0;

    public oOO0OOO(oO000o00 oo000o00, oo0OOoo<Bitmap> oo0oooo) {
        this.OooO00o = oo000o00;
        this.OooO0O0 = oo0oooo;
    }

    @Override // z2.oo0OOoo
    @NonNull
    public EncodeStrategy OooO0O0(@NonNull o0O0OOO0 o0o0ooo0) {
        return this.OooO0O0.OooO0O0(o0o0ooo0);
    }

    @Override // z2.o0oO0O0o
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull oO0Ooooo<BitmapDrawable> oo0ooooo, @NonNull File file, @NonNull o0O0OOO0 o0o0ooo0) {
        return this.OooO0O0.OooO00o((Bitmap) new oOO(oo0ooooo.get().getBitmap(), this.OooO00o), file, o0o0ooo0);
    }
}
