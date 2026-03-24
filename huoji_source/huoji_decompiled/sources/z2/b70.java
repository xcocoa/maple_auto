package z2;

/* JADX INFO: loaded from: classes2.dex */
public class b70 extends u90 {
    @Override // z2.u90
    public b90 OooO0OO(Class<?> cls) throws Throwable {
        if (OooO0oo(cls)) {
            return new o70(cls);
        }
        return null;
    }

    public boolean OooO0oo(Class<?> cls) {
        return hw.class.isAssignableFrom(cls);
    }
}
