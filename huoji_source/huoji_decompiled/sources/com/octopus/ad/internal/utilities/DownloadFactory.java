package com.octopus.ad.internal.utilities;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.anythink.expressad.foundation.g.f.g.b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadFactory {
    private static final int BUFFER_SIZE = 8192;
    private static final String TAG = "download";

    public interface Download {
        @UiThread
        void cancel();

        @UiThread
        void destroy();

        @UiThread
        void pause();

        @UiThread
        void register(DownloadDelegate downloadDelegate);

        @UiThread
        void resume();

        @UiThread
        void start(Request request);
    }

    public interface DownloadCode {
        public static final int CHECK_ERROR = 4;
        public static final int NET_ERROR = 2;
        public static final int NO_SPACE = 3;
        public static final int UNKNOWN_ERROR = 5;
        public static final int USER_CANCEL = 1;
        public static final int USER_PAUSE = 6;
    }

    public interface DownloadDelegate {
        @WorkerThread
        boolean onCheck(File file);

        @UiThread
        void onFail(int i);

        @UiThread
        void onProgress(long j, long j2);

        @UiThread
        void onSuccess(File file);
    }

    public static final class DownloadImpl implements Download, Runnable {

        @Nullable
        private DownloadDelegate mDelegate;

        @Nullable
        private HandlerThread mHandlerThread;
        private Handler mMainHandler = new Handler(Looper.getMainLooper());
        private Request mRequest;

        @Nullable
        private Handler mThreadHandler;

        public DownloadImpl() {
            HandlerThread handlerThread = new HandlerThread("download");
            this.mHandlerThread = handlerThread;
            handlerThread.start();
            this.mThreadHandler = new Handler(this.mHandlerThread.getLooper());
        }

        private boolean onCheck(File file) {
            DownloadDelegate downloadDelegate = this.mDelegate;
            return downloadDelegate != null && downloadDelegate.onCheck(file);
        }

        private void onFail(final int i) {
            this.mMainHandler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.DownloadFactory.DownloadImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    if (DownloadImpl.this.mDelegate != null) {
                        DownloadImpl.this.mDelegate.onFail(i);
                    }
                }
            });
        }

        private void onProgress(final long j, final long j2) {
            this.mMainHandler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.DownloadFactory.DownloadImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DownloadImpl.this.mDelegate != null) {
                        DownloadImpl.this.mDelegate.onProgress(j, j2);
                    }
                }
            });
        }

        private void onSuccess(final File file) {
            this.mMainHandler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.DownloadFactory.DownloadImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    if (DownloadImpl.this.mDelegate != null) {
                        DownloadImpl.this.mDelegate.onSuccess(file);
                    }
                }
            });
        }

        @Override // com.octopus.ad.internal.utilities.DownloadFactory.Download
        public void cancel() {
            Request request = this.mRequest;
            if (request != null) {
                request.mUserCancel = true;
            }
        }

        @Override // com.octopus.ad.internal.utilities.DownloadFactory.Download
        public void destroy() {
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.mThreadHandler = null;
            this.mHandlerThread = null;
        }

        @Override // com.octopus.ad.internal.utilities.DownloadFactory.Download
        public void pause() {
            Request request = this.mRequest;
            if (request != null) {
                request.mUserPause = true;
            }
        }

        @Override // com.octopus.ad.internal.utilities.DownloadFactory.Download
        public void register(DownloadDelegate downloadDelegate) {
            this.mDelegate = downloadDelegate;
        }

        @Override // com.octopus.ad.internal.utilities.DownloadFactory.Download
        public void resume() {
            Request request = this.mRequest;
            if (request == null) {
                Log.e("download", "Nothing to resume,skip this request!");
                return;
            }
            if (!request.mUserPause) {
                start(new Request(this.mRequest));
                return;
            }
            this.mRequest.mUserPause = false;
            Handler handler = this.mThreadHandler;
            if (handler != null) {
                handler.post(this);
            }
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public void run() throws Throwable {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            byte[] bArr;
            RandomAccessFile randomAccessFile;
            Request request = this.mRequest;
            request.mDownloading = true;
            File file = new File(request.mPath);
            if (!file.exists() && !file.mkdirs()) {
                onFail(3);
                return;
            }
            String str = request.mPath + File.separator + request.mName;
            File file2 = new File(str);
            RandomAccessFile randomAccessFile2 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL(request.mUrl).openConnection();
                try {
                    if (request.mPosition != 0) {
                        httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + request.mPosition + "-");
                    }
                    httpURLConnection.setRequestProperty("Connection", b.c);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200 || responseCode == 206) {
                        String headerField = httpURLConnection.getHeaderField("Content-Disposition");
                        String contentType = httpURLConnection.getContentType();
                        long contentLengthLong = Build.VERSION.SDK_INT >= 24 ? httpURLConnection.getContentLengthLong() : httpURLConnection.getContentLength();
                        if (responseCode == 200) {
                            request.mPosition = 0L;
                            request.mTotal = contentLengthLong;
                        }
                        Log.d("download", headerField + contentType);
                        inputStream = httpURLConnection.getInputStream();
                        try {
                            try {
                                bArr = new byte[8192];
                                randomAccessFile = new RandomAccessFile(str, "rw");
                            } catch (IOException e) {
                                e = e;
                            }
                        } catch (Throwable th) {
                            th = th;
                        }
                        try {
                            randomAccessFile.seek(request.mPosition);
                            int i = 0;
                            while (true) {
                                int i2 = inputStream.read(bArr);
                                if (i2 != -1) {
                                    i++;
                                    randomAccessFile.write(bArr, 0, i2);
                                    Request.access$314(request, i2);
                                    if (i % 64 == 0) {
                                        if (request.mUserCancel) {
                                            request.mDownloading = false;
                                            onFail(1);
                                            try {
                                                randomAccessFile.getFD().sync();
                                            } catch (IOException unused) {
                                            }
                                            try {
                                                randomAccessFile.close();
                                            } catch (IOException unused2) {
                                            }
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused3) {
                                                }
                                            }
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                                return;
                                            }
                                            return;
                                        }
                                        if (request.mUserPause) {
                                            request.mDownloading = false;
                                            onFail(6);
                                            try {
                                                randomAccessFile.getFD().sync();
                                            } catch (IOException unused4) {
                                            }
                                            try {
                                                randomAccessFile.close();
                                            } catch (IOException unused5) {
                                            }
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused6) {
                                                }
                                            }
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                                return;
                                            }
                                            return;
                                        }
                                        if (i % 16 == 0) {
                                            onProgress(request.mPosition, request.mTotal);
                                        }
                                    }
                                } else {
                                    randomAccessFile.getFD().sync();
                                    if (onCheck(file2)) {
                                        request.mDownloading = false;
                                        onSuccess(file2);
                                    } else {
                                        request.mDownloading = false;
                                        onFail(4);
                                    }
                                    randomAccessFile2 = randomAccessFile;
                                }
                            }
                        } catch (IOException e2) {
                            e = e2;
                            randomAccessFile2 = randomAccessFile;
                            e.printStackTrace();
                            request.mDownloading = false;
                            onFail(5);
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.getFD().sync();
                                } catch (IOException unused7) {
                                }
                            }
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException unused8) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused9) {
                                }
                            }
                            if (httpURLConnection == null) {
                                return;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            randomAccessFile2 = randomAccessFile;
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.getFD().sync();
                                } catch (IOException unused10) {
                                }
                            }
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException unused11) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused12) {
                                }
                            }
                            if (httpURLConnection == null) {
                                throw th;
                            }
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } else {
                        request.mDownloading = false;
                        onFail(2);
                        inputStream = null;
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.getFD().sync();
                        } catch (IOException unused13) {
                        }
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException unused14) {
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused15) {
                        }
                    }
                    if (httpURLConnection == null) {
                        return;
                    }
                } catch (IOException e3) {
                    e = e3;
                    inputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            } catch (IOException e4) {
                e = e4;
                httpURLConnection = null;
                inputStream = null;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
                inputStream = null;
            }
            httpURLConnection.disconnect();
        }

        @Override // com.octopus.ad.internal.utilities.DownloadFactory.Download
        public void start(Request request) {
            if (request.mDownloading) {
                throw new IllegalArgumentException("Invalid request,it's downloading");
            }
            Request request2 = this.mRequest;
            if (request2 != null && !request.equals(request2)) {
                this.mRequest.mUserCancel = true;
            }
            this.mRequest = request;
            request.reset();
            Handler handler = this.mThreadHandler;
            if (handler != null) {
                handler.post(this);
            }
        }
    }

    public static final class Request {
        public volatile boolean mDownloading;
        private String mName;
        private String mPath;
        private volatile long mPosition;
        private volatile long mTotal;
        private String mUrl;
        public volatile boolean mUserCancel;
        public volatile boolean mUserPause;

        public Request(Request request) {
            this.mUrl = request.mUrl;
            this.mPath = request.mPath;
            this.mName = request.mName;
            reset();
        }

        public Request(String str, String str2, String str3) {
            this.mUrl = str;
            this.mPath = str2;
            this.mName = str3;
            reset();
        }

        public static /* synthetic */ long access$314(Request request, long j) {
            long j2 = request.mPosition + j;
            request.mPosition = j2;
            return j2;
        }

        public void reset() {
            this.mTotal = 0L;
            this.mPosition = 0L;
            this.mUserCancel = false;
            this.mUserPause = false;
            this.mDownloading = false;
        }
    }

    public static Download create() {
        return new DownloadImpl();
    }
}
