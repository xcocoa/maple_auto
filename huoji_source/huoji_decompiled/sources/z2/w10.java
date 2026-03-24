package z2;

import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w10 implements y10 {
    private final Class OooO00o;
    private final Class<? extends y10> OooO0O0;
    private final boolean OooO0OO;

    public w10(Class cls, Class<? extends y10> cls2, boolean z) {
        this.OooO00o = cls;
        this.OooO0O0 = cls2;
        this.OooO0OO = z;
    }

    @Override // z2.y10
    public y10 OooO0O0() {
        Class<? extends y10> cls = this.OooO0O0;
        if (cls == null) {
            return null;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // z2.y10
    public boolean OooO0OO() {
        return this.OooO0OO;
    }

    @Override // z2.y10
    public Class OooO0Oo() {
        return this.OooO00o;
    }

    public t10 OooO0o(String str, Class<?> cls, ThreadMode threadMode) {
        return OooO0oO(str, cls, threadMode, 0, false);
    }

    public t10 OooO0o0(String str, Class<?> cls) {
        return OooO0oO(str, cls, ThreadMode.POSTING, 0, false);
    }

    public t10 OooO0oO(String str, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        try {
            return new t10(this.OooO00o.getDeclaredMethod(str, cls), cls, threadMode, i, z);
        } catch (NoSuchMethodException e) {
            throw new EventBusException("Could not find subscriber method in " + this.OooO00o + ". Maybe a missing ProGuard rule?", e);
        }
    }
}
