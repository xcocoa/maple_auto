package com.anythink.expressad.exoplayer.d;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.d.c;
import com.anythink.expressad.exoplayer.d.e;
import com.anythink.expressad.exoplayer.d.f;
import com.anythink.expressad.exoplayer.d.i;
import com.anythink.expressad.exoplayer.d.j;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(18)
public final class b<T extends i> implements f<T> {
    private static final String i = "DefaultDrmSession";
    private static final int j = 0;
    private static final int k = 1;
    private static final int l = 60;
    private byte[] A;
    private Object B;
    private Object C;
    public final n a;
    public final UUID b;
    public final b<T>.HandlerC0110b c;
    private final j<T> m;
    private final c<T> n;
    private final e.a o;
    private final int p;
    private final HashMap<String, String> q;
    private final c.a r;
    private final int s;
    private int t;
    private int u;
    private HandlerThread v;
    private b<T>.a w;
    private T x;
    private f.a y;
    private byte[] z;

    @SuppressLint({"HandlerLeak"})
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        private static long a(int i) {
            return Math.min((i - 1) * 1000, 5000);
        }

        private boolean a(Message message) {
            int i;
            if (!(message.arg1 == 1) || (i = message.arg2 + 1) > b.this.s) {
                return false;
            }
            Message messageObtain = Message.obtain(message);
            messageObtain.arg2 = i;
            sendMessageDelayed(messageObtain, Math.min((i - 1) * 1000, 5000));
            return true;
        }

        public final void a(int i, Object obj, boolean z) {
            obtainMessage(i, z ? 1 : 0, 0, obj).sendToTarget();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i;
            Object objA;
            Object obj = message.obj;
            boolean z = true;
            try {
                int i2 = message.what;
                if (i2 == 0) {
                    objA = b.this.a.a();
                } else {
                    if (i2 != 1) {
                        throw new RuntimeException();
                    }
                    Pair pair = (Pair) obj;
                    Object obj2 = pair.first;
                    Object obj3 = pair.second;
                    objA = b.this.a.b();
                }
            } catch (Exception e) {
                if ((message.arg1 == 1) && (i = message.arg2 + 1) <= b.this.s) {
                    Message messageObtain = Message.obtain(message);
                    messageObtain.arg2 = i;
                    sendMessageDelayed(messageObtain, Math.min((i - 1) * 1000, 5000));
                } else {
                    z = false;
                }
                if (z) {
                    return;
                } else {
                    objA = e;
                }
            }
            b.this.c.obtainMessage(message.what, Pair.create(obj, objA)).sendToTarget();
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.d.b$b, reason: collision with other inner class name */
    @SuppressLint({"HandlerLeak"})
    public class HandlerC0110b extends Handler {
        public HandlerC0110b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                b.a(b.this, obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                b.b(b.this, obj, obj2);
            }
        }
    }

    public interface c<T extends i> {
        void a();

        void a(b<T> bVar);

        void a(Exception exc);
    }

    public b(UUID uuid, j<T> jVar, c<T> cVar, @Nullable e.a aVar, int i2, @Nullable byte[] bArr, HashMap<String, String> map, n nVar, Looper looper, c.a aVar2, int i3) {
        this.b = uuid;
        this.n = cVar;
        this.m = jVar;
        this.p = i2;
        this.A = bArr;
        this.o = bArr != null ? null : aVar;
        this.q = map;
        this.a = nVar;
        this.s = i3;
        this.r = aVar2;
        this.t = 2;
        this.c = new HandlerC0110b(looper);
        HandlerThread handlerThread = new HandlerThread("DrmRequestHandler");
        this.v = handlerThread;
        handlerThread.start();
        this.w = new a(this.v.getLooper());
    }

    private void a(int i2, boolean z) {
        String str;
        byte[] bArr;
        String str2;
        byte[] bArr2 = i2 == 3 ? this.A : this.z;
        e.a aVar = this.o;
        if (aVar != null) {
            byte[] bArr3 = aVar.c;
            String str3 = aVar.b;
            str = aVar.a;
            str2 = str3;
            bArr = bArr3;
        } else {
            str = null;
            bArr = null;
            str2 = null;
        }
        try {
            Pair pairCreate = Pair.create(this.m.a(bArr2, bArr, str2, i2, this.q), str);
            this.B = pairCreate;
            this.w.a(1, pairCreate, z);
        } catch (Exception e) {
            b(e);
        }
    }

    public static /* synthetic */ void a(b bVar, Object obj, Object obj2) {
        if (obj == bVar.C) {
            if (bVar.t == 2 || bVar.n()) {
                bVar.C = null;
                if (obj2 instanceof Exception) {
                    bVar.n.a((Exception) obj2);
                    return;
                }
                try {
                    bVar.m.b((byte[]) obj2);
                    bVar.n.a();
                } catch (Exception e) {
                    bVar.n.a(e);
                }
            }
        }
    }

    private void a(Object obj, Object obj2) {
        if (obj == this.C) {
            if (this.t == 2 || n()) {
                this.C = null;
                if (obj2 instanceof Exception) {
                    this.n.a((Exception) obj2);
                    return;
                }
                try {
                    this.m.b((byte[]) obj2);
                    this.n.a();
                } catch (Exception e) {
                    this.n.a(e);
                }
            }
        }
    }

