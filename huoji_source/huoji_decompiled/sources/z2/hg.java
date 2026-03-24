package z2;

import android.util.Log;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class hg {
    private static final String OooO00o = "CmdUtils";
    private static boolean OooO0O0 = false;
    public static final String OooO0OO = "su";
    public static final String OooO0Oo = "xu";
    public static final String OooO0o0 = "sh";

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(1:69)|(7:62|3|10|71|11|73|12)|(4:13|(1:15)(1:76)|68|43)|16|60|17|21|68|43|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0078, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[Catch: IOException -> 0x0080, TRY_ENTER, TRY_LEAVE, TryCatch #12 {IOException -> 0x0080, blocks: (B:21:0x007c, B:42:0x009f), top: B:69:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:68:0x00a2). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO00o(String str) throws Throwable {
        DataInputStream dataInputStream;
        Process processExec;
        DataOutputStream dataOutputStream;
        String str2 = "";
        DataOutputStream dataOutputStream2 = null;
        try {
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            try {
                processExec = Runtime.getRuntime().exec("su");
            } catch (IOException unused) {
                processExec = Runtime.getRuntime().exec("xu");
            }
            dataOutputStream = new DataOutputStream(processExec.getOutputStream());
            try {
                dataInputStream = new DataInputStream(processExec.getInputStream());
            } catch (Exception e2) {
                e = e2;
                dataInputStream = null;
            } catch (Throwable th) {
                th = th;
                dataInputStream = null;
            }
            try {
                Log.i(OooO00o, str);
                dataOutputStream.writeBytes(str + "\n");
                dataOutputStream.flush();
                dataOutputStream.writeBytes("exit\n");
                dataOutputStream.flush();
            } catch (Exception e3) {
                e = e3;
                dataOutputStream2 = dataOutputStream;
                try {
                    e.printStackTrace();
                    if (dataOutputStream2 != null) {
                        try {
                            dataOutputStream2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (dataInputStream != null) {
                        dataInputStream.close();
                    }
                    return str2;
                } catch (Throwable th2) {
                    th = th2;
                    if (dataOutputStream2 != null) {
                        try {
                            dataOutputStream2.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    if (dataInputStream == null) {
                        throw th;
                    }
                    try {
                        dataInputStream.close();
                        throw th;
                    } catch (IOException e6) {
                        e6.printStackTrace();
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream2 = dataOutputStream;
                if (dataOutputStream2 != null) {
                }
                if (dataInputStream == null) {
                }
            }
        } catch (Exception e7) {
            e = e7;
            dataInputStream = null;
            e.printStackTrace();
            if (dataOutputStream2 != null) {
            }
            if (dataInputStream != null) {
            }
            return str2;
        } catch (Throwable th4) {
            th = th4;
            dataInputStream = null;
            if (dataOutputStream2 != null) {
            }
            if (dataInputStream == null) {
            }
        }
        while (true) {
            String line = dataInputStream.readLine();
            if (line == null) {
                break;
            }
            Log.d(com.anythink.expressad.foundation.d.r.ah, line);
            str2 = str2 + line;
            return str2;
        }
        processExec.waitFor();
        dataOutputStream.close();
        dataInputStream.close();
        return str2;
    }

    private static boolean OooO0O0() {
        String str;
        if (OooO0O0) {
            str = "mHaveRoot = true, have root!";
        } else {
            if (OooO0OO("echo test") != -1) {
                Log.i(OooO00o, "have root!");
                OooO0O0 = true;
                return OooO0O0;
            }
            str = "not root!";
        }
        Log.i(OooO00o, str);
        return OooO0O0;
    }

    private static int OooO0OO(String str) throws Throwable {
        Process processExec;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec("su");
                dataOutputStream = new DataOutputStream(processExec.getOutputStream());
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Log.i(OooO00o, str);
            dataOutputStream.writeBytes(str + "\n");
            dataOutputStream.flush();
            dataOutputStream.writeBytes("exit\n");
            dataOutputStream.flush();
            processExec.waitFor();
            int iExitValue = processExec.exitValue();
            try {
                dataOutputStream.close();
                return iExitValue;
            } catch (IOException e2) {
                e2.printStackTrace();
                return iExitValue;
            }
        } catch (Exception e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            e.printStackTrace();
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return -1;
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }
}
