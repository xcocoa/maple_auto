package com.cyjh.logcatdex;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.apache.commons.io.IOUtils;
import z2.g6;

/* JADX INFO: loaded from: assets/AppReboot.dex */
public class LogcatUtils {
    private static final Charset CHARSET_UTF_8;
    private static final String FILE_TYPE = "Logcat";
    private static final String LOGCAT_TAG_FILTER_FILE = "logcat_tag_filter.txt";

    static {
        CHARSET_UTF_8 = Build.VERSION.SDK_INT >= 19 ? StandardCharsets.UTF_8 : Charset.forName("UTF-8");
    }

    static boolean isPortrait(Context context) {
        return context.getResources().getConfiguration().orientation == 1;
    }

    static int getStatusBarHeight(Context context) {
        Resources resources = context.getResources();
        int resourceId = resources.getIdentifier("status_bar_height", "dimen", g6.OooO0O0);
        return resources.getDimensionPixelSize(resourceId);
    }

    static Boolean getMetaBooleanData(Context context, String metaKey) {
        try {
            Bundle metaData = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (metaData != null && metaData.containsKey(metaKey)) {
                return Boolean.valueOf(Boolean.parseBoolean(String.valueOf(metaData.get(metaKey))));
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    static String getMetaStringData(Context context, String metaKey) {
        try {
            Bundle metaData = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (metaData != null && metaData.containsKey(metaKey)) {
                return String.valueOf(metaData.get(metaKey));
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void toast(Activity activity, int stringId) {
        toast(activity, activity.getResources().getString(stringId));
    }

    public static void toast(Activity activity, CharSequence text) {
    }

    public static File saveLogToFile(Context context, List<String> data) throws IOException {
        File directory = context.getExternalFilesDir(FILE_TYPE);
        if (!directory.isDirectory()) {
            directory.delete();
        }
        if (!directory.exists()) {
            directory.mkdirs();
        }
        File file = new File(directory, new SimpleDateFormat("yyyyMMdd_kkmmss", Locale.getDefault()).format(new Date()) + ".txt");
        if (!file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false), CHARSET_UTF_8));
        for (String info : data) {
            writer.write(info.replace("\n", IOUtils.LINE_SEPARATOR_WINDOWS) + "\r\n\r\n");
        }
        writer.flush();
        try {
            writer.close();
        } catch (IOException e) {
        }
        return file;
    }

    public static void writeFile(String fileDir, String fileName, List<String> infoList, boolean append) {
        File directory = new File(fileDir);
        try {
            if (!directory.isDirectory()) {
                directory.delete();
            }
            if (!directory.exists()) {
                directory.mkdirs();
            }
            File file = new File(directory, fileName);
            if (!file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fw = new FileWriter(file, append);
            for (String line : infoList) {
                String content = line.replace("\n", IOUtils.LINE_SEPARATOR_WINDOWS) + "\r\n\r\n";
                if (content != null && !"".equals(content)) {
                    fw.write(content);
                    fw.flush();
                }
            }
            fw.close();
        } catch (Exception var5) {
            var5.printStackTrace();
        }
    }

    static List<String> readTagFilter(Context context) throws IOException {
        List<String> tagFilter = new ArrayList<>();
        File file = new File(context.getExternalFilesDir(FILE_TYPE), LOGCAT_TAG_FILTER_FILE);
        if (file.exists() && file.isFile()) {
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), CHARSET_UTF_8));
            while (true) {
                String tag = reader.readLine();
                if (tag == null) {
                    try {
                        break;
                    } catch (IOException e) {
                    }
                } else if (!"".equals(tag) && !tagFilter.contains(tag)) {
                    tagFilter.add(tag);
                }
            }
            reader.close();
        }
        return tagFilter;
    }

    static File writeTagFilter(Context context, List<String> tagFilter) throws IOException {
        File file = new File(context.getExternalFilesDir(FILE_TYPE), LOGCAT_TAG_FILTER_FILE);
        if (tagFilter != null && !tagFilter.isEmpty()) {
            if (!file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false), CHARSET_UTF_8));
            for (String temp : tagFilter) {
                writer.write(temp + IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            writer.flush();
            try {
                writer.close();
            } catch (IOException e) {
            }
        }
        return file;
    }

    public static String computeMD5Hash(String string) {
        try {
            byte[] hash = MessageDigest.getInstance("MD5").digest(string.getBytes(CHARSET_UTF_8));
            StringBuilder hex = new StringBuilder(hash.length * 2);
            for (byte b : hash) {
                if ((b & 255) < 16) {
                    hex.append("0");
                }
                hex.append(Integer.toHexString(b & 255));
            }
            return hex.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
