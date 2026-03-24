package z2;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.LitePalApplication;
import org.litepal.exceptions.LitePalSupportException;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public class na0 {
    private static Handler OooO00o = new Handler(Looper.getMainLooper());
    private static dc0 OooO0O0 = null;

    public static class OooO implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ ContentValues OoooOoo;
        public final /* synthetic */ long Ooooo00;
        public final /* synthetic */ hb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO(Class cls, ContentValues contentValues, long j, hb0 hb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = contentValues;
            this.Ooooo00 = j;
            this.Ooooo0o = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iOoooooO = na0.OoooooO(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iOoooooO));
                }
            }
        }
    }

    public static class OooO00o implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ db0 OoooOoo;

        /* JADX INFO: renamed from: z2.na0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0252OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public RunnableC0252OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO00o.this.OoooOoo.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO00o(String str, db0 db0Var) {
            this.OoooOoO = str;
            this.OoooOoo = db0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iOooO0oO = na0.OooO0oO(this.OoooOoO);
                if (this.OoooOoo.OooO0OO() != null) {
                    na0.Oooo0O0().post(new RunnableC0252OooO00o(iOooO0oO));
                }
            }
        }
    }

    public static class OooO0O0 implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ long OoooOoo;
        public final /* synthetic */ hb0 Ooooo00;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0O0.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0O0(Class cls, long j, hb0 hb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = j;
            this.Ooooo00 = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iOooOO0 = na0.OooOO0(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iOooOO0));
                }
            }
        }
    }

    public static class OooO0OO implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ String[] OoooOoo;
        public final /* synthetic */ hb0 Ooooo00;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0OO.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0OO(Class cls, String[] strArr, hb0 hb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = strArr;
            this.Ooooo00 = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iOooOO0O = na0.OooOO0O(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iOooOO0O));
                }
            }
        }
    }

    public static class OooO0o implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String[] OoooOoo;
        public final /* synthetic */ hb0 Ooooo00;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0o.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0o(String str, String[] strArr, hb0 hb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = strArr;
            this.Ooooo00 = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iOooOO0o = na0.OooOO0o(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iOooOO0o));
                }
            }
        }
    }

    public static class OooOO0 implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ ContentValues OoooOoo;
        public final /* synthetic */ String[] Ooooo00;
        public final /* synthetic */ hb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOO0.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOO0(String str, ContentValues contentValues, String[] strArr, hb0 hb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = contentValues;
            this.Ooooo00 = strArr;
            this.Ooooo0o = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iO0OoOo0 = na0.o0OoOo0(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iO0OoOo0));
                }
            }
        }
    }

    public static class OooOO0O implements Runnable {
        public final /* synthetic */ Collection OoooOoO;
        public final /* synthetic */ gb0 OoooOoo;

        public class OooO00o implements Runnable {
            public final /* synthetic */ boolean OoooOoO;

            public OooO00o(boolean z) {
                this.OoooOoO = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOO0O.this.OoooOoo.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOO0O(Collection collection, gb0 gb0Var) {
            this.OoooOoO = collection;
            this.OoooOoo = gb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            synchronized (ua0.class) {
                try {
                    na0.Ooooo00(this.OoooOoO);
                    z = true;
                } catch (Exception unused) {
                    z = false;
                }
                if (this.OoooOoo.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(z));
                }
            }
        }
    }

    public static class OooOOO implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String OoooOoo;
        public final /* synthetic */ Class Ooooo00;
        public final /* synthetic */ eb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO00o(Object obj) {
                this.OoooOoO = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOOO.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOOO(String str, String str2, Class cls, eb0 eb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cls;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOoooO00 = na0.OoooO00(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOoooO00));
                }
            }
        }
    }

    public static class OooOOO0 implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String OoooOoo;
        public final /* synthetic */ cb0 Ooooo00;

        public class OooO00o implements Runnable {
            public final /* synthetic */ double OoooOoO;

            public OooO00o(double d) {
                this.OoooOoO = d;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOOO0.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOOO0(String str, String str2, cb0 cb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                double dOooO0OO = na0.OooO0OO(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(dOooO0OO));
                }
            }
        }
    }

    public static class OooOOOO implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String OoooOoo;
        public final /* synthetic */ Class Ooooo00;
        public final /* synthetic */ eb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO00o(Object obj) {
                this.OoooOoO = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOOOO.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOOOO(String str, String str2, Class cls, eb0 eb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cls;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOoooOO0 = na0.OoooOO0(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOoooOO0));
                }
            }
        }
    }

    public static class OooOo implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ long OoooOoo;
        public final /* synthetic */ boolean Ooooo00;
        public final /* synthetic */ eb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO00o(Object obj) {
                this.OoooOoO = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOo.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOo(Class cls, long j, boolean z, eb0 eb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = j;
            this.Ooooo00 = z;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOOo = na0.OooOOo(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOOo));
                }
            }
        }
    }

    public static class OooOo00 implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ String OoooOoo;
        public final /* synthetic */ Class Ooooo00;
        public final /* synthetic */ eb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO00o(Object obj) {
                this.OoooOoO = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOo00.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOo00(String str, String str2, Class cls, eb0 eb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cls;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooooOo = na0.OooooOo(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooooOo));
                }
            }
        }
    }

    public static class Oooo0 implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ boolean OoooOoo;
        public final /* synthetic */ eb0 Ooooo00;

        public class OooO00o implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO00o(Object obj) {
                this.OoooOoO = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                Oooo0.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public Oooo0(Class cls, boolean z, eb0 eb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = z;
            this.Ooooo00 = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOooo = na0.OooOooo(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOooo));
                }
            }
        }
    }

    public static class Oooo000 implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ boolean OoooOoo;
        public final /* synthetic */ eb0 Ooooo00;

        public class OooO00o implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO00o(Object obj) {
                this.OoooOoO = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                Oooo000.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public Oooo000(Class cls, boolean z, eb0 eb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = z;
            this.Ooooo00 = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOoOO = na0.OooOoOO(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOoOO));
                }
            }
        }
    }

    public static class o000oOoO implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ boolean OoooOoo;
        public final /* synthetic */ long[] Ooooo00;
        public final /* synthetic */ fb0 Ooooo0o;

        public class OooO00o implements Runnable {
            public final /* synthetic */ List OoooOoO;

            public OooO00o(List list) {
                this.OoooOoO = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                o000oOoO.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public o000oOoO(Class cls, boolean z, long[] jArr, fb0 fb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = z;
            this.Ooooo00 = jArr;
            this.Ooooo0o = fb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                List listOooOOoo = na0.OooOOoo(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(listOooOOoo));
                }
            }
        }
    }

    public static db0 OooO(String str) {
        db0 db0Var = new db0();
        db0Var.OooO0O0(new OooO00o(str, db0Var));
        return db0Var;
    }

    public static void OooO00o(String str) {
        vc0.OooO0O0 = str;
    }

    public static double OooO0O0(Class<?> cls, String str) {
        return OooO0OO(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str);
    }

    public static double OooO0OO(String str, String str2) {
        double dOooO0O0;
        synchronized (ua0.class) {
            dOooO0O0 = new ja0().OooO0O0(str, str2);
        }
        return dOooO0O0;
    }

    public static cb0 OooO0Oo(Class<?> cls, String str) {
        return OooO0o0(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str);
    }

    public static int OooO0o(Class<?> cls) {
        return OooO0oO(pc0.OooO0O0(rc0.OooOOO0(cls.getName())));
    }

    public static cb0 OooO0o0(String str, String str2) {
        cb0 cb0Var = new cb0();
        cb0Var.OooO0O0(new OooOOO0(str, str2, cb0Var));
        return cb0Var;
    }

    public static int OooO0oO(String str) {
        int iOooO0o;
        synchronized (ua0.class) {
            iOooO0o = new ja0().OooO0o(str);
        }
        return iOooO0o;
    }

    public static db0 OooO0oo(Class<?> cls) {
        return OooO(pc0.OooO0O0(rc0.OooOOO0(cls.getName())));
    }

    public static int OooOO0(Class<?> cls, long j) {
        int iO000OOo;
        synchronized (ua0.class) {
            SQLiteDatabase sQLiteDatabaseOooO0OO = xb0.OooO0OO();
            sQLiteDatabaseOooO0OO.beginTransaction();
            try {
                iO000OOo = new sa0(sQLiteDatabaseOooO0OO).o000OOo(cls, j);
                sQLiteDatabaseOooO0OO.setTransactionSuccessful();
            } finally {
                sQLiteDatabaseOooO0OO.endTransaction();
            }
        }
        return iO000OOo;
    }

    public static int OooOO0O(Class<?> cls, String... strArr) {
        int iO000000O;
        synchronized (ua0.class) {
            iO000000O = new sa0(xb0.OooO0OO()).o000000O(cls, strArr);
        }
        return iO000000O;
    }

    public static int OooOO0o(String str, String... strArr) {
        int iO000000o;
        synchronized (ua0.class) {
            iO000000o = new sa0(xb0.OooO0OO()).o000000o(str, strArr);
        }
        return iO000000o;
    }

    public static hb0 OooOOO(String str, String... strArr) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO0o(str, strArr, hb0Var));
        return hb0Var;
    }

    public static hb0 OooOOO0(Class<?> cls, String... strArr) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO0OO(cls, strArr, hb0Var));
        return hb0Var;
    }

    public static hb0 OooOOOO(Class<?> cls, long j) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO0O0(cls, j, hb0Var));
        return hb0Var;
    }

    public static boolean OooOOOo(String str) {
        synchronized (ua0.class) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (!str.endsWith(qc0.OooO00o.OooO00o)) {
                str = str + qc0.OooO00o.OooO00o;
            }
            File databasePath = LitePalApplication.OooO00o().getDatabasePath(str);
            if (databasePath.exists()) {
                boolean zDelete = databasePath.delete();
                if (zDelete) {
                    OoooOoo(str);
                    xb0.OooO0O0();
                }
                return zDelete;
            }
            boolean zDelete2 = new File((LitePalApplication.OooO00o().getExternalFilesDir("") + com.umeng.analytics.pro.c.b) + str).delete();
            if (zDelete2) {
                OoooOoo(str);
                xb0.OooO0O0();
            }
            return zDelete2;
        }
    }

    public static <T> T OooOOo(Class<T> cls, long j, boolean z) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ya0(xb0.OooO0OO()).o00oO0O(cls, j, z);
        }
        return t;
    }

    public static <T> T OooOOo0(Class<T> cls, long j) {
        return (T) OooOOo(cls, j, false);
    }

    public static <T> List<T> OooOOoo(Class<T> cls, boolean z, long... jArr) {
        List<T> listO0ooOOo;
        synchronized (ua0.class) {
            listO0ooOOo = new ya0(xb0.OooO0OO()).o0ooOOo(cls, z, jArr);
        }
        return listO0ooOOo;
    }

    public static <T> eb0<T> OooOo(Class<T> cls, long j, boolean z) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOo(cls, j, z, eb0Var));
        return eb0Var;
    }

    public static <T> fb0<T> OooOo0(Class<T> cls, boolean z, long... jArr) {
        fb0<T> fb0Var = new fb0<>();
        fb0Var.OooO0O0(new o000oOoO(cls, z, jArr, fb0Var));
        return fb0Var;
    }

    public static <T> List<T> OooOo00(Class<T> cls, long... jArr) {
        return OooOOoo(cls, false, jArr);
    }

    public static <T> fb0<T> OooOo0O(Class<T> cls, long... jArr) {
        return OooOo0(cls, false, jArr);
    }

    public static <T> eb0<T> OooOo0o(Class<T> cls, long j) {
        return OooOo(cls, j, false);
    }

    public static <T> T OooOoO(Class<T> cls) {
        return (T) OooOoOO(cls, false);
    }

    public static Cursor OooOoO0(String... strArr) {
        synchronized (ua0.class) {
            pc0.OooO0OO(strArr);
            String[] strArr2 = null;
            if (strArr == null) {
                return null;
            }
            if (strArr.length <= 0) {
                return null;
            }
            if (strArr.length != 1) {
                strArr2 = new String[strArr.length - 1];
                System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
            }
            return xb0.OooO0OO().rawQuery(strArr[0], strArr2);
        }
    }

    public static <T> T OooOoOO(Class<T> cls, boolean z) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ya0(xb0.OooO0OO()).o0ooOoO(cls, z);
        }
        return t;
    }

    public static <T> eb0<T> OooOoo(Class<T> cls, boolean z) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new Oooo000(cls, z, eb0Var));
        return eb0Var;
    }

    public static <T> eb0<T> OooOoo0(Class<T> cls) {
        return OooOoo(cls, false);
    }

    public static <T> T OooOooO(Class<T> cls) {
        return (T) OooOooo(cls, false);
    }

    public static <T> T OooOooo(Class<T> cls, boolean z) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ya0(xb0.OooO0OO()).o0OOO0o(cls, z);
        }
        return t;
    }

    public static <T> T Oooo(Class<?> cls, String str, Class<T> cls2) {
        return (T) OoooO00(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public static SQLiteDatabase Oooo0() {
        SQLiteDatabase sQLiteDatabaseOooO0OO;
        synchronized (ua0.class) {
            sQLiteDatabaseOooO0OO = xb0.OooO0OO();
        }
        return sQLiteDatabaseOooO0OO;
    }

    public static <T> eb0<T> Oooo000(Class<T> cls) {
        return Oooo00O(cls, false);
    }

    public static <T> eb0<T> Oooo00O(Class<T> cls, boolean z) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new Oooo0(cls, z, eb0Var));
        return eb0Var;
    }

    public static dc0 Oooo00o() {
        return OooO0O0;
    }

    public static Handler Oooo0O0() {
        return OooO00o;
    }

    public static void Oooo0OO(Context context) {
        LitePalApplication.OoooOoO = context;
    }

    public static <T> boolean Oooo0o(Class<T> cls, String... strArr) {
        return strArr != null && o00ooo(strArr).OooO0o0(cls) > 0;
    }

    private static boolean Oooo0o0(String str) {
        if (!pc0.OooO()) {
            return false;
        }
        if (!str.endsWith(qc0.OooO00o.OooO00o)) {
            str = str + qc0.OooO00o.OooO00o;
        }
        String strOooO0Oo = ub0.OooO0O0().OooO0Oo();
        if (!strOooO0Oo.endsWith(qc0.OooO00o.OooO00o)) {
            strOooO0Oo = strOooO0Oo + qc0.OooO00o.OooO00o;
        }
        return str.equalsIgnoreCase(strOooO0Oo);
    }

    public static ja0 Oooo0oO(int i) {
        ja0 ja0Var = new ja0();
        ja0Var.OooO0Oo = String.valueOf(i);
        return ja0Var;
    }

    public static <T extends ua0> void Oooo0oo(Collection<T> collection) {
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            it.next().clearSavedState();
        }
    }

    public static <T> T OoooO(Class<?> cls, String str, Class<T> cls2) {
        return (T) OoooOO0(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public static <T> eb0<T> OoooO0(Class<?> cls, String str, Class<T> cls2) {
        return OoooO0O(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public static <T> T OoooO00(String str, String str2, Class<T> cls) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ja0().OooOo0o(str, str2, cls);
        }
        return t;
    }

    public static <T> eb0<T> OoooO0O(String str, String str2, Class<T> cls) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOOO(str, str2, cls, eb0Var));
        return eb0Var;
    }

    public static <T> T OoooOO0(String str, String str2, Class<T> cls) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ja0().OooOoOO(str, str2, cls);
        }
        return t;
    }

    public static <T> eb0<T> OoooOOO(String str, String str2, Class<T> cls) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOOOO(str, str2, cls, eb0Var));
        return eb0Var;
    }

    public static ja0 OoooOOo(int i) {
        ja0 ja0Var = new ja0();
        ja0Var.OooO0o0 = String.valueOf(i);
        return ja0Var;
    }

    public static ja0 OoooOo0(String str) {
        ja0 ja0Var = new ja0();
        ja0Var.OooO0OO = str;
        return ja0Var;
    }

    public static void OoooOoO(dc0 dc0Var) {
        OooO0O0 = dc0Var;
    }

    private static void OoooOoo(String str) {
        if (Oooo0o0(str)) {
            str = null;
        }
        tc0.OooO0O0(str);
    }

    public static <T extends ua0> void Ooooo00(Collection<T> collection) {
        synchronized (ua0.class) {
            SQLiteDatabase sQLiteDatabaseOooO0OO = xb0.OooO0OO();
            sQLiteDatabaseOooO0OO.beginTransaction();
            try {
                try {
                    new za0(sQLiteDatabaseOooO0OO).o000000O(collection);
                    sQLiteDatabaseOooO0OO.setTransactionSuccessful();
                } catch (Exception e) {
                    throw new LitePalSupportException(e.getMessage(), e);
                }
            } finally {
                sQLiteDatabaseOooO0OO.endTransaction();
            }
        }
    }

    public static <T extends ua0> gb0 Ooooo0o(Collection<T> collection) {
        gb0 gb0Var = new gb0();
        gb0Var.OooO0O0(new OooOO0O(collection, gb0Var));
        return gb0Var;
    }

    public static ja0 OooooO0(String... strArr) {
        ja0 ja0Var = new ja0();
        ja0Var.OooO00o = strArr;
        return ja0Var;
    }

    public static <T> T OooooOO(Class<?> cls, String str, Class<T> cls2) {
        return (T) OooooOo(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public static <T> T OooooOo(String str, String str2, Class<T> cls) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ja0().Oooo00o(str, str2, cls);
        }
        return t;
    }

    public static <T> eb0<T> Oooooo(String str, String str2, Class<T> cls) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOo00(str, str2, cls, eb0Var));
        return eb0Var;
    }

    public static <T> eb0<T> Oooooo0(Class<?> cls, String str, Class<T> cls2) {
        return Oooooo(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public static int OoooooO(Class<?> cls, ContentValues contentValues, long j) {
        int iO0ooOOo;
        synchronized (ua0.class) {
            iO0ooOOo = new ab0(xb0.OooO0OO()).o0ooOOo(cls, j, contentValues);
        }
        return iO0ooOOo;
    }

    public static int Ooooooo(Class<?> cls, ContentValues contentValues, String... strArr) {
        return o0OoOo0(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), contentValues, strArr);
    }

    public static <T> eb0<T> o000oOoO(Class<?> cls, String str, Class<T> cls2) {
        return OoooOOO(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public static hb0 o00O0O(String str, ContentValues contentValues, String... strArr) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooOO0(str, contentValues, strArr, hb0Var));
        return hb0Var;
    }

    public static hb0 o00Oo0(Class<?> cls, ContentValues contentValues, long j) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO(cls, contentValues, j, hb0Var));
        return hb0Var;
    }

    public static void o00Ooo(ma0 ma0Var) {
        synchronized (ua0.class) {
            rb0 rb0VarOooO0oo = rb0.OooO0oo();
            rb0VarOooO0oo.OooOOO(ma0Var.OooO0Oo());
            rb0VarOooO0oo.OooOOo0(ma0Var.OooO0o());
            rb0VarOooO0oo.OooOOOo(ma0Var.OooO0o0());
            rb0VarOooO0oo.OooOOO0(ma0Var.OooO0OO());
            if (!Oooo0o0(ma0Var.OooO0Oo())) {
                rb0VarOooO0oo.OooOOOO(ma0Var.OooO0Oo());
                rb0VarOooO0oo.OooOO0o(qc0.OooO00o.OooO0OO);
            }
            xb0.OooO0O0();
        }
    }

    public static void o00o0O() {
        synchronized (ua0.class) {
            rb0.OooO0OO();
            xb0.OooO0O0();
        }
    }

    public static ja0 o00ooo(String... strArr) {
        ja0 ja0Var = new ja0();
        ja0Var.OooO0O0 = strArr;
        return ja0Var;
    }

    public static int o0OoOo0(String str, ContentValues contentValues, String... strArr) {
        int iO0OOO0o;
        synchronized (ua0.class) {
            iO0OOO0o = new ab0(xb0.OooO0OO()).o0OOO0o(str, contentValues, strArr);
        }
        return iO0OOO0o;
    }

    public static hb0 ooOO(Class<?> cls, ContentValues contentValues, String... strArr) {
        return o00O0O(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), contentValues, strArr);
    }
}
