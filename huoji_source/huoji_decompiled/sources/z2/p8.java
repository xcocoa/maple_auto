package z2;

import com.cyjh.mobileanjian.ipc.utils.FileUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class p8 {
    private static Process OooO00o;
    private static String OooO0O0;

    public static /* synthetic */ void OooO00o() {
        try {
            OooO00o = Runtime.getRuntime().exec(new String[]{"su", "-c", "logcat"});
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(OooO00o.getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                FileUtils.writeFile("/sdcard/" + OooO0O0, line, true);
            }
        } catch (IOException e) {
            String str = "ElfinLogcatHelper -- ex:" + e.getMessage();
            e.printStackTrace();
        }
    }

    public static void OooO0O0() {
        OooO0O0 = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date(System.currentTimeMillis())) + "-script.txt";
        new Thread(new Runnable() { // from class: z2.k8
            @Override // java.lang.Runnable
            public final void run() {
                p8.OooO00o();
            }
        }).start();
    }

    public static void OooO0OO() {
        Process process = OooO00o;
        if (process != null) {
            process.destroy();
            OooO00o = null;
        }
    }
}
