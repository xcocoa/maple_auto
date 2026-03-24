package cn.haorui.sdk.core.ad;

import android.view.View;
import androidx.annotation.Nullable;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.ResultBean;

/* JADX INFO: loaded from: classes.dex */
public interface IAd<T extends InteractionListener> {
    @Nullable
    View getAdView();

    ResultBean getData();

    T getInteractionListener();

    TouchData getTouchData();

    boolean isAdValid();

    void setAdView(View view);

    void setInteractionListener(T t);
}
