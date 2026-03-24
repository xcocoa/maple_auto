package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ff {
    public static boolean OooO00o(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public static boolean OooO0O0(Object[] objArr) {
        for (Object obj : objArr) {
            if (obj == null) {
                return true;
            }
        }
        return false;
    }
}
