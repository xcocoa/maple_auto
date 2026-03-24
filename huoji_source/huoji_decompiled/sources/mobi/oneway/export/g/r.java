package mobi.oneway.export.g;

import android.content.SharedPreferences;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    private static final String a = "OneWay_sp";
    private String b;

    public r(String str) {
        this.b = str;
    }

    public static r a() {
        return a(a);
    }

    public static r a(String str) {
        return new r(str);
    }

    private SharedPreferences d() {
        return mobi.oneway.export.a.b.a().getSharedPreferences(this.b, 0);
    }

    public r a(String str, Object obj) {
        SharedPreferences.Editor editorEdit = d().edit();
        if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editorEdit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(str, ((Long) obj).longValue());
        } else {
            editorEdit.putString(str, String.valueOf(obj));
        }
        editorEdit.apply();
        return this;
    }

    public Object b(String str, Object obj) {
        SharedPreferences sharedPreferencesD = d();
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferencesD.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferencesD.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferencesD.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferencesD.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return sharedPreferencesD.getString(str, (String) obj);
        }
        return null;
    }

    public Map<String, ?> b() {
        return d().getAll();
    }

    public r b(String str) {
        d().edit().remove(str).apply();
        return this;
    }

    public r c() {
        d().edit().clear().apply();
        return this;
    }
}
