package z2;

/* JADX INFO: loaded from: classes2.dex */
public class e70 extends u90 {
    @Override // z2.u90
    public b90 OooO0OO(Class<?> cls) throws Throwable {
        if (OooO0oo(cls)) {
            return new s70(cls);
        }
        return null;
    }

    public boolean OooO0oo(Class<?> cls) {
        try {
            cls.getMethod(mw.OooO0O0, new Class[0]);
            return true;
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }
}
