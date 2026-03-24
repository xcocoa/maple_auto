package z2;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import z2.j00;

/* JADX INFO: loaded from: classes2.dex */
public final class e00 {
    public final boolean OooO00o;
    public final l00 OooO0O0;
    public final OooO00o OooO0OO;
    public boolean OooO0Oo;
    public long OooO0o;
    public int OooO0o0;
    public boolean OooO0oO;
    public boolean OooO0oo;
    private final byte[] OooOO0O;
    private final j00.OooO0OO OooOO0o;
    private final j00 OooO = new j00();
    private final j00 OooOO0 = new j00();

    public interface OooO00o {
        void OooO(int i, String str);

        void OooO0OO(ByteString byteString) throws IOException;

        void OooO0Oo(String str) throws IOException;

        void OooO0o0(ByteString byteString);

        void OooO0oo(ByteString byteString);
    }

    public e00(boolean z, l00 l00Var, OooO00o oooO00o) {
        Objects.requireNonNull(l00Var, "source == null");
        Objects.requireNonNull(oooO00o, "frameCallback == null");
        this.OooO00o = z;
        this.OooO0O0 = l00Var;
        this.OooO0OO = oooO00o;
        this.OooOO0O = z ? null : new byte[4];
        this.OooOO0o = z ? null : new j00.OooO0OO();
    }

    private void OooO0O0() throws IOException {
        String strOooo0oo;
        long j = this.OooO0o;
        if (j > 0) {
            this.OooO0O0.OooOOo0(this.OooO, j);
            if (!this.OooO00o) {
                this.OooO.o0ooOOo(this.OooOO0o);
                this.OooOO0o.Oooooo(0L);
                d00.OooO0OO(this.OooOO0o, this.OooOO0O);
                this.OooOO0o.close();
            }
        }
        switch (this.OooO0o0) {
            case 8:
                short s = 1005;
                long jO00000O0 = this.OooO.o00000O0();
                if (jO00000O0 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (jO00000O0 != 0) {
                    s = this.OooO.readShort();
                    strOooo0oo = this.OooO.Oooo0oo();
                    String strOooO0O0 = d00.OooO0O0(s);
                    if (strOooO0O0 != null) {
                        throw new ProtocolException(strOooO0O0);
                    }
                } else {
                    strOooo0oo = "";
                }
                this.OooO0OO.OooO(s, strOooo0oo);
                this.OooO0Oo = true;
                return;
            case 9:
                this.OooO0OO.OooO0o0(this.OooO.Oooo00o());
                return;
            case 10:
                this.OooO0OO.OooO0oo(this.OooO.Oooo00o());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.OooO0o0));
        }
    }

    /* JADX WARN: Finally extract failed */
    private void OooO0OO() throws IOException {
        if (this.OooO0Oo) {
            throw new IOException("closed");
        }
        long jOooO = this.OooO0O0.timeout().OooO();
        this.OooO0O0.timeout().OooO0O0();
        try {
            int i = this.OooO0O0.readByte() & 255;
            this.OooO0O0.timeout().OooO0oo(jOooO, TimeUnit.NANOSECONDS);
            this.OooO0o0 = i & 15;
            boolean z = (i & 128) != 0;
            this.OooO0oO = z;
            boolean z3 = (i & 8) != 0;
            this.OooO0oo = z3;
            if (z3 && !z) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z4 = (i & 64) != 0;
            boolean z5 = (i & 32) != 0;
            boolean z6 = (i & 16) != 0;
            if (z4 || z5 || z6) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            int i2 = this.OooO0O0.readByte() & 255;
            boolean z7 = (i2 & 128) != 0;
            if (z7 == this.OooO00o) {
                throw new ProtocolException(this.OooO00o ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j = i2 & 127;
            this.OooO0o = j;
            if (j == 126) {
                this.OooO0o = ((long) this.OooO0O0.readShort()) & d00.OooOOoo;
            } else if (j == 127) {
                long j2 = this.OooO0O0.readLong();
                this.OooO0o = j2;
                if (j2 < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.OooO0o) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.OooO0oo && this.OooO0o > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z7) {
                this.OooO0O0.readFully(this.OooOO0O);
            }
        } catch (Throwable th) {
            this.OooO0O0.timeout().OooO0oo(jOooO, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private void OooO0Oo() throws IOException {
        while (!this.OooO0Oo) {
            long j = this.OooO0o;
            if (j > 0) {
                this.OooO0O0.OooOOo0(this.OooOO0, j);
                if (!this.OooO00o) {
                    this.OooOO0.o0ooOOo(this.OooOO0o);
                    this.OooOO0o.Oooooo(this.OooOO0.o00000O0() - this.OooO0o);
                    d00.OooO0OO(this.OooOO0o, this.OooOO0O);
                    this.OooOO0o.close();
                }
            }
            if (this.OooO0oO) {
                return;
            }
            OooO0o();
            if (this.OooO0o0 != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.OooO0o0));
            }
        }
        throw new IOException("closed");
    }

    private void OooO0o() throws IOException {
        while (!this.OooO0Oo) {
            OooO0OO();
            if (!this.OooO0oo) {
                return;
            } else {
                OooO0O0();
            }
        }
    }

    private void OooO0o0() throws IOException {
        int i = this.OooO0o0;
        if (i != 1 && i != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i));
        }
        OooO0Oo();
        if (i == 1) {
            this.OooO0OO.OooO0Oo(this.OooOO0.Oooo0oo());
        } else {
            this.OooO0OO.OooO0OO(this.OooOO0.Oooo00o());
        }
    }

    public void OooO00o() throws IOException {
        OooO0OO();
        if (this.OooO0oo) {
            OooO0O0();
        } else {
            OooO0o0();
        }
    }
}
