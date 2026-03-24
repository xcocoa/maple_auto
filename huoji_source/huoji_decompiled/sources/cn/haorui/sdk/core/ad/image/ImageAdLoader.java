package cn.haorui.sdk.core.ad.image;

import android.app.Activity;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdLoader;
import cn.haorui.sdk.platform.hr.image.HRRecyclerAdListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class ImageAdLoader {
    private RecyclerAdLoader recyclerAdLoader;

    public ImageAdLoader(Activity activity, String str, ImageAdListener imageAdListener) {
        this.recyclerAdLoader = new RecyclerAdLoader(activity, str, 1, new HRRecyclerAdListenerAdapter(imageAdListener));
    }

    public void loadData() {
        this.recyclerAdLoader.loadAd();
    }
}
