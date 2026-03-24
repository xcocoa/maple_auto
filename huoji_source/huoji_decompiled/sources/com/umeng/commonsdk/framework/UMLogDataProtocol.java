package com.umeng.commonsdk.framework;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface UMLogDataProtocol {

    public enum UMBusinessType {
        U_APP,
        U_DPLUS,
        U_INTERNAL
    }

    void removeCacheData(Object obj);

    JSONObject setupReportData(long j);

    void workEvent(Object obj, int i);
}
