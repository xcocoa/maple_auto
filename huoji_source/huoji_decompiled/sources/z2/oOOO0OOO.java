package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class oOOO0OOO implements ImageHeaderParser {
    private static final String OooO0O0 = "DfltImageHeaderParser";
    private static final int OooO0OO = 4671814;
    private static final int OooO0Oo = -1991225785;
    private static final int OooO0o = 19789;
    public static final int OooO0o0 = 65496;
    private static final int OooO0oO = 18761;
    private static final int OooOO0 = 218;
    private static final int OooOO0O = 217;
    public static final int OooOO0o = 255;
    private static final int OooOOO = 274;
    public static final int OooOOO0 = 225;
    private static final int OooOOOo = 1380533830;
    private static final int OooOOo = 1448097792;
    private static final int OooOOo0 = 1464156752;
    private static final int OooOOoo = -256;
    private static final int OooOo = 8;
    private static final int OooOo0 = 88;
    private static final int OooOo00 = 255;
    private static final int OooOo0O = 76;
    private static final int OooOo0o = 16;
    private static final String OooO0oo = "Exif\u0000\u0000";
    public static final byte[] OooO = OooO0oo.getBytes(Charset.forName("UTF-8"));
    private static final int[] OooOOOO = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static final class OooO00o implements OooO0OO {
        private final ByteBuffer OooO00o;

        public OooO00o(ByteBuffer byteBuffer) {
            this.OooO00o = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public int OooO00o() {
            return ((OooO0Oo() << 8) & 65280) | (OooO0Oo() & 255);
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public int OooO0O0(byte[] bArr, int i) {
            int iMin = Math.min(i, this.OooO00o.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.OooO00o.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public short OooO0OO() {
            return (short) (OooO0Oo() & 255);
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public int OooO0Oo() {
            if (this.OooO00o.remaining() < 1) {
                return -1;
            }
            return this.OooO00o.get();
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public long skip(long j) {
            int iMin = (int) Math.min(this.OooO00o.remaining(), j);
            ByteBuffer byteBuffer = this.OooO00o;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    public static final class OooO0O0 {
        private final ByteBuffer OooO00o;

        public OooO0O0(byte[] bArr, int i) {
            this.OooO00o = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        private boolean OooO0OO(int i, int i2) {
            return this.OooO00o.remaining() - i >= i2;
        }

        public short OooO00o(int i) {
            if (OooO0OO(i, 2)) {
                return this.OooO00o.getShort(i);
            }
            return (short) -1;
        }

        public int OooO0O0(int i) {
            if (OooO0OO(i, 4)) {
                return this.OooO00o.getInt(i);
            }
            return -1;
        }

        public int OooO0Oo() {
            return this.OooO00o.remaining();
        }

        public void OooO0o0(ByteOrder byteOrder) {
            this.OooO00o.order(byteOrder);
        }
    }

    public interface OooO0OO {
        int OooO00o() throws IOException;

        int OooO0O0(byte[] bArr, int i) throws IOException;

        short OooO0OO() throws IOException;

        int OooO0Oo() throws IOException;

        long skip(long j) throws IOException;
    }

    public static final class OooO0o implements OooO0OO {
        private final InputStream OooO00o;

        public OooO0o(InputStream inputStream) {
            this.OooO00o = inputStream;
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public int OooO00o() throws IOException {
            return ((this.OooO00o.read() << 8) & 65280) | (this.OooO00o.read() & 255);
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public int OooO0O0(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int i3 = this.OooO00o.read(bArr, i - i2, i2);
                if (i3 == -1) {
                    break;
                }
                i2 -= i3;
            }
            return i - i2;
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public short OooO0OO() throws IOException {
            return (short) (this.OooO00o.read() & 255);
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public int OooO0Oo() throws IOException {
            return this.OooO00o.read();
        }

        @Override // z2.oOOO0OOO.OooO0OO
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long jSkip = this.OooO00o.skip(j2);
                if (jSkip <= 0) {
                    if (this.OooO00o.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 -= jSkip;
            }
            return j - j2;
        }
    }

    private boolean OooO(byte[] bArr, int i) {
        boolean z = bArr != null && i > OooO.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = OooO;
                if (i2 >= bArr2.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
                i2++;
            }
        }
        return z;
    }

    private int OooO0o(OooO0OO oooO0OO, oO0OOo0o oo0ooo0o) throws IOException {
        int iOooO00o = oooO0OO.OooO00o();
        if (!OooO0oo(iOooO00o)) {
            if (Log.isLoggable(OooO0O0, 3)) {
                Log.d(OooO0O0, "Parser doesn't handle magic number: " + iOooO00o);
            }
            return -1;
        }
        int iOooOO0 = OooOO0(oooO0OO);
        if (iOooOO0 == -1) {
            if (Log.isLoggable(OooO0O0, 3)) {
                Log.d(OooO0O0, "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        byte[] bArr = (byte[]) oo0ooo0o.OooO0o0(iOooOO0, byte[].class);
        try {
            return OooOO0o(oooO0OO, bArr, iOooOO0);
        } finally {
            oo0ooo0o.put(bArr);
        }
    }

    private static int OooO0o0(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    @NonNull
    private ImageHeaderParser.ImageType OooO0oO(OooO0OO oooO0OO) throws IOException {
        int iOooO00o = oooO0OO.OooO00o();
        if (iOooO00o == 65496) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int iOooO00o2 = ((iOooO00o << 16) & (-65536)) | (oooO0OO.OooO00o() & 65535);
        if (iOooO00o2 == OooO0Oo) {
            oooO0OO.skip(21L);
            return oooO0OO.OooO0Oo() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        }
        if ((iOooO00o2 >> 8) == OooO0OO) {
            return ImageHeaderParser.ImageType.GIF;
        }
        if (iOooO00o2 != OooOOOo) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        oooO0OO.skip(4L);
        if ((((oooO0OO.OooO00o() << 16) & (-65536)) | (oooO0OO.OooO00o() & 65535)) != OooOOo0) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int iOooO00o3 = ((oooO0OO.OooO00o() << 16) & (-65536)) | (oooO0OO.OooO00o() & 65535);
        if ((iOooO00o3 & (-256)) != OooOOo) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int i = iOooO00o3 & 255;
        if (i == 88) {
            oooO0OO.skip(4L);
            return (oooO0OO.OooO0Oo() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        }
        if (i != 76) {
            return ImageHeaderParser.ImageType.WEBP;
        }
        oooO0OO.skip(4L);
        return (oooO0OO.OooO0Oo() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
    }

    private static boolean OooO0oo(int i) {
        return (i & OooO0o0) == 65496 || i == OooO0o || i == OooO0oO;
    }

    private int OooOO0(OooO0OO oooO0OO) throws IOException {
        short sOooO0OO;
        int iOooO00o;
        long j;
        long jSkip;
        do {
            short sOooO0OO2 = oooO0OO.OooO0OO();
            if (sOooO0OO2 != 255) {
                if (Log.isLoggable(OooO0O0, 3)) {
                    Log.d(OooO0O0, "Unknown segmentId=" + ((int) sOooO0OO2));
                }
                return -1;
            }
            sOooO0OO = oooO0OO.OooO0OO();
            if (sOooO0OO == OooOO0) {
                return -1;
            }
            if (sOooO0OO == 217) {
                if (Log.isLoggable(OooO0O0, 3)) {
                    Log.d(OooO0O0, "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            iOooO00o = oooO0OO.OooO00o() - 2;
            if (sOooO0OO == 225) {
                return iOooO00o;
            }
            j = iOooO00o;
            jSkip = oooO0OO.skip(j);
        } while (jSkip == j);
        if (Log.isLoggable(OooO0O0, 3)) {
            Log.d(OooO0O0, "Unable to skip enough data, type: " + ((int) sOooO0OO) + ", wanted to skip: " + iOooO00o + ", but actually skipped: " + jSkip);
        }
        return -1;
    }

    private static int OooOO0O(OooO0O0 oooO0O0) {
        ByteOrder byteOrder;
        StringBuilder sb;
        String str;
        String string;
        short sOooO00o = oooO0O0.OooO00o(6);
        if (sOooO00o != OooO0oO) {
            if (sOooO00o != OooO0o && Log.isLoggable(OooO0O0, 3)) {
                Log.d(OooO0O0, "Unknown endianness = " + ((int) sOooO00o));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        oooO0O0.OooO0o0(byteOrder);
        int iOooO0O0 = oooO0O0.OooO0O0(10) + 6;
        short sOooO00o2 = oooO0O0.OooO00o(iOooO0O0);
        for (int i = 0; i < sOooO00o2; i++) {
            int iOooO0o0 = OooO0o0(iOooO0O0, i);
            short sOooO00o3 = oooO0O0.OooO00o(iOooO0o0);
            if (sOooO00o3 == 274) {
                short sOooO00o4 = oooO0O0.OooO00o(iOooO0o0 + 2);
                if (sOooO00o4 >= 1 && sOooO00o4 <= 12) {
                    int iOooO0O02 = oooO0O0.OooO0O0(iOooO0o0 + 4);
                    if (iOooO0O02 >= 0) {
                        if (Log.isLoggable(OooO0O0, 3)) {
                            Log.d(OooO0O0, "Got tagIndex=" + i + " tagType=" + ((int) sOooO00o3) + " formatCode=" + ((int) sOooO00o4) + " componentCount=" + iOooO0O02);
                        }
                        int i2 = iOooO0O02 + OooOOOO[sOooO00o4];
                        if (i2 <= 4) {
                            int i3 = iOooO0o0 + 8;
                            if (i3 >= 0 && i3 <= oooO0O0.OooO0Oo()) {
                                if (i2 >= 0 && i2 + i3 <= oooO0O0.OooO0Oo()) {
                                    return oooO0O0.OooO00o(i3);
                                }
                                if (Log.isLoggable(OooO0O0, 3)) {
                                    sb = new StringBuilder();
                                    sb.append("Illegal number of bytes for TI tag data tagType=");
                                    sb.append((int) sOooO00o3);
                                }
                            } else if (Log.isLoggable(OooO0O0, 3)) {
                                string = "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) sOooO00o3);
                                Log.d(OooO0O0, string);
                            }
                        } else if (Log.isLoggable(OooO0O0, 3)) {
                            sb = new StringBuilder();
                            str = "Got byte count > 4, not orientation, continuing, formatCode=";
                            sb.append(str);
                            sb.append((int) sOooO00o4);
                        }
                    } else if (Log.isLoggable(OooO0O0, 3)) {
                        string = "Negative tiff component count";
                        Log.d(OooO0O0, string);
                    }
                } else if (Log.isLoggable(OooO0O0, 3)) {
                    sb = new StringBuilder();
                    str = "Got invalid format code = ";
                    sb.append(str);
                    sb.append((int) sOooO00o4);
                }
                string = sb.toString();
                Log.d(OooO0O0, string);
            }
        }
        return -1;
    }

    private int OooOO0o(OooO0OO oooO0OO, byte[] bArr, int i) throws IOException {
        int iOooO0O0 = oooO0OO.OooO0O0(bArr, i);
        if (iOooO0O0 == i) {
            if (OooO(bArr, i)) {
                return OooOO0O(new OooO0O0(bArr, i));
            }
            if (Log.isLoggable(OooO0O0, 3)) {
                Log.d(OooO0O0, "Missing jpeg exif preamble");
            }
            return -1;
        }
        if (Log.isLoggable(OooO0O0, 3)) {
            Log.d(OooO0O0, "Unable to read exif segment data, length: " + i + ", actually read: " + iOooO0O0);
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType OooO00o(@NonNull ByteBuffer byteBuffer) throws IOException {
        return OooO0oO(new OooO00o((ByteBuffer) r2.OooO0Oo(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int OooO0O0(@NonNull ByteBuffer byteBuffer, @NonNull oO0OOo0o oo0ooo0o) throws IOException {
        return OooO0o(new OooO00o((ByteBuffer) r2.OooO0Oo(byteBuffer)), (oO0OOo0o) r2.OooO0Oo(oo0ooo0o));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType OooO0OO(@NonNull InputStream inputStream) throws IOException {
        return OooO0oO(new OooO0o((InputStream) r2.OooO0Oo(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int OooO0Oo(@NonNull InputStream inputStream, @NonNull oO0OOo0o oo0ooo0o) throws IOException {
        return OooO0o(new OooO0o((InputStream) r2.OooO0Oo(inputStream)), (oO0OOo0o) r2.OooO0Oo(oo0ooo0o));
    }
}
