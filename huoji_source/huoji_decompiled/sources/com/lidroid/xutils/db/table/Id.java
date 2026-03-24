package com.lidroid.xutils.db.table;

import com.lidroid.xutils.db.annotation.NoAutoIncrement;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class Id extends Column {
    private static final HashSet<String> AUTO_INCREMENT_TYPES;
    private static final HashSet<String> INTEGER_TYPES;
    private String columnFieldClassName;
    private boolean isAutoIncrement;
    private boolean isAutoIncrementChecked;

    static {
        HashSet<String> hashSet = new HashSet<>(2);
        INTEGER_TYPES = hashSet;
        HashSet<String> hashSet2 = new HashSet<>(4);
        AUTO_INCREMENT_TYPES = hashSet2;
        hashSet.add(Integer.TYPE.getName());
        hashSet.add(Integer.class.getName());
        hashSet2.addAll(hashSet);
        hashSet2.add(Long.TYPE.getName());
        hashSet2.add(Long.class.getName());
    }

    public Id(Class<?> cls, Field field) {
        super(cls, field);
        this.isAutoIncrementChecked = false;
        this.isAutoIncrement = false;
        this.columnFieldClassName = this.columnField.getType().getName();
    }

    @Override // com.lidroid.xutils.db.table.Column
    public Object getColumnValue(Object obj) {
        Object columnValue = super.getColumnValue(obj);
        if (columnValue == null) {
            return null;
        }
        if (isAutoIncrement() && (columnValue.equals(0) || columnValue.equals(0L))) {
            return null;
        }
        return columnValue;
    }

    public boolean isAutoIncrement() {
        if (!this.isAutoIncrementChecked) {
            this.isAutoIncrementChecked = true;
            this.isAutoIncrement = this.columnField.getAnnotation(NoAutoIncrement.class) == null && AUTO_INCREMENT_TYPES.contains(this.columnFieldClassName);
        }
        return this.isAutoIncrement;
    }

    public void setAutoIncrementId(Object obj, long j) {
        Object objValueOf = Long.valueOf(j);
        if (INTEGER_TYPES.contains(this.columnFieldClassName)) {
            objValueOf = Integer.valueOf((int) j);
        }
        Method method = this.setMethod;
        try {
            if (method != null) {
                method.invoke(obj, objValueOf);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, objValueOf);
            }
        } catch (Throwable th) {
            LogUtils.e(th.getMessage(), th);
        }
    }
}
