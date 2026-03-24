package cn.haorui.sdk.core.ad.recycler;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.core.loader.a;
import cn.haorui.sdk.core.loader.d;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerAdListenerProxy extends a<List<RecyclerAdData>, RecyclerAdListener> implements RecyclerAdListener {
    public RecyclerAdListenerProxy(@NonNull d dVar, @Nullable RecyclerAdListener recyclerAdListener) {
        super(dVar, recyclerAdListener);
    }
}
