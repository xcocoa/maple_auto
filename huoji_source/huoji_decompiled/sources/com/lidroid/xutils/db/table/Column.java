package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class Column {
    public final ColumnConverter columnConverter;
    public final Field columnField;
    public final String columnName;
    private final Object defaultValue;
    public final Method getMethod;
    private int index = -1;
    public final Method setMethod;
    private Table table;

    public Column(Class<?> cls, Field field) {
        this.columnField = field;
        ColumnConverter columnConverter = ColumnConverterFactory.getColumnConverter(field.getType());
        this.columnConverter = columnConverter;
        this.columnName = ColumnUtils.getColumnNameByField(field);
        this.defaultValue = columnConverter != null ? columnConverter.getFieldValue(ColumnUtils.getColumnDefaultValue(field)) : null;
        this.getMethod = ColumnUtils.getColumnGetMethod(cls, field);
        this.setMethod = ColumnUtils.getColumnSetMethod(cls, field);
    }

    public ColumnConverter getColumnConverter() {
        return this.columnConverter;
    }

    public ColumnDbType getColumnDbType() {
        return this.columnConverter.getColumnDbType();
    }

    public Field getColumnField() {
        return this.columnField;
    }

    public String getColumnName() {
        return this.columnName;
    }

    public Object getColumnValue(Object obj) {
        return this.columnConverter.fieldValue2ColumnValue(getFieldValue(obj));
    }

    public Object getDefaultValue() {
        return this.defaultValue;
    }

    public Object getFieldValue(Object obj) {
        Object objInvoke;
        if (obj != null) {
            Method method = this.getMethod;
            try {
                if (method != null) {
                    objInvoke = method.invoke(obj, new Object[0]);
                } else {
                    this.columnField.setAccessible(true);
                    objInvoke = this.columnField.get(obj);
                }
                return objInvoke;
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
            }
        }
        return null;
    }

    public int getIndex() {
        return this.index;
    }

    public Table getTable() {
        return this.table;
    }

    public void setTable(Table table) {
        this.table = table;
    }

    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        this.index = i;
        Object fieldValue = this.columnConverter.getFieldValue(cursor, i);
        if (fieldValue == null && this.defaultValue == null) {
            return;
        }
        Method method = this.setMethod;
        try {
            if (method != null) {
                Object[] objArr = new Object[1];
                if (fieldValue == null) {
                    fieldValue = this.defaultValue;
                }
                objArr[0] = fieldValue;
                method.invoke(obj, objArr);
                return;
            }
            this.columnField.setAccessible(true);
            Field field = this.columnField;
            if (fieldValue == null) {
                fieldValue = this.defaultValue;
            }
            field.set(obj, fieldValue);
        } catch (Throwable th) {
            LogUtils.e(th.getMessage(), th);
        }
    }
}
