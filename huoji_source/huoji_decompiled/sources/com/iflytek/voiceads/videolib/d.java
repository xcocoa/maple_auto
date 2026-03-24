package com.iflytek.voiceads.videolib;

import android.media.MediaPlayer;
import android.view.Surface;
import java.util.Map;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d extends b implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
    public MediaPlayer b;

    @Override // com.iflytek.voiceads.videolib.b
    public void a() {
        if (this.b != null) {
            try {
                this.b.start();
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "media start" + e.getMessage());
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public void a(long j) {
        if (this.b != null) {
            try {
                this.b.seekTo((int) j);
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "media seek:" + e.getMessage());
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public void a(Surface surface) {
        if (this.b != null) {
            this.b.setSurface(surface);
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public void a(boolean z) {
        if (this.b != null) {
            if (z) {
                this.b.setVolume(0.0f, 0.0f);
            } else {
                this.b.setVolume(1.0f, 1.0f);
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public void b() {
        try {
            this.b = new MediaPlayer();
            this.b.setVolume(0.0f, 0.0f);
            this.b.setAudioStreamType(3);
            this.b.setLooping(this.a.f);
            this.b.setOnPreparedListener(this);
            this.b.setOnCompletionListener(this);
            this.b.setOnBufferingUpdateListener(this);
            this.b.setScreenOnWhilePlaying(true);
            this.b.setOnSeekCompleteListener(this);
            this.b.setOnErrorListener(this);
            this.b.setOnInfoListener(this);
            this.b.setOnVideoSizeChangedListener(this);
            MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(this.b, this.a.a().toString(), this.a.e);
            this.b.prepareAsync();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "media prepare:" + e.getMessage());
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public void c() {
        if (this.b != null) {
            try {
                this.b.pause();
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "media pause:" + e.getMessage());
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public void d() {
        if (this.b != null) {
            this.b.release();
        }
    }

    @Override // com.iflytek.voiceads.videolib.b
    public long e() {
        if (this.b != null) {
            return this.b.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.iflytek.voiceads.videolib.b
    public long f() {
        if (this.b != null) {
            return this.b.getDuration();
        }
        return 0L;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        c.a().k.post(new g(this, i));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        c.a().k.post(new f(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        c.a().k.post(new i(this, i, i2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        c.a().k.post(new j(this, i));
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        String lowerCase = this.a.a().toString().toLowerCase();
        if (lowerCase.contains("mp3") || lowerCase.contains("wav")) {
            c.a().k.post(new e(this));
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        c.a().k.post(new h(this));
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        c.a().g = i;
        c.a().h = i2;
        c.a().k.post(new k(this));
    }
}