    private void a(boolean z) {
        int i2 = this.p;
        if (i2 != 0 && i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3 && k()) {
                    a(3, z);
                    return;
                }
                return;
            }
            if (this.A == null) {
                a(2, z);
                return;
            } else {
                if (k()) {
                    a(2, z);
                    return;
                }
                return;
            }
        }
        if (this.A == null) {
            a(1, z);
            return;
        }
        if (this.t == 4 || k()) {
            long jL = l();
            if (this.p == 0 && jL <= 60) {
                Log.d(i, "Offline license has expired or will expire soon. Remaining seconds: ".concat(String.valueOf(jL)));
                a(2, z);
            } else if (jL <= 0) {
                c(new m());
            } else {
                this.t = 4;
                this.r.b();
            }
        }
    }

    public static /* synthetic */ void b(b bVar, Object obj, Object obj2) {
        if (obj == bVar.B && bVar.n()) {
            bVar.B = null;
            if (obj2 instanceof Exception) {
                bVar.b((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (bVar.p == 3) {
                    bVar.m.a(bVar.A, bArr);
                    bVar.r.c();
                    return;
                }
                byte[] bArrA = bVar.m.a(bVar.z, bArr);
                int i2 = bVar.p;
                if ((i2 == 2 || (i2 == 0 && bVar.A != null)) && bArrA != null && bArrA.length != 0) {
                    bVar.A = bArrA;
                }
                bVar.t = 4;
                bVar.r.a();
            } catch (Exception e) {
                bVar.b(e);
            }
        }
    }

    private void b(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.n.a(this);
        } else {
            c(exc);
        }
    }

    private void b(Object obj, Object obj2) {
        if (obj == this.B && n()) {
            this.B = null;
            if (obj2 instanceof Exception) {
                b((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.p == 3) {
                    this.m.a(this.A, bArr);
                    this.r.c();
                    return;
                }
                byte[] bArrA = this.m.a(this.z, bArr);
                int i2 = this.p;
                if ((i2 == 2 || (i2 == 0 && this.A != null)) && bArrA != null && bArrA.length != 0) {
                    this.A = bArrA;
                }
                this.t = 4;
                this.r.a();
            } catch (Exception e) {
                b(e);
            }
        }
    }

    private void c(Exception exc) {
        this.y = new f.a(exc);
        this.r.a(exc);
        if (this.t != 4) {
            this.t = 1;
        }
    }

    private boolean j() {
        if (n()) {
            return true;
        }
        try {
            byte[] bArrA = this.m.a();
            this.z = bArrA;
            this.x = (T) this.m.d(bArrA);
            this.t = 3;
            return true;
        } catch (Exception e) {
            c(e);
            return false;
        }
    }

    private boolean k() {
        try {
            this.m.b(this.z, this.A);
            return true;
        } catch (Exception e) {
            Log.e(i, "Error trying to restore Widevine keys.", e);
            c(e);
            return false;
        }
    }

    private long l() {
        if (!com.anythink.expressad.exoplayer.b.bk.equals(this.b)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> pairA = p.a(this);
        return Math.min(((Long) pairA.first).longValue(), ((Long) pairA.second).longValue());
    }

    private void m() {
        if (this.t == 4) {
            this.t = 3;
            c(new m());
        }
    }

    private boolean n() {
        int i2 = this.t;
        return i2 == 3 || i2 == 4;
    }

    public final void a() {
        int i2 = this.u + 1;
        this.u = i2;
        if (i2 == 1 && this.t != 1 && j()) {
            a(true);
        }
    }

    public final void a(int i2) {
        if (n()) {
            if (i2 == 1) {
                this.t = 3;
                this.n.a(this);
            } else if (i2 == 2) {
                a(false);
            } else if (i2 == 3 && this.t == 4) {
                this.t = 3;
                c(new m());
            }
        }
    }

    public final void a(Exception exc) {
        c(exc);
    }

    public final boolean a(byte[] bArr) {
        e.a aVar = this.o;
        return Arrays.equals(aVar != null ? aVar.c : null, bArr);
    }

    public final boolean b() {
        int i2 = this.u - 1;
        this.u = i2;
        if (i2 != 0) {
            return false;
        }
        this.t = 0;
        this.c.removeCallbacksAndMessages(null);
        this.w.removeCallbacksAndMessages(null);
        this.w = null;
        this.v.quit();
        this.v = null;
        this.x = null;
        this.y = null;
        this.B = null;
        this.C = null;
        byte[] bArr = this.z;
        if (bArr != null) {
            this.m.a(bArr);
            this.z = null;
        }
        return true;
    }

    public final boolean b(byte[] bArr) {
        return Arrays.equals(this.z, bArr);
    }

    public final void c() {
        j.h hVarB = this.m.b();
        this.C = hVarB;
        this.w.a(0, hVarB, true);
    }

    public final void d() {
        if (j()) {
            a(true);
        }
    }

    @Override // com.anythink.expressad.exoplayer.d.f
    public final int e() {
        return this.t;
    }

    @Override // com.anythink.expressad.exoplayer.d.f
    public final f.a f() {
        if (this.t == 1) {
            return this.y;
        }
        return null;
    }

    @Override // com.anythink.expressad.exoplayer.d.f
    public final T g() {
        return this.x;
    }

    @Override // com.anythink.expressad.exoplayer.d.f
    public final Map<String, String> h() {
        byte[] bArr = this.z;
        if (bArr == null) {
            return null;
        }
        return this.m.c(bArr);
    }

    @Override // com.anythink.expressad.exoplayer.d.f
    public final byte[] i() {
        return this.A;
    }
}
