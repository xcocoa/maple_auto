package com.umeng.commonsdk.proguard;

import android.os.Process;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class o {
    private static final String a = "\n";
    private static final byte[] b = "\nexit\n".getBytes();
    private static byte[] c = new byte[32];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060 A[PHI: r7 r9
      0x0060: PHI (r7v5 ??) = (r7v13 ??), (r7v14 ??), (r7v15 ??) binds: [B:72:0x00d0, B:83:0x00e1, B:21:0x005e] A[DONT_GENERATE, DONT_INLINE]
      0x0060: PHI (r9v19 ??) = (r9v22 ??), (r9v23 ??), (r9v24 ??) binds: [B:72:0x00d0, B:83:0x00e1, B:21:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00e7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00e8  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.io.InputStreamReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v21, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v38 */
    /* JADX WARN: Type inference failed for: r9v39 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v40 */
    /* JADX WARN: Type inference failed for: r9v41 */
    /* JADX WARN: Type inference failed for: r9v42 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(String... strArr) throws Throwable {
        OutputStream outputStream;
        ?? r2;
        ?? r3;
        ?? r4;
        BufferedReader bufferedReader;
        Throwable th;
        ?? r9;
        ?? r92;
        OutputStream outputStream2;
        OutputStream outputStream3;
        ?? r93;
        OutputStream outputStream4;
        ?? r94;
        OutputStream outputStream5;
        ?? r95;
        ?? r22;
        OutputStream outputStream6;
        ?? r96;
        ?? r23;
        OutputStream outputStream7;
        ?? r97;
        ?? r32;
        ?? r24;
        ?? bufferedReader2;
        ?? r98;
        ?? r33;
        ?? r25;
        ?? inputStreamReader;
        ?? errorStream;
        ?? inputStream;
        ?? sb;
        ?? r7;
        ?? r99;
        ?? r72;
        try {
            try {
                strArr = new ProcessBuilder(new String[0]).command((String[]) strArr).start();
                try {
                    outputStream = strArr.getOutputStream();
                } catch (IOException e) {
                    e = e;
                    outputStream = null;
                    r92 = strArr;
                    outputStream3 = outputStream;
                    r94 = r92;
                    outputStream5 = outputStream3;
                    r23 = outputStream3;
                    r96 = r94;
                    outputStream7 = outputStream5;
                    r25 = r23;
                    r33 = outputStream5;
                    r98 = r96;
                    bufferedReader2 = outputStream7;
                    inputStream = r25;
                    errorStream = r33;
                    inputStreamReader = outputStream7;
                    strArr = r98;
                    sb = bufferedReader2;
                    e.printStackTrace();
                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                    r72 = sb;
                    r99 = strArr;
                    r7 = sb;
                    if (strArr != 0) {
                    }
                    if (r7 == 0) {
                    }
                } catch (Exception e2) {
                    e = e2;
                    outputStream = null;
                    r9 = strArr;
                    outputStream2 = outputStream;
                    r93 = r9;
                    outputStream4 = outputStream2;
                    r22 = outputStream2;
                    r95 = r93;
                    outputStream6 = outputStream4;
                    r24 = r22;
                    r32 = outputStream4;
                    r97 = r95;
                    bufferedReader2 = outputStream6;
                    inputStream = r24;
                    errorStream = r32;
                    inputStreamReader = outputStream6;
                    strArr = r97;
                    sb = bufferedReader2;
                    e.printStackTrace();
                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                    r72 = sb;
                    r99 = strArr;
                    r7 = sb;
                    if (strArr != 0) {
                    }
                    if (r7 == 0) {
                    }
                } catch (Throwable th2) {
                    r2 = 0;
                    r3 = 0;
                    r4 = 0;
                    bufferedReader = null;
                    th = th2;
                    outputStream = null;
                }
                try {
                    inputStream = strArr.getInputStream();
                    try {
                        errorStream = strArr.getErrorStream();
                    } catch (IOException e3) {
                        e = e3;
                        outputStream5 = null;
                        r23 = inputStream;
                        r96 = strArr;
                        outputStream7 = outputStream5;
                        r25 = r23;
                        r33 = outputStream5;
                        r98 = r96;
                        bufferedReader2 = outputStream7;
                        inputStream = r25;
                        errorStream = r33;
                        inputStreamReader = outputStream7;
                        strArr = r98;
                        sb = bufferedReader2;
                        e.printStackTrace();
                        a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                        r72 = sb;
                        r99 = strArr;
                        r7 = sb;
                        if (strArr != 0) {
                        }
                        if (r7 == 0) {
                        }
                    } catch (Exception e4) {
                        e = e4;
                        outputStream4 = null;
                        r22 = inputStream;
                        r95 = strArr;
                        outputStream6 = outputStream4;
                        r24 = r22;
                        r32 = outputStream4;
                        r97 = r95;
                        bufferedReader2 = outputStream6;
                        inputStream = r24;
                        errorStream = r32;
                        inputStreamReader = outputStream6;
                        strArr = r97;
                        sb = bufferedReader2;
                        e.printStackTrace();
                        a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                        r72 = sb;
                        r99 = strArr;
                        r7 = sb;
                        if (strArr != 0) {
                        }
                        if (r7 == 0) {
                        }
                    } catch (Throwable th3) {
                        r4 = 0;
                        bufferedReader = null;
                        th = th3;
                        r3 = 0;
                        r2 = inputStream;
                    }
                    try {
                        outputStream.write(b);
                        outputStream.flush();
                        strArr.waitFor();
                        inputStreamReader = new InputStreamReader(inputStream);
                    } catch (IOException e5) {
                        e = e5;
                        outputStream7 = null;
                        r25 = inputStream;
                        r33 = errorStream;
                        r98 = strArr;
                        bufferedReader2 = outputStream7;
                        inputStream = r25;
                        errorStream = r33;
                        inputStreamReader = outputStream7;
                        strArr = r98;
                        sb = bufferedReader2;
                        e.printStackTrace();
                        a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                        r72 = sb;
                        r99 = strArr;
                        r7 = sb;
                        if (strArr != 0) {
                        }
                        if (r7 == 0) {
                        }
                    } catch (Exception e6) {
                        e = e6;
                        outputStream6 = null;
                        r24 = inputStream;
                        r32 = errorStream;
                        r97 = strArr;
                        bufferedReader2 = outputStream6;
                        inputStream = r24;
                        errorStream = r32;
                        inputStreamReader = outputStream6;
                        strArr = r97;
                        sb = bufferedReader2;
                        e.printStackTrace();
                        a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                        r72 = sb;
                        r99 = strArr;
                        r7 = sb;
                        if (strArr != 0) {
                        }
                        if (r7 == 0) {
                        }
                    } catch (Throwable th4) {
                        bufferedReader = null;
                        th = th4;
                        r4 = 0;
                        r2 = inputStream;
                        r3 = errorStream;
                    }
                    try {
                        bufferedReader2 = new BufferedReader(inputStreamReader);
                        try {
                            String line = bufferedReader2.readLine();
                            if (line != null) {
                                sb = new StringBuilder();
                                try {
                                    sb.append(line);
                                    String str = a;
                                    while (true) {
                                        sb.append(str);
                                        String line2 = bufferedReader2.readLine();
                                        if (line2 == null) {
                                            break;
                                        }
                                        sb.append(line2);
                                        str = a;
                                    }
                                } catch (IOException e7) {
                                    e = e7;
                                    e.printStackTrace();
                                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                                    r72 = sb;
                                    r99 = strArr;
                                    r7 = sb;
                                    if (strArr != 0) {
                                    }
                                    if (r7 == 0) {
                                    }
                                } catch (Exception e8) {
                                    e = e8;
                                    e.printStackTrace();
                                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                                    r72 = sb;
                                    r99 = strArr;
                                    r7 = sb;
                                    if (strArr != 0) {
                                    }
                                    if (r7 == 0) {
                                    }
                                }
                            } else {
                                sb = 0;
                            }
                            do {
                            } while (errorStream.read(c) > 0);
                            a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                            r72 = sb;
                            r99 = strArr;
                            r7 = sb;
                        } catch (IOException e9) {
                            e = e9;
                            sb = 0;
                        } catch (Exception e10) {
                            e = e10;
                            sb = 0;
                        }
                    } catch (IOException e11) {
                        e = e11;
                        bufferedReader2 = 0;
                        inputStream = inputStream;
                        errorStream = errorStream;
                        inputStreamReader = inputStreamReader;
                        strArr = strArr;
                        sb = bufferedReader2;
                        e.printStackTrace();
                        a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                        r72 = sb;
                        r99 = strArr;
                        r7 = sb;
                        if (strArr != 0) {
                        }
                        if (r7 == 0) {
                        }
                    } catch (Exception e12) {
                        e = e12;
                        bufferedReader2 = 0;
                        inputStream = inputStream;
                        errorStream = errorStream;
                        inputStreamReader = inputStreamReader;
                        strArr = strArr;
                        sb = bufferedReader2;
                        e.printStackTrace();
                        a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                        r72 = sb;
                        r99 = strArr;
                        r7 = sb;
                        if (strArr != 0) {
                        }
                        if (r7 == 0) {
                        }
                    } catch (Throwable th5) {
                        bufferedReader = null;
                        th = th5;
                        r2 = inputStream;
                        r3 = errorStream;
                        r4 = inputStreamReader;
                        a(outputStream, r3, r2, r4, bufferedReader);
                        if (strArr != 0) {
                            c(strArr);
                        }
                        throw th;
                    }
                } catch (IOException e13) {
                    e = e13;
                    outputStream3 = null;
                    r94 = strArr;
                    outputStream5 = outputStream3;
                    r23 = outputStream3;
                    r96 = r94;
                    outputStream7 = outputStream5;
                    r25 = r23;
                    r33 = outputStream5;
                    r98 = r96;
                    bufferedReader2 = outputStream7;
                    inputStream = r25;
                    errorStream = r33;
                    inputStreamReader = outputStream7;
                    strArr = r98;
                    sb = bufferedReader2;
                    e.printStackTrace();
                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                    r72 = sb;
                    r99 = strArr;
                    r7 = sb;
                    if (strArr != 0) {
                    }
                    if (r7 == 0) {
                    }
                } catch (Exception e14) {
                    e = e14;
                    outputStream2 = null;
                    r93 = strArr;
                    outputStream4 = outputStream2;
                    r22 = outputStream2;
                    r95 = r93;
                    outputStream6 = outputStream4;
                    r24 = r22;
                    r32 = outputStream4;
                    r97 = r95;
                    bufferedReader2 = outputStream6;
                    inputStream = r24;
                    errorStream = r32;
                    inputStreamReader = outputStream6;
                    strArr = r97;
                    sb = bufferedReader2;
                    e.printStackTrace();
                    a(outputStream, errorStream, inputStream, inputStreamReader, bufferedReader2);
                    r72 = sb;
                    r99 = strArr;
                    r7 = sb;
                    if (strArr != 0) {
                    }
                    if (r7 == 0) {
                    }
                } catch (Throwable th6) {
                    r3 = 0;
                    r4 = 0;
                    bufferedReader = null;
                    th = th6;
                    r2 = 0;
                }
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (IOException e15) {
            e = e15;
            r92 = 0;
            outputStream = null;
        } catch (Exception e16) {
            e = e16;
            r9 = 0;
            outputStream = null;
        } catch (Throwable th8) {
            outputStream = null;
            r2 = 0;
            r3 = 0;
            r4 = 0;
            bufferedReader = null;
            th = th8;
            strArr = 0;
        }
        if (strArr != 0) {
            c(r99);
            r7 = r72;
        }
        if (r7 == 0) {
            return null;
        }
        return r7.toString();
    }

    private static void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2, InputStreamReader inputStreamReader, BufferedReader bufferedReader) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
    }

    private static void a(Process process) {
        int iB = b(process);
        if (iB != 0) {
            try {
                try {
                    Process.killProcess(iB);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                process.destroy();
            }
        }
    }

    private static int b(Process process) {
        String string = process.toString();
        try {
            return Integer.parseInt(string.substring(string.indexOf("=") + 1, string.indexOf("]")));
        } catch (Exception unused) {
            return 0;
        }
    }

    private static void c(Process process) {
        if (process != null) {
            try {
                if (process.exitValue() != 0) {
                    a(process);
                }
            } catch (IllegalThreadStateException unused) {
                a(process);
            }
        }
    }
}
