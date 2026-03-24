package com.lidroid.xutils.db.sqlite;

import android.text.TextUtils;
import com.anythink.core.api.ATCountryCode;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.table.ColumnUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class WhereBuilder {
    private final List<String> whereItems = new ArrayList();

    private WhereBuilder() {
    }

    private void appendCondition(String str, String str2, String str3, Object obj) {
        Object objConvert2DbColumnValueIfNeeded;
        String string;
        StringBuilder sb;
        String string2;
        StringBuilder sb2 = new StringBuilder();
        if (this.whereItems.size() > 0) {
            sb2.append(o4.OooO00o.OooO0Oo);
        }
        if (!TextUtils.isEmpty(str)) {
            sb2.append(String.valueOf(str) + o4.OooO00o.OooO0Oo);
        }
        sb2.append(str2);
        if ("!=".equals(str3)) {
            str3 = "<>";
        } else if ("==".equals(str3)) {
            str3 = "=";
        }
        if (obj != null) {
            sb2.append(o4.OooO00o.OooO0Oo + str3 + o4.OooO00o.OooO0Oo);
            int i = 0;
            Iterable iterable = null;
            if (!ATCountryCode.INDIA.equalsIgnoreCase(str3)) {
                if ("BETWEEN".equalsIgnoreCase(str3)) {
                    if (obj instanceof Iterable) {
                        iterable = (Iterable) obj;
                    } else if (obj.getClass().isArray()) {
                        ArrayList arrayList = new ArrayList();
                        int length = Array.getLength(obj);
                        while (i < length) {
                            arrayList.add(Array.get(obj, i));
                            i++;
                        }
                        iterable = arrayList;
                    }
                    if (iterable == null) {
                        throw new IllegalArgumentException("value must be an Array or an Iterable.");
                    }
                    Iterator it = iterable.iterator();
                    if (!it.hasNext()) {
                        throw new IllegalArgumentException("value must have tow items.");
                    }
                    Object next = it.next();
                    if (!it.hasNext()) {
                        throw new IllegalArgumentException("value must have tow items.");
                    }
                    Object next2 = it.next();
                    Object objConvert2DbColumnValueIfNeeded2 = ColumnUtils.convert2DbColumnValueIfNeeded(next);
                    objConvert2DbColumnValueIfNeeded = ColumnUtils.convert2DbColumnValueIfNeeded(next2);
                    if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(objConvert2DbColumnValueIfNeeded2.getClass()))) {
                        String string3 = objConvert2DbColumnValueIfNeeded2.toString();
                        if (string3.indexOf(39) != -1) {
                            string3 = string3.replace("'", "''");
                        }
                        string = objConvert2DbColumnValueIfNeeded.toString();
                        if (string.indexOf(39) != -1) {
                            string = string.replace("'", "''");
                        }
                        sb2.append("'" + string3 + "'");
                        sb2.append(" AND ");
                        sb = new StringBuilder("'");
                        sb.append(string);
                        sb.append("'");
                        string2 = sb.toString();
                    } else {
                        sb2.append(objConvert2DbColumnValueIfNeeded2);
                        sb2.append(" AND ");
                        sb2.append(objConvert2DbColumnValueIfNeeded);
                    }
                } else {
                    objConvert2DbColumnValueIfNeeded = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
                    if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(objConvert2DbColumnValueIfNeeded.getClass()))) {
                        string = objConvert2DbColumnValueIfNeeded.toString();
                        if (string.indexOf(39) != -1) {
                            string = string.replace("'", "''");
                        }
                        sb = new StringBuilder("'");
                        sb.append(string);
                        sb.append("'");
                        string2 = sb.toString();
                    }
                    sb2.append(objConvert2DbColumnValueIfNeeded);
                }
                this.whereItems.add(sb2.toString());
            }
            if (obj instanceof Iterable) {
                iterable = (Iterable) obj;
            } else if (obj.getClass().isArray()) {
                ArrayList arrayList2 = new ArrayList();
                int length2 = Array.getLength(obj);
                while (i < length2) {
                    arrayList2.add(Array.get(obj, i));
                    i++;
                }
                iterable = arrayList2;
            }
            if (iterable == null) {
                throw new IllegalArgumentException("value must be an Array or an Iterable.");
            }
            StringBuffer stringBuffer = new StringBuffer("(");
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                Object objConvert2DbColumnValueIfNeeded3 = ColumnUtils.convert2DbColumnValueIfNeeded(it2.next());
                if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(objConvert2DbColumnValueIfNeeded3.getClass()))) {
                    String string4 = objConvert2DbColumnValueIfNeeded3.toString();
                    if (string4.indexOf(39) != -1) {
                        string4 = string4.replace("'", "''");
                    }
                    stringBuffer.append("'" + string4 + "'");
                } else {
                    stringBuffer.append(objConvert2DbColumnValueIfNeeded3);
                }
                stringBuffer.append(",");
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            stringBuffer.append(")");
            string2 = stringBuffer.toString();
        } else if ("=".equals(str3)) {
            string2 = " IS NULL";
        } else if ("<>".equals(str3)) {
            string2 = " IS NOT NULL";
        } else {
            string2 = o4.OooO00o.OooO0Oo + str3 + " NULL";
        }
        sb2.append(string2);
        this.whereItems.add(sb2.toString());
    }

    public static WhereBuilder b() {
        return new WhereBuilder();
    }

    public static WhereBuilder b(String str, String str2, Object obj) {
        WhereBuilder whereBuilder = new WhereBuilder();
        whereBuilder.appendCondition(null, str, str2, obj);
        return whereBuilder;
    }

    public WhereBuilder and(String str, String str2, Object obj) {
        appendCondition(this.whereItems.size() == 0 ? null : "AND", str, str2, obj);
        return this;
    }

    public WhereBuilder expr(String str) {
        this.whereItems.add(o4.OooO00o.OooO0Oo.concat(String.valueOf(str)));
        return this;
    }

    public WhereBuilder expr(String str, String str2, Object obj) {
        appendCondition(null, str, str2, obj);
        return this;
    }

    public int getWhereItemSize() {
        return this.whereItems.size();
    }

    public WhereBuilder or(String str, String str2, Object obj) {
        appendCondition(this.whereItems.size() == 0 ? null : "OR", str, str2, obj);
        return this;
    }

    public String toString() {
        if (this.whereItems.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.whereItems.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }
}
