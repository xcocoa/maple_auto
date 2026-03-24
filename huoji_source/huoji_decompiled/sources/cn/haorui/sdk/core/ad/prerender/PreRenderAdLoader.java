package cn.haorui.sdk.core.ad.prerender;

import android.content.Context;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdLoader;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PreRenderAdLoader extends RecyclerAdLoader {
    private int fixedHeight;

    public PreRenderAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener) {
        super(context, str, num, recyclerAdListener, 100000);
    }

    public PreRenderAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener, float f) {
        super(context, str, num, recyclerAdListener, 100000);
        this.containerWidth = f;
    }

    public PreRenderAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener, float f, float f2) {
        super(context, str, num, recyclerAdListener, 100000);
        this.containerWidth = f;
        this.containerHeight = f2;
    }

    public PreRenderAdLoader(Context context, String str, Integer num, RecyclerAdListener recyclerAdListener, float f, float f2, boolean z) {
        super(context, str, num, recyclerAdListener, 100000);
        this.containerWidth = f;
        this.containerHeight = f2;
        this.showDetail = z;
    }

    public int getFixedHeight() {
        return this.fixedHeight;
    }

    public void setFixedHeight(int i) {
        this.fixedHeight = i;
    }
}
