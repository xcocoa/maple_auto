package z2;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FilenameUtils;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class o0O00 implements Closeable {
    public static final String o00Oo0 = "journal";
    public static final String o00Ooo = "journal.tmp";
    public static final String o00o0O = "journal.bkp";
    private static final String o00oO0O = "CLEAN";
    public static final long o00oO0o = -1;
    public static final String o00ooo = "libcore.io.DiskLruCache";
    private static final String o0ooOO0 = "DIRTY";
    private static final String o0ooOOo = "REMOVE";
    private static final String o0ooOoO = "READ";
    public static final String oo000o = "1";
    private final File OoooOoO;
    private final File OoooOoo;
    private final File Ooooo00;
    private final File Ooooo0o;
    private final int OooooO0;
    private long OooooOO;
    private final int OooooOo;
    private Writer Oooooo;
    private int Ooooooo;
    private long Oooooo0 = 0;
    private final LinkedHashMap<String, OooO0o> OoooooO = new LinkedHashMap<>(0, 0.75f, true);
    private long o0OoOo0 = 0;
    public final ThreadPoolExecutor ooOO = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new OooO0O0(null));
    private final Callable<Void> o00O0O = new OooO00o();

    public final class OooO {
        private final String OooO00o;
        private final long OooO0O0;
        private final long[] OooO0OO;
        private final File[] OooO0Oo;

        private OooO(String str, long j, File[] fileArr, long[] jArr) {
            this.OooO00o = str;
            this.OooO0O0 = j;
            this.OooO0Oo = fileArr;
            this.OooO0OO = jArr;
        }

        public /* synthetic */ OooO(o0O00 o0o00, String str, long j, File[] fileArr, long[] jArr, OooO00o oooO00o) {
            this(str, j, fileArr, jArr);
        }

        public OooO0OO OooO00o() throws IOException {
            return o0O00.this.o00oO0O(this.OooO00o, this.OooO0O0);
        }

        public File OooO0O0(int i) {
            return this.OooO0Oo[i];
        }

        public long OooO0OO(int i) {
            return this.OooO0OO[i];
        }

        public String OooO0Oo(int i) throws IOException {
            return o0O00.o0OOO0o(new FileInputStream(this.OooO0Oo[i]));
        }
    }

    public class OooO00o implements Callable<Void> {
        public OooO00o() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (o0O00.this) {
                if (o0O00.this.Oooooo == null) {
                    return null;
                }
                o0O00.this.o00000OO();
                if (o0O00.this.o0OO00O()) {
                    o0O00.this.o000000O();
                    o0O00.this.Ooooooo = 0;
                }
                return null;
            }
        }
    }

    public static final class OooO0O0 implements ThreadFactory {
        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(OooO00o oooO00o) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class OooO0OO {
        private final OooO0o OooO00o;
        private final boolean[] OooO0O0;
        private boolean OooO0OO;

        private OooO0OO(OooO0o oooO0o) {
            this.OooO00o = oooO0o;
            this.OooO0O0 = oooO0o.OooO0o0 ? null : new boolean[o0O00.this.OooooOo];
        }

        public /* synthetic */ OooO0OO(o0O00 o0o00, OooO0o oooO0o, OooO00o oooO00o) {
            this(oooO0o);
        }

        private InputStream OooO0oo(int i) throws IOException {
            synchronized (o0O00.this) {
                if (this.OooO00o.OooO0o != this) {
                    throw new IllegalStateException();
                }
                if (!this.OooO00o.OooO0o0) {
                    return null;
                }
                try {
                    return new FileInputStream(this.OooO00o.OooOO0(i));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public void OooO(int i, String str) throws Throwable {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(OooO0o(i)), o0O00O0o.OooO0O0);
                try {
                    outputStreamWriter2.write(str);
                    o0O00O0o.OooO00o(outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    o0O00O0o.OooO00o(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public void OooO00o() throws IOException {
            o0O00.this.o00o0O(this, false);
        }

        public void OooO0O0() {
            if (this.OooO0OO) {
                return;
            }
            try {
                OooO00o();
            } catch (IOException unused) {
            }
        }

        public File OooO0o(int i) throws IOException {
            File fileOooOO0O;
            synchronized (o0O00.this) {
                if (this.OooO00o.OooO0o != this) {
                    throw new IllegalStateException();
                }
                if (!this.OooO00o.OooO0o0) {
                    this.OooO0O0[i] = true;
                }
                fileOooOO0O = this.OooO00o.OooOO0O(i);
                if (!o0O00.this.OoooOoO.exists()) {
                    o0O00.this.OoooOoO.mkdirs();
                }
            }
            return fileOooOO0O;
        }

        public void OooO0o0() throws IOException {
            o0O00.this.o00o0O(this, true);
            this.OooO0OO = true;
        }

        public String OooO0oO(int i) throws IOException {
            InputStream inputStreamOooO0oo = OooO0oo(i);
            if (inputStreamOooO0oo != null) {
                return o0O00.o0OOO0o(inputStreamOooO0oo);
            }
            return null;
        }
    }

    public final class OooO0o {
        private final String OooO00o;
        private final long[] OooO0O0;
        public File[] OooO0OO;
        public File[] OooO0Oo;
        private OooO0OO OooO0o;
        private boolean OooO0o0;
        private long OooO0oO;

        private OooO0o(String str) {
            this.OooO00o = str;
            this.OooO0O0 = new long[o0O00.this.OooooOo];
            this.OooO0OO = new File[o0O00.this.OooooOo];
            this.OooO0Oo = new File[o0O00.this.OooooOo];
            StringBuilder sb = new StringBuilder(str);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            int length = sb.length();
            for (int i = 0; i < o0O00.this.OooooOo; i++) {
                sb.append(i);
                this.OooO0OO[i] = new File(o0O00.this.OoooOoO, sb.toString());
                sb.append(".tmp");
                this.OooO0Oo[i] = new File(o0O00.this.OoooOoO, sb.toString());
                sb.setLength(length);
            }
        }

        public /* synthetic */ OooO0o(o0O00 o0o00, String str, OooO00o oooO00o) {
            this(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OooOOO(String[] strArr) throws IOException {
            if (strArr.length != o0O00.this.OooooOo) {
                throw OooOOO0(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.OooO0O0[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw OooOOO0(strArr);
                }
            }
        }

        private IOException OooOOO0(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File OooOO0(int i) {
            return this.OooO0OO[i];
        }

        public File OooOO0O(int i) {
            return this.OooO0Oo[i];
        }

        public String OooOO0o() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.OooO0O0) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    private o0O00(File file, int i, int i2, long j) {
        this.OoooOoO = file;
        this.OooooO0 = i;
        this.OoooOoo = new File(file, "journal");
        this.Ooooo00 = new File(file, "journal.tmp");
        this.Ooooo0o = new File(file, "journal.bkp");
        this.OooooOo = i2;
        this.OooooOO = j;
    }

    private static void o00000(File file, File file2, boolean z) throws IOException {
        if (z) {
            oo000o(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void o000000(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith(o0ooOOo)) {
                this.OoooooO.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        OooO0o oooO0o = this.OoooooO.get(strSubstring);
        OooO00o oooO00o = null;
        if (oooO0o == null) {
            oooO0o = new OooO0o(this, strSubstring, oooO00o);
            this.OoooooO.put(strSubstring, oooO0o);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith(o00oO0O)) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(o4.OooO00o.OooO0Oo);
            oooO0o.OooO0o0 = true;
            oooO0o.OooO0o = null;
            oooO0o.OooOOO(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith(o0ooOO0)) {
            oooO0o.OooO0o = new OooO0OO(this, oooO0o, oooO00o);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith(o0ooOoO)) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o000000O() throws IOException {
        Writer writer = this.Oooooo;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.Ooooo00), o0O00O0o.OooO00o));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.OooooO0));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.OooooOo));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (OooO0o oooO0o : this.OoooooO.values()) {
                bufferedWriter.write(oooO0o.OooO0o != null ? "DIRTY " + oooO0o.OooO00o + '\n' : "CLEAN " + oooO0o.OooO00o + oooO0o.OooOO0o() + '\n');
            }
            bufferedWriter.close();
            if (this.OoooOoo.exists()) {
                o00000(this.OoooOoo, this.Ooooo0o, true);
            }
            o00000(this.Ooooo00, this.OoooOoo, false);
            this.Ooooo0o.delete();
            this.Oooooo = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.OoooOoo, true), o0O00O0o.OooO00o));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o00000OO() throws IOException {
        while (this.Oooooo0 > this.OooooOO) {
            o000000o(this.OoooooO.entrySet().iterator().next().getKey());
        }
    }

    private void o000OOo() throws IOException {
        o0OoO00O o0ooo00o = new o0OoO00O(new FileInputStream(this.OoooOoo), o0O00O0o.OooO00o);
        try {
            String strOooooo = o0ooo00o.Oooooo();
            String strOooooo2 = o0ooo00o.Oooooo();
            String strOooooo3 = o0ooo00o.Oooooo();
            String strOooooo4 = o0ooo00o.Oooooo();
            String strOooooo5 = o0ooo00o.Oooooo();
            if (!"libcore.io.DiskLruCache".equals(strOooooo) || !"1".equals(strOooooo2) || !Integer.toString(this.OooooO0).equals(strOooooo3) || !Integer.toString(this.OooooOo).equals(strOooooo4) || !"".equals(strOooooo5)) {
                throw new IOException("unexpected journal header: [" + strOooooo + ", " + strOooooo2 + ", " + strOooooo4 + ", " + strOooooo5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    o000000(o0ooo00o.Oooooo());
                    i++;
                } catch (EOFException unused) {
                    this.Ooooooo = i - this.OoooooO.size();
                    if (o0ooo00o.Oooooo0()) {
                        o000000O();
                    } else {
                        this.Oooooo = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.OoooOoo, true), o0O00O0o.OooO00o));
                    }
                    o0O00O0o.OooO00o(o0ooo00o);
                    return;
                }
            }
        } catch (Throwable th) {
            o0O00O0o.OooO00o(o0ooo00o);
            throw th;
        }
    }

    private void o00Ooo() {
        if (this.Oooooo == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o00o0O(OooO0OO oooO0OO, boolean z) throws IOException {
        OooO0o oooO0o = oooO0OO.OooO00o;
        if (oooO0o.OooO0o != oooO0OO) {
            throw new IllegalStateException();
        }
        if (z && !oooO0o.OooO0o0) {
            for (int i = 0; i < this.OooooOo; i++) {
                if (!oooO0OO.OooO0O0[i]) {
                    oooO0OO.OooO00o();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!oooO0o.OooOO0O(i).exists()) {
                    oooO0OO.OooO00o();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.OooooOo; i2++) {
            File fileOooOO0O = oooO0o.OooOO0O(i2);
            if (!z) {
                oo000o(fileOooOO0O);
            } else if (fileOooOO0O.exists()) {
                File fileOooOO0 = oooO0o.OooOO0(i2);
                fileOooOO0O.renameTo(fileOooOO0);
                long j = oooO0o.OooO0O0[i2];
                long length = fileOooOO0.length();
                oooO0o.OooO0O0[i2] = length;
                this.Oooooo0 = (this.Oooooo0 - j) + length;
            }
        }
        this.Ooooooo++;
        oooO0o.OooO0o = null;
        if (oooO0o.OooO0o0 || z) {
            oooO0o.OooO0o0 = true;
            this.Oooooo.append((CharSequence) o00oO0O);
            this.Oooooo.append(' ');
            this.Oooooo.append((CharSequence) oooO0o.OooO00o);
            this.Oooooo.append((CharSequence) oooO0o.OooOO0o());
            this.Oooooo.append('\n');
            if (z) {
                long j2 = this.o0OoOo0;
                this.o0OoOo0 = 1 + j2;
                oooO0o.OooO0oO = j2;
            }
        } else {
            this.OoooooO.remove(oooO0o.OooO00o);
            this.Oooooo.append((CharSequence) o0ooOOo);
            this.Oooooo.append(' ');
            this.Oooooo.append((CharSequence) oooO0o.OooO00o);
            this.Oooooo.append('\n');
        }
        this.Oooooo.flush();
        if (this.Oooooo0 > this.OooooOO || o0OO00O()) {
            this.ooOO.submit(this.o00O0O);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized OooO0OO o00oO0O(String str, long j) throws IOException {
        o00Ooo();
        OooO0o oooO0o = this.OoooooO.get(str);
        OooO00o oooO00o = null;
        if (j != -1 && (oooO0o == null || oooO0o.OooO0oO != j)) {
            return null;
        }
        if (oooO0o == null) {
            oooO0o = new OooO0o(this, str, oooO00o);
            this.OoooooO.put(str, oooO0o);
        } else if (oooO0o.OooO0o != null) {
            return null;
        }
        OooO0OO oooO0OO = new OooO0OO(this, oooO0o, oooO00o);
        oooO0o.OooO0o = oooO0OO;
        this.Oooooo.append((CharSequence) o0ooOO0);
        this.Oooooo.append(' ');
        this.Oooooo.append((CharSequence) str);
        this.Oooooo.append('\n');
        this.Oooooo.flush();
        return oooO0OO;
    }

    private void o0O0O00() throws IOException {
        oo000o(this.Ooooo00);
        Iterator<OooO0o> it = this.OoooooO.values().iterator();
        while (it.hasNext()) {
            OooO0o next = it.next();
            int i = 0;
            if (next.OooO0o == null) {
                while (i < this.OooooOo) {
                    this.Oooooo0 += next.OooO0O0[i];
                    i++;
                }
            } else {
                next.OooO0o = null;
                while (i < this.OooooOo) {
                    oo000o(next.OooOO0(i));
                    oo000o(next.OooOO0O(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o0OO00O() {
        int i = this.Ooooooo;
        return i >= 2000 && i >= this.OoooooO.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String o0OOO0o(InputStream inputStream) throws IOException {
        return o0O00O0o.OooO0OO(new InputStreamReader(inputStream, o0O00O0o.OooO0O0));
    }

    private static void oo000o(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static o0O00 oo0o0Oo(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                o00000(file2, file3, false);
            }
        }
        o0O00 o0o00 = new o0O00(file, i, i2, j);
        if (o0o00.OoooOoo.exists()) {
            try {
                o0o00.o000OOo();
                o0o00.o0O0O00();
                return o0o00;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                o0o00.o00ooo();
            }
        }
        file.mkdirs();
        o0O00 o0o002 = new o0O00(file, i, i2, j);
        o0o002.o000000O();
        return o0o002;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.Oooooo == null) {
            return;
        }
        for (OooO0o oooO0o : new ArrayList(this.OoooooO.values())) {
            if (oooO0o.OooO0o != null) {
                oooO0o.OooO0o.OooO00o();
            }
        }
        o00000OO();
        this.Oooooo.close();
        this.Oooooo = null;
    }

    public synchronized void flush() throws IOException {
        o00Ooo();
        o00000OO();
        this.Oooooo.flush();
    }

    public synchronized boolean o000000o(String str) throws IOException {
        o00Ooo();
        OooO0o oooO0o = this.OoooooO.get(str);
        if (oooO0o != null && oooO0o.OooO0o == null) {
            for (int i = 0; i < this.OooooOo; i++) {
                File fileOooOO0 = oooO0o.OooOO0(i);
                if (fileOooOO0.exists() && !fileOooOO0.delete()) {
                    throw new IOException("failed to delete " + fileOooOO0);
                }
                this.Oooooo0 -= oooO0o.OooO0O0[i];
                oooO0o.OooO0O0[i] = 0;
            }
            this.Ooooooo++;
            this.Oooooo.append((CharSequence) o0ooOOo);
            this.Oooooo.append(' ');
            this.Oooooo.append((CharSequence) str);
            this.Oooooo.append('\n');
            this.OoooooO.remove(str);
            if (o0OO00O()) {
                this.ooOO.submit(this.o00O0O);
            }
            return true;
        }
        return false;
    }

    public synchronized long o00000O() {
        return this.Oooooo0;
    }

    public synchronized void o00000O0(long j) {
        this.OooooOO = j;
        this.ooOO.submit(this.o00O0O);
    }

    public OooO0OO o00oO0o(String str) throws IOException {
        return o00oO0O(str, -1L);
    }

    public void o00ooo() throws IOException {
        close();
        o0O00O0o.OooO0O0(this.OoooOoO);
    }

    public synchronized boolean o0Oo0oo() {
        return this.Oooooo == null;
    }

    public synchronized OooO o0ooOO0(String str) throws IOException {
        o00Ooo();
        OooO0o oooO0o = this.OoooooO.get(str);
        if (oooO0o == null) {
            return null;
        }
        if (!oooO0o.OooO0o0) {
            return null;
        }
        for (File file : oooO0o.OooO0OO) {
            if (!file.exists()) {
                return null;
            }
        }
        this.Ooooooo++;
        this.Oooooo.append((CharSequence) o0ooOoO);
        this.Oooooo.append(' ');
        this.Oooooo.append((CharSequence) str);
        this.Oooooo.append('\n');
        if (o0OO00O()) {
            this.ooOO.submit(this.o00O0O);
        }
        return new OooO(this, str, oooO0o.OooO0oO, oooO0o.OooO0OO, oooO0o.OooO0O0, null);
    }

    public File o0ooOOo() {
        return this.OoooOoO;
    }

    public synchronized long o0ooOoO() {
        return this.OooooOO;
    }
}
