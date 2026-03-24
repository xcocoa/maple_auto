package com.anythink.expressad.exoplayer.j.a;

import android.util.SparseArray;
import com.anythink.expressad.exoplayer.j.a.a;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.x;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import z2.ua0;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static final String a = "cached_content_index.exi";
    private static final int b = 2;
    private static final int c = 1;
    private final HashMap<String, g> d;
    private final SparseArray<String> e;
    private final com.anythink.expressad.exoplayer.k.b f;
    private final Cipher g;
    private final SecretKeySpec h;
    private final boolean i;
    private boolean j;
    private x k;

    private h(File file) {
        this(file, null);
    }

    private h(File file, byte[] bArr) {
        this(file, bArr, bArr != null);
    }

    public h(File file, byte[] bArr, boolean z) {
        this.i = z;
        if (bArr != null) {
            com.anythink.expressad.exoplayer.k.a.a(bArr.length == 16);
            try {
                this.g = h();
                this.h = new SecretKeySpec(bArr, ua0.AES);
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                throw new IllegalStateException(e);
            }
        } else {
            com.anythink.expressad.exoplayer.k.a.b(!z);
            this.g = null;
            this.h = null;
        }
        this.d = new HashMap<>();
        this.e = new SparseArray<>();
        this.f = new com.anythink.expressad.exoplayer.k.b(new File(file, a));
    }

    private static int a(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt >= 0) {
            return iKeyAt;
        }
        while (i < size && i == sparseArray.keyAt(i)) {
            i++;
        }
        return i;
    }

    private void a(g gVar) {
        this.d.put(gVar.b, gVar);
        this.e.put(gVar.a, gVar.b);
    }

    private g f(String str) {
        SparseArray<String> sparseArray = this.e;
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i < size && i == sparseArray.keyAt(i)) {
                i++;
            }
            iKeyAt = i;
        }
        g gVar = new g(iKeyAt, str);
        a(gVar);
        this.j = true;
        return gVar;
    }

    private boolean f() throws Throwable {
        DataInputStream dataInputStream = null;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f.c());
            DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
            try {
                int i = dataInputStream2.readInt();
                if (i >= 0 && i <= 2) {
                    if ((dataInputStream2.readInt() & 1) != 0) {
                        if (this.g == null) {
                            af.a((Closeable) dataInputStream2);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream2.readFully(bArr);
                        try {
                            this.g.init(2, this.h, new IvParameterSpec(bArr));
                            dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.g));
                        } catch (InvalidAlgorithmParameterException e) {
                            e = e;
                            throw new IllegalStateException(e);
                        } catch (InvalidKeyException e2) {
                            e = e2;
                            throw new IllegalStateException(e);
                        }
                    } else if (this.i) {
                        this.j = true;
                    }
                    int i2 = dataInputStream2.readInt();
                    int iA = 0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        g gVarA = g.a(i, dataInputStream2);
                        a(gVarA);
                        iA += gVarA.a(i);
                    }
                    int i4 = dataInputStream2.readInt();
                    boolean z = dataInputStream2.read() == -1;
                    if (i4 == iA && z) {
                        af.a((Closeable) dataInputStream2);
                        return true;
                    }
                    af.a((Closeable) dataInputStream2);
                    return false;
                }
                af.a((Closeable) dataInputStream2);
                return false;
            } catch (IOException unused) {
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    af.a((Closeable) dataInputStream);
                }
                return false;
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    af.a((Closeable) dataInputStream);
                }
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void g() throws Throwable {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                OutputStream outputStreamB = this.f.b();
                x xVar = this.k;
                if (xVar == null) {
                    this.k = new x(outputStreamB);
                } else {
                    xVar.a(outputStreamB);
                }
                dataOutputStream = new DataOutputStream(this.k);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            dataOutputStream.writeInt(2);
            int iA = 0;
            dataOutputStream.writeInt(this.i ? 1 : 0);
            if (this.i) {
                byte[] bArr = new byte[16];
                new Random().nextBytes(bArr);
                dataOutputStream.write(bArr);
                try {
                    this.g.init(1, this.h, new IvParameterSpec(bArr));
                    dataOutputStream.flush();
                    dataOutputStream = new DataOutputStream(new CipherOutputStream(this.k, this.g));
                } catch (InvalidAlgorithmParameterException e2) {
                    e = e2;
                    throw new IllegalStateException(e);
                } catch (InvalidKeyException e3) {
                    e = e3;
                    throw new IllegalStateException(e);
                }
            }
            dataOutputStream.writeInt(this.d.size());
            for (g gVar : this.d.values()) {
                gVar.a(dataOutputStream);
                iA += gVar.a(2);
            }
            dataOutputStream.writeInt(iA);
            this.f.a(dataOutputStream);
            af.a((Closeable) null);
        } catch (IOException e4) {
            e = e4;
            dataOutputStream2 = dataOutputStream;
            throw new a.C0126a(e);
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream2 = dataOutputStream;
            af.a(dataOutputStream2);
            throw th;
        }
    }

    private static Cipher h() {
        if (af.a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public final g a(String str) {
        g gVar = this.d.get(str);
        if (gVar != null) {
            return gVar;
        }
        SparseArray<String> sparseArray = this.e;
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i < size && i == sparseArray.keyAt(i)) {
                i++;
            }
            iKeyAt = i;
        }
        g gVar2 = new g(iKeyAt, str);
        a(gVar2);
        this.j = true;
        return gVar2;
    }

    public final String a(int i) {
        return this.e.get(i);
    }

    public final void a() {
        com.anythink.expressad.exoplayer.k.a.b(!this.j);
        if (f()) {
            return;
        }
        this.f.a();
        this.d.clear();
        this.e.clear();
    }

    public final void a(String str, k kVar) {
        if (a(str).a(kVar)) {
            this.j = true;
        }
    }

    public final g b(String str) {
        return this.d.get(str);
    }

    public final void b() throws Throwable {
        DataOutputStream dataOutputStream;
        if (this.j) {
            DataOutputStream dataOutputStream2 = null;
            try {
                try {
                    OutputStream outputStreamB = this.f.b();
                    x xVar = this.k;
                    if (xVar == null) {
                        this.k = new x(outputStreamB);
                    } else {
                        xVar.a(outputStreamB);
                    }
                    dataOutputStream = new DataOutputStream(this.k);
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(this.i ? 1 : 0);
                if (this.i) {
                    byte[] bArr = new byte[16];
                    new Random().nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.g.init(1, this.h, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream = new DataOutputStream(new CipherOutputStream(this.k, this.g));
                    } catch (InvalidAlgorithmParameterException e2) {
                        e = e2;
                        throw new IllegalStateException(e);
                    } catch (InvalidKeyException e3) {
                        e = e3;
                        throw new IllegalStateException(e);
                    }
                }
                dataOutputStream.writeInt(this.d.size());
                int iA = 0;
                for (g gVar : this.d.values()) {
                    gVar.a(dataOutputStream);
                    iA += gVar.a(2);
                }
                dataOutputStream.writeInt(iA);
                this.f.a(dataOutputStream);
                af.a((Closeable) null);
                this.j = false;
            } catch (IOException e4) {
                e = e4;
                dataOutputStream2 = dataOutputStream;
                throw new a.C0126a(e);
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream2 = dataOutputStream;
                af.a(dataOutputStream2);
                throw th;
            }
        }
    }

    public final int c(String str) {
        return a(str).a;
    }

    public final Collection<g> c() {
        return this.d.values();
    }

    public final void d() {
        int size = this.d.size();
        String[] strArr = new String[size];
        this.d.keySet().toArray(strArr);
        for (int i = 0; i < size; i++) {
            d(strArr[i]);
        }
    }

    public final void d(String str) {
        g gVar = this.d.get(str);
        if (gVar == null || !gVar.d() || gVar.b()) {
            return;
        }
        this.d.remove(str);
        this.e.remove(gVar.a);
        this.j = true;
    }

    public final i e(String str) {
        g gVarB = b(str);
        return gVarB != null ? gVarB.a() : l.b;
    }

    public final Set<String> e() {
        return this.d.keySet();
    }
}
