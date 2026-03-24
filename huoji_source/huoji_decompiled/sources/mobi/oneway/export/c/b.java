package mobi.oneway.export.c;

import java.io.File;
import mobi.oneway.export.d.f;
import mobi.oneway.export.g.h;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Runnable {
    private File a;

    public b(File file) {
        this.a = file;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        try {
            new f(mobi.oneway.export.a.a.e, mobi.oneway.export.a.a.c).a(h.i(this.a)).c("POST").n();
            this.a.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
