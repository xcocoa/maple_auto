package z2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;
import z2.ez;

/* JADX INFO: loaded from: classes2.dex */
public final class iz implements Closeable {
    public static final Logger OooooO0 = Logger.getLogger(fz.class.getName());
    private final l00 OoooOoO;
    private final OooO00o OoooOoo;
    private final boolean Ooooo00;
    public final ez.OooO00o Ooooo0o;

    public static final class OooO00o implements e10 {
        private final l00 OoooOoO;
        public int OoooOoo;
        public byte Ooooo00;
        public int Ooooo0o;
        public int OooooO0;
        public short OooooOO;

        public OooO00o(l00 l00Var) {
            this.OoooOoO = l00Var;
        }

        private void OooOO0() throws IOException {
            int i = this.Ooooo0o;
            int iOoOO = iz.ooOO(this.OoooOoO);
            this.OooooO0 = iOoOO;
            this.OoooOoo = iOoOO;
            byte b = (byte) (this.OoooOoO.readByte() & 255);
            this.Ooooo00 = (byte) (this.OoooOoO.readByte() & 255);
            Logger logger = iz.OooooO0;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(fz.OooO0O0(true, this.Ooooo0o, this.OoooOoo, b, this.Ooooo00));
            }
            int i2 = this.OoooOoO.readInt() & Integer.MAX_VALUE;
            this.Ooooo0o = i2;
            if (b != 9) {
                throw fz.OooO0Oo("%s != TYPE_CONTINUATION", Byte.valueOf(b));
            }
            if (i2 != i) {
                throw fz.OooO0Oo("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            while (true) {
                int i = this.OooooO0;
                if (i != 0) {
                    long j2 = this.OoooOoO.read(j00Var, Math.min(j, i));
                    if (j2 == -1) {
                        return -1L;
                    }
                    this.OooooO0 = (int) (((long) this.OooooO0) - j2);
                    return j2;
                }
                this.OoooOoO.skip(this.OooooOO);
                this.OooooOO = (short) 0;
                if ((this.Ooooo00 & 4) != 0) {
                    return -1L;
                }
                OooOO0();
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return this.OoooOoO.timeout();
        }
    }

    public interface OooO0O0 {
        void OooO(int i, ErrorCode errorCode);

        void OooO00o();

        void OooO0O0(boolean z, nz nzVar);

        void OooO0OO(boolean z, int i, int i2, List<dz> list);

        void OooO0Oo(int i, long j);

        void OooO0o(boolean z, int i, l00 l00Var, int i2) throws IOException;

        void OooO0o0(int i, String str, ByteString byteString, String str2, int i2, long j);

        void OooO0oO(boolean z, int i, int i2);

        void OooO0oo(int i, int i2, int i3, boolean z);

        void OooOO0(int i, int i2, List<dz> list) throws IOException;

        void OooOO0O(int i, ErrorCode errorCode, ByteString byteString);
    }

    public iz(l00 l00Var, boolean z) {
        this.OoooOoO = l00Var;
        this.Ooooo00 = z;
        OooO00o oooO00o = new OooO00o(l00Var);
        this.OoooOoo = oooO00o;
        this.Ooooo0o = new ez.OooO00o(4096, oooO00o);
    }

