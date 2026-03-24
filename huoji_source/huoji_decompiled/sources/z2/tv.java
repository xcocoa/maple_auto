package z2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class tv {
    public static void OooO(File file, File file2) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    OooOO0O(fileInputStream, fileOutputStream2);
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (fileInputStream == null) {
                        throw th;
                    }
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable unused4) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    private static void OooO00o(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static String OooO0O0(String str) throws RuntimeException {
        try {
            return new String(OooO0o(str.getBytes("ASCII")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    public static String OooO0OO(String str, String str2) throws RuntimeException {
        try {
            try {
                return new String(OooO0o(str.getBytes("ASCII")), str2);
            } catch (UnsupportedEncodingException e) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unsupported charset: ");
                stringBuffer.append(str2);
                throw new RuntimeException(stringBuffer.toString(), e);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII is not supported!", e2);
        }
    }

    public static void OooO0Oo(File file, File file2) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    OooO0o0(fileInputStream, fileOutputStream2);
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (fileInputStream == null) {
                        throw th;
                    }
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable unused4) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static byte[] OooO0o(byte[] bArr) throws RuntimeException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                OooO0o0(byteArrayInputStream, byteArrayOutputStream);
                try {
                    byteArrayInputStream.close();
                } catch (Throwable unused) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused2) {
                }
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException("Unexpected I/O error", e);
            }
        } finally {
        }
    }

    public static void OooO0o0(InputStream inputStream, OutputStream outputStream) throws IOException {
        OooO00o(new uv(inputStream), outputStream);
    }

    public static String OooO0oO(String str) throws RuntimeException {
        try {
            return new String(OooOOO0(str.getBytes()), "ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    public static String OooO0oo(String str, String str2) throws RuntimeException {
        try {
            try {
                return new String(OooOOO0(str.getBytes(str2)), "ASCII");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("ASCII is not supported!", e);
            }
        } catch (UnsupportedEncodingException e2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unsupported charset: ");
            stringBuffer.append(str2);
            throw new RuntimeException(stringBuffer.toString(), e2);
        }
    }

    public static void OooOO0(File file, File file2, int i) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    OooOO0o(fileInputStream, fileOutputStream2, i);
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (fileInputStream == null) {
                        throw th;
                    }
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable unused4) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static void OooOO0O(InputStream inputStream, OutputStream outputStream) throws IOException {
        OooOO0o(inputStream, outputStream, 0);
    }

    public static void OooOO0o(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        vv vvVar = new vv(outputStream, i);
        OooO00o(inputStream, vvVar);
        vvVar.OooOO0();
    }

    public static byte[] OooOOO(byte[] bArr, int i) throws RuntimeException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                OooOO0o(byteArrayInputStream, byteArrayOutputStream, i);
                try {
                    byteArrayInputStream.close();
                } catch (Throwable unused) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused2) {
                }
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException("Unexpected I/O error", e);
            }
        } finally {
        }
    }

    public static byte[] OooOOO0(byte[] bArr) throws RuntimeException {
        return OooOOO(bArr, 0);
    }
}
