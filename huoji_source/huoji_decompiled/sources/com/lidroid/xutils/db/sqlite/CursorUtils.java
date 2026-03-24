package com.lidroid.xutils.db.sqlite;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.Column;
import com.lidroid.xutils.db.table.DbModel;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Id;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class CursorUtils {

    public static class EntityTempCache {
        private static final ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap<>();
        private static long seq = 0;

        private EntityTempCache() {
        }

        public static <T> T get(Class<T> cls, Object obj) {
            return (T) cache.get(String.valueOf(cls.getName()) + "#" + obj);
        }

        public static <T> void put(Class<T> cls, Object obj, Object obj2) {
            cache.put(String.valueOf(cls.getName()) + "#" + obj, obj2);
        }

        public static void setSeq(long j) {
            if (seq != j) {
                cache.clear();
                seq = j;
            }
        }
    }

    public static class FindCacheSequence {
        private static long seq;
        private static final String FOREIGN_LAZY_LOADER_CLASS_NAME = ForeignLazyLoader.class.getName();
        private static final String FINDER_LAZY_LOADER_CLASS_NAME = FinderLazyLoader.class.getName();

        private FindCacheSequence() {
        }

        public static long getSeq() {
            String className = Thread.currentThread().getStackTrace()[4].getClassName();
            if (!className.equals(FOREIGN_LAZY_LOADER_CLASS_NAME) && !className.equals(FINDER_LAZY_LOADER_CLASS_NAME)) {
                seq++;
            }
            return seq;
        }
    }

    public static DbModel getDbModel(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        DbModel dbModel = new DbModel();
        int columnCount = cursor.getColumnCount();
        for (int i = 0; i < columnCount; i++) {
            dbModel.add(cursor.getColumnName(i), cursor.getString(i));
        }
        return dbModel;
    }

    public static <T> T getEntity(DbUtils dbUtils, Cursor cursor, Class<T> cls, long j) {
        if (dbUtils != null && cursor != null) {
            EntityTempCache.setSeq(j);
            try {
                Table table = Table.get(dbUtils, cls);
                Id id = table.id;
                String columnName = id.getColumnName();
                int index = id.getIndex();
                if (index < 0) {
                    index = cursor.getColumnIndex(columnName);
                }
                Object fieldValue = id.getColumnConverter().getFieldValue(cursor, index);
                T t = (T) EntityTempCache.get(cls, fieldValue);
                if (t != null) {
                    return t;
                }
                T tNewInstance = cls.newInstance();
                id.setValue2Entity(tNewInstance, cursor, index);
                EntityTempCache.put(cls, fieldValue, tNewInstance);
                int columnCount = cursor.getColumnCount();
                for (int i = 0; i < columnCount; i++) {
                    Column column = table.columnMap.get(cursor.getColumnName(i));
                    if (column != null) {
                        column.setValue2Entity(tNewInstance, cursor, i);
                    }
                }
                Iterator<Finder> it = table.finderMap.values().iterator();
                while (it.hasNext()) {
                    it.next().setValue2Entity(tNewInstance, null, 0);
                }
                return tNewInstance;
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
            }
        }
        return null;
    }
}
