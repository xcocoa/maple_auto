package mobi.oneway.export;

import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import mobi.oneway.export.a.d;
import mobi.oneway.export.e.c;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.g.g;
import mobi.oneway.export.g.h;
import mobi.oneway.export.g.j;
import mobi.oneway.export.g.m;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static ClassLoader a;

    public static Class a(String str) {
        try {
            return a().loadClass(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static ClassLoader a() {
        try {
            if (a == null) {
                e();
                if (d.a()) {
                    a = b.class.getClassLoader();
                } else {
                    a = new DexClassLoader(b(), c(), null, b.class.getClassLoader());
                }
            }
            return a;
        } catch (Exception e) {
            c.a(PluginErrorType.shell_error_classloader, g.a((Throwable) e));
            return null;
        }
    }

    private static String b() {
        if (mobi.oneway.export.a.b.a() == null) {
            return "";
        }
        return mobi.oneway.export.a.b.a().getDir("plugin", 0).getPath() + File.separator + mobi.oneway.export.a.a.j;
    }

    private static String c() {
        return mobi.oneway.export.a.b.a() != null ? mobi.oneway.export.a.b.a().getDir(mobi.oneway.export.a.a.h, 0).getPath() : "";
    }

    private static String d() {
        return mobi.oneway.export.a.b.a() != null ? mobi.oneway.export.a.b.a().getDir("plugin", 0).getPath() : "";
    }

    private static void e() {
        if (mobi.oneway.export.a.b.a() == null) {
            m.d("context is null,please invoke OnewaySdk.init method first");
            return;
        }
        f();
        if (h.a(b())) {
            return;
        }
        InputStream inputStreamOpen = null;
        try {
            try {
                inputStreamOpen = mobi.oneway.export.a.b.a().getAssets().open(mobi.oneway.export.a.c.a() + File.separator + mobi.oneway.export.a.c.b());
                byte[] bArr = new byte[inputStreamOpen.available()];
                inputStreamOpen.read(bArr);
                h.a(new File(b()), bArr);
                j.a(inputStreamOpen);
            } catch (IOException e) {
                m.d("load local default OnewaySdk failed");
                c.a(PluginErrorType.shell_error_assetsIo, g.a((Throwable) e));
                j.a(inputStreamOpen);
            }
        } catch (Throwable th) {
            j.a(inputStreamOpen);
            throw th;
        }
    }

    private static void f() {
        File[] fileArrListFiles;
        File file = new File(d());
        if (!h.e(file) || (fileArrListFiles = file.listFiles(new FileFilter() { // from class: mobi.oneway.export.b.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.getName().startsWith("OnewaySdk");
            }
        })) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (!file2.getName().equals(mobi.oneway.export.a.a.j)) {
                h.j(file2);
            }
        }
    }
}
