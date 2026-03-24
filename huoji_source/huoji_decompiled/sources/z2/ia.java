package z2;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ac.R;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.ui.activity.MessageDetailActivity;
import com.cyjh.http.bean.NotifyMsgBean;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class ia extends i3 {
    private RecyclerView OoooOoO;
    private OooOOO0 OoooOoo;
    private List<NotifyMsgBean> Ooooo00;
    private TextView Ooooo0o;
    private OooOO0 OooooO0 = new OooO00o();

    public class OooO00o implements OooOO0 {
        public OooO00o() {
        }

        @Override // z2.OooOO0
        public void OooO00o(ViewGroup viewGroup, View view, int i) {
            NotifyMsgBean notifyMsgBean = (NotifyMsgBean) ia.this.OoooOoo.getItem(i);
            Intent intent = new Intent(ia.this.getActivity(), (Class<?>) MessageDetailActivity.class);
            intent.putExtra(MessageDetailActivity.class.getCanonicalName(), Long.parseLong(notifyMsgBean.ID));
            ia.this.startActivity(intent);
        }
    }

    private void OooOo(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.id_recycler_view);
        this.OoooOoO = recyclerView;
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        this.OoooOoO.setHasFixedSize(true);
        this.OoooOoO.setLayoutManager(new LinearLayoutManager(getActivity()));
        p9 p9Var = new p9(this.OoooOoO, R.layout.adapter_msg_notify);
        this.OoooOoo = p9Var;
        p9Var.OooOo0(this.OooooO0);
        this.Ooooo0o = (TextView) view.findViewById(R.id.id_tv_no_msg);
    }

    public static ia OooOoO(ArrayList<NotifyMsgBean> arrayList) {
        ia iaVar = new ia();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(g6.OooO0OO, arrayList);
        iaVar.setArguments(bundle);
        return iaVar;
    }

    private void OooOoO0() {
        List<NotifyMsgBean> list = this.Ooooo00;
        if (list == null || list.size() <= 0) {
            this.Ooooo0o.setVisibility(0);
            this.OoooOoO.setVisibility(8);
        } else {
            this.Ooooo0o.setVisibility(8);
            this.OoooOoO.setVisibility(0);
            this.OoooOoo.OooOOO(this.Ooooo00);
            this.OoooOoO.setAdapter(this.OoooOoo);
        }
    }

    @Override // z2.i3
    public int OooOo00() {
        return R.layout.fragment_msg_push;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        l10.OooO0o().OooOoO0(this);
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        if (msgItem.getMsgType() != 1002) {
            return;
        }
        this.OoooOoo.OooO0o();
        this.Ooooo0o.setVisibility(0);
        this.OoooOoO.setVisibility(8);
        l10.OooO0o().OooOOOO(new MsgItem(1003));
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        bh.OooO0OO(ia.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        bh.OooO0Oo(ia.class.getCanonicalName());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        l10.OooO0o().OooOo00(this);
        if (arguments != null) {
            this.Ooooo00 = arguments.getParcelableArrayList(g6.OooO0OO);
        }
        OooOo(view);
        OooOoO0();
    }
}
