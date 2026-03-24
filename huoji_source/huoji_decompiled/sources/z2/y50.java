package z2;

import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class y50 extends o90 {
    public y50(Class<?> cls, u90 u90Var) throws Throwable {
        super(u90Var, cls, Oooo0O0(cls.getClasses()));
    }

    private static Class<?>[] Oooo0O0(Class<?>[] clsArr) {
        ArrayList arrayList = new ArrayList(clsArr.length);
        for (Class<?> cls : clsArr) {
            if (!Modifier.isAbstract(cls.getModifiers())) {
                arrayList.add(cls);
            }
        }
        return (Class[]) arrayList.toArray(new Class[arrayList.size()]);
    }
}
