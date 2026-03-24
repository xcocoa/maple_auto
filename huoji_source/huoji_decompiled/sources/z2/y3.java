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

/* JADX INFO: loaded from: classes.dex */
public class y3 {
    private final Properties OooO00o;

    private y3() throws IOException {
        Properties properties = new Properties();
        this.OooO00o = properties;
        properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
    }

    public static y3 OooO() throws IOException {
        return new y3();
    }

    public boolean OooO00o(Object obj) {
        return this.OooO00o.containsKey(obj);
    }

    public boolean OooO0O0(Object obj) {
        return this.OooO00o.containsValue(obj);
    }

    public Set<Map.Entry<Object, Object>> OooO0OO() {
        return this.OooO00o.entrySet();
    }

    public String OooO0Oo(String str) {
        return this.OooO00o.getProperty(str);
    }

    public boolean OooO0o() {
        return this.OooO00o.isEmpty();
    }

    public String OooO0o0(String str, String str2) {
        return this.OooO00o.getProperty(str, str2);
    }

    public Set<Object> OooO0oO() {
        return this.OooO00o.keySet();
    }

    public Enumeration<Object> OooO0oo() {
        return this.OooO00o.keys();
    }

    public int OooOO0() {
        return this.OooO00o.size();
    }

    public Collection<Object> OooOO0O() {
        return this.OooO00o.values();
    }
}
