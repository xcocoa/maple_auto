package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.content.SharedPreferences;
import com.sun.mail.imap.IMAPStore;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import z2.ae;

/* JADX INFO: loaded from: classes2.dex */
public class SPUtils {
    private static final String FILE_NAME_GROUP_SDK = "octopus_group_config";
    private static final String FILE_NAME_OCTOPUS_FREQUENCY = "octopus_frequency";
    private static final String FILE_NAME_OCTOPUS_SDK = "octopus_sdk_config";

    public static void clear(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.clear();
            editorEdit.apply();
        }
    }

    private static void clearFrequency(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_FREQUENCY, 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.clear();
            editorEdit.apply();
        }
    }

    public static boolean contains(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0);
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public static Object get(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0);
        if (sharedPreferences == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return sharedPreferences.getString(str, (String) obj);
        }
        if (obj instanceof Set) {
            return sharedPreferences.getStringSet(str, (Set) obj);
        }
        return null;
    }

    public static Map<String, ?> getAll(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getAll();
        }
        return null;
    }

    private static String getDate() {
        return new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(new Date());
    }

    public static int getFrequency(Context context, String str) {
        if (context != null) {
            return context.getSharedPreferences(FILE_NAME_OCTOPUS_FREQUENCY, 0).getInt(str, -1);
        }
        return -1;
    }

    public static String getFrequencyDate(Context context, String str) {
        return context != null ? context.getSharedPreferences(FILE_NAME_OCTOPUS_FREQUENCY, 0).getString(str, "") : "";
    }

    public static Object getFromGroupSdk(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences(FILE_NAME_GROUP_SDK, 0)) == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return sharedPreferences.getString(str, (String) obj);
        }
        if (obj instanceof Set) {
            return sharedPreferences.getStringSet(str, (Set) obj);
        }
        return null;
    }

    public static int getInt(Context context, String str, int i) {
        return context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0).getInt(str, i);
    }

    public static String getString(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(str, null);
    }

    public static String getUpdated(Context context, String str) {
        return context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0).getString(str, String.valueOf(System.currentTimeMillis() / 1000));
    }

    public static void put(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (obj instanceof Boolean) {
                editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                editorEdit.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Integer) {
                editorEdit.putInt(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                editorEdit.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                editorEdit.putString(str, (String) obj);
            } else if (obj instanceof Set) {
                editorEdit.remove(str);
                editorEdit.putStringSet(str, (Set) obj);
            }
            editorEdit.apply();
        }
    }

    public static void putFrequency(Context context, String str, int i) {
        if (context != null) {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(FILE_NAME_OCTOPUS_FREQUENCY, 0).edit();
            editorEdit.putInt(str, i);
            editorEdit.apply();
        }
    }

    public static void putInt(Context context, String str, int i) {
        context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0).edit().putInt(str, i).apply();
    }

    public static void refreshFrequencyDate(Context context) {
        if (getDate().equals(getFrequencyDate(context, IMAPStore.ID_DATE))) {
            return;
        }
        clearFrequency(context);
        saveFrequencyDate(context, IMAPStore.ID_DATE, getDate());
    }

    public static void remove(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(str);
            editorEdit.apply();
        }
    }

    private static void saveFrequencyDate(Context context, String str, String str2) {
        if (context != null) {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(FILE_NAME_OCTOPUS_FREQUENCY, 0).edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        }
    }

    public static void saveUpdated(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(FILE_NAME_OCTOPUS_SDK, 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }
}
