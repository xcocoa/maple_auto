package com.anythink.china.api;

import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;

/* JADX INFO: loaded from: classes.dex */
public interface OaidSDKCallbackListener extends IIdentifierListener {
    void OnSupport(boolean z, IdSupplier idSupplier);

    void onSupport(IdSupplier idSupplier);
}
