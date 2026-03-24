package z2;

import android.os.SystemClock;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import z2.OooOo;

/* JADX INFO: loaded from: classes.dex */
public class o000000 implements OooOo {
    private static final float OooO0o = 0.9f;
    private static final int OooO0o0 = 5242880;
    private static final int OooO0oO = 538248467;
    private final Map<String, OooO0O0> OooO00o;
    private long OooO0O0;
    private final File OooO0OO;
    private final int OooO0Oo;

    public static class OooO0O0 {
        public long OooO00o;
        public String OooO0O0;
        public String OooO0OO;
        public long OooO0Oo;
        public long OooO0o;
        public long OooO0o0;
        public long OooO0oO;
        public Map<String, String> OooO0oo;

        private OooO0O0() {
        }

        public OooO0O0(String str, OooOo.OooO00o oooO00o) {
            this.OooO0O0 = str;
            this.OooO00o = oooO00o.OooO00o.length;
            this.OooO0OO = oooO00o.OooO0O0;
            this.OooO0Oo = oooO00o.OooO0OO;
            this.OooO0o0 = oooO00o.OooO0Oo;
            this.OooO0o = oooO00o.OooO0o0;
            this.OooO0oO = oooO00o.OooO0o;
            this.OooO0oo = oooO00o.OooO0oO;
        }

        public static OooO0O0 OooO00o(InputStream inputStream) throws IOException {
            OooO0O0 oooO0O0 = new OooO0O0();
            if (o000000.OooO(inputStream) != o000000.OooO0oO) {
                throw new IOException();
            }
            oooO0O0.OooO0O0 = o000000.OooOO0O(inputStream);
            String strOooOO0O = o000000.OooOO0O(inputStream);
            oooO0O0.OooO0OO = strOooOO0O;
            if (strOooOO0O.equals("")) {
                oooO0O0.OooO0OO = null;
            }
            oooO0O0.OooO0Oo = o000000.OooOO0(inputStream);
            oooO0O0.OooO0o0 = o000000.OooOO0(inputStream);
            oooO0O0.OooO0o = o000000.OooOO0(inputStream);
            oooO0O0.OooO0oO = o000000.OooOO0(inputStream);
            oooO0O0.OooO0oo = o000000.OooOO0o(inputStream);
            return oooO0O0;
        }

        public OooOo.OooO00o OooO0O0(byte[] bArr) {
            OooOo.OooO00o oooO00o = new OooOo.OooO00o();
            oooO00o.OooO00o = bArr;
            oooO00o.OooO0O0 = this.OooO0OO;
            oooO00o.OooO0OO = this.OooO0Oo;
            oooO00o.OooO0Oo = this.OooO0o0;
            oooO00o.OooO0o0 = this.OooO0o;
            oooO00o.OooO0o = this.OooO0oO;
            oooO00o.OooO0oO = this.OooO0oo;
            return oooO00o;
        }

        public boolean OooO0OO(OutputStream outputStream) {
            try {
                o000000.OooOOOO(outputStream, o000000.OooO0oO);
                o000000.OooOOo0(outputStream, this.OooO0O0);
                String str = this.OooO0OO;
                if (str == null) {
                    str = "";
                }
                o000000.OooOOo0(outputStream, str);
                o000000.OooOOOo(outputStream, this.OooO0Oo);
                o000000.OooOOOo(outputStream, this.OooO0o0);
                o000000.OooOOOo(outputStream, this.OooO0o);
                o000000.OooOOOo(outputStream, this.OooO0oO);
                o000000.OooOOo(this.OooO0oo, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                o0OOO0o.OooO0O0("%s", e.toString());
                return false;
            }
        }
    }

    public static class OooO0OO extends FilterInputStream {
        private int OoooOoO;

        private OooO0OO(InputStream inputStream) {
            super(inputStream);
            this.OoooOoO = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i = super.read();
            if (i != -1) {
                this.OoooOoO++;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = super.read(bArr, i, i2);
            if (i3 != -1) {
                this.OoooOoO += i3;
            }
            return i3;
        }
    }

    public o000000(File file) {
        this(file, OooO0o0);
    }

