package z2;

import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class xb {
    private static final String OooO00o = "ROOT_UTIL";

    private static boolean OooO00o() throws Throwable {
        DataOutputStream dataOutputStream;
        Throwable th;
        Process processExec;
        DataOutputStream dataOutputStream2 = null;
        try {
            processExec = Runtime.getRuntime().exec("su");
            try {
                dataOutputStream = new DataOutputStream(processExec.getOutputStream());
            } catch (Exception unused) {
            } catch (Throwable th2) {
                dataOutputStream = null;
                th = th2;
            }
        } catch (Exception unused2) {
            processExec = null;
        } catch (Throwable th3) {
            dataOutputStream = null;
            th = th3;
            processExec = null;
        }
        try {
            dataOutputStream.writeBytes("exit\n");
            dataOutputStream.flush();
            processExec.waitFor();
            try {
                dataOutputStream.close();
                processExec.destroy();
                return true;
            } catch (Exception unused3) {
                return true;
            }
        } catch (Exception unused4) {
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (Exception unused5) {
                    return false;
                }
            }
            processExec.destroy();
            return false;
        } catch (Throwable th4) {
            th = th4;
            if (dataOutputStream != null) {
                try {
                    dataOutputStream.close();
                } catch (Exception unused6) {
                    throw th;
                }
            }
            processExec.destroy();
            throw th;
        }
    }

    public static boolean OooO0O0() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean OooO0OO() {
        String str = System.getenv("PATH");
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(":")) {
            String str3 = str2 + File.separator + "su";
            if (new File(str3).exists()) {
                arrayList.add("ls -l " + str3);
            }
        }
        ArrayList<String> arrayListOooO0Oo = OooO0Oo("/system/bin/sh", arrayList);
        String str4 = "";
        for (int i = 0; i < arrayListOooO0Oo.size(); i++) {
            str4 = str4 + arrayListOooO0Oo.get(i);
        }
        if (str4.contains("-rws")) {
            return true;
        }
        return OooO00o();
    }

    private static ArrayList<String> OooO0Oo(String str, ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        Process processExec = null;
        try {
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
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            return arrayList2;
        } finally {
            processExec.destroy();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized boolean OooO0o0() {
        Process processExec;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        DataOutputStream dataOutputStream3 = null;
        try {
            try {
                Log.i(OooO00o, "try it");
                processExec = Runtime.getRuntime().exec("su");
                try {
                    DataOutputStream dataOutputStream4 = new DataOutputStream(processExec.getOutputStream());
                    try {
                        dataOutputStream4.writeBytes("touch /data/roottest.txt\n");
                        dataOutputStream4.writeBytes("exit\n");
                        dataOutputStream4.flush();
                        processExec.waitFor();
                        if (!new File("/data/roottest.txt").exists()) {
                            try {
                                dataOutputStream4.close();
                                processExec.destroy();
                            } catch (Exception unused) {
                            }
                            return false;
                        }
                        Process processExec2 = Runtime.getRuntime().exec("su");
                        try {
                            dataOutputStream2 = new DataOutputStream(processExec2.getOutputStream());
                        } catch (Exception e) {
                            processExec = processExec2;
                            dataOutputStream3 = dataOutputStream4;
                            e = e;
                            e.printStackTrace();
                            if (dataOutputStream3 != null) {
                            }
                            processExec.destroy();
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            processExec = processExec2;
                            dataOutputStream3 = dataOutputStream4;
                            if (dataOutputStream3 != null) {
                                try {
                                    dataOutputStream3.close();
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                            processExec.destroy();
                            throw th;
                        }
                        try {
                            Log.i(OooO00o, "try delete");
                            dataOutputStream2.writeBytes("rm -r /data/roottest.txt\n");
                            dataOutputStream2.writeBytes("exit\n");
                            dataOutputStream2.flush();
                            processExec2.waitFor();
                            try {
                                dataOutputStream2.close();
                                processExec2.destroy();
                            } catch (Exception unused3) {
                            }
                            return true;
                        } catch (Exception e2) {
                            e = e2;
                            dataOutputStream = dataOutputStream2;
                            processExec = processExec2;
                        } catch (Throwable th2) {
                            th = th2;
                            processExec = processExec2;
                            dataOutputStream3 = dataOutputStream2;
                            if (dataOutputStream3 != null) {
                            }
                            processExec.destroy();
                            throw th;
                        }
                    } catch (Exception e3) {
                        dataOutputStream = dataOutputStream4;
                        e = e3;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    dataOutputStream3 = dataOutputStream;
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Exception e5) {
            e = e5;
            processExec = null;
        } catch (Throwable th5) {
            th = th5;
            processExec = null;
        }
        e.printStackTrace();
        if (dataOutputStream3 != null) {
            try {
                dataOutputStream3.close();
            } catch (Exception unused4) {
            }
        }
        processExec.destroy();
        return false;
    }
}
