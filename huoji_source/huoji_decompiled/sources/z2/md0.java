package z2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class md0 extends Handler {
    public static final int OooO0O0 = -1;
    private final WeakReference<ed0> OooO00o;

    public md0(ed0 ed0Var) {
        super(Looper.getMainLooper());
        this.OooO00o = new WeakReference<>(ed0Var);
    }

    @Override // android.os.Handler
    public void handleMessage(@NonNull Message message) {
        ed0 ed0Var = this.OooO00o.get();
        if (ed0Var == null) {
            return;
        }
        if (message.what == -1) {
            ed0Var.invalidateSelf();
            return;
        }
        Iterator<ad0> it = ed0Var.Oooooo0.iterator();
        while (it.hasNext()) {
            it.next().OooO00o(message.what);
        }
    }
}
