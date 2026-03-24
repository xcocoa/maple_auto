package com.octopus.ad.internal.b;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class e extends l {
    private final h a;
    private final com.octopus.ad.internal.b.a.b b;
    private b c;

    public e(h hVar, com.octopus.ad.internal.b.a.b bVar) {
        super(hVar, bVar);
        this.b = bVar;
        this.a = hVar;
    }

    private void a(OutputStream outputStream, long j) throws m, IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int iA = a(bArr, j, 8192);
            if (iA == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, iA);
                j += (long) iA;
            }
        }
    }

    private boolean a(d dVar) throws m {
        int iA = this.a.a();
        return ((iA > 0) && dVar.c && ((float) dVar.b) > ((float) this.b.a()) + (((float) iA) * 0.2f)) ? false : true;
    }

    private String b(d dVar) throws m, IOException {
        String strC = this.a.c();
        boolean z = !TextUtils.isEmpty(strC);
        int iA = this.b.d() ? this.b.a() : this.a.a();
        boolean z3 = iA >= 0;
        boolean z4 = dVar.c;
        long j = iA;
        if (z4) {
            j -= dVar.b;
        }
        boolean z5 = z3 && z4;
        StringBuilder sb = new StringBuilder();
        sb.append(dVar.c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z3 ? String.format("Content-Length: %d\n", Long.valueOf(j)) : "");
        sb.append(z5 ? String.format("Content-Range: bytes %d-%d/%d\n", Long.valueOf(dVar.b), Integer.valueOf(iA - 1), Integer.valueOf(iA)) : "");
        sb.append(z ? String.format("Content-Type: %s\n", strC) : "");
        sb.append("\n");
        return sb.toString();
    }

    private void b(OutputStream outputStream, long j) throws m, IOException {
        h hVar = new h(this.a);
        try {
            hVar.a((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = hVar.a(bArr);
                if (iA == -1) {
                    outputStream.flush();
                    return;
                }
                outputStream.write(bArr, 0, iA);
            }
        } finally {
            hVar.b();
        }
    }

    @Override // com.octopus.ad.internal.b.l
    public void a(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(this.b.a, this.a.d(), i);
        }
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    public void a(d dVar, Socket socket) throws m, IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes("UTF-8"));
        long j = dVar.b;
        if (a(dVar)) {
            a(bufferedOutputStream, j);
        } else {
            b(bufferedOutputStream, j);
        }
    }
}
