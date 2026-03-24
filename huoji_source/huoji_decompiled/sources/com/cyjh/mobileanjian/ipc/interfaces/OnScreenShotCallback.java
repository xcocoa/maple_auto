package com.cyjh.mobileanjian.ipc.interfaces;

import com.google.protobuf.ByteString;

/* JADX INFO: loaded from: classes.dex */
public interface OnScreenShotCallback {
    void onScreenShotDone(String str, ByteString byteString);

    void onScreenShotFailed(int i);
}
