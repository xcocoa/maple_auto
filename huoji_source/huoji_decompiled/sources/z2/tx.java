package z2;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public abstract class tx implements Closeable {

    @Nullable
    private Reader reader;

    public class OooO00o extends tx {
        public final /* synthetic */ mx OoooOoO;
        public final /* synthetic */ long OoooOoo;
        public final /* synthetic */ l00 Ooooo00;

        public OooO00o(mx mxVar, long j, l00 l00Var) {
            this.OoooOoO = mxVar;
            this.OoooOoo = j;
            this.Ooooo00 = l00Var;
        }

        @Override // z2.tx
        public long contentLength() {
            return this.OoooOoo;
        }

        @Override // z2.tx
        @Nullable
        public mx contentType() {
            return this.OoooOoO;
        }

        @Override // z2.tx
        public l00 source() {
            return this.Ooooo00;
        }
    }

    public static final class OooO0O0 extends Reader {
        private final l00 OoooOoO;
        private final Charset OoooOoo;
        private boolean Ooooo00;

        @Nullable
        private Reader Ooooo0o;

        public OooO0O0(l00 l00Var, Charset charset) {
            this.OoooOoO = l00Var;
            this.OoooOoo = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.Ooooo00 = true;
            Reader reader = this.Ooooo0o;
            if (reader != null) {
                reader.close();
            } else {
                this.OoooOoO.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            if (this.Ooooo00) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.Ooooo0o;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.OoooOoO.OooooO0(), zx.OooO0OO(this.OoooOoO, this.OoooOoo));
                this.Ooooo0o = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i, i2);
        }
    }

    private Charset charset() {
        mx mxVarContentType = contentType();
        return mxVarContentType != null ? mxVarContentType.OooO0O0(zx.OooOO0) : zx.OooOO0;
    }

    public static tx create(@Nullable mx mxVar, long j, l00 l00Var) {
        Objects.requireNonNull(l00Var, "source == null");
        return new OooO00o(mxVar, j, l00Var);
    }

    public static tx create(@Nullable mx mxVar, String str) {
        Charset charset = zx.OooOO0;
        if (mxVar != null) {
            Charset charsetOooO00o = mxVar.OooO00o();
            if (charsetOooO00o == null) {
                mxVar = mx.OooO0Oo(mxVar + "; charset=utf-8");
            } else {
                charset = charsetOooO00o;
            }
        }
        j00 j00VarOooo0 = new j00().Oooo0(str, charset);
        return create(mxVar, j00VarOooo0.o00000O0(), j00VarOooo0);
    }

    public static tx create(@Nullable mx mxVar, ByteString byteString) {
        return create(mxVar, byteString.size(), new j00().OoooO0(byteString));
    }

    public static tx create(@Nullable mx mxVar, byte[] bArr) {
        return create(mxVar, bArr.length, new j00().Oooo(bArr));
    }

    public final InputStream byteStream() {
        return source().OooooO0();
    }

    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + jContentLength);
        }
        l00 l00VarSource = source();
        try {
            byte[] bArrOooOO0O = l00VarSource.OooOO0O();
            zx.OooO0oO(l00VarSource);
            if (jContentLength == -1 || jContentLength == bArrOooOO0O.length) {
                return bArrOooOO0O;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + bArrOooOO0O.length + ") disagree");
        } catch (Throwable th) {
            zx.OooO0oO(l00VarSource);
            throw th;
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        OooO0O0 oooO0O0 = new OooO0O0(source(), charset());
        this.reader = oooO0O0;
        return oooO0O0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zx.OooO0oO(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract mx contentType();

    public abstract l00 source();

    public final String string() throws IOException {
        l00 l00VarSource = source();
        try {
            return l00VarSource.OooOoOO(zx.OooO0OO(l00VarSource, charset()));
        } finally {
            zx.OooO0oO(l00VarSource);
        }
    }
}
