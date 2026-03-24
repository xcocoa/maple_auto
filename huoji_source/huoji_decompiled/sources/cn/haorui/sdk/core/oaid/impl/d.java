package cn.haorui.sdk.core.oaid.impl;

import cn.haorui.sdk.core.oaid.OAIDException;

/* JADX INFO: loaded from: classes.dex */
public class d implements cn.haorui.sdk.core.oaid.b {
    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (aVar == null) {
            return;
        }
        new OAIDException("Unsupported");
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        return false;
    }
}
