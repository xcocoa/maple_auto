package com.octopus.ad.internal.utilities;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ImageService {
    public static final int TIMEOUT = 10000;
    public ImageServiceListener imageServiceListener;
    public HashMap<ImageReceiver, String> imageUrls = new HashMap<>();

    public class ImageDownloader extends AsyncTask<Void, Void, Bitmap> {
        public WeakReference<ImageService> caller;
        public WeakReference<ImageReceiver> imageReceiver;
        public String url;

        public ImageDownloader(ImageReceiver imageReceiver, String str, ImageService imageService) {
            this.caller = new WeakReference<>(imageService);
            this.imageReceiver = new WeakReference<>(imageReceiver);
            this.url = str;
        }

        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... voidArr) {
            if (isCancelled()) {
                return null;
            }
            try {
                URLConnection uRLConnectionOpenConnection = new URL(this.url).openConnection();
                uRLConnectionOpenConnection.setReadTimeout(10000);
                InputStream inputStream = (InputStream) uRLConnectionOpenConnection.getContent();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                inputStream.close();
                return bitmapDecodeStream;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            this.imageReceiver.clear();
            this.caller.clear();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            ImageReceiver imageReceiver = this.imageReceiver.get();
            ImageService imageService = this.caller.get();
            if (imageReceiver != null) {
                if (bitmap == null) {
                    imageReceiver.onFail();
                } else {
                    imageReceiver.onReceiveImage(bitmap);
                }
            }
            if (imageService != null) {
                imageService.finishDownload(imageReceiver);
            }
        }
    }

    public interface ImageReceiver {
        void onFail();

        void onReceiveImage(Bitmap bitmap);
    }

    public interface ImageServiceListener {
        void onAllImageDownloadsFinish();
    }

    private void finish() {
        this.imageUrls = null;
        this.imageServiceListener = null;
    }

    public void execute() {
        if (this.imageServiceListener == null) {
            finish();
            return;
        }
        HashMap<ImageReceiver, String> map = this.imageUrls;
        if (map == null || map.isEmpty()) {
            this.imageServiceListener.onAllImageDownloadsFinish();
            finish();
            return;
        }
        for (Map.Entry<ImageReceiver, String> entry : this.imageUrls.entrySet()) {
            ImageDownloader imageDownloader = new ImageDownloader(entry.getKey(), entry.getValue(), this);
            HaoboLog.d(HaoboLog.baseLogTag, "Downloading image failFrom url: " + ((Object) entry.getValue()));
            imageDownloader.execute(new Void[0]);
        }
    }

    public void finishDownload(ImageReceiver imageReceiver) {
        HashMap<ImageReceiver, String> map = this.imageUrls;
        if (map == null || !map.containsKey(imageReceiver)) {
            return;
        }
        this.imageUrls.remove(imageReceiver);
        if (this.imageUrls.size() == 0) {
            this.imageServiceListener.onAllImageDownloadsFinish();
            HaoboLog.d(HaoboLog.baseLogTag, "Images downloading finished.");
            finish();
        }
    }

    public void registerImageReceiver(ImageReceiver imageReceiver, String str) {
        if (StringUtil.isEmpty(str) || imageReceiver == null) {
            return;
        }
        this.imageUrls.put(imageReceiver, str);
    }

    public void registerNotification(ImageServiceListener imageServiceListener) {
        this.imageServiceListener = imageServiceListener;
    }
}
