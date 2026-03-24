package com.anythink.expressad.atsignalcommon.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.anythink.expressad.exoplayer.k.o;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class MraidVolumeChangeReceiver {
    public static double a = -1.0d;
    private static final String b = "android.media.VOLUME_CHANGED_ACTION";
    private static final String c = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    private Context d;
    private AudioManager e;
    private boolean f = false;
    private VolumeChangeListener g;
    private VolumeChangeBroadcastReceiver h;

    public static class VolumeChangeBroadcastReceiver extends BroadcastReceiver {
        private WeakReference<MraidVolumeChangeReceiver> a;

        public VolumeChangeBroadcastReceiver(MraidVolumeChangeReceiver mraidVolumeChangeReceiver) {
            this.a = new WeakReference<>(mraidVolumeChangeReceiver);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MraidVolumeChangeReceiver mraidVolumeChangeReceiver;
            VolumeChangeListener volumeChangeListener;
            if (!MraidVolumeChangeReceiver.b.equals(intent.getAction()) || intent.getIntExtra(MraidVolumeChangeReceiver.c, -1) != 3 || (mraidVolumeChangeReceiver = this.a.get()) == null || (volumeChangeListener = mraidVolumeChangeReceiver.getVolumeChangeListener()) == null) {
                return;
            }
            double currentVolume = mraidVolumeChangeReceiver.getCurrentVolume();
            if (currentVolume >= 0.0d) {
                volumeChangeListener.onVolumeChanged(currentVolume);
            }
        }
    }

    public interface VolumeChangeListener {
        void onVolumeChanged(double d);
    }

    public MraidVolumeChangeReceiver(Context context) {
        this.d = context;
        this.e = (AudioManager) context.getApplicationContext().getSystemService(o.b);
    }

    public double getCurrentVolume() {
        AudioManager audioManager = this.e;
        int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : -1;
        AudioManager audioManager2 = this.e;
        double streamVolume = (((double) (audioManager2 != null ? audioManager2.getStreamVolume(3) : -1)) * 100.0d) / ((double) streamMaxVolume);
        a = streamVolume;
        return streamVolume;
    }

    public VolumeChangeListener getVolumeChangeListener() {
        return this.g;
    }

    public void registerReceiver() {
        if (this.d != null) {
            this.h = new VolumeChangeBroadcastReceiver(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(b);
            this.d.registerReceiver(this.h, intentFilter);
            this.f = true;
        }
    }

    public void setVolumeChangeListener(VolumeChangeListener volumeChangeListener) {
        this.g = volumeChangeListener;
    }

    public void unregisterReceiver() {
        Context context;
        if (!this.f || (context = this.d) == null) {
            return;
        }
        try {
            context.unregisterReceiver(this.h);
            this.g = null;
            this.f = false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
