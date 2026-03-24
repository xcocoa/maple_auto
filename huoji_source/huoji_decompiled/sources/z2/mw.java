package z2;

import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.text.NumberFormat;
import java.util.Properties;
import junit.framework.AssertionFailedError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class mw implements jw {
    public static final String OooO0O0 = "suite";
    private static Properties OooO0OO = null;
    public static int OooO0Oo = OooOO0O("maxmessage", com.anythink.expressad.d.b.b);
    public static boolean OooO0o0 = true;
    public boolean OooO00o = true;

    public static String OooO(String str) {
        if (OooOo()) {
            return str;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return stringWriter.toString();
                }
                if (!OooO0oo(line)) {
                    printWriter.println(line);
                }
            } catch (Exception unused) {
                return str;
            }
        }
    }

    public static boolean OooO0oo(String str) {
        String[] strArr = {"junit.framework.TestCase", "junit.framework.TestResult", "junit.framework.TestSuite", "junit.framework.Assert.", "junit.swingui.TestRunner", "junit.awtui.TestRunner", "junit.textui.TestRunner", "java.lang.reflect.Method.invoke("};
        for (int i = 0; i < 8; i++) {
            if (str.indexOf(strArr[i]) > 0) {
                return true;
            }
        }
        return false;
    }

    public static String OooOO0(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return OooO(stringWriter.toString());
    }

    public static int OooOO0O(String str, int i) {
        String strOooOO0o = OooOO0o(str);
        if (strOooOO0o == null) {
            return i;
        }
        try {
            return Integer.parseInt(strOooOO0o);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static String OooOO0o(String str) {
        return OooOOO0().getProperty(str);
    }

    private static File OooOOO() {
        return new File(System.getProperty("user.home"), "junit.properties");
    }

    public static Properties OooOOO0() throws Throwable {
        if (OooO0OO == null) {
            Properties properties = new Properties();
            OooO0OO = properties;
            properties.put(CallMraidJS.e, "true");
            OooO0OO.put("filterstack", "true");
            OooOOo();
        }
        return OooO0OO;
    }

    private static void OooOOo() throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(OooOOO());
                try {
                    OooOo0o(new Properties(OooOOO0()));
                    OooOOO0().load(fileInputStream);
                    fileInputStream.close();
                } catch (IOException unused) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 == null) {
                    } else {
                        fileInputStream2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
        }
    }

    public static boolean OooOo() {
        return (OooOO0o("filterstack").equals("true") && OooO0o0) ? false : true;
    }

    public static void OooOo00() throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(OooOOO());
        try {
            OooOOO0().store(fileOutputStream, "");
        } finally {
            fileOutputStream.close();
        }
    }

    public static void OooOo0O(String str, String str2) {
        OooOOO0().put(str, str2);
    }

    public static void OooOo0o(Properties properties) {
        OooO0OO = properties;
    }

    public static String OooOoo0(String str) {
        if (OooO0Oo == -1 || str.length() <= OooO0Oo) {
            return str;
        }
        return str.substring(0, OooO0Oo) + "...";
    }

    @Override // z2.jw
    public synchronized void OooO00o(gw gwVar, Throwable th) {
        OooOoO(1, gwVar, th);
    }

    @Override // z2.jw
    public synchronized void OooO0O0(gw gwVar, AssertionFailedError assertionFailedError) {
        OooOoO(2, gwVar, assertionFailedError);
    }

    @Override // z2.jw
    public synchronized void OooO0OO(gw gwVar) {
        OooOoO0(gwVar.toString());
    }

    @Override // z2.jw
    public synchronized void OooO0Oo(gw gwVar) {
        OooOoOO(gwVar.toString());
    }

    public String OooO0o(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    public void OooO0o0() {
    }

    public String OooO0oO(String str) {
        return str.startsWith("Default package for") ? str.substring(str.lastIndexOf(".") + 1) : str;
    }

    public gw OooOOOO(String str) {
        StringBuilder sb;
        String string;
        String string2;
        StringBuilder sb2;
        String string3;
        if (str.length() <= 0) {
            OooO0o0();
            return null;
        }
        try {
            Class<?> clsOooOOOo = OooOOOo(str);
            try {
                Method method = clsOooOOOo.getMethod(OooO0O0, new Class[0]);
                if (Modifier.isStatic(method.getModifiers())) {
                    try {
                        gw gwVar = (gw) method.invoke(null, new Object[0]);
                        if (gwVar == null) {
                            return gwVar;
                        }
                        OooO0o0();
                        return gwVar;
                    } catch (IllegalAccessException e) {
                        sb2 = new StringBuilder();
                        sb2.append("Failed to invoke suite():");
                        string3 = e.toString();
                        sb2.append(string3);
                        string2 = sb2.toString();
                        OooOOoo(string2);
                        return null;
                    } catch (InvocationTargetException e2) {
                        sb2 = new StringBuilder();
                        sb2.append("Failed to invoke suite():");
                        string3 = e2.getTargetException().toString();
                        sb2.append(string3);
                        string2 = sb2.toString();
                        OooOOoo(string2);
                        return null;
                    }
                }
                string2 = "Suite() method must be static";
            } catch (Exception unused) {
                OooO0o0();
                return new lw(clsOooOOOo);
            }
        } catch (ClassNotFoundException e3) {
            String message = e3.getMessage();
            if (message != null) {
                str = message;
            }
            sb = new StringBuilder();
            sb.append("Class not found \"");
            sb.append(str);
            string = "\"";
            sb.append(string);
            string2 = sb.toString();
        } catch (Exception e4) {
            sb = new StringBuilder();
            sb.append("Error: ");
            string = e4.toString();
            sb.append(string);
            string2 = sb.toString();
        }
        OooOOoo(string2);
        return null;
    }

    public Class<?> OooOOOo(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    public String OooOOo0(String[] strArr) {
        String strOooO0oO = null;
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-noloading")) {
                OooOo0(false);
            } else if (strArr[i].equals("-nofilterstack")) {
                OooO0o0 = false;
            } else if (strArr[i].equals("-c")) {
                i++;
                if (strArr.length > i) {
                    strOooO0oO = OooO0oO(strArr[i]);
                } else {
                    System.out.println("Missing Test class name");
                }
            } else {
                strOooO0oO = strArr[i];
            }
            i++;
        }
        return strOooO0oO;
    }

    public abstract void OooOOoo(String str);

    public void OooOo0(boolean z) {
        this.OooO00o = z;
    }

    public abstract void OooOoO(int i, gw gwVar, Throwable th);

    public abstract void OooOoO0(String str);

    public abstract void OooOoOO(String str);

    public boolean OooOoo() {
        return OooOO0o(CallMraidJS.e).equals("true") && this.OooO00o;
    }
}
