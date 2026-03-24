package z2;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Registry;
import com.cyjh.elfin.base.glidemodule.CustomGlideModule;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class o0o0Oo extends o00OOO0O {
    private final CustomGlideModule OooO00o = new CustomGlideModule();

    public o0o0Oo() {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.cyjh.elfin.base.glidemodule.CustomGlideModule");
        }
    }

    @Override // z2.w0, z2.x0
    public void OooO00o(@NonNull Context context, @NonNull o0oOO o0ooo) {
        this.OooO00o.OooO00o(context, o0ooo);
    }

    @Override // z2.z0, z2.b1
    public void OooO0O0(@NonNull Context context, @NonNull o00Oo00 o00oo00, @NonNull Registry registry) {
        this.OooO00o.OooO0O0(context, o00oo00, registry);
    }

    @Override // z2.w0
    public boolean OooO0OO() {
        return this.OooO00o.OooO0OO();
    }

    @Override // z2.o00OOO0O
    @NonNull
    public Set<Class<?>> OooO0Oo() {
        return Collections.emptySet();
    }

    @Override // z2.o00OOO0O
    @NonNull
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public o00OOOO0 OooO0o0() {
        return new o00OOOO0();
    }
}
