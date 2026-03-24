package com.octopus.ad.internal.utilities;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import com.octopus.ad.R;
import com.octopus.ad.internal.m;
import com.octopus.ad.utils.b.f;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HTTPGet extends AsyncTask<Void, Void, HTTPResponse> {
    private static String TAG = "HTTPGet";
    private boolean mBinaryStream;

    public HTTPGet(boolean z) {
        this.mBinaryStream = false;
        this.mBinaryStream = z;
    }

    private HttpURLConnection createConnection(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("GET");
        return httpURLConnection;
    }

    private void setConnectionParams(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setRequestProperty("User-Agent", m.a().h());
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ed A[PHI: r2
      0x00ed: PHI (r2v1 java.net.HttpURLConnection) = 
      (r2v0 java.net.HttpURLConnection)
      (r2v0 java.net.HttpURLConnection)
      (r2v0 java.net.HttpURLConnection)
      (r2v2 java.net.HttpURLConnection)
     binds: [B:30:0x00c1, B:33:0x00d7, B:35:0x00eb, B:24:0x00a7] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HTTPResponse doInBackground(Void... voidArr) {
        URL url;
        HTTPResponse hTTPResponse = new HTTPResponse();
        HttpURLConnection httpURLConnectionCreateConnection = null;
        try {
            try {
                url = new URL(getUrl());
            } catch (MalformedURLException unused) {
                hTTPResponse.setSucceeded(false);
                hTTPResponse.setErrorCode(HttpErrorCode.URL_FORMAT_ERROR);
                HaoboLog.e(HaoboLog.httpReqLogTag, HaoboLog.getString(R.string.http_url_malformed));
                if (0 != 0) {
                }
            } catch (IOException unused2) {
                hTTPResponse.setSucceeded(false);
                hTTPResponse.setErrorCode(HttpErrorCode.TRANSPORT_ERROR);
                HaoboLog.e(HaoboLog.httpReqLogTag, HaoboLog.getString(R.string.http_io));
                if (0 != 0) {
                    httpURLConnectionCreateConnection.disconnect();
                }
            } catch (Exception unused3) {
                hTTPResponse.setSucceeded(false);
                hTTPResponse.setErrorCode(HttpErrorCode.TRANSPORT_ERROR);
                HaoboLog.e(HaoboLog.httpReqLogTag, HaoboLog.getString(R.string.http_io));
                if (0 != 0) {
                    httpURLConnectionCreateConnection.disconnect();
                }
            }
            if (url.getHost() == null) {
                HaoboLog.w(HaoboLog.httpReqLogTag, "An HTTP request with an invalid URL was attempted.", new IllegalStateException("An HTTP request with an invalid URL was attempted."));
                hTTPResponse.setSucceeded(false);
                return hTTPResponse;
            }
            httpURLConnectionCreateConnection = createConnection(url);
            setConnectionParams(httpURLConnectionCreateConnection);
            httpURLConnectionCreateConnection.connect();
            int responseCode = httpURLConnectionCreateConnection.getResponseCode();
            f.a(TAG, "HTTPGet code:" + responseCode);
            InputStream inputStream = httpURLConnectionCreateConnection.getInputStream();
            if (this.mBinaryStream) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                hTTPResponse.setResponseBinaryBody(byteArrayOutputStream);
            } else {
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                }
                bufferedReader.close();
                hTTPResponse.setResponseBody(sb.toString());
            }
            inputStream.close();
            hTTPResponse.setHeaders(httpURLConnectionCreateConnection.getHeaderFields());
            hTTPResponse.setSucceeded(httpURLConnectionCreateConnection.getResponseCode() == 200);
            if (httpURLConnectionCreateConnection != null) {
                httpURLConnectionCreateConnection.disconnect();
            }
            return hTTPResponse;
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnectionCreateConnection.disconnect();
            }
            throw th;
        }
    }

    public abstract String getUrl();

    @Override // android.os.AsyncTask
    @TargetApi(11)
    public void onCancelled(HTTPResponse hTTPResponse) {
        super.onCancelled((Object) null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.AsyncTask
    public abstract void onPostExecute(HTTPResponse hTTPResponse);
}
