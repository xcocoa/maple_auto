package cn.haorui.sdk.core.ad.recycler;

import android.content.Context;
import cn.haorui.sdk.core.utils.HRPatternType;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerMixAdLoader extends RecyclerAdLoader {
    public RecyclerMixAdLoader(Context context, String str, Integer num, RecyclerMixAdListener recyclerMixAdListener) {
        super(context, str, num, recyclerMixAdListener, HRPatternType.MIX_RENDER);
    }

    public RecyclerMixAdLoader(Context context, String str, Integer num, RecyclerMixAdListener recyclerMixAdListener, float f) {
        super(context, str, num, recyclerMixAdListener, HRPatternType.MIX_RENDER);
        this.containerWidth = f;
    }

    public RecyclerMixAdLoader(Context context, String str, Integer num, RecyclerMixAdListener recyclerMixAdListener, float f, float f2) {
        super(context, str, num, recyclerMixAdListener, HRPatternType.MIX_RENDER);
        this.containerWidth = f;
        this.containerHeight = f2;
    }

    public RecyclerMixAdLoader(Context context, String str, Integer num, RecyclerMixAdListener recyclerMixAdListener, float f, float f2, boolean z) {
        super(context, str, num, recyclerMixAdListener, HRPatternType.MIX_RENDER);
        this.containerWidth = f;
        this.containerHeight = f2;
        this.showDetail = z;
    }
}
