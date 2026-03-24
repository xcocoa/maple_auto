package com.anythink.core.common.n;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.h.a.c;
import com.anythink.core.common.h.k;
import com.anythink.core.common.o.s;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.LineNumberReader;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static volatile d b;
    private Context h;
    private File i;
    private AtomicInteger j;
    private final String a = "Agent";
    private int c = 5;
    private int d = 10;
    private long e = 1800000;
    private String f = "";
    private String g = "";
    private boolean k = false;
    private String l = "";
    private k m = new k() { // from class: com.anythink.core.common.n.d.1
        @Override // com.anythink.core.common.h.k
        public final void onLoadCanceled(int i) {
            d.this.k = false;
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadError(int i, String str, AdError adError) {
            d.this.k = false;
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadFinish(int i, Object obj) {
            try {
                d.this.a(((Integer) obj).intValue());
                d.this.k = false;
                s.a(d.this.h, h.p, "LOG_SEND_TIME", System.currentTimeMillis());
            } catch (Throwable unused) {
                d.this.k = false;
            }
        }

        @Override // com.anythink.core.common.h.k
        public final void onLoadStart(int i) {
        }
    };
    private c.a n = new c.a() { // from class: com.anythink.core.common.n.d.2
        @Override // com.anythink.core.common.h.a.c.a
        public final void a(Object obj) {
            if (obj instanceof com.anythink.core.common.h.a.a) {
                d.this.a(((com.anythink.core.common.h.a.a) obj).b());
                d.this.k = false;
                s.a(d.this.h, h.p, "LOG_SEND_TIME", System.currentTimeMillis());
            }
        }

        @Override // com.anythink.core.common.h.a.c.a
        public final void a(Throwable th) {
            d.this.k = false;
        }
    };
    private Object o = new Object();

    private d() {
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(int i) {
        File file;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            file = new File(this.g);
            if (!file.exists()) {
                file.createNewFile();
            }
            bufferedReader = new BufferedReader(new FileReader(this.i));
        } catch (Exception unused) {
        } catch (OutOfMemoryError | StackOverflowError unused2) {
        } catch (Error unused3) {
        } catch (Throwable unused4) {
        }
        try {
            FileWriter fileWriter = new FileWriter(file);
            int i2 = 0;
            int i3 = 0;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                i3++;
                if (i3 > i) {
                    fileWriter.append((CharSequence) line);
                    fileWriter.append((CharSequence) "\n");
                }
            }
            fileWriter.flush();
            fileWriter.close();
            bufferedReader.close();
            AtomicInteger atomicInteger = this.j;
            if (atomicInteger.get() - i >= 0) {
                i2 = this.j.get() - i;
            }
            atomicInteger.set(i2);
            this.i.delete();
            file.renameTo(this.i);
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
        } catch (Error unused6) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused7) {
                }
            }
        } catch (Exception unused8) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused9) {
                }
            }
        } catch (OutOfMemoryError | StackOverflowError unused10) {
            bufferedReader2 = bufferedReader;
            try {
                System.gc();
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused11) {
                    }
                }
            } catch (Throwable th) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused12) {
                    }
                }
                throw th;
            }
        } catch (Throwable unused13) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused14) {
                }
            }
        }
    }

    private synchronized void a(boolean z) {
        BufferedReader bufferedReader;
        com.anythink.core.common.h.b bVar;
        String line;
        AtomicInteger atomicInteger;
        if (this.h == null) {
            return;
        }
        if (this.k || (!z && ((atomicInteger = this.j) == null || atomicInteger.get() < this.c))) {
            return;
        }
        this.k = true;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(this.i));
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        bufferedReader2.close();
                    } catch (Exception unused) {
                    }
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (OutOfMemoryError | StackOverflowError unused3) {
        } catch (Throwable unused4) {
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.d && (line = bufferedReader.readLine()) != null; i++) {
                arrayList.add(line);
            }
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
            try {
                if (aVarB == null) {
                    bVar = new com.anythink.core.common.h.b(this.h, 0, arrayList);
                } else {
                    if (aVarB.w() == 1) {
                        com.anythink.core.common.h.a.a aVar = new com.anythink.core.common.h.a.a(arrayList);
                        aVar.a(1, aVarB.v());
                        aVar.a(this.n);
                        bufferedReader.close();
                        return;
                    }
                    bVar = new com.anythink.core.common.h.b(this.h, aVarB.w(), arrayList);
                }
                bufferedReader.close();
                return;
            } catch (Exception unused5) {
                return;
            }
            bVar.a(0, this.m);
        } catch (Exception unused6) {
            bufferedReader2 = bufferedReader;
            this.k = false;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception unused7) {
                }
            }
        } catch (OutOfMemoryError | StackOverflowError unused8) {
            bufferedReader2 = bufferedReader;
            this.k = false;
            System.gc();
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception unused9) {
                }
            }
        } catch (Throwable unused10) {
            bufferedReader2 = bufferedReader;
            this.k = false;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception unused11) {
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f5 A[Catch: all -> 0x013d, Error -> 0x013f, OutOfMemoryError | StackOverflowError -> 0x0149, OutOfMemoryError | StackOverflowError -> 0x0149, Exception -> 0x0162, TryCatch #3 {Error -> 0x013f, blocks: (B:10:0x001c, B:12:0x007a, B:14:0x008d, B:15:0x0096, B:17:0x009e, B:25:0x00da, B:37:0x00f1, B:39:0x00f5, B:40:0x00fc, B:42:0x010e, B:44:0x0115, B:46:0x0125, B:48:0x012c, B:47:0x012a, B:43:0x0113, B:33:0x00e8, B:34:0x00eb, B:36:0x00ee), top: B:81:0x001c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010e A[Catch: all -> 0x013d, Error -> 0x013f, OutOfMemoryError | StackOverflowError -> 0x0149, OutOfMemoryError | StackOverflowError -> 0x0149, Exception -> 0x0162, TryCatch #3 {Error -> 0x013f, blocks: (B:10:0x001c, B:12:0x007a, B:14:0x008d, B:15:0x0096, B:17:0x009e, B:25:0x00da, B:37:0x00f1, B:39:0x00f5, B:40:0x00fc, B:42:0x010e, B:44:0x0115, B:46:0x0125, B:48:0x012c, B:47:0x012a, B:43:0x0113, B:33:0x00e8, B:34:0x00eb, B:36:0x00ee), top: B:81:0x001c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0113 A[Catch: all -> 0x013d, Error -> 0x013f, OutOfMemoryError | StackOverflowError -> 0x0149, OutOfMemoryError | StackOverflowError -> 0x0149, Exception -> 0x0162, TryCatch #3 {Error -> 0x013f, blocks: (B:10:0x001c, B:12:0x007a, B:14:0x008d, B:15:0x0096, B:17:0x009e, B:25:0x00da, B:37:0x00f1, B:39:0x00f5, B:40:0x00fc, B:42:0x010e, B:44:0x0115, B:46:0x0125, B:48:0x012c, B:47:0x012a, B:43:0x0113, B:33:0x00e8, B:34:0x00eb, B:36:0x00ee), top: B:81:0x001c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0125 A[Catch: all -> 0x013d, Error -> 0x013f, OutOfMemoryError | StackOverflowError -> 0x0149, OutOfMemoryError | StackOverflowError -> 0x0149, Exception -> 0x0162, TryCatch #3 {Error -> 0x013f, blocks: (B:10:0x001c, B:12:0x007a, B:14:0x008d, B:15:0x0096, B:17:0x009e, B:25:0x00da, B:37:0x00f1, B:39:0x00f5, B:40:0x00fc, B:42:0x010e, B:44:0x0115, B:46:0x0125, B:48:0x012c, B:47:0x012a, B:43:0x0113, B:33:0x00e8, B:34:0x00eb, B:36:0x00ee), top: B:81:0x001c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012a A[Catch: all -> 0x013d, Error -> 0x013f, OutOfMemoryError | StackOverflowError -> 0x0149, OutOfMemoryError | StackOverflowError -> 0x0149, Exception -> 0x0162, TryCatch #3 {Error -> 0x013f, blocks: (B:10:0x001c, B:12:0x007a, B:14:0x008d, B:15:0x0096, B:17:0x009e, B:25:0x00da, B:37:0x00f1, B:39:0x00f5, B:40:0x00fc, B:42:0x010e, B:44:0x0115, B:46:0x0125, B:48:0x012c, B:47:0x012a, B:43:0x0113, B:33:0x00e8, B:34:0x00eb, B:36:0x00ee), top: B:81:0x001c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0135 A[Catch: all -> 0x0170, TryCatch #1 {, blocks: (B:4:0x0003, B:8:0x000b, B:49:0x0131, B:51:0x0135, B:52:0x013a, B:70:0x016c, B:63:0x0156, B:65:0x015a, B:66:0x0161, B:55:0x013f, B:57:0x0143, B:60:0x014c, B:62:0x0150, B:67:0x0162, B:69:0x0166, B:72:0x016e, B:10:0x001c, B:12:0x007a, B:14:0x008d, B:15:0x0096, B:17:0x009e, B:25:0x00da, B:37:0x00f1, B:39:0x00f5, B:40:0x00fc, B:42:0x010e, B:44:0x0115, B:46:0x0125, B:48:0x012c, B:47:0x012a, B:43:0x0113, B:33:0x00e8, B:34:0x00eb, B:36:0x00ee, B:59:0x0149), top: B:80:0x0003, inners: #3, #6, #7, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Context context) {
        AtomicInteger atomicInteger;
        LineNumberReader lineNumberReader;
        Throwable th;
        synchronized (this.o) {
            if (this.h == null && context != null) {
                this.l = n.a().o();
                this.h = context.getApplicationContext();
                try {
                    try {
                        try {
                            try {
                                StringBuilder sb = new StringBuilder();
                                sb.append(this.h.getApplicationContext().getFilesDir().getAbsolutePath());
                                String str = File.separator;
                                sb.append(str);
                                sb.append("log");
                                sb.append(str);
                                sb.append("anythink_agent_log");
                                this.f = sb.toString();
                                this.g = this.h.getApplicationContext().getFilesDir().getAbsolutePath() + str + "log" + str + "anythink_temp_log";
                                if (this.i == null) {
                                    File file = new File(this.f);
                                    this.i = file;
                                    if (!file.getParentFile().exists()) {
                                        this.i.getParentFile().mkdirs();
                                    }
                                    if (!this.i.exists()) {
                                        this.i.createNewFile();
                                    }
                                }
                                LineNumberReader lineNumberReader2 = null;
                                try {
                                    try {
                                        lineNumberReader = new LineNumberReader(new FileReader(this.i));
                                    } catch (IOException unused) {
                                    }
                                    try {
                                        lineNumberReader.skip(Long.MAX_VALUE);
                                        int lineNumber = lineNumberReader.getLineNumber();
                                        if (this.j == null) {
                                            this.j = new AtomicInteger(lineNumber);
                                        }
                                        lineNumberReader.close();
                                        new StringBuilder("init file log count:").append(this.j.get());
                                        lineNumberReader.close();
                                    } catch (Exception unused2) {
                                        lineNumberReader2 = lineNumberReader;
                                        if (lineNumberReader2 != null) {
                                            lineNumberReader2.close();
                                        }
                                        if (this.j == null) {
                                        }
                                        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.h).b(this.l);
                                        if (aVarB.ah() == 0) {
                                        }
                                        this.c = iAh;
                                        this.d = iAh * 2;
                                        this.e = aVarB.aj() == 0 ? aVarB.aj() : this.e;
                                        b();
                                        if (this.j == null) {
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (lineNumberReader != null) {
                                            try {
                                                lineNumberReader.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Exception unused4) {
                                } catch (Throwable th3) {
                                    lineNumberReader = null;
                                    th = th3;
                                }
                                if (this.j == null) {
                                    this.j = new AtomicInteger(0);
                                }
                                com.anythink.core.d.a aVarB2 = com.anythink.core.d.b.a(this.h).b(this.l);
                                int iAh = aVarB2.ah() == 0 ? aVarB2.ah() : this.c;
                                this.c = iAh;
                                this.d = iAh * 2;
                                this.e = aVarB2.aj() == 0 ? aVarB2.aj() : this.e;
                                b();
                            } catch (Error unused5) {
                                if (this.j == null) {
                                    atomicInteger = new AtomicInteger(0);
                                }
                            }
                        } catch (OutOfMemoryError | StackOverflowError unused6) {
                            System.gc();
                            if (this.j == null) {
                                atomicInteger = new AtomicInteger(0);
                            }
                        }
                    } catch (Exception unused7) {
                        if (this.j == null) {
                            atomicInteger = new AtomicInteger(0);
                        }
                    }
                    if (this.j == null) {
                        atomicInteger = new AtomicInteger(0);
                        this.j = atomicInteger;
                    }
                } catch (Throwable th4) {
                    if (this.j == null) {
                        this.j = new AtomicInteger(0);
                    }
                    throw th4;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0078, code lost:
    
        if (r0 == null) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a(com.anythink.core.common.f.k kVar, boolean z) {
        String string;
        FileWriter fileWriter;
        if (this.i == null || this.j == null) {
            a(n.a().f());
        }
        if (this.i != null && this.j != null) {
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.h).b(this.l);
            if (aVarB != null) {
                int iAh = aVarB.ah() != 0 ? aVarB.ah() : this.c;
                this.c = iAh;
                this.d = iAh * 2;
                this.e = aVarB.aj();
            }
            FileWriter fileWriter2 = null;
            try {
                try {
                    try {
                        string = kVar.a().toString();
                        fileWriter = new FileWriter(this.i, true);
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Exception unused) {
                } catch (OutOfMemoryError | StackOverflowError unused2) {
                } catch (Error unused3) {
                }
            } catch (IOException unused4) {
            }
            try {
                fileWriter.append((CharSequence) string);
                fileWriter.append((CharSequence) "\n");
                fileWriter.flush();
                fileWriter.close();
                this.j.incrementAndGet();
                fileWriter.close();
            } catch (Exception unused5) {
                fileWriter2 = fileWriter;
                if (fileWriter2 != null) {
                    fileWriter2.close();
                }
                a(z);
            } catch (OutOfMemoryError | StackOverflowError unused6) {
                fileWriter2 = fileWriter;
                System.gc();
                if (fileWriter2 != null) {
                    fileWriter2.close();
                }
            } catch (Error unused7) {
                fileWriter2 = fileWriter;
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                if (fileWriter2 != null) {
                    try {
                        fileWriter2.close();
                    } catch (IOException unused8) {
                    }
                }
                throw th;
            }
            a(z);
        }
    }

    public final void b() {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.n.d.3
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:53:0x0121 A[PHI: r0
              0x0121: PHI (r0v23 ??) = (r0v58 ??), (r0v59 ??), (r0v60 ??) binds: [B:58:0x0135, B:52:0x011f, B:56:0x012f] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Type inference failed for: r0v17 */
            /* JADX WARN: Type inference failed for: r0v18 */
            /* JADX WARN: Type inference failed for: r0v21 */
            /* JADX WARN: Type inference failed for: r0v22 */
            /* JADX WARN: Type inference failed for: r0v23, types: [java.io.BufferedReader] */
            /* JADX WARN: Type inference failed for: r0v24 */
            /* JADX WARN: Type inference failed for: r0v25 */
            /* JADX WARN: Type inference failed for: r0v27 */
            /* JADX WARN: Type inference failed for: r0v28 */
            /* JADX WARN: Type inference failed for: r0v29 */
            /* JADX WARN: Type inference failed for: r0v46 */
            /* JADX WARN: Type inference failed for: r0v47 */
            /* JADX WARN: Type inference failed for: r0v48 */
            /* JADX WARN: Type inference failed for: r0v53 */
            /* JADX WARN: Type inference failed for: r0v54 */
            /* JADX WARN: Type inference failed for: r0v55 */
            /* JADX WARN: Type inference failed for: r0v56 */
            /* JADX WARN: Type inference failed for: r0v57 */
            /* JADX WARN: Type inference failed for: r0v58 */
            /* JADX WARN: Type inference failed for: r0v59 */
            /* JADX WARN: Type inference failed for: r0v60 */
            /* JADX WARN: Type inference failed for: r3v2 */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.io.BufferedReader] */
            /* JADX WARN: Type inference failed for: r3v4, types: [java.io.BufferedReader] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void run() throws IOException {
                ?? bufferedReader;
                Throwable th;
                ?? r0;
                ArrayList arrayList;
                int i;
                Object obj;
                com.anythink.core.common.h.b bVar;
                k kVar;
                String line;
                synchronized (this) {
                    if (d.this.h == null) {
                        return;
                    }
                    if ((System.currentTimeMillis() - s.a(d.this.h, h.p, "LOG_SEND_TIME", (Long) 0L).longValue() > d.this.e || (d.this.j != null && d.this.j.get() >= d.this.c)) && !d.this.k && d.this.j != null && d.this.j.get() > 0) {
                        d.this.k = true;
                        ?? r02 = 0;
                        ?? r03 = 0;
                        ?? r04 = 0;
                        ?? r05 = 0;
                        try {
                            try {
                                bufferedReader = new BufferedReader(new FileReader(d.this.i));
                            } catch (Throwable th2) {
                                bufferedReader = r02;
                                th = th2;
                            }
                            try {
                                try {
                                    arrayList = new ArrayList();
                                    i = 0;
                                    while (i < d.this.d && (line = bufferedReader.readLine()) != null) {
                                        arrayList.add(line);
                                        i++;
                                    }
                                    bufferedReader.close();
                                } catch (OutOfMemoryError | StackOverflowError unused) {
                                    r05 = bufferedReader;
                                    d.this.k = false;
                                    System.gc();
                                    r02 = r05;
                                    if (r05 != 0) {
                                        r0 = r05;
                                        r0.close();
                                        r02 = r0;
                                    }
                                }
                            } catch (Error unused2) {
                                r03 = bufferedReader;
                                d.this.k = false;
                                r02 = r03;
                                r0 = r03;
                                if (r03 != 0) {
                                    r0.close();
                                    r02 = r0;
                                }
                            } catch (Exception unused3) {
                                r04 = bufferedReader;
                                d.this.k = false;
                                r02 = r04;
                                r0 = r04;
                                if (r04 != 0) {
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (bufferedReader != 0) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception unused4) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Error unused5) {
                        } catch (Exception unused6) {
                        } catch (OutOfMemoryError | StackOverflowError unused7) {
                        }
                        if (i == 0) {
                            d.this.k = false;
                            try {
                                bufferedReader.close();
                            } catch (Exception unused8) {
                            }
                            return;
                        }
                        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
                        if (aVarB == null) {
                            com.anythink.core.common.h.b bVar2 = new com.anythink.core.common.h.b(d.this.h, 0, arrayList);
                            kVar = d.this.m;
                            bVar = bVar2;
                        } else if (aVarB.w() != 1) {
                            com.anythink.core.common.h.b bVar3 = new com.anythink.core.common.h.b(d.this.h, aVarB.w(), arrayList);
                            kVar = d.this.m;
                            bVar = bVar3;
                        } else {
                            com.anythink.core.common.h.a.a aVar = new com.anythink.core.common.h.a.a(arrayList);
                            aVar.a(1, aVarB.v());
                            c.a aVar2 = d.this.n;
                            aVar.a(aVar2);
                            obj = aVar2;
                            bufferedReader.close();
                            r02 = obj;
                        }
                        bVar.a(0, kVar);
                        obj = kVar;
                        bufferedReader.close();
                        r02 = obj;
                    }
                }
            }
        }, 13, true);
    }
}
