package cn.haorui.sdk.core.ad.image;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ImageAdData {
    void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, ImageAdInteractionListener imageAdInteractionListener);

    void destroy();

    int getAdPatternType();

    String getDesc();

    String getIconUrl();

    String[] getImgList();

    int getInteractionType();

    String getTitle();
}
