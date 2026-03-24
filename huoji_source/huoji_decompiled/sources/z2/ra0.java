package z2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.exceptions.DatabaseGenerateException;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ra0 extends la0 {
    public static final String OooOOO = "DataHandler";
    public SQLiteDatabase OooOO0;
    private ua0 OooOO0O;
    private List<ob0> OooOO0o;
    private List<ob0> OooOOO0;

    public class OooO00o {
        public String OooO00o;
        public Field OooO0O0;

        public OooO00o() {
        }
    }

    private void OooOoO(String str) {
        Collection<ob0> collectionOooO0o0 = OooO0o0(str);
        List<ob0> list = this.OooOO0o;
        if (list == null) {
            this.OooOO0o = new ArrayList();
        } else {
            list.clear();
        }
        List<ob0> list2 = this.OooOOO0;
        if (list2 == null) {
            this.OooOOO0 = new ArrayList();
        } else {
            list2.clear();
        }
        for (ob0 ob0Var : collectionOooO0o0) {
            if (ob0Var.OooO0Oo() == 2 || ob0Var.OooO0Oo() == 1) {
                List<ob0> list3 = ob0Var.OooO0o0().equals(str) ? this.OooOO0o : this.OooOOO0;
                list3.add(ob0Var);
            } else if (ob0Var.OooO0Oo() == 3) {
                list3.add(ob0Var);
            }
        }
    }

    private String OooOooo(Class<?> cls) {
        String str = "get" + (cls.isPrimitive() ? pc0.OooO00o(cls.getName()) : cls.getSimpleName());
        if (!"getBoolean".equals(str)) {
            if ("getChar".equals(str) || "getCharacter".equals(str)) {
                return "getString";
            }
            if ("getDate".equals(str)) {
                return "getLong";
            }
            if (!"getInteger".equals(str)) {
                return "getbyte[]".equalsIgnoreCase(str) ? "getBlob" : str;
            }
        }
        return "getInt";
    }

    private Class<?> Oooo(Class<?> cls) {
        if (cls == null || !cls.isPrimitive()) {
            return null;
        }
        String name = cls.getName();
        if ("int".equals(name)) {
            return Integer.class;
        }
        if ("short".equals(name)) {
            return Short.class;
        }
        if ("long".equals(name)) {
            return Long.class;
        }
        if ("float".equals(name)) {
            return Float.class;
        }
        if ("double".equals(name)) {
            return Double.class;
        }
        if ("boolean".equals(name)) {
            return Boolean.class;
        }
        if ("char".equals(name)) {
            return Character.class;
        }
        return null;
    }

    private String Oooo000(Field field) {
        return OooOooo(OooOOOO(field.getType()) ? OooOO0(field) : field.getType());
    }

    private String[] Oooo0O0(String[] strArr, List<Field> list, List<ob0> list2) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        Iterator<Field> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().getName());
        }
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            String str = (String) arrayList.get(i);
            if (pc0.OooO0Oo(arrayList2, str)) {
                arrayList3.add(Integer.valueOf(i));
            } else if (OooOOOo(str)) {
                if (TrayContract.Preferences.Columns.ID.equalsIgnoreCase(str)) {
                    arrayList.set(i, pc0.OooO0O0("id"));
                }
                z = true;
            }
        }
        for (int size = arrayList3.size() - 1; size >= 0; size--) {
            arrayList4.add((String) arrayList.remove(((Integer) arrayList3.get(size)).intValue()));
        }
        for (Field field : list) {
            if (pc0.OooO0Oo(arrayList4, field.getName())) {
                arrayList5.add(field);
            }
        }
        list.clear();
        list.addAll(arrayList5);
        if (list2 != null && list2.size() > 0) {
            for (int i2 = 0; i2 < list2.size(); i2++) {
                arrayList.add(OooO0oo(rc0.OooOOO0(list2.get(i2).OooO0OO())));
            }
        }
        if (!z) {
            arrayList.add(pc0.OooO0O0("id"));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private Object Oooo0oO(Class<?> cls, Class<?> cls2) {
        String name = cls2.getName();
        if ("boolean".equals(name) || "java.lang.Boolean".equals(name)) {
            return Boolean.FALSE;
        }
        if ("float".equals(name) || "java.lang.Float".equals(name)) {
            return Float.valueOf(0.0f);
        }
        if ("double".equals(name) || "java.lang.Double".equals(name)) {
            return Double.valueOf(0.0d);
        }
        if ("int".equals(name) || "java.lang.Integer".equals(name)) {
            return 0;
        }
        if ("long".equals(name) || "java.lang.Long".equals(name)) {
            return 0L;
        }
        if ("short".equals(name) || "java.lang.Short".equals(name)) {
            return 0;
        }
        if ("char".equals(name) || "java.lang.Character".equals(name)) {
            return ' ';
        }
        if ("[B".equals(name) || "[Ljava.lang.Byte;".equals(name)) {
            return new byte[0];
        }
        if ("java.lang.String".equals(name)) {
            return "";
        }
        if (cls == cls2) {
            return null;
        }
        return OooOoOO(cls2);
    }

    private boolean OoooOo0(Field field) {
        String name = field.getType().getName();
        return name.equals("char") || name.endsWith("Character");
    }

    private boolean OoooOoO(ua0 ua0Var, Field field) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ua0 ua0VarOooo0OO = Oooo0OO(ua0Var);
        Object objOooo0o0 = Oooo0o0(ua0Var, field);
        Object objOooo0o02 = Oooo0o0(ua0VarOooo0OO, field);
        return (objOooo0o0 == null || objOooo0o02 == null) ? objOooo0o0 == objOooo0o02 : objOooo0o0.toString().equals(objOooo0o02.toString());
    }

    private boolean OoooOoo(Field field) {
        return "boolean".equals(field.getType().getName());
    }

    private boolean Ooooo00() {
        return za0.class.getName().equals(getClass().getName());
    }

    private boolean Ooooo0o() {
        return ab0.class.getName().equals(getClass().getName());
    }

    private String OooooO0(Field field) {
        String str;
        StringBuilder sb;
        String name = field.getName();
        if (OoooOoo(field)) {
            if (name.matches("^is[A-Z]{1}.*$")) {
                name = name.substring(2);
            }
            str = com.umeng.commonsdk.proguard.v.Y;
        } else {
            str = "get";
        }
        if (name.matches("^[a-z]{1}[A-Z]{1}.*")) {
            sb = new StringBuilder();
            sb.append(str);
            sb.append(name);
        } else {
            sb = new StringBuilder();
            sb.append(str);
            sb.append(pc0.OooO00o(name));
        }
        return sb.toString();
    }

    private String OooooOO(Field field) {
        StringBuilder sb;
        String strOooO00o;
        if (OoooOoo(field) && field.getName().matches("^is[A-Z]{1}.*$")) {
            sb = new StringBuilder();
            sb.append("set");
            strOooO00o = field.getName().substring(2);
        } else if (field.getName().matches("^[a-z]{1}[A-Z]{1}.*")) {
            sb = new StringBuilder();
            sb.append("set");
            strOooO00o = field.getName();
        } else {
            sb = new StringBuilder();
            sb.append("set");
            strOooO00o = pc0.OooO00o(field.getName());
        }
        sb.append(strOooO00o);
        return sb.toString();
    }

    private void Ooooooo(ua0 ua0Var, Field field, ContentValues contentValues) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Ooooo0o()) {
            if (OoooOoO(ua0Var, field)) {
                return;
            }
            Oooooo(ua0Var, field, contentValues);
        } else if (Ooooo00()) {
            Oooooo0(ua0Var, field, contentValues);
        }
    }

    private void o00Ooo(Object obj, Field field, int i, String str, Cursor cursor) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object objInvoke = cursor.getClass().getMethod(str, Integer.TYPE).invoke(cursor, Integer.valueOf(i));
        if (field.getType() == Boolean.TYPE || field.getType() == Boolean.class) {
            if ("0".equals(String.valueOf(objInvoke))) {
                objInvoke = Boolean.FALSE;
            } else if ("1".equals(String.valueOf(objInvoke))) {
                objInvoke = Boolean.TRUE;
            }
        } else if (field.getType() == Character.TYPE || field.getType() == Character.class) {
            objInvoke = Character.valueOf(((String) objInvoke).charAt(0));
        } else if (field.getType() == Date.class) {
            long jLongValue = ((Long) objInvoke).longValue();
            objInvoke = jLongValue <= 0 ? null : new Date(jLongValue);
        }
        if (!OooOOOO(field.getType())) {
            pa0 pa0Var = (pa0) field.getAnnotation(pa0.class);
            if (pa0Var != null && "java.lang.String".equals(field.getType().getName())) {
                objInvoke = OooOoo0(pa0Var.algorithm(), objInvoke);
            }
            ta0.OooO0Oo(obj, field.getName(), objInvoke, obj.getClass());
            return;
        }
        Collection arrayList = (Collection) ta0.OooO00o(obj, field.getName(), obj.getClass());
        if (arrayList == null) {
            arrayList = OooOOo0(field.getType()) ? new ArrayList() : new HashSet();
            ta0.OooO0Oo(obj, field.getName(), arrayList, obj.getClass());
        }
        String strOooOO0O = OooOO0O(field);
        if ("java.lang.String".equals(strOooOO0O)) {
            pa0 pa0Var2 = (pa0) field.getAnnotation(pa0.class);
            if (pa0Var2 != null) {
                objInvoke = OooOoo0(pa0Var2.algorithm(), objInvoke);
            }
        } else if (obj.getClass().getName().equals(strOooOO0O) && ((objInvoke instanceof Long) || (objInvoke instanceof Integer))) {
            objInvoke = na0.OooOOo0(obj.getClass(), ((Long) objInvoke).longValue());
        }
        arrayList.add(objInvoke);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void ooOO(ua0 ua0Var) throws Throwable {
        Cursor cursor;
        Cursor cursorQuery;
        Cursor cursor2;
        HashMap map;
        List<ob0> list = this.OooOOO0;
        if (list == null) {
            return;
        }
        for (ob0 ob0Var : list) {
            String strOooO0OO = ob0Var.OooO0OO();
            boolean z = ob0Var.OooO0Oo() == 3;
            try {
                List<Field> listOooOO0o = OooOO0o(strOooO0OO);
                List<Field> listOooOOO0 = OooOOO0(strOooO0OO);
                if (z) {
                    String tableName = ua0Var.getTableName();
                    String strOooOOO0 = rc0.OooOOO0(strOooO0OO);
                    String strOooOO0O = rc0.OooOO0O(tableName, strOooOOO0);
                    StringBuilder sb = new StringBuilder();
                    sb.append("select * from ");
                    sb.append(strOooOOO0);
                    sb.append(" a inner join ");
                    sb.append(strOooOO0O);
                    sb.append(" b on a.id = b.");
                    sb.append(strOooOOO0 + TrayContract.Preferences.Columns.ID);
                    sb.append(" where b.");
                    sb.append(tableName);
                    sb.append("_id = ?");
                    cursorQuery = na0.OooOoO0(pc0.OooO0O0(sb.toString()), String.valueOf(ua0Var.getBaseObjId()));
                } else {
                    String strOooO0oo = OooO0oo(rc0.OooOOO0(ob0Var.OooO0o()));
                    String strOooOOO02 = rc0.OooOOO0(strOooO0OO);
                    cursorQuery = this.OooOO0.query(pc0.OooO0O0(strOooOOO02), null, strOooO0oo + "=?", new String[]{String.valueOf(ua0Var.getBaseObjId())}, null, null, null, null);
                }
                Cursor cursor3 = cursorQuery;
                if (cursor3 != null) {
                    try {
                        if (cursor3.moveToFirst()) {
                            SparseArray<OooO00o> sparseArray = new SparseArray<>();
                            HashMap map2 = new HashMap();
                            while (true) {
                                ua0 ua0Var2 = (ua0) OooOoOO(Class.forName(strOooO0OO));
                                OoooOOO(ua0Var2, cursor3.getLong(cursor3.getColumnIndexOrThrow("id")));
                                map = map2;
                                cursor2 = cursor3;
                                try {
                                    o00o0O(ua0Var2, listOooOO0o, null, cursor3, sparseArray);
                                    o00Oo0(ua0Var2, listOooOOO0, map);
                                    if (ob0Var.OooO0Oo() == 2 || z) {
                                        Field fieldOooO00o = ob0Var.OooO00o();
                                        Collection arrayList = (Collection) Oooo0o0(ua0Var, fieldOooO00o);
                                        if (arrayList == null) {
                                            arrayList = OooOOo0(fieldOooO00o.getType()) ? new ArrayList() : new HashSet();
                                            ta0.OooO0Oo(ua0Var, fieldOooO00o.getName(), arrayList, ua0Var.getClass());
                                        }
                                        arrayList.add(ua0Var2);
                                    } else if (ob0Var.OooO0Oo() == 1) {
                                        o00O0O(ua0Var, ob0Var.OooO00o(), ua0Var2);
                                    }
                                    if (!cursor2.moveToNext()) {
                                        break;
                                    }
                                    map2 = map;
                                    cursor3 = cursor2;
                                } catch (Exception e) {
                                    e = e;
                                    cursor = cursor2;
                                    try {
                                        throw new LitePalSupportException(e.getMessage(), e);
                                    } catch (Throwable th) {
                                        th = th;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = cursor2;
                                    if (cursor != null) {
                                    }
                                    throw th;
                                }
                            }
                            sparseArray.clear();
                            map.clear();
                        } else {
                            cursor2 = cursor3;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        cursor2 = cursor3;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor3;
                    }
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
            } catch (Exception e3) {
                e = e3;
                cursor = null;
            } catch (Throwable th4) {
                th = th4;
                cursor = null;
            }
        }
    }

    public void OooOoO0(ua0 ua0Var, Collection<ob0> collection) {
        try {
            for (ob0 ob0Var : collection) {
                if (ob0Var.OooO0Oo() == 2) {
                    new wa0().o0Oo0oo(ua0Var, ob0Var);
                } else if (ob0Var.OooO0Oo() == 1) {
                    new xa0().o0Oo0oo(ua0Var, ob0Var);
                } else if (ob0Var.OooO0Oo() == 3) {
                    new va0().o0OO00O(ua0Var, ob0Var);
                }
            }
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    public Object OooOoOO(Class<?> cls) {
        try {
            Constructor<?> constructorOooOooO = OooOooO(cls);
            return constructorOooOooO.newInstance(Oooo0(cls, constructorOooOooO));
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    public Object OooOoo(String str, Object obj) {
        return (str == null || obj == null) ? obj : ua0.AES.equalsIgnoreCase(str) ? vc0.OooO0O0((String) obj) : "MD5".equalsIgnoreCase(str) ? vc0.OooO0OO((String) obj) : obj;
    }

    public Object OooOoo0(String str, Object obj) {
        return (str == null || obj == null || !ua0.AES.equalsIgnoreCase(str)) ? obj : vc0.OooO00o((String) obj);
    }

    public Constructor<?> OooOooO(Class<?> cls) {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        SparseArray sparseArray = new SparseArray();
        int i = Integer.MAX_VALUE;
        for (Constructor<?> constructor : declaredConstructors) {
            int length = constructor.getParameterTypes().length;
            for (Class<?> cls2 : constructor.getParameterTypes()) {
                if (cls2 == cls || (cls2.getName().startsWith("com.android") && cls2.getName().endsWith("InstantReloadException"))) {
                    length += 10000;
                }
            }
            if (sparseArray.get(length) == null) {
                sparseArray.put(length, constructor);
            }
            if (length < i) {
                i = length;
            }
        }
        Constructor<?> constructor2 = (Constructor) sparseArray.get(i);
        if (constructor2 != null) {
            constructor2.setAccessible(true);
        }
        return constructor2;
    }

    public Object[] Oooo0(Class<?> cls, Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            objArr[i] = Oooo0oO(cls, parameterTypes[i]);
        }
        return objArr;
    }

    public ua0 Oooo00O(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        return (ua0) Oooo0o0(ua0Var, ob0Var.OooO00o());
    }

    public Collection<ua0> Oooo00o(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        return (Collection) Oooo0o0(ua0Var, ob0Var.OooO00o());
    }

    public ua0 Oooo0OO(ua0 ua0Var) {
        ua0 ua0Var2 = this.OooOO0O;
        if (ua0Var2 != null) {
            return ua0Var2;
        }
        String className = null;
        try {
            className = ua0Var.getClassName();
            ua0 ua0Var3 = (ua0) Class.forName(className).newInstance();
            this.OooOO0O = ua0Var3;
            return ua0Var3;
        } catch (ClassNotFoundException unused) {
            throw new DatabaseGenerateException(DatabaseGenerateException.CLASS_NOT_FOUND + className);
        } catch (InstantiationException e) {
            throw new LitePalSupportException(className + LitePalSupportException.INSTANTIATION_EXCEPTION, e);
        } catch (Exception e2) {
            throw new LitePalSupportException(e2.getMessage(), e2);
        }
    }

    public List<ob0> Oooo0o(String str, boolean z) {
        if (!z) {
            return null;
        }
        OooOoO(str);
        return this.OooOO0o;
    }

    public Object Oooo0o0(ua0 ua0Var, Field field) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (o00ooo(ua0Var, field)) {
            return ta0.OooO00o(ua0Var, field.getName(), ua0Var.getClass());
        }
        return null;
    }

    public String Oooo0oo(ua0 ua0Var, String str) {
        return pc0.OooO0O0(rc0.OooOO0O(ua0Var.getTableName(), str));
    }

    public String OoooO(String... strArr) {
        if (OoooOOo(strArr) || strArr == null || strArr.length <= 0) {
            return null;
        }
        return strArr[0];
    }

    public String OoooO0(Class<?> cls) {
        return pc0.OooO0O0(rc0.OooOOO0(cls.getName()));
    }

    public Class<?>[] OoooO00(Field field, Object obj, Object[] objArr) {
        Class<?>[] clsArr;
        if (OoooOo0(field)) {
            objArr[1] = String.valueOf(obj);
            return new Class[]{String.class, String.class};
        }
        if (field.getType().isPrimitive()) {
            clsArr = new Class[]{String.class, Oooo(field.getType())};
        } else {
            if ("java.util.Date".equals(field.getType().getName())) {
                return new Class[]{String.class, Long.class};
            }
            clsArr = new Class[]{String.class, field.getType()};
        }
        return clsArr;
    }

    public String[] OoooO0O(String... strArr) {
        if (OoooOOo(strArr) || strArr == null || strArr.length <= 1) {
            return null;
        }
        String[] strArr2 = new String[strArr.length - 1];
        System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
        return strArr2;
    }

    public String OoooOO0(Collection<Long> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if (z) {
                sb.append(" or ");
            }
            z = true;
            sb.append("id = ");
            sb.append(jLongValue);
        }
        return pc0.OooO0O0(sb.toString());
    }

    public void OoooOOO(ua0 ua0Var, long j) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (j > 0) {
            ta0.OooO0OO(ua0Var, "baseObjId", Long.valueOf(j), ua0.class);
        }
    }

    public boolean OoooOOo(Object... objArr) {
        return objArr != null && objArr.length == 0;
    }

    public <T> T OooooOo(String str, String[] strArr, String[] strArr2, Class<T> cls) throws Throwable {
        Cursor cursorQuery;
        pc0.OooO0OO(strArr2);
        Cursor cursor = (T) null;
        try {
            try {
                cursorQuery = this.OooOO0.query(str, strArr, OoooO(strArr2), OoooO0O(strArr2), null, null, null);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                cursor = (T) cursorQuery.getClass().getMethod(OooOooo(cls), Integer.TYPE).invoke(cursorQuery, 0);
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return (T) cursor;
        } catch (Exception e2) {
            e = e2;
            cursor = (T) cursorQuery;
            throw new LitePalSupportException(e.getMessage(), e);
        } catch (Throwable th2) {
            th = th2;
            cursor = cursorQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void Oooooo(ua0 ua0Var, Field field, ContentValues contentValues) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objOooo0o0 = Oooo0o0(ua0Var, field);
        if ("java.util.Date".equals(field.getType().getName()) && objOooo0o0 != null) {
            objOooo0o0 = Long.valueOf(((Date) objOooo0o0).getTime());
        }
        pa0 pa0Var = (pa0) field.getAnnotation(pa0.class);
        if (pa0Var != null && "java.lang.String".equals(field.getType().getName())) {
            objOooo0o0 = OooOoo(pa0Var.algorithm(), objOooo0o0);
        }
        Object[] objArr = {pc0.OooO0O0(rc0.OooO0Oo(field.getName())), objOooo0o0};
        ta0.OooO0O0(contentValues, "put", objArr, contentValues.getClass(), OoooO00(field, objOooo0o0, objArr));
    }

    public void Oooooo0(ua0 ua0Var, Field field, ContentValues contentValues) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objOooO00o = ta0.OooO00o(ua0Var, field.getName(), ua0Var.getClass());
        if (objOooO00o != null) {
            if ("java.util.Date".equals(field.getType().getName())) {
                objOooO00o = Long.valueOf(((Date) objOooO00o).getTime());
            }
            pa0 pa0Var = (pa0) field.getAnnotation(pa0.class);
            if (pa0Var != null && "java.lang.String".equals(field.getType().getName())) {
                objOooO00o = OooOoo(pa0Var.algorithm(), objOooO00o);
            }
            Object[] objArr = {pc0.OooO0O0(rc0.OooO0Oo(field.getName())), objOooO00o};
            ta0.OooO0O0(contentValues, "put", objArr, contentValues.getClass(), OoooO00(field, objOooO00o, objArr));
        }
    }

    public void OoooooO(ua0 ua0Var, List<Field> list, ContentValues contentValues) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        for (Field field : list) {
            if (!OooOOOo(field.getName())) {
                Ooooooo(ua0Var, field, contentValues);
            }
        }
    }

    public String o000oOoO(long... jArr) {
        StringBuilder sb = new StringBuilder();
        int length = jArr.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            long j = jArr[i];
            if (z) {
                sb.append(" or ");
            }
            sb.append("id = ");
            sb.append(j);
            i++;
            z = true;
        }
        return pc0.OooO0O0(sb.toString());
    }

    public void o00O0O(ua0 ua0Var, Field field, Object obj) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (o00ooo(ua0Var, field)) {
            ta0.OooO0Oo(ua0Var, field.getName(), obj, ua0Var.getClass());
        }
    }

    public void o00Oo0(ua0 ua0Var, List<Field> list, Map<Field, gc0> map) throws Throwable {
        String strOooO0O0;
        String strOooO0o0;
        String strOooO00o;
        String str;
        String strOooO0Oo;
        String strOooo000;
        for (Field field : list) {
            Cursor cursor = null;
            gc0 gc0Var = map.get(field);
            if (gc0Var == null) {
                if (ua0Var.getClassName().equals(OooOO0O(field))) {
                    strOooO0Oo = rc0.OooOO0o(field);
                    strOooo000 = "getLong";
                } else {
                    strOooO0Oo = rc0.OooO0Oo(field.getName());
                    strOooo000 = Oooo000(field);
                }
                strOooO0O0 = rc0.OooO(ua0Var.getClassName(), field.getName());
                strOooO0o0 = rc0.OooOO0(ua0Var.getClassName());
                gc0 gc0Var2 = new gc0();
                gc0Var2.OooO0oO(strOooO0O0);
                gc0Var2.OooO0oo(strOooO0Oo);
                gc0Var2.OooOO0(strOooO0o0);
                gc0Var2.OooO0o(strOooo000);
                map.put(field, gc0Var2);
                str = strOooO0Oo;
                strOooO00o = strOooo000;
            } else {
                strOooO0O0 = gc0Var.OooO0O0();
                String strOooO0OO = gc0Var.OooO0OO();
                strOooO0o0 = gc0Var.OooO0o0();
                strOooO00o = gc0Var.OooO00o();
                str = strOooO0OO;
            }
            String str2 = strOooO0O0;
            try {
                Cursor cursorQuery = this.OooOO0.query(str2, null, strOooO0o0 + " = ?", new String[]{String.valueOf(ua0Var.getBaseObjId())}, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            int columnIndex = cursorQuery.getColumnIndex(pc0.OooO0O0(str));
                            if (columnIndex != -1) {
                                o00Ooo(ua0Var, field, columnIndex, strOooO00o, cursorQuery);
                            }
                        } while (cursorQuery.moveToNext());
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void o00o0O(Object obj, List<Field> list, List<ob0> list2, Cursor cursor, SparseArray<OooO00o> sparseArray) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int size = sparseArray.size();
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                int iKeyAt = sparseArray.keyAt(i);
                OooO00o oooO00o = sparseArray.get(iKeyAt);
                o00Ooo(obj, oooO00o.OooO0O0, iKeyAt, oooO00o.OooO00o, cursor);
            }
        } else {
            for (Field field : list) {
                String strOooo000 = Oooo000(field);
                int columnIndex = cursor.getColumnIndex(pc0.OooO0O0(OooOOOo(field.getName()) ? "id" : rc0.OooO0Oo(field.getName())));
                if (columnIndex != -1) {
                    o00Ooo(obj, field, columnIndex, strOooo000, cursor);
                    OooO00o oooO00o2 = new OooO00o();
                    oooO00o2.OooO00o = strOooo000;
                    oooO00o2.OooO0O0 = field;
                    sparseArray.put(columnIndex, oooO00o2);
                }
            }
        }
        if (list2 != null) {
            for (ob0 ob0Var : list2) {
                int columnIndex2 = cursor.getColumnIndex(OooO0oo(rc0.OooOOO0(ob0Var.OooO0OO())));
                if (columnIndex2 != -1) {
                    try {
                        ua0 ua0Var = (ua0) na0.OooOOo0(Class.forName(ob0Var.OooO0OO()), cursor.getLong(columnIndex2));
                        if (ua0Var != null) {
                            o00O0O((ua0) obj, ob0Var.OooO00o(), ua0Var);
                        }
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public boolean o00ooo(ua0 ua0Var, Field field) {
        return (ua0Var == null || field == null) ? false : true;
    }

    public <T> List<T> o0OoOo0(Class<T> cls, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5, List<ob0> list) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                List<Field> listOooOO0o = OooOO0o(cls.getName());
                List<Field> listOooOOO0 = OooOOO0(cls.getName());
                String[] strArrOooO0OO = rc0.OooO0OO(Oooo0O0(strArr, listOooOOO0, list));
                cursorQuery = this.OooOO0.query(OoooO0(cls), strArrOooO0OO, str, strArr2, str2, str3, str4, str5);
                if (cursorQuery.moveToFirst()) {
                    SparseArray<OooO00o> sparseArray = new SparseArray<>();
                    HashMap map = new HashMap();
                    do {
                        Object objOooOoOO = OooOoOO(cls);
                        OoooOOO((ua0) objOooOoOO, cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("id")));
                        o00o0O(objOooOoOO, listOooOO0o, list, cursorQuery, sparseArray);
                        o00Oo0((ua0) objOooOoOO, listOooOOO0, map);
                        if (list != null) {
                            ooOO((ua0) objOooOoOO);
                        }
                        arrayList.add(objOooOoOO);
                    } while (cursorQuery.moveToNext());
                    sparseArray.clear();
                    map.clear();
                }
                return arrayList;
            } catch (Exception e) {
                throw new LitePalSupportException(e.getMessage(), e);
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }
}
