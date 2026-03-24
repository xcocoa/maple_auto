package z2;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public class za0 extends ra0 {
    private ContentValues OooOOOO = new ContentValues();

    public za0(SQLiteDatabase sQLiteDatabase) {
        this.OooOO0 = sQLiteDatabase;
    }

    private long o00000(ua0 ua0Var, ContentValues contentValues) {
        if (contentValues.size() == 0) {
            contentValues.putNull("id");
        }
        return this.OooOO0.insert(ua0Var.getTableName(), null, contentValues);
    }

    private void o000000o(ContentValues contentValues, ua0 ua0Var) {
        Map<String, Long> associatedModelsMapWithoutFK = ua0Var.getAssociatedModelsMapWithoutFK();
        for (String str : associatedModelsMapWithoutFK.keySet()) {
            contentValues.put(OooO0oo(str), associatedModelsMapWithoutFK.get(str));
        }
    }

    private void o00000O(long j) {
        if (j == -1) {
            throw new LitePalSupportException(LitePalSupportException.SAVE_FAILED);
        }
    }

    private boolean o00000O0(String str, Class<?> cls, long j) {
        return (str == null || cls == null || j <= 0) ? false : true;
    }

    private void o00000OO(ua0 ua0Var) {
        Map<String, Set<Long>> associatedModelsMapWithFK = ua0Var.getAssociatedModelsMapWithFK();
        ContentValues contentValues = new ContentValues();
        for (String str : associatedModelsMapWithFK.keySet()) {
            contentValues.clear();
            contentValues.put(OooO0oo(ua0Var.getTableName()), Long.valueOf(ua0Var.getBaseObjId()));
            Set<Long> set = associatedModelsMapWithFK.get(str);
            if (set != null && !set.isEmpty()) {
                this.OooOO0.update(str, contentValues, OoooOO0(set), null);
            }
        }
    }

    private void o00000Oo(ua0 ua0Var, List<Field> list, long j) throws IllegalAccessException, InvocationTargetException {
        for (Field field : list) {
            pa0 pa0Var = (pa0) field.getAnnotation(pa0.class);
            String strOooOO0O = OooOO0O(field);
            String strAlgorithm = (pa0Var == null || !"java.lang.String".equals(strOooOO0O)) ? null : pa0Var.algorithm();
            char c = 1;
            field.setAccessible(true);
            Collection collection = (Collection) field.get(ua0Var);
            if (collection != null) {
                Log.d(ra0.OooOOO, "updateGenericTables: class name is " + ua0Var.getClassName() + " , field name is " + field.getName());
                String strOooO = rc0.OooO(ua0Var.getClassName(), field.getName());
                String strOooOO0 = rc0.OooOO0(ua0Var.getClassName());
                this.OooOO0.delete(strOooO, strOooOO0 + " = ?", new String[]{String.valueOf(j)});
                for (Object obj : collection) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(strOooOO0, Long.valueOf(j));
                    Object objOooOoo = OooOoo(strAlgorithm, obj);
                    if (ua0Var.getClassName().equals(strOooOO0O)) {
                        ua0 ua0Var2 = (ua0) objOooOoo;
                        if (ua0Var2 != null) {
                            long baseObjId = ua0Var2.getBaseObjId();
                            if (baseObjId > 0) {
                                contentValues.put(rc0.OooOO0o(field), Long.valueOf(baseObjId));
                            }
                        }
                    } else {
                        Object[] objArr = new Object[2];
                        objArr[0] = pc0.OooO0O0(rc0.OooO0Oo(field.getName()));
                        objArr[c] = objOooOoo;
                        Class[] clsArr = new Class[2];
                        clsArr[0] = String.class;
                        clsArr[c] = OooOO0(field);
                        ta0.OooO0O0(contentValues, "put", objArr, contentValues.getClass(), clsArr);
                    }
                    this.OooOO0.insert(strOooO, null, contentValues);
                    c = 1;
                }
            }
        }
    }

    private void o00000o0(ua0 ua0Var, ContentValues contentValues) {
        if (contentValues.size() > 0) {
            this.OooOO0.update(ua0Var.getTableName(), contentValues, "id = ?", new String[]{String.valueOf(ua0Var.getBaseObjId())});
        }
    }

    private void o000OOo(ua0 ua0Var, boolean z) {
        Map<String, List<Long>> associatedModelsMapForJoinTable = ua0Var.getAssociatedModelsMapForJoinTable();
        ContentValues contentValues = new ContentValues();
        for (String str : associatedModelsMapForJoinTable.keySet()) {
            String strOooo0oo = Oooo0oo(ua0Var, str);
            if (z) {
                this.OooOO0.delete(strOooo0oo, oo0o0Oo(ua0Var), new String[]{String.valueOf(ua0Var.getBaseObjId())});
            }
            Iterator<Long> it = associatedModelsMapForJoinTable.get(str).iterator();
            while (it.hasNext()) {
                long jLongValue = it.next().longValue();
                contentValues.clear();
                contentValues.put(OooO0oo(ua0Var.getTableName()), Long.valueOf(ua0Var.getBaseObjId()));
                contentValues.put(OooO0oo(str), Long.valueOf(jLongValue));
                this.OooOO0.insert(strOooo0oo, null, contentValues);
            }
        }
    }

    private void o00oO0O(ua0 ua0Var, Field field, long j) {
        try {
            OoooOOO(ua0Var, j);
            if (field != null) {
                o0O0O00(ua0Var, field.getName(), field.getType(), j);
            }
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    private void o00oO0o(ua0 ua0Var, List<Field> list) throws IllegalAccessException, InvocationTargetException {
        o00000Oo(ua0Var, list, ua0Var.getBaseObjId());
        o00000OO(ua0Var);
        o000OOo(ua0Var, true);
        o0ooOoO(ua0Var);
    }

    private void o0O0O00(ua0 ua0Var, String str, Class<?> cls, long j) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Object objValueOf;
        if (o00000O0(str, cls, j)) {
            if (cls == Integer.TYPE || cls == Integer.class) {
                objValueOf = Integer.valueOf((int) j);
            } else {
                if (cls != Long.TYPE && cls != Long.class) {
                    throw new LitePalSupportException(LitePalSupportException.ID_TYPE_INVALID_EXCEPTION);
                }
                objValueOf = Long.valueOf(j);
            }
            ta0.OooO0Oo(ua0Var, str, objValueOf, ua0Var.getClass());
        }
    }

    private Field o0OO00O(List<Field> list) {
        for (Field field : list) {
            if (OooOOOo(field.getName())) {
                return field;
            }
        }
        return null;
    }

    private void o0OOO0o(ua0 ua0Var, List<Field> list, List<Field> list2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.OooOOOO.clear();
        o0ooOO0(ua0Var, list, this.OooOOOO);
        oo000o(ua0Var, list, list2, o00000(ua0Var, this.OooOOOO));
    }

    private void o0Oo0oo(ua0 ua0Var, List<Field> list, List<Field> list2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.OooOOOO.clear();
        o0ooOOo(ua0Var, list, this.OooOOOO);
        o00000o0(ua0Var, this.OooOOOO);
        o00oO0o(ua0Var, list2);
    }

    private void o0ooOO0(ua0 ua0Var, List<Field> list, ContentValues contentValues) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        OoooooO(ua0Var, list, contentValues);
        o000000o(contentValues, ua0Var);
    }

    private void o0ooOOo(ua0 ua0Var, List<Field> list, ContentValues contentValues) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        OoooooO(ua0Var, list, contentValues);
        o000000o(contentValues, ua0Var);
        Iterator<String> it = ua0Var.getListToClearSelfFK().iterator();
        while (it.hasNext()) {
            contentValues.putNull(it.next());
        }
    }

    private void o0ooOoO(ua0 ua0Var) {
        for (String str : ua0Var.getListToClearAssociatedFK()) {
            String strOooO0oo = OooO0oo(ua0Var.getTableName());
            ContentValues contentValues = new ContentValues();
            contentValues.putNull(strOooO0oo);
            this.OooOO0.update(str, contentValues, strOooO0oo + " = " + ua0Var.getBaseObjId(), null);
        }
    }

    private void oo000o(ua0 ua0Var, List<Field> list, List<Field> list2, long j) throws IllegalAccessException, InvocationTargetException {
        o00000O(j);
        o00oO0O(ua0Var, o0OO00O(list), j);
        o00000Oo(ua0Var, list2, j);
        o00000OO(ua0Var);
        o000OOo(ua0Var, false);
    }

    private String oo0o0Oo(ua0 ua0Var) {
        return OooO0oo(ua0Var.getTableName()) + " = ?";
    }

    public void o000000(ua0 ua0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        String className = ua0Var.getClassName();
        List<Field> listOooOO0o = OooOO0o(className);
        List<Field> listOooOOO0 = OooOOO0(className);
        Collection<ob0> collectionOooO0o0 = OooO0o0(className);
        boolean zIsSaved = ua0Var.isSaved();
        OooOoO0(ua0Var, collectionOooO0o0);
        if (zIsSaved) {
            o0Oo0oo(ua0Var, listOooOO0o, listOooOOO0);
        } else {
            o0OOO0o(ua0Var, listOooOO0o, listOooOOO0);
            OooOoO0(ua0Var, collectionOooO0o0);
        }
    }

    public <T extends ua0> void o000000O(Collection<T> collection) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (collection == null || collection.size() <= 0) {
            return;
        }
        ua0[] ua0VarArr = (ua0[]) collection.toArray(new ua0[0]);
        String className = ua0VarArr[0].getClassName();
        List<Field> listOooOO0o = OooOO0o(className);
        List<Field> listOooOOO0 = OooOOO0(className);
        Collection<ob0> collectionOooO0o0 = OooO0o0(className);
        for (ua0 ua0Var : ua0VarArr) {
            boolean zIsSaved = ua0Var.isSaved();
            OooOoO0(ua0Var, collectionOooO0o0);
            if (zIsSaved) {
                o0Oo0oo(ua0Var, listOooOO0o, listOooOOO0);
            } else {
                o0OOO0o(ua0Var, listOooOO0o, listOooOOO0);
                OooOoO0(ua0Var, collectionOooO0o0);
            }
            ua0Var.clearAssociatedData();
        }
    }
}
