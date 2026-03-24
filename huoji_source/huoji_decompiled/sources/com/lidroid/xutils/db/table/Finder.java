package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.db.sqlite.FinderLazyLoader;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Finder extends Column {
    private final String targetColumnName;
    private final String valueColumnName;

    public Finder(Class<?> cls, Field field) {
        super(cls, field);
        com.lidroid.xutils.db.annotation.Finder finder = (com.lidroid.xutils.db.annotation.Finder) field.getAnnotation(com.lidroid.xutils.db.annotation.Finder.class);
        this.valueColumnName = finder.valueColumn();
        this.targetColumnName = finder.targetColumn();
    }

    @Override // com.lidroid.xutils.db.table.Column
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.TEXT;
    }

    @Override // com.lidroid.xutils.db.table.Column
    public Object getColumnValue(Object obj) {
        return null;
    }

    @Override // com.lidroid.xutils.db.table.Column
    public Object getDefaultValue() {
        return null;
    }

    public String getTargetColumnName() {
        return this.targetColumnName;
    }

    public Class<?> getTargetEntityType() {
        return ColumnUtils.getFinderTargetEntityType(this);
    }

    @Override // com.lidroid.xutils.db.table.Column
    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        Object allFromDb;
        Class<?> type = this.columnField.getType();
        Object columnValue = TableUtils.getColumnOrId(obj.getClass(), this.valueColumnName).getColumnValue(obj);
        if (type.equals(FinderLazyLoader.class)) {
            allFromDb = new FinderLazyLoader(this, columnValue);
        } else {
            try {
                allFromDb = type.equals(List.class) ? new FinderLazyLoader(this, columnValue).getAllFromDb() : new FinderLazyLoader(this, columnValue).getFirstFromDb();
            } catch (DbException e) {
                LogUtils.e(e.getMessage(), e);
                allFromDb = null;
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
