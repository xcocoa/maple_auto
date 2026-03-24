package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class o0O00o00 {
    private static final int OooO = 59;
    private static final int OooO0o = 255;
    private static final String OooO0o0 = "GifHeaderParser";
    private static final int OooO0oO = 44;
    private static final int OooO0oo = 33;
    private static final int OooOO0 = 249;
    private static final int OooOO0O = 255;
    private static final int OooOO0o = 254;
    private static final int OooOOO = 28;
    private static final int OooOOO0 = 1;
    private static final int OooOOOO = 2;
    private static final int OooOOOo = 1;
    private static final int OooOOo = 64;
    private static final int OooOOo0 = 128;
    private static final int OooOOoo = 7;
    private static final int OooOo = 256;
    private static final int OooOo0 = 7;
    private static final int OooOo00 = 128;
    public static final int OooOo0O = 2;
    public static final int OooOo0o = 10;
    private ByteBuffer OooO0O0;
    private o0oO0Ooo OooO0OO;
    private final byte[] OooO00o = new byte[256];
    private int OooO0Oo = 0;

    private void OooO() {
        OooOO0(Integer.MAX_VALUE);
    }

    private boolean OooO0O0() {
        return this.OooO0OO.OooO0O0 != 0;
    }

    private void OooO0o() {
        this.OooO0OO.OooO0Oo.OooO00o = OooOOOO();
        this.OooO0OO.OooO0Oo.OooO0O0 = OooOOOO();
        this.OooO0OO.OooO0Oo.OooO0OO = OooOOOO();
        this.OooO0OO.OooO0Oo.OooO0Oo = OooOOOO();
        int iOooO0o0 = OooO0o0();
        boolean z = (iOooO0o0 & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iOooO0o0 & 7) + 1);
        o0O00OOO o0o00ooo = this.OooO0OO.OooO0Oo;
        o0o00ooo.OooO0o0 = (iOooO0o0 & 64) != 0;
        if (z) {
            o0o00ooo.OooOO0O = OooO0oo(iPow);
        } else {
            o0o00ooo.OooOO0O = null;
        }
        this.OooO0OO.OooO0Oo.OooOO0 = this.OooO0O0.position();
        OooOo00();
        if (OooO0O0()) {
            return;
        }
        o0oO0Ooo o0oo0ooo = this.OooO0OO;
        o0oo0ooo.OooO0OO++;
        o0oo0ooo.OooO0o0.add(o0oo0ooo.OooO0Oo);
    }

    private int OooO0o0() {
        try {
            return this.OooO0O0.get() & 255;
        } catch (Exception unused) {
            this.OooO0OO.OooO0O0 = 1;
            return 0;
        }
    }

    private void OooO0oO() {
        int iOooO0o0 = OooO0o0();
        this.OooO0Oo = iOooO0o0;
        if (iOooO0o0 <= 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                i2 = this.OooO0Oo;
                if (i >= i2) {
                    return;
                }
                i2 -= i;
                this.OooO0O0.get(this.OooO00o, i, i2);
                i += i2;
            } catch (Exception e) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + i2 + " blockSize: " + this.OooO0Oo, e);
                }
                this.OooO0OO.OooO0O0 = 1;
                return;
            }
        }
    }

    @Nullable
    private int[] OooO0oo(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.OooO0O0.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i2 + 1;
                iArr[i2] = ((bArr[i3] & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i6;
                i2 = i7;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.OooO0OO.OooO0O0 = 1;
        }
        return iArr;
    }

    private void OooOO0(int i) {
        boolean z = false;
        while (!z && !OooO0O0() && this.OooO0OO.OooO0OO <= i) {
            int iOooO0o0 = OooO0o0();
            if (iOooO0o0 == 33) {
                int iOooO0o02 = OooO0o0();
                if (iOooO0o02 != 1) {
                    if (iOooO0o02 == OooOO0) {
                        this.OooO0OO.OooO0Oo = new o0O00OOO();
                        OooOO0O();
                    } else if (iOooO0o02 != OooOO0o && iOooO0o02 == 255) {
                        OooO0oO();
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < 11; i2++) {
                            sb.append((char) this.OooO00o[i2]);
                        }
                        if (sb.toString().equals("NETSCAPE2.0")) {
                            OooOOO();
                        }
                    }
                }
                OooOOoo();
            } else if (iOooO0o0 == 44) {
                o0oO0Ooo o0oo0ooo = this.OooO0OO;
                if (o0oo0ooo.OooO0Oo == null) {
                    o0oo0ooo.OooO0Oo = new o0O00OOO();
                }
                OooO0o();
            } else if (iOooO0o0 != 59) {
                this.OooO0OO.OooO0O0 = 1;
            } else {
                z = true;
            }
        }
    }

    private void OooOO0O() {
        OooO0o0();
        int iOooO0o0 = OooO0o0();
        o0O00OOO o0o00ooo = this.OooO0OO.OooO0Oo;
        int i = (iOooO0o0 & 28) >> 2;
        o0o00ooo.OooO0oO = i;
        if (i == 0) {
            o0o00ooo.OooO0oO = 1;
        }
        o0o00ooo.OooO0o = (iOooO0o0 & 1) != 0;
        int iOooOOOO = OooOOOO();
        if (iOooOOOO < 2) {
            iOooOOOO = 10;
        }
        o0O00OOO o0o00ooo2 = this.OooO0OO.OooO0Oo;
        o0o00ooo2.OooO = iOooOOOO * 10;
        o0o00ooo2.OooO0oo = OooO0o0();
        OooO0o0();
    }

    private void OooOO0o() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) OooO0o0());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.OooO0OO.OooO0O0 = 1;
            return;
        }
        OooOOO0();
        if (!this.OooO0OO.OooO0oo || OooO0O0()) {
            return;
        }
        o0oO0Ooo o0oo0ooo = this.OooO0OO;
        o0oo0ooo.OooO00o = OooO0oo(o0oo0ooo.OooO);
        o0oO0Ooo o0oo0ooo2 = this.OooO0OO;
        o0oo0ooo2.OooOO0o = o0oo0ooo2.OooO00o[o0oo0ooo2.OooOO0];
    }

    private void OooOOO() {
        do {
            OooO0oO();
            byte[] bArr = this.OooO00o;
            if (bArr[0] == 1) {
                this.OooO0OO.OooOOO0 = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.OooO0Oo <= 0) {
                return;
            }
        } while (!OooO0O0());
    }

    private void OooOOO0() {
        this.OooO0OO.OooO0o = OooOOOO();
        this.OooO0OO.OooO0oO = OooOOOO();
        int iOooO0o0 = OooO0o0();
        o0oO0Ooo o0oo0ooo = this.OooO0OO;
        o0oo0ooo.OooO0oo = (iOooO0o0 & 128) != 0;
        o0oo0ooo.OooO = (int) Math.pow(2.0d, (iOooO0o0 & 7) + 1);
        this.OooO0OO.OooOO0 = OooO0o0();
        this.OooO0OO.OooOO0O = OooO0o0();
    }

    private int OooOOOO() {
        return this.OooO0O0.getShort();
    }

    private void OooOOOo() {
        this.OooO0O0 = null;
        Arrays.fill(this.OooO00o, (byte) 0);
        this.OooO0OO = new o0oO0Ooo();
        this.OooO0Oo = 0;
    }

    private void OooOOoo() {
        int iOooO0o0;
        do {
            iOooO0o0 = OooO0o0();
            this.OooO0O0.position(Math.min(this.OooO0O0.position() + iOooO0o0, this.OooO0O0.limit()));
        } while (iOooO0o0 > 0);
    }

    private void OooOo00() {
        OooO0o0();
        OooOOoo();
    }

    public void OooO00o() {
        this.OooO0O0 = null;
        this.OooO0OO = null;
    }

    public boolean OooO0OO() {
        OooOO0o();
        if (!OooO0O0()) {
            OooOO0(2);
        }
        return this.OooO0OO.OooO0OO > 1;
    }

    @NonNull
    public o0oO0Ooo OooO0Oo() {
        if (this.OooO0O0 == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (OooO0O0()) {
            return this.OooO0OO;
        }
        OooOO0o();
        if (!OooO0O0()) {
            OooO();
            o0oO0Ooo o0oo0ooo = this.OooO0OO;
            if (o0oo0ooo.OooO0OO < 0) {
                o0oo0ooo.OooO0O0 = 1;
            }
        }
        return this.OooO0OO;
    }

    public o0O00o00 OooOOo(@Nullable byte[] bArr) {
        if (bArr != null) {
            OooOOo0(ByteBuffer.wrap(bArr));
        } else {
            this.OooO0O0 = null;
            this.OooO0OO.OooO0O0 = 2;
        }
        return this;
    }

    public o0O00o00 OooOOo0(@NonNull ByteBuffer byteBuffer) {
        OooOOOo();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.OooO0O0 = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.OooO0O0.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
