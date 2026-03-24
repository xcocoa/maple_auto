package com.anythink.core.common.o.a;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements b {
    private static final int DEFAULT_IMPRESSION_MIN_PERCENTAGE_VIEWED = 50;
    private static final int DEFAULT_IMPRESSION_MIN_TIME_VIEWED_MS = 500;
    private boolean mImpressionRecorded;
    private int mImpressionMinTimeViewed = 500;
    private int mImpressionMinPercentageViewed = 50;
    private Integer mImpressionMinVisiblePx = null;

    @Override // com.anythink.core.common.o.a.b
    public int getImpressionMinPercentageViewed() {
        return this.mImpressionMinPercentageViewed;
    }

    @Override // com.anythink.core.common.o.a.b
    public int getImpressionMinTimeViewed() {
        return this.mImpressionMinTimeViewed;
    }

    @Override // com.anythink.core.common.o.a.b
    public final Integer getImpressionMinVisiblePx() {
        return this.mImpressionMinVisiblePx;
    }

    @Override // com.anythink.core.common.o.a.b
    public final boolean isImpressionRecorded() {
        return this.mImpressionRecorded;
    }

    @Override // com.anythink.core.common.o.a.b
    public abstract void recordImpression(View view);

    @Override // com.anythink.core.common.o.a.b
    public final void setImpressionRecorded() {
        this.mImpressionRecorded = true;
    }
}
