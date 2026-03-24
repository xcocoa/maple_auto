package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.commonsdk.proguard.ad;
import com.umeng.commonsdk.proguard.aj;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    private static final String a = "ImprintHandler";
    private static final String c = ".imprint";
    private static Context i;
    private com.umeng.commonsdk.statistics.internal.d e;
    private a f = new a();
    private com.umeng.commonsdk.statistics.proto.d g = null;
    private static Object b = new Object();
    private static final byte[] d = "pbl0".getBytes();
    private static g h = null;

    public static class a {
        private Map<String, String> a = new HashMap();

        public a() {
        }

        public a(com.umeng.commonsdk.statistics.proto.d dVar) {
            a(dVar);
        }

        private synchronized void b(com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.commonsdk.statistics.proto.e eVar;
            if (dVar != null) {
                try {
                    if (dVar.e()) {
                        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
                        for (String str : mapC.keySet()) {
                            if (!TextUtils.isEmpty(str) && (eVar = mapC.get(str)) != null) {
                                String strB = eVar.b();
                                if (!TextUtils.isEmpty(strB)) {
                                    this.a.put(str, strB);
                                    if (com.umeng.commonsdk.statistics.b.f) {
                                        Log.i(g.a, "imKey is " + str + ", imValue is " + strB);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public synchronized String a(String str, String str2) {
            if (!TextUtils.isEmpty(str) && this.a.size() > 0) {
                String str3 = this.a.get(str);
                return !TextUtils.isEmpty(str3) ? str3 : str2;
            }
            return str2;
        }

        public void a(com.umeng.commonsdk.statistics.proto.d dVar) {
            if (dVar == null) {
                return;
            }
            b(dVar);
        }

        public synchronized void a(String str) {
            Map<String, String> map = this.a;
            if (map != null && map.size() > 0 && !TextUtils.isEmpty(str) && this.a.containsKey(str)) {
                this.a.remove(str);
            }
        }
    }

    private g(Context context) {
        i = context.getApplicationContext();
    }

    public static synchronized g a(Context context) {
        if (h == null) {
            g gVar = new g(context);
            h = gVar;
            gVar.e();
        }
        return h;
    }

    private com.umeng.commonsdk.statistics.proto.d a(com.umeng.commonsdk.statistics.proto.d dVar, com.umeng.commonsdk.statistics.proto.d dVar2) {
        if (dVar2 == null) {
            return dVar;
        }
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar2.c().entrySet()) {
            if (entry.getValue().d()) {
                mapC.put(entry.getKey(), entry.getValue());
            } else {
                String key = entry.getKey();
                mapC.remove(key);
                this.f.a(key);
            }
        }
        dVar.a(dVar2.f());
        dVar.a(a(dVar));
        return dVar;
    }

    private boolean a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    private boolean c(com.umeng.commonsdk.statistics.proto.d dVar) {
        if (!dVar.i().equals(a(dVar))) {
            return false;
        }
        for (com.umeng.commonsdk.statistics.proto.e eVar : dVar.c().values()) {
            byte[] bArrReverseHexString = DataHelper.reverseHexString(eVar.h());
            byte[] bArrA = a(eVar);
            for (int i2 = 0; i2 < 4; i2++) {
                if (bArrReverseHexString[i2] != bArrA[i2]) {
                    return false;
                }
            }
        }
        return true;
    }

    private com.umeng.commonsdk.statistics.proto.d d(com.umeng.commonsdk.statistics.proto.d dVar) {
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        ArrayList arrayList = new ArrayList(mapC.size() / 2);
        for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : mapC.entrySet()) {
            if (!entry.getValue().d()) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            mapC.remove((String) it.next());
        }
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.InputStream] */
    private void e() {
        Throwable th;
        FileInputStream fileInputStreamOpenFileInput;
        File filesDir = i.getFilesDir();
        ?? r2 = c;
        File file = new File(filesDir, c);
        synchronized (b) {
            if (file.exists()) {
                byte[] streamToByteArray = null;
                try {
                    try {
                        fileInputStreamOpenFileInput = i.openFileInput(c);
                        try {
                            streamToByteArray = HelperUtils.readStreamToByteArray(fileInputStreamOpenFileInput);
                            r2 = fileInputStreamOpenFileInput;
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            r2 = fileInputStreamOpenFileInput;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        HelperUtils.safeClose((InputStream) r2);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    fileInputStreamOpenFileInput = null;
                } catch (Throwable th3) {
                    r2 = 0;
                    th = th3;
                    HelperUtils.safeClose((InputStream) r2);
                    throw th;
                }
                HelperUtils.safeClose((InputStream) r2);
                if (streamToByteArray != null) {
                    try {
                        com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                        new ad().a(dVar, streamToByteArray);
                        this.g = dVar;
                        this.f.a(dVar);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.d a() {
        return this.g;
    }

    public String a(com.umeng.commonsdk.statistics.proto.d dVar) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(dVar.c()).entrySet()) {
            sb.append((String) entry.getKey());
            if (((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).d()) {
                sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).b());
            }
            sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).e());
            sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).h());
        }
        sb.append(dVar.b);
        return HelperUtils.MD5(sb.toString()).toLowerCase(Locale.US);
    }

    public void a(com.umeng.commonsdk.statistics.internal.d dVar) {
        this.e = dVar;
    }

    public byte[] a(com.umeng.commonsdk.statistics.proto.e eVar) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(null);
        byteBufferAllocate.putLong(eVar.e());
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArr = d;
        byte[] bArr2 = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr2[i2] = (byte) (bArrArray[i2] ^ bArr[i2]);
        }
        return bArr2;
    }

    public a b() {
        return this.f;
    }

    public void b(com.umeng.commonsdk.statistics.proto.d dVar) {
        boolean z;
        if (dVar == null) {
            if (com.umeng.commonsdk.statistics.b.f) {
                MLog.d("Imprint is null");
                return;
            }
            return;
        }
        if (!c(dVar)) {
            if (com.umeng.commonsdk.statistics.b.f) {
                MLog.e("Imprint is not valid");
                return;
            }
            return;
        }
        if (com.umeng.commonsdk.statistics.b.f) {
            MLog.d("Imprint is ok");
        }
        synchronized (this) {
            com.umeng.commonsdk.statistics.proto.d dVar2 = this.g;
            String strI = null;
            String strI2 = dVar2 == null ? null : dVar2.i();
            com.umeng.commonsdk.statistics.proto.d dVarD = dVar2 == null ? d(dVar) : a(dVar2, dVar);
            this.g = dVarD;
            if (dVarD != null) {
                strI = dVarD.i();
            }
            z = !a(strI2, strI);
        }
        com.umeng.commonsdk.statistics.proto.d dVar3 = this.g;
        if (dVar3 == null || !z) {
            return;
        }
        this.f.a(dVar3);
        com.umeng.commonsdk.statistics.internal.d dVar4 = this.e;
        if (dVar4 != null) {
            dVar4.onImprintChanged(this.f);
        }
    }

    public void c() {
        if (this.g == null) {
            return;
        }
        try {
            synchronized (b) {
                byte[] bArrA = new aj().a(this.g);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(i.getFilesDir(), c));
                try {
                    fileOutputStream.write(bArrA);
                    fileOutputStream.flush();
                } finally {
                    HelperUtils.safeClose(fileOutputStream);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean d() {
        return new File(i.getFilesDir(), c).delete();
    }
}
