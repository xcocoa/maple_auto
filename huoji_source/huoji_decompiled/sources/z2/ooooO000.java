package z2;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public abstract class ooooO000<Model> implements oO0o0000<Model, InputStream> {
    private final oO0o0000<oOo0o0oO, InputStream> OooO00o;

    @Nullable
    private final oO0Oo0o0<Model, oOo0o0oO> OooO0O0;

    public ooooO000(oO0o0000<oOo0o0oO, InputStream> oo0o0000) {
        this(oo0o0000, null);
    }

    public ooooO000(oO0o0000<oOo0o0oO, InputStream> oo0o0000, @Nullable oO0Oo0o0<Model, oOo0o0oO> oo0oo0o0) {
        this.OooO00o = oo0o0000;
        this.OooO0O0 = oo0oo0o0;
    }

    private static List<o0O0O0Oo> OooO0OO(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new oOo0o0oO(it.next()));
        }
        return arrayList;
    }

    @Override // z2.oO0o0000
    @Nullable
    public oO0o0000.OooO00o<InputStream> OooO0O0(@NonNull Model model, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        oO0Oo0o0<Model, oOo0o0oO> oo0oo0o0 = this.OooO0O0;
        oOo0o0oO ooo0o0ooOooO0O0 = oo0oo0o0 != null ? oo0oo0o0.OooO0O0(model, i, i2) : null;
        if (ooo0o0ooOooO0O0 == null) {
            String strOooO0o = OooO0o(model, i, i2, o0o0ooo0);
            if (TextUtils.isEmpty(strOooO0o)) {
                return null;
            }
            oOo0o0oO ooo0o0oo = new oOo0o0oO(strOooO0o, OooO0o0(model, i, i2, o0o0ooo0));
            oO0Oo0o0<Model, oOo0o0oO> oo0oo0o02 = this.OooO0O0;
            if (oo0oo0o02 != null) {
                oo0oo0o02.OooO0OO(model, i, i2, ooo0o0oo);
            }
            ooo0o0ooOooO0O0 = ooo0o0oo;
        }
        List<String> listOooO0Oo = OooO0Oo(model, i, i2, o0o0ooo0);
        oO0o0000.OooO00o<InputStream> oooO00oOooO0O0 = this.OooO00o.OooO0O0(ooo0o0ooOooO0O0, i, i2, o0o0ooo0);
        return (oooO00oOooO0O0 == null || listOooO0Oo.isEmpty()) ? oooO00oOooO0O0 : new oO0o0000.OooO00o<>(oooO00oOooO0O0.OooO00o, OooO0OO(listOooO0Oo), oooO00oOooO0O0.OooO0OO);
    }

    public List<String> OooO0Oo(Model model, int i, int i2, o0O0OOO0 o0o0ooo0) {
        return Collections.emptyList();
    }

    public abstract String OooO0o(Model model, int i, int i2, o0O0OOO0 o0o0ooo0);

    @Nullable
    public ooOOO0Oo OooO0o0(Model model, int i, int i2, o0O0OOO0 o0o0ooo0) {
        return ooOOO0Oo.OooO0O0;
    }
}
