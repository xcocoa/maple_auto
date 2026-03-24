package z2;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import z2.o0O0oo00;

/* JADX INFO: loaded from: classes.dex */
public class o0OO00OO implements o0O0oo00<InputStream> {
    private static final String OooooOo = "HttpUrlFetcher";

    @VisibleForTesting
    public static final OooO0O0 Oooooo = new OooO00o();
    private static final int Oooooo0 = 5;
    private static final int OoooooO = -1;
    private final oOo0o0oO OoooOoO;
    private final int OoooOoo;
    private final OooO0O0 Ooooo00;
    private HttpURLConnection Ooooo0o;
    private InputStream OooooO0;
    private volatile boolean OooooOO;

    public static class OooO00o implements OooO0O0 {
        @Override // z2.o0OO00OO.OooO0O0
        public HttpURLConnection OooO00o(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    public interface OooO0O0 {
        HttpURLConnection OooO00o(URL url) throws IOException;
    }

    public o0OO00OO(oOo0o0oO ooo0o0oo, int i) {
        this(ooo0o0oo, i, Oooooo);
    }

    @VisibleForTesting
    public o0OO00OO(oOo0o0oO ooo0o0oo, int i, OooO0O0 oooO0O0) {
        this.OoooOoO = ooo0o0oo;
        this.OoooOoo = i;
        this.Ooooo00 = oooO0O0;
    }

    private InputStream OooO0OO(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            inputStream = j2.OooooOo(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(OooooOo, 3)) {
                Log.d(OooooOo, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            inputStream = httpURLConnection.getInputStream();
        }
        this.OooooO0 = inputStream;
        return this.OooooO0;
    }

    private static boolean OooO0o(int i) {
        return i / 100 == 2;
    }

    private static boolean OooO0oO(int i) {
        return i / 100 == 3;
    }

    private InputStream OooO0oo(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i >= 5) {
            throw new HttpException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.Ooooo0o = this.Ooooo00.OooO00o(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.Ooooo0o.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.Ooooo0o.setConnectTimeout(this.OoooOoo);
        this.Ooooo0o.setReadTimeout(this.OoooOoo);
        this.Ooooo0o.setUseCaches(false);
        this.Ooooo0o.setDoInput(true);
        this.Ooooo0o.setInstanceFollowRedirects(false);
        this.Ooooo0o.connect();
        this.OooooO0 = this.Ooooo0o.getInputStream();
        if (this.OooooOO) {
            return null;
        }
        int responseCode = this.Ooooo0o.getResponseCode();
        if (OooO0o(responseCode)) {
            return OooO0OO(this.Ooooo0o);
        }
        if (!OooO0oO(responseCode)) {
            if (responseCode == -1) {
                throw new HttpException(responseCode);
            }
            throw new HttpException(this.Ooooo0o.getResponseMessage(), responseCode);
        }
        String headerField = this.Ooooo0o.getHeaderField("Location");
        if (TextUtils.isEmpty(headerField)) {
            throw new HttpException("Received empty or null redirect url");
        }
        URL url3 = new URL(url, headerField);
        OooO0O0();
        return OooO0oo(url3, i + 1, url, map);
    }

    @Override // z2.o0O0oo00
    @NonNull
    public Class<InputStream> OooO00o() {
        return InputStream.class;
    }

    @Override // z2.o0O0oo00
    public void OooO0O0() {
        InputStream inputStream = this.OooooO0;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.Ooooo0o;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.Ooooo0o = null;
    }

    @Override // z2.o0O0oo00
    @NonNull
    public DataSource OooO0Oo() {
        return DataSource.REMOTE;
    }

    @Override // z2.o0O0oo00
    public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super InputStream> oooO00o) {
        StringBuilder sb;
        long jOooO0O0 = n2.OooO0O0();
        try {
            try {
                oooO00o.OooO0o(OooO0oo(this.OoooOoO.OooO(), 0, null, this.OoooOoO.OooO0o0()));
            } catch (IOException e) {
                if (Log.isLoggable(OooooOo, 3)) {
                    Log.d(OooooOo, "Failed to load data for url", e);
                }
                oooO00o.OooO0OO(e);
                if (!Log.isLoggable(OooooOo, 2)) {
                    return;
                } else {
                    sb = new StringBuilder();
                }
            }
            if (Log.isLoggable(OooooOo, 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                sb.append(n2.OooO00o(jOooO0O0));
                Log.v(OooooOo, sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable(OooooOo, 2)) {
                Log.v(OooooOo, "Finished http url fetcher fetch in " + n2.OooO00o(jOooO0O0));
            }
            throw th;
        }
    }

    @Override // z2.o0O0oo00
    public void cancel() {
        this.OooooOO = true;
    }
}
