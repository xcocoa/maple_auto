package com.iflytek.voiceads.param;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class f {
    HashMap<String, Object> a = new HashMap<>();

    public Object a(String str) {
        return this.a.get(str);
    }

    public void a(String str, Object obj) {
        a(str, obj, true);
    }

    public void a(String str, Object obj, boolean z) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        if (z || !this.a.containsKey(str)) {
            this.a.put(str, obj);
        }
    }
}
