package z2;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class hf {
    private final Properties OooO00o;

    public hf() {
        Properties properties = new Properties();
        this.OooO00o = properties;
        try {
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
        } catch (IOException unused) {
        }
    }

    private int OooO() {
        return this.OooO00o.size();
    }

    private Set<Map.Entry<Object, Object>> OooO0OO() {
        return this.OooO00o.entrySet();
    }

    private boolean OooO0o(Object obj) {
        return this.OooO00o.containsValue(obj);
    }

    private boolean OooO0o0() {
        return this.OooO00o.isEmpty();
    }

    private Enumeration<Object> OooO0oO() {
        return this.OooO00o.keys();
    }

    private Set<Object> OooO0oo() {
        return this.OooO00o.keySet();
    }

    private Collection<Object> OooOO0() {
        return this.OooO00o.values();
    }

    private static hf OooOO0O() {
        return new hf();
    }

    public final String OooO00o(String str) {
        return this.OooO00o.getProperty(str);
    }

    public final String OooO0O0(String str, String str2) {
        return this.OooO00o.getProperty(str, str2);
    }

    public final boolean OooO0Oo(Object obj) {
        return this.OooO00o.containsKey(obj);
    }
}
