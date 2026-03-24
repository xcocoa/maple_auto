package cn.haorui.sdk.core.download;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class c implements Runnable {
    public final /* synthetic */ b a;
    public final /* synthetic */ d b;

    public c(d dVar, b bVar) {
        this.b = dVar;
        this.a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator<h> it = this.b.e.values().iterator();
        while (it.hasNext()) {
            it.next().b(this.a);
        }
    }
}
