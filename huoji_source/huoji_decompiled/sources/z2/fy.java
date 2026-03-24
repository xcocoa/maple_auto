package z2;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.apache.commons.io.FilenameUtils;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public final class fy implements Closeable, Flushable {
    private static final String o000000 = "READ";
    public static final /* synthetic */ boolean o000000O = false;
    private static final String o000OOo = "REMOVE";
    public static final String o00oO0O = "journal";
    private static final String o0O0O00 = "DIRTY";
    public static final Pattern o0OO00O = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final String o0OOO0o = "1";
    public static final long o0Oo0oo = -1;
    public static final String o0ooOO0 = "journal.tmp";
    public static final String o0ooOOo = "journal.bkp";
    public static final String o0ooOoO = "libcore.io.DiskLruCache";
    private static final String oo0o0Oo = "CLEAN";
    public final oz OoooOoO;
    public final File OoooOoo;
    private final File Ooooo00;
    private final File Ooooo0o;
    private final File OooooO0;
    private final int OooooOO;
    private long OooooOo;
    public final int Oooooo0;
    public k00 OoooooO;
    public boolean o00O0O;
    public boolean o00Oo0;
    public boolean o00Ooo;
    public boolean o00o0O;
    public int o0OoOo0;
    private final Executor oo000o;
    public boolean ooOO;
    private long Oooooo = 0;
    public final LinkedHashMap<String, OooO> Ooooooo = new LinkedHashMap<>(0, 0.75f, true);
    private long o00ooo = 0;
    private final Runnable o00oO0o = new OooO00o();

    public final class OooO {
        public final String OooO00o;
        public final long[] OooO0O0;
        public final File[] OooO0OO;
        public final File[] OooO0Oo;
        public OooO0o OooO0o;
        public boolean OooO0o0;
        public long OooO0oO;

        public OooO(String str) {
            this.OooO00o = str;
            int i = fy.this.Oooooo0;
            this.OooO0O0 = new long[i];
            this.OooO0OO = new File[i];
            this.OooO0Oo = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            int length = sb.length();
            for (int i2 = 0; i2 < fy.this.Oooooo0; i2++) {
                sb.append(i2);
                this.OooO0OO[i2] = new File(fy.this.OoooOoo, sb.toString());
                sb.append(".tmp");
                this.OooO0Oo[i2] = new File(fy.this.OoooOoo, sb.toString());
                sb.setLength(length);
            }
        }

        private IOException OooO00o(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void OooO0O0(String[] strArr) throws IOException {
            if (strArr.length != fy.this.Oooooo0) {
                throw OooO00o(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.OooO0O0[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw OooO00o(strArr);
                }
            }
        }

        public OooOO0 OooO0OO() {
            if (!Thread.holdsLock(fy.this)) {
                throw new AssertionError();
            }
            e10[] e10VarArr = new e10[fy.this.Oooooo0];
            long[] jArr = (long[]) this.OooO0O0.clone();
            int i = 0;
            int i2 = 0;
            while (true) {
                try {
                    fy fyVar = fy.this;
                    if (i2 >= fyVar.Oooooo0) {
                        return fyVar.new OooOO0(this.OooO00o, this.OooO0oO, e10VarArr, jArr);
                    }
                    e10VarArr[i2] = fyVar.OoooOoO.OooO00o(this.OooO0OO[i2]);
                    i2++;
                } catch (FileNotFoundException unused) {
                    while (true) {
                        fy fyVar2 = fy.this;
                        if (i >= fyVar2.Oooooo0 || e10VarArr[i] == null) {
                            try {
                                fyVar2.o0OOO0o(this);
                                return null;
                            } catch (IOException unused2) {
                                return null;
                            }
                        }
                        zx.OooO0oO(e10VarArr[i]);
                        i++;
                    }
                }
            }
        }

        public void OooO0Oo(k00 k00Var) throws IOException {
            for (long j : this.OooO0O0) {
                k00Var.OooOOOO(32).OoooOoO(j);
            }
        }
    }

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (fy.this) {
                fy fyVar = fy.this;
                if ((!fyVar.o00O0O) || fyVar.o00Oo0) {
                    return;
                }
                try {
                    fyVar.o0O0O00();
                } catch (IOException unused) {
                    fy.this.o00Ooo = true;
                }
                try {
                    if (fy.this.o00ooo()) {
                        fy.this.o0ooOOo();
                        fy.this.o0OoOo0 = 0;
                    }
                } catch (IOException unused2) {
                    fy fyVar2 = fy.this;
                    fyVar2.o00o0O = true;
                    fyVar2.OoooooO = w00.OooO0OO(w00.OooO0O0());
                }
            }
        }
    }

    public class OooO0O0 extends gy {
        public static final /* synthetic */ boolean Ooooo0o = false;

        public OooO0O0(d10 d10Var) {
            super(d10Var);
        }

        @Override // z2.gy
        public void OooooOo(IOException iOException) {
            fy.this.ooOO = true;
        }
    }

    public class OooO0OO implements Iterator<OooOO0> {
        public final Iterator<OooO> OoooOoO;
        public OooOO0 OoooOoo;
        public OooOO0 Ooooo00;

        public OooO0OO() {
            this.OoooOoO = new ArrayList(fy.this.Ooooooo.values()).iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public OooOO0 next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            OooOO0 oooOO0 = this.OoooOoo;
            this.Ooooo00 = oooOO0;
            this.OoooOoo = null;
            return oooOO0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.OoooOoo != null) {
                return true;
            }
            synchronized (fy.this) {
                if (fy.this.o00Oo0) {
                    return false;
                }
                while (this.OoooOoO.hasNext()) {
                    OooOO0 oooOO0OooO0OO = this.OoooOoO.next().OooO0OO();
                    if (oooOO0OooO0OO != null) {
                        this.OoooOoo = oooOO0OooO0OO;
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            OooOO0 oooOO0 = this.Ooooo00;
            if (oooOO0 == null) {
                throw new IllegalStateException("remove() before next()");
            }
            try {
                fy.this.o0ooOoO(oooOO0.OoooOoO);
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.Ooooo00 = null;
                throw th;
            }
            this.Ooooo00 = null;
        }
    }

    public final class OooO0o {
        public final OooO OooO00o;
        public final boolean[] OooO0O0;
        private boolean OooO0OO;

        public class OooO00o extends gy {
            public OooO00o(d10 d10Var) {
                super(d10Var);
            }

            @Override // z2.gy
            public void OooooOo(IOException iOException) {
                synchronized (fy.this) {
                    OooO0o.this.OooO0Oo();
                }
            }
        }

        public OooO0o(OooO oooO) {
            this.OooO00o = oooO;
            this.OooO0O0 = oooO.OooO0o0 ? null : new boolean[fy.this.Oooooo0];
        }

        public void OooO00o() throws IOException {
            synchronized (fy.this) {
                if (this.OooO0OO) {
                    throw new IllegalStateException();
                }
                if (this.OooO00o.OooO0o == this) {
                    fy.this.OooooOo(this, false);
                }
                this.OooO0OO = true;
            }
        }

        public void OooO0O0() {
            synchronized (fy.this) {
                if (!this.OooO0OO && this.OooO00o.OooO0o == this) {
                    try {
                        fy.this.OooooOo(this, false);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public void OooO0OO() throws IOException {
            synchronized (fy.this) {
                if (this.OooO0OO) {
                    throw new IllegalStateException();
                }
                if (this.OooO00o.OooO0o == this) {
                    fy.this.OooooOo(this, true);
                }
                this.OooO0OO = true;
            }
        }

        public void OooO0Oo() {
            if (this.OooO00o.OooO0o != this) {
                return;
            }
            int i = 0;
            while (true) {
                fy fyVar = fy.this;
                if (i >= fyVar.Oooooo0) {
                    this.OooO00o.OooO0o = null;
                    return;
                } else {
                    try {
                        fyVar.OoooOoO.OooO0o(this.OooO00o.OooO0Oo[i]);
                    } catch (IOException unused) {
                    }
                    i++;
                }
            }
        }

        public e10 OooO0o(int i) {
            synchronized (fy.this) {
                if (this.OooO0OO) {
                    throw new IllegalStateException();
                }
                OooO oooO = this.OooO00o;
                if (!oooO.OooO0o0 || oooO.OooO0o != this) {
                    return null;
                }
                try {
                    return fy.this.OoooOoO.OooO00o(oooO.OooO0OO[i]);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public d10 OooO0o0(int i) {
            synchronized (fy.this) {
                if (this.OooO0OO) {
                    throw new IllegalStateException();
                }
                OooO oooO = this.OooO00o;
                if (oooO.OooO0o != this) {
                    return w00.OooO0O0();
                }
                if (!oooO.OooO0o0) {
                    this.OooO0O0[i] = true;
                }
                try {
                    return new OooO00o(fy.this.OoooOoO.OooO0O0(oooO.OooO0Oo[i]));
                } catch (FileNotFoundException unused) {
                    return w00.OooO0O0();
                }
            }
        }
    }

    public final class OooOO0 implements Closeable {
        private final String OoooOoO;
        private final long OoooOoo;
        private final e10[] Ooooo00;
        private final long[] Ooooo0o;

        public OooOO0(String str, long j, e10[] e10VarArr, long[] jArr) {
            this.OoooOoO = str;
            this.OoooOoo = j;
            this.Ooooo00 = e10VarArr;
            this.Ooooo0o = jArr;
        }

        @Nullable
        public OooO0o OooooOo() throws IOException {
            return fy.this.Ooooooo(this.OoooOoO, this.OoooOoo);
        }

        public e10 Oooooo(int i) {
            return this.Ooooo00[i];
        }

        public long Oooooo0(int i) {
            return this.Ooooo0o[i];
        }

        public String OoooooO() {
            return this.OoooOoO;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (e10 e10Var : this.Ooooo00) {
                zx.OooO0oO(e10Var);
            }
        }
    }

    public fy(oz ozVar, File file, int i, int i2, long j, Executor executor) {
        this.OoooOoO = ozVar;
        this.OoooOoo = file;
        this.OooooOO = i;
        this.Ooooo00 = new File(file, "journal");
        this.Ooooo0o = new File(file, "journal.tmp");
        this.OooooO0 = new File(file, "journal.bkp");
        this.Oooooo0 = i2;
        this.OooooOo = j;
        this.oo000o = executor;
    }

    private synchronized void OooOO0() {
        if (o00o0O()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public static fy Oooooo0(oz ozVar, File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 > 0) {
            return new fy(ozVar, file, i, i2, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zx.Oooo00o("OkHttp DiskLruCache", true)));
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    private void o000OOo(String str) {
        if (o0OO00O.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private void o00oO0O() throws IOException {
        l00 l00VarOooO0Oo = w00.OooO0Oo(this.OoooOoO.OooO00o(this.Ooooo00));
        try {
            String strOooo0OO = l00VarOooO0Oo.Oooo0OO();
            String strOooo0OO2 = l00VarOooO0Oo.Oooo0OO();
            String strOooo0OO3 = l00VarOooO0Oo.Oooo0OO();
            String strOooo0OO4 = l00VarOooO0Oo.Oooo0OO();
            String strOooo0OO5 = l00VarOooO0Oo.Oooo0OO();
            if (!"libcore.io.DiskLruCache".equals(strOooo0OO) || !"1".equals(strOooo0OO2) || !Integer.toString(this.OooooOO).equals(strOooo0OO3) || !Integer.toString(this.Oooooo0).equals(strOooo0OO4) || !"".equals(strOooo0OO5)) {
                throw new IOException("unexpected journal header: [" + strOooo0OO + ", " + strOooo0OO2 + ", " + strOooo0OO4 + ", " + strOooo0OO5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    o0ooOO0(l00VarOooO0Oo.Oooo0OO());
                    i++;
                } catch (EOFException unused) {
                    this.o0OoOo0 = i - this.Ooooooo.size();
                    if (l00VarOooO0Oo.OooOOO()) {
                        this.OoooooO = oo000o();
                    } else {
                        o0ooOOo();
                    }
                    zx.OooO0oO(l00VarOooO0Oo);
                    return;
                }
            }
        } catch (Throwable th) {
            zx.OooO0oO(l00VarOooO0Oo);
            throw th;
        }
    }

    private void o00oO0o() throws IOException {
        this.OoooOoO.OooO0o(this.Ooooo0o);
        Iterator<OooO> it = this.Ooooooo.values().iterator();
        while (it.hasNext()) {
            OooO next = it.next();
            int i = 0;
            if (next.OooO0o == null) {
                while (i < this.Oooooo0) {
                    this.Oooooo += next.OooO0O0[i];
                    i++;
                }
            } else {
                next.OooO0o = null;
                while (i < this.Oooooo0) {
                    this.OoooOoO.OooO0o(next.OooO0OO[i]);
                    this.OoooOoO.OooO0o(next.OooO0Oo[i]);
                    i++;
                }
                it.remove();
            }
        }
    }

    private void o0ooOO0(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith(o000OOo)) {
                this.Ooooooo.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        OooO oooO = this.Ooooooo.get(strSubstring);
        if (oooO == null) {
            oooO = new OooO(strSubstring);
            this.Ooooooo.put(strSubstring, oooO);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith(oo0o0Oo)) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(o4.OooO00o.OooO0Oo);
            oooO.OooO0o0 = true;
            oooO.OooO0o = null;
            oooO.OooO0O0(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith(o0O0O00)) {
            oooO.OooO0o = new OooO0o(oooO);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith(o000000)) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private k00 oo000o() throws FileNotFoundException {
        return w00.OooO0OO(new OooO0O0(this.OoooOoO.OooO0oO(this.Ooooo00)));
    }

    public synchronized void OooooOo(OooO0o oooO0o, boolean z) throws IOException {
        OooO oooO = oooO0o.OooO00o;
        if (oooO.OooO0o != oooO0o) {
            throw new IllegalStateException();
        }
        if (z && !oooO.OooO0o0) {
            for (int i = 0; i < this.Oooooo0; i++) {
                if (!oooO0o.OooO0O0[i]) {
                    oooO0o.OooO00o();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!this.OoooOoO.OooO0Oo(oooO.OooO0Oo[i])) {
                    oooO0o.OooO00o();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.Oooooo0; i2++) {
            File file = oooO.OooO0Oo[i2];
            if (!z) {
                this.OoooOoO.OooO0o(file);
            } else if (this.OoooOoO.OooO0Oo(file)) {
                File file2 = oooO.OooO0OO[i2];
                this.OoooOoO.OooO0o0(file, file2);
                long j = oooO.OooO0O0[i2];
                long jOooO0oo = this.OoooOoO.OooO0oo(file2);
                oooO.OooO0O0[i2] = jOooO0oo;
                this.Oooooo = (this.Oooooo - j) + jOooO0oo;
            }
        }
        this.o0OoOo0++;
        oooO.OooO0o = null;
        if (oooO.OooO0o0 || z) {
            oooO.OooO0o0 = true;
            this.OoooooO.OooOoO0(oo0o0Oo).OooOOOO(32);
            this.OoooooO.OooOoO0(oooO.OooO00o);
            oooO.OooO0Oo(this.OoooooO);
            this.OoooooO.OooOOOO(10);
            if (z) {
                long j2 = this.o00ooo;
                this.o00ooo = 1 + j2;
                oooO.OooO0oO = j2;
            }
        } else {
            this.Ooooooo.remove(oooO.OooO00o);
            this.OoooooO.OooOoO0(o000OOo).OooOOOO(32);
            this.OoooooO.OooOoO0(oooO.OooO00o);
            this.OoooooO.OooOOOO(10);
        }
        this.OoooooO.flush();
        if (this.Oooooo > this.OooooOo || o00ooo()) {
            this.oo000o.execute(this.o00oO0o);
        }
    }

    public void Oooooo() throws IOException {
        close();
        this.OoooOoO.OooO0OO(this.OoooOoo);
    }

    @Nullable
    public OooO0o OoooooO(String str) throws IOException {
        return Ooooooo(str, -1L);
    }

    public synchronized OooO0o Ooooooo(String str, long j) throws IOException {
        o00Ooo();
        OooOO0();
        o000OOo(str);
        OooO oooO = this.Ooooooo.get(str);
        if (j != -1 && (oooO == null || oooO.OooO0oO != j)) {
            return null;
        }
        if (oooO != null && oooO.OooO0o != null) {
            return null;
        }
        if (!this.o00Ooo && !this.o00o0O) {
            this.OoooooO.OooOoO0(o0O0O00).OooOOOO(32).OooOoO0(str).OooOOOO(10);
            this.OoooooO.flush();
            if (this.ooOO) {
                return null;
            }
            if (oooO == null) {
                oooO = new OooO(str);
                this.Ooooooo.put(str, oooO);
            }
            OooO0o oooO0o = new OooO0o(oooO);
            oooO.OooO0o = oooO0o;
            return oooO0o;
        }
        this.oo000o.execute(this.o00oO0o);
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.o00O0O && !this.o00Oo0) {
            for (OooO oooO : (OooO[]) this.Ooooooo.values().toArray(new OooO[this.Ooooooo.size()])) {
                OooO0o oooO0o = oooO.OooO0o;
                if (oooO0o != null) {
                    oooO0o.OooO00o();
                }
            }
            o0O0O00();
            this.OoooooO.close();
            this.OoooooO = null;
            this.o00Oo0 = true;
            return;
        }
        this.o00Oo0 = true;
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.o00O0O) {
            OooOO0();
            o0O0O00();
            this.OoooooO.flush();
        }
    }

    public File o00O0O() {
        return this.OoooOoo;
    }

    public synchronized long o00Oo0() {
        return this.OooooOo;
    }

    public synchronized void o00Ooo() throws IOException {
        if (this.o00O0O) {
            return;
        }
        if (this.OoooOoO.OooO0Oo(this.OooooO0)) {
            if (this.OoooOoO.OooO0Oo(this.Ooooo00)) {
                this.OoooOoO.OooO0o(this.OooooO0);
            } else {
                this.OoooOoO.OooO0o0(this.OooooO0, this.Ooooo00);
            }
        }
        if (this.OoooOoO.OooO0Oo(this.Ooooo00)) {
            try {
                o00oO0O();
                o00oO0o();
                this.o00O0O = true;
                return;
            } catch (IOException e) {
                uz.OooOO0O().OooOOo(5, "DiskLruCache " + this.OoooOoo + " is corrupt: " + e.getMessage() + ", removing", e);
                try {
                    Oooooo();
                    this.o00Oo0 = false;
                    o0ooOOo();
                    this.o00O0O = true;
                } catch (Throwable th) {
                    this.o00Oo0 = false;
                    throw th;
                }
            }
        }
        o0ooOOo();
        this.o00O0O = true;
    }

    public synchronized boolean o00o0O() {
        return this.o00Oo0;
    }

    public boolean o00ooo() {
        int i = this.o0OoOo0;
        return i >= 2000 && i >= this.Ooooooo.size();
    }

    public void o0O0O00() throws IOException {
        while (this.Oooooo > this.OooooOo) {
            o0OOO0o(this.Ooooooo.values().iterator().next());
        }
        this.o00Ooo = false;
    }

    public synchronized long o0OO00O() throws IOException {
        o00Ooo();
        return this.Oooooo;
    }

    public boolean o0OOO0o(OooO oooO) throws IOException {
        OooO0o oooO0o = oooO.OooO0o;
        if (oooO0o != null) {
            oooO0o.OooO0Oo();
        }
        for (int i = 0; i < this.Oooooo0; i++) {
            this.OoooOoO.OooO0o(oooO.OooO0OO[i]);
            long j = this.Oooooo;
            long[] jArr = oooO.OooO0O0;
            this.Oooooo = j - jArr[i];
            jArr[i] = 0;
        }
        this.o0OoOo0++;
        this.OoooooO.OooOoO0(o000OOo).OooOOOO(32).OooOoO0(oooO.OooO00o).OooOOOO(10);
        this.Ooooooo.remove(oooO.OooO00o);
        if (o00ooo()) {
            this.oo000o.execute(this.o00oO0o);
        }
        return true;
    }

    public synchronized void o0Oo0oo(long j) {
        this.OooooOo = j;
        if (this.o00O0O) {
            this.oo000o.execute(this.o00oO0o);
        }
    }

    public synchronized void o0OoOo0() throws IOException {
        o00Ooo();
        for (OooO oooO : (OooO[]) this.Ooooooo.values().toArray(new OooO[this.Ooooooo.size()])) {
            o0OOO0o(oooO);
        }
        this.o00Ooo = false;
    }

    public synchronized void o0ooOOo() throws IOException {
        k00 k00Var = this.OoooooO;
        if (k00Var != null) {
            k00Var.close();
        }
        k00 k00VarOooO0OO = w00.OooO0OO(this.OoooOoO.OooO0O0(this.Ooooo0o));
        try {
            k00VarOooO0OO.OooOoO0("libcore.io.DiskLruCache").OooOOOO(10);
            k00VarOooO0OO.OooOoO0("1").OooOOOO(10);
            k00VarOooO0OO.OoooOoO(this.OooooOO).OooOOOO(10);
            k00VarOooO0OO.OoooOoO(this.Oooooo0).OooOOOO(10);
            k00VarOooO0OO.OooOOOO(10);
            for (OooO oooO : this.Ooooooo.values()) {
                if (oooO.OooO0o != null) {
                    k00VarOooO0OO.OooOoO0(o0O0O00).OooOOOO(32);
                    k00VarOooO0OO.OooOoO0(oooO.OooO00o);
                } else {
                    k00VarOooO0OO.OooOoO0(oo0o0Oo).OooOOOO(32);
                    k00VarOooO0OO.OooOoO0(oooO.OooO00o);
                    oooO.OooO0Oo(k00VarOooO0OO);
                }
                k00VarOooO0OO.OooOOOO(10);
            }
            k00VarOooO0OO.close();
            if (this.OoooOoO.OooO0Oo(this.Ooooo00)) {
                this.OoooOoO.OooO0o0(this.Ooooo00, this.OooooO0);
            }
            this.OoooOoO.OooO0o0(this.Ooooo0o, this.Ooooo00);
            this.OoooOoO.OooO0o(this.OooooO0);
            this.OoooooO = oo000o();
            this.ooOO = false;
            this.o00o0O = false;
        } catch (Throwable th) {
            k00VarOooO0OO.close();
            throw th;
        }
    }

    public synchronized boolean o0ooOoO(String str) throws IOException {
        o00Ooo();
        OooOO0();
        o000OOo(str);
        OooO oooO = this.Ooooooo.get(str);
        if (oooO == null) {
            return false;
        }
        boolean zO0OOO0o = o0OOO0o(oooO);
        if (zO0OOO0o && this.Oooooo <= this.OooooOo) {
            this.o00Ooo = false;
        }
        return zO0OOO0o;
    }

    public synchronized Iterator<OooOO0> oo0o0Oo() throws IOException {
        o00Ooo();
        return new OooO0OO();
    }

    public synchronized OooOO0 ooOO(String str) throws IOException {
        o00Ooo();
        OooOO0();
        o000OOo(str);
        OooO oooO = this.Ooooooo.get(str);
        if (oooO != null && oooO.OooO0o0) {
            OooOO0 oooOO0OooO0OO = oooO.OooO0OO();
            if (oooOO0OooO0OO == null) {
                return null;
            }
            this.o0OoOo0++;
            this.OoooooO.OooOoO0(o000000).OooOOOO(32).OooOoO0(str).OooOOOO(10);
            if (o00ooo()) {
                this.oo000o.execute(this.o00oO0o);
            }
            return oooOO0OooO0OO;
        }
        return null;
    }
}
