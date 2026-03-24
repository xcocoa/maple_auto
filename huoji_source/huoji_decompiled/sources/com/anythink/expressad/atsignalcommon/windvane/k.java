package com.anythink.expressad.atsignalcommon.windvane;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    private static b a(Object obj) {
        try {
            return "wv_hybird:".equals(((a) obj).a.getSignalCommunication().b()) ? j.a() : j.a();
        } catch (Exception e) {
            e.printStackTrace();
            return j.a();
        }
    }
}
