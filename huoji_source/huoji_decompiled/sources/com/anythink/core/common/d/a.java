package com.anythink.core.common.d;

import android.content.Context;
import com.anythink.core.common.c.j;
import com.anythink.core.common.f.ae;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public j a;
    public int b;

    public a(Context context) {
        this.a = j.a(com.anythink.core.common.c.c.a(context));
    }

    private List<ae> a() {
        return this.a.a(this.b);
    }

    public final List<ae> a(List<String> list) {
        return this.a.a(list, this.b);
    }

    public final void a(String str, int i, int i2) {
        this.a.a(this.b, str, i, i2);
    }

    public final void a(String str, long j) {
        this.a.a(this.b, str, j);
    }

    public final void a(String str, String str2) {
        this.a.a(str, this.b, str2);
    }
}
