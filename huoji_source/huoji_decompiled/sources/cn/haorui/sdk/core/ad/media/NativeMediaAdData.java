package cn.haorui.sdk.core.ad.media;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface NativeMediaAdData {
    void bindView(ViewGroup viewGroup, boolean z);

    int getAdPatternType();

    int getCurrentPosition();

    String getDesc();

    int getDuration();

    int getECPM();

    String getIconUrl();

    List<String> getImgList();

    String getImgUrl();

    int getProgress();

    String getTitle();

    boolean isPlaying();

    void onClicked(View view);

    void onExposured(View view);

    void onScroll(int i, View view);

    void play();

    void preLoadVideo();

    void resume();

    void setMediaListener(NativeMediaAdMediaListener nativeMediaAdMediaListener);

    void stop();
}
