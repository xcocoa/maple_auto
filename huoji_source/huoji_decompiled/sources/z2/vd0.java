package z2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import pl.droidsonroids.relinker.MissingLibraryException;
import z2.yd0;

/* JADX INFO: loaded from: classes2.dex */
public class vd0 implements yd0.OooO00o {
    private static final int OooO00o = 5;
    private static final int OooO0O0 = 4096;

    public static class OooO00o {
        public ZipFile OooO00o;
        public ZipEntry OooO0O0;

        public OooO00o(ZipFile zipFile, ZipEntry zipEntry) {
            this.OooO00o = zipFile;
            this.OooO0O0 = zipEntry;
        }
    }

    private void OooO0O0(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private long OooO0OO(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, i);
            j += (long) i;
        }
    }

    private OooO00o OooO0Oo(Context context, String[] strArr, String str, zd0 zd0Var) {
        String[] strArrOooO0o = OooO0o(context);
        int length = strArrOooO0o.length;
        char c = 0;
        int i = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i >= length) {
                return null;
            }
            String str2 = strArrOooO0o[i];
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i2 = i3;
                }
            }
            if (zipFile != null) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    if (i4 < 5) {
                        int length2 = strArr.length;
                        int i6 = 0;
                        while (i6 < length2) {
                            String str3 = "lib" + File.separatorChar + strArr[i6] + File.separatorChar + str;
                            Object[] objArr = new Object[2];
                            objArr[c] = str3;
                            objArr[1] = str2;
                            zd0Var.OooOOO0("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry != null) {
                                return new OooO00o(zipFile, entry);
                            }
                            i6++;
                            c = 0;
                        }
                        i4 = i5;
                        c = 0;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i++;
            c = 0;
        }
    }

    private String[] OooO0o(Context context) {
        String[] strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || (strArr = applicationInfo.splitSourceDirs) == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    private String[] OooO0o0(Context context, String str) {
        Pattern patternCompile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        for (String str2 : OooO0o(context)) {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(new File(str2), 1).entries();
                while (enumerationEntries.hasMoreElements()) {
                    Matcher matcher = patternCompile.matcher(enumerationEntries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    @Override // z2.yd0.OooO00o
    public void OooO00o(Context context, String[] strArr, String str, File file, zd0 zd0Var) throws Throwable {
        OooO00o oooO00oOooO0Oo;
        String[] strArrOooO0o0;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        long jOooO0OO;
        OooO00o oooO00o = null;
        Closeable closeable = null;
        try {
            oooO00oOooO0Oo = OooO0Oo(context, strArr, str, zd0Var);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (oooO00oOooO0Oo == null) {
                try {
                    strArrOooO0o0 = OooO0o0(context, str);
                } catch (Exception e) {
                    strArrOooO0o0 = new String[]{e.toString()};
                }
                throw new MissingLibraryException(str, strArr, strArrOooO0o0);
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i >= 5) {
                    zd0Var.OooOO0o("FATAL! Couldn't extract the library from the APK!");
                    if (oooO00oOooO0Oo != null) {
                        try {
                            ZipFile zipFile = oooO00oOooO0Oo.OooO00o;
                            if (zipFile != null) {
                                zipFile.close();
                                return;
                            }
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    return;
                }
                zd0Var.OooOOO0("Found %s! Extracting...", str);
                try {
                    if (file.exists() || file.createNewFile()) {
                        try {
                            inputStream = oooO00oOooO0Oo.OooO00o.getInputStream(oooO00oOooO0Oo.OooO0O0);
                            try {
                                fileOutputStream = new FileOutputStream(file);
                            } catch (FileNotFoundException unused2) {
                                fileOutputStream = null;
                            } catch (IOException unused3) {
                                fileOutputStream = null;
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream = null;
                            }
                        } catch (FileNotFoundException unused4) {
                            inputStream = null;
                            fileOutputStream = null;
                        } catch (IOException unused5) {
                            inputStream = null;
                            fileOutputStream = null;
                        } catch (Throwable th3) {
                            th = th3;
                            fileOutputStream = null;
                        }
                        try {
                            jOooO0OO = OooO0OO(inputStream, fileOutputStream);
                            fileOutputStream.getFD().sync();
                        } catch (FileNotFoundException unused6) {
                            OooO0O0(inputStream);
                        } catch (IOException unused7) {
                            OooO0O0(inputStream);
                        } catch (Throwable th4) {
                            th = th4;
                            closeable = inputStream;
                            OooO0O0(closeable);
                            OooO0O0(fileOutputStream);
                            throw th;
                        }
                        if (jOooO0OO == file.length()) {
                            OooO0O0(inputStream);
                            OooO0O0(fileOutputStream);
                            file.setReadable(true, false);
                            file.setExecutable(true, false);
                            file.setWritable(true);
                            if (oooO00oOooO0Oo != null) {
                                try {
                                    ZipFile zipFile2 = oooO00oOooO0Oo.OooO00o;
                                    if (zipFile2 != null) {
                                        zipFile2.close();
                                        return;
                                    }
                                    return;
                                } catch (IOException unused8) {
                                    return;
                                }
                            }
                            return;
                        }
                        OooO0O0(inputStream);
                        OooO0O0(fileOutputStream);
                    }
                } catch (IOException unused9) {
                }
                i = i2;
            }
        } catch (Throwable th5) {
            th = th5;
            oooO00o = oooO00oOooO0Oo;
            if (oooO00o != null) {
                try {
                    ZipFile zipFile3 = oooO00o.OooO00o;
                    if (zipFile3 != null) {
                        zipFile3.close();
                    }
                } catch (IOException unused10) {
                }
            }
            throw th;
        }
    }
}
