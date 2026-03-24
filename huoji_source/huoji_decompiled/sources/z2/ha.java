package z2;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.ac.R;
import com.cyjh.http.bean.response.NoticeBean;

/* JADX INFO: loaded from: classes.dex */
public class ha extends i3 implements gd {
    private TextView OoooOoO;
    private TextView OoooOoo;
    private WebView Ooooo00;
    private LinearLayout Ooooo0o;
    private vc OooooO0;

    private void OooOo(View view) {
        this.OoooOoO = (TextView) view.findViewById(R.id.id_tv_msg_title);
        this.OoooOoo = (TextView) view.findViewById(R.id.id_tv_msg_time);
        this.Ooooo00 = (WebView) view.findViewById(R.id.id_msg_web_view);
        this.Ooooo0o = (LinearLayout) view.findViewById(R.id.incl_loading);
    }

    private void OooOo0o(NoticeBean noticeBean) {
        this.OoooOoO.setText(noticeBean.NoticeTitle);
        this.OoooOoo.setText(ae.Oooo0(noticeBean.NoticeTime, "yyyy-MM-dd HH:mm:ss"));
        this.Ooooo00.loadDataWithBaseURL(null, noticeBean.NoticeContent, "text/html", "utf-8", null);
        this.Ooooo00.getSettings().setJavaScriptEnabled(true);
        this.Ooooo00.setWebChromeClient(new WebChromeClient());
    }

    public static ha OooOoO0(long j) {
        ha haVar = new ha();
        Bundle bundle = new Bundle();
        bundle.putLong(ha.class.getCanonicalName(), j);
        haVar.setArguments(bundle);
        return haVar;
    }

    @Override // z2.gd
    public void OooO0OO(NoticeBean noticeBean) {
        OooOo0o(noticeBean);
        this.Ooooo0o.setVisibility(8);
    }

    @Override // z2.i3
    public int OooOo00() {
        return R.layout.fragment_msg_detail;
    }

    @Override // z2.i3, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getArguments() != null) {
            long j = getArguments().getLong(ha.class.getCanonicalName());
            if (j != 0) {
                vc vcVar = new vc(this);
                this.OooooO0 = vcVar;
                vcVar.OooO0OO(getActivity(), j);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        vc vcVar = this.OooooO0;
        if (vcVar != null) {
            vcVar.OooO0o();
        }
    }

    @Override // z2.gd
    public void onFail() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        bh.OooO0OO(ha.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        bh.OooO0Oo(ha.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        OooOo(view);
    }
}
