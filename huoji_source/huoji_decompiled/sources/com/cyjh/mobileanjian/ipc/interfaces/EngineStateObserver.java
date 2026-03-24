package com.cyjh.mobileanjian.ipc.interfaces;

import z2.dg;
import z2.he;

/* JADX INFO: loaded from: classes.dex */
public interface EngineStateObserver {
    void onConnected(dg dgVar);

    void onCrash(he heVar);

    void onExit();
}
