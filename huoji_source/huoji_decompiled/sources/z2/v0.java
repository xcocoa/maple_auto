package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.request.target.Target;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class v0 implements p0 {
    private final Set<Target<?>> OoooOoO = Collections.newSetFromMap(new WeakHashMap());

    public void OooO00o() {
        this.OoooOoO.clear();
    }

    @NonNull
    public List<Target<?>> OooO0O0() {
        return t2.OooOO0O(this.OoooOoO);
    }

    public void OooO0OO(@NonNull Target<?> target) {
        this.OoooOoO.add(target);
    }

    public void OooO0Oo(@NonNull Target<?> target) {
        this.OoooOoO.remove(target);
    }

    @Override // z2.p0
    public void onDestroy() {
        Iterator it = t2.OooOO0O(this.OoooOoO).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onDestroy();
        }
    }

    @Override // z2.p0
    public void onStart() {
        Iterator it = t2.OooOO0O(this.OoooOoO).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStart();
        }
    }

    @Override // z2.p0
    public void onStop() {
        Iterator it = t2.OooOO0O(this.OoooOoO).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStop();
        }
    }
}
