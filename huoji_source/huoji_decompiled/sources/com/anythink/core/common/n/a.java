package com.anythink.core.common.n;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a a;
    private final Map<String, InterfaceC0089a> b = new ConcurrentHashMap(2);

    /* JADX INFO: renamed from: com.anythink.core.common.n.a$a, reason: collision with other inner class name */
    public interface InterfaceC0089a {
        void a(String str);
    }

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    public final void a(String str) {
        InterfaceC0089a interfaceC0089aRemove;
        if (TextUtils.isEmpty(str) || (interfaceC0089aRemove = this.b.remove(str)) == null) {
            return;
        }
        interfaceC0089aRemove.a(str);
    }

    public final void a(String str, InterfaceC0089a interfaceC0089a) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.b.put(str, interfaceC0089a);
    }
}
