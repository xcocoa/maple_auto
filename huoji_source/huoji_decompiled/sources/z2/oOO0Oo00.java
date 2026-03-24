package z2;

import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class oOO0Oo00 extends h<BitmapDrawable> implements oO0000o0 {
    private final oO000o00 OoooOoo;

    public oOO0Oo00(BitmapDrawable bitmapDrawable, oO000o00 oo000o00) {
        super(bitmapDrawable);
        this.OoooOoo = oo000o00;
    }

    @Override // z2.h, z2.oO0000o0
    public void OooO00o() {
        ((BitmapDrawable) this.OoooOoO).getBitmap().prepareToDraw();
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<BitmapDrawable> OooO0O0() {
        return BitmapDrawable.class;
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return t2.OooO0oo(((BitmapDrawable) this.OoooOoO).getBitmap());
    }

    @Override // z2.oO0Ooooo
    public void recycle() {
        this.OoooOoo.OooO0Oo(((BitmapDrawable) this.OoooOoO).getBitmap());
    }
}
