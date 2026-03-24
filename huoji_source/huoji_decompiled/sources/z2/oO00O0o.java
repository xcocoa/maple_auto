package z2;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;
import z2.oO00OOOo;

/* JADX INFO: loaded from: classes.dex */
public class oO00O0o<K extends oO00OOOo, V> {
    private final OooO00o<K, V> OooO00o = new OooO00o<>();
    private final Map<K, OooO00o<K, V>> OooO0O0 = new HashMap();

    public static class OooO00o<K, V> {
        public final K OooO00o;
        private List<V> OooO0O0;
        public OooO00o<K, V> OooO0OO;
        public OooO00o<K, V> OooO0Oo;

        public OooO00o() {
            this(null);
        }

        public OooO00o(K k) {
            this.OooO0Oo = this;
            this.OooO0OO = this;
            this.OooO00o = k;
        }

        public void OooO00o(V v) {
            if (this.OooO0O0 == null) {
                this.OooO0O0 = new ArrayList();
            }
            this.OooO0O0.add(v);
        }

        @Nullable
        public V OooO0O0() {
            int iOooO0OO = OooO0OO();
            if (iOooO0OO > 0) {
                return this.OooO0O0.remove(iOooO0OO - 1);
            }
            return null;
        }

        public int OooO0OO() {
            List<V> list = this.OooO0O0;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    private void OooO0O0(OooO00o<K, V> oooO00o) {
        OooO0o0(oooO00o);
        OooO00o<K, V> oooO00o2 = this.OooO00o;
        oooO00o.OooO0Oo = oooO00o2;
        oooO00o.OooO0OO = oooO00o2.OooO0OO;
        OooO0oO(oooO00o);
    }

    private void OooO0OO(OooO00o<K, V> oooO00o) {
        OooO0o0(oooO00o);
        OooO00o<K, V> oooO00o2 = this.OooO00o;
        oooO00o.OooO0Oo = oooO00o2.OooO0Oo;
        oooO00o.OooO0OO = oooO00o2;
        OooO0oO(oooO00o);
    }

    private static <K, V> void OooO0o0(OooO00o<K, V> oooO00o) {
        OooO00o<K, V> oooO00o2 = oooO00o.OooO0Oo;
        oooO00o2.OooO0OO = oooO00o.OooO0OO;
        oooO00o.OooO0OO.OooO0Oo = oooO00o2;
    }

    private static <K, V> void OooO0oO(OooO00o<K, V> oooO00o) {
        oooO00o.OooO0OO.OooO0Oo = oooO00o;
        oooO00o.OooO0Oo.OooO0OO = oooO00o;
    }

    @Nullable
    public V OooO00o(K k) {
        OooO00o<K, V> oooO00o = this.OooO0O0.get(k);
        if (oooO00o == null) {
            oooO00o = new OooO00o<>(k);
            this.OooO0O0.put(k, oooO00o);
        } else {
            k.OooO00o();
        }
        OooO0O0(oooO00o);
        return oooO00o.OooO0O0();
    }

    public void OooO0Oo(K k, V v) {
        OooO00o<K, V> oooO00o = this.OooO0O0.get(k);
        if (oooO00o == null) {
            oooO00o = new OooO00o<>(k);
            OooO0OO(oooO00o);
            this.OooO0O0.put(k, oooO00o);
        } else {
            k.OooO00o();
        }
        oooO00o.OooO00o(v);
    }

    @Nullable
    public V OooO0o() {
        OooO00o oooO00o = this.OooO00o;
        while (true) {
            oooO00o = oooO00o.OooO0Oo;
            if (oooO00o.equals(this.OooO00o)) {
                return null;
            }
            V v = (V) oooO00o.OooO0O0();
            if (v != null) {
                return v;
            }
            OooO0o0(oooO00o);
            this.OooO0O0.remove(oooO00o.OooO00o);
            ((oO00OOOo) oooO00o.OooO00o).OooO00o();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (OooO00o oooO00o = this.OooO00o.OooO0OO; !oooO00o.equals(this.OooO00o); oooO00o = oooO00o.OooO0OO) {
            z = true;
            sb.append(MessageFormatter.DELIM_START);
            sb.append(oooO00o.OooO00o);
            sb.append(':');
            sb.append(oooO00o.OooO0OO());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
