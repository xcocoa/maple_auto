package z2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.exceptions.DatabaseGenerateException;
import z2.o4;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class vb0 extends ac0 {
    private void Oooo0o0(Collection<ec0> collection, SQLiteDatabase sQLiteDatabase, boolean z) throws Throwable {
        for (ec0 ec0Var : collection) {
            if (2 == ec0Var.OooO0O0() || 1 == ec0Var.OooO0O0()) {
                Oooo0o(ec0Var.OooO0Oo(), ec0Var.OooO00o(), ec0Var.OooO0OO(), sQLiteDatabase);
            } else if (3 == ec0Var.OooO0O0()) {
                Oooo0oo(ec0Var.OooO0Oo(), ec0Var.OooO00o(), sQLiteDatabase, z);
            }
        }
        Iterator<gc0> it = OooO().iterator();
        while (it.hasNext()) {
            Oooo0oO(it.next(), sQLiteDatabase, z);
        }
    }

    private void Oooo0oO(gc0 gc0Var, SQLiteDatabase sQLiteDatabase, boolean z) throws Throwable {
        String strOooO0O0 = gc0Var.OooO0O0();
        String strOooO0OO = gc0Var.OooO0OO();
        String strOooO0Oo = gc0Var.OooO0Oo();
        String strOooO0o0 = gc0Var.OooO0o0();
        ArrayList arrayList = new ArrayList();
        fc0 fc0Var = new fc0();
        fc0Var.OooO0oO(strOooO0OO);
        fc0Var.OooO0oo(strOooO0Oo);
        fc0 fc0Var2 = new fc0();
        fc0Var2.OooO0oO(strOooO0o0);
        fc0Var2.OooO0oo("integer");
        arrayList.add(fc0Var);
        arrayList.add(fc0Var2);
        ArrayList arrayList2 = new ArrayList();
        if (!rc0.OooOo00(strOooO0O0, sQLiteDatabase)) {
            arrayList2.add(OoooO00(strOooO0O0, arrayList, false));
        } else if (z) {
            arrayList2.add(OoooO0(strOooO0O0));
            arrayList2.add(OoooO00(strOooO0O0, arrayList, false));
        }
        Oooo000(arrayList2, sQLiteDatabase);
        OoooO0O(strOooO0O0, 2, sQLiteDatabase);
    }

    private void Oooo0oo(String str, String str2, SQLiteDatabase sQLiteDatabase, boolean z) throws Throwable {
        ArrayList arrayList = new ArrayList();
        fc0 fc0Var = new fc0();
        fc0Var.OooO0oO(str + TrayContract.Preferences.Columns.ID);
        fc0Var.OooO0oo("integer");
        fc0 fc0Var2 = new fc0();
        fc0Var2.OooO0oO(str2 + TrayContract.Preferences.Columns.ID);
        fc0Var2.OooO0oo("integer");
        arrayList.add(fc0Var);
        arrayList.add(fc0Var2);
        String strOooOO0O = rc0.OooOO0O(str, str2);
        ArrayList arrayList2 = new ArrayList();
        if (!rc0.OooOo00(strOooOO0O, sQLiteDatabase)) {
            arrayList2.add(OoooO00(strOooOO0O, arrayList, false));
        } else if (z) {
            arrayList2.add(OoooO0(strOooOO0O));
            arrayList2.add(OoooO00(strOooOO0O, arrayList, false));
        }
        Oooo000(arrayList2, sQLiteDatabase);
        OoooO0O(strOooOO0O, 1, sQLiteDatabase);
    }

    private boolean OoooO(List<fc0> list) {
        return list.size() == 0 || (list.size() == 1 && OooOOOo(list.get(0).OooO00o())) || (list.size() == 2 && OooOOOo(list.get(0).OooO00o()) && OooOOOo(list.get(1).OooO00o()));
    }

    private boolean OoooOOO(String str) {
        return qc0.OooO0OO.OooO00o.equalsIgnoreCase(str);
    }

    private boolean OoooOOo(Cursor cursor, String str) {
        if (cursor.moveToFirst()) {
            while (!cursor.getString(cursor.getColumnIndexOrThrow("name")).equalsIgnoreCase(str)) {
                if (!cursor.moveToNext()) {
                }
            }
            return true;
        }
        return false;
    }

    private boolean o000oOoO(Cursor cursor, String str) {
        return (OoooOOo(cursor, str) || OoooOOO(str)) ? false : true;
    }

    @Override // z2.ac0
    public void OooOoO(SQLiteDatabase sQLiteDatabase, boolean z) {
        Oooo0o0(Oooo00O(), sQLiteDatabase, z);
    }

    @Override // z2.ac0
    public abstract void OooOooO(SQLiteDatabase sQLiteDatabase, boolean z);

    public String Oooo(String str, fc0 fc0Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("alter table ");
        sb.append(str);
        sb.append(" add column ");
        sb.append(fc0Var.OooO00o());
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(fc0Var.OooO0O0());
        if (!fc0Var.OooO0o0()) {
            sb.append(" not null");
        }
        if (fc0Var.OooO0o()) {
            sb.append(" unique");
        }
        String strOooO0OO = fc0Var.OooO0OO();
        if (!TextUtils.isEmpty(strOooO0OO)) {
            sb.append(" default ");
            sb.append(strOooO0OO);
        } else if (!fc0Var.OooO0o0()) {
            if ("integer".equalsIgnoreCase(fc0Var.OooO0O0())) {
                strOooO0OO = "0";
            } else if ("text".equalsIgnoreCase(fc0Var.OooO0O0())) {
                strOooO0OO = "''";
            } else if ("real".equalsIgnoreCase(fc0Var.OooO0O0())) {
                strOooO0OO = "0.0";
            }
            sb.append(" default ");
            sb.append(strOooO0OO);
        }
        sc0.OooO00o(ac0.OooOO0o, "add column sql is >> " + ((Object) sb));
        return sb.toString();
    }

    public void Oooo0o(String str, String str2, String str3, SQLiteDatabase sQLiteDatabase) {
        if (!rc0.OooOo00(str, sQLiteDatabase)) {
            throw new DatabaseGenerateException(DatabaseGenerateException.TABLE_DOES_NOT_EXIST + str);
        }
        if (!rc0.OooOo00(str2, sQLiteDatabase)) {
            throw new DatabaseGenerateException(DatabaseGenerateException.TABLE_DOES_NOT_EXIST + str2);
        }
        String strOooO0oo = null;
        if (str.equals(str3)) {
            strOooO0oo = OooO0oo(str2);
        } else if (str2.equals(str3)) {
            strOooO0oo = OooO0oo(str);
        }
        if (rc0.OooOOOo(strOooO0oo, str3, sQLiteDatabase)) {
            sc0.OooO00o(ac0.OooOO0o, "column " + strOooO0oo + " is already exist, no need to add one");
            return;
        }
        fc0 fc0Var = new fc0();
        fc0Var.OooO0oO(strOooO0oo);
        fc0Var.OooO0oo("integer");
        ArrayList arrayList = new ArrayList();
        arrayList.add(Oooo(str3, fc0Var));
        Oooo000(arrayList, sQLiteDatabase);
    }

    public String OoooO0(String str) {
        return "drop table if exists " + str;
    }

    public String OoooO00(String str, List<fc0> list, boolean z) {
        StringBuilder sb = new StringBuilder("create table ");
        sb.append(str);
        sb.append(" (");
        if (z) {
            sb.append("id integer primary key autoincrement,");
        }
        if (OoooO(list)) {
            sb.deleteCharAt(sb.length() - 1);
        }
        boolean z3 = false;
        for (fc0 fc0Var : list) {
            if (!fc0Var.OooO0Oo()) {
                if (z3) {
                    sb.append(", ");
                }
                sb.append(fc0Var.OooO00o());
                sb.append(o4.OooO00o.OooO0Oo);
                sb.append(fc0Var.OooO0O0());
                if (!fc0Var.OooO0o0()) {
                    sb.append(" not null");
                }
                if (fc0Var.OooO0o()) {
                    sb.append(" unique");
                }
                String strOooO0OO = fc0Var.OooO0OO();
                if (!TextUtils.isEmpty(strOooO0OO)) {
                    sb.append(" default ");
                    sb.append(strOooO0OO);
                }
                z3 = true;
            }
        }
        sb.append(")");
        sc0.OooO00o(ac0.OooOO0o, "create table sql is >> " + ((Object) sb));
        return sb.toString();
    }

    public void OoooO0O(String str, int i, SQLiteDatabase sQLiteDatabase) throws Throwable {
        Cursor cursorRawQuery;
        StringBuilder sb = new StringBuilder("select * from ");
        sb.append(qc0.OooO0OO.OooO00o);
        sc0.OooO00o(ac0.OooOO0o, "giveTableSchemaACopy SQL is >> " + ((Object) sb));
        Cursor cursor = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (o000oOoO(cursorRawQuery, str)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("name", pc0.OooO0O0(str));
                contentValues.put("type", Integer.valueOf(i));
                sQLiteDatabase.insert(qc0.OooO0OO.OooO00o, null, contentValues);
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (Exception e2) {
            e = e2;
            cursor = cursorRawQuery;
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = cursorRawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public boolean OoooOO0(String str) {
        return (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.ID) || str.equalsIgnoreCase(TrayContract.Preferences.Columns.ID)) ? false : true;
    }
}
