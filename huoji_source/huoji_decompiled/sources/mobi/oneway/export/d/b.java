package mobi.oneway.export.d;

import java.io.File;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private f a;
    private int b;
    private byte[] c;
    private Map<String, List<String>> d;
    private Throwable e;
    private long f;
    private File g;

    public b(f fVar) {
        a(fVar);
    }

    public String a() {
        return h().f();
    }

    public String a(String str) {
        List<String> list;
        Map<String, List<String>> map = this.d;
        if (map == null || (list = map.get(str)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public b a(Throwable th) {
        this.e = th;
        return this;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(long j) {
        this.f = j;
    }

    public void a(File file) {
        this.g = file;
    }

    public void a(Map<String, List<String>> map) {
        this.d = map;
    }

    public void a(f fVar) {
        this.a = fVar;
    }

    public void a(byte[] bArr) {
        this.c = bArr;
    }

    public boolean b() {
        return this.e == null;
    }

    public byte[] c() {
        return this.c;
    }

    public String d() {
        if (this.c == null) {
            return null;
        }
        return new String(this.c);
    }

    public JSONObject e() {
        return new JSONObject(d());
    }

    public long f() {
        if (this.c != null) {
            return r0.length;
        }
        File file = this.g;
        if (file != null) {
            return file.length();
        }
        return -1L;
    }

    public File g() {
        return this.g;
    }

    public f h() {
        return this.a;
    }

    public Map<String, List<String>> i() {
        return this.d;
    }

    public long j() {
        return this.f;
    }

    public boolean k() {
        f fVar = this.a;
        return fVar != null && fVar.e();
    }

    public int l() {
        return this.b;
    }

    public Throwable m() {
        return this.e;
    }
}
