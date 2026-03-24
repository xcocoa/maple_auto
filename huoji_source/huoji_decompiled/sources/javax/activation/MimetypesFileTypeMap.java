package javax.activation;

import com.sun.activation.registries.LogSupport;
import com.sun.activation.registries.MimeTypeFile;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class MimetypesFileTypeMap extends FileTypeMap {
    private static final int PROG = 0;
    private static final String confDir;
    private static final String defaultType = "application/octet-stream";
    private MimeTypeFile[] DB;

    static {
        String str;
        try {
            str = (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.activation.MimetypesFileTypeMap.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    String property = System.getProperty("java.home");
                    StringBuilder sb = new StringBuilder();
                    sb.append(property);
                    String str2 = File.separator;
                    sb.append(str2);
                    sb.append("conf");
                    String string = sb.toString();
                    if (new File(string).exists()) {
                        return string + str2;
                    }
                    return property + str2 + "lib" + str2;
                }
            });
        } catch (Exception unused) {
            str = null;
        }
        confDir = str;
    }

    public MimetypesFileTypeMap() throws Throwable {
        Vector vector = new Vector(5);
        vector.addElement(null);
        LogSupport.log("MimetypesFileTypeMap: load HOME");
        try {
            String property = System.getProperty("user.home");
            if (property != null) {
                MimeTypeFile mimeTypeFileLoadFile = loadFile(property + File.separator + ".mime.types");
                if (mimeTypeFileLoadFile != null) {
                    vector.addElement(mimeTypeFileLoadFile);
                }
            }
        } catch (SecurityException unused) {
        }
        LogSupport.log("MimetypesFileTypeMap: load SYS");
        try {
            String str = confDir;
            if (str != null) {
                MimeTypeFile mimeTypeFileLoadFile2 = loadFile(str + "mime.types");
                if (mimeTypeFileLoadFile2 != null) {
                    vector.addElement(mimeTypeFileLoadFile2);
                }
            }
        } catch (SecurityException unused2) {
        }
        LogSupport.log("MimetypesFileTypeMap: load JAR");
        loadAllResources(vector, "META-INF/mime.types");
        LogSupport.log("MimetypesFileTypeMap: load DEF");
        MimeTypeFile mimeTypeFileLoadResource = loadResource("/META-INF/mimetypes.default");
        if (mimeTypeFileLoadResource != null) {
            vector.addElement(mimeTypeFileLoadResource);
        }
        MimeTypeFile[] mimeTypeFileArr = new MimeTypeFile[vector.size()];
        this.DB = mimeTypeFileArr;
        vector.copyInto(mimeTypeFileArr);
    }

    public MimetypesFileTypeMap(InputStream inputStream) {
        this();
        try {
            this.DB[0] = new MimeTypeFile(inputStream);
        } catch (IOException unused) {
        }
    }

    public MimetypesFileTypeMap(String str) throws IOException {
        this();
        this.DB[0] = new MimeTypeFile(str);
    }

    private void loadAllResources(Vector vector, String str) throws Throwable {
        int i = 0;
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            URL[] resources = contextClassLoader != null ? SecuritySupport.getResources(contextClassLoader, str) : SecuritySupport.getSystemResources(str);
            if (resources != null) {
                if (LogSupport.isLoggable()) {
                    LogSupport.log("MimetypesFileTypeMap: getResources");
                }
                int i2 = 0;
                while (i < resources.length) {
                    try {
                        URL url = resources[i];
                        InputStream inputStreamOpenStream = null;
                        if (LogSupport.isLoggable()) {
                            LogSupport.log("MimetypesFileTypeMap: URL ".concat(String.valueOf(url)));
                        }
                        try {
                            try {
                                inputStreamOpenStream = SecuritySupport.openStream(url);
                                if (inputStreamOpenStream != null) {
                                    vector.addElement(new MimeTypeFile(inputStreamOpenStream));
                                    try {
                                        if (LogSupport.isLoggable()) {
                                            LogSupport.log("MimetypesFileTypeMap: successfully loaded mime types from URL: ".concat(String.valueOf(url)));
                                        }
                                        i2 = 1;
                                    } catch (IOException e) {
                                        e = e;
                                        i2 = 1;
                                        if (LogSupport.isLoggable()) {
                                            LogSupport.log("MimetypesFileTypeMap: can't load ".concat(String.valueOf(url)), e);
                                        }
                                        if (inputStreamOpenStream != null) {
                                        }
                                        i++;
                                    } catch (SecurityException e2) {
                                        e = e2;
                                        i2 = 1;
                                        if (LogSupport.isLoggable()) {
                                            LogSupport.log("MimetypesFileTypeMap: can't load ".concat(String.valueOf(url)), e);
                                        }
                                        if (inputStreamOpenStream == null) {
                                            i++;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        i2 = 1;
                                        if (inputStreamOpenStream != null) {
                                            try {
                                                inputStreamOpenStream.close();
                                            } catch (IOException unused) {
                                            }
                                        }
                                        throw th;
                                    }
                                } else if (LogSupport.isLoggable()) {
                                    LogSupport.log("MimetypesFileTypeMap: not loading mime types from URL: ".concat(String.valueOf(url)));
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (IOException e3) {
                            e = e3;
                        } catch (SecurityException e4) {
                            e = e4;
                        }
                        if (inputStreamOpenStream != null) {
                            try {
                                inputStreamOpenStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        i++;
                    } catch (Exception e5) {
                        e = e5;
                        i = i2;
                        if (LogSupport.isLoggable()) {
                            LogSupport.log("MimetypesFileTypeMap: can't load ".concat(String.valueOf(str)), e);
                        }
                    }
                }
                i = i2;
            }
        } catch (Exception e6) {
            e = e6;
        }
        if (i == 0) {
            LogSupport.log("MimetypesFileTypeMap: !anyLoaded");
            MimeTypeFile mimeTypeFileLoadResource = loadResource("/".concat(String.valueOf(str)));
            if (mimeTypeFileLoadResource != null) {
                vector.addElement(mimeTypeFileLoadResource);
            }
        }
    }

    private MimeTypeFile loadFile(String str) {
        try {
            return new MimeTypeFile(str);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0078: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:39:0x0078 */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0040 A[EXC_TOP_SPLITTER, PHI: r2
      0x0040: PHI (r2v5 java.io.InputStream) = (r2v3 java.io.InputStream), (r2v4 java.io.InputStream), (r2v7 java.io.InputStream) binds: [B:29:0x005f, B:35:0x0073, B:14:0x003e] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private MimeTypeFile loadResource(String str) throws Throwable {
        InputStream resourceAsStream;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            try {
                resourceAsStream = SecuritySupport.getResourceAsStream(getClass(), str);
                try {
                } catch (IOException e) {
                    e = e;
                    if (LogSupport.isLoggable()) {
                        LogSupport.log("MimetypesFileTypeMap: can't load ".concat(String.valueOf(str)), e);
                    }
                    if (resourceAsStream != null) {
                    }
                } catch (SecurityException e2) {
                    e = e2;
                    if (LogSupport.isLoggable()) {
                        LogSupport.log("MimetypesFileTypeMap: can't load ".concat(String.valueOf(str)), e);
                    }
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (IOException unused) {
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            resourceAsStream = null;
        } catch (SecurityException e4) {
            e = e4;
            resourceAsStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream2 != null) {
            }
            throw th;
        }
        if (resourceAsStream == null) {
            if (LogSupport.isLoggable()) {
                LogSupport.log("MimetypesFileTypeMap: not loading mime types file: ".concat(String.valueOf(str)));
            }
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            return null;
        }
        MimeTypeFile mimeTypeFile = new MimeTypeFile(resourceAsStream);
        if (LogSupport.isLoggable()) {
            LogSupport.log("MimetypesFileTypeMap: successfully loaded mime types file: ".concat(String.valueOf(str)));
        }
        if (resourceAsStream != null) {
            try {
                resourceAsStream.close();
            } catch (IOException unused3) {
            }
        }
        return mimeTypeFile;
    }

    public synchronized void addMimeTypes(String str) {
        MimeTypeFile[] mimeTypeFileArr = this.DB;
        if (mimeTypeFileArr[0] == null) {
            mimeTypeFileArr[0] = new MimeTypeFile();
        }
        this.DB[0].appendToRegistry(str);
    }

    @Override // javax.activation.FileTypeMap
    public String getContentType(File file) {
        return getContentType(file.getName());
    }

    @Override // javax.activation.FileTypeMap
    public synchronized String getContentType(String str) {
        String mIMETypeString;
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String strSubstring = str.substring(iLastIndexOf + 1);
        if (strSubstring.length() == 0) {
            return "application/octet-stream";
        }
        int i = 0;
        while (true) {
            MimeTypeFile[] mimeTypeFileArr = this.DB;
            if (i >= mimeTypeFileArr.length) {
                return "application/octet-stream";
            }
            if (mimeTypeFileArr[i] != null && (mIMETypeString = mimeTypeFileArr[i].getMIMETypeString(strSubstring)) != null) {
                return mIMETypeString;
            }
            i++;
        }
    }
}
