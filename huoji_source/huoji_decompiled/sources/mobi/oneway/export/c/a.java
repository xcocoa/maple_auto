package mobi.oneway.export.c;

import android.content.Context;
import java.io.File;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import mobi.oneway.export.g.g;
import mobi.oneway.export.g.h;
import mobi.oneway.export.g.k;
import mobi.oneway.export.g.o;
import mobi.oneway.export.g.s;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private File a;
    private ExecutorService b = Executors.newFixedThreadPool(5);

    public a(Context context) {
        this.a = context.getDir(mobi.oneway.export.a.a.i, 0);
        b();
    }

    private void b() {
        File[] fileArrListFiles;
        File file = this.a;
        if (file == null || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (File file2 : fileArrListFiles) {
            if (jCurrentTimeMillis - file2.lastModified() >= 604800000) {
                file2.delete();
            }
        }
    }

    public void a() {
        File[] fileArrListFiles;
        File file = this.a;
        if (file == null || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            this.b.execute(new b(file2));
        }
    }

    public void a(Throwable th) {
        if (this.a == null) {
            return;
        }
        try {
            String strA = g.a(th);
            File file = new File(this.a, System.currentTimeMillis() + ".txt");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("createTime", s.b(new Date()));
            jSONObject.put("info", strA);
            k.a(jSONObject, o.a());
            k.a(jSONObject, o.b());
            h.b(file, jSONObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
