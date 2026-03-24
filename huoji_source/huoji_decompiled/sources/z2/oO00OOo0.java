package z2;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
public class oO00OOo0 implements oO00OOO {
    private static final Bitmap.Config[] OooO;
    private static final int OooO0Oo = 8;
    private static final Bitmap.Config[] OooO0o;
    private static final Bitmap.Config[] OooO0o0;
    private static final Bitmap.Config[] OooO0oO;
    private static final Bitmap.Config[] OooO0oo;
    private final OooO0OO OooO00o = new OooO0OO();
    private final oO00O0o<OooO0O0, Bitmap> OooO0O0 = new oO00O0o<>();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> OooO0OO = new HashMap();

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            OooO00o = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @VisibleForTesting
    public static final class OooO0O0 implements oO00OOOo {
        private final OooO0OO OooO00o;
        public int OooO0O0;
        private Bitmap.Config OooO0OO;

        public OooO0O0(OooO0OO oooO0OO) {
            this.OooO00o = oooO0OO;
        }

        @VisibleForTesting
        public OooO0O0(OooO0OO oooO0OO, int i, Bitmap.Config config) {
            this(oooO0OO);
            OooO0O0(i, config);
        }

        @Override // z2.oO00OOOo
        public void OooO00o() {
            this.OooO00o.OooO0OO(this);
        }

        public void OooO0O0(int i, Bitmap.Config config) {
            this.OooO0O0 = i;
            this.OooO0OO = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OooO0O0)) {
                return false;
            }
            OooO0O0 oooO0O0 = (OooO0O0) obj;
            return this.OooO0O0 == oooO0O0.OooO0O0 && t2.OooO0Oo(this.OooO0OO, oooO0O0.OooO0OO);
        }

        public int hashCode() {
            int i = this.OooO0O0 * 31;
            Bitmap.Config config = this.OooO0OO;
            return i + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return oO00OOo0.OooO0oo(this.OooO0O0, this.OooO0OO);
        }
    }

    @VisibleForTesting
    public static class OooO0OO extends oO000Oo<OooO0O0> {
        @Override // z2.oO000Oo
        /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
        public OooO0O0 OooO00o() {
            return new OooO0O0(this);
        }

        public OooO0O0 OooO0o0(int i, Bitmap.Config config) {
            OooO0O0 OooO0O0 = OooO0O0();
            OooO0O0.OooO0O0(i, config);
            return OooO0O0;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        OooO0o0 = configArr;
        OooO0o = configArr;
        OooO0oO = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        OooO0oo = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        OooO = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    private static Bitmap.Config[] OooO(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return OooO0o;
        }
        int i = OooO00o.OooO00o[config.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Bitmap.Config[]{config} : OooO : OooO0oo : OooO0oO : OooO0o0;
    }

    private void OooO0o0(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> navigableMapOooOO0 = OooOO0(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapOooOO0.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapOooOO0.remove(num);
                return;
            } else {
                navigableMapOooOO0.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + OooO0OO(bitmap) + ", this: " + this);
    }

    private OooO0O0 OooO0oO(int i, Bitmap.Config config) {
        OooO0O0 OooO0o02 = this.OooO00o.OooO0o0(i, config);
        for (Bitmap.Config config2 : OooO(config)) {
            Integer numCeilingKey = OooOO0(config2).ceilingKey(Integer.valueOf(i));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i * 8) {
                if (numCeilingKey.intValue() == i) {
                    if (config2 == null) {
                        if (config == null) {
                            return OooO0o02;
                        }
                    } else if (config2.equals(config)) {
                        return OooO0o02;
                    }
                }
                this.OooO00o.OooO0OO(OooO0o02);
                return this.OooO00o.OooO0o0(numCeilingKey.intValue(), config2);
            }
        }
        return OooO0o02;
    }

    public static String OooO0oo(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    private NavigableMap<Integer, Integer> OooOO0(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.OooO0OO.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.OooO0OO.put(config, treeMap);
        return treeMap;
    }

    @Override // z2.oO00OOO
    public String OooO00o(int i, int i2, Bitmap.Config config) {
        return OooO0oo(t2.OooO0oO(i, i2, config), config);
    }

    @Override // z2.oO00OOO
    public int OooO0O0(Bitmap bitmap) {
        return t2.OooO0oo(bitmap);
    }

    @Override // z2.oO00OOO
    public String OooO0OO(Bitmap bitmap) {
        return OooO0oo(t2.OooO0oo(bitmap), bitmap.getConfig());
    }

    @Override // z2.oO00OOO
    public void OooO0Oo(Bitmap bitmap) {
        OooO0O0 OooO0o02 = this.OooO00o.OooO0o0(t2.OooO0oo(bitmap), bitmap.getConfig());
        this.OooO0O0.OooO0Oo(OooO0o02, bitmap);
        NavigableMap<Integer, Integer> navigableMapOooOO0 = OooOO0(bitmap.getConfig());
        Integer num = (Integer) navigableMapOooOO0.get(Integer.valueOf(OooO0o02.OooO0O0));
        navigableMapOooOO0.put(Integer.valueOf(OooO0o02.OooO0O0), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // z2.oO00OOO
    @Nullable
    public Bitmap OooO0o(int i, int i2, Bitmap.Config config) {
        OooO0O0 oooO0O0OooO0oO = OooO0oO(t2.OooO0oO(i, i2, config), config);
        Bitmap bitmapOooO00o = this.OooO0O0.OooO00o(oooO0O0OooO0oO);
        if (bitmapOooO00o != null) {
            OooO0o0(Integer.valueOf(oooO0O0OooO0oO.OooO0O0), bitmapOooO00o);
            bitmapOooO00o.reconfigure(i, i2, config);
        }
        return bitmapOooO00o;
    }

    @Override // z2.oO00OOO
    @Nullable
    public Bitmap removeLast() {
        Bitmap bitmapOooO0o = this.OooO0O0.OooO0o();
        if (bitmapOooO0o != null) {
            OooO0o0(Integer.valueOf(t2.OooO0oo(bitmapOooO0o)), bitmapOooO0o);
        }
        return bitmapOooO0o;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.OooO0O0);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.OooO0OO.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.OooO0OO.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
