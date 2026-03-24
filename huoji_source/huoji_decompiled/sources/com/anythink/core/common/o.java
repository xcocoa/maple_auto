package com.anythink.core.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final String b = "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9PUEVORUQ=";
    public static final String c = "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9DTE9TRUQ=";
    public static final String d = "Y29tLnhpYW9taS5tYXJrZXQuRElSRUNUX01BSUxfU1RBVFVT";
    public static final String e = "Y29udGVudDovL2NvbS54aWFvbWkubWFya2V0LnByb3ZpZGVyLkRpcmVjdE1haWxQcm92aWRlcg==";
    private static final String f = "code";
    private static final String g = "packageName";
    private static volatile String j;
    private static volatile o n;
    public BroadcastReceiver a;
    private CopyOnWriteArrayList<com.anythink.core.common.f.l> h = new CopyOnWriteArrayList<>();
    private final AtomicBoolean i = new AtomicBoolean(false);
    private volatile Boolean k;
    private com.anythink.core.common.f.l l;
    private Context m;

    /* JADX INFO: renamed from: com.anythink.core.common.o$1, reason: invalid class name */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        private com.anythink.core.common.f.l a(String str) {
            if (o.this.l != null && TextUtils.equals(o.this.l.F(), str)) {
                return o.this.l;
            }
            if (o.this.h == null || o.this.h.size() <= 0) {
                return null;
            }
            for (com.anythink.core.common.f.l lVar : o.this.h) {
                if (lVar != null && TextUtils.equals(lVar.F(), str)) {
                    return lVar;
                }
            }
            return null;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Bundle extras;
            com.anythink.core.common.f.l lVar;
            String action = intent.getAction();
            if (TextUtils.isEmpty(action) || action.equals(com.anythink.core.common.o.d.b(o.b)) || action.equals(com.anythink.core.common.o.d.b(o.c)) || !action.equals(com.anythink.core.common.o.d.b(o.d)) || (extras = intent.getExtras()) == null) {
                return;
            }
            int i = extras.getInt("code", -1);
            String string = extras.getString(o.g, "");
            if (i == -1 || TextUtils.isEmpty(string)) {
                return;
            }
            if (o.this.l != null && TextUtils.equals(o.this.l.F(), string)) {
                lVar = o.this.l;
            } else if (o.this.h == null || o.this.h.size() <= 0) {
                lVar = null;
            } else {
                for (com.anythink.core.common.f.l lVar2 : o.this.h) {
                    if (lVar2 != null && TextUtils.equals(lVar2.F(), string)) {
                        lVar = lVar2;
                        break;
                    }
                }
                lVar = null;
            }
            if (lVar == null) {
                return;
            }
            if (i == 4) {
                o.this.b(lVar);
            }
            com.anythink.core.common.n.e.a(lVar.n(), lVar.t(), "", i, "", 0L, 0L);
        }
    }

    private o() {
    }

    public static o a() {
        if (n == null) {
            synchronized (o.class) {
                if (n == null) {
                    n = new o();
                }
            }
        }
        return n;
    }

    public static String b() {
        try {
            return j == null ? "" : String.format("[%s]", j);
        } catch (Throwable unused) {
            return "";
        }
    }

    private void b(Context context) {
        BroadcastReceiver broadcastReceiver = this.a;
        if (broadcastReceiver == null || context == null) {
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (Throwable unused) {
        }
        this.l = null;
        this.h.clear();
        this.h = null;
        this.a = null;
        this.m = null;
    }

    private com.anythink.core.common.f.l d() {
        return this.l;
    }

    private void e() {
        if (this.k == null || !this.k.booleanValue() || this.m == null) {
            return;
        }
        try {
            this.a = new AnonymousClass1();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(com.anythink.core.common.o.d.b(b));
            intentFilter.addAction(com.anythink.core.common.o.d.b(c));
            intentFilter.addAction(com.anythink.core.common.o.d.b(d));
            this.m.registerReceiver(this.a, intentFilter);
        } catch (Throwable unused) {
        }
    }

    private static Boolean f() {
        Cursor cursorQuery;
        Context contextF = com.anythink.core.common.b.n.a().f();
        Boolean boolValueOf = null;
        if (contextF != null && contextF.getContentResolver() != null) {
            try {
                cursorQuery = contextF.getContentResolver().query(Uri.parse(com.anythink.core.common.o.d.b(e)), null, null, null, null);
            } catch (Throwable unused) {
                cursorQuery = null;
            }
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("support"));
                        if (!TextUtils.isEmpty(string) && !string.equalsIgnoreCase("null") && (string.equalsIgnoreCase("false") || string.equalsIgnoreCase("true"))) {
                            boolValueOf = Boolean.valueOf(Boolean.parseBoolean(string));
                        }
                    } catch (Throwable unused2) {
                    }
                    try {
                        j = cursorQuery.getString(cursorQuery.getColumnIndex("detailStyle"));
                    } catch (Exception unused3) {
                    }
                }
                try {
                    cursorQuery.close();
                } catch (Throwable unused4) {
                }
            }
        }
        return boolValueOf;
    }

    public final void a(Context context) {
        this.m = context;
        if (this.i.compareAndSet(false, true)) {
            try {
                this.k = f();
                if (this.k == null || !this.k.booleanValue() || this.m == null) {
                    return;
                }
                this.a = new AnonymousClass1();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(com.anythink.core.common.o.d.b(b));
                intentFilter.addAction(com.anythink.core.common.o.d.b(c));
                intentFilter.addAction(com.anythink.core.common.o.d.b(d));
                this.m.registerReceiver(this.a, intentFilter);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(com.anythink.core.common.f.l lVar) {
        if (this.k == null || lVar == null || !this.k.booleanValue()) {
            return;
        }
        this.l = lVar;
        this.h.add(lVar);
    }

    public final void b(com.anythink.core.common.f.l lVar) {
        if (this.k == null || lVar == null || !this.k.booleanValue()) {
            return;
        }
        this.l = null;
        try {
            this.h.remove(lVar);
        } catch (Exception unused) {
        }
    }

    public final int c() {
        if (this.k != null) {
            return this.k.booleanValue() ? 1 : 0;
        }
        return -1;
    }
}
