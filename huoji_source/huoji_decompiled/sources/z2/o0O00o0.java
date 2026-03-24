package z2;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Registry;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o0O00o0 extends ContextWrapper {

    @VisibleForTesting
    public static final o0O00000<?, ?> OooOO0 = new o00OOOOo();
    private final int OooO;
    private final oO0OOo0o OooO00o;
    private final Registry OooO0O0;
    private final ImageViewTargetFactory OooO0OO;
    private final p1 OooO0Oo;
    private final Map<Class<?>, o0O00000<?, ?>> OooO0o;
    private final List<o1<Object>> OooO0o0;
    private final ooo0Oo0 OooO0oO;
    private final boolean OooO0oo;

    public o0O00o0(@NonNull Context context, @NonNull oO0OOo0o oo0ooo0o, @NonNull Registry registry, @NonNull ImageViewTargetFactory imageViewTargetFactory, @NonNull p1 p1Var, @NonNull Map<Class<?>, o0O00000<?, ?>> map, @NonNull List<o1<Object>> list, @NonNull ooo0Oo0 ooo0oo0, boolean z, int i) {
        super(context.getApplicationContext());
        this.OooO00o = oo0ooo0o;
        this.OooO0O0 = registry;
        this.OooO0OO = imageViewTargetFactory;
        this.OooO0Oo = p1Var;
        this.OooO0o0 = list;
        this.OooO0o = map;
        this.OooO0oO = ooo0oo0;
        this.OooO0oo = z;
        this.OooO = i;
    }

    public boolean OooO() {
        return this.OooO0oo;
    }

    @NonNull
    public <X> ViewTarget<ImageView, X> OooO00o(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.OooO0OO.buildTarget(imageView, cls);
    }

    @NonNull
    public oO0OOo0o OooO0O0() {
        return this.OooO00o;
    }

    public List<o1<Object>> OooO0OO() {
        return this.OooO0o0;
    }

    public p1 OooO0Oo() {
        return this.OooO0Oo;
    }

    @NonNull
    public ooo0Oo0 OooO0o() {
        return this.OooO0oO;
    }

    @NonNull
    public <T> o0O00000<?, T> OooO0o0(@NonNull Class<T> cls) {
        o0O00000<?, T> o0o00000 = (o0O00000) this.OooO0o.get(cls);
        if (o0o00000 == null) {
            for (Map.Entry<Class<?>, o0O00000<?, ?>> entry : this.OooO0o.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    o0o00000 = (o0O00000) entry.getValue();
                }
            }
        }
        return o0o00000 == null ? (o0O00000<?, T>) OooOO0 : o0o00000;
    }

    public int OooO0oO() {
        return this.OooO;
    }

    @NonNull
    public Registry OooO0oo() {
        return this.OooO0O0;
    }
}
