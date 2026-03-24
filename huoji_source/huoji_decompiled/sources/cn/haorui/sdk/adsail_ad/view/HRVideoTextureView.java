package cn.haorui.sdk.adsail_ad.view;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import cn.haorui.sdk.core.utils.LogUtil;
import com.anythink.expressad.foundation.d.c;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class HRVideoTextureView extends TextureView {
    private String TAG;
    private Surface anotherSurface;
    private int displayMode;
    private SurfaceTexture mSurfaceTexture;
    private MediaPlayer mediaPlayer;
    private MediaPlayer.OnCompletionListener onCompletionListener;
    private MediaPlayer.OnInfoListener onInfoListener;
    private MediaPlayer.OnPreparedListener onPreparedListener;
    private MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener;
    private boolean prepared;
    private Surface surface;
    private TextureView.SurfaceTextureListener surfaceTextureListener;
    private boolean useTransform;
    private int videoHeight;
    private int videoWidth;

    public HRVideoTextureView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.prepared = false;
        this.useTransform = true;
        this.displayMode = 1;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.6
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                HRVideoTextureView.this.mSurfaceTexture = surfaceTexture;
                if (HRVideoTextureView.this.mediaPlayer != null) {
                    HRVideoTextureView.this.surface = new Surface(surfaceTexture);
                    HRVideoTextureView.this.mediaPlayer.setSurface(HRVideoTextureView.this.surface);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        init();
    }

    public HRVideoTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.prepared = false;
        this.useTransform = true;
        this.displayMode = 1;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.6
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                HRVideoTextureView.this.mSurfaceTexture = surfaceTexture;
                if (HRVideoTextureView.this.mediaPlayer != null) {
                    HRVideoTextureView.this.surface = new Surface(surfaceTexture);
                    HRVideoTextureView.this.mediaPlayer.setSurface(HRVideoTextureView.this.surface);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        init();
    }

    public HRVideoTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = getClass().getSimpleName();
        this.prepared = false;
        this.useTransform = true;
        this.displayMode = 1;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.6
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i22) {
                HRVideoTextureView.this.mSurfaceTexture = surfaceTexture;
                if (HRVideoTextureView.this.mediaPlayer != null) {
                    HRVideoTextureView.this.surface = new Surface(surfaceTexture);
                    HRVideoTextureView.this.mediaPlayer.setSurface(HRVideoTextureView.this.surface);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i22) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeViewSize(int i, int i2, Matrix matrix) {
        if (matrix == null) {
            return;
        }
        RectF rectF = new RectF(0.0f, 0.0f, i, i2);
        matrix.mapRect(rectF);
        LogUtil.i(this.TAG, "changeViewSize " + matrix + o4.OooO00o.OooO0Oo + ((int) rectF.width()) + o4.OooO00o.OooO0Oo + ((int) rectF.height()));
        getLayoutParams().width = (int) rectF.width();
        getLayoutParams().height = (int) rectF.height();
        post(new Runnable() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.7
            @Override // java.lang.Runnable
            public void run() {
                HRVideoTextureView.this.requestLayout();
            }
        });
    }

    public Matrix adjustVideoRadio(float f, float f2) {
        if (f == 0.0f || f2 == 0.0f || this.videoWidth == 0 || this.videoHeight == 0) {
            return null;
        }
        LogUtil.d(this.TAG, "adjustVideoRadio " + f + o4.OooO00o.OooO0Oo + f2 + o4.OooO00o.OooO0Oo + this.videoWidth + o4.OooO00o.OooO0Oo + this.videoHeight);
        float f3 = f / ((float) this.videoWidth);
        float f4 = f2 / ((float) this.videoHeight);
        Matrix matrix = new Matrix();
        matrix.preTranslate((f - ((float) this.videoWidth)) / 2.0f, (f2 - ((float) this.videoHeight)) / 2.0f);
        matrix.preScale(((float) this.videoWidth) / f, ((float) this.videoHeight) / f2);
        if (2 == this.displayMode) {
            matrix.postScale(f3, f4, f / 2.0f, f2 / 2.0f);
        } else {
            float f5 = f / 2.0f;
            float f6 = f2 / 2.0f;
            if (f3 >= f4) {
                matrix.postScale(f4, f4, f5, f6);
            } else {
                matrix.postScale(f3, f3, f5, f6);
            }
        }
        return matrix;
    }

    public void changeSurface(Surface surface) {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                this.anotherSurface = surface;
                mediaPlayer.setSurface(surface);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
        LogUtil.d(this.TAG, "destroy");
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                this.mediaPlayer = null;
            }
            if (this.mSurfaceTexture != null) {
                LogUtil.e(this.TAG, "mSurfaceTexture.release");
                this.mSurfaceTexture.release();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getCurrentPosition() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !this.prepared) {
                return 0;
            }
            return mediaPlayer.getCurrentPosition();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int getDuration() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !this.prepared) {
                return 0;
            }
            return mediaPlayer.getDuration();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public MediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    public void init() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setAudioStreamType(3);
        this.mediaPlayer.setScreenOnWhilePlaying(true);
        this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer2) {
                HRVideoTextureView.this.prepared = true;
                if (HRVideoTextureView.this.onPreparedListener != null) {
                    HRVideoTextureView.this.onPreparedListener.onPrepared(mediaPlayer2);
                }
            }
        });
        this.mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.2
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                if (HRVideoTextureView.this.onCompletionListener != null) {
                    HRVideoTextureView.this.onCompletionListener.onCompletion(mediaPlayer2);
                }
            }
        });
        this.mediaPlayer.setOnBufferingUpdateListener(new MediaPlayer.OnBufferingUpdateListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.3
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer2, int i) {
                LogUtil.d(HRVideoTextureView.this.TAG, "video buffer: " + i);
            }
        });
        this.mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.4
            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer2, int i, int i2) {
                LogUtil.d(HRVideoTextureView.this.TAG, "media player info: " + i + o4.OooO00o.OooO0Oo + i2);
                if (HRVideoTextureView.this.onInfoListener != null) {
                    return HRVideoTextureView.this.onInfoListener.onInfo(mediaPlayer2, i, i2);
                }
                return true;
            }
        });
        this.mediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: cn.haorui.sdk.adsail_ad.view.HRVideoTextureView.5
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                int measuredWidth;
                int measuredHeight;
                HRVideoTextureView.this.videoWidth = i;
                HRVideoTextureView.this.videoHeight = i2;
                if (HRVideoTextureView.this.onVideoSizeChangedListener != null) {
                    HRVideoTextureView.this.onVideoSizeChangedListener.onVideoSizeChanged(mediaPlayer2, i, i2);
                }
                if (HRVideoTextureView.this.anotherSurface != null) {
                    return;
                }
                LogUtil.i(HRVideoTextureView.this.TAG, "" + i + o4.OooO00o.OooO0Oo + i2);
                if (HRVideoTextureView.this.getParent() instanceof View) {
                    measuredWidth = ((View) HRVideoTextureView.this.getParent()).getMeasuredWidth();
                    measuredHeight = ((View) HRVideoTextureView.this.getParent()).getMeasuredHeight();
                } else {
                    measuredWidth = HRVideoTextureView.this.getMeasuredWidth();
                    measuredHeight = HRVideoTextureView.this.getMeasuredHeight();
                }
                Matrix matrixAdjustVideoRadio = HRVideoTextureView.this.adjustVideoRadio(measuredWidth, measuredHeight);
                if (!HRVideoTextureView.this.useTransform) {
                    HRVideoTextureView.this.changeViewSize(measuredWidth, measuredHeight, matrixAdjustVideoRadio);
                } else {
                    HRVideoTextureView.this.setTransform(matrixAdjustVideoRadio);
                    HRVideoTextureView.this.postInvalidate();
                }
            }
        });
        setSurfaceTextureListener(this.surfaceTextureListener);
    }

    public boolean isPlaying() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                return mediaPlayer.isPlaying();
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isPrepared() {
        return this.prepared;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth;
        int measuredHeight;
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            if (getParent() instanceof View) {
                measuredWidth = ((View) getParent()).getMeasuredWidth();
                measuredHeight = ((View) getParent()).getMeasuredHeight();
            } else {
                measuredWidth = getMeasuredWidth();
                measuredHeight = getMeasuredHeight();
            }
            if (this.useTransform) {
                return;
            }
            changeViewSize(measuredWidth, measuredHeight, adjustVideoRadio(measuredWidth, measuredHeight));
        }
    }

    public void pause() {
        LogUtil.d(this.TAG, c.cb);
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null || !this.prepared) {
            return;
        }
        try {
            mediaPlayer.pause();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void resume() {
        LogUtil.d(this.TAG, c.cc);
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !this.prepared) {
                return;
            }
            mediaPlayer.start();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void resumeSurface() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                this.anotherSurface = null;
                mediaPlayer.setSurface(this.surface);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void seekTo(int i) {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !this.prepared) {
                return;
            }
            mediaPlayer.seekTo(i);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 24 || drawable == null) {
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    public void setDisplayMode(int i) {
        if (i == 1 || i == 2) {
            this.displayMode = i;
        }
    }

    public void setInitMute(boolean z) {
        MediaPlayer mediaPlayer;
        float f;
        if (z) {
            mediaPlayer = this.mediaPlayer;
            f = 0.0f;
        } else {
            mediaPlayer = this.mediaPlayer;
            f = 1.0f;
        }
        mediaPlayer.setVolume(f, f);
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        if (this.mediaPlayer != null) {
            this.onCompletionListener = onCompletionListener;
        }
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setOnErrorListener(onErrorListener);
        }
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        if (this.mediaPlayer != null) {
            this.onInfoListener = onInfoListener;
        }
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        if (this.mediaPlayer != null) {
            this.onPreparedListener = onPreparedListener;
        }
    }

    public void setOnVideoSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.onVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setUseTransform(boolean z) {
        this.useTransform = z;
    }

    public void setVideoPath(String str) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null) {
            return;
        }
        try {
            mediaPlayer.setDataSource(str);
            this.mediaPlayer.prepareAsync();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void start() {
        LogUtil.d(this.TAG, c.bT);
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !this.prepared) {
                return;
            }
            mediaPlayer.start();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void stopPlayback() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !this.prepared) {
                return;
            }
            mediaPlayer.stop();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }
}
