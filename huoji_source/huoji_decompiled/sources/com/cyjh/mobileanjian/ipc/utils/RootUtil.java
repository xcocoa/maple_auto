package com.cyjh.mobileanjian.ipc.utils;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class RootUtil {
    private static final String OooO00o = "ROOT_UTIL";

    /* JADX WARN: Removed duplicated region for block: B:23:0x0079 A[PHI: r1
      0x0079: PHI (r1v4 java.lang.Process) = (r1v1 java.lang.Process), (r1v2 java.lang.Process), (r1v5 java.lang.Process) binds: [B:19:0x0072, B:22:0x0077, B:12:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ArrayList<String> OooO00o(String str, ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        Process processExec = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec(str);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(processExec.getOutputStream());
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    bufferedOutputStream.write((it.next() + " 2>&1\n").getBytes());
                }
                bufferedOutputStream.write("exit\n".getBytes());
                bufferedOutputStream.flush();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    arrayList2.add(line);
                }
                processExec.waitFor();
            } catch (IOException e) {
                e.printStackTrace();
                if (processExec != null) {
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                if (processExec != null) {
                    processExec.destroy();
                }
            }
            if (processExec != null) {
                processExec.destroy();
            }
            return arrayList2;
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean OooO0O0() throws Throwable {
        Throwable th;
        Process processExec;
        DataOutputStream dataOutputStream = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec("xu");
            } catch (IOException unused) {
                processExec = Runtime.getRuntime().exec("su");
            }
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(processExec.getOutputStream());
                try {
                    dataOutputStream2.writeBytes("exit\n");
                    dataOutputStream2.flush();
                    processExec.waitFor();
                    try {
                        dataOutputStream2.close();
                        processExec.destroy();
                        return true;
                    } catch (Exception unused2) {
                        return true;
                    }
                } catch (Exception unused3) {
                    dataOutputStream = dataOutputStream2;
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception unused4) {
                            return false;
                        }
                    }
                    processExec.destroy();
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = dataOutputStream2;
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception unused5) {
                            throw th;
                        }
                    }
                    processExec.destroy();
                    throw th;
                }
            } catch (Exception unused6) {
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused7) {
            processExec = null;
            if (dataOutputStream != null) {
            }
            processExec.destroy();
            return false;
        } catch (Throwable th4) {
            th = th4;
            processExec = null;
            if (dataOutputStream != null) {
            }
            processExec.destroy();
            throw th;
        }
    }

    public static boolean isRoot() {
        String str = System.getenv("PATH");
        new ArrayList();
        for (String str2 : str.split(":")) {
            File file = new File(str2, "su");
            if (file.exists() && file.canExecute()) {
                return true;
            }
            File file2 = new File(str2, "xu");
            if (file2.exists() && file2.canExecute()) {
                return true;
            }
        }
        return false;
    }
}
