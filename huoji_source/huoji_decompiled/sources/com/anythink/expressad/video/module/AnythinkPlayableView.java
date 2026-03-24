package com.anythink.expressad.video.module;

import android.content.Context;
import android.util.AttributeSet;
import com.anythink.expressad.video.signal.factory.b;

/* JADX INFO: loaded from: classes.dex */
public class AnythinkPlayableView extends AnythinkH5EndCardView {
    public AnythinkPlayableView(Context context) {
        super(context);
    }

    public AnythinkPlayableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.anythink.expressad.video.module.AnythinkH5EndCardView
    public final String a() {
        return super.a();
    }

    @Override // com.anythink.expressad.video.module.AnythinkH5EndCardView, com.anythink.expressad.video.module.AnythinkBaseView
    public void init(Context context) {
        super.init(context);
    }

    @Override // com.anythink.expressad.video.module.AnythinkH5EndCardView
    public void onBackPress() {
        super.onBackPress();
    }

    @Override // com.anythink.expressad.video.module.AnythinkH5EndCardView, com.anythink.expressad.video.signal.f
    public void preLoadData(b bVar) {
        super.preLoadData(bVar);
        super.setLoadPlayable(true);
    }
}
