package z2;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public interface k00 extends d10, WritableByteChannel {
    k00 OooO(long j) throws IOException;

    j00 OooO00o();

    k00 OooO0o(int i) throws IOException;

    k00 OooO0o0() throws IOException;

    k00 OooO0oO(int i) throws IOException;

    k00 OooO0oo(int i) throws IOException;

    k00 OooOOO0(int i) throws IOException;

    k00 OooOOOO(int i) throws IOException;

    k00 OooOo(int i) throws IOException;

    k00 OooOo0() throws IOException;

    k00 OooOoO0(String str) throws IOException;

    k00 OooOoo0(byte[] bArr, int i, int i2) throws IOException;

    k00 OooOooo(String str, int i, int i2) throws IOException;

    k00 Oooo(byte[] bArr) throws IOException;

    k00 Oooo0(String str, Charset charset) throws IOException;

    long Oooo000(e10 e10Var) throws IOException;

    k00 Oooo00O(long j) throws IOException;

    k00 Oooo0O0(e10 e10Var, long j) throws IOException;

    k00 OoooO0(ByteString byteString) throws IOException;

    k00 OoooOOo(long j) throws IOException;

    k00 OoooOoO(long j) throws IOException;

    OutputStream OoooOoo();

    @Override // z2.d10, java.io.Flushable
    void flush() throws IOException;

    k00 o000oOoO(String str, int i, int i2, Charset charset) throws IOException;
}
