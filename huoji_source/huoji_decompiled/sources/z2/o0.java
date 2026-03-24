package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.Priority;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import java.io.File;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import z2.i0;

/* JADX INFO: loaded from: classes.dex */
public class o0 implements p0, o0oOOo<o0O0o<Drawable>> {
    public final o00Oo00 OoooOoO;
    public final Context OoooOoo;
    public final n0 Ooooo00;

    @GuardedBy("this")
    private final t0 Ooooo0o;

    @GuardedBy("this")
    private final s0 OooooO0;

    @GuardedBy("this")
    private final v0 OooooOO;
    private final Runnable OooooOo;
    private final i0 Oooooo;
    private final Handler Oooooo0;
    private final CopyOnWriteArrayList<o1<Object>> OoooooO;

    @GuardedBy("this")
    private p1 Ooooooo;
    private static final p1 o0OoOo0 = p1.o0000OO0(Bitmap.class).ooOO();
    private static final p1 ooOO = p1.o0000OO0(r.class).ooOO();
    private static final p1 o00O0O = p1.o0000OO(o0oo0000.OooO0OO).o0OO00O(Priority.LOW).o00000O0(true);

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0 o0Var = o0.this;
            o0Var.Ooooo00.OooO00o(o0Var);
        }
    }

    public static class OooO0O0 extends ViewTarget<View, Object> {
        public OooO0O0(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable x1<? super Object> x1Var) {
        }
    }

    public class OooO0OO implements i0.OooO00o {

        @GuardedBy("RequestManager.this")
        private final t0 OooO00o;

        public OooO0OO(@NonNull t0 t0Var) {
            this.OooO00o = t0Var;
        }

        @Override // z2.i0.OooO00o
        public void OooO00o(boolean z) {
            if (z) {
                synchronized (o0.this) {
                    this.OooO00o.OooO0oo();
                }
            }
        }
    }

    public o0(@NonNull o00Oo00 o00oo00, @NonNull n0 n0Var, @NonNull s0 s0Var, @NonNull Context context) {
        this(o00oo00, n0Var, s0Var, new t0(), o00oo00.OooO0oo(), context);
    }

    public o0(o00Oo00 o00oo00, n0 n0Var, s0 s0Var, t0 t0Var, j0 j0Var, Context context) {
        this.OooooOO = new v0();
        OooO00o oooO00o = new OooO00o();
        this.OooooOo = oooO00o;
        Handler handler = new Handler(Looper.getMainLooper());
        this.Oooooo0 = handler;
        this.OoooOoO = o00oo00;
        this.Ooooo00 = n0Var;
        this.OooooO0 = s0Var;
        this.Ooooo0o = t0Var;
        this.OoooOoo = context;
        i0 i0VarOooO00o = j0Var.OooO00o(context.getApplicationContext(), new OooO0OO(t0Var));
        this.Oooooo = i0VarOooO00o;
        if (t2.OooOOoo()) {
            handler.post(oooO00o);
        } else {
            n0Var.OooO00o(this);
        }
        n0Var.OooO00o(i0VarOooO00o);
        this.OoooooO = new CopyOnWriteArrayList<>(o00oo00.OooOO0().OooO0OO());
        Oooo0oO(o00oo00.OooOO0().OooO0Oo());
        o00oo00.OooOo0(this);
    }

    private synchronized void OoooO0(@NonNull p1 p1Var) {
        this.Ooooooo = this.Ooooooo.OooOO0O(p1Var);
    }

    private void OoooO00(@NonNull Target<?> target) {
        if (Oooo(target) || this.OoooOoO.OooOo0O(target) || target.getRequest() == null) {
            return;
        }
        l1 request = target.getRequest();
        target.setRequest(null);
        request.clear();
    }

    public o0 OooOO0(o1<Object> o1Var) {
        this.OoooooO.add(o1Var);
        return this;
    }

    @NonNull
    public synchronized o0 OooOO0O(@NonNull p1 p1Var) {
        OoooO0(p1Var);
        return this;
    }

    @NonNull
    @CheckResult
    public <ResourceType> o0O0o<ResourceType> OooOO0o(@NonNull Class<ResourceType> cls) {
        return new o0O0o<>(this.OoooOoO, this, cls, this.OoooOoo);
    }

    @NonNull
    @CheckResult
    public o0O0o<Drawable> OooOOO() {
        return OooOO0o(Drawable.class);
    }

    @NonNull
    @CheckResult
    public o0O0o<Bitmap> OooOOO0() {
        return OooOO0o(Bitmap.class).OooOO0O(o0OoOo0);
    }

    @NonNull
    @CheckResult
    public o0O0o<File> OooOOOO() {
        return OooOO0o(File.class).OooOO0O(p1.o000Ooo(true));
    }

    @NonNull
    @CheckResult
    public o0O0o<r> OooOOOo() {
        return OooOO0o(r.class).OooOO0O(ooOO);
    }

    public synchronized void OooOOo(@Nullable Target<?> target) {
        if (target == null) {
            return;
        }
        OoooO00(target);
    }

    public void OooOOo0(@NonNull View view) {
        OooOOo(new OooO0O0(view));
    }

    @NonNull
    @CheckResult
    public o0O0o<File> OooOOoo(@Nullable Object obj) {
        return OooOo00().OooO0oO(obj);
    }

    public synchronized boolean OooOo() {
        return this.Ooooo0o.OooO0o0();
    }

    public List<o1<Object>> OooOo0() {
        return this.OoooooO;
    }

    @NonNull
    @CheckResult
    public o0O0o<File> OooOo00() {
        return OooOO0o(File.class).OooOO0O(o00O0O);
    }

    public synchronized p1 OooOo0O() {
        return this.Ooooooo;
    }

    @NonNull
    public <T> o0O00000<?, T> OooOo0o(Class<T> cls) {
        return this.OoooOoO.OooOO0().OooO0o0(cls);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOoO, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0o0(@Nullable Drawable drawable) {
        return OooOOO().OooO0o0(drawable);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOoO0, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0o(@Nullable Bitmap bitmap) {
        return OooOOO().OooO0o(bitmap);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOoOO, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0O0(@Nullable Uri uri) {
        return OooOOO().OooO0O0(uri);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOoo, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0oo(@Nullable @DrawableRes @RawRes Integer num) {
        return OooOOO().OooO0oo(num);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOoo0, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0Oo(@Nullable File file) {
        return OooOOO().OooO0Oo(file);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOooO, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0oO(@Nullable Object obj) {
        return OooOOO().OooO0oO(obj);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooOooo, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO(@Nullable String str) {
        return OooOOO().OooO(str);
    }

    public synchronized boolean Oooo(@NonNull Target<?> target) {
        l1 request = target.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.Ooooo0o.OooO0OO(request)) {
            return false;
        }
        this.OooooOO.OooO0Oo(target);
        target.setRequest(null);
        return true;
    }

    public synchronized void Oooo0() {
        this.Ooooo0o.OooO0oO();
    }

    @Override // z2.o0oOOo
    @CheckResult
    @Deprecated
    /* JADX INFO: renamed from: Oooo000, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO00o(@Nullable URL url) {
        return OooOOO().OooO00o(url);
    }

    @Override // z2.o0oOOo
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: Oooo00O, reason: merged with bridge method [inline-methods] */
    public o0O0o<Drawable> OooO0OO(@Nullable byte[] bArr) {
        return OooOOO().OooO0OO(bArr);
    }

    public synchronized void Oooo00o() {
        this.Ooooo0o.OooO0o();
    }

    public synchronized void Oooo0O0() {
        Oooo0();
        Iterator<o0> it = this.OooooO0.OooO00o().iterator();
        while (it.hasNext()) {
            it.next().Oooo0();
        }
    }

    public synchronized void Oooo0OO() {
        this.Ooooo0o.OooO();
    }

    @NonNull
    public synchronized o0 Oooo0o(@NonNull p1 p1Var) {
        Oooo0oO(p1Var);
        return this;
    }

    public synchronized void Oooo0o0() {
        t2.OooO0O0();
        Oooo0OO();
        Iterator<o0> it = this.OooooO0.OooO00o().iterator();
        while (it.hasNext()) {
            it.next().Oooo0OO();
        }
    }

    public synchronized void Oooo0oO(@NonNull p1 p1Var) {
        this.Ooooooo = p1Var.clone().OooOO0o();
    }

    public synchronized void Oooo0oo(@NonNull Target<?> target, @NonNull l1 l1Var) {
        this.OooooOO.OooO0OO(target);
        this.Ooooo0o.OooOO0(l1Var);
    }

    @Override // z2.p0
    public synchronized void onDestroy() {
        this.OooooOO.onDestroy();
        Iterator<Target<?>> it = this.OooooOO.OooO0O0().iterator();
        while (it.hasNext()) {
            OooOOo(it.next());
        }
        this.OooooOO.OooO00o();
        this.Ooooo0o.OooO0Oo();
        this.Ooooo00.OooO0O0(this);
        this.Ooooo00.OooO0O0(this.Oooooo);
        this.Oooooo0.removeCallbacks(this.OooooOo);
        this.OoooOoO.OooOoOO(this);
    }

    @Override // z2.p0
    public synchronized void onStart() {
        Oooo0OO();
        this.OooooOO.onStart();
    }

    @Override // z2.p0
    public synchronized void onStop() {
        Oooo0();
        this.OooooOO.onStop();
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.Ooooo0o + ", treeNode=" + this.OooooO0 + "}";
    }
}
