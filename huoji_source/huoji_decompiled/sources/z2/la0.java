package z2;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.exceptions.DatabaseGenerateException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class la0 {
    private static final int OooO = 2;
    public static final String OooO0oO = "LitePalBase";
    private static final int OooO0oo = 1;
    private nc0[] OooO00o = {new mc0(), new oc0(), new jc0(), new lc0(), new kc0(), new ic0()};
    private Map<String, List<Field>> OooO0O0 = new HashMap();
    private Map<String, List<Field>> OooO0OO = new HashMap();
    private Collection<ec0> OooO0Oo;
    private Collection<gc0> OooO0o;
    private Collection<ob0> OooO0o0;

    private void OooO00o(String str, String str2, String str3, Field field, Field field2, int i) {
        ob0 ob0Var = new ob0();
        ob0Var.OooOO0o(str);
        ob0Var.OooO(str2);
        ob0Var.OooOO0O(str3);
        ob0Var.OooO0oO(field);
        ob0Var.OooO0oo(field2);
        ob0Var.OooOO0(i);
        this.OooO0o0.add(ob0Var);
    }

    private void OooO0O0(String str, String str2, String str3, int i) {
        ec0 ec0Var = new ec0();
        ec0Var.OooO0oo(rc0.OooOOO0(str));
        ec0Var.OooO0o0(rc0.OooOOO0(str2));
        ec0Var.OooO0oO(rc0.OooOOO0(str3));
        ec0Var.OooO0o(i);
        this.OooO0Oo.add(ec0Var);
    }

    private void OooO0OO(String str, int i) {
        oa0 oa0Var;
        try {
            for (Field field : Class.forName(str).getDeclaredFields()) {
                if (OooOOo(field) && ((oa0Var = (oa0) field.getAnnotation(oa0.class)) == null || !oa0Var.ignore())) {
                    OooOo0O(str, field, i);
                    OooOo0(str, field, i);
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new DatabaseGenerateException(DatabaseGenerateException.CLASS_NOT_FOUND + str);
        }
    }

    private fc0 OooO0Oo(Field field) {
        boolean zNullable;
        boolean zUnique;
        String strDefaultValue;
        String strOooO0oO = OooO0oO(field.getType().getName());
        oa0 oa0Var = (oa0) field.getAnnotation(oa0.class);
        if (oa0Var != null) {
            zNullable = oa0Var.nullable();
            zUnique = oa0Var.unique();
            strDefaultValue = oa0Var.defaultValue();
        } else {
            zNullable = true;
            zUnique = false;
            strDefaultValue = "";
        }
        fc0 fc0Var = new fc0();
        fc0Var.OooO0oO(rc0.OooO0Oo(field.getName()));
        fc0Var.OooO0oo(strOooO0oO);
        fc0Var.OooOO0(zNullable);
        fc0Var.OooOO0O(zUnique);
        fc0Var.OooO(strDefaultValue);
        return fc0Var;
    }

    private boolean OooOOo(Field field) {
        return !field.getType().isPrimitive();
    }

    private boolean OooOOoo(Field field) {
        return Modifier.isPrivate(field.getModifiers());
    }

    private void OooOo(Class<?> cls, List<Field> list) {
        if (cls == ua0.class || cls == Object.class) {
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                oa0 oa0Var = (oa0) field.getAnnotation(oa0.class);
                if ((oa0Var == null || !oa0Var.ignore()) && !Modifier.isStatic(field.getModifiers()) && OooOOOO(field.getType())) {
                    String strOooOO0O = OooOO0O(field);
                    if (pc0.OooO0oo(strOooOO0O) || cls.getName().equalsIgnoreCase(strOooOO0O)) {
                        list.add(field);
                    }
                }
            }
        }
        OooOo(cls.getSuperclass(), list);
    }

    private void OooOo0(String str, Field field, int i) throws ClassNotFoundException {
        String str2;
        int i2;
        la0 la0Var;
        String str3;
        String str4;
        if (OooOOOO(field.getType())) {
            String strOooOO0O = OooOO0O(field);
            if (!rb0.OooO0oo().OooO0o0().contains(strOooOO0O)) {
                if (pc0.OooO0oo(strOooOO0O) && i == 1) {
                    gc0 gc0Var = new gc0();
                    gc0Var.OooO0oO(rc0.OooO(str, field.getName()));
                    gc0Var.OooO0oo(rc0.OooO0Oo(field.getName()));
                    gc0Var.OooO(OooO0oO(strOooOO0O));
                    gc0Var.OooOO0(rc0.OooOO0(str));
                    this.OooO0o.add(gc0Var);
                    return;
                }
                return;
            }
            boolean z = false;
            for (Field field2 : Class.forName(strOooOO0O).getDeclaredFields()) {
                if (!Modifier.isStatic(field2.getModifiers())) {
                    Class<?> type = field2.getType();
                    if (str.equals(type.getName())) {
                        if (i == 1) {
                            OooO0O0(str, strOooOO0O, strOooOO0O, 2);
                        } else if (i == 2) {
                            i2 = 2;
                            la0Var = this;
                            str3 = str;
                            str4 = strOooOO0O;
                            str2 = strOooOO0O;
                            la0Var.OooO00o(str3, str4, str2, field, field2, i2);
                        }
                        z = true;
                    } else if (OooOOOO(type) && str.equals(OooOO0O(field2))) {
                        if (i == 1) {
                            if (str.equalsIgnoreCase(strOooOO0O)) {
                                gc0 gc0Var2 = new gc0();
                                gc0Var2.OooO0oO(rc0.OooO(str, field.getName()));
                                gc0Var2.OooO0oo(rc0.OooOO0o(field));
                                gc0Var2.OooO("integer");
                                gc0Var2.OooOO0(rc0.OooOO0(str));
                                this.OooO0o.add(gc0Var2);
                            } else {
                                OooO0O0(str, strOooOO0O, null, 3);
                            }
                        } else if (i == 2 && !str.equalsIgnoreCase(strOooOO0O)) {
                            str2 = null;
                            i2 = 3;
                            la0Var = this;
                            str3 = str;
                            str4 = strOooOO0O;
                            la0Var.OooO00o(str3, str4, str2, field, field2, i2);
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                return;
            }
            if (i == 1) {
                OooO0O0(str, strOooOO0O, strOooOO0O, 2);
            } else if (i == 2) {
                OooO00o(str, strOooOO0O, strOooOO0O, field, null, 2);
            }
        }
    }

    private void OooOo0O(String str, Field field, int i) throws ClassNotFoundException {
        String name;
        int i2;
        la0 la0Var;
        String str2;
        String name2;
        Class<?> type = field.getType();
        if (rb0.OooO0oo().OooO0o0().contains(type.getName())) {
            boolean z = false;
            for (Field field2 : Class.forName(type.getName()).getDeclaredFields()) {
                if (!Modifier.isStatic(field2.getModifiers())) {
                    Class<?> type2 = field2.getType();
                    if (str.equals(type2.getName())) {
                        if (i == 1) {
                            OooO0O0(str, type.getName(), type.getName(), 1);
                        } else if (i == 2) {
                            name = type.getName();
                            name2 = type.getName();
                            i2 = 1;
                            la0Var = this;
                            str2 = str;
                            la0Var.OooO00o(str2, name, name2, field, field2, i2);
                        }
                        z = true;
                    } else if (OooOOOO(type2) && str.equals(OooOO0O(field2))) {
                        if (i == 1) {
                            OooO0O0(str, type.getName(), str, 2);
                        } else if (i == 2) {
                            name = type.getName();
                            i2 = 2;
                            la0Var = this;
                            str2 = str;
                            name2 = str;
                            la0Var.OooO00o(str2, name, name2, field, field2, i2);
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                return;
            }
            if (i == 1) {
                OooO0O0(str, type.getName(), type.getName(), 1);
            } else if (i == 2) {
                OooO00o(str, type.getName(), type.getName(), field, null, 1);
            }
        }
    }

    private void OooOo0o(Class<?> cls, List<Field> list) {
        if (cls == ua0.class || cls == Object.class) {
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                oa0 oa0Var = (oa0) field.getAnnotation(oa0.class);
                if ((oa0Var == null || !oa0Var.ignore()) && !Modifier.isStatic(field.getModifiers()) && pc0.OooO0oO(field.getType().getName())) {
                    list.add(field);
                }
            }
        }
        OooOo0o(cls.getSuperclass(), list);
    }

    public Collection<gc0> OooO() {
        return this.OooO0o;
    }

    public Collection<ec0> OooO0o(List<String> list) {
        if (this.OooO0Oo == null) {
            this.OooO0Oo = new HashSet();
        }
        if (this.OooO0o == null) {
            this.OooO0o = new HashSet();
        }
        this.OooO0Oo.clear();
        this.OooO0o.clear();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            OooO0OO(it.next(), 1);
        }
        return this.OooO0Oo;
    }

    public Collection<ob0> OooO0o0(String str) {
        if (this.OooO0o0 == null) {
            this.OooO0o0 = new HashSet();
        }
        this.OooO0o0.clear();
        OooO0OO(str, 2);
        return this.OooO0o0;
    }

    public String OooO0oO(String str) {
        for (nc0 nc0Var : this.OooO00o) {
            String strOooO00o = nc0Var.OooO00o(str);
            if (strOooO00o != null) {
                return strOooO00o;
            }
        }
        return null;
    }

    public String OooO0oo(String str) {
        return pc0.OooO0O0(str + TrayContract.Preferences.Columns.ID);
    }

    public Class<?> OooOO0(Field field) {
        Type genericType = field.getGenericType();
        if (genericType == null || !(genericType instanceof ParameterizedType)) {
            return null;
        }
        return (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
    }

    public String OooOO0O(Field field) {
        Class<?> clsOooOO0 = OooOO0(field);
        if (clsOooOO0 != null) {
            return clsOooOO0.getName();
        }
        return null;
    }

    public List<Field> OooOO0o(String str) {
        List<Field> list = this.OooO0O0.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        try {
            OooOo0o(Class.forName(str), arrayList);
            this.OooO0O0.put(str, arrayList);
            return arrayList;
        } catch (ClassNotFoundException unused) {
            throw new DatabaseGenerateException(DatabaseGenerateException.CLASS_NOT_FOUND + str);
        }
    }

    public hc0 OooOOO(String str) {
        String strOooOOO0 = rc0.OooOOO0(str);
        hc0 hc0Var = new hc0();
        hc0Var.OooO(strOooOOO0);
        hc0Var.OooO0oo(str);
        Iterator<Field> it = OooOO0o(str).iterator();
        while (it.hasNext()) {
            hc0Var.OooO00o(OooO0Oo(it.next()));
        }
        return hc0Var;
    }

    public List<Field> OooOOO0(String str) {
        List<Field> list = this.OooO0OO.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        try {
            OooOo(Class.forName(str), arrayList);
            this.OooO0OO.put(str, arrayList);
            return arrayList;
        } catch (ClassNotFoundException unused) {
            throw new DatabaseGenerateException(DatabaseGenerateException.CLASS_NOT_FOUND + str);
        }
    }

    public boolean OooOOOO(Class<?> cls) {
        return OooOOo0(cls) || OooOo00(cls);
    }

    public boolean OooOOOo(String str) {
        return TrayContract.Preferences.Columns.ID.equalsIgnoreCase(str) || "id".equalsIgnoreCase(str);
    }

    public boolean OooOOo0(Class<?> cls) {
        return List.class.isAssignableFrom(cls);
    }

    public boolean OooOo00(Class<?> cls) {
        return Set.class.isAssignableFrom(cls);
    }
}
