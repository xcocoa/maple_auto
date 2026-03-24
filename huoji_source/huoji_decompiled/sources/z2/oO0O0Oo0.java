package z2;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO0O0Oo0<Data> implements oO0o0000<File, Data> {
    private static final String OooO0O0 = "FileLoader";
    private final OooO0o<Data> OooO00o;

    public static class OooO extends OooO00o<InputStream> {

        public class OooO00o implements OooO0o<InputStream> {
            @Override // z2.oO0O0Oo0.OooO0o
            public Class<InputStream> OooO00o() {
                return InputStream.class;
            }

            @Override // z2.oO0O0Oo0.OooO0o
            /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
            public void OooO0O0(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // z2.oO0O0Oo0.OooO0o
            /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
            public InputStream OooO0OO(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }
        }

        public OooO() {
            super(new OooO00o());
        }
    }

    public static class OooO00o<Data> implements oO0oO000<File, Data> {
        private final OooO0o<Data> OooO00o;

        public OooO00o(OooO0o<Data> oooO0o) {
            this.OooO00o = oooO0o;
        }

        @Override // z2.oO0oO000
        public final void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public final oO0o0000<File, Data> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oO0O0Oo0(this.OooO00o);
        }
    }

    public static class OooO0O0 extends OooO00o<ParcelFileDescriptor> {

        public class OooO00o implements OooO0o<ParcelFileDescriptor> {
            @Override // z2.oO0O0Oo0.OooO0o
            public Class<ParcelFileDescriptor> OooO00o() {
                return ParcelFileDescriptor.class;
            }

            @Override // z2.oO0O0Oo0.OooO0o
            /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
            public void OooO0O0(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override // z2.oO0O0Oo0.OooO0o
            /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
            public ParcelFileDescriptor OooO0OO(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public OooO0O0() {
            super(new OooO00o());
        }
    }

    public static final class OooO0OO<Data> implements o0O0oo00<Data> {
        private final File OoooOoO;
        private final OooO0o<Data> OoooOoo;
        private Data Ooooo00;

        public OooO0OO(File file, OooO0o<Data> oooO0o) {
            this.OoooOoO = file;
            this.OoooOoo = oooO0o;
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<Data> OooO00o() {
            return this.OoooOoo.OooO00o();
        }

        @Override // z2.o0O0oo00
        public void OooO0O0() {
            Data data = this.Ooooo00;
            if (data != null) {
                try {
                    this.OoooOoo.OooO0O0(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // z2.o0O0oo00
        @NonNull
        public DataSource OooO0Oo() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [Data, java.lang.Object] */
        @Override // z2.o0O0oo00
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super Data> oooO00o) {
            try {
                Data dataOooO0OO = this.OoooOoo.OooO0OO(this.OoooOoO);
                this.Ooooo00 = dataOooO0OO;
                oooO00o.OooO0o(dataOooO0OO);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable(oO0O0Oo0.OooO0O0, 3)) {
                    Log.d(oO0O0Oo0.OooO0O0, "Failed to open file", e);
                }
                oooO00o.OooO0OO(e);
            }
        }

        @Override // z2.o0O0oo00
        public void cancel() {
        }
    }

    public interface OooO0o<Data> {
        Class<Data> OooO00o();

        void OooO0O0(Data data) throws IOException;

        Data OooO0OO(File file) throws FileNotFoundException;
    }

    public oO0O0Oo0(OooO0o<Data> oooO0o) {
        this.OooO00o = oooO0o;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull File file, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(file), new OooO0OO(file, this.OooO00o));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull File file) {
        return true;
    }
}