    public static int OooOO0(int i, byte b, short s) throws IOException {
        if ((b & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        throw fz.OooO0Oo("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
    }

    private void Oooooo(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            throw fz.OooO0Oo("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z = (b & 1) != 0;
        if ((b & 32) != 0) {
            throw fz.OooO0Oo("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short s = (b & 8) != 0 ? (short) (this.OoooOoO.readByte() & 255) : (short) 0;
        oooO0O0.OooO0o(z, i2, this.OoooOoO, OooOO0(i, b, s));
        this.OoooOoO.skip(s);
    }

    private void OoooooO(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i < 8) {
            throw fz.OooO0Oo("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw fz.OooO0Oo("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int i3 = this.OoooOoO.readInt();
        int i4 = this.OoooOoO.readInt();
        int i5 = i - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i4);
        if (errorCodeFromHttp2 == null) {
            throw fz.OooO0Oo("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i4));
        }
        ByteString byteStringOooO0Oo = ByteString.EMPTY;
        if (i5 > 0) {
            byteStringOooO0Oo = this.OoooOoO.OooO0Oo(i5);
        }
        oooO0O0.OooOO0O(i3, errorCodeFromHttp2, byteStringOooO0Oo);
    }

    private List<dz> Ooooooo(int i, short s, byte b, int i2) throws IOException {
        OooO00o oooO00o = this.OoooOoo;
        oooO00o.OooooO0 = i;
        oooO00o.OoooOoo = i;
        oooO00o.OooooOO = s;
        oooO00o.Ooooo00 = b;
        oooO00o.Ooooo0o = i2;
        this.Ooooo0o.OooOO0o();
        return this.Ooooo0o.OooO0o0();
    }

    private void o00O0O(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i != 8) {
            throw fz.OooO0Oo("TYPE_PING length != 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw fz.OooO0Oo("TYPE_PING streamId != 0", new Object[0]);
        }
        oooO0O0.OooO0oO((b & 1) != 0, this.OoooOoO.readInt(), this.OoooOoO.readInt());
    }

    private void o00Oo0(OooO0O0 oooO0O0, int i) throws IOException {
        int i2 = this.OoooOoO.readInt();
        oooO0O0.OooO0oo(i, i2 & Integer.MAX_VALUE, (this.OoooOoO.readByte() & 255) + 1, (Integer.MIN_VALUE & i2) != 0);
    }

    private void o00Ooo(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i != 5) {
            throw fz.OooO0Oo("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw fz.OooO0Oo("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        o00Oo0(oooO0O0, i2);
    }

    private void o00o0O(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            throw fz.OooO0Oo("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s = (b & 8) != 0 ? (short) (this.OoooOoO.readByte() & 255) : (short) 0;
        oooO0O0.OooOO0(i2, this.OoooOoO.readInt() & Integer.MAX_VALUE, Ooooooo(OooOO0(i - 4, b, s), s, b, i2));
    }

    private void o00oO0o(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw fz.OooO0Oo("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long j = ((long) this.OoooOoO.readInt()) & 2147483647L;
        if (j == 0) {
            throw fz.OooO0Oo("windowSizeIncrement was 0", Long.valueOf(j));
        }
        oooO0O0.OooO0Oo(i2, j);
    }

    private void o00ooo(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw fz.OooO0Oo("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw fz.OooO0Oo("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int i3 = this.OoooOoO.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i3);
        if (errorCodeFromHttp2 == null) {
            throw fz.OooO0Oo("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i3));
        }
        oooO0O0.OooO(i2, errorCodeFromHttp2);
    }

    private void o0OoOo0(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            throw fz.OooO0Oo("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b & 1) != 0;
        short s = (b & 8) != 0 ? (short) (this.OoooOoO.readByte() & 255) : (short) 0;
        if ((b & 32) != 0) {
            o00Oo0(oooO0O0, i2);
            i -= 5;
        }
        oooO0O0.OooO0OO(z, i2, -1, Ooooooo(OooOO0(i, b, s), s, b, i2));
    }

    private void oo000o(OooO0O0 oooO0O0, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            throw fz.OooO0Oo("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b & 1) != 0) {
            if (i != 0) {
                throw fz.OooO0Oo("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            oooO0O0.OooO00o();
            return;
        }
        if (i % 6 != 0) {
            throw fz.OooO0Oo("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        }
        nz nzVar = new nz();
        for (int i3 = 0; i3 < i; i3 += 6) {
            int i4 = this.OoooOoO.readShort() & 65535;
            int i5 = this.OoooOoO.readInt();
            if (i4 == 2) {
                if (i5 != 0 && i5 != 1) {
                    throw fz.OooO0Oo("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (i4 == 3) {
                i4 = 4;
            } else if (i4 == 4) {
                i4 = 7;
                if (i5 < 0) {
                    throw fz.OooO0Oo("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
            } else if (i4 == 5 && (i5 < 16384 || i5 > 16777215)) {
                throw fz.OooO0Oo("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i5));
            }
            nzVar.OooOO0O(i4, i5);
        }
        oooO0O0.OooO0O0(false, nzVar);
    }

    public static int ooOO(l00 l00Var) throws IOException {
        return (l00Var.readByte() & 255) | ((l00Var.readByte() & 255) << 16) | ((l00Var.readByte() & 255) << 8);
    }

    public boolean OooooOo(boolean z, OooO0O0 oooO0O0) throws IOException {
        try {
            this.OoooOoO.OoooOo0(9L);
            int iOoOO = ooOO(this.OoooOoO);
            if (iOoOO < 0 || iOoOO > 16384) {
                throw fz.OooO0Oo("FRAME_SIZE_ERROR: %s", Integer.valueOf(iOoOO));
            }
            byte b = (byte) (this.OoooOoO.readByte() & 255);
            if (z && b != 4) {
                throw fz.OooO0Oo("Expected a SETTINGS frame but was %s", Byte.valueOf(b));
            }
            byte b2 = (byte) (this.OoooOoO.readByte() & 255);
            int i = this.OoooOoO.readInt() & Integer.MAX_VALUE;
            Logger logger = OooooO0;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(fz.OooO0O0(true, i, iOoOO, b, b2));
            }
            switch (b) {
                case 0:
                    Oooooo(oooO0O0, iOoOO, b2, i);
                    return true;
                case 1:
                    o0OoOo0(oooO0O0, iOoOO, b2, i);
                    return true;
                case 2:
                    o00Ooo(oooO0O0, iOoOO, b2, i);
                    return true;
                case 3:
                    o00ooo(oooO0O0, iOoOO, b2, i);
                    return true;
                case 4:
                    oo000o(oooO0O0, iOoOO, b2, i);
                    return true;
                case 5:
                    o00o0O(oooO0O0, iOoOO, b2, i);
                    return true;
                case 6:
                    o00O0O(oooO0O0, iOoOO, b2, i);
                    return true;
                case 7:
                    OoooooO(oooO0O0, iOoOO, b2, i);
                    return true;
                case 8:
                    o00oO0o(oooO0O0, iOoOO, b2, i);
                    return true;
                default:
                    this.OoooOoO.skip(iOoOO);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public void Oooooo0(OooO0O0 oooO0O0) throws IOException {
        if (this.Ooooo00) {
            if (!OooooOo(true, oooO0O0)) {
                throw fz.OooO0Oo("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        l00 l00Var = this.OoooOoO;
        ByteString byteString = fz.OooO00o;
        ByteString byteStringOooO0Oo = l00Var.OooO0Oo(byteString.size());
        Logger logger = OooooO0;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(zx.OooOOoo("<< CONNECTION %s", byteStringOooO0Oo.hex()));
        }
        if (!byteString.equals(byteStringOooO0Oo)) {
            throw fz.OooO0Oo("Expected a connection header but was %s", byteStringOooO0Oo.utf8());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.OoooOoO.close();
    }
}
