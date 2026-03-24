package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Foreign extends Column {
    private final ColumnConverter foreignColumnConverter;
    private final String foreignColumnName;

    public Foreign(Class<?> cls, Field field) {
        super(cls, field);
        String foreignColumnNameByField = ColumnUtils.getForeignColumnNameByField(field);
        this.foreignColumnName = foreignColumnNameByField;
        this.foreignColumnConverter = ColumnConverterFactory.getColumnConverter(TableUtils.getColumnOrId(getForeignEntityType(), foreignColumnNameByField).columnField.getType());
    }

    @Override // com.lidroid.xutils.db.table.Column
    public ColumnDbType getColumnDbType() {
        return this.foreignColumnConverter.getColumnDbType();
    }

    @Override // com.lidroid.xutils.db.table.Column
    public Object getColumnValue(Object obj) {
        Object fieldValue = getFieldValue(obj);
        if (fieldValue == null) {
            return null;
        }
        Class<?> type = this.columnField.getType();
        if (type.equals(ForeignLazyLoader.class)) {
            return ((ForeignLazyLoader) fieldValue).getColumnValue();
        }
        try {
            if (!type.equals(List.class)) {
                Column columnOrId = TableUtils.getColumnOrId(type, this.foreignColumnName);
                Object columnValue = columnOrId.getColumnValue(fieldValue);
                Table table = getTable();
                if (table != null && columnValue == null && (columnOrId instanceof Id)) {
                    table.db.saveOrUpdate(fieldValue);
                }
                return columnOrId.getColumnValue(fieldValue);
            }
            List list = (List) fieldValue;
            if (list.size() <= 0) {
                return null;
            }
            Column columnOrId2 = TableUtils.getColumnOrId(ColumnUtils.getForeignEntityType(this), this.foreignColumnName);
            columnOrId2.getColumnValue(list.get(0));
            Table table2 = getTable();
            if (table2 != null && (columnOrId2 instanceof Id)) {
                for (Object obj2 : list) {
                    if (columnOrId2.getColumnValue(obj2) == null) {
                        table2.db.saveOrUpdate(obj2);
                    }
                }
            }
            return columnOrId2.getColumnValue(list.get(0));
        } catch (Throwable th) {
            LogUtils.e(th.getMessage(), th);
            return null;
        }
    }

    @Override // com.lidroid.xutils.db.table.Column
    public Object getDefaultValue() {
        return null;
    }

    public String getForeignColumnName() {
        return this.foreignColumnName;
    }

    public Class<?> getForeignEntityType() {
        return ColumnUtils.getForeignEntityType(this);
    }

    @Override // com.lidroid.xutils.db.table.Column
    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        Object fieldValue = this.foreignColumnConverter.getFieldValue(cursor, i);
        if (fieldValue == null) {
            return;
        }
        Object allFromDb = null;
        Class<?> type = this.columnField.getType();
        if (type.equals(ForeignLazyLoader.class)) {
            allFromDb = new ForeignLazyLoader(this, fieldValue);
        } else {
            try {
                allFromDb = type.equals(List.class) ? new ForeignLazyLoader(this, fieldValue).getAllFromDb() : new ForeignLazyLoader(this, fieldValue).getFirstFromDb();
            } catch (DbException e) {
                LogUtils.e(e.getMessage(), e);
            }
        }
        Method method = this.setMethod;
        try {
            if (method != null) {
                method.invoke(obj, allFromDb);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, allFromDb);
            }
        } catch (Throwable th) {
            LogUtils.e(th.getMessage(), th);
        }
    }
}
