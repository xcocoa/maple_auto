package z2;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import android.webkit.WebView;
import android.widget.TextView;
import com.ac.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class s6 extends w9 {
    private WebView Ooooo0o;
    private TextView OooooO0;

    public class OooO00o implements Runnable {
        public final /* synthetic */ float OoooOoO;
        public final /* synthetic */ float OoooOoo;

        public OooO00o(float f, float f2) {
            this.OoooOoO = f;
            this.OoooOoo = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            s6.this.OooO0Oo(this.OoooOoO, this.OoooOoo);
            s6.this.show();
        }
    }

    public s6(Context context) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            window = getWindow();
            i = 2038;
        } else if (i2 < 19 || i2 >= 24) {
            window = getWindow();
            i = 2002;
        } else {
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    private void OooO() {
        this.OooooO0 = (TextView) findViewById(R.id.scriptrtd_textview_nortd);
        WebView webView = (WebView) findViewById(R.id.scriptrtd_webview);
        this.Ooooo0o = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        OooOO0();
    }

    private void OooO0o(float f, float f2) {
        if (isShowing()) {
            dismiss();
            new Handler().postDelayed(new OooO00o(f, f2), 500L);
        }
    }

    private void OooO0oO() {
    }

    private void OooO0oo() {
        OooO();
    }

    private void OooOO0() {
        String str;
        File file = new File(getContext().getFilesDir() + File.separator + g6.o0Oo0oo, f6.OooO0o);
        StringBuilder sb = new StringBuilder();
        sb.append("webViewLoad --> sdCardRtdFile path =");
        sb.append(file.getAbsolutePath());
        sb.toString();
        if (b7.OooO0Oo().OooO0O0) {
            str = "file://" + file.getAbsolutePath();
        } else {
            str = "file:///android_asset/script.rtd";
        }
        if (b7.OooO0Oo().OooO0O0 && (!file.exists() || file.length() == 0)) {
            this.Ooooo0o.setVisibility(8);
            this.OooooO0.setVisibility(0);
        } else {
            this.Ooooo0o.setVisibility(0);
            this.OooooO0.setVisibility(8);
            this.Ooooo0o.loadUrl(str);
        }
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_scriptrtd);
        OooO0O0(0.1f);
        OooO0Oo(0.9f, a7.OooO00o().OooO0O0() ? 0.8f : 0.6f);
        OooO0oo();
        OooO0oO();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
