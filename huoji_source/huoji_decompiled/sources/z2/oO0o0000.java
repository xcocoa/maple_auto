package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface oO0o0000<Model, Data> {

    public static class OooO00o<Data> {
        public final o0O0O0Oo OooO00o;
        public final List<o0O0O0Oo> OooO0O0;
        public final o0O0oo00<Data> OooO0OO;

        public OooO00o(@NonNull o0O0O0Oo o0o0o0oo, @NonNull List<o0O0O0Oo> list, @NonNull o0O0oo00<Data> o0o0oo00) {
            this.OooO00o = (o0O0O0Oo) r2.OooO0Oo(o0o0o0oo);
            this.OooO0O0 = (List) r2.OooO0Oo(list);
            this.OooO0OO = (o0O0oo00) r2.OooO0Oo(o0o0oo00);
        }

        public OooO00o(@NonNull o0O0O0Oo o0o0o0oo, @NonNull o0O0oo00<Data> o0o0oo00) {
            this(o0o0o0oo, Collections.emptyList(), o0o0oo00);
        }
    }

    boolean OooO00o(@NonNull Model model);

    @Nullable
    OooO00o<Data> OooO0O0(@NonNull Model model, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0);
}
