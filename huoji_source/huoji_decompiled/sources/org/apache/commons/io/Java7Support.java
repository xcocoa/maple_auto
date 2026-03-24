package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class Java7Support {
    private static final boolean IS_JAVA7;
    private static Method createSymlink;
    private static Method delete;
    private static Object emptyFileAttributes;
    private static Object emptyLinkOpts;
    private static Method exists;
    private static Method isSymbolicLink;
    private static Method readSymlink;
    private static Method toFile;
    private static Method toPath;

    static {
        boolean z = true;
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            Class<?> clsLoadClass = contextClassLoader.loadClass("java.nio.file.Files");
            Class<?> clsLoadClass2 = contextClassLoader.loadClass("java.nio.file.Path");
            Class<?> clsLoadClass3 = contextClassLoader.loadClass("java.nio.file.attribute.FileAttribute");
            Class<?> clsLoadClass4 = contextClassLoader.loadClass("java.nio.file.LinkOption");
            isSymbolicLink = clsLoadClass.getMethod("isSymbolicLink", clsLoadClass2);
            delete = clsLoadClass.getMethod("delete", clsLoadClass2);
            readSymlink = clsLoadClass.getMethod("readSymbolicLink", clsLoadClass2);
            Object objNewInstance = Array.newInstance(clsLoadClass3, 0);
            emptyFileAttributes = objNewInstance;
            createSymlink = clsLoadClass.getMethod("createSymbolicLink", clsLoadClass2, clsLoadClass2, objNewInstance.getClass());
            Object objNewInstance2 = Array.newInstance(clsLoadClass4, 0);
            emptyLinkOpts = objNewInstance2;
            exists = clsLoadClass.getMethod("exists", clsLoadClass2, objNewInstance2.getClass());
            toPath = File.class.getMethod("toPath", new Class[0]);
            toFile = clsLoadClass2.getMethod("toFile", new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            z = false;
        }
        IS_JAVA7 = z;
    }

    public static File createSymbolicLink(File file, File file2) throws IOException {
        try {
            if (exists(file)) {
                return file;
            }
            return (File) toFile.invoke(createSymlink.invoke(null, toPath.invoke(file, new Object[0]), toPath.invoke(file2, new Object[0]), emptyFileAttributes), new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((IOException) e2.getTargetException());
        }
    }

    public static void delete(File file) throws IOException {
        try {
            delete.invoke(null, toPath.invoke(file, new Object[0]));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((IOException) e2.getTargetException());
        }
    }

    private static boolean exists(File file) throws IOException {
        try {
            return ((Boolean) exists.invoke(null, toPath.invoke(file, new Object[0]), emptyLinkOpts)).booleanValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((RuntimeException) e2.getTargetException());
        }
    }

    public static boolean isAtLeastJava7() {
        return IS_JAVA7;
    }

    public static boolean isSymLink(File file) {
        try {
            return ((Boolean) isSymbolicLink.invoke(null, toPath.invoke(file, new Object[0]))).booleanValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static File readSymbolicLink(File file) throws IOException {
        try {
            return (File) toFile.invoke(readSymlink.invoke(null, toPath.invoke(file, new Object[0])), new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }
}
