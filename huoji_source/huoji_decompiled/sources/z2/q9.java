package z2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.elfin.entity.ScriptLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class q9 extends BaseAdapter {
    private ArrayList<ScriptLog> OoooOoO;
    private LayoutInflater OoooOoo;
    private boolean Ooooo00;

    public class OooO00o implements CompoundButton.OnCheckedChangeListener {
        private int OoooOoO;

        public OooO00o(int i) {
            this.OoooOoO = i;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            ((ScriptLog) q9.this.OoooOoO.get(this.OoooOoO)).setSelect(z);
        }
    }

    public static class OooO0O0 {
        public TextView OooO00o;
        public TextView OooO0O0;
        public CheckBox OooO0OO;
        public ImageView OooO0Oo;
    }

    public q9(Context context, ArrayList<ScriptLog> arrayList) {
        this.OoooOoO = arrayList;
        this.OoooOoo = LayoutInflater.from(context);
    }

    public boolean OooO0O0() {
        return this.Ooooo00;
    }

    public void OooO0OO(boolean z) {
        this.Ooooo00 = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.OoooOoO.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.OoooOoO.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        OooO0O0 oooO0O0;
        if (view == null) {
            view = this.OoooOoo.inflate(R.layout.litview_item_scriptlog, (ViewGroup) null);
            oooO0O0 = new OooO0O0();
            oooO0O0.OooO00o = (TextView) view.findViewById(R.id.tv_listviewitem_scriptlog_size);
            oooO0O0.OooO0O0 = (TextView) view.findViewById(R.id.tv_listviewitem_scriptlog_name);
            oooO0O0.OooO0OO = (CheckBox) view.findViewById(R.id.cb_listviewitem_scriptlog_select);
            oooO0O0.OooO0Oo = (ImageView) view.findViewById(R.id.img_listviewitem_scriptlog_select);
            view.setTag(oooO0O0);
        } else {
            oooO0O0 = (OooO0O0) view.getTag();
        }
        ScriptLog scriptLog = this.OoooOoO.get(i);
        if (this.Ooooo00) {
            oooO0O0.OooO0OO.setVisibility(0);
            oooO0O0.OooO0Oo.setVisibility(8);
        } else {
            oooO0O0.OooO0OO.setVisibility(8);
            oooO0O0.OooO0Oo.setVisibility(0);
        }
        oooO0O0.OooO00o.setText(scriptLog.getSize());
        oooO0O0.OooO0O0.setText(scriptLog.getName());
        oooO0O0.OooO0OO.setOnCheckedChangeListener(new OooO00o(i));
        oooO0O0.OooO0OO.setChecked(scriptLog.isSelect());
        return view;
    }
}
