package z2;

import android.util.Base64;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public final class oOo0oooO<Model, Data> implements oO0o0000<Model, Data> {
    private static final String OooO0O0 = "data:image";
    private static final String OooO0OO = ";base64";
    private final OooO00o<Data> OooO00o;

    public interface OooO00o<Data> {
        Class<Data> OooO00o();

        void OooO0O0(Data data) throws IOException;

        Data decode(String str) throws IllegalArgumentException;
    }

    public static final class OooO0O0<Data> implements o0O0oo00<Data> {
        private final String OoooOoO;
        private final OooO00o<Data> OoooOoo;
        private Data Ooooo00;

        public OooO0O0(String str, OooO00o<Data> oooO00o) {
            this.OoooOoO = str;
            this.OoooOoo = oooO00o;
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<Data> OooO00o() {
            return this.OoooOoo.OooO00o();
        }

        @Override // z2.o0O0oo00
        public void OooO0O0() {
            try {
                this.OoooOoo.OooO0O0(this.Ooooo00);
            } catch (IOException unused) {
            }
        }

        @Override // z2.o0O0oo00
        @NonNull
        public DataSource OooO0Oo() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [Data, java.lang.Object] */
        @Override // z2.o0O0oo00
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super Data> oooO00o) {
            try {
                Data dataDecode = this.OoooOoo.decode(this.OoooOoO);
                this.Ooooo00 = dataDecode;
                oooO00o.OooO0o(dataDecode);
            } catch (IllegalArgumentException e) {
                oooO00o.OooO0OO(e);
            }
        }

        @Override // z2.o0O0oo00
        public void cancel() {
        }
    }

    public static final class OooO0OO<Model> implements oO0oO000<Model, InputStream> {
        private final OooO00o<InputStream> OooO00o = new OooO00o();

        public class OooO00o implements OooO00o<InputStream> {
            public OooO00o() {
            }

            @Override // z2.oOo0oooO.OooO00o
            public Class<InputStream> OooO00o() {
                return InputStream.class;
            }

            @Override // z2.oOo0oooO.OooO00o
            /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
            public void OooO0O0(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // z2.oOo0oooO.OooO00o
            /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
            public InputStream decode(String str) {
                if (!str.startsWith(oOo0oooO.OooO0O0)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, iIndexOf).endsWith(oOo0oooO.OooO0OO)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Model, InputStream> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oOo0oooO(this.OooO00o);
        }
    }

    public oOo0oooO(OooO00o<Data> oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // z2.oO0o0000
    public boolean OooO00o(@NonNull Model model) {
        return model.toString().startsWith(OooO0O0);
    }

    @Override // z2.oO0o0000
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull Model model, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(model), new OooO0O0(model.toString(), this.OooO00o));
    }
}
