package z2;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.concurrent.TimeUnit;
import z2.ox;
import z2.qx;

/* JADX INFO: loaded from: classes.dex */
public class ce {
    private static ce OooO0o = null;
    private static String OooO0o0 = "ce";
    private final ox OooO00o;
    private tw OooO0O0;
    private RandomAccessFile OooO0OO;
    private int OooO0Oo;

    public class OooO00o implements uw {
        public final /* synthetic */ OooO0OO OooO00o;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ String OooO0OO;

        public OooO00o(OooO0OO oooO0OO, String str, String str2) {
            this.OooO00o = oooO0OO;
            this.OooO0O0 = str;
            this.OooO0OO = str2;
        }

        @Override // z2.uw
        public void onFailure(tw twVar, IOException iOException) {
            this.OooO00o.OooO0O0(iOException);
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[Catch: IOException -> 0x00e1, TryCatch #3 {IOException -> 0x00e1, blocks: (B:42:0x00c2, B:44:0x00c7, B:45:0x00ca), top: B:49:0x00c2 }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // z2.uw
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onResponse(tw twVar, sx sxVar) throws Throwable {
            FileOutputStream fileOutputStream;
            StringBuilder sb;
            int i;
            InputStream inputStreamByteStream;
            long jContentLength;
            long j;
            byte[] bArr = new byte[2048];
            File file = new File(this.OooO0O0);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, this.OooO0OO);
            InputStream inputStream = null;
            try {
                try {
                    inputStreamByteStream = sxVar.OooOO0().byteStream();
                    try {
                        jContentLength = sxVar.OooOO0().contentLength();
                        fileOutputStream = new FileOutputStream(file2);
                        j = 0;
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = null;
                    }
                } catch (IOException unused) {
                    return;
                }
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
            while (true) {
                try {
                    int i2 = inputStreamByteStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                    long j2 = j + ((long) i2);
                    ce.OooO0OO(ce.this, i2);
                    this.OooO00o.OooO00o(jContentLength, j2, (int) (((j2 * 1.0f) / jContentLength) * 100.0f));
                    j = j2;
                } catch (Exception e3) {
                    e = e3;
                    inputStream = inputStreamByteStream;
                    try {
                        this.OooO00o.OooO0O0(e);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        String unused2 = ce.OooO0o0;
                        sb = new StringBuilder();
                        sb.append("download 3 --> downLoadLength=");
                        i = ce.this.OooO0Oo;
                    } catch (Throwable th3) {
                        th = th3;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                                throw th;
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        String unused4 = ce.OooO0o0;
                        String str = "download 3 --> downLoadLength=" + ce.this.OooO0Oo;
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = inputStreamByteStream;
                    if (inputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    String unused42 = ce.OooO0o0;
                    String str2 = "download 3 --> downLoadLength=" + ce.this.OooO0Oo;
                    throw th;
                }
                sb.append(i);
                sb.toString();
            }
            fileOutputStream.flush();
            this.OooO00o.OooO0OO(file2);
            ce.this.OooO0Oo = 0;
            if (inputStreamByteStream != null) {
                inputStreamByteStream.close();
            }
            fileOutputStream.close();
            String unused5 = ce.OooO0o0;
            sb = new StringBuilder();
            sb.append("download 3 --> downLoadLength=");
            i = ce.this.OooO0Oo;
            sb.append(i);
            sb.toString();
        }
    }

    public class OooO0O0 implements uw {
        public final /* synthetic */ OooO0OO OooO00o;
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ String OooO0OO;

        public OooO0O0(OooO0OO oooO0OO, String str, String str2) {
            this.OooO00o = oooO0OO;
            this.OooO0O0 = str;
            this.OooO0OO = str2;
        }

        @Override // z2.uw
        public void onFailure(tw twVar, IOException iOException) {
            this.OooO00o.OooO0O0(iOException);
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x00c7 A[Catch: IOException -> 0x00e1, TryCatch #3 {IOException -> 0x00e1, blocks: (B:42:0x00c2, B:44:0x00c7, B:45:0x00ca), top: B:49:0x00c2 }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // z2.uw
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onResponse(tw twVar, sx sxVar) throws Throwable {
            FileOutputStream fileOutputStream;
            StringBuilder sb;
            int i;
            InputStream inputStreamByteStream;
            long jContentLength;
            long j;
            byte[] bArr = new byte[2048];
            File file = new File(this.OooO0O0);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, this.OooO0OO);
            InputStream inputStream = null;
            try {
                try {
                    inputStreamByteStream = sxVar.OooOO0().byteStream();
                    try {
                        jContentLength = sxVar.OooOO0().contentLength();
                        fileOutputStream = new FileOutputStream(file2);
                        j = 0;
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = null;
                    }
                } catch (IOException unused) {
                    return;
                }
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
            while (true) {
                try {
                    int i2 = inputStreamByteStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                    long j2 = j + ((long) i2);
                    ce.OooO0OO(ce.this, i2);
                    this.OooO00o.OooO00o(jContentLength, j2, (int) (((j2 * 1.0f) / jContentLength) * 100.0f));
                    j = j2;
                } catch (Exception e3) {
                    e = e3;
                    inputStream = inputStreamByteStream;
                    try {
                        this.OooO00o.OooO0O0(e);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        String unused2 = ce.OooO0o0;
                        sb = new StringBuilder();
                        sb.append("download 3 --> downLoadLength=");
                        i = ce.this.OooO0Oo;
                    } catch (Throwable th3) {
                        th = th3;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                                throw th;
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        String unused4 = ce.OooO0o0;
                        String str = "download 3 --> downLoadLength=" + ce.this.OooO0Oo;
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = inputStreamByteStream;
                    if (inputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    String unused42 = ce.OooO0o0;
                    String str2 = "download 3 --> downLoadLength=" + ce.this.OooO0Oo;
                    throw th;
                }
                sb.append(i);
                sb.toString();
            }
            fileOutputStream.flush();
            this.OooO00o.OooO0OO(file2);
            ce.this.OooO0Oo = 0;
            if (inputStreamByteStream != null) {
                inputStreamByteStream.close();
            }
            fileOutputStream.close();
            String unused5 = ce.OooO0o0;
            sb = new StringBuilder();
            sb.append("download 3 --> downLoadLength=");
            i = ce.this.OooO0Oo;
            sb.append(i);
            sb.toString();
        }
    }

    public interface OooO0OO {
        void OooO00o(long j, long j2, int i);

        void OooO0O0(Exception exc);

        void OooO0OO(File file);
    }

    private ce() {
        ox.OooO0O0 oooO0O0 = new ox.OooO0O0();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.OooO00o = oooO0O0.OooO(60L, timeUnit).OooOoo(60L, timeUnit).Oooo0O0(60L, timeUnit).OooO0Oo();
    }

    public static /* synthetic */ int OooO0OO(ce ceVar, int i) {
        int i2 = ceVar.OooO0Oo + i;
        ceVar.OooO0Oo = i2;
        return i2;
    }

    public static ce OooO0oo() {
        if (OooO0o == null) {
            OooO0o = new ce();
        }
        return OooO0o;
    }

    public void OooO0o(String str, String str2, String str3, int i, OooO0OO oooO0OO) {
        String str4 = "download --> downLoadLength=" + this.OooO0Oo + ",contentLength=" + i;
        tw twVarOooO00o = this.OooO00o.OooO00o(new qx.OooO00o().OooOOo0(str).OooO0O0());
        this.OooO0O0 = twVarOooO00o;
        twVarOooO00o.OooOO0(new OooO0O0(oooO0OO, str2, str3));
    }

    public void OooO0o0() {
        tw twVar = this.OooO0O0;
        if (twVar != null) {
            twVar.cancel();
        }
    }

    public void OooO0oO(String str, String str2, String str3, OooO0OO oooO0OO) {
        String str4 = "download 1 --> destFileDir=" + str2 + ",destFileName=" + str3;
        tw twVarOooO00o = this.OooO00o.OooO00o(new qx.OooO00o().OooOOo0(str).OooO0O0());
        this.OooO0O0 = twVarOooO00o;
        twVarOooO00o.OooOO0(new OooO00o(oooO0OO, str2, str3));
    }
}
