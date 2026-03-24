package com.anythink.expressad.foundation.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";
    private static volatile a c;
    public SharedPreferences b;

    private a() {
    }

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a();
                }
            }
        }
        return c;
    }

    private void a(String str, int i) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return;
            }
            if (this.b == null && contextE != null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            SharedPreferences.Editor editorEdit = this.b.edit();
            editorEdit.putInt(str, i);
            editorEdit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(String str, long j) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return;
            }
            if (this.b == null && contextE != null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            SharedPreferences.Editor editorEdit = this.b.edit();
            editorEdit.putLong(str, j);
            editorEdit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int b(String str, int i) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return i;
            }
            if (this.b == null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            return this.b.getInt(str, i);
        } catch (Exception e) {
            e.printStackTrace();
            return i;
        }
    }

    private List<String> b() {
        ArrayList arrayList = new ArrayList();
        Context contextE = com.anythink.expressad.foundation.b.a.c().e();
        if (contextE == null) {
            return null;
        }
        if (this.b == null && contextE != null) {
            this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
        }
        Iterator<Map.Entry<String, ?>> it = this.b.getAll().entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getKey());
        }
        return arrayList;
    }

    private int c(String str) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return 0;
            }
            if (this.b == null && contextE != null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            return this.b.getInt(str, 0);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private Long d(String str) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return 0L;
            }
            if (this.b == null && contextE != null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            return Long.valueOf(this.b.getLong(str, 0L));
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public final String a(String str) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return null;
            }
            if (this.b == null && contextE != null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            return this.b.getString(str, "");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void a(String str, String str2) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            if (contextE == null) {
                return;
            }
            if (this.b == null && contextE != null) {
                this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
            }
            SharedPreferences.Editor editorEdit = this.b.edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void b(String str) {
        Context contextE = com.anythink.expressad.foundation.b.a.c().e();
        if (contextE == null) {
            return;
        }
        if (this.b == null && contextE != null) {
            this.b = contextE.getSharedPreferences(com.anythink.expressad.foundation.g.a.o, 0);
        }
        this.b.edit().remove(str).apply();
    }
}
