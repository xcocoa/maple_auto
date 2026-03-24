package z2;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d9 {
    private static final String OooO00o = System.getProperty("line.separator");

    public static class OooO00o {
        public int OooO00o;
        public String OooO0O0;
        public String OooO0OO;

        public OooO00o(int i, String str, String str2) {
            this.OooO00o = i;
            this.OooO0O0 = str;
            this.OooO0OO = str2;
        }

        public String toString() {
            return "result: " + this.OooO00o + "\nsuccessMsg: " + this.OooO0O0 + "\nerrorMsg: " + this.OooO0OO;
        }
    }

    private d9() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static OooO00o OooO00o(String str, boolean z) {
        return OooO0o(new String[]{str}, z, true);
    }

    public static OooO00o OooO0O0(String str, boolean z, boolean z3) {
        return OooO0o(new String[]{str}, z, z3);
    }

    public static OooO00o OooO0OO(List<String> list, boolean z) {
        return OooO0o(list == null ? null : (String[]) list.toArray(new String[0]), z, true);
    }

    public static OooO00o OooO0Oo(List<String> list, boolean z, boolean z3) {
        return OooO0o(list == null ? null : (String[]) list.toArray(new String[0]), z, z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0154 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x015e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static OooO00o OooO0o(String[] strArr, boolean z, boolean z3) throws Throwable {
        Process processExec;
        ?? bufferedReader;
        StringBuilder sb;
        ?? bufferedReader2;
        StringBuilder sb2;
        StringBuilder sb3;
        StringBuilder sb4;
        ?? r6;
        int iWaitFor = -1;
        if (strArr == null || strArr.length == 0) {
            return new OooO00o(-1, "", "");
        }
        DataOutputStream dataOutputStream = null;
        ?? r3 = 0;
        dataOutputStream = null;
        try {
            processExec = Runtime.getRuntime().exec(z ? "su" : "sh");
        } catch (Exception e) {
            e = e;
            processExec = null;
            sb = null;
        } catch (Throwable th) {
            th = th;
            processExec = null;
            bufferedReader = 0;
        }
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(processExec.getOutputStream());
            try {
                try {
                    for (String str : strArr) {
                        if (str != null) {
                            dataOutputStream2.write(str.getBytes());
                            dataOutputStream2.writeBytes(OooO00o);
                            dataOutputStream2.flush();
                        }
                    }
                    dataOutputStream2.writeBytes("exit" + OooO00o);
                    dataOutputStream2.flush();
                    iWaitFor = processExec.waitFor();
                    if (z3) {
                        sb3 = new StringBuilder();
                        try {
                            sb4 = new StringBuilder();
                            try {
                                bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream(), "UTF-8"));
                                try {
                                    bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream(), "UTF-8"));
                                    try {
                                        String line = bufferedReader.readLine();
                                        if (line != null) {
                                            while (true) {
                                                sb3.append(line);
                                                line = bufferedReader.readLine();
                                                if (line == null) {
                                                    break;
                                                }
                                                sb3.append(OooO00o);
                                            }
                                        }
                                        String line2 = bufferedReader2.readLine();
                                        if (line2 != null) {
                                            while (true) {
                                                sb4.append(line2);
                                                line2 = bufferedReader2.readLine();
                                                if (line2 == null) {
                                                    break;
                                                }
                                                sb4.append(OooO00o);
                                            }
                                        }
                                        r3 = bufferedReader;
                                        r6 = bufferedReader2;
                                    } catch (Exception e2) {
                                        e = e2;
                                        dataOutputStream = dataOutputStream2;
                                        sb = sb3;
                                        e = e;
                                        sb2 = sb4;
                                        bufferedReader = bufferedReader;
                                        bufferedReader2 = bufferedReader2;
                                        try {
                                            e.printStackTrace();
                                            if (dataOutputStream != null) {
                                            }
                                            if (bufferedReader != 0) {
                                            }
                                            if (bufferedReader2 != 0) {
                                            }
                                            if (processExec != null) {
                                            }
                                            sb3 = sb;
                                            sb4 = sb2;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            if (dataOutputStream != null) {
                                                try {
                                                    dataOutputStream.close();
                                                } catch (IOException e3) {
                                                    e3.printStackTrace();
                                                }
                                            }
                                            if (bufferedReader != 0) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (IOException e4) {
                                                    e4.printStackTrace();
                                                }
                                            }
                                            if (bufferedReader2 != 0) {
                                                try {
                                                    bufferedReader2.close();
                                                } catch (IOException e5) {
                                                    e5.printStackTrace();
                                                }
                                            }
                                            if (processExec == null) {
                                                throw th;
                                            }
                                            processExec.destroy();
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        dataOutputStream = dataOutputStream2;
                                        if (dataOutputStream != null) {
                                        }
                                        if (bufferedReader != 0) {
                                        }
                                        if (bufferedReader2 != 0) {
                                        }
                                        if (processExec == null) {
                                        }
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                    bufferedReader2 = 0;
                                } catch (Throwable th4) {
                                    th = th4;
                                    bufferedReader2 = 0;
                                }
                            } catch (Exception e7) {
                                e = e7;
                                bufferedReader = 0;
                                bufferedReader2 = 0;
                            }
                        } catch (Exception e8) {
                            sb2 = null;
                            bufferedReader = 0;
                            bufferedReader2 = 0;
                            dataOutputStream = dataOutputStream2;
                            sb = sb3;
                            e = e8;
                        }
                    } else {
                        sb3 = null;
                        sb4 = null;
                        r6 = 0;
                    }
                    try {
                        dataOutputStream2.close();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                    if (r3 != 0) {
                        try {
                            r3.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                    if (r6 != 0) {
                        try {
                            r6.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    if (processExec != null) {
                        processExec.destroy();
                    }
                } catch (Exception e12) {
                    e = e12;
                    sb = null;
                    sb2 = null;
                    bufferedReader = 0;
                    bufferedReader2 = 0;
                    dataOutputStream = dataOutputStream2;
                }
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = 0;
                bufferedReader2 = 0;
            }
        } catch (Exception e13) {
            e = e13;
            sb = null;
            sb2 = sb;
            StringBuilder sb5 = sb2;
            bufferedReader2 = sb5;
            bufferedReader = sb5;
            e.printStackTrace();
            if (dataOutputStream != null) {
                try {
                    dataOutputStream.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            }
            if (bufferedReader != 0) {
                try {
                    bufferedReader.close();
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            }
            if (bufferedReader2 != 0) {
                try {
                    bufferedReader2.close();
                } catch (IOException e16) {
                    e16.printStackTrace();
                }
            }
            if (processExec != null) {
                processExec.destroy();
            }
            sb3 = sb;
            sb4 = sb2;
            return new OooO00o(iWaitFor, sb3 != null ? "" : sb3.toString(), sb4 != null ? sb4.toString() : "");
        } catch (Throwable th6) {
            th = th6;
            bufferedReader = 0;
            bufferedReader2 = bufferedReader;
            if (dataOutputStream != null) {
            }
            if (bufferedReader != 0) {
            }
            if (bufferedReader2 != 0) {
            }
            if (processExec == null) {
            }
        }
        return new OooO00o(iWaitFor, sb3 != null ? "" : sb3.toString(), sb4 != null ? sb4.toString() : "");
    }

    public static OooO00o OooO0o0(String[] strArr, boolean z) {
        return OooO0o(strArr, z, true);
    }
}
