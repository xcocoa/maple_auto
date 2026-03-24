package z2;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class od0 implements Drawable.Callback {
    private final CopyOnWriteArrayList<OooO00o> OoooOoO;
    private final boolean OoooOoo;

    public static final class OooO00o extends WeakReference<Drawable.Callback> {
        public OooO00o(Drawable.Callback callback) {
            super(callback);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && OooO00o.class == obj.getClass() && get() == ((OooO00o) obj).get();
        }

        public int hashCode() {
            Drawable.Callback callback = get();
            if (callback != null) {
                return callback.hashCode();
            }
            return 0;
        }
    }

    public od0() {
        this(false);
    }

    public od0(boolean z) {
        this.OoooOoO = new CopyOnWriteArrayList<>();
        this.OoooOoo = z;
    }

    public void OooO00o(Drawable.Callback callback) {
        for (int i = 0; i < this.OoooOoO.size(); i++) {
            OooO00o oooO00o = this.OoooOoO.get(i);
            if (oooO00o.get() == null) {
                this.OoooOoO.remove(oooO00o);
            }
        }
        this.OoooOoO.addIfAbsent(new OooO00o(callback));
    }

    public void OooO0O0(Drawable.Callback callback) {
        for (int i = 0; i < this.OoooOoO.size(); i++) {
            OooO00o oooO00o = this.OoooOoO.get(i);
            Drawable.Callback callback2 = oooO00o.get();
            if (callback2 == null || callback2 == callback) {
                this.OoooOoO.remove(oooO00o);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        for (int i = 0; i < this.OoooOoO.size(); i++) {
            OooO00o oooO00o = this.OoooOoO.get(i);
            Drawable.Callback callback = oooO00o.get();
            if (callback == null) {
                this.OoooOoO.remove(oooO00o);
            } else if (this.OoooOoo && (callback instanceof View)) {
                ((View) callback).invalidate();
            } else {
                callback.invalidateDrawable(drawable);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        for (int i = 0; i < this.OoooOoO.size(); i++) {
            OooO00o oooO00o = this.OoooOoO.get(i);
            Drawable.Callback callback = oooO00o.get();
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            } else {
                this.OoooOoO.remove(oooO00o);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        for (int i = 0; i < this.OoooOoO.size(); i++) {
            OooO00o oooO00o = this.OoooOoO.get(i);
            Drawable.Callback callback = oooO00o.get();
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            } else {
                this.OoooOoO.remove(oooO00o);
            }
        }
    }
}
