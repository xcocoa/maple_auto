package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.collection.LruCache;
import com.octopus.ad.internal.m;
import com.octopus.ad.utils.b.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class ImageManager {
    private static ImageManager instance;
    private static Context mContext;
    private ExecutorService executorService = Executors.newFixedThreadPool(4);
    private LruCache<String, Bitmap> imageCache = new LruCache<>(4194304);
    private Handler handler = new Handler();

    public interface BitmapLoadedListener {
        void onBitmapLoadFailed();

        void onBitmapLoaded(Bitmap bitmap);
    }

    public class RequestCreatorRunnble implements Runnable {
        public int errorResId;
        public int holderResId;
        public ImageView imageView;
        public String url;

        public RequestCreatorRunnble(String str) {
            this.url = str;
        }

        private Bitmap getBitmapFile() {
            String str = this.url;
            File file = new File(d.c(ImageManager.mContext), HashingFunctions.md5(str.substring(str.lastIndexOf("/") + 1)));
            if (!file.exists() || file.length() <= 0) {
                return null;
            }
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }

        private void showError() {
            ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.RequestCreatorRunnble.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }

        public RequestCreatorRunnble error(int i) {
            this.errorResId = i;
            return this;
        }

        public void into(ImageView imageView) {
            this.imageView = imageView;
            if (TextUtils.isEmpty(this.url)) {
                return;
            }
            Bitmap bitmap = (Bitmap) ImageManager.this.imageCache.get(this.url);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
            Bitmap bitmapFile = getBitmapFile();
            if (bitmapFile == null) {
                ImageManager.this.executorService.submit(this);
            } else {
                imageView.setImageBitmap(bitmapFile);
                ImageManager.this.imageCache.put(this.url, bitmapFile);
            }
        }

        public RequestCreatorRunnble placeholder(int i) {
            this.holderResId = i;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.url).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(2000);
                if (httpURLConnection.getResponseCode() == 200) {
                    final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.RequestCreatorRunnble.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RequestCreatorRunnble.this.imageView.setImageBitmap(bitmapDecodeStream);
                        }
                    });
                    ImageManager.this.imageCache.put(this.url, bitmapDecodeStream);
                    String str = this.url;
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(d.c(ImageManager.mContext), HashingFunctions.md5(str.substring(str.lastIndexOf("/") + 1)))));
                } else {
                    showError();
                }
            } catch (FileNotFoundException unused) {
            } catch (Exception e) {
                e.printStackTrace();
                showError();
            }
        }
    }

    private static ImageManager getInstance() {
        if (instance == null) {
            synchronized (ImageManager.class) {
                if (instance == null) {
                    instance = new ImageManager();
                }
            }
        }
        return instance;
    }

    public static ImageManager with(Context context) {
        if (m.a().h != null) {
            context = m.a().h;
        }
        mContext = context;
        return getInstance();
    }

    public void getBitmap(final String str, final BitmapLoadedListener bitmapLoadedListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bitmap bitmap = this.imageCache.get(str);
        Bitmap bitmapDecodeFile = null;
        if (bitmap != null) {
            bitmapLoadedListener.onBitmapLoaded(bitmap);
            return;
        }
        File file = new File(d.c(mContext), HashingFunctions.md5(str.substring(str.lastIndexOf("/") + 1)));
        if (file.exists() && file.length() > 0) {
            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        }
        if (bitmapDecodeFile == null) {
            this.executorService.submit(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(2000);
                        if (httpURLConnection.getResponseCode() == 200) {
                            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                            httpURLConnection.disconnect();
                            ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    bitmapLoadedListener.onBitmapLoaded(bitmapDecodeStream);
                                }
                            });
                            ImageManager.this.imageCache.put(str, bitmapDecodeStream);
                            String str2 = str;
                            bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(d.c(ImageManager.mContext), HashingFunctions.md5(str2.substring(str2.lastIndexOf("/") + 1)))));
                        }
                    } catch (Exception unused) {
                        ImageManager.this.handler.post(new Runnable() { // from class: com.octopus.ad.internal.utilities.ImageManager.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                bitmapLoadedListener.onBitmapLoadFailed();
                            }
                        });
                    }
                }
            });
        } else {
            this.imageCache.put(str, bitmapDecodeFile);
            bitmapLoadedListener.onBitmapLoaded(bitmapDecodeFile);
        }
    }

    public RequestCreatorRunnble load(String str) {
        return new RequestCreatorRunnble(str);
    }
}
