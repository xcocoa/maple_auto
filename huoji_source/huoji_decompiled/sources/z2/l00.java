package z2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public interface l00 extends e10, ReadableByteChannel {
    j00 OooO00o();

    String OooO0O0(long j) throws IOException;

    long OooO0OO(ByteString byteString, long j) throws IOException;

    ByteString OooO0Oo(long j) throws IOException;

    byte[] OooOO0O() throws IOException;

    long OooOO0o(ByteString byteString) throws IOException;

    boolean OooOOO() throws IOException;

    long OooOOOo(byte b, long j) throws IOException;

    long OooOOo(byte b, long j, long j2) throws IOException;

    void OooOOo0(j00 j00Var, long j) throws IOException;

    long OooOOoo(ByteString byteString) throws IOException;

    @Nullable
    String OooOo00() throws IOException;

    long OooOo0O() throws IOException;

    String OooOo0o(long j) throws IOException;

    boolean OooOoO(long j, ByteString byteString) throws IOException;

    String OooOoOO(Charset charset) throws IOException;

    int OooOoo() throws IOException;

    ByteString Oooo00o() throws IOException;

    String Oooo0OO() throws IOException;

    boolean Oooo0o(long j, ByteString byteString, int i, int i2) throws IOException;

    int Oooo0o0() throws IOException;

    byte[] Oooo0oO(long j) throws IOException;

    String Oooo0oo() throws IOException;

    long OoooO() throws IOException;

    String OoooO00(long j, Charset charset) throws IOException;

    short OoooO0O() throws IOException;

    long OoooOO0(d10 d10Var) throws IOException;

    long OoooOOO(ByteString byteString, long j) throws IOException;

    void OoooOo0(long j) throws IOException;

    long Ooooo00(byte b) throws IOException;

    long Ooooo0o() throws IOException;

    InputStream OooooO0();

    int OooooOO(x00 x00Var) throws IOException;

    int read(byte[] bArr) throws IOException;

    int read(byte[] bArr, int i, int i2) throws IOException;

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    boolean request(long j) throws IOException;

    void skip(long j) throws IOException;
}
