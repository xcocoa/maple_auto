package z2;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ja0 {
    public String[] OooO00o;
    public String[] OooO0O0;
    public String OooO0OO;
    public String OooO0Oo;
    public String OooO0o0;

    public class OooO implements Runnable {
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
                OooO.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO(String str, String str2, cb0 cb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                double dOooO0O0 = ja0.this.OooO0O0(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(dOooO0O0));
                }
            }
        }
    }

    public class OooO00o implements Runnable {
        public final /* synthetic */ Class OoooOoO;
        public final /* synthetic */ boolean OoooOoo;
        public final /* synthetic */ fb0 Ooooo00;

        /* JADX INFO: renamed from: z2.ja0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0251OooO00o implements Runnable {
            public final /* synthetic */ List OoooOoO;

            public RunnableC0251OooO00o(List list) {
                this.OoooOoO = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO00o.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO00o(Class cls, boolean z, fb0 fb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = z;
            this.Ooooo00 = fb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                List listOooOO0 = ja0.this.OooOO0(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new RunnableC0251OooO00o(listOooOO0));
                }
            }
        }
    }

    public class OooO0O0 implements Runnable {
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
                OooO0O0.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0O0(Class cls, boolean z, eb0 eb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = z;
            this.Ooooo00 = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOOO = ja0.this.OooOOO(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOOO));
                }
            }
        }
    }

    public class OooO0OO implements Runnable {
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
                OooO0OO.this.Ooooo00.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0OO(Class cls, boolean z, eb0 eb0Var) {
            this.OoooOoO = cls;
            this.OoooOoo = z;
            this.Ooooo00 = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOOo = ja0.this.OooOOo(this.OoooOoO, this.OoooOoo);
                if (this.Ooooo00.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOOo));
                }
            }
        }
    }

    public class OooO0o implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ db0 OoooOoo;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0o.this.OoooOoo.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0o(String str, db0 db0Var) {
            this.OoooOoO = str;
            this.OoooOoo = db0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iOooO0o = ja0.this.OooO0o(this.OoooOoO);
                if (this.OoooOoo.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iOooO0o));
                }
            }
        }
    }

    public class OooOO0 implements Runnable {
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
                OooOO0.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOO0(String str, String str2, Class cls, eb0 eb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cls;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOo0o = ja0.this.OooOo0o(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOo0o));
                }
            }
        }
    }

    public class OooOO0O implements Runnable {
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
                OooOO0O.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOO0O(String str, String str2, Class cls, eb0 eb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cls;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooOoOO = ja0.this.OooOoOO(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooOoOO));
                }
            }
        }
    }

    public class OooOOO0 implements Runnable {
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
                OooOOO0.this.Ooooo0o.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooOOO0(String str, String str2, Class cls, eb0 eb0Var) {
            this.OoooOoO = str;
            this.OoooOoo = str2;
            this.Ooooo00 = cls;
            this.Ooooo0o = eb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                Object objOooo00o = ja0.this.Oooo00o(this.OoooOoO, this.OoooOoo, this.Ooooo00);
                if (this.Ooooo0o.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(objOooo00o));
                }
            }
        }
    }

    public <T> List<T> OooO(Class<T> cls) {
        return OooOO0(cls, false);
    }

    public double OooO00o(Class<?> cls, String str) {
        return OooO0O0(pc0.OooO0O0(cls.getSimpleName()), str);
    }

    public double OooO0O0(String str, String str2) {
        double dOo000o;
        synchronized (ua0.class) {
            dOo000o = new ya0(xb0.OooO0OO()).oo000o(str, str2, this.OooO0O0);
        }
        return dOo000o;
    }

    public cb0 OooO0OO(Class<?> cls, String str) {
        return OooO0Oo(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str);
    }

    public cb0 OooO0Oo(String str, String str2) {
        cb0 cb0Var = new cb0();
        cb0Var.OooO0O0(new OooO(str, str2, cb0Var));
        return cb0Var;
    }

    public int OooO0o(String str) {
        int iO00oO0o;
        synchronized (ua0.class) {
            iO00oO0o = new ya0(xb0.OooO0OO()).o00oO0o(str, this.OooO0O0);
        }
        return iO00oO0o;
    }

    public int OooO0o0(Class<?> cls) {
        return OooO0o(pc0.OooO0O0(cls.getSimpleName()));
    }

    public db0 OooO0oO(Class<?> cls) {
        return OooO0oo(pc0.OooO0O0(rc0.OooOOO0(cls.getName())));
    }

    public db0 OooO0oo(String str) {
        db0 db0Var = new db0();
        db0Var.OooO0O0(new OooO0o(str, db0Var));
        return db0Var;
    }

    public <T> List<T> OooOO0(Class<T> cls, boolean z) {
        String str;
        List<T> listO0ooOO0;
        synchronized (ua0.class) {
            ya0 ya0Var = new ya0(xb0.OooO0OO());
            if (this.OooO0o0 == null) {
                str = this.OooO0Oo;
            } else {
                if (this.OooO0Oo == null) {
                    this.OooO0Oo = "0";
                }
                str = this.OooO0o0 + "," + this.OooO0Oo;
            }
            listO0ooOO0 = ya0Var.o0ooOO0(cls, this.OooO00o, this.OooO0O0, this.OooO0OO, str, z);
        }
        return listO0ooOO0;
    }

    public <T> fb0<T> OooOO0O(Class<T> cls) {
        return OooOO0o(cls, false);
    }

    public <T> fb0<T> OooOO0o(Class<T> cls, boolean z) {
        fb0<T> fb0Var = new fb0<>();
        fb0Var.OooO0O0(new OooO00o(cls, z, fb0Var));
        return fb0Var;
    }

    public <T> T OooOOO(Class<T> cls, boolean z) {
        synchronized (ua0.class) {
            List<T> listOooOO0 = OooOO0(cls, z);
            if (listOooOO0.size() <= 0) {
                return null;
            }
            return listOooOO0.get(0);
        }
    }

    public <T> T OooOOO0(Class<T> cls) {
        return (T) OooOOO(cls, false);
    }

    public <T> eb0<T> OooOOOO(Class<T> cls) {
        return OooOOOo(cls, false);
    }

    public <T> eb0<T> OooOOOo(Class<T> cls, boolean z) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooO0O0(cls, z, eb0Var));
        return eb0Var;
    }

    public <T> T OooOOo(Class<T> cls, boolean z) {
        synchronized (ua0.class) {
            List<T> listOooOO0 = OooOO0(cls, z);
            int size = listOooOO0.size();
            if (size <= 0) {
                return null;
            }
            return listOooOO0.get(size - 1);
        }
    }

    public <T> T OooOOo0(Class<T> cls) {
        return (T) OooOOo(cls, false);
    }

    public <T> eb0<T> OooOOoo(Class<T> cls) {
        return OooOo00(cls, false);
    }

    public <T> eb0<T> OooOo(Class<?> cls, String str, Class<T> cls2) {
        return OooOoO0(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public ja0 OooOo0(int i) {
        this.OooO0Oo = String.valueOf(i);
        return this;
    }

    public <T> eb0<T> OooOo00(Class<T> cls, boolean z) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooO0OO(cls, z, eb0Var));
        return eb0Var;
    }

    public <T> T OooOo0O(Class<?> cls, String str, Class<T> cls2) {
        return (T) OooOo0o(pc0.OooO0O0(cls.getSimpleName()), str, cls2);
    }

    public <T> T OooOo0o(String str, String str2, Class<T> cls) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ya0(xb0.OooO0OO()).o0Oo0oo(str, str2, this.OooO0O0, cls);
        }
        return t;
    }

    public <T> T OooOoO(Class<?> cls, String str, Class<T> cls2) {
        return (T) OooOoOO(pc0.OooO0O0(cls.getSimpleName()), str, cls2);
    }

    public <T> eb0<T> OooOoO0(String str, String str2, Class<T> cls) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOO0(str, str2, cls, eb0Var));
        return eb0Var;
    }

    public <T> T OooOoOO(String str, String str2, Class<T> cls) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ya0(xb0.OooO0OO()).o0OO00O(str, str2, this.OooO0O0, cls);
        }
        return t;
    }

    public <T> eb0<T> OooOoo(String str, String str2, Class<T> cls) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOO0O(str, str2, cls, eb0Var));
        return eb0Var;
    }

    public <T> eb0<T> OooOoo0(Class<?> cls, String str, Class<T> cls2) {
        return OooOoo(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public ja0 OooOooO(int i) {
        this.OooO0o0 = String.valueOf(i);
        return this;
    }

    public ja0 OooOooo(String str) {
        this.OooO0OO = str;
        return this;
    }

    public <T> eb0<T> Oooo0(Class<?> cls, String str, Class<T> cls2) {
        return Oooo0O0(pc0.OooO0O0(rc0.OooOOO0(cls.getName())), str, cls2);
    }

    public ja0 Oooo000(String... strArr) {
        this.OooO00o = strArr;
        return this;
    }

    public <T> T Oooo00O(Class<?> cls, String str, Class<T> cls2) {
        return (T) Oooo00o(pc0.OooO0O0(cls.getSimpleName()), str, cls2);
    }

    public <T> T Oooo00o(String str, String str2, Class<T> cls) {
        T t;
        synchronized (ua0.class) {
            t = (T) new ya0(xb0.OooO0OO()).oo0o0Oo(str, str2, this.OooO0O0, cls);
        }
        return t;
    }

    public <T> eb0<T> Oooo0O0(String str, String str2, Class<T> cls) {
        eb0<T> eb0Var = new eb0<>();
        eb0Var.OooO0O0(new OooOOO0(str, str2, cls, eb0Var));
        return eb0Var;
    }

    public ja0 Oooo0OO(String... strArr) {
        this.OooO0O0 = strArr;
        return this;
    }
}
