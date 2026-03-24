package z2;

import android.os.Environment;
import android.text.format.DateFormat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class lf {
    private File OooO00o;
    private FileWriter OooO0O0;

    private lf(String str) {
        this.OooO00o = new File(Environment.getExternalStorageDirectory(), str);
        try {
            this.OooO0O0 = new FileWriter(this.OooO00o);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void OooO00o(String str) {
        if (this.OooO0O0 == null) {
            return;
        }
        String string = DateFormat.format("yyyy-MM-hh HH:mm:ss", System.currentTimeMillis()).toString();
        try {
            this.OooO0O0.write(string + "  " + str + "\n");
            this.OooO0O0.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
