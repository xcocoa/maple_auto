package cn.haorui.sdk.core.view.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes.dex */
public class GifImageView extends AppCompatImageView implements Runnable {
    private static final String TAG = "GifDecoderView";
    private boolean animating;
    private OnAnimationStart animationStartCallback;
    private OnAnimationStop animationStopCallback;
    private Thread animationThread;
    private boolean canClear;
    private final Runnable cleanupRunnable;
    private OnFrameAvailable frameCallback;
    private long framesDisplayDuration;
    private cn.haorui.sdk.core.view.gif.a gifDecoder;
    private final Handler handler;
    private boolean renderFrame;
    private boolean shouldClear;
    private Bitmap tmpBitmap;
    private final Runnable updateResults;

    public interface OnAnimationStart {
        void onAnimationStart();
    }

    public interface OnAnimationStop {
        void onAnimationStop();
    }

    public interface OnFrameAvailable {
        Bitmap onFrameAvailable(Bitmap bitmap);
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GifImageView.this.tmpBitmap == null || GifImageView.this.tmpBitmap.isRecycled()) {
                return;
            }
            GifImageView gifImageView = GifImageView.this;
            gifImageView.setImageBitmap(gifImageView.tmpBitmap);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GifImageView.this.tmpBitmap = null;
            GifImageView.this.gifDecoder = null;
            GifImageView.this.animationThread = null;
            GifImageView.this.shouldClear = false;
        }
    }

    public GifImageView(Context context) {
        super(context);
        this.handler = new Handler(Looper.getMainLooper());
        this.frameCallback = null;
        this.framesDisplayDuration = -1L;
        this.animationStopCallback = null;
        this.animationStartCallback = null;
        this.updateResults = new a();
        this.cleanupRunnable = new b();
        this.canClear = true;
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.handler = new Handler(Looper.getMainLooper());
        this.frameCallback = null;
        this.framesDisplayDuration = -1L;
        this.animationStopCallback = null;
        this.animationStartCallback = null;
        this.updateResults = new a();
        this.cleanupRunnable = new b();
        this.canClear = true;
    }

    private boolean canStart() {
        return (this.animating || this.renderFrame) && this.gifDecoder != null && this.animationThread == null;
    }

    private void startAnimationThread() {
        if (canStart()) {
            Thread thread = new Thread(this);
            this.animationThread = thread;
            thread.start();
        }
    }

    public void clear() {
        this.animating = false;
        this.renderFrame = false;
        this.shouldClear = true;
        stopAnimation();
        this.handler.post(this.cleanupRunnable);
    }

    public int getFrameCount() {
        return this.gifDecoder.p.frameCount;
    }

    public long getFramesDisplayDuration() {
        return this.framesDisplayDuration;
    }

    public int getGifHeight() {
        return this.gifDecoder.p.height;
    }

    public int getGifWidth() {
        return this.gifDecoder.p.width;
    }

    public OnAnimationStop getOnAnimationStop() {
        return this.animationStopCallback;
    }

    public OnFrameAvailable getOnFrameAvailable() {
        return this.frameCallback;
    }

    public void gotoFrame(int i) {
        boolean z;
        cn.haorui.sdk.core.view.gif.a aVar = this.gifDecoder;
        if (aVar.n == i) {
            return;
        }
        int i2 = i - 1;
        aVar.getClass();
        if (i2 < -1 || i2 >= aVar.p.frameCount) {
            z = false;
        } else {
            aVar.n = i2;
            z = true;
        }
        if (!z || this.animating) {
            return;
        }
        this.renderFrame = true;
        startAnimationThread();
    }

    public boolean isAnimating() {
        return this.animating;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.canClear) {
            clear();
        }
    }

    public void resetAnimation() {
        this.gifDecoder.o = 0;
        gotoFrame(0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:10|(13:13|(1:15)|16|(1:21)|22|77|23|(1:25)|26|79|27|38|(2:83|61)(6:75|42|(1:50)(1:(1:49))|51|(3:53|(1:55)(1:56)|57)|58))(1:12)|20|22|77|23|(0)|26|79|27|38|(1:83)(1:82)|61) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0062, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0065, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0069, code lost:
    
        android.util.Log.w(cn.haorui.sdk.core.view.gif.GifImageView.TAG, r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049 A[Catch: ArrayIndexOutOfBoundsException | IllegalArgumentException -> 0x0064, ArrayIndexOutOfBoundsException -> 0x0067, all -> 0x00c1, TryCatch #0 {all -> 0x00c1, blocks: (B:2:0x0000, B:4:0x0004, B:5:0x0007, B:7:0x000b, B:62:0x00ab, B:64:0x00af, B:65:0x00b6, B:67:0x00bd, B:10:0x0011, B:23:0x0039, B:25:0x0049, B:26:0x004f, B:27:0x0058, B:38:0x006e, B:42:0x0077, B:44:0x007f, B:49:0x0088, B:51:0x0094, B:53:0x0099, B:57:0x00a1, B:56:0x00a0, B:58:0x00a4, B:61:0x00a9, B:37:0x0069, B:13:0x001d, B:15:0x0023, B:16:0x0028, B:18:0x002c, B:21:0x0032), top: B:73:0x0000 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        int i;
        OnFrameAvailable onFrameAvailable;
        try {
            OnAnimationStart onAnimationStart = this.animationStartCallback;
            if (onAnimationStart != null) {
                onAnimationStart.onAnimationStart();
            }
            do {
                if (!this.animating && !this.renderFrame) {
                    break;
                }
                cn.haorui.sdk.core.view.gif.a aVar = this.gifDecoder;
                GifHeader gifHeader = aVar.p;
                int i2 = gifHeader.frameCount;
                int i3 = -1;
                boolean z = true;
                if (i2 > 0) {
                    int i4 = aVar.n;
                    if (i4 == i2 - 1) {
                        aVar.o++;
                    }
                    int i5 = gifHeader.loopCount;
                    if (i5 == -1 || aVar.o <= i5) {
                        aVar.n = (i4 + 1) % i2;
                    }
                    long jNanoTime = System.nanoTime();
                    Bitmap bitmapB = this.gifDecoder.b();
                    this.tmpBitmap = bitmapB;
                    onFrameAvailable = this.frameCallback;
                    if (onFrameAvailable != null) {
                        this.tmpBitmap = onFrameAvailable.onFrameAvailable(bitmapB);
                    }
                    long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
                    this.handler.post(this.updateResults);
                    this.renderFrame = false;
                    if (this.animating || !z) {
                        this.animating = false;
                        break;
                    }
                    try {
                        cn.haorui.sdk.core.view.gif.a aVar2 = this.gifDecoder;
                        GifHeader gifHeader2 = aVar2.p;
                        int i6 = gifHeader2.frameCount;
                        if (i6 <= 0 || (i = aVar2.n) < 0) {
                            i3 = 0;
                        } else if (i >= 0 && i < i6) {
                            i3 = gifHeader2.frames.get(i).i;
                        }
                        int i7 = (int) (((long) i3) - jNanoTime2);
                        if (i7 > 0) {
                            long j = this.framesDisplayDuration;
                            if (j <= 0) {
                                j = i7;
                            }
                            Thread.sleep(j);
                        }
                    } catch (Exception unused) {
                    }
                }
                z = false;
                long jNanoTime3 = System.nanoTime();
                Bitmap bitmapB2 = this.gifDecoder.b();
                this.tmpBitmap = bitmapB2;
                onFrameAvailable = this.frameCallback;
                if (onFrameAvailable != null) {
                }
                long jNanoTime22 = (System.nanoTime() - jNanoTime3) / 1000000;
                this.handler.post(this.updateResults);
                this.renderFrame = false;
                if (this.animating) {
                }
                this.animating = false;
                break;
            } while (this.animating);
            if (this.shouldClear) {
                this.handler.post(this.cleanupRunnable);
            }
            this.animationThread = null;
            OnAnimationStop onAnimationStop = this.animationStopCallback;
            if (onAnimationStop != null) {
                onAnimationStop.onAnimationStop();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setBytes(byte[] bArr) {
        cn.haorui.sdk.core.view.gif.a aVar = new cn.haorui.sdk.core.view.gif.a(new c());
        this.gifDecoder = aVar;
        try {
            aVar.a(4, bArr);
            if (this.animating) {
                startAnimationThread();
            } else {
                gotoFrame(0);
            }
        } catch (Exception e) {
            this.gifDecoder = null;
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public void setBytes(byte[] bArr, int i) {
        cn.haorui.sdk.core.view.gif.a aVar = new cn.haorui.sdk.core.view.gif.a(new c());
        this.gifDecoder = aVar;
        try {
            aVar.a(i, bArr);
            if (this.animating) {
                startAnimationThread();
            } else {
                gotoFrame(0);
            }
        } catch (Exception e) {
            this.gifDecoder = null;
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public void setCanClear(boolean z) {
        this.canClear = z;
    }

    public void setFramesDisplayDuration(long j) {
        this.framesDisplayDuration = j;
    }

    public void setOnAnimationStart(OnAnimationStart onAnimationStart) {
        this.animationStartCallback = onAnimationStart;
    }

    public void setOnAnimationStop(OnAnimationStop onAnimationStop) {
        this.animationStopCallback = onAnimationStop;
    }

    public void setOnFrameAvailable(OnFrameAvailable onFrameAvailable) {
        this.frameCallback = onFrameAvailable;
    }

    public void startAnimation() {
        this.animating = true;
        startAnimationThread();
    }

    public void stopAnimation() {
        this.animating = false;
        Thread thread = this.animationThread;
        if (thread != null) {
            thread.interrupt();
            this.animationThread = null;
        }
    }
}
