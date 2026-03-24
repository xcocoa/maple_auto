package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class j extends a {
    private static final String a = "oldumid";
    private Context b;
    private String c;
    private String d;

    public j(Context context) {
        super(a);
        this.c = null;
        this.d = null;
        this.b = context;
    }

    private void b(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private void j() {
        try {
            b("/data/local/tmp/.um");
            HelperUtils.writeFile(new File("/data/local/tmp/.um/sysid.dat"), this.d);
        } catch (Throwable unused) {
        }
    }

    private void k() {
        try {
            b("/sdcard/Android/obj/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/obj/.um/sysid.dat"), this.d);
        } catch (Throwable unused) {
        }
    }

    private void l() {
        try {
            b("/sdcard/Android/data/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/data/.um/sysid.dat"), this.d);
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return this.c;
    }

    public boolean g() {
        return h();
    }

    public boolean h() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.b, v.e, null);
        this.d = strImprintProperty;
        if (TextUtils.isEmpty(strImprintProperty)) {
            return false;
        }
        this.d = DataHelper.encryptBySHA1(this.d);
        String file = HelperUtils.readFile(new File("/sdcard/Android/data/.um/sysid.dat"));
        String file2 = HelperUtils.readFile(new File("/sdcard/Android/obj/.um/sysid.dat"));
        String file3 = HelperUtils.readFile(new File("/data/local/tmp/.um/sysid.dat"));
        if (TextUtils.isEmpty(file)) {
            l();
        } else if (!this.d.equals(file)) {
            this.c = file;
            return true;
        }
        if (TextUtils.isEmpty(file2)) {
            k();
        } else if (!this.d.equals(file2)) {
            this.c = file2;
            return true;
        }
        if (TextUtils.isEmpty(file3)) {
            j();
            return false;
        }
        if (this.d.equals(file3)) {
            return false;
        }
        this.c = file3;
        return true;
    }

    public void i() {
        try {
            l();
            k();
            j();
        } catch (Exception unused) {
        }
    }
}
