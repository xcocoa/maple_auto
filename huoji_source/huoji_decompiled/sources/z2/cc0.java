package z2;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class cc0 extends wb0 {
    public hc0 OooOOo;
    public hc0 OooOOo0;
    private boolean OooOOoo;

    private List<String> o00000() {
        String strOooooo = Oooooo(this.OooOOo0.OooO0o());
        String strOoooOoO = OoooOoO(this.OooOOo0);
        List<String> listO000000O = o000000O();
        String strOoooooo = Ooooooo(this.OooOOo);
        String strO0OoOo0 = o0OoOo0(this.OooOOo0.OooO0o());
        ArrayList arrayList = new ArrayList();
        arrayList.add(strOooooo);
        arrayList.add(strOoooOoO);
        arrayList.addAll(listO000000O);
        arrayList.add(strOoooooo);
        arrayList.add(strO0OoOo0);
        sc0.OooO00o(wb0.OooOOOo, "generateChangeConstraintSQL >> ");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sc0.OooO00o(wb0.OooOOOo, (String) it.next());
        }
        sc0.OooO00o(wb0.OooOOOo, "<< generateChangeConstraintSQL");
        return arrayList;
    }

    private String o000000(fc0 fc0Var) {
        return Oooo(this.OooOOo0.OooO0o(), fc0Var);
    }

    private List<String> o000000O() {
        ArrayList arrayList = new ArrayList();
        for (String str : ooOO(this.OooOOo0)) {
            if (!this.OooOOo0.OooO0O0(str)) {
                fc0 fc0Var = new fc0();
                fc0Var.OooO0oO(str);
                fc0Var.OooO0oo("integer");
                arrayList.add(Oooo(this.OooOOo0.OooO0o(), fc0Var));
            }
        }
        return arrayList;
    }

    private List<String> o000000o(List<fc0> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<fc0> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(o000000(it.next()));
        }
        return arrayList;
    }

    private boolean o00000O(String str) {
        return (!o00000OO(str) || OooOOOo(str) || o00o0O(this.OooOOo0, str)) ? false : true;
    }

    private boolean o00000O0() {
        for (fc0 fc0Var : this.OooOOo0.OooO0o0()) {
            fc0 fc0VarOooO0Oo = this.OooOOo.OooO0Oo(fc0Var.OooO00o());
            if (fc0Var.OooO0o() && (fc0VarOooO0Oo == null || !fc0VarOooO0Oo.OooO0o())) {
                return true;
            }
            if (fc0VarOooO0Oo != null && !fc0Var.OooO0o0() && fc0VarOooO0Oo.OooO0o0()) {
                return true;
            }
        }
        return false;
    }

    private boolean o00000OO(String str) {
        return !this.OooOOo0.OooO0O0(str);
    }

    private void o00000Oo(List<String> list) {
        sc0.OooO00o(wb0.OooOOOo, "do removeColumns " + list);
        o00oO0o(list, this.OooOOo0.OooO0o());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.OooOOo.OooO0oO(it.next());
        }
    }

    private void o00000o0() {
        if (!o00000O0()) {
            this.OooOOoo = false;
            o00000Oo(o000OOo());
            o0OOO0o(o0O0O00());
            o0OO00O(oo0o0Oo());
            o0Oo0oo();
            return;
        }
        OoooOo0(this.OooOOo0, this.OooOOOO, true);
        for (ob0 ob0Var : OooO0o0(this.OooOOo0.OooO0OO())) {
            if (ob0Var.OooO0Oo() == 2 || ob0Var.OooO0Oo() == 1) {
                if (ob0Var.OooO0o0().equalsIgnoreCase(this.OooOOo0.OooO0OO())) {
                    Oooo0o(this.OooOOo0.OooO0o(), rc0.OooOOO0(ob0Var.OooO0OO()), this.OooOOo0.OooO0o(), this.OooOOOO);
                }
            }
        }
    }

    private List<String> o000OOo() {
        String strOooO0o = this.OooOOo0.OooO0o();
        ArrayList arrayList = new ArrayList();
        Iterator<fc0> it = this.OooOOo.OooO0o0().iterator();
        while (it.hasNext()) {
            String strOooO00o = it.next().OooO00o();
            if (o00000O(strOooO00o)) {
                arrayList.add(strOooO00o);
            }
        }
        sc0.OooO00o(wb0.OooOOOo, "remove columns from " + strOooO0o + " >> " + arrayList);
        return arrayList;
    }

    private List<fc0> o0O0O00() {
        ArrayList arrayList = new ArrayList();
        for (fc0 fc0Var : this.OooOOo0.OooO0o0()) {
            if (!this.OooOOo.OooO0O0(fc0Var.OooO00o())) {
                arrayList.add(fc0Var);
            }
        }
        return arrayList;
    }

    private void o0OO00O(List<fc0> list) {
        sc0.OooO00o(wb0.OooOOOo, "do changeColumnsType");
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            Iterator<fc0> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().OooO00o());
            }
        }
        o00000Oo(arrayList);
        o0OOO0o(list);
    }

    private void o0OOO0o(List<fc0> list) {
        sc0.OooO00o(wb0.OooOOOo, "do addColumn");
        Oooo000(o000000o(list), this.OooOOOO);
        Iterator<fc0> it = list.iterator();
        while (it.hasNext()) {
            this.OooOOo.OooO00o(it.next());
        }
    }

    private void o0Oo0oo() {
        if (this.OooOOoo) {
            sc0.OooO00o(wb0.OooOOOo, "do changeColumnsConstraints");
            Oooo000(o00000(), this.OooOOOO);
        }
    }

    private List<fc0> oo0o0Oo() {
        ArrayList arrayList = new ArrayList();
        for (fc0 fc0Var : this.OooOOo.OooO0o0()) {
            for (fc0 fc0Var2 : this.OooOOo0.OooO0o0()) {
                if (fc0Var.OooO00o().equalsIgnoreCase(fc0Var2.OooO00o())) {
                    if (!fc0Var.OooO0O0().equalsIgnoreCase(fc0Var2.OooO0O0()) && (!fc0Var2.OooO0O0().equalsIgnoreCase("blob") || !TextUtils.isEmpty(fc0Var.OooO0O0()))) {
                        arrayList.add(fc0Var2);
                    }
                    if (!this.OooOOoo) {
                        sc0.OooO00o(wb0.OooOOOo, "default value db is:" + fc0Var.OooO0OO() + ", default value is:" + fc0Var2.OooO0OO());
                        if (fc0Var.OooO0o0() != fc0Var2.OooO0o0() || !fc0Var.OooO0OO().equalsIgnoreCase(fc0Var2.OooO0OO()) || (fc0Var.OooO0o() && !fc0Var2.OooO0o())) {
                            this.OooOOoo = true;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // z2.wb0, z2.yb0, z2.vb0, z2.ac0
    public void OooOooO(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.OooOOOO = sQLiteDatabase;
        for (hc0 hc0Var : Oooo00o()) {
            this.OooOOo0 = hc0Var;
            this.OooOOo = o00Oo0(hc0Var.OooO0o());
            sc0.OooO00o(wb0.OooOOOo, "createOrUpgradeTable: model is " + this.OooOOo0.OooO0o());
            o00000o0();
        }
    }
}