    public o000000(File file, int i) {
        this.OooO00o = new LinkedHashMap(16, 0.75f, true);
        this.OooO0O0 = 0L;
        this.OooO0OO = file;
        this.OooO0Oo = i;
    }

    public static int OooO(InputStream inputStream) throws IOException {
        return (OooO0oo(inputStream) << 24) | (OooO0oo(inputStream) << 0) | 0 | (OooO0oo(inputStream) << 8) | (OooO0oo(inputStream) << 16);
    }

    private void OooO0o(int i) {
        long j;
        long j2 = i;
        if (this.OooO0O0 + j2 < this.OooO0Oo) {
            return;
        }
        if (o0OOO0o.OooO0O0) {
            o0OOO0o.OooO0o("Pruning old cache entries.", new Object[0]);
        }
        long j3 = this.OooO0O0;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, OooO0O0>> it = this.OooO00o.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            OooO0O0 value = it.next().getValue();
            if (OooO0Oo(value.OooO0O0).delete()) {
                j = j2;
                this.OooO0O0 -= value.OooO00o;
            } else {
                j = j2;
                String str = value.OooO0O0;
                o0OOO0o.OooO0O0("Could not delete cache entry for key=%s, filename=%s", str, OooO0o0(str));
            }
            it.remove();
            i2++;
            if (this.OooO0O0 + j < this.OooO0Oo * OooO0o) {
                break;
            } else {
                j2 = j;
            }
        }
        if (o0OOO0o.OooO0O0) {
            o0OOO0o.OooO0o("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.OooO0O0 - j3), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    private String OooO0o0(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private void OooO0oO(String str, OooO0O0 oooO0O0) {
        if (this.OooO00o.containsKey(str)) {
            this.OooO0O0 += oooO0O0.OooO00o - this.OooO00o.get(str).OooO00o;
        } else {
            this.OooO0O0 += oooO0O0.OooO00o;
        }
        this.OooO00o.put(str, oooO0O0);
    }

    private static int OooO0oo(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    public static long OooOO0(InputStream inputStream) throws IOException {
        return ((((long) OooO0oo(inputStream)) & 255) << 0) | 0 | ((((long) OooO0oo(inputStream)) & 255) << 8) | ((((long) OooO0oo(inputStream)) & 255) << 16) | ((((long) OooO0oo(inputStream)) & 255) << 24) | ((((long) OooO0oo(inputStream)) & 255) << 32) | ((((long) OooO0oo(inputStream)) & 255) << 40) | ((((long) OooO0oo(inputStream)) & 255) << 48) | ((255 & ((long) OooO0oo(inputStream))) << 56);
    }

    public static String OooOO0O(InputStream inputStream) throws IOException {
        return new String(OooOOO(inputStream, (int) OooOO0(inputStream)), "UTF-8");
    }

    public static Map<String, String> OooOO0o(InputStream inputStream) throws IOException {
        int iOooO = OooO(inputStream);
        Map<String, String> mapEmptyMap = iOooO == 0 ? Collections.emptyMap() : new HashMap<>(iOooO);
        for (int i = 0; i < iOooO; i++) {
            mapEmptyMap.put(OooOO0O(inputStream).intern(), OooOO0O(inputStream).intern());
        }
        return mapEmptyMap;
    }

    private static byte[] OooOOO(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                break;
            }
            i2 += i3;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    private void OooOOO0(String str) {
        OooO0O0 oooO0O0 = this.OooO00o.get(str);
        if (oooO0O0 != null) {
            this.OooO0O0 -= oooO0O0.OooO00o;
            this.OooO00o.remove(str);
        }
    }

    public static void OooOOOO(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void OooOOOo(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void OooOOo(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map == null) {
            OooOOOO(outputStream, 0);
            return;
        }
        OooOOOO(outputStream, map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            OooOOo0(outputStream, entry.getKey());
            OooOOo0(outputStream, entry.getValue());
        }
    }

    public static void OooOOo0(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        OooOOOo(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // z2.OooOo
    public synchronized void OooO00o() {
        BufferedInputStream bufferedInputStream;
        if (!this.OooO0OO.exists()) {
            if (!this.OooO0OO.mkdirs()) {
                o0OOO0o.OooO0OO("Unable to create cache dir %s", this.OooO0OO.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = this.OooO0OO.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            BufferedInputStream bufferedInputStream2 = null;
            try {
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                OooO0O0 oooO0O0OooO00o = OooO0O0.OooO00o(bufferedInputStream);
                oooO0O0OooO00o.OooO00o = file.length();
                OooO0oO(oooO0O0OooO00o.OooO0O0, oooO0O0OooO00o);
                try {
                    bufferedInputStream.close();
                } catch (IOException unused2) {
                }
            } catch (IOException unused3) {
                bufferedInputStream2 = bufferedInputStream;
                if (file != null) {
                    file.delete();
                }
                if (bufferedInputStream2 != null) {
                    bufferedInputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream2 = bufferedInputStream;
                if (bufferedInputStream2 != null) {
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        }
    }

    @Override // z2.OooOo
    public synchronized void OooO0O0(String str, boolean z) {
        OooOo.OooO00o oooO00o = get(str);
        if (oooO00o != null) {
            oooO00o.OooO0o = 0L;
            if (z) {
                oooO00o.OooO0o0 = 0L;
            }
            OooO0OO(str, oooO00o);
        }
    }

    @Override // z2.OooOo
    public synchronized void OooO0OO(String str, OooOo.OooO00o oooO00o) {
        OooO0o(oooO00o.OooO00o.length);
        File fileOooO0Oo = OooO0Oo(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileOooO0Oo));
            OooO0O0 oooO0O0 = new OooO0O0(str, oooO00o);
            if (!oooO0O0.OooO0OO(bufferedOutputStream)) {
                bufferedOutputStream.close();
                o0OOO0o.OooO0O0("Failed to write header for %s", fileOooO0Oo.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(oooO00o.OooO00o);
            bufferedOutputStream.close();
            OooO0oO(str, oooO0O0);
        } catch (IOException unused) {
            if (fileOooO0Oo.delete()) {
                return;
            }
            o0OOO0o.OooO0O0("Could not clean up file %s", fileOooO0Oo.getAbsolutePath());
        }
    }

    public File OooO0Oo(String str) {
        return new File(this.OooO0OO, OooO0o0(str));
    }

    @Override // z2.OooOo
    public synchronized void clear() {
        File[] fileArrListFiles = this.OooO0OO.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        this.OooO00o.clear();
        this.OooO0O0 = 0L;
        o0OOO0o.OooO0O0("Cache cleared.", new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.OooOo
    public synchronized OooOo.OooO00o get(String str) {
        File fileOooO0Oo;
        OooO0OO oooO0OO;
        OooO0O0 oooO0O0 = this.OooO00o.get(str);
        FilterInputStream filterInputStream = null;
        Object[] objArr = 0;
        if (oooO0O0 == null) {
            return null;
        }
        try {
            fileOooO0Oo = OooO0Oo(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            oooO0OO = new OooO0OO(new BufferedInputStream(new FileInputStream(fileOooO0Oo)));
            try {
                OooO0O0.OooO00o(oooO0OO);
                OooOo.OooO00o oooO00oOooO0O0 = oooO0O0.OooO0O0(OooOOO(oooO0OO, (int) (fileOooO0Oo.length() - ((long) oooO0OO.OoooOoO))));
                try {
                    oooO0OO.close();
                    return oooO00oOooO0O0;
                } catch (IOException unused) {
                    return null;
                }
            } catch (IOException e) {
                e = e;
                o0OOO0o.OooO0O0("%s: %s", fileOooO0Oo.getAbsolutePath(), e.toString());
                remove(str);
                if (oooO0OO != null) {
                    try {
                        oooO0OO.close();
                    } catch (IOException unused2) {
                        return null;
                    }
                }
                return null;
            }
        } catch (IOException e2) {
            e = e2;
            oooO0OO = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                try {
                    filterInputStream.close();
                } catch (IOException unused3) {
                    return null;
                }
            }
            throw th;
        }
    }

    @Override // z2.OooOo
    public synchronized void remove(String str) {
        boolean zDelete = OooO0Oo(str).delete();
        OooOOO0(str);
        if (!zDelete) {
            o0OOO0o.OooO0O0("Could not delete cache entry for key=%s, filename=%s", str, OooO0o0(str));
        }
    }
}
