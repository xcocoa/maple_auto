package z2;

import android.content.Context;
import android.widget.LinearLayout;
import com.cyjh.mobileanjian.ipc.uip.UipHelper;
import com.cyjh.mqm.MiscUtilities;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class ui implements vi {
    private Context OooO00o;
    private File OooO0O0;
    private File OooO0OO;
    private UipHelper OooO0Oo;
    public LinearLayout OooO0o0 = null;

    public ui(Context context, String str, String str2) {
        this.OooO0O0 = new File(str);
        this.OooO0OO = new File(str2);
        this.OooO00o = context;
        this.OooO0Oo = new UipHelper(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOO0(CountDownLatch countDownLatch, String str) {
        this.OooO0o0 = this.OooO0O0.exists() ? this.OooO0Oo.parseLayoutFromJson(str, null) : new LinearLayout(this.OooO00o);
        countDownLatch.countDown();
    }

    private String OooO0o(File file) throws Exception {
        if (file == null || file.isDirectory()) {
            return null;
        }
        this.OooO0Oo.saveToConfigFile(file.getAbsolutePath());
        return FileUtils.readFileToString(file, "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooO0oO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String OooO0oo() throws Exception {
        return new MiscUtilities().LoadUIFile(this.OooO0O0.getAbsolutePath(), true);
    }

    private void OooOO0O(File file) throws JSONException {
        if (file == null || !file.exists() || file.isDirectory() || file.length() == 0) {
            return;
        }
        try {
            this.OooO0Oo.configViewFromJson(FileUtils.readFileToString(file, "UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // z2.vi
    public String OooO00o() {
        UipHelper uipHelper = this.OooO0Oo;
        if (uipHelper != null) {
            return uipHelper.saveConfigToJson();
        }
        return null;
    }

    @Override // z2.vi
    public void OooO0O0(String str) {
        UipHelper uipHelper = this.OooO0Oo;
        if (uipHelper != null) {
            uipHelper.configViewFromJson(str);
        }
    }

    @Override // z2.vi
    public void OooO0OO(String str) {
    }

    @Override // z2.vi
    public void OooO0Oo() throws JSONException {
        try {
            OooOO0O(this.OooO0OO);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // z2.vi
    public String OooO0o0() throws Exception {
        if (this.OooO0O0.exists()) {
            return OooO0o(this.OooO0OO);
        }
        return null;
    }

    @Override // z2.vi
    public LinearLayout read() throws Exception {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        e5.OooO00o().OooO0oO(new Callable() { // from class: z2.ri
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.OoooOoO.OooO0oo();
            }
        }).OooOOO(new y30() { // from class: z2.qi
            @Override // z2.y30
            public final void OooO0O0(Object obj) {
                this.OooO00o.OooOO0(countDownLatch, (String) obj);
            }
        });
        countDownLatch.await();
        return this.OooO0o0;
    }
}
