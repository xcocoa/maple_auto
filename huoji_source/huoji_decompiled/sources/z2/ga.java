package z2;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ac.R;
import java.io.File;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class ga extends i3 {
    public static final String Ooooo0o = ga.class.getSimpleName();
    private ScrollView OoooOoO;
    private WebView OoooOoo;
    private TextView Ooooo00;

    private void OooOo() {
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
            this.OoooOoO.setVisibility(0);
            this.OoooOoo.setVisibility(8);
        } else {
            this.OoooOoo.setVisibility(0);
            this.OoooOoO.setVisibility(8);
            this.OoooOoo.loadUrl(str);
        }
    }

    private void OooOo0o() {
        if (getView() == null) {
            return;
        }
        View view = getView();
        this.OoooOoO = (ScrollView) view.findViewById(R.id.scrollview_scriptdescription);
        this.OoooOoo = (WebView) view.findViewById(R.id.webview_scriptdescription);
        this.Ooooo00 = (TextView) view.findViewById(R.id.tv_description);
        this.OoooOoo.getSettings().setJavaScriptEnabled(true);
        OooOo();
    }

    @Override // z2.i3
    public int OooOo00() {
        return R.layout.fragment_scriptdescription;
    }

    @Override // z2.i3, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        OooOo0o();
        l10.OooO0o().OooOo00(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        l10.OooO0o().OooOoO0(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        bh.OooO0OO(ga.class.getCanonicalName());
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onReceiveRTDFileUIEvent(p3 p3Var) {
        a5.OooO0O0(getActivity(), "onReceiveRTDFileUIEvent --> 更新RTDFileUI");
        OooOo();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        bh.OooO0Oo(ga.class.getCanonicalName());
    }

    @Override // z2.i3, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        setUserVisibleHint(true);
    }
}
