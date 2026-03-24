package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ah;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public interface aa<T extends aa<?, ?>, F extends ah> extends Serializable {
    void clear();

    aa<T, F> deepCopy();

    F fieldForId(int i);

    void read(az azVar) throws ag;

    void write(az azVar) throws ag;
}
