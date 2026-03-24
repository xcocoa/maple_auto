package javax.activation;

import java.io.File;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FileTypeMap {
    private static FileTypeMap defaultMap;
    private static Map<ClassLoader, FileTypeMap> map = new WeakHashMap();

    public static synchronized FileTypeMap getDefaultFileTypeMap() {
        FileTypeMap fileTypeMap = defaultMap;
        if (fileTypeMap != null) {
            return fileTypeMap;
        }
        ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
        FileTypeMap mimetypesFileTypeMap = map.get(contextClassLoader);
        if (mimetypesFileTypeMap == null) {
            mimetypesFileTypeMap = new MimetypesFileTypeMap();
            map.put(contextClassLoader, mimetypesFileTypeMap);
        }
        return mimetypesFileTypeMap;
    }

    public static synchronized void setDefaultFileTypeMap(FileTypeMap fileTypeMap) {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            try {
                securityManager.checkSetFactory();
            } catch (SecurityException e) {
                ClassLoader classLoader = FileTypeMap.class.getClassLoader();
                if (classLoader == null || classLoader.getParent() == null || classLoader != fileTypeMap.getClass().getClassLoader()) {
                    throw e;
                }
            }
        }
        map.remove(SecuritySupport.getContextClassLoader());
        defaultMap = fileTypeMap;
    }

    public abstract String getContentType(File file);

    public abstract String getContentType(String str);
}
