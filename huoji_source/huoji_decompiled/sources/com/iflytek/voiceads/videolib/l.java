package com.iflytek.voiceads.videolib;

import android.media.AudioManager;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class l implements AudioManager.OnAudioFocusChangeListener {
    final /* synthetic */ JZPlayer a;

    l(JZPlayer jZPlayer) {
        this.a = jZPlayer;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        switch (i) {
            case -2:
                try {
                    JZPlayer jZPlayerC = o.c();
                    if (jZPlayerC != null && jZPlayerC.g == 3) {
                        jZPlayerC.m.performClick();
                        break;
                    }
                } catch (Exception e) {
                    com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "audio focus" + e.getMessage());
                    return;
                }
                break;
            case -1:
                this.a.a();
                break;
        }
    }
}
