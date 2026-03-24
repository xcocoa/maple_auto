package z2;

import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import java.io.File;
import org.litepal.LitePalApplication;
import org.litepal.exceptions.DatabaseGenerateException;

/* JADX INFO: loaded from: classes2.dex */
public class xb0 {
    private static bc0 OooO00o;

    private static bc0 OooO00o() {
        rb0 rb0VarOooO0oo = rb0.OooO0oo();
        rb0VarOooO0oo.OooO0O0();
        if (OooO00o == null) {
            String strOooO0o = rb0VarOooO0oo.OooO0o();
            if ("external".equalsIgnoreCase(rb0VarOooO0oo.OooO())) {
                strOooO0o = LitePalApplication.OooO00o().getExternalFilesDir("") + com.umeng.analytics.pro.c.b + strOooO0o;
            } else if (!com.umeng.commonsdk.framework.c.d.equalsIgnoreCase(rb0VarOooO0oo.OooO()) && !TextUtils.isEmpty(rb0VarOooO0oo.OooO())) {
                String strReplace = (Environment.getExternalStorageDirectory().getPath() + "/" + rb0VarOooO0oo.OooO()).replace("//", "/");
                if (pc0.OooO0o("androidx.core.content.ContextCompat", "checkSelfPermission") && ContextCompat.checkSelfPermission(LitePalApplication.OooO00o(), com.anythink.china.common.d.b) != 0) {
                    throw new DatabaseGenerateException(String.format(DatabaseGenerateException.EXTERNAL_STORAGE_PERMISSION_DENIED, strReplace));
                }
                File file = new File(strReplace);
                if (!file.exists()) {
                    file.mkdirs();
                }
                strOooO0o = strReplace + "/" + strOooO0o;
            }
            OooO00o = new bc0(strOooO0o, rb0VarOooO0oo.OooOO0());
        }
        return OooO00o;
    }

    public static void OooO0O0() {
        bc0 bc0Var = OooO00o;
        if (bc0Var != null) {
            bc0Var.getWritableDatabase().close();
            OooO00o = null;
        }
    }

    public static SQLiteDatabase OooO0OO() {
        return OooO0Oo();
    }

    public static synchronized SQLiteDatabase OooO0Oo() {
        return OooO00o().getWritableDatabase();
    }
}
