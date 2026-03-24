package z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ya0 extends ra0 {
    public ya0(SQLiteDatabase sQLiteDatabase) {
        this.OooOO0 = sQLiteDatabase;
    }

    public <T> T o00oO0O(Class<T> cls, long j, boolean z) {
        List<T> listO0OoOo0 = o0OoOo0(cls, null, "id = ?", new String[]{String.valueOf(j)}, null, null, null, null, Oooo0o(cls.getName(), z));
        if (listO0OoOo0.size() > 0) {
            return listO0OoOo0.get(0);
        }
        return null;
    }

    public int o00oO0o(String str, String[] strArr) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        return ((Integer) OooooOo(str, new String[]{"count(1)"}, strArr, Integer.TYPE)).intValue();
    }

    public <T> T o0OO00O(String str, String str2, String[] strArr, Class<T> cls) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        return (T) OooooOo(str, new String[]{"min(" + str2 + ")"}, strArr, cls);
    }

    public <T> T o0OOO0o(Class<T> cls, boolean z) {
        List<T> listO0OoOo0 = o0OoOo0(cls, null, null, null, null, null, "id desc", "1", Oooo0o(cls.getName(), z));
        if (listO0OoOo0.size() > 0) {
            return listO0OoOo0.get(0);
        }
        return null;
    }

    public <T> T o0Oo0oo(String str, String str2, String[] strArr, Class<T> cls) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        return (T) OooooOo(str, new String[]{"max(" + str2 + ")"}, strArr, cls);
    }

    public <T> List<T> o0ooOO0(Class<T> cls, String[] strArr, String[] strArr2, String str, String str2, boolean z) {
        pc0.OooO0OO(strArr2);
        if (strArr2 != null && strArr2.length > 0) {
            strArr2[0] = rc0.OooO0o0(strArr2[0]);
        }
        return o0OoOo0(cls, strArr, OoooO(strArr2), OoooO0O(strArr2), null, null, rc0.OooO00o(str), str2, Oooo0o(cls.getName(), z));
    }

    public <T> List<T> o0ooOOo(Class<T> cls, boolean z, long... jArr) {
        return OoooOOo(jArr) ? o0OoOo0(cls, null, null, null, null, null, "id", null, Oooo0o(cls.getName(), z)) : o0OoOo0(cls, null, o000oOoO(jArr), null, null, null, "id", null, Oooo0o(cls.getName(), z));
    }

    public <T> T o0ooOoO(Class<T> cls, boolean z) {
        List<T> listO0OoOo0 = o0OoOo0(cls, null, null, null, null, null, "id", "1", Oooo0o(cls.getName(), z));
        if (listO0OoOo0.size() > 0) {
            return listO0OoOo0.get(0);
        }
        return null;
    }

    public double oo000o(String str, String str2, String[] strArr) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        return ((Double) OooooOo(str, new String[]{"avg(" + str2 + ")"}, strArr, Double.TYPE)).doubleValue();
    }

    public <T> T oo0o0Oo(String str, String str2, String[] strArr, Class<T> cls) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        return (T) OooooOo(str, new String[]{"sum(" + str2 + ")"}, strArr, cls);
    }
}
