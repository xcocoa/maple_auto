package com.anythink.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GuideToClickAnimPlayerView extends BaseAnimPlayerView {
    private GuideToClickView y;

    public GuideToClickAnimPlayerView(Context context) {
        super(context);
    }

    public GuideToClickAnimPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GuideToClickAnimPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a(Context context) {
        Bitmap bitmap;
        h();
        GuideToClickView guideToClickView = new GuideToClickView(context);
        this.y = guideToClickView;
        addView(guideToClickView, -1, -1);
        List<Bitmap> list = this.d;
        if (list == null || list.size() <= 0 || (bitmap = this.d.get(0)) == null || bitmap.isRecycled()) {
            return;
        }
        this.y.setFingerImageResource(bitmap);
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void a() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void b() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void c() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView
    public final void d() {
    }

    @Override // com.anythink.basead.ui.animplayerview.BaseAnimPlayerView, com.anythink.basead.ui.animplayerview.BasePlayerView
    public void init(l lVar, m mVar, boolean z, List<Bitmap> list) {
        Bitmap bitmap;
        super.init(lVar, mVar, z, list);
        Context applicationContext = getContext().getApplicationContext();
        h();
        GuideToClickView guideToClickView = new GuideToClickView(applicationContext);
        this.y = guideToClickView;
        addView(guideToClickView, -1, -1);
        List<Bitmap> list2 = this.d;
        if (list2 == null || list2.size() <= 0 || (bitmap = this.d.get(0)) == null || bitmap.isRecycled()) {
            return;
        }
        this.y.setFingerImageResource(bitmap);
    }
}
