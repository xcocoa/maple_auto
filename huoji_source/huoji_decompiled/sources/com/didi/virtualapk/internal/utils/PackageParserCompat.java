package com.didi.virtualapk.internal.utils;

import android.content.Context;
import android.content.pm.PackageParser;
import android.os.Build;
import com.didi.virtualapk.utils.Reflector;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class PackageParserCompat {

    public static final class PackageParserLegacy {
        private PackageParserLegacy() {
        }

        public static final PackageParser.Package parsePackage(Context context, File file, int i) throws Throwable {
            PackageParser packageParser = new PackageParser(file.getAbsolutePath());
            PackageParser.Package r5 = packageParser.parsePackage(file, file.getAbsolutePath(), context.getResources().getDisplayMetrics(), i);
            Reflector.with(packageParser).method("collectCertificates", PackageParser.Package.class, Integer.TYPE).call(r5, Integer.valueOf(i));
            return r5;
        }
    }

    public static final class PackageParserLollipop {
        private PackageParserLollipop() {
        }

        public static final PackageParser.Package parsePackage(Context context, File file, int i) throws Throwable {
            PackageParser packageParser = new PackageParser();
            PackageParser.Package r1 = packageParser.parsePackage(file, i);
            packageParser.collectCertificates(r1, i);
            return r1;
        }
    }

    public static final class PackageParserPPreview {
        private PackageParserPPreview() {
        }

        public static final PackageParser.Package parsePackage(Context context, File file, int i) throws Throwable {
            PackageParser packageParser = new PackageParser();
            PackageParser.Package r5 = packageParser.parsePackage(file, i);
            Reflector.with(packageParser).method("collectCertificates", PackageParser.Package.class, Boolean.TYPE).call(r5, Boolean.FALSE);
            return r5;
        }
    }

    public static final class PackageParserV24 {
        private PackageParserV24() {
        }

        public static final PackageParser.Package parsePackage(Context context, File file, int i) throws Throwable {
            PackageParser packageParser = new PackageParser();
            PackageParser.Package r6 = packageParser.parsePackage(file, i);
            Reflector.with(packageParser).method("collectCertificates", PackageParser.Package.class, Integer.TYPE).call(r6, Integer.valueOf(i));
            return r6;
        }
    }

    public static final PackageParser.Package parsePackage(Context context, File file, int i) {
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 28 && (i2 != 27 || Build.VERSION.PREVIEW_SDK_INT == 0)) {
                return i2 >= 24 ? PackageParserV24.parsePackage(context, file, i) : i2 >= 21 ? PackageParserLollipop.parsePackage(context, file, i) : PackageParserLegacy.parsePackage(context, file, i);
            }
            return PackageParserPPreview.parsePackage(context, file, i);
        } catch (Throwable th) {
            throw new RuntimeException("error", th);
        }
    }
}
