package z2;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class b3 implements SharedPreferences {
    private static Map<String, b3> OooO0OO;
    private static AtomicInteger OooO0Oo = new AtomicInteger(0);
    private Context OooO00o;
    private String OooO0O0;

    public class OooO00o implements SharedPreferences.Editor {
        private ArrayList<z2> OooO00o = new ArrayList<>();

        public OooO00o() {
        }

        private SharedPreferences.Editor OooO00o(z2 z2Var) {
            synchronized (this) {
                this.OooO00o.add(z2Var);
            }
            return this;
        }

        private ArrayList<Bundle> OooO0O0() {
            ArrayList<Bundle> arrayList;
            synchronized (this) {
                arrayList = new ArrayList<>(this.OooO00o.size());
                Iterator<z2> it = this.OooO00o.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().OooO0O0());
                }
            }
            return arrayList;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(a3.OooO0oO, OooO0O0());
            bundle.putInt(z2.OooOOo0, 6);
            try {
                b3.this.OooO00o.getContentResolver().call(a3.OooO0OO, a3.OooO0o0, b3.this.OooO0O0, bundle);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            return OooO00o(z2.OooOO0O());
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            Bundle bundleCall;
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(a3.OooO0oO, OooO0O0());
            bundle.putInt(z2.OooOOo0, 5);
            try {
                bundleCall = b3.this.OooO00o.getContentResolver().call(a3.OooO0OO, a3.OooO0o0, b3.this.OooO0O0, bundle);
            } catch (Exception e) {
                e.printStackTrace();
                bundleCall = null;
            }
            if (bundleCall == null) {
                return false;
            }
            return bundleCall.getBoolean(a3.OooO0oO, false);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            return OooO00o(z2.OooOOO0(str).OooOOOO(z));
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            return OooO00o(z2.OooOOO0(str).OooOOOo(f));
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            return OooO00o(z2.OooOOO0(str).OooOOo0(i));
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            return OooO00o(z2.OooOOO0(str).OooOOoo(j));
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, @Nullable String str2) {
            return OooO00o(z2.OooOOO0(str).OooOo0O(str2));
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set) {
            return OooO00o(z2.OooOOO0(str).OooOo0(set));
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            return OooO00o(z2.OooOOO(str));
        }
    }

    private b3(Context context, String str) {
        this.OooO00o = context.getApplicationContext();
        this.OooO0O0 = str;
    }

    private static SharedPreferences OooO0OO(@NonNull Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    private static SharedPreferences OooO0Oo(@NonNull Context context, String str) {
        b3 b3Var;
        synchronized (b3.class) {
            if (OooO0OO == null) {
                OooO0OO = new ArrayMap();
            }
            b3Var = OooO0OO.get(str);
            if (b3Var == null) {
                b3Var = new b3(context.getApplicationContext(), str);
                OooO0OO.put(str, b3Var);
            }
        }
        return b3Var;
    }

    public static SharedPreferences OooO0o(@NonNull Context context, String str) {
        if (OooO0Oo.get() != 0) {
            return OooO0Oo.get() > 0 ? OooO0OO(context, str) : OooO0Oo(context, str);
        }
        Bundle bundleCall = context.getContentResolver().call(a3.OooO0OO, a3.OooO0o, "", (Bundle) null);
        int i = bundleCall != null ? bundleCall.getInt(a3.OooO0oO) : 0;
        if (i == 0) {
            return OooO0OO(context, str);
        }
        OooO0Oo.set(Process.myPid() == i ? 1 : -1);
        return OooO0o(context, str);
    }

    private z2 OooO0o0(@NonNull z2 z2Var) {
        try {
            return new z2(this.OooO00o.getContentResolver().call(a3.OooO0OO, a3.OooO0Oo, this.OooO0O0, z2Var.OooO0O0()));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(z2.OooOOO, str);
        try {
            return this.OooO00o.getContentResolver().call(a3.OooO0OO, a3.OooO00o, this.OooO0O0, bundle).getBoolean(a3.OooO0oO);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new OooO00o();
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException("Not support method getAll");
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        z2 z2VarOooO0o0 = OooO0o0(z2.OooOO0o(str).OooOOOO(z));
        return z2VarOooO0o0 == null ? z : z2VarOooO0o0.OooO00o(z);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        z2 z2VarOooO0o0 = OooO0o0(z2.OooOO0o(str).OooOOOo(f));
        return z2VarOooO0o0 == null ? f : z2VarOooO0o0.OooO0OO(f);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        z2 z2VarOooO0o0 = OooO0o0(z2.OooOO0o(str).OooOOo0(i));
        return z2VarOooO0o0 == null ? i : z2VarOooO0o0.OooO0Oo(i);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        z2 z2VarOooO0o0 = OooO0o0(z2.OooOO0o(str).OooOOoo(j));
        return z2VarOooO0o0 == null ? j : z2VarOooO0o0.OooO0o(j);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public String getString(String str, @Nullable String str2) {
        z2 z2VarOooO0o0 = OooO0o0(z2.OooOO0o(str).OooOo0O(str2));
        return z2VarOooO0o0 == null ? str2 : z2VarOooO0o0.OooO(str2);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public Set<String> getStringSet(String str, @Nullable Set<String> set) {
        Set<String> setOooO0oo;
        z2 z2VarOooO0o0 = OooO0o0(z2.OooOO0o(str).OooOo0(set));
        return (z2VarOooO0o0 == null || (setOooO0oo = z2VarOooO0o0.OooO0oo()) == null) ? set : setOooO0oo;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }
}
