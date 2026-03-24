package com.lidroid.xutils.db.converter;

import com.lidroid.xutils.db.sqlite.ColumnDbType;
import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ColumnConverterFactory {
    private static final ConcurrentHashMap<String, ColumnConverter> columnType_columnConverter_map;

    static {
        ConcurrentHashMap<String, ColumnConverter> concurrentHashMap = new ConcurrentHashMap<>();
        columnType_columnConverter_map = concurrentHashMap;
        BooleanColumnConverter booleanColumnConverter = new BooleanColumnConverter();
        concurrentHashMap.put(Boolean.TYPE.getName(), booleanColumnConverter);
        concurrentHashMap.put(Boolean.class.getName(), booleanColumnConverter);
        concurrentHashMap.put(byte[].class.getName(), new ByteArrayColumnConverter());
        ByteColumnConverter byteColumnConverter = new ByteColumnConverter();
        concurrentHashMap.put(Byte.TYPE.getName(), byteColumnConverter);
        concurrentHashMap.put(Byte.class.getName(), byteColumnConverter);
        CharColumnConverter charColumnConverter = new CharColumnConverter();
        concurrentHashMap.put(Character.TYPE.getName(), charColumnConverter);
        concurrentHashMap.put(Character.class.getName(), charColumnConverter);
        concurrentHashMap.put(Date.class.getName(), new DateColumnConverter());
        DoubleColumnConverter doubleColumnConverter = new DoubleColumnConverter();
        concurrentHashMap.put(Double.TYPE.getName(), doubleColumnConverter);
        concurrentHashMap.put(Double.class.getName(), doubleColumnConverter);
        FloatColumnConverter floatColumnConverter = new FloatColumnConverter();
        concurrentHashMap.put(Float.TYPE.getName(), floatColumnConverter);
        concurrentHashMap.put(Float.class.getName(), floatColumnConverter);
        IntegerColumnConverter integerColumnConverter = new IntegerColumnConverter();
        concurrentHashMap.put(Integer.TYPE.getName(), integerColumnConverter);
        concurrentHashMap.put(Integer.class.getName(), integerColumnConverter);
        LongColumnConverter longColumnConverter = new LongColumnConverter();
        concurrentHashMap.put(Long.TYPE.getName(), longColumnConverter);
        concurrentHashMap.put(Long.class.getName(), longColumnConverter);
        ShortColumnConverter shortColumnConverter = new ShortColumnConverter();
        concurrentHashMap.put(Short.TYPE.getName(), shortColumnConverter);
        concurrentHashMap.put(Short.class.getName(), shortColumnConverter);
        concurrentHashMap.put(java.sql.Date.class.getName(), new SqlDateColumnConverter());
        concurrentHashMap.put(String.class.getName(), new StringColumnConverter());
    }

    private ColumnConverterFactory() {
    }

    public static ColumnConverter getColumnConverter(Class cls) {
        ConcurrentHashMap<String, ColumnConverter> concurrentHashMap = columnType_columnConverter_map;
        if (concurrentHashMap.containsKey(cls.getName())) {
            return concurrentHashMap.get(cls.getName());
        }
        if (!ColumnConverter.class.isAssignableFrom(cls)) {
            return null;
        }
        try {
            ColumnConverter columnConverter = (ColumnConverter) cls.newInstance();
            if (columnConverter != null) {
                concurrentHashMap.put(cls.getName(), columnConverter);
            }
            return columnConverter;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static ColumnDbType getDbColumnType(Class cls) {
        ColumnConverter columnConverter = getColumnConverter(cls);
        return columnConverter != null ? columnConverter.getColumnDbType() : ColumnDbType.TEXT;
    }

    public static boolean isSupportColumnConverter(Class cls) {
        ConcurrentHashMap<String, ColumnConverter> concurrentHashMap = columnType_columnConverter_map;
        if (concurrentHashMap.containsKey(cls.getName())) {
            return true;
        }
        if (ColumnConverter.class.isAssignableFrom(cls)) {
            try {
                ColumnConverter columnConverter = (ColumnConverter) cls.newInstance();
                if (columnConverter != null) {
                    concurrentHashMap.put(cls.getName(), columnConverter);
                }
                if (columnConverter == null) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static void registerColumnConverter(Class cls, ColumnConverter columnConverter) {
        columnType_columnConverter_map.put(cls.getName(), columnConverter);
    }
}
