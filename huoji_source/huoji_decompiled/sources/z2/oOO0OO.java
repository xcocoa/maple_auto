package z2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class oOO0OO<DataType> implements o0O0OOOo<DataType, BitmapDrawable> {
    private final o0O0OOOo<DataType, Bitmap> OooO00o;
    private final Resources OooO0O0;

    public oOO0OO(Context context, o0O0OOOo<DataType, Bitmap> o0o0oooo) {
        this(context.getResources(), o0o0oooo);
    }

    public oOO0OO(@NonNull Resources resources, @NonNull o0O0OOOo<DataType, Bitmap> o0o0oooo) {
        this.OooO0O0 = (Resources) r2.OooO0Oo(resources);
        this.OooO00o = (o0O0OOOo) r2.OooO0Oo(o0o0oooo);
    }

    @Deprecated
    public oOO0OO(Resources resources, oO000o00 oo000o00, o0O0OOOo<DataType, Bitmap> o0o0oooo) {
        this(resources, o0o0oooo);
    }

    @Override // z2.o0O0OOOo
    public boolean OooO00o(@NonNull DataType datatype, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        return this.OooO00o.OooO00o(datatype, o0o0ooo0);
    }

    @Override // z2.o0O0OOOo
    public oO0Ooooo<BitmapDrawable> OooO0O0(@NonNull DataType datatype, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        return oo00.OooO0Oo(this.OooO0O0, this.OooO00o.OooO0O0(datatype, i, i2, o0o0ooo0));
    }
}
