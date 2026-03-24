package z2;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface OooOo {

    public static class OooO00o {
        public byte[] OooO00o;
        public String OooO0O0;
        public long OooO0OO;
        public long OooO0Oo;
        public long OooO0o;
        public long OooO0o0;
        public Map<String, String> OooO0oO = Collections.emptyMap();

        public boolean OooO00o() {
            return this.OooO0o0 < System.currentTimeMillis();
        }

        public boolean OooO0O0() {
            return this.OooO0o < System.currentTimeMillis();
        }
    }

    void OooO00o();

    void OooO0O0(String str, boolean z);

    void OooO0OO(String str, OooO00o oooO00o);

    void clear();

    OooO00o get(String str);

    void remove(String str);
}
