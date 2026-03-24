package z2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes2.dex */
public final class w00 {
    public static final Logger OooO00o = Logger.getLogger(w00.class.getName());

    public class OooO00o implements d10 {
        public final /* synthetic */ f10 OoooOoO;
        public final /* synthetic */ OutputStream OoooOoo;

        public OooO00o(f10 f10Var, OutputStream outputStream) {
            this.OoooOoO = f10Var;
            this.OoooOoo = outputStream;
        }

        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            h10.OooO0O0(j00Var.OoooOoo, 0L, j);
            while (j > 0) {
                this.OoooOoO.OooO0oO();
                b10 b10Var = j00Var.OoooOoO;
                int iMin = (int) Math.min(j, b10Var.OooO0OO - b10Var.OooO0O0);
                this.OoooOoo.write(b10Var.OooO00o, b10Var.OooO0O0, iMin);
                int i = b10Var.OooO0O0 + iMin;
                b10Var.OooO0O0 = i;
                long j2 = iMin;
                j -= j2;
                j00Var.OoooOoo -= j2;
                if (i == b10Var.OooO0OO) {
                    j00Var.OoooOoO = b10Var.OooO0O0();
                    c10.OooO00o(b10Var);
                }
            }
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.OoooOoo.close();
        }

        @Override // z2.d10, java.io.Flushable
        public void flush() throws IOException {
            this.OoooOoo.flush();
        }

        @Override // z2.d10
        public f10 timeout() {
            return this.OoooOoO;
        }

        public String toString() {
            return "sink(" + this.OoooOoo + ")";
        }
    }

    public class OooO0O0 implements e10 {
        public final /* synthetic */ f10 OoooOoO;
        public final /* synthetic */ InputStream OoooOoo;

        public OooO0O0(f10 f10Var, InputStream inputStream) {
            this.OoooOoO = f10Var;
            this.OoooOoo = inputStream;
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            this.OoooOoo.close();
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (j == 0) {
                return 0L;
            }
            try {
                this.OoooOoO.OooO0oO();
                b10 b10VarO00000Oo = j00Var.o00000Oo(1);
                int i = this.OoooOoo.read(b10VarO00000Oo.OooO00o, b10VarO00000Oo.OooO0OO, (int) Math.min(j, 8192 - b10VarO00000Oo.OooO0OO));
                if (i == -1) {
                    return -1L;
                }
                b10VarO00000Oo.OooO0OO += i;
                long j2 = i;
                j00Var.OoooOoo += j2;
                return j2;
            } catch (AssertionError e) {
                if (w00.OooO0o0(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return this.OoooOoO;
        }

        public String toString() {
            return "source(" + this.OoooOoo + ")";
        }
    }

    public class OooO0OO implements d10 {
        @Override // z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            j00Var.skip(j);
        }

        @Override // z2.d10, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // z2.d10, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // z2.d10
        public f10 timeout() {
            return f10.OooO0Oo;
        }
    }

    public class OooO0o extends h00 {
        public final /* synthetic */ Socket OooOO0o;

        public OooO0o(Socket socket) {
            this.OooOO0o = socket;
        }

        @Override // z2.h00
        public IOException OooOOo0(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // z2.h00
        public void OooOo0O() {
            Level level;
            StringBuilder sb;
            Logger logger;
            Throwable th;
            try {
                this.OooOO0o.close();
            } catch (AssertionError e) {
                if (!w00.OooO0o0(e)) {
                    throw e;
                }
                Logger logger2 = w00.OooO00o;
                level = Level.WARNING;
                sb = new StringBuilder();
                th = e;
                logger = logger2;
                sb.append("Failed to close timed out socket ");
                sb.append(this.OooOO0o);
                logger.log(level, sb.toString(), th);
            } catch (Exception e2) {
                Logger logger3 = w00.OooO00o;
                level = Level.WARNING;
                sb = new StringBuilder();
                th = e2;
                logger = logger3;
                sb.append("Failed to close timed out socket ");
                sb.append(this.OooOO0o);
                logger.log(level, sb.toString(), th);
            }
        }
    }

    private w00() {
    }

    public static d10 OooO(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        h00 h00VarOooOOOo = OooOOOo(socket);
        return h00VarOooOOOo.OooOo00(OooO0oo(socket.getOutputStream(), h00VarOooOOOo));
    }

    public static d10 OooO00o(File file) throws FileNotFoundException {
        if (file != null) {
            return OooO0oO(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static d10 OooO0O0() {
        return new OooO0OO();
    }

    public static k00 OooO0OO(d10 d10Var) {
        return new z00(d10Var);
    }

    public static l00 OooO0Oo(e10 e10Var) {
        return new a10(e10Var);
    }

    public static d10 OooO0o(File file) throws FileNotFoundException {
        if (file != null) {
            return OooO0oO(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static boolean OooO0o0(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static d10 OooO0oO(OutputStream outputStream) {
        return OooO0oo(outputStream, new f10());
    }

    private static d10 OooO0oo(OutputStream outputStream, f10 f10Var) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (f10Var != null) {
            return new OooO00o(f10Var, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    @IgnoreJRERequirement
    public static d10 OooOO0(Path path, OpenOption... openOptionArr) throws IOException {
        if (path != null) {
            return OooO0oO(Files.newOutputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static e10 OooOO0O(File file) throws FileNotFoundException {
        if (file != null) {
            return OooOO0o(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static e10 OooOO0o(InputStream inputStream) {
        return OooOOO0(inputStream, new f10());
    }

    public static e10 OooOOO(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        h00 h00VarOooOOOo = OooOOOo(socket);
        return h00VarOooOOOo.OooOo0(OooOOO0(socket.getInputStream(), h00VarOooOOOo));
    }

    private static e10 OooOOO0(InputStream inputStream, f10 f10Var) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (f10Var != null) {
            return new OooO0O0(f10Var, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    @IgnoreJRERequirement
    public static e10 OooOOOO(Path path, OpenOption... openOptionArr) throws IOException {
        if (path != null) {
            return OooOO0o(Files.newInputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    private static h00 OooOOOo(Socket socket) {
        return new OooO0o(socket);
    }
}
