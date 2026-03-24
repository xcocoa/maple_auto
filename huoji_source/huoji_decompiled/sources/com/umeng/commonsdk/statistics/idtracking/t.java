package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;

/* JADX INFO: loaded from: classes2.dex */
public class t extends a {
    private static final String a = "uuid";
    private static final String e = "yosuid";
    private static final String f = "23346339";
    private Context b;
    private String c;
    private String d;

    public t(Context context) {
        super("uuid");
        this.b = null;
        this.c = null;
        this.d = null;
        this.b = context;
        this.c = null;
        this.d = null;
    }

    public static String a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0157 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0143 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x013c A[PHI: r1
      0x013c: PHI (r1v9 ??) = (r1v8 ??), (r1v12 ??) binds: [B:87:0x013a, B:53:0x00fd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v27, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String b(String str) throws Throwable {
        ?? r1;
        DataOutputStream dataOutputStream;
        ?? r12;
        DataOutputStream dataOutputStream2;
        ?? bufferedReader;
        Exception e2;
        ?? r3;
        Exception e3;
        ?? r7;
        ?? r32;
        StringBuffer stringBuffer;
        ?? r72;
        ?? inputStream = "UTF-8";
        ?? r13 = "";
        String strA = a("ro.yunos.openuuid", "");
        this.d = strA;
        if (!TextUtils.isEmpty(strA)) {
            return this.d;
        }
        String strA2 = a("ro.aliyun.clouduuid", "");
        this.c = strA2;
        if (TextUtils.isEmpty(strA2)) {
            this.c = a("ro.sys.aliyun.clouduuid", "");
        }
        if (!TextUtils.isEmpty(this.c)) {
            ?? r0 = 0;
            try {
                try {
                    r13 = (HttpsURLConnection) new URL("https://cmnsguider.yunos.com:443/genDeviceToken").openConnection();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    r13.setConnectTimeout(30000);
                    r13.setReadTimeout(30000);
                    r13.setRequestMethod("POST");
                    r13.setDoInput(true);
                    r13.setDoOutput(true);
                    r13.setUseCaches(false);
                    r13.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    r13.setHostnameVerifier(new HostnameVerifier() { // from class: com.umeng.commonsdk.statistics.idtracking.t.1
                        @Override // javax.net.ssl.HostnameVerifier
                        public boolean verify(String str2, SSLSession sSLSession) {
                            return new BrowserCompatHostnameVerifier().verify("cmnsguider.yunos.com", sSLSession);
                        }
                    });
                    String str2 = "appKey=" + URLEncoder.encode("23338940", "UTF-8") + "&uuid=" + URLEncoder.encode("FC1FE84794417B1BEF276234F6FB4E63", "UTF-8");
                    dataOutputStream = new DataOutputStream(r13.getOutputStream());
                    try {
                        try {
                            dataOutputStream.writeBytes(str2);
                            dataOutputStream.flush();
                            if (r13.getResponseCode() == 200) {
                                try {
                                    inputStream = r13.getInputStream();
                                    try {
                                        bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                                        try {
                                            stringBuffer = new StringBuffer();
                                        } catch (Exception e4) {
                                            e3 = e4;
                                            try {
                                                e3.printStackTrace();
                                                r32 = bufferedReader;
                                                r7 = inputStream;
                                            } catch (Exception e5) {
                                                e2 = e5;
                                                e2.printStackTrace();
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                    } catch (Exception e6) {
                                                        e6.printStackTrace();
                                                    }
                                                }
                                                if (bufferedReader != 0) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (Exception e7) {
                                                        e7.printStackTrace();
                                                    }
                                                }
                                                if (inputStream != 0) {
                                                    try {
                                                        inputStream.close();
                                                    } catch (Exception e8) {
                                                        e8.printStackTrace();
                                                    }
                                                }
                                                if (r13 != 0) {
                                                }
                                                return this.d;
                                            }
                                        }
                                    } catch (Exception e9) {
                                        bufferedReader = 0;
                                        e3 = e9;
                                    } catch (Throwable th2) {
                                        r3 = 0;
                                        th = th2;
                                        if (dataOutputStream != null) {
                                        }
                                        if (r3 != 0) {
                                        }
                                        if (inputStream != 0) {
                                        }
                                        if (r13 == 0) {
                                        }
                                    }
                                } catch (Exception e10) {
                                    bufferedReader = 0;
                                    e3 = e10;
                                    inputStream = 0;
                                }
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    stringBuffer.append(line);
                                    r0 = r32;
                                    r72 = r7;
                                }
                                this.d = stringBuffer.toString();
                                r32 = bufferedReader;
                                r7 = inputStream;
                                r0 = r32;
                                r72 = r7;
                            } else {
                                r72 = 0;
                            }
                            try {
                                dataOutputStream.close();
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            if (r0 != 0) {
                                try {
                                    r0.close();
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                            }
                            if (r72 != 0) {
                                try {
                                    r72.close();
                                } catch (Exception e13) {
                                    e13.printStackTrace();
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            dataOutputStream2 = null;
                            r13 = r13;
                            th = th;
                            inputStream = dataOutputStream2;
                            r3 = dataOutputStream2;
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                } catch (Exception e14) {
                                    e14.printStackTrace();
                                }
                            }
                            if (r3 != 0) {
                                try {
                                    r3.close();
                                } catch (Exception e15) {
                                    e15.printStackTrace();
                                }
                            }
                            if (inputStream != 0) {
                                try {
                                    inputStream.close();
                                } catch (Exception e16) {
                                    e16.printStackTrace();
                                }
                            }
                            if (r13 == 0) {
                                throw th;
                            }
                            r13.disconnect();
                            throw th;
                        }
                    } catch (Exception e17) {
                        e = e17;
                        bufferedReader = 0;
                        r13 = r13;
                        e2 = e;
                        inputStream = bufferedReader;
                        e2.printStackTrace();
                        if (dataOutputStream != null) {
                        }
                        if (bufferedReader != 0) {
                        }
                        if (inputStream != 0) {
                        }
                        if (r13 != 0) {
                        }
                        return this.d;
                    }
                } catch (Exception e18) {
                    e = e18;
                    dataOutputStream = null;
                    r12 = r13;
                    bufferedReader = dataOutputStream;
                    r13 = r12;
                    e2 = e;
                    inputStream = bufferedReader;
                    e2.printStackTrace();
                    if (dataOutputStream != null) {
                    }
                    if (bufferedReader != 0) {
                    }
                    if (inputStream != 0) {
                    }
                    if (r13 != 0) {
                    }
                    return this.d;
                } catch (Throwable th4) {
                    th = th4;
                    dataOutputStream = null;
                    r1 = r13;
                    dataOutputStream2 = dataOutputStream;
                    r13 = r1;
                    th = th;
                    inputStream = dataOutputStream2;
                    r3 = dataOutputStream2;
                    if (dataOutputStream != null) {
                    }
                    if (r3 != 0) {
                    }
                    if (inputStream != 0) {
                    }
                    if (r13 == 0) {
                    }
                }
            } catch (Exception e19) {
                e = e19;
                r12 = 0;
                dataOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                r1 = 0;
                dataOutputStream = null;
            }
            if (r13 != 0) {
                r13.disconnect();
            }
        }
        return this.d;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() throws Throwable {
        Context context;
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        try {
            if (TextUtils.isEmpty(a("ro.yunos.version", "")) || (context = this.b) == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return null;
            }
            String string = sharedPreferences.getString(e, "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String strB = b(f);
            this.d = strB;
            if (!TextUtils.isEmpty(strB) && this.b != null && sharedPreferences != null && (editorEdit = sharedPreferences.edit()) != null) {
                editorEdit.putString(e, this.d).commit();
            }
            return this.d;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
