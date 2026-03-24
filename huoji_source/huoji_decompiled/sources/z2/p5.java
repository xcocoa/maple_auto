package z2;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ApplySharedPref"})
public final class p5 {
    private static final Map<String, p5> OooO0O0 = new HashMap();
    private SharedPreferences OooO00o;

    private p5(String str) {
        this.OooO00o = u5.OooO00o().getSharedPreferences(str, 0);
    }

    private p5(String str, int i) {
        this.OooO00o = u5.OooO00o().getSharedPreferences(str, i);
    }

    public static p5 OooO() {
        return OooOO0o("", 0);
    }

    public static p5 OooOO0(int i) {
        return OooOO0o("", i);
    }

    public static p5 OooOO0O(String str) {
        return OooOO0o(str, 0);
    }

    public static p5 OooOO0o(String str, int i) {
        if (OooOo0(str)) {
            str = "spUtils";
        }
        Map<String, p5> map = OooO0O0;
        p5 p5Var = map.get(str);
        if (p5Var == null) {
            synchronized (p5.class) {
                p5Var = map.get(str);
                if (p5Var == null) {
                    p5Var = new p5(str, i);
                    map.put(str, p5Var);
                }
            }
        }
        return p5Var;
    }

    private static boolean OooOo0(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public void OooO00o() {
        OooO0O0(false);
    }

    public void OooO0O0(boolean z) {
        if (z) {
            this.OooO00o.edit().clear().commit();
        } else {
            this.OooO00o.edit().clear().apply();
        }
    }

    public boolean OooO0OO(@NonNull String str) {
        return this.OooO00o.contains(str);
    }

    public Map<String, ?> OooO0Oo() {
        return this.OooO00o.getAll();
    }

    public boolean OooO0o(@NonNull String str, boolean z) {
        return this.OooO00o.getBoolean(str, z);
    }

    public boolean OooO0o0(@NonNull String str) {
        return OooO0o(str, false);
    }

    public float OooO0oO(@NonNull String str) {
        return OooO0oo(str, -1.0f);
    }

    public float OooO0oo(@NonNull String str, float f) {
        return this.OooO00o.getFloat(str, f);
    }

    public int OooOOO(@NonNull String str, int i) {
        return this.OooO00o.getInt(str, i);
    }

    public int OooOOO0(@NonNull String str) {
        return OooOOO(str, -1);
    }

    public long OooOOOO(@NonNull String str) {
        return OooOOOo(str, -1L);
    }

    public long OooOOOo(@NonNull String str, long j) {
        return this.OooO00o.getLong(str, j);
    }

    public String OooOOo(@NonNull String str, String str2) {
        return this.OooO00o.getString(str, str2);
    }

    public String OooOOo0(@NonNull String str) {
        return OooOOo(str, "");
    }

    public Set<String> OooOOoo(@NonNull String str) {
        return OooOo00(str, Collections.emptySet());
    }

    public void OooOo(@NonNull String str, int i) {
        OooOoO0(str, i, false);
    }

    public Set<String> OooOo00(@NonNull String str, Set<String> set) {
        return this.OooO00o.getStringSet(str, set);
    }

    public void OooOo0O(@NonNull String str, float f) {
        OooOo0o(str, f, false);
    }

    public void OooOo0o(@NonNull String str, float f, boolean z) {
        if (z) {
            this.OooO00o.edit().putFloat(str, f).commit();
        } else {
            this.OooO00o.edit().putFloat(str, f).apply();
        }
    }

    public void OooOoO(@NonNull String str, long j) {
        OooOoOO(str, j, false);
    }

    public void OooOoO0(@NonNull String str, int i, boolean z) {
        if (z) {
            this.OooO00o.edit().putInt(str, i).commit();
        } else {
            this.OooO00o.edit().putInt(str, i).apply();
        }
    }

    public void OooOoOO(@NonNull String str, long j, boolean z) {
        if (z) {
            this.OooO00o.edit().putLong(str, j).commit();
        } else {
            this.OooO00o.edit().putLong(str, j).apply();
        }
    }

    public void OooOoo(@NonNull String str, String str2, boolean z) {
        if (z) {
            this.OooO00o.edit().putString(str, str2).commit();
        } else {
            this.OooO00o.edit().putString(str, str2).apply();
        }
    }

    public void OooOoo0(@NonNull String str, String str2) {
        OooOoo(str, str2, false);
    }

    public void OooOooO(@NonNull String str, Set<String> set) {
        OooOooo(str, set, false);
    }

    public void OooOooo(@NonNull String str, Set<String> set, boolean z) {
        if (z) {
            this.OooO00o.edit().putStringSet(str, set).commit();
        } else {
            this.OooO00o.edit().putStringSet(str, set).apply();
        }
    }

    public void Oooo0(@NonNull String str, boolean z) {
        if (z) {
            this.OooO00o.edit().remove(str).commit();
        } else {
            this.OooO00o.edit().remove(str).apply();
        }
    }

    public void Oooo000(@NonNull String str, boolean z) {
        Oooo00O(str, z, false);
    }

    public void Oooo00O(@NonNull String str, boolean z, boolean z3) {
        if (z3) {
            this.OooO00o.edit().putBoolean(str, z).commit();
        } else {
            this.OooO00o.edit().putBoolean(str, z).apply();
        }
    }

    public void Oooo00o(@NonNull String str) {
        Oooo0(str, false);
    }
}
