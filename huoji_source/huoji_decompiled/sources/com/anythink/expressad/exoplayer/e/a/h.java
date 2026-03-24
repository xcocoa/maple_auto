package com.anythink.expressad.exoplayer.e.a;

import android.util.Log;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.s;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private static final String a = "PsshAtomUtil";

    public static class a {
        private final UUID a;
        private final int b;
        private final byte[] c;

        public a(UUID uuid, int i, byte[] bArr) {
            this.a = uuid;
            this.b = i;
            this.c = bArr;
        }
    }

    private h() {
    }

    @Nullable
    public static UUID a(byte[] bArr) {
        a aVarC = c(bArr);
        if (aVarC == null) {
            return null;
        }
        return aVarC.a;
    }

    private static byte[] a(UUID uuid, @Nullable byte[] bArr) {
        int length = bArr != null ? bArr.length : 0;
        int i = length + 32;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt(com.anythink.expressad.exoplayer.e.a.a.Z);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    private static byte[] a(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        boolean z = uuidArr != null;
        int length = bArr != null ? bArr.length : 0;
        int length2 = length + 32;
        if (z) {
            length2 += (uuidArr.length * 16) + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
        byteBufferAllocate.putInt(length2);
        byteBufferAllocate.putInt(com.anythink.expressad.exoplayer.e.a.a.Z);
        byteBufferAllocate.putInt(z ? 16777216 : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (z) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    @Nullable
    public static byte[] a(byte[] bArr, UUID uuid) {
        a aVarC = c(bArr);
        if (aVarC == null) {
            return null;
        }
        if (uuid == null || uuid.equals(aVarC.a)) {
            return aVarC.c;
        }
        Log.w(a, "UUID mismatch. Expected: " + uuid + ", got: " + aVarC.a + ".");
        return null;
    }

    public static int b(byte[] bArr) {
        a aVarC = c(bArr);
        if (aVarC == null) {
            return -1;
        }
        return aVarC.b;
    }

    @Nullable
    private static a c(byte[] bArr) {
        s sVar = new s(bArr);
        if (sVar.b() < 32) {
            return null;
        }
        sVar.c(0);
        if (sVar.i() != sVar.a() + 4 || sVar.i() != com.anythink.expressad.exoplayer.e.a.a.Z) {
            return null;
        }
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar.i());
        if (iA > 1) {
            Log.w(a, "Unsupported pssh version: ".concat(String.valueOf(iA)));
            return null;
        }
        UUID uuid = new UUID(sVar.j(), sVar.j());
        if (iA == 1) {
            sVar.d(sVar.m() * 16);
        }
        int iM = sVar.m();
        if (iM != sVar.a()) {
            return null;
        }
        byte[] bArr2 = new byte[iM];
        sVar.a(bArr2, 0, iM);
        return new a(uuid, iA, bArr2);
    }
}
