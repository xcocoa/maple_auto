package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import com.lidroid.xutils.DbUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Table {
    private static final HashMap<String, Table> tableMap = new HashMap<>();
    private boolean checkedDatabase;
    public final HashMap<String, Column> columnMap;
    public final DbUtils db;
    public final HashMap<String, Finder> finderMap;
    public final Id id;
    public final String tableName;

    private Table(DbUtils dbUtils, Class<?> cls) {
        this.db = dbUtils;
        this.tableName = TableUtils.getTableName(cls);
        this.id = TableUtils.getId(cls);
        HashMap<String, Column> columnMap = TableUtils.getColumnMap(cls);
        this.columnMap = columnMap;
        this.finderMap = new HashMap<>();
        for (Column column : columnMap.values()) {
            column.setTable(this);
            if (column instanceof Finder) {
                this.finderMap.put(column.getColumnName(), (Finder) column);
            }
        }
    }

    public static synchronized Table get(DbUtils dbUtils, Class<?> cls) {
        Table table;
        String str = String.valueOf(dbUtils.getDaoConfig().getDbName()) + "#" + cls.getName();
        HashMap<String, Table> map = tableMap;
        table = map.get(str);
        if (table == null) {
            table = new Table(dbUtils, cls);
            map.put(str, table);
        }
        return table;
    }

    public static synchronized void remove(DbUtils dbUtils, Class<?> cls) {
        tableMap.remove(String.valueOf(dbUtils.getDaoConfig().getDbName()) + "#" + cls.getName());
    }

    public static synchronized void remove(DbUtils dbUtils, String str) {
        HashMap<String, Table> map = tableMap;
        if (map.size() > 0) {
            String key = null;
            for (Map.Entry<String, Table> entry : map.entrySet()) {
                Table value = entry.getValue();
                if (value != null && value.tableName.equals(str)) {
                    key = entry.getKey();
                    if (key.startsWith(String.valueOf(dbUtils.getDaoConfig().getDbName()) + "#")) {
                        break;
                    }
                }
            }
            if (TextUtils.isEmpty(key)) {
                tableMap.remove(key);
            }
        }
    }

    public boolean isCheckedDatabase() {
        return this.checkedDatabase;
    }

    public void setCheckedDatabase(boolean z) {
        this.checkedDatabase = z;
    }
}
