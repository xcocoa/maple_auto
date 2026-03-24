package cn.haorui.sdk.core.loader.strategy;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class f implements Comparator<cn.haorui.sdk.core.loader.loadbean.a> {
    public f(c cVar) {
    }

    @Override // java.util.Comparator
    public int compare(cn.haorui.sdk.core.loader.loadbean.a aVar, cn.haorui.sdk.core.loader.loadbean.a aVar2) {
        return aVar2.a() - aVar.a();
    }
}
