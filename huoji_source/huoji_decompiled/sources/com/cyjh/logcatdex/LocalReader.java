package com.cyjh.logcatdex;

import android.text.TextUtils;
import com.cyjh.logcatdex.Reader;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: assets/AppReboot.dex */
public class LocalReader implements Reader {
    @Override // com.cyjh.logcatdex.Reader
    public void read(String command, Reader.UpdateHandler updateHandler) {
        updateHandler.update(1, null);
        try {
            Runtime.getRuntime().exec("su");
            Process process = Runtime.getRuntime().exec("logcat");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            updateHandler.update(2, null);
            while (!updateHandler.isCancelled()) {
                List lines = new ArrayList();
                String line = bufferedReader.readLine();
                if (!TextUtils.isEmpty(line)) {
                    lines.add(line);
                }
                updateHandler.update(0, lines);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
