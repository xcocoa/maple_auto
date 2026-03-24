package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO00<Model> implements oO0o0000<Model, Model> {
    private static final oOO00<?> OooO00o = new oOO00<>();

    public static class OooO00o<Model> implements oO0oO000<Model, Model> {
        private static final OooO00o<?> OooO00o = new OooO00o<>();

        @Deprecated
        public OooO00o() {
        }

        public static <T> OooO00o<T> OooO0O0() {
            return (OooO00o<T>) OooO00o;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Model, Model> OooO0OO(oOO00000 ooo00000) {
            return oOO00.OooO0OO();
        }
    }

    public static class OooO0O0<Model> implements o0O0oo00<Model> {
        private final Model OoooOoO;

        public OooO0O0(Model model) {
            this.OoooOoO = model;
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<Model> OooO00o() {
            return (Class<Model>) this.OoooOoO.getClass();
        }

        @Override // z2.o0O0oo00
        public void OooO0O0() {
        }

        @Override // z2.o0O0oo00
        @NonNull
        public DataSource OooO0Oo() {
            return DataSource.LOCAL;
        }

        @Override // z2.o0O0oo00
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super Model> oooO00o) {
            oooO00o.OooO0o(this.OoooOoO);
        }

        @Override // z2.o0O0oo00
        public void cancel() {
        }
    }

    @Deprecated
    public oOO00() {
    }

    public static <T> oOO00<T> OooO0OO() {
        return (oOO00<T>) OooO00o;
    }

    @Override // z2.oO0o0000
    public boolean OooO00o(@NonNull Model model) {
        return true;
    }

    @Override // z2.oO0o0000
    public oO0o0000.OooO00o<Model> OooO0O0(@NonNull Model model, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(model), new OooO0O0(model));
    }
}
