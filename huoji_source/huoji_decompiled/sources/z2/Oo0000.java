package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import z2.oOOOoo00;

/* JADX INFO: loaded from: classes.dex */
public class Oo0000 implements o0O0OOOo<InputStream, Bitmap> {
    private final oOOOoo00 OooO00o;
    private final oO0OOo0o OooO0O0;

    public static class OooO00o implements oOOOoo00.OooO0O0 {
        private final RecyclableBufferedInputStream OooO00o;
        private final k2 OooO0O0;

        public OooO00o(RecyclableBufferedInputStream recyclableBufferedInputStream, k2 k2Var) {
            this.OooO00o = recyclableBufferedInputStream;
            this.OooO0O0 = k2Var;
        }

        @Override // z2.oOOOoo00.OooO0O0
        public void OooO00o(oO000o00 oo000o00, Bitmap bitmap) throws IOException {
            IOException iOExceptionOooooOo = this.OooO0O0.OooooOo();
            if (iOExceptionOooooOo != null) {
                if (bitmap == null) {
                    throw iOExceptionOooooOo;
                }
                oo000o00.OooO0Oo(bitmap);
                throw iOExceptionOooooOo;
            }
        }

        @Override // z2.oOOOoo00.OooO0O0
        public void OooO0O0() {
            this.OooO00o.OooooOo();
        }
    }

    public Oo0000(oOOOoo00 oooooo00, oO0OOo0o oo0ooo0o) {
        this.OooO00o = oooooo00;
        this.OooO0O0 = oo0ooo0o;
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0Ooooo<Bitmap> OooO0O0(@NonNull InputStream inputStream, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        boolean z;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.OooO0O0);
            z = true;
        }
        k2 k2VarOooooo0 = k2.Oooooo0(recyclableBufferedInputStream);
        try {
            return this.OooO00o.OooO0o0(new p2(k2VarOooooo0), i, i2, o0o0ooo0, new OooO00o(recyclableBufferedInputStream, k2VarOooooo0));
        } finally {
            k2VarOooooo0.Oooooo();
            if (z) {
                recyclableBufferedInputStream.Oooooo0();
            }
        }
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull InputStream inputStream, @NonNull o0O0OOO0 o0o0ooo0) {
        return this.OooO00o.OooOOO0(inputStream);
    }
}
