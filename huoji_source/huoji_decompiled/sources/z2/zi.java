package z2;

import android.text.TextUtils;
import com.example.logcat.R;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import z2.cj;

/* JADX INFO: loaded from: classes2.dex */
public class zi implements cj {
    @Override // z2.cj
    public void OooO00o(String str, cj.OooO00o oooO00o) {
        oooO00o.OooO00o(R.string.status_opening, null);
        try {
            Process processExec = Runtime.getRuntime().exec("su");
            DataOutputStream dataOutputStream = new DataOutputStream(processExec.getOutputStream());
            dataOutputStream.writeBytes(str + "\n");
            dataOutputStream.flush();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            oooO00o.OooO00o(R.string.status_active, null);
            while (!oooO00o.isCancelled()) {
                ArrayList arrayList = new ArrayList();
                String line = bufferedReader.readLine();
                if (!TextUtils.isEmpty(line)) {
                    arrayList.add(line);
                }
                oooO00o.OooO00o(0, arrayList);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
