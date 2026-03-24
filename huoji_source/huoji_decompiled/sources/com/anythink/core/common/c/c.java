package com.anythink.core.common.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.c.b.e;
import com.anythink.core.common.c.d;
import com.anythink.core.common.c.e;
import com.anythink.core.common.c.f;
import com.anythink.core.common.c.g;
import com.anythink.core.common.c.h;
import com.anythink.core.common.c.i;
import com.anythink.core.common.c.j;
import com.anythink.core.common.c.k;
import com.anythink.core.common.c.l;
import com.anythink.core.common.c.m;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {
    private static c a;

    private c(Context context) {
        super(context);
    }

    public static c a(Context context) {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c(context.getApplicationContext());
                }
            }
        }
        return a;
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL(d.a.f);
            sQLiteDatabase.execSQL(g.a.i);
            a(sQLiteDatabase, 3, 12);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'sdkconfig'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'request_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'placement_ad_impression'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'offer_action_record'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'offer_data_cache'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'dsp_offer_show_record'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'dsp_offer_install_record'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'inspect_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'video_res_cache_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'notice_url_fail_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'user_value_placement'");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase) {
        d(sQLiteDatabase);
        c(sQLiteDatabase);
    }

    @Override // com.anythink.core.common.c.b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        c(sQLiteDatabase);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.anythink.core.common.c.b
    public final void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        String str;
        while (i < i2) {
            String str2 = e.a.l;
            switch (i) {
                case 1:
                case 2:
                    d(sQLiteDatabase);
                    c(sQLiteDatabase);
                    break;
                case 3:
                    str2 = l.a.j;
                    sQLiteDatabase.execSQL(str2);
                    break;
                case 4:
                    str = j.a.h;
                    sQLiteDatabase.execSQL(str);
                    sQLiteDatabase.execSQL(k.a.i);
                    break;
                case 5:
                    sQLiteDatabase.execSQL(f.a.h);
                    str2 = e.a.f;
                    sQLiteDatabase.execSQL(str2);
                    break;
                case 6:
                    str2 = h.a.d;
                    sQLiteDatabase.execSQL(str2);
                    break;
                case 7:
                    str2 = m.a.h;
                    sQLiteDatabase.execSQL(str2);
                    break;
                case 8:
                    sQLiteDatabase.execSQL(i.b.i);
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'request_info'");
                    str2 = g.a.i;
                    sQLiteDatabase.execSQL(str2);
                    break;
                case 9:
                    sQLiteDatabase.execSQL(str2);
                    break;
                case 10:
                    try {
                        sQLiteDatabase.execSQL(e.a.l);
                        break;
                    } catch (Throwable unused) {
                    }
                    str = "DROP TABLE IF EXISTS 'offer_data_cache'";
                    sQLiteDatabase.execSQL(str);
                    sQLiteDatabase.execSQL(k.a.i);
                    break;
                case 11:
                    sQLiteDatabase.execSQL(e.a.m);
                    str2 = e.a.n;
                    sQLiteDatabase.execSQL(str2);
                    break;
            }
            i++;
        }
    }

    @Override // com.anythink.core.common.c.b
    public final void b(SQLiteDatabase sQLiteDatabase) {
        d(sQLiteDatabase);
        c(sQLiteDatabase);
    }

    @Override // com.anythink.core.common.c.b
    public final String c() {
        return "anythink.db";
    }

    @Override // com.anythink.core.common.c.b
    public final int d() {
        return 12;
    }
}
