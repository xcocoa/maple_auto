package com.anythink.core.common.res;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.l;
import com.anythink.core.common.res.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static final String a = "about:blank";
    private static final String e = "anythink_internal_resouce";
    private static final String f = "anythink_custom_resouce";
    private static final String g = "anythink_internal_extra_resource";
    private static final String h = "anythink_internal_video_resource";
    private static final String i = "anythink_internal_html_resouce";
    private static volatile d j;
    private Context k;
    private File l;
    private final String d = getClass().getSimpleName();
    public ConcurrentHashMap<Integer, a> b = new ConcurrentHashMap<>();
    public final long c = 172800000;

    private d(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.k = applicationContext;
        this.l = l.a(applicationContext);
    }

    private synchronized a a(int i2, File file) {
        a aVarA;
        aVarA = this.b.get(Integer.valueOf(i2));
        if (aVarA == null) {
            try {
                aVarA = a.a(file, n.a().c(i2));
                this.b.put(Integer.valueOf(i2), aVarA);
            } catch (Throwable th) {
                if (n.a().A()) {
                    Log.e(this.d, "Create DiskCache error.");
                    th.printStackTrace();
                }
            }
        }
        return aVarA;
    }

    public static d a(Context context) {
        if (j == null) {
            synchronized (d.class) {
                if (j == null) {
                    j = new d(context);
                }
            }
        }
        return j;
    }

    public static void c() {
        try {
            long jC = n.a().c(1);
            String strA = a(n.a().f()).a(1);
            long jA = l.a(strA);
            if (jA <= 0 || jA <= jC * 1.5d) {
                return;
            }
            File[] fileArrListFiles = new File(strA).listFiles();
            ArrayList arrayList = new ArrayList();
            if (fileArrListFiles != null) {
                Collections.addAll(arrayList, fileArrListFiles);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (arrayList.size() > 0) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    File file = (File) arrayList.get(i2);
                    if (jCurrentTimeMillis - file.lastModified() > 172800000) {
                        try {
                            file.delete();
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final FileInputStream a(int i2, String str) {
        InputStream inputStreamA;
        if (i2 == 4) {
            try {
                return new FileInputStream(new File(c(4, str)));
            } catch (Throwable unused) {
                return null;
            }
        }
        String strA = a(i2);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        File file = new File(strA);
        if (!file.exists()) {
            file.mkdirs();
        }
        a aVarA = a(i2, file);
        if (aVarA != null) {
            try {
                a.c cVarA = aVarA.a(str);
                if (cVarA != null && (inputStreamA = cVarA.a()) != null) {
                    return (FileInputStream) inputStreamA;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public final String a() {
        return this.l.getAbsolutePath();
    }

    public final String a(int i2) {
        return new File(this.l, i2 != 1 ? i2 != 3 ? i2 != 4 ? f : h : g : e).getAbsolutePath();
    }

    public final String a(String str, m mVar, com.anythink.core.common.f.l lVar) {
        File file = new File(this.l, i);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, mVar.d + "_" + lVar.t() + ".html");
        FileOutputStream fileOutputStream = null;
        try {
            byte[] bytes = str.getBytes("utf-8");
            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
            try {
                fileOutputStream2.write(bytes, 0, bytes.length);
                String string = file2.toURL().toString();
                try {
                    fileOutputStream2.close();
                    return string;
                } catch (Throwable unused) {
                    return string;
                }
            } catch (Throwable unused2) {
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused3) {
                    }
                }
                return "";
            }
        } catch (Throwable unused4) {
        }
    }

    public final void a(m mVar, com.anythink.core.common.f.l lVar) {
        try {
            File file = new File(new File(this.l, i), mVar.d + "_" + lVar.t() + ".html");
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new File(a(3) + File.separator + str + ".0").delete();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(int i2, String str, InputStream inputStream) throws Throwable {
        OutputStream outputStream;
        a.c cVarA;
        byte[] bArr;
        boolean z = false;
        if (str != null && inputStream != null) {
            String strA = a(i2);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            File file = new File(strA);
            if (!file.exists()) {
                file.mkdirs();
            }
            a aVarA = a(i2, file);
            if (aVarA != null) {
                a.C0092a c0092a = null;
                outputStreamA = null;
                outputStreamA = null;
                OutputStream outputStreamA = null;
                OutputStream outputStream2 = null;
                try {
                    try {
                        try {
                            cVarA = aVarA.a(str);
                        } catch (Throwable th) {
                            th = th;
                            if (outputStream2 != null) {
                                try {
                                    outputStream2.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        outputStream = null;
                    }
                    if (cVarA == null) {
                        a.C0092a c0092aB = aVarA.b(str);
                        if (c0092aB != null) {
                            try {
                                outputStreamA = c0092aB.a(0);
                                bArr = new byte[2048];
                            } catch (Exception e3) {
                                e = e3;
                                OutputStream outputStream3 = outputStreamA;
                                c0092a = c0092aB;
                                outputStream = outputStream3;
                                try {
                                    new StringBuilder("writeToDiskLruCache - ").append(e);
                                    if (c0092a != null) {
                                        try {
                                            c0092a.b();
                                        } catch (Exception e4) {
                                            e4.printStackTrace();
                                        }
                                    }
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    return z;
                                } catch (Throwable th2) {
                                    outputStream2 = outputStream;
                                    th = th2;
                                    if (outputStream2 != null) {
                                    }
                                    throw th;
                                }
                            }
                            while (true) {
                                int i3 = inputStream.read(bArr);
                                if (i3 == -1) {
                                    break;
                                }
                                outputStreamA.write(bArr, 0, i3);
                            }
                            c0092aB.a();
                            outputStreamA.close();
                        }
                    } else {
                        cVarA.a().close();
                    }
                    z = true;
                    if (outputStreamA != null) {
                        outputStreamA.close();
                    }
                } catch (IOException unused2) {
                }
            }
        }
        return z;
    }

    public final File b(m mVar, com.anythink.core.common.f.l lVar) {
        File file = new File(new File(this.l, i), mVar.d + "_" + lVar.t() + ".html");
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public final void b() {
        File[] fileArrListFiles;
        try {
            File file = new File(this.l, i);
            if (!file.exists() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                try {
                    if (file2.isFile() && System.currentTimeMillis() - file2.lastModified() > 86400000) {
                        file2.delete();
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public final boolean b(int i2, String str) {
        File file;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (i2 != 4) {
            file = new File(a(i2) + File.separator + str + ".0");
        } else {
            file = new File(a(i2) + File.separator + str);
        }
        return file.exists();
    }

    public final String c(int i2, String str) {
        StringBuilder sb;
        if (i2 != 4) {
            sb = new StringBuilder();
            sb.append(a(i2));
            sb.append(File.separator);
            sb.append(str);
            sb.append(".0");
        } else {
            sb = new StringBuilder();
            sb.append(a(i2));
            sb.append(File.separator);
            sb.append(str);
        }
        return sb.toString();
    }
}
