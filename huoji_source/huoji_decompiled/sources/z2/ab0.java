package z2;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public class ab0 extends ra0 {
    public ab0(SQLiteDatabase sQLiteDatabase) {
        this.OooOO0 = sQLiteDatabase;
    }

    private void o000OOo(ua0 ua0Var, ContentValues contentValues) {
        Map<String, Long> associatedModelsMapWithoutFK = ua0Var.getAssociatedModelsMapWithoutFK();
        for (String str : associatedModelsMapWithoutFK.keySet()) {
            contentValues.put(OooO0oo(str), associatedModelsMapWithoutFK.get(str));
        }
    }

    private int o00oO0O(String str, ContentValues contentValues, String... strArr) {
        pc0.OooO0OO(strArr);
        if (contentValues.size() > 0) {
            return this.OooOO0.update(str, contentValues, OoooO(strArr), OoooO0O(strArr));
        }
        return 0;
    }

    private void o00oO0o(ContentValues contentValues) {
        if (Build.VERSION.SDK_INT >= 11) {
            HashMap map = new HashMap();
            for (String str : contentValues.keySet()) {
                if (rc0.OooOOo0(str)) {
                    map.put(str, contentValues.get(str));
                }
            }
            for (String str2 : map.keySet()) {
                String strOooO0Oo = rc0.OooO0Oo(str2);
                Object obj = contentValues.get(str2);
                contentValues.remove(str2);
                if (obj == null) {
                    contentValues.putNull(strOooO0Oo);
                } else {
                    String name = obj.getClass().getName();
                    if ("java.lang.Byte".equals(name)) {
                        contentValues.put(strOooO0Oo, (Byte) obj);
                    } else if ("[B".equals(name)) {
                        contentValues.put(strOooO0Oo, (byte[]) obj);
                    } else if ("java.lang.Boolean".equals(name)) {
                        contentValues.put(strOooO0Oo, (Boolean) obj);
                    } else if ("java.lang.String".equals(name)) {
                        contentValues.put(strOooO0Oo, (String) obj);
                    } else if ("java.lang.Float".equals(name)) {
                        contentValues.put(strOooO0Oo, (Float) obj);
                    } else if ("java.lang.Long".equals(name)) {
                        contentValues.put(strOooO0Oo, (Long) obj);
                    } else if ("java.lang.Integer".equals(name)) {
                        contentValues.put(strOooO0Oo, (Integer) obj);
                    } else if ("java.lang.Short".equals(name)) {
                        contentValues.put(strOooO0Oo, (Short) obj);
                    } else if ("java.lang.Double".equals(name)) {
                        contentValues.put(strOooO0Oo, (Double) obj);
                    }
                }
            }
        }
    }

    private void o0O0O00(ua0 ua0Var, List<Field> list, long... jArr) throws IllegalAccessException, InvocationTargetException {
        Iterator it;
        Iterator<Field> it2;
        long[] jArr2 = jArr;
        if (jArr2 == null || jArr2.length <= 0) {
            return;
        }
        Iterator<Field> it3 = list.iterator();
        while (it3.hasNext()) {
            Field next = it3.next();
            pa0 pa0Var = (pa0) next.getAnnotation(pa0.class);
            String strOooOO0O = OooOO0O(next);
            String strAlgorithm = (pa0Var == null || !"java.lang.String".equals(strOooOO0O)) ? null : pa0Var.algorithm();
            next.setAccessible(true);
            Collection collection = (Collection) next.get(ua0Var);
            if (collection != null && !collection.isEmpty()) {
                String strOooO = rc0.OooO(ua0Var.getClassName(), next.getName());
                String strOooOO0 = rc0.OooOO0(ua0Var.getClassName());
                int length = jArr2.length;
                int i = 0;
                while (i < length) {
                    long j = jArr2[i];
                    this.OooOO0.delete(strOooO, strOooOO0 + " = ?", new String[]{String.valueOf(j)});
                    Iterator it4 = collection.iterator();
                    while (it4.hasNext()) {
                        Object next2 = it4.next();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(strOooOO0, Long.valueOf(j));
                        Object objOooOoo = OooOoo(strAlgorithm, next2);
                        if (ua0Var.getClassName().equals(strOooOO0O)) {
                            ua0 ua0Var2 = (ua0) objOooOoo;
                            if (ua0Var2 != null) {
                                long baseObjId = ua0Var2.getBaseObjId();
                                if (baseObjId > 0) {
                                    contentValues.put(rc0.OooOO0o(next), Long.valueOf(baseObjId));
                                    it = it4;
                                    it2 = it3;
                                }
                            }
                        } else {
                            it = it4;
                            it2 = it3;
                            ta0.OooO0O0(contentValues, "put", new Object[]{rc0.OooO0Oo(pc0.OooO0O0(next.getName())), objOooOoo}, contentValues.getClass(), new Class[]{String.class, OooOO0(next)});
                        }
                        this.OooOO0.insert(strOooO, null, contentValues);
                        it4 = it;
                        it3 = it2;
                    }
                    i++;
                    jArr2 = jArr;
                    it3 = it3;
                }
            }
            jArr2 = jArr;
            it3 = it3;
        }
    }

    private void o0OO00O(ua0 ua0Var, ContentValues contentValues, long... jArr) {
        String str = null;
        try {
            try {
                ua0 ua0VarOooo0OO = Oooo0OO(ua0Var);
                Class<?> cls = ua0VarOooo0OO.getClass();
                String str2 = null;
                for (String str3 : ua0Var.getFieldsToSetToDefault()) {
                    try {
                        if (!OooOOOo(str3)) {
                            try {
                                Field declaredField = cls.getDeclaredField(str3);
                                if (!OooOOOO(declaredField.getType())) {
                                    Oooooo(ua0VarOooo0OO, declaredField, contentValues);
                                } else if (jArr != null && jArr.length > 0 && pc0.OooO0oo(OooOO0O(declaredField))) {
                                    String strOooO = rc0.OooO(ua0Var.getClassName(), declaredField.getName());
                                    String strOooOO0 = rc0.OooOO0(ua0Var.getClassName());
                                    StringBuilder sb = new StringBuilder();
                                    int length = jArr.length;
                                    int i = 0;
                                    boolean z = false;
                                    while (i < length) {
                                        long j = jArr[i];
                                        if (z) {
                                            sb.append(" or ");
                                        }
                                        sb.append(strOooOO0);
                                        sb.append(" = ");
                                        sb.append(j);
                                        i++;
                                        z = true;
                                    }
                                    this.OooOO0.delete(strOooO, sb.toString(), null);
                                }
                                str2 = str3;
                            } catch (NoSuchFieldException e) {
                                e = e;
                                str = str3;
                                throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(ua0Var.getClassName(), str), e);
                            }
                        }
                    } catch (NoSuchFieldException e2) {
                        e = e2;
                        str = str2;
                    }
                }
            } catch (NoSuchFieldException e3) {
                e = e3;
            }
        } catch (Exception e4) {
            throw new LitePalSupportException(e4.getMessage(), e4);
        }
    }

    private int o0ooOO0(ua0 ua0Var, long j, ContentValues contentValues) {
        oo000o(ua0Var);
        o000OOo(ua0Var, contentValues);
        return oo0o0Oo(ua0Var, j) + 0;
    }

    private void oo000o(ua0 ua0Var) {
        try {
            OooOoO0(ua0Var, OooO0o0(ua0Var.getClassName()));
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    private int oo0o0Oo(ua0 ua0Var, long j) {
        Map<String, Set<Long>> associatedModelsMapWithFK = ua0Var.getAssociatedModelsMapWithFK();
        ContentValues contentValues = new ContentValues();
        for (String str : associatedModelsMapWithFK.keySet()) {
            contentValues.clear();
            contentValues.put(OooO0oo(ua0Var.getTableName()), Long.valueOf(j));
            Set<Long> set = associatedModelsMapWithFK.get(str);
            if (set != null && !set.isEmpty()) {
                return this.OooOO0.update(str, contentValues, OoooOO0(set), null);
            }
        }
        return 0;
    }

    public int o0OOO0o(String str, ContentValues contentValues, String... strArr) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        o00oO0o(contentValues);
        return o00oO0O(str, contentValues, strArr);
    }

    public int o0Oo0oo(ua0 ua0Var, String... strArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        List<Field> listOooOO0o = OooOO0o(ua0Var.getClassName());
        List<Field> listOooOOO0 = OooOOO0(ua0Var.getClassName());
        long[] jArr = null;
        if (!listOooOOO0.isEmpty()) {
            List listOooO = na0.OooooO0("id").Oooo0OO(strArr).OooO(ua0Var.getClass());
            if (listOooO.size() > 0) {
                int size = listOooO.size();
                long[] jArr2 = new long[size];
                for (int i = 0; i < size; i++) {
                    jArr2[i] = ((ua0) listOooO.get(i)).getBaseObjId();
                }
                o0O0O00(ua0Var, listOooOOO0, jArr2);
                jArr = jArr2;
            }
        }
        ContentValues contentValues = new ContentValues();
        OoooooO(ua0Var, listOooOO0o, contentValues);
        o0OO00O(ua0Var, contentValues, jArr);
        return o00oO0O(ua0Var.getTableName(), contentValues, strArr);
    }

    public int o0ooOOo(Class<?> cls, long j, ContentValues contentValues) {
        if (contentValues.size() <= 0) {
            return 0;
        }
        o00oO0o(contentValues);
        return this.OooOO0.update(OoooO0(cls), contentValues, "id = " + j, null);
    }

    public int o0ooOoO(ua0 ua0Var, long j) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        List<Field> listOooOO0o = OooOO0o(ua0Var.getClassName());
        o0O0O00(ua0Var, OooOOO0(ua0Var.getClassName()), j);
        ContentValues contentValues = new ContentValues();
        OoooooO(ua0Var, listOooOO0o, contentValues);
        o0OO00O(ua0Var, contentValues, j);
        if (contentValues.size() <= 0) {
            return 0;
        }
        return this.OooOO0.update(ua0Var.getTableName(), contentValues, "id = " + j, null);
    }
}
