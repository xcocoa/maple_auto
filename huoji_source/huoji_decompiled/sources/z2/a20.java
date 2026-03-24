package z2;

import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class a20 {
    public final String OooO00o;
    public final ThreadMode OooO0O0;
    public final Class<?> OooO0OO;
    public final int OooO0Oo;
    public final boolean OooO0o0;

    public a20(String str, Class<?> cls) {
        this(str, cls, ThreadMode.POSTING, 0, false);
    }

    public a20(String str, Class<?> cls, ThreadMode threadMode) {
        this(str, cls, threadMode, 0, false);
    }

    public a20(String str, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.OooO00o = str;
        this.OooO0O0 = threadMode;
        this.OooO0OO = cls;
        this.OooO0Oo = i;
        this.OooO0o0 = z;
    }
}
