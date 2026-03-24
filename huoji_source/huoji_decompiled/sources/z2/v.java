package z2;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.request.target.SimpleTarget;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class v {
    private o0O0o<Bitmap> OooO;
    private final o0O00OO OooO00o;
    private final Handler OooO0O0;
    private final List<OooO0O0> OooO0OO;
    public final o0 OooO0Oo;
    private boolean OooO0o;
    private final oO000o00 OooO0o0;
    private boolean OooO0oO;
    private boolean OooO0oo;
    private OooO00o OooOO0;
    private boolean OooOO0O;
    private OooO00o OooOO0o;
    private o0O0o000<Bitmap> OooOOO;
    private Bitmap OooOOO0;
    private OooO00o OooOOOO;

    @Nullable
    private OooO0o OooOOOo;

    @VisibleForTesting
    public static class OooO00o extends SimpleTarget<Bitmap> {
        private final Handler OoooOoO;
        public final int OoooOoo;
        private final long Ooooo00;
        private Bitmap Ooooo0o;

        public OooO00o(Handler handler, int i, long j) {
            this.OoooOoO = handler;
            this.OoooOoo = i;
            this.Ooooo00 = j;
        }

        public Bitmap OooO00o() {
            return this.Ooooo0o;
        }

        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable x1<? super Bitmap> x1Var) {
            this.Ooooo0o = bitmap;
            this.OoooOoO.sendMessageAtTime(this.OoooOoO.obtainMessage(1, this), this.Ooooo00);
        }

        @Override // com.bumptech.glide.request.target.Target
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable x1 x1Var) {
            onResourceReady((Bitmap) obj, (x1<? super Bitmap>) x1Var);
        }
    }

    public interface OooO0O0 {
        void OooO00o();
    }

    public class OooO0OO implements Handler.Callback {
        public static final int OoooOoo = 1;
        public static final int Ooooo00 = 2;

        public OooO0OO() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                v.this.OooOOOo((OooO00o) message.obj);
                return true;
            }
            if (i != 2) {
                return false;
            }
            v.this.OooO0Oo.OooOOo((OooO00o) message.obj);
            return false;
        }
    }

    @VisibleForTesting
    public interface OooO0o {
        void OooO00o();
    }

    public v(o00Oo00 o00oo00, o0O00OO o0o00oo, int i, int i2, o0O0o000<Bitmap> o0o0o000, Bitmap bitmap) {
        this(o00oo00.OooO0oO(), o00Oo00.OooOooO(o00oo00.OooO()), o0o00oo, null, OooOO0o(o00Oo00.OooOooO(o00oo00.OooO()), i, i2), o0o0o000, bitmap);
    }

    public v(oO000o00 oo000o00, o0 o0Var, o0O00OO o0o00oo, Handler handler, o0O0o<Bitmap> o0o0o, o0O0o000<Bitmap> o0o0o000, Bitmap bitmap) {
        this.OooO0OO = new ArrayList();
        this.OooO0Oo = o0Var;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new OooO0OO()) : handler;
        this.OooO0o0 = oo000o00;
        this.OooO0O0 = handler;
        this.OooO = o0o0o;
        this.OooO00o = o0o00oo;
        OooOOo(o0o0o000, bitmap);
    }

    private static o0O0O0Oo OooO0oO() {
        return new g2(Double.valueOf(Math.random()));
    }

    private int OooO0oo() {
        return t2.OooO0oO(OooO0OO().getWidth(), OooO0OO().getHeight(), OooO0OO().getConfig());
    }

    private static o0O0o<Bitmap> OooOO0o(o0 o0Var, int i, int i2) {
        return o0Var.OooOOO0().OooOO0O(p1.o0000OO(o0oo0000.OooO0O0).o0000oo(true).o00000O0(true).o0ooOoO(i, i2));
    }

    private void OooOOOO() {
        if (!this.OooO0o || this.OooO0oO) {
            return;
        }
        if (this.OooO0oo) {
            r2.OooO00o(this.OooOOOO == null, "Pending target must be null when starting from the first frame");
            this.OooO00o.OooO0oo();
            this.OooO0oo = false;
        }
        OooO00o oooO00o = this.OooOOOO;
        if (oooO00o != null) {
            this.OooOOOO = null;
            OooOOOo(oooO00o);
            return;
        }
        this.OooO0oO = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.OooO00o.OooO0o0());
        this.OooO00o.OooO0O0();
        this.OooOO0o = new OooO00o(this.OooO0O0, this.OooO00o.OooOO0(), jUptimeMillis);
        this.OooO.OooOO0O(p1.o000OoO(OooO0oO())).OooO0oO(this.OooO00o).o0000o0o(this.OooOO0o);
    }

    private void OooOOo0() {
        Bitmap bitmap = this.OooOOO0;
        if (bitmap != null) {
            this.OooO0o0.OooO0Oo(bitmap);
            this.OooOOO0 = null;
        }
    }

    private void OooOo0() {
        if (this.OooO0o) {
            return;
        }
        this.OooO0o = true;
        this.OooOO0O = false;
        OooOOOO();
    }

    private void OooOo0O() {
        this.OooO0o = false;
    }

    public o0O0o000<Bitmap> OooO() {
        return this.OooOOO;
    }

    public void OooO00o() {
        this.OooO0OO.clear();
        OooOOo0();
        OooOo0O();
        OooO00o oooO00o = this.OooOO0;
        if (oooO00o != null) {
            this.OooO0Oo.OooOOo(oooO00o);
            this.OooOO0 = null;
        }
        OooO00o oooO00o2 = this.OooOO0o;
        if (oooO00o2 != null) {
            this.OooO0Oo.OooOOo(oooO00o2);
            this.OooOO0o = null;
        }
        OooO00o oooO00o3 = this.OooOOOO;
        if (oooO00o3 != null) {
            this.OooO0Oo.OooOOo(oooO00o3);
            this.OooOOOO = null;
        }
        this.OooO00o.clear();
        this.OooOO0O = true;
    }

    public ByteBuffer OooO0O0() {
        return this.OooO00o.getData().asReadOnlyBuffer();
    }

    public Bitmap OooO0OO() {
        OooO00o oooO00o = this.OooOO0;
        return oooO00o != null ? oooO00o.OooO00o() : this.OooOOO0;
    }

    public int OooO0Oo() {
        OooO00o oooO00o = this.OooOO0;
        if (oooO00o != null) {
            return oooO00o.OoooOoo;
        }
        return -1;
    }

    public int OooO0o() {
        return this.OooO00o.OooO0Oo();
    }

    public Bitmap OooO0o0() {
        return this.OooOOO0;
    }

    public int OooOO0() {
        return OooO0OO().getHeight();
    }

    public int OooOO0O() {
        return this.OooO00o.OooOOOo();
    }

    public int OooOOO() {
        return OooO0OO().getWidth();
    }

    public int OooOOO0() {
        return this.OooO00o.OooOOOO() + OooO0oo();
    }

    @VisibleForTesting
    public void OooOOOo(OooO00o oooO00o) {
        OooO0o oooO0o = this.OooOOOo;
        if (oooO0o != null) {
            oooO0o.OooO00o();
        }
        this.OooO0oO = false;
        if (this.OooOO0O) {
            this.OooO0O0.obtainMessage(2, oooO00o).sendToTarget();
            return;
        }
        if (!this.OooO0o) {
            this.OooOOOO = oooO00o;
            return;
        }
        if (oooO00o.OooO00o() != null) {
            OooOOo0();
            OooO00o oooO00o2 = this.OooOO0;
            this.OooOO0 = oooO00o;
            for (int size = this.OooO0OO.size() - 1; size >= 0; size--) {
                this.OooO0OO.get(size).OooO00o();
            }
            if (oooO00o2 != null) {
                this.OooO0O0.obtainMessage(2, oooO00o2).sendToTarget();
            }
        }
        OooOOOO();
    }

    public void OooOOo(o0O0o000<Bitmap> o0o0o000, Bitmap bitmap) {
        this.OooOOO = (o0O0o000) r2.OooO0Oo(o0o0o000);
        this.OooOOO0 = (Bitmap) r2.OooO0Oo(bitmap);
        this.OooO = this.OooO.OooOO0O(new p1().o00000Oo(o0o0o000));
    }

    public void OooOOoo() {
        r2.OooO00o(!this.OooO0o, "Can't restart a running animation");
        this.OooO0oo = true;
        OooO00o oooO00o = this.OooOOOO;
        if (oooO00o != null) {
            this.OooO0Oo.OooOOo(oooO00o);
            this.OooOOOO = null;
        }
    }

    public void OooOo(OooO0O0 oooO0O0) {
        this.OooO0OO.remove(oooO0O0);
        if (this.OooO0OO.isEmpty()) {
            OooOo0O();
        }
    }

    @VisibleForTesting
    public void OooOo00(@Nullable OooO0o oooO0o) {
        this.OooOOOo = oooO0o;
    }

    public void OooOo0o(OooO0O0 oooO0O0) {
        if (this.OooOO0O) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.OooO0OO.contains(oooO0O0)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = this.OooO0OO.isEmpty();
        this.OooO0OO.add(oooO0O0);
        if (zIsEmpty) {
            OooOo0();
        }
    }
}
