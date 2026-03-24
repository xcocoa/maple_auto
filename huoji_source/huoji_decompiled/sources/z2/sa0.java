package z2;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public class sa0 extends ra0 {
    private List<String> OooOOOO;

    public sa0(SQLiteDatabase sQLiteDatabase) {
        this.OooOO0 = sQLiteDatabase;
    }

    private String o00oO0O(String... strArr) {
        int length = strArr.length - 1;
        int i = 0;
        String strReplaceFirst = strArr[0];
        while (i < length) {
            StringBuilder sb = new StringBuilder();
            sb.append("'");
            i++;
            sb.append(strArr[i]);
            sb.append("'");
            strReplaceFirst = strReplaceFirst.replaceFirst("\\?", sb.toString());
        }
        return strReplaceFirst;
    }

    private void o00oO0o(Class<?> cls) {
        for (ob0 ob0Var : OooO0o0(cls.getName())) {
            String strOooOOO0 = rc0.OooOOO0(ob0Var.OooO0OO());
            if (ob0Var.OooO0Oo() == 2 || ob0Var.OooO0Oo() == 1) {
                if (!cls.getName().equals(ob0Var.OooO0o0())) {
                    o0O0O00().add(strOooOOO0);
                }
            } else if (ob0Var.OooO0Oo() == 3) {
                o0O0O00().add(pc0.OooO0O0(rc0.OooOO0O(OoooO0(cls), strOooOOO0)));
            }
        }
    }

    private List<String> o0O0O00() {
        if (this.OooOOOO == null) {
            this.OooOOOO = new ArrayList();
        }
        return this.OooOOOO;
    }

    private int o0OO00O(ua0 ua0Var) {
        return o0ooOoO(ua0Var) + o0OOO0o(ua0Var);
    }

    private int o0OOO0o(ua0 ua0Var) {
        Iterator<String> it = ua0Var.getAssociatedModelsMapForJoinTable().keySet().iterator();
        int iDelete = 0;
        while (it.hasNext()) {
            String strOooOO0O = rc0.OooOO0O(ua0Var.getTableName(), it.next());
            String strOooO0oo = OooO0oo(ua0Var.getTableName());
            iDelete += this.OooOO0.delete(strOooOO0O, strOooO0oo + " = " + ua0Var.getBaseObjId(), null);
        }
        return iDelete;
    }

    private int o0Oo0oo(Class<?> cls, long j) {
        int iDelete = 0;
        for (String str : o0O0O00()) {
            String strOooO0oo = OooO0oo(OoooO0(cls));
            iDelete += this.OooOO0.delete(str, strOooO0oo + " = " + j, null);
        }
        return iDelete;
    }

    private void o0ooOO0(ua0 ua0Var, Collection<ob0> collection) {
        ua0 ua0VarOooo00O;
        try {
            for (ob0 ob0Var : collection) {
                if (ob0Var.OooO0Oo() == 2 && !ua0Var.getClassName().equals(ob0Var.OooO0o0())) {
                    Collection<ua0> collectionOooo00o = Oooo00o(ua0Var, ob0Var);
                    if (collectionOooo00o != null && !collectionOooo00o.isEmpty()) {
                        for (ua0 ua0Var2 : collectionOooo00o) {
                            if (ua0Var2 != null) {
                                ua0Var2.clearSavedState();
                            }
                        }
                    }
                } else if (ob0Var.OooO0Oo() == 1 && (ua0VarOooo00O = Oooo00O(ua0Var, ob0Var)) != null) {
                    ua0VarOooo00O.clearSavedState();
                }
            }
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    private int o0ooOOo(Class<?> cls, String... strArr) {
        int iDelete = 0;
        for (String str : o0O0O00()) {
            String strOoooO0 = OoooO0(cls);
            String strOooO0oo = OooO0oo(strOoooO0);
            StringBuilder sb = new StringBuilder();
            sb.append(strOooO0oo);
            sb.append(" in (select id from ");
            sb.append(strOoooO0);
            if (strArr != null && strArr.length > 0) {
                sb.append(" where ");
                sb.append(o00oO0O(strArr));
            }
            sb.append(")");
            iDelete += this.OooOO0.delete(str, pc0.OooO0O0(sb.toString()), null);
        }
        return iDelete;
    }

    private int o0ooOoO(ua0 ua0Var) {
        int iDelete = 0;
        for (String str : ua0Var.getAssociatedModelsMapWithFK().keySet()) {
            String strOooO0oo = OooO0oo(ua0Var.getTableName());
            iDelete += this.OooOO0.delete(str, strOooO0oo + " = " + ua0Var.getBaseObjId(), null);
        }
        return iDelete;
    }

    private Collection<ob0> oo000o(ua0 ua0Var) {
        try {
            Collection<ob0> collectionOooO0o0 = OooO0o0(ua0Var.getClassName());
            OooOoO0(ua0Var, collectionOooO0o0);
            return collectionOooO0o0;
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    private void oo0o0Oo(Class<?> cls, List<Field> list, long... jArr) {
        int i;
        Iterator<Field> it = list.iterator();
        while (it.hasNext()) {
            String strOooO = rc0.OooO(cls.getName(), it.next().getName());
            String strOooOO0 = rc0.OooOO0(cls.getName());
            int length = jArr.length;
            int i2 = (length - 1) / com.anythink.expressad.d.b.b;
            int i3 = 0;
            while (i3 <= i2) {
                StringBuilder sb = new StringBuilder();
                int i4 = com.anythink.expressad.d.b.b * i3;
                boolean z = false;
                while (true) {
                    i = i3 + 1;
                    if (i4 >= com.anythink.expressad.d.b.b * i || i4 >= length) {
                        break;
                    }
                    long j = jArr[i4];
                    if (z) {
                        sb.append(" or ");
                    }
                    sb.append(strOooOO0);
                    sb.append(" = ");
                    sb.append(j);
                    i4++;
                    z = true;
                }
                if (!TextUtils.isEmpty(sb.toString())) {
                    this.OooOO0.delete(strOooO, sb.toString(), null);
                }
                i3 = i;
            }
        }
    }

    public int o000000(ua0 ua0Var) {
        if (!ua0Var.isSaved()) {
            return 0;
        }
        oo0o0Oo(ua0Var.getClass(), OooOOO0(ua0Var.getClassName()), ua0Var.getBaseObjId());
        Collection<ob0> collectionOo000o = oo000o(ua0Var);
        int iO0OO00O = o0OO00O(ua0Var) + this.OooOO0.delete(ua0Var.getTableName(), "id = " + ua0Var.getBaseObjId(), null);
        o0ooOO0(ua0Var, collectionOo000o);
        return iO0OO00O;
    }

    public int o000000O(Class<?> cls, String... strArr) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        List<Field> listOooOOO0 = OooOOO0(cls.getName());
        if (!listOooOOO0.isEmpty()) {
            List listOooO = na0.OooooO0("id").Oooo0OO(strArr).OooO(cls);
            if (listOooO.size() > 0) {
                int size = listOooO.size();
                long[] jArr = new long[size];
                for (int i = 0; i < size; i++) {
                    jArr[i] = ((ua0) listOooO.get(i)).getBaseObjId();
                }
                oo0o0Oo(cls, listOooOOO0, jArr);
            }
        }
        o00oO0o(cls);
        int iO0ooOOo = o0ooOOo(cls, strArr) + this.OooOO0.delete(OoooO0(cls), OoooO(strArr), OoooO0O(strArr));
        o0O0O00().clear();
        return iO0ooOOo;
    }

    public int o000000o(String str, String... strArr) {
        pc0.OooO0OO(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = rc0.OooO0o0(strArr[0]);
        }
        return this.OooOO0.delete(str, OoooO(strArr), OoooO0O(strArr));
    }

    public int o000OOo(Class<?> cls, long j) {
        oo0o0Oo(cls, OooOOO0(cls.getName()), j);
        o00oO0o(cls);
        int iO0Oo0oo = o0Oo0oo(cls, j) + this.OooOO0.delete(OoooO0(cls), "id = " + j, null);
        o0O0O00().clear();
        return iO0Oo0oo;
    }
}
