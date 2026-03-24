package z2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.exceptions.DatabaseGenerateException;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public class rc0 {
    private static final String OooO00o = "DBUtility";
    private static final String OooO0O0 = ",abort,add,after,all,alter,and,as,asc,autoincrement,before,begin,between,by,cascade,check,collate,column,commit,conflict,constraint,create,cross,database,deferrable,deferred,delete,desc,distinct,drop,each,end,escape,except,exclusive,exists,foreign,from,glob,group,having,in,index,inner,insert,intersect,into,is,isnull,join,like,limit,match,natural,not,notnull,null,of,offset,on,or,order,outer,plan,pragma,primary,query,raise,references,regexp,reindex,release,rename,replace,restrict,right,rollback,row,savepoint,select,set,table,temp,temporary,then,to,transaction,trigger,union,unique,update,using,vacuum,values,view,virtual,when,where,";
    private static final String OooO0OO = "_lpcolumn";
    private static final String OooO0Oo = "\\s*(=|!=|<>|<|>)";
    private static final String OooO0o = "\\s+(not\\s+)?(in)\\s*\\(";
    private static final String OooO0o0 = "\\s+(not\\s+)?(like|between)\\s+";

    private rc0() {
    }

    public static String OooO(String str, String str2) {
        return pc0.OooO0O0(OooOOO0(str) + "_" + str2);
    }

    public static String OooO00o(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (!lowerCase.contains(",")) {
            return OooO0O0(lowerCase);
        }
        String[] strArrSplit = lowerCase.split(",");
        StringBuilder sb = new StringBuilder();
        int length = strArrSplit.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            String str2 = strArrSplit[i];
            if (z) {
                sb.append(",");
            }
            sb.append(OooO0O0(str2));
            i++;
            z = true;
        }
        return sb.toString();
    }

    private static String OooO0O0(String str) {
        String str2 = "";
        if (str.endsWith("asc")) {
            str = str.replace("asc", "").trim();
            str2 = " asc";
        } else if (str.endsWith("desc")) {
            str = str.replace("desc", "").trim();
            str2 = " desc";
        }
        return OooO0Oo(str) + str2;
    }

    public static String[] OooO0OO(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = OooO0Oo(strArr[i]);
        }
        return strArr2;
    }

    public static String OooO0Oo(String str) {
        if (!OooOOo0(str)) {
            return str;
        }
        return str + OooO0OO;
    }

    public static List<String> OooO0o(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("select * from sqlite_master where type = ?", new String[]{"table"});
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("tbl_name"));
                        if (!arrayList.contains(string)) {
                            arrayList.add(string);
                        }
                    } while (cursorRawQuery.moveToNext());
                }
                return arrayList;
            } catch (Exception e) {
                e.printStackTrace();
                throw new DatabaseGenerateException(e.getMessage());
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public static String OooO0o0(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("(\\w+\\s*(=|!=|<>|<|>)|\\w+\\s+(not\\s+)?(like|between)\\s+|\\w+\\s+(not\\s+)?(in)\\s*\\()").matcher(str);
                while (matcher.find()) {
                    String strGroup = matcher.group();
                    String strReplaceAll = strGroup.replaceAll("(\\s*(=|!=|<>|<|>)|\\s+(not\\s+)?(like|between)\\s+|\\s+(not\\s+)?(in)\\s*\\()", "");
                    String strReplace = strGroup.replace(strReplaceAll, "");
                    matcher.appendReplacement(stringBuffer, OooO0Oo(strReplaceAll) + strReplace);
                }
                matcher.appendTail(stringBuffer);
                return stringBuffer.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public static hc0 OooO0oO(String str, SQLiteDatabase sQLiteDatabase) throws Throwable {
        if (!OooOo00(str, sQLiteDatabase)) {
            throw new DatabaseGenerateException(DatabaseGenerateException.TABLE_DOES_NOT_EXIST_WHEN_EXECUTING + str);
        }
        List<String> listOooO0oo = OooO0oo(str, sQLiteDatabase);
        hc0 hc0Var = new hc0();
        hc0Var.OooO(str);
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("pragma table_info(" + str + ")", null);
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        fc0 fc0Var = new fc0();
                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("name"));
                        String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("type"));
                        boolean z = true;
                        if (cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("notnull")) == 1) {
                            z = false;
                        }
                        boolean zContains = listOooO0oo.contains(string);
                        String string3 = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("dflt_value"));
                        fc0Var.OooO0oO(string);
                        fc0Var.OooO0oo(string2);
                        fc0Var.OooOO0(z);
                        fc0Var.OooOO0O(zContains);
                        fc0Var.OooO(string3 != null ? string3.replace("'", "") : "");
                        hc0Var.OooO00o(fc0Var);
                    } while (cursorRawQuery.moveToNext());
                }
                return hc0Var;
            } catch (Exception e) {
                e.printStackTrace();
                throw new DatabaseGenerateException(e.getMessage());
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> OooO0oo(String str, SQLiteDatabase sQLiteDatabase) throws Throwable {
        Cursor cursorRawQuery;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor cursorRawQuery2 = sQLiteDatabase.rawQuery("pragma index_list(" + str + ")", null);
            try {
                if (cursorRawQuery2.moveToFirst()) {
                    cursorRawQuery = null;
                    do {
                        try {
                            if (cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndexOrThrow("unique")) == 1) {
                                cursorRawQuery = sQLiteDatabase.rawQuery("pragma index_info(" + cursorRawQuery2.getString(cursorRawQuery2.getColumnIndexOrThrow("name")) + ")", null);
                                if (cursorRawQuery.moveToFirst()) {
                                    arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("name")));
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            cursor = cursorRawQuery2;
                            try {
                                e.printStackTrace();
                                throw new DatabaseGenerateException(e.getMessage());
                            } catch (Throwable th) {
                                th = th;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorRawQuery2;
                            if (cursor != null) {
                            }
                            if (cursorRawQuery != null) {
                            }
                            throw th;
                        }
                    } while (cursorRawQuery2.moveToNext());
                    cursor = cursorRawQuery;
                }
                if (cursorRawQuery2 != null) {
                    cursorRawQuery2.close();
                }
                if (cursor != null) {
                    cursor.close();
                }
                return arrayList;
            } catch (Exception e2) {
                e = e2;
                cursorRawQuery = null;
            } catch (Throwable th3) {
                th = th3;
                cursorRawQuery = null;
            }
        } catch (Exception e3) {
            e = e3;
            cursorRawQuery = null;
        } catch (Throwable th4) {
            th = th4;
            cursorRawQuery = null;
        }
    }

    public static String OooOO0(String str) {
        return pc0.OooO0O0(OooOOO0(str) + TrayContract.Preferences.Columns.ID);
    }

    public static String OooOO0O(String str, String str2) {
        StringBuilder sb;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Locale locale = Locale.US;
        if (str.toLowerCase(locale).compareTo(str2.toLowerCase(locale)) <= 0) {
            sb = new StringBuilder();
            sb.append(str);
            sb.append("_");
            sb.append(str2);
        } else {
            sb = new StringBuilder();
            sb.append(str2);
            sb.append("_");
            sb.append(str);
        }
        return sb.toString();
    }

    public static String OooOO0o(Field field) {
        return pc0.OooO0O0(field.getName() + TrayContract.Preferences.Columns.ID);
    }

    public static String OooOOO(String str) {
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.ID)) {
            return null;
        }
        return str.substring(0, str.length() - 3);
    }

    public static String OooOOO0(String str) {
        if (TextUtils.isEmpty(str) || '.' == str.charAt(str.length() - 1)) {
            return null;
        }
        return str.substring(str.lastIndexOf(".") + 1);
    }

    public static List<String> OooOOOO(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(OooOOO0(it.next()));
            }
        }
        return arrayList;
    }

    public static boolean OooOOOo(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        boolean z = false;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("pragma table_info(" + str2 + ")", null);
                if (cursorRawQuery.moveToFirst()) {
                    while (true) {
                        if (str.equalsIgnoreCase(cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("name")))) {
                            z = true;
                            break;
                        }
                        if (!cursorRawQuery.moveToNext()) {
                            break;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery != null) {
                }
            }
            return z;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
    
        if (r0.getInt(r0.getColumnIndexOrThrow("type")) != 2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
    
        if (r0 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0045, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean OooOOo(String str, SQLiteDatabase sQLiteDatabase) {
        if (TextUtils.isEmpty(str) || !str.matches("[0-9a-zA-Z]+_[0-9a-zA-Z]+")) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = sQLiteDatabase.query(qc0.OooO0OO.OooO00o, null, null, null, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        if (str.equalsIgnoreCase(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("name")))) {
                            break;
                        }
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                    }
                }
                if (cursorQuery == null) {
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorQuery == null) {
                    return false;
                }
            }
            cursorQuery.close();
            return false;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static boolean OooOOo0(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(",");
        sb.append(str.toLowerCase(Locale.US));
        sb.append(",");
        return OooO0O0.contains(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
    
        if (r0.getInt(r0.getColumnIndexOrThrow("type")) != 1) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        if (r0 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean OooOOoo(String str, SQLiteDatabase sQLiteDatabase) {
        if (TextUtils.isEmpty(str) || !str.matches("[0-9a-zA-Z]+_[0-9a-zA-Z]+")) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = sQLiteDatabase.query(qc0.OooO0OO.OooO00o, null, null, null, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        if (str.equalsIgnoreCase(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("name")))) {
                            break;
                        }
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                    }
                }
                if (cursorQuery == null) {
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorQuery == null) {
                    return false;
                }
            }
            cursorQuery.close();
            return false;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static boolean OooOo00(String str, SQLiteDatabase sQLiteDatabase) {
        try {
            return pc0.OooO0Oo(OooO0o(sQLiteDatabase), str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
