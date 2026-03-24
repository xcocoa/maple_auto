package z2;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public abstract class rx {

    public class OooO00o extends rx {
        public final /* synthetic */ mx OooO00o;
        public final /* synthetic */ ByteString OooO0O0;

        public OooO00o(mx mxVar, ByteString byteString) {
            this.OooO00o = mxVar;
            this.OooO0O0 = byteString;
        }

        @Override // z2.rx
        public long contentLength() throws IOException {
            return this.OooO0O0.size();
        }

        @Override // z2.rx
        @Nullable
        public mx contentType() {
            return this.OooO00o;
        }

        @Override // z2.rx
        public void writeTo(k00 k00Var) throws IOException {
            k00Var.OoooO0(this.OooO0O0);
        }
    }

    public class OooO0O0 extends rx {
        public final /* synthetic */ mx OooO00o;
        public final /* synthetic */ int OooO0O0;
        public final /* synthetic */ byte[] OooO0OO;
        public final /* synthetic */ int OooO0Oo;

        public OooO0O0(mx mxVar, int i, byte[] bArr, int i2) {
            this.OooO00o = mxVar;
            this.OooO0O0 = i;
            this.OooO0OO = bArr;
            this.OooO0Oo = i2;
        }

        @Override // z2.rx
        public long contentLength() {
            return this.OooO0O0;
        }

        @Override // z2.rx
        @Nullable
        public mx contentType() {
            return this.OooO00o;
        }

        @Override // z2.rx
        public void writeTo(k00 k00Var) throws IOException {
            k00Var.OooOoo0(this.OooO0OO, this.OooO0Oo, this.OooO0O0);
        }
    }

    public class OooO0OO extends rx {
        public final /* synthetic */ mx OooO00o;
        public final /* synthetic */ File OooO0O0;

        public OooO0OO(mx mxVar, File file) {
            this.OooO00o = mxVar;
            this.OooO0O0 = file;
        }

        @Override // z2.rx
        public long contentLength() {
            return this.OooO0O0.length();
        }

        @Override // z2.rx
        @Nullable
        public mx contentType() {
            return this.OooO00o;
        }

        @Override // z2.rx
        public void writeTo(k00 k00Var) throws IOException {
            e10 e10VarOooOO0O = null;
            try {
                e10VarOooOO0O = w00.OooOO0O(this.OooO0O0);
                k00Var.Oooo000(e10VarOooOO0O);
            } finally {
                zx.OooO0oO(e10VarOooOO0O);
            }
        }
    }

    public static rx create(@Nullable mx mxVar, File file) {
        Objects.requireNonNull(file, "file == null");
        return new OooO0OO(mxVar, file);
    }

    public static rx create(@Nullable mx mxVar, String str) {
        Charset charset = zx.OooOO0;
        if (mxVar != null) {
            Charset charsetOooO00o = mxVar.OooO00o();
            if (charsetOooO00o == null) {
                mxVar = mx.OooO0Oo(mxVar + "; charset=utf-8");
            } else {
                charset = charsetOooO00o;
            }
        }
        return create(mxVar, str.getBytes(charset));
    }

    public static rx create(@Nullable mx mxVar, ByteString byteString) {
        return new OooO00o(mxVar, byteString);
    }

    public static rx create(@Nullable mx mxVar, byte[] bArr) {
        return create(mxVar, bArr, 0, bArr.length);
    }

    public static rx create(@Nullable mx mxVar, byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "content == null");
        zx.OooO0o(bArr.length, i, i2);
        return new OooO0O0(mxVar, i2, bArr, i);
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract mx contentType();

    public abstract void writeTo(k00 k00Var) throws IOException;
}
