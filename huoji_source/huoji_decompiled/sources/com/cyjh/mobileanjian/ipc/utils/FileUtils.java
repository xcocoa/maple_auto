package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class FileUtils {
    private static String OooO00o(String str) {
        if (str == null || str.trim().equals("")) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        while (stringBuffer.charAt(0) == File.separatorChar) {
            stringBuffer.deleteCharAt(0);
            if (stringBuffer.length() == 0) {
                return null;
            }
        }
        while (stringBuffer.charAt(stringBuffer.length() - 1) == File.separator.charAt(0)) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            if (stringBuffer.length() == 0) {
                return null;
            }
        }
        return stringBuffer.toString();
    }

    public static void copyAssetsFile(Context context, String str, String str2) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[4096];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i <= 0) {
                    fileOutputStream.flush();
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [int] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.io.FileOutputStream] */
    public static boolean copyRawFile(Context context, int i, String str) throws Throwable {
        InputStream inputStream = null;
        boolean z = false;
        try {
            try {
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        file.createNewFile();
                    } else if (file.isDirectory()) {
                        file = new File(str + File.separator + context.getResources().getResourceName(i));
                    }
                    byte[] bArr = new byte[4096];
                    InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
                    try {
                        i = new FileOutputStream(file);
                        while (true) {
                            try {
                                int i2 = inputStreamOpenRawResource.read(bArr);
                                if (i2 <= 0) {
                                    break;
                                }
                                i.write(bArr, 0, i2);
                            } catch (FileNotFoundException e) {
                                inputStream = inputStreamOpenRawResource;
                                e = e;
                                i = i;
                                e.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (i != 0) {
                                    i.close();
                                }
                            } catch (IOException e2) {
                                inputStream = inputStreamOpenRawResource;
                                e = e2;
                                i = i;
                                e.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (i != 0) {
                                    i.close();
                                }
                            } catch (Throwable th) {
                                inputStream = inputStreamOpenRawResource;
                                th = th;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                        throw th;
                                    }
                                }
                                if (i != 0) {
                                    i.close();
                                }
                                throw th;
                            }
                        }
                        z = true;
                        if (inputStreamOpenRawResource != null) {
                            inputStreamOpenRawResource.close();
                        }
                        i.close();
                    } catch (FileNotFoundException e4) {
                        inputStream = inputStreamOpenRawResource;
                        e = e4;
                        i = 0;
                    } catch (IOException e5) {
                        inputStream = inputStreamOpenRawResource;
                        e = e5;
                        i = 0;
                    } catch (Throwable th2) {
                        inputStream = inputStreamOpenRawResource;
                        th = th2;
                        i = 0;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                i = 0;
            } catch (IOException e7) {
                e = e7;
                i = 0;
            } catch (Throwable th4) {
                th = th4;
                i = 0;
            }
        } catch (IOException e8) {
            e8.printStackTrace();
        }
        return z;
    }

    public static String file2Text(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        File file = new File(str);
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    break;
                }
                stringBuffer.append(new String(bArr, 0, i, str2));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return stringBuffer.toString();
    }

    public static String getBaseFilePath(String str) {
        int iLastIndexOf;
        return (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf(46)) < 0 || iLastIndexOf >= str.length()) ? str : str.substring(0, iLastIndexOf);
    }

    public static String makeAbsolutePath(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        for (String str2 : strArr) {
            if (str2 == null) {
                return null;
            }
        }
        String str3 = File.separator;
        StringBuffer stringBuffer = new StringBuffer();
        if (!str.startsWith(str3)) {
            stringBuffer.append(str3);
        }
        stringBuffer.append(str);
        if (!str.endsWith(str3)) {
            stringBuffer.append(str3);
        }
        for (String str4 : strArr) {
            String strOooO00o = OooO00o(str4);
            if (strOooO00o != null) {
                stringBuffer.append(strOooO00o);
                stringBuffer.append(str3);
            }
        }
        if (stringBuffer.lastIndexOf(str3) == stringBuffer.length() - 1) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.nio.channels.FileChannel] */
    public static final int moveFiles(String str, String str2, boolean z) throws Throwable {
        Throwable th;
        FileChannel fileChannel;
        FileChannel channel;
        FileChannel fileChannel2 = str2;
        File file = new File(str);
        File file2 = new File((String) fileChannel2);
        if (!file.exists()) {
            return 1;
        }
        if (!file2.exists()) {
            return 2;
        }
        if (!file2.isDirectory()) {
            return 3;
        }
        if (file.isFile()) {
            StringBuilder sb = new StringBuilder();
            sb.append((String) fileChannel2);
            String str3 = File.separator;
            sb.append(str3);
            sb.append(file.getName());
            if (new File(sb.toString()).exists() && !z) {
                return 4;
            }
            FileChannel channel2 = null;
            try {
                try {
                    try {
                        channel = new FileInputStream(str).getChannel();
                    } catch (IOException e) {
                        e.printStackTrace();
                        return -1;
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    fileChannel2 = 0;
                } catch (IOException e3) {
                    e = e3;
                    fileChannel2 = 0;
                } catch (Throwable th2) {
                    th = th2;
                    fileChannel = 0;
                }
            } catch (Throwable th3) {
                th = th3;
                fileChannel = fileChannel2;
            }
            try {
                channel2 = new FileInputStream(((String) fileChannel2) + str3 + file.getName()).getChannel();
                long jTransferFrom = 0L;
                do {
                    jTransferFrom += channel2.transferFrom(channel, jTransferFrom, 0 - jTransferFrom);
                } while (jTransferFrom < 0);
                file.delete();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                if (channel2 != null) {
                    channel2.close();
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                fileChannel2 = channel2;
                channel2 = channel;
                e.printStackTrace();
                if (channel2 != null) {
                    channel2.close();
                }
                if (fileChannel2 != 0) {
                    fileChannel2.close();
                }
                return -1;
            } catch (IOException e6) {
                e = e6;
                fileChannel2 = channel2;
                channel2 = channel;
                e.printStackTrace();
                if (channel2 != null) {
                    channel2.close();
                }
                if (fileChannel2 != 0) {
                    fileChannel2.close();
                }
                return -1;
            } catch (Throwable th4) {
                th = th4;
                fileChannel = channel2;
                channel2 = channel;
                if (channel2 != null) {
                    try {
                        channel2.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        throw th;
                    }
                }
                if (fileChannel == 0) {
                    throw th;
                }
                fileChannel.close();
                throw th;
            }
        } else {
            file.isDirectory();
        }
        return 0;
    }

    public static void recursionDeleteFiles(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                recursionDeleteFiles(file2.getAbsolutePath());
            }
            file2.delete();
        }
    }

    public static void writeFile(String str, String str2, boolean z) {
        String str3 = (str2 + ". time: " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()))) + "\n";
        try {
            File file = new File(str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
                file = new File(str);
            }
            FileWriter fileWriter = new FileWriter(file, z);
            if (str3 != null && !"".equals(str3)) {
                fileWriter.write(str3);
                fileWriter.flush();
            }
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void writeStringToFile(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
