package z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import z2.o4;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class wb0 extends yb0 {
    public static final String OooOOOo = "AssociationUpdater";
    private Collection<ec0> OooOOO;
    public SQLiteDatabase OooOOOO;

    private List<String> OooooOO(hc0 hc0Var) {
        ArrayList arrayList = new ArrayList();
        List<String> listOoOO = ooOO(hc0Var);
        String strOooO0o = hc0Var.OooO0o();
        for (String str : listOoOO) {
            if (o0ooOoO(strOooO0o, rc0.OooOOO(str))) {
                arrayList.add(str);
            }
        }
        sc0.OooO00o(OooOOOo, "findForeignKeyToRemove >> " + hc0Var.OooO0o() + o4.OooO00o.OooO0Oo + arrayList);
        return arrayList;
    }

    private List<String> OooooOo() {
        ArrayList arrayList = new ArrayList();
        for (String str : rc0.OooO0o(this.OooOOOO)) {
            if (rc0.OooOOo(str, this.OooOOOO)) {
                boolean z = true;
                Iterator<gc0> it = OooO().iterator();
                while (it.hasNext()) {
                    if (str.equalsIgnoreCase(it.next().OooO0O0())) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    private List<String> Oooooo0() {
        ArrayList arrayList = new ArrayList();
        for (String str : rc0.OooO0o(this.OooOOOO)) {
            if (rc0.OooOOoo(str, this.OooOOOO)) {
                boolean z = true;
                for (ec0 ec0Var : this.OooOOO) {
                    if (ec0Var.OooO0O0() == 3 && str.equalsIgnoreCase(rc0.OooOO0O(ec0Var.OooO0Oo(), ec0Var.OooO00o()))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        sc0.OooO00o(OooOOOo, "findIntermediateTablesToDrop >> " + arrayList);
        return arrayList;
    }

    private String OoooooO(Collection<String> collection, hc0 hc0Var) {
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            hc0Var.OooO0oO(it.next());
        }
        return OoooOoO(hc0Var);
    }

    private List<String> o00O0O(Collection<String> collection, String str) {
        hc0 hc0VarO00Oo0 = o00Oo0(str);
        String strOooooo = Oooooo(str);
        sc0.OooO00o(OooOOOo, "generateRemoveColumnSQL >> " + strOooooo);
        String strOoooooO = OoooooO(collection, hc0VarO00Oo0);
        sc0.OooO00o(OooOOOo, "generateRemoveColumnSQL >> " + strOoooooO);
        String strOoooooo = Ooooooo(hc0VarO00Oo0);
        sc0.OooO00o(OooOOOo, "generateRemoveColumnSQL >> " + strOoooooo);
        String strO0OoOo0 = o0OoOo0(str);
        sc0.OooO00o(OooOOOo, "generateRemoveColumnSQL >> " + strO0OoOo0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(strOooooo);
        arrayList.add(strOoooooO);
        arrayList.add(strOoooooo);
        arrayList.add(strO0OoOo0);
        return arrayList;
    }

    private void o00oO0O() {
        Iterator<String> it = rb0.OooO0oo().OooO0o0().iterator();
        while (it.hasNext()) {
            hc0 hc0VarOooOOO = OooOOO(it.next());
            o00oO0o(OooooOO(hc0VarOooOOO), hc0VarOooOOO.OooO0o());
        }
    }

    private boolean o00ooo(ec0 ec0Var, String str, String str2) {
        return ec0Var.OooO0Oo().equalsIgnoreCase(str) && ec0Var.OooO00o().equalsIgnoreCase(str2);
    }

    private void o0ooOO0() {
        List<String> listOooooOo = OooooOo();
        OooooO0(listOooooOo, this.OooOOOO);
        Ooooo0o(listOooooOo);
    }

    private void o0ooOOo() {
        List<String> listOooooo0 = Oooooo0();
        OooooO0(listOooooo0, this.OooOOOO);
        Ooooo0o(listOooooo0);
    }

    private boolean o0ooOoO(String str, String str2) {
        for (ec0 ec0Var : this.OooOOO) {
            if (ec0Var.OooO0O0() != 1) {
                if (ec0Var.OooO0O0() == 2 && o00ooo(ec0Var, str2, str)) {
                    return false;
                }
            } else if (!str.equalsIgnoreCase(ec0Var.OooO0OO())) {
                continue;
            } else if (ec0Var.OooO0Oo().equalsIgnoreCase(str)) {
                if (o00ooo(ec0Var, str, str2)) {
                    return false;
                }
            } else if (ec0Var.OooO00o().equalsIgnoreCase(str) && o00ooo(ec0Var, str2, str)) {
                return false;
            }
        }
        return true;
    }

    private void oo000o() {
        o00oO0O();
        o0ooOOo();
        o0ooOO0();
    }

    @Override // z2.vb0, z2.ac0
    public void OooOoO(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.OooOOO = Oooo00O();
        this.OooOOOO = sQLiteDatabase;
        oo000o();
    }

    @Override // z2.yb0, z2.vb0, z2.ac0
    public abstract void OooOooO(SQLiteDatabase sQLiteDatabase, boolean z);

    public void Ooooo0o(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("delete from ");
        sb.append(qc0.OooO0OO.OooO00o);
        sb.append(" where");
        boolean z = false;
        for (String str : list) {
            if (z) {
                sb.append(" or ");
            }
            z = true;
            sb.append(" lower(");
            sb.append("name");
            sb.append(") ");
            sb.append("=");
            sb.append(" lower('");
            sb.append(str);
            sb.append("')");
        }
        sc0.OooO00o(OooOOOo, "clear table schema value sql is " + ((Object) sb));
        ArrayList arrayList = new ArrayList();
        arrayList.add(sb.toString());
        Oooo000(arrayList, this.OooOOOO);
    }

    public void OooooO0(List<String> list, SQLiteDatabase sQLiteDatabase) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(OoooO0(list.get(i)));
        }
        Oooo000(arrayList, sQLiteDatabase);
    }

    public String Oooooo(String str) {
        return "alter table " + str + " rename to " + o00Ooo(str);
    }

    public String Ooooooo(hc0 hc0Var) {
        String strOooO0o = hc0Var.OooO0o();
        List<fc0> listOooO0o0 = hc0Var.OooO0o0();
        if (listOooO0o0.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("insert into ");
        sb.append(strOooO0o);
        sb.append("(");
        boolean z = false;
        boolean z3 = false;
        for (fc0 fc0Var : listOooO0o0) {
            if (z3) {
                sb.append(", ");
            }
            sb.append(fc0Var.OooO00o());
            z3 = true;
        }
        sb.append(") ");
        sb.append("select ");
        for (fc0 fc0Var2 : listOooO0o0) {
            if (z) {
                sb.append(", ");
            }
            sb.append(fc0Var2.OooO00o());
            z = true;
        }
        sb.append(" from ");
        sb.append(o00Ooo(strOooO0o));
        return sb.toString();
    }

    public hc0 o00Oo0(String str) {
        return rc0.OooO0oO(str, this.OooOOOO);
    }

    public String o00Ooo(String str) {
        return str + "_temp";
    }

    public boolean o00o0O(hc0 hc0Var, String str) {
        return pc0.OooO0Oo(ooOO(hc0Var), str);
    }

    public void o00oO0o(Collection<String> collection, String str) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Oooo000(o00O0O(collection, str), this.OooOOOO);
    }

    public String o0OoOo0(String str) {
        return OoooO0(o00Ooo(str));
    }

    public List<String> ooOO(hc0 hc0Var) {
        ArrayList arrayList = new ArrayList();
        for (fc0 fc0Var : o00Oo0(hc0Var.OooO0o()).OooO0o0()) {
            String strOooO00o = fc0Var.OooO00o();
            if (OoooOO0(fc0Var.OooO00o()) && !hc0Var.OooO0O0(strOooO00o)) {
                sc0.OooO00o(OooOOOo, "getForeignKeyColumnNames >> foreign key column is " + strOooO00o);
                arrayList.add(strOooO00o);
            }
        }
        return arrayList;
    }
}
