package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes2.dex */
public class q {
    private static final String b = "/.um/.umm.dat";
    private static final String c = "/.uxx/.cca.dat";
    private static final String d = "/.cc/.adfwe.dat";
    private static final String e = "/.a.dat";
    private static final String f = "umdat";
    private Context a;

    public q(Context context) {
        this.a = context;
    }

    private void a(String str, String str2) {
        if (DeviceConfig.checkPermission(this.a, com.anythink.china.common.d.b)) {
            try {
                String externalStorageState = Environment.getExternalStorageState();
                if (externalStorageState == null || !externalStorageState.equalsIgnoreCase("mounted")) {
                    return;
                }
                String strB = b(str2);
                if (strB == null || !strB.equals(str)) {
                    File file = new File(Environment.getExternalStorageDirectory() + str2);
                    if (file.getParentFile() != null && !file.getParentFile().exists()) {
                        file.getParentFile().mkdir();
                    }
                    RandomAccessFile randomAccessFile = new RandomAccessFile(Environment.getExternalStorageDirectory() + str2, "rw");
                    randomAccessFile.setLength((long) str.getBytes().length);
                    FileChannel channel = randomAccessFile.getChannel();
                    FileLock fileLockTryLock = channel.tryLock();
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1024);
                    byteBufferAllocate.clear();
                    byteBufferAllocate.put(str.getBytes());
                    byteBufferAllocate.flip();
                    while (byteBufferAllocate.hasRemaining()) {
                        channel.write(byteBufferAllocate);
                    }
                    channel.force(true);
                    if (fileLockTryLock != null) {
                        fileLockTryLock.release();
                    }
                    channel.close();
                }
            } catch (Exception e2) {
                com.umeng.commonsdk.statistics.common.e.e("saveFileUmtt:" + e2.getMessage());
            }
        }
    }

    private String b(String str) {
        String externalStorageState;
        try {
            if (!DeviceConfig.checkPermission(this.a, "android.permission.READ_EXTERNAL_STORAGE") || (externalStorageState = Environment.getExternalStorageState()) == null || !externalStorageState.equalsIgnoreCase("mounted")) {
                return null;
            }
            if (!new File(Environment.getExternalStorageDirectory() + str).exists()) {
                return null;
            }
            FileChannel channel = new RandomAccessFile(Environment.getExternalStorageDirectory() + str, "rw").getChannel();
            FileLock fileLockTryLock = channel.tryLock();
            StringBuilder sb = new StringBuilder();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1024);
            while (true) {
                byteBufferAllocate.clear();
                if (channel.read(byteBufferAllocate) == -1) {
                    break;
                }
                byte[] bArr = new byte[byteBufferAllocate.position()];
                for (int i = 0; i < byteBufferAllocate.position(); i++) {
                    bArr[i] = byteBufferAllocate.get(i);
                }
                sb.append(new String(bArr));
            }
            if (channel != null) {
                fileLockTryLock.release();
            }
            channel.close();
            return sb.toString();
        } catch (Exception e2) {
            com.umeng.commonsdk.statistics.common.e.e("getFileUmtt:" + e2.getMessage());
            return null;
        }
    }

    private void c(String str) {
        SharedPreferences sharedPreferences = this.a.getApplicationContext().getSharedPreferences(f, 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("u", null);
            if (string == null || !string.equals(str)) {
                sharedPreferences.edit().putString("u", str).commit();
            }
        }
    }

    private String h() {
        return com.umeng.commonsdk.framework.a.a(this.a, v.d, (String) null);
    }

    private String i() {
        SharedPreferences sharedPreferences = this.a.getApplicationContext().getSharedPreferences(f, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("u", null);
        }
        return null;
    }

    public String a() {
        String strB = b();
        if (strB == null || strB.equals("")) {
            strB = g();
        }
        if (strB == null || strB.equals("")) {
            strB = c();
        }
        if (strB == null || strB.equals("")) {
            strB = d();
        }
        if (strB == null || strB.equals("")) {
            strB = e();
        }
        return (strB == null || strB.equals("")) ? f() : strB;
    }

    public void a(String str) {
        a(str, b);
        a(str, c);
        a(str, d);
        a(str, e);
        c(str);
    }

    public String b() {
        return h();
    }

    public String c() {
        return b(b);
    }

    public String d() {
        return b(c);
    }

    public String e() {
        return b(d);
    }

    public String f() {
        return b(e);
    }

    public String g() {
        return i();
    }
}
