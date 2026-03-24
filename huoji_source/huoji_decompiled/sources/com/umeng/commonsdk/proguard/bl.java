package com.umeng.commonsdk.proguard;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class bl extends bn {
    public InputStream a;
    public OutputStream b;

    public bl() {
        this.a = null;
        this.b = null;
    }

    public bl(InputStream inputStream) {
        this.a = null;
        this.b = null;
        this.a = inputStream;
    }

    public bl(InputStream inputStream, OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.a = inputStream;
        this.b = outputStream;
    }

    public bl(OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.b = outputStream;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public int a(byte[] bArr, int i, int i2) throws bo {
        InputStream inputStream = this.a;
        if (inputStream == null) {
            throw new bo(1, "Cannot read from null inputStream");
        }
        try {
            int i3 = inputStream.read(bArr, i, i2);
            if (i3 >= 0) {
                return i3;
            }
            throw new bo(4);
        } catch (IOException e) {
            throw new bo(0, e);
        }
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public boolean a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void b() throws bo {
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void b(byte[] bArr, int i, int i2) throws bo {
        OutputStream outputStream = this.b;
        if (outputStream == null) {
            throw new bo(1, "Cannot write to null outputStream");
        }
        try {
            outputStream.write(bArr, i, i2);
        } catch (IOException e) {
            throw new bo(0, e);
        }
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void c() {
        InputStream inputStream = this.a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.a = null;
        }
        OutputStream outputStream = this.b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.b = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.bn
    public void d() throws bo {
        OutputStream outputStream = this.b;
        if (outputStream == null) {
            throw new bo(1, "Cannot flush null outputStream");
        }
        try {
            outputStream.flush();
        } catch (IOException e) {
            throw new bo(0, e);
        }
    }
}
