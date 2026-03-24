package z2;

import androidx.annotation.NonNull;
import java.io.File;
import z2.oO00Oo0;

/* JADX INFO: loaded from: classes.dex */
public class o0OOOO0o<DataType> implements oO00Oo0.OooO0O0 {
    private final o0oO0O0o<DataType> OooO00o;
    private final DataType OooO0O0;
    private final o0O0OOO0 OooO0OO;

    public o0OOOO0o(o0oO0O0o<DataType> o0oo0o0o, DataType datatype, o0O0OOO0 o0o0ooo0) {
        this.OooO00o = o0oo0o0o;
        this.OooO0O0 = datatype;
        this.OooO0OO = o0o0ooo0;
    }

    @Override // z2.oO00Oo0.OooO0O0
    public boolean OooO00o(@NonNull File file) {
        return this.OooO00o.OooO00o(this.OooO0O0, file, this.OooO0OO);
    }
}
