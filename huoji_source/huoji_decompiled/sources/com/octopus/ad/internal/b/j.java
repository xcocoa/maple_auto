package com.octopus.ad.internal.b;

import android.text.TextUtils;
import com.octopus.ad.internal.utilities.HaoboLog;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    private final ExecutorService a = Executors.newSingleThreadExecutor();
    private final String b;
    private final int c;

    public class a implements Callable<Boolean> {
        private a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(j.this.a());
        }
    }

    public j(String str, int i) {
        this.b = (String) k.a(str);
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() throws m {
        h hVar = new h(b());
        try {
            byte[] bytes = "ping ok".getBytes();
            hVar.a(0);
            byte[] bArr = new byte[bytes.length];
            hVar.a(bArr);
            boolean zEquals = Arrays.equals(bytes, bArr);
            HaoboLog.i(HaoboLog.pingerLogTag, "Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
            return zEquals;
        } catch (m e) {
            HaoboLog.e(HaoboLog.pingerLogTag, "Error reading ping response", e);
            return false;
        } finally {
            hVar.b();
        }
    }

    private String b() {
        String strA = com.octopus.ad.utils.b.c.a("aHR0cDovLyVzOiVkLyVz");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return String.format(Locale.US, strA, this.b, Integer.valueOf(this.c), "ping");
    }

    public void a(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }

    public boolean a(int i, int i2) {
        k.a(i >= 1);
        k.a(i2 > 0);
        int i3 = 0;
        while (i3 < i) {
            try {
            } catch (InterruptedException e) {
                e = e;
                HaoboLog.e(HaoboLog.pingerLogTag, "Error pinging server due to unexpected error", e);
            } catch (ExecutionException e2) {
                e = e2;
                HaoboLog.e(HaoboLog.pingerLogTag, "Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                HaoboLog.w(HaoboLog.pingerLogTag, "Error pinging server (attempt: " + i3 + ", timeout: " + i2 + "). ");
            }
            if (((Boolean) this.a.submit(new a()).get(i2, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i3++;
            i2 *= 2;
        }
        String str = String.format("Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, create issue here https://github.com/danikula/AndroidVideoCache/issues", Integer.valueOf(i3), Integer.valueOf(i2 / 2));
        HaoboLog.e(HaoboLog.pingerLogTag, str, new m(str));
        return false;
    }

    public boolean a(String str) {
        return "ping".equals(str);
    }
}
