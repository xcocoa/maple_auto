package z2;

import org.junit.runner.Description;
import org.junit.runner.FilterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class x80 {
    public static c90 OooO00o(Class<? extends FilterFactory> cls, y80 y80Var) throws FilterFactory.FilterNotCreatedException {
        return OooO0OO(cls).OooO00o(y80Var);
    }

    public static c90 OooO0O0(String str, y80 y80Var) throws FilterFactory.FilterNotCreatedException {
        return OooO0Oo(str).OooO00o(y80Var);
    }

    public static FilterFactory OooO0OO(Class<? extends FilterFactory> cls) throws FilterFactory.FilterNotCreatedException {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new FilterFactory.FilterNotCreatedException(e);
        }
    }

    public static FilterFactory OooO0Oo(String str) throws FilterFactory.FilterNotCreatedException {
        try {
            return OooO0OO(o60.OooO00o(str).asSubclass(FilterFactory.class));
        } catch (Exception e) {
            throw new FilterFactory.FilterNotCreatedException(e);
        }
    }

    public static c90 OooO0o0(z80 z80Var, String str) throws FilterFactory.FilterNotCreatedException {
        Description description = z80Var.OooO0oo().getDescription();
        String[] strArrSplit = str.contains("=") ? str.split("=", 2) : new String[]{str, ""};
        return OooO0O0(strArrSplit[0], new y80(description, strArrSplit[1]));
    }
}
