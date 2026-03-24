package cn.haorui.sdk.platform.hr.image;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.image.ImageAdData;
import cn.haorui.sdk.core.ad.image.ImageAdInteractionListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import com.anythink.core.common.h.i;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRImageAdDataAdapter implements ImageAdData {
    private RecyclerAdData internalAdData;

    public HRImageAdDataAdapter(RecyclerAdData recyclerAdData) {
        this.internalAdData = recyclerAdData;
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, ImageAdInteractionListener imageAdInteractionListener) {
        RecyclerAdData recyclerAdData = this.internalAdData;
        if (recyclerAdData != null) {
            recyclerAdData.bindAdToView(context, viewGroup, list, new NativeRecylcerAdInteractionListenerAdapter(imageAdInteractionListener));
        }
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public void destroy() {
        RecyclerAdData recyclerAdData = this.internalAdData;
        if (recyclerAdData != null) {
            recyclerAdData.destroy();
        }
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public int getAdPatternType() {
        RecyclerAdData recyclerAdData = this.internalAdData;
        return recyclerAdData != null ? recyclerAdData.getAdPatternType() : i.j;
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public String getDesc() {
        RecyclerAdData recyclerAdData = this.internalAdData;
        if (recyclerAdData != null) {
            return recyclerAdData.getDesc();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public String getIconUrl() {
        RecyclerAdData recyclerAdData = this.internalAdData;
        if (recyclerAdData != null) {
            return recyclerAdData.getIconUrl();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public String[] getImgList() {
        RecyclerAdData recyclerAdData = this.internalAdData;
        if (recyclerAdData != null) {
            return recyclerAdData.getImgUrls();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public int getInteractionType() {
        return this.internalAdData.getInteractionType();
    }

    @Override // cn.haorui.sdk.core.ad.image.ImageAdData
    public String getTitle() {
        RecyclerAdData recyclerAdData = this.internalAdData;
        if (recyclerAdData != null) {
            return recyclerAdData.getTitle();
        }
        return null;
    }
}
