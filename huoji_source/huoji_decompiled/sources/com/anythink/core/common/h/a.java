package com.anythink.core.common.h;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.h;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.SSLException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private static final String a = "http.loader";
    public k m;
    public boolean n;
    public String o;

    /* JADX INFO: renamed from: com.anythink.core.common.h.a$1, reason: invalid class name */
    public class AnonymousClass1 extends com.anythink.core.common.o.b.d {
        public final /* synthetic */ int a;

        public AnonymousClass1(int i) {
            this.a = i;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(12:484|70|(2:71|(1:73)(1:486))|74|(2:76|(3:78|(1:80)|81)(7:83|411|86|415|87|(2:425|91)|(2:95|96)(1:491)))(1:84)|82|411|86|415|87|(0)|(0)(0)) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:191:0x029b A[Catch: all -> 0x04f7, TryCatch #63 {all -> 0x04f7, blocks: (B:69:0x012f, B:189:0x0283, B:191:0x029b, B:192:0x029f, B:211:0x02d0, B:213:0x02eb, B:214:0x02ef, B:233:0x0320, B:235:0x032d, B:236:0x0331, B:255:0x0362, B:257:0x036f, B:258:0x0373, B:277:0x03a3, B:296:0x03cf, B:315:0x0407, B:334:0x043f, B:353:0x0477, B:372:0x04bc), top: B:457:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:206:0x02c7  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x02eb A[Catch: all -> 0x04f7, TryCatch #63 {all -> 0x04f7, blocks: (B:69:0x012f, B:189:0x0283, B:191:0x029b, B:192:0x029f, B:211:0x02d0, B:213:0x02eb, B:214:0x02ef, B:233:0x0320, B:235:0x032d, B:236:0x0331, B:255:0x0362, B:257:0x036f, B:258:0x0373, B:277:0x03a3, B:296:0x03cf, B:315:0x0407, B:334:0x043f, B:353:0x0477, B:372:0x04bc), top: B:457:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:228:0x0317  */
        /* JADX WARN: Removed duplicated region for block: B:235:0x032d A[Catch: all -> 0x04f7, TryCatch #63 {all -> 0x04f7, blocks: (B:69:0x012f, B:189:0x0283, B:191:0x029b, B:192:0x029f, B:211:0x02d0, B:213:0x02eb, B:214:0x02ef, B:233:0x0320, B:235:0x032d, B:236:0x0331, B:255:0x0362, B:257:0x036f, B:258:0x0373, B:277:0x03a3, B:296:0x03cf, B:315:0x0407, B:334:0x043f, B:353:0x0477, B:372:0x04bc), top: B:457:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:250:0x0359  */
        /* JADX WARN: Removed duplicated region for block: B:257:0x036f A[Catch: all -> 0x04f7, TryCatch #63 {all -> 0x04f7, blocks: (B:69:0x012f, B:189:0x0283, B:191:0x029b, B:192:0x029f, B:211:0x02d0, B:213:0x02eb, B:214:0x02ef, B:233:0x0320, B:235:0x032d, B:236:0x0331, B:255:0x0362, B:257:0x036f, B:258:0x0373, B:277:0x03a3, B:296:0x03cf, B:315:0x0407, B:334:0x043f, B:353:0x0477, B:372:0x04bc), top: B:457:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:272:0x039b  */
        /* JADX WARN: Removed duplicated region for block: B:291:0x03c6  */
        /* JADX WARN: Removed duplicated region for block: B:310:0x03fe  */
        /* JADX WARN: Removed duplicated region for block: B:329:0x0436  */
        /* JADX WARN: Removed duplicated region for block: B:348:0x046e  */
        /* JADX WARN: Removed duplicated region for block: B:367:0x04b3  */
        /* JADX WARN: Removed duplicated region for block: B:386:0x04f3  */
        /* JADX WARN: Removed duplicated region for block: B:402:0x050f  */
        /* JADX WARN: Removed duplicated region for block: B:405:0x049e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:407:0x0421 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:409:0x04a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:413:0x0428 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:417:0x04ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:419:0x042f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:421:0x03b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:423:0x02b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:425:0x01b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:427:0x03b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:429:0x02b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:431:0x03bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:433:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:435:0x0344 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:437:0x034b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:439:0x0352 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:441:0x0459 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:443:0x04de A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:445:0x0460 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:447:0x04e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:449:0x0467 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:451:0x03e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:453:0x04ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:455:0x03f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:458:0x03f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:460:0x04fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:462:0x0501 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:464:0x0302 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:466:0x0386 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:468:0x0508 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:470:0x0309 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:472:0x038d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:474:0x0310 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:476:0x0394 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:491:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:492:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:493:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:494:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:495:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:496:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:497:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:498:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:499:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:500:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:501:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:502:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01b9  */
        /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v10 */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v12 */
        /* JADX WARN: Type inference failed for: r12v13 */
        /* JADX WARN: Type inference failed for: r12v14 */
        /* JADX WARN: Type inference failed for: r12v15 */
        /* JADX WARN: Type inference failed for: r12v16 */
        /* JADX WARN: Type inference failed for: r12v17 */
        /* JADX WARN: Type inference failed for: r12v18 */
        /* JADX WARN: Type inference failed for: r12v19 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v20 */
        /* JADX WARN: Type inference failed for: r12v21 */
        /* JADX WARN: Type inference failed for: r12v22 */
        /* JADX WARN: Type inference failed for: r12v23, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v24, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v25, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v26, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v27, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v28, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v29, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v30, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v31, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v32, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v33, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v35, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r12v36 */
        /* JADX WARN: Type inference failed for: r12v37 */
        /* JADX WARN: Type inference failed for: r12v38 */
        /* JADX WARN: Type inference failed for: r12v39 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v40 */
        /* JADX WARN: Type inference failed for: r12v41 */
        /* JADX WARN: Type inference failed for: r12v42 */
        /* JADX WARN: Type inference failed for: r12v43 */
        /* JADX WARN: Type inference failed for: r12v44 */
        /* JADX WARN: Type inference failed for: r12v45 */
        /* JADX WARN: Type inference failed for: r12v46 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v6 */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r12v8 */
        /* JADX WARN: Type inference failed for: r12v9 */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v13 */
        /* JADX WARN: Type inference failed for: r2v14 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v18 */
        /* JADX WARN: Type inference failed for: r2v20 */
        /* JADX WARN: Type inference failed for: r2v22 */
        /* JADX WARN: Type inference failed for: r2v24 */
        /* JADX WARN: Type inference failed for: r2v26 */
        /* JADX WARN: Type inference failed for: r2v28 */
        /* JADX WARN: Type inference failed for: r2v30 */
        /* JADX WARN: Type inference failed for: r2v31, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v32, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v33, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v34, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v35, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v36, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v37, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v38, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v39, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v40, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v41, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v46 */
        /* JADX WARN: Type inference failed for: r2v60, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v68 */
        /* JADX WARN: Type inference failed for: r2v69 */
        /* JADX WARN: Type inference failed for: r2v70 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v12 */
        /* JADX WARN: Type inference failed for: r3v13 */
        /* JADX WARN: Type inference failed for: r3v14 */
        /* JADX WARN: Type inference failed for: r3v15 */
        /* JADX WARN: Type inference failed for: r3v16 */
        /* JADX WARN: Type inference failed for: r3v17 */
        /* JADX WARN: Type inference failed for: r3v18 */
        /* JADX WARN: Type inference failed for: r3v19 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v20, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v21, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v22, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v23, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v24, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v25, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v26, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v27, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v28, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v29, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v30, types: [java.io.InputStreamReader] */
        /* JADX WARN: Type inference failed for: r3v31 */
        /* JADX WARN: Type inference failed for: r3v32 */
        /* JADX WARN: Type inference failed for: r3v33 */
        /* JADX WARN: Type inference failed for: r3v34 */
        /* JADX WARN: Type inference failed for: r3v35 */
        /* JADX WARN: Type inference failed for: r3v36 */
        /* JADX WARN: Type inference failed for: r3v37 */
        /* JADX WARN: Type inference failed for: r3v38 */
        /* JADX WARN: Type inference failed for: r3v39 */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v50 */
        /* JADX WARN: Type inference failed for: r3v51 */
        /* JADX WARN: Type inference failed for: r3v53 */
        /* JADX WARN: Type inference failed for: r3v55 */
        /* JADX WARN: Type inference failed for: r3v57 */
        /* JADX WARN: Type inference failed for: r3v59 */
        /* JADX WARN: Type inference failed for: r3v6 */
        /* JADX WARN: Type inference failed for: r3v61 */
        /* JADX WARN: Type inference failed for: r3v63 */
        /* JADX WARN: Type inference failed for: r3v65 */
        /* JADX WARN: Type inference failed for: r3v67 */
        /* JADX WARN: Type inference failed for: r3v69 */
        /* JADX WARN: Type inference failed for: r3v7 */
        /* JADX WARN: Type inference failed for: r3v70, types: [java.io.InputStreamReader, java.io.Reader] */
        /* JADX WARN: Type inference failed for: r3v8 */
        /* JADX WARN: Type inference failed for: r3v82 */
        /* JADX WARN: Type inference failed for: r3v9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void b(String str) throws Throwable {
            Object obj;
            ?? A;
            ?? inputStreamReader;
            ?? r3;
            Exception e;
            SSLException e2;
            UnknownHostException e3;
            SocketTimeoutException e4;
            SocketException e5;
            ConnectException e6;
            Error e7;
            StackOverflowError e8;
            OutOfMemoryError e9;
            ?? r2;
            BufferedReader bufferedReader;
            Object objA;
            a aVar;
            int i;
            byte[] bArrD;
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    a.this.o = str;
                    str = (HttpURLConnection) new URL(str).openConnection();
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e10) {
                e = e10;
                str = 0;
                inputStreamReader = 0;
            } catch (OutOfMemoryError e11) {
                e = e11;
                str = 0;
                inputStreamReader = 0;
            } catch (StackOverflowError e12) {
                e = e12;
                str = 0;
                inputStreamReader = 0;
            } catch (Error e13) {
                e = e13;
                str = 0;
                inputStreamReader = 0;
            } catch (ConnectException e14) {
                e = e14;
                str = 0;
                inputStreamReader = 0;
            } catch (SocketException e15) {
                e = e15;
                str = 0;
                inputStreamReader = 0;
            } catch (SocketTimeoutException e16) {
                e = e16;
                str = 0;
                inputStreamReader = 0;
            } catch (UnknownHostException e17) {
                e = e17;
                str = 0;
                inputStreamReader = 0;
            } catch (SSLException e18) {
                e = e18;
                str = 0;
                inputStreamReader = 0;
            } catch (ConnectTimeoutException e19) {
                e = e19;
                str = 0;
                A = 0;
            } catch (Throwable th2) {
                th = th2;
                str = 0;
                obj = null;
            }
            try {
                int iA = a.this.a();
                if (iA != 1 && iA != 2) {
                    iA = 2;
                }
                if (iA == 1) {
                    str.setDoInput(true);
                    str.setDoOutput(true);
                    str.setRequestMethod("POST");
                    str.setUseCaches(false);
                }
                if (iA == 2) {
                    str.setInstanceFollowRedirects(false);
                }
                Map<String, String> mapC = a.this.c();
                if (mapC != null && mapC.size() > 0) {
                    for (String str2 : mapC.keySet()) {
                        str.addRequestProperty(str2, mapC.get(str2));
                    }
                }
                a aVar2 = a.this;
                if (aVar2.n) {
                    aVar2.c(this.a);
                    if (str != 0) {
                        str.disconnect();
                        return;
                    }
                    return;
                }
                if (com.anythink.core.common.b.n.a().c("ua")) {
                    str.addRequestProperty("User-Agent", com.anythink.core.common.o.h.a());
                }
                str.setConnectTimeout(60000);
                str.setReadTimeout(60000);
                str.connect();
                if (iA == 1 && (bArrD = a.this.d()) != null) {
                    OutputStream outputStream = str.getOutputStream();
                    outputStream.write(bArrD);
                    outputStream.flush();
                    outputStream.close();
                }
                int responseCode = str.getResponseCode();
                if (!a.this.a(responseCode) && responseCode != 200) {
                    if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                        a.this.a(this.a, responseCode, "Http respond status code is ".concat(String.valueOf(responseCode)), ErrorCode.getErrorCode(ErrorCode.httpStatuException, String.valueOf(responseCode), str.getResponseMessage()));
                        if (str != 0) {
                            str.disconnect();
                            return;
                        }
                        return;
                    }
                    a aVar3 = a.this;
                    if (aVar3.n) {
                        aVar3.c(this.a);
                    } else {
                        String headerField = str.getHeaderField("Location");
                        if (headerField != null && headerField.toLowerCase().startsWith("http")) {
                            b(headerField);
                        }
                    }
                    if (str != 0) {
                        str.disconnect();
                        return;
                    }
                    return;
                }
                a aVar4 = a.this;
                if (aVar4.n) {
                    aVar4.c(this.a);
                    if (str != 0) {
                        str.disconnect();
                        return;
                    }
                    return;
                }
                A = a.a((HttpURLConnection) str);
                try {
                    inputStreamReader = new InputStreamReader(A);
                    try {
                        bufferedReader = new BufferedReader(inputStreamReader);
                    } catch (OutOfMemoryError e20) {
                        e9 = e20;
                    } catch (StackOverflowError e21) {
                        e8 = e21;
                    } catch (Error e22) {
                        e7 = e22;
                    } catch (ConnectException e23) {
                        e6 = e23;
                    } catch (SocketException e24) {
                        e5 = e24;
                    } catch (SocketTimeoutException e25) {
                        e4 = e25;
                    } catch (UnknownHostException e26) {
                        e3 = e26;
                    } catch (SSLException e27) {
                        e2 = e27;
                    } catch (ConnectTimeoutException e28) {
                        e = e28;
                    } catch (Exception e29) {
                        e = e29;
                    }
                } catch (Error e30) {
                    e7 = e30;
                    inputStreamReader = 0;
                } catch (Exception e31) {
                    e = e31;
                    inputStreamReader = 0;
                } catch (OutOfMemoryError e32) {
                    e9 = e32;
                    inputStreamReader = 0;
                } catch (StackOverflowError e33) {
                    e8 = e33;
                    inputStreamReader = 0;
                } catch (ConnectException e34) {
                    e6 = e34;
                    inputStreamReader = 0;
                } catch (SocketException e35) {
                    e5 = e35;
                    inputStreamReader = 0;
                } catch (SocketTimeoutException e36) {
                    e4 = e36;
                    inputStreamReader = 0;
                } catch (UnknownHostException e37) {
                    e3 = e37;
                    inputStreamReader = 0;
                } catch (SSLException e38) {
                    e2 = e38;
                    inputStreamReader = 0;
                } catch (ConnectTimeoutException e39) {
                    e = e39;
                    inputStreamReader = 0;
                } catch (Throwable th3) {
                    th = th3;
                    r3 = 0;
                    r2 = A;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(line);
                        }
                    }
                    if (a.this.n()) {
                        String strTrim = sb.toString().trim();
                        JSONObject jSONObject = new JSONObject(strTrim);
                        int iOptInt = jSONObject.optInt("code");
                        if (iOptInt != 0) {
                            a.this.a(this.a, i.k, strTrim, ErrorCode.getErrorCode(ErrorCode.statuError, String.valueOf(iOptInt), strTrim));
                            bufferedReader.close();
                            inputStreamReader.close();
                            if (A != 0) {
                                try {
                                    A.close();
                                } catch (Throwable unused) {
                                }
                            }
                            if (str == 0) {
                                str.disconnect();
                                return;
                            }
                            return;
                        }
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(h.e.e);
                        if (jSONObjectOptJSONObject == null) {
                            jSONObjectOptJSONObject = new JSONObject();
                        }
                        a aVar5 = a.this;
                        str.getHeaderFields();
                        objA = aVar5.a(jSONObjectOptJSONObject);
                        aVar = a.this;
                        i = this.a;
                    } else {
                        a aVar6 = a.this;
                        str.getHeaderFields();
                        objA = aVar6.a(sb.toString().trim());
                        aVar = a.this;
                        i = this.a;
                    }
                    aVar.a(i, objA);
                    bufferedReader.close();
                    inputStreamReader.close();
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (OutOfMemoryError e40) {
                    e9 = e40;
                    bufferedReader2 = bufferedReader;
                    System.gc();
                    String message = e9.getMessage();
                    if (e9.getMessage() != null) {
                    }
                    a.this.a(this.a, i.e, message, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e9.getMessage()));
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (StackOverflowError e41) {
                    e8 = e41;
                    bufferedReader2 = bufferedReader;
                    System.gc();
                    String message2 = e8.getMessage();
                    if (e8.getMessage() != null) {
                    }
                    a.this.a(this.a, i.f, message2, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e8.getMessage()));
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (Error e42) {
                    e7 = e42;
                    bufferedReader2 = bufferedReader;
                    new StringBuilder("Error msg = ").append(e7.getMessage());
                    System.gc();
                    String message3 = e7.getMessage();
                    if (e7.getMessage() != null) {
                    }
                    a.this.a(this.a, i.j, message3, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e7.getMessage()));
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (ConnectException e43) {
                    e6 = e43;
                    bufferedReader2 = bufferedReader;
                    a.this.a(ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e6.getMessage()));
                    a.this.a(this.a, i.b, "Connect error.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e6.getMessage()));
                    a.a(a.this);
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (SocketException e44) {
                    e5 = e44;
                    bufferedReader2 = bufferedReader;
                    a.this.a(this.a, i.h, "connect socket failed.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e5.getMessage()));
                    a.a(a.this);
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (SocketTimeoutException e45) {
                    e4 = e45;
                    bufferedReader2 = bufferedReader;
                    a.this.a(this.a, i.c, "Connect timeout.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e4.getMessage()));
                    a.a(a.this);
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (UnknownHostException e46) {
                    e3 = e46;
                    bufferedReader2 = bufferedReader;
                    a.this.a(ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e3.getMessage()));
                    a.this.a(this.a, -1000, "UnknownHostException", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e3.getMessage()));
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (SSLException e47) {
                    e2 = e47;
                    bufferedReader2 = bufferedReader;
                    a.this.a(this.a, i.g, "connect ssl failed.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e2.getMessage()));
                    a.a(a.this);
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (ConnectTimeoutException e48) {
                    e = e48;
                    bufferedReader2 = bufferedReader;
                    a.this.a(this.a, e);
                    a.a(a.this);
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (Exception e49) {
                    e = e49;
                    bufferedReader2 = bufferedReader;
                    new StringBuilder("Exception msg = ").append(e.getMessage());
                    String message4 = e.getMessage();
                    if (e.getMessage() != null) {
                    }
                    a.this.a(this.a, i.i, message4, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e.getMessage()));
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != 0) {
                    }
                    if (A != 0) {
                    }
                    if (str == 0) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader2 = bufferedReader;
                    r2 = A;
                    r3 = inputStreamReader;
                    if (bufferedReader2 != null) {
                    }
                    if (r3 != 0) {
                    }
                    if (r2 != 0) {
                    }
                    if (str != 0) {
                    }
                }
            } catch (OutOfMemoryError e50) {
                e = e50;
                inputStreamReader = 0;
                str = str;
                e9 = e;
                A = inputStreamReader;
                System.gc();
                String message5 = e9.getMessage();
                if (e9.getMessage() != null) {
                    message5 = e9.getMessage();
                }
                a.this.a(this.a, i.e, message5, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e9.getMessage()));
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused2) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused3) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused4) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (StackOverflowError e51) {
                e = e51;
                inputStreamReader = 0;
                str = str;
                e8 = e;
                A = inputStreamReader;
                System.gc();
                String message22 = e8.getMessage();
                if (e8.getMessage() != null) {
                    message22 = e8.getMessage();
                }
                a.this.a(this.a, i.f, message22, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e8.getMessage()));
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused5) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused6) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused7) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (Error e52) {
                e = e52;
                inputStreamReader = 0;
                str = str;
                e7 = e;
                A = inputStreamReader;
                new StringBuilder("Error msg = ").append(e7.getMessage());
                System.gc();
                String message32 = e7.getMessage();
                if (e7.getMessage() != null) {
                    message32 = e7.getMessage();
                }
                a.this.a(this.a, i.j, message32, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e7.getMessage()));
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused8) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused9) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused10) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (ConnectException e53) {
                e = e53;
                inputStreamReader = 0;
                str = str;
                e6 = e;
                A = inputStreamReader;
                a.this.a(ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e6.getMessage()));
                a.this.a(this.a, i.b, "Connect error.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e6.getMessage()));
                a.a(a.this);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused11) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused12) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused13) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (SocketException e54) {
                e = e54;
                inputStreamReader = 0;
                str = str;
                e5 = e;
                A = inputStreamReader;
                a.this.a(this.a, i.h, "connect socket failed.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e5.getMessage()));
                a.a(a.this);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused14) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused15) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused16) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (SocketTimeoutException e55) {
                e = e55;
                inputStreamReader = 0;
                str = str;
                e4 = e;
                A = inputStreamReader;
                a.this.a(this.a, i.c, "Connect timeout.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e4.getMessage()));
                a.a(a.this);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused17) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused18) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused19) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (UnknownHostException e56) {
                e = e56;
                inputStreamReader = 0;
                str = str;
                e3 = e;
                A = inputStreamReader;
                a.this.a(ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e3.getMessage()));
                a.this.a(this.a, -1000, "UnknownHostException", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e3.getMessage()));
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused20) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused21) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused22) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (SSLException e57) {
                e = e57;
                inputStreamReader = 0;
                str = str;
                e2 = e;
                A = inputStreamReader;
                a.this.a(this.a, i.g, "connect ssl failed.", ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e2.getMessage()));
                a.a(a.this);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused23) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused24) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused25) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (ConnectTimeoutException e58) {
                e = e58;
                A = 0;
                str = str;
                inputStreamReader = A;
                a.this.a(this.a, e);
                a.a(a.this);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused26) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused27) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused28) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (Exception e59) {
                e = e59;
                inputStreamReader = 0;
                str = str;
                e = e;
                A = inputStreamReader;
                new StringBuilder("Exception msg = ").append(e.getMessage());
                String message42 = e.getMessage();
                if (e.getMessage() != null) {
                    message42 = e.getMessage();
                }
                a.this.a(this.a, i.i, message42, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e.getMessage()));
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused29) {
                    }
                }
                if (inputStreamReader != 0) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused30) {
                    }
                }
                if (A != 0) {
                    try {
                        A.close();
                    } catch (Throwable unused31) {
                    }
                }
                if (str == 0) {
                    str.disconnect();
                }
            } catch (Throwable th5) {
                th = th5;
                obj = null;
                str = str;
                r3 = obj;
                r2 = obj;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused32) {
                    }
                }
                if (r3 != 0) {
                    try {
                        r3.close();
                    } catch (Throwable unused33) {
                    }
                }
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (Throwable unused34) {
                    }
                }
                if (str != 0) {
                    throw th;
                }
                str.disconnect();
                throw th;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
        @Override // com.anythink.core.common.o.b.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() throws Throwable {
            k kVar;
            try {
                k kVar2 = a.this.m;
                if (kVar2 != null) {
                    kVar2.onLoadStart(this.a);
                }
                b(a.this.b());
            } catch (Exception e) {
                String message = e.getMessage();
                if (e.getMessage() != null) {
                    message = e.getMessage();
                }
                k kVar3 = a.this.m;
                if (kVar3 != null) {
                    kVar3.onLoadError(this.a, message, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e.getMessage()));
                }
            } catch (OutOfMemoryError e2) {
                e = e2;
                System.gc();
                String message2 = e.getMessage();
                if (e.getMessage() != null) {
                    message2 = e.getMessage();
                }
                kVar = a.this.m;
                if (kVar == null) {
                    kVar.onLoadError(this.a, message2, ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, e.getMessage()));
                }
            } catch (StackOverflowError e3) {
                e = e3;
                System.gc();
                String message22 = e.getMessage();
                if (e.getMessage() != null) {
                }
                kVar = a.this.m;
                if (kVar == null) {
                }
            }
        }
    }

    public static InputStream a(HttpURLConnection httpURLConnection) {
        InputStream inputStream = null;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (Exception unused) {
        }
        if (!"gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"))) {
            return inputStream;
        }
        try {
            byte[] bArr = new byte[2];
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedInputStream.mark(2);
            int i = bufferedInputStream.read(bArr);
            bufferedInputStream.reset();
            return (i == -1 || (((bArr[1] & 255) << 8) | (bArr[0] & 255)) != 35615) ? bufferedInputStream : new GZIPInputStream(bufferedInputStream);
        } catch (Exception unused2) {
            return inputStream;
        }
    }

    public static /* synthetic */ void a(a aVar) {
        if ((aVar.l() & 8) == 8) {
            com.anythink.core.common.e.c.a().b(aVar.o);
        }
    }

    public static byte[] b(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes("utf-8"));
            gZIPOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    private void d(int i) {
        com.anythink.core.common.o.b.b bVarA;
        int i2;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(i);
        if (o()) {
            bVarA = com.anythink.core.common.o.b.b.a();
            i2 = 1;
        } else {
            bVarA = com.anythink.core.common.o.b.b.a();
            i2 = 10;
        }
        bVarA.a((com.anythink.core.common.o.b.d) anonymousClass1, i2);
    }

    private void p() {
        this.n = true;
    }

    private void q() {
        if ((l() & 8) == 8) {
            com.anythink.core.common.e.c.a().b(this.o);
        }
    }

    public abstract int a();

    public abstract Object a(Object obj);

    public final void a(int i, int i2, String str, AdError adError) {
        k kVar = this.m;
        if (kVar != null) {
            kVar.onLoadError(i, str, adError);
        }
        b(adError);
        b(i2);
    }

    public void a(int i, k kVar) {
        com.anythink.core.common.o.b.b bVarA;
        int i2;
        this.n = false;
        this.m = kVar;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(i);
        if (o()) {
            bVarA = com.anythink.core.common.o.b.b.a();
            i2 = 1;
        } else {
            bVarA = com.anythink.core.common.o.b.b.a();
            i2 = 10;
        }
        bVarA.a((com.anythink.core.common.o.b.d) anonymousClass1, i2);
    }

    public void a(int i, Object obj) {
        k kVar = this.m;
        if (kVar != null) {
            kVar.onLoadFinish(i, obj);
        }
    }

    public final void a(int i, ConnectTimeoutException connectTimeoutException) {
        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.exception, ErrorCode.exception, connectTimeoutException.getMessage());
        k kVar = this.m;
        if (kVar != null) {
            kVar.onLoadError(i, "Connect timeout.", errorCode);
        }
        b(errorCode);
        b(i.b);
    }

    public abstract void a(AdError adError);

    public abstract boolean a(int i);

    public abstract String b();

    public void b(int i) {
    }

    public abstract void b(AdError adError);

    public abstract Map<String, String> c();

    public final void c(int i) {
        k kVar = this.m;
        if (kVar != null) {
            kVar.onLoadCanceled(i);
        }
    }

    public abstract byte[] d();

    public JSONObject e() {
        return c.a(l());
    }

    public JSONObject f() {
        return c.b(l());
    }

    public String g() {
        HashMap map = new HashMap();
        String strA = com.anythink.core.common.o.d.a(e().toString());
        String strA2 = com.anythink.core.common.o.d.a(f().toString());
        map.put(c.O, m());
        map.put("p", strA);
        map.put(c.V, strA2);
        ArrayList<String> arrayList = new ArrayList(map.size());
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str);
            sb.append("=");
            sb.append(map.get(str));
        }
        new StringBuilder(" sorted value list:").append(sb.toString());
        map.put("sign", com.anythink.core.common.o.g.c(j() + sb.toString()));
        if (k() != null) {
            map.putAll(k());
        }
        Set<String> setKeySet = map.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : setKeySet) {
                jSONObject.put(str2, String.valueOf(map.get(str2)));
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            System.gc();
            return null;
        }
    }

    public abstract String h();

    public abstract Context i();

    public abstract String j();

    public abstract Map<String, Object> k();

    public int l() {
        return 0;
    }

    public String m() {
        return "1.0";
    }

    public boolean n() {
        return false;
    }

    public boolean o() {
        return false;
    }
}
