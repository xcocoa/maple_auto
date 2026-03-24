package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class xi {
    public static int OooO00o(Context context, String str, String str2) {
        try {
            Class<?>[] classes = Class.forName(g6.OooOoOO + ".R").getClasses();
            Class<?> cls = null;
            int i = 0;
            while (true) {
                if (i >= classes.length) {
                    break;
                }
                if (classes[i].getName().split("\\$")[1].equals(str)) {
                    cls = classes[i];
                    break;
                }
                i++;
            }
            if (cls != null) {
                return cls.getField(str2).getInt(cls);
            }
            return 0;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return 0;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return 0;
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
            return 0;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return 0;
        }
    }
}
