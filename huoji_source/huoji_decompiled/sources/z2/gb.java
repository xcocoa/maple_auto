package z2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.cyjh.feedback.lib.utils.ImageLoader;
import com.cyjh.feedback.libraryfeedbackinfo.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class gb extends BaseAdapter {
    private static final int Ooooo0o = 4;
    private static final int OooooO0 = 1;
    private LayoutInflater OoooOoO;
    private List<String> OoooOoo;
    private OooO0O0 Ooooo00;

    public class OooO00o implements View.OnClickListener {
        public final /* synthetic */ int OoooOoO;

        public OooO00o(int i) {
            this.OoooOoO = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            gb.this.OoooOoo.remove(gb.this.OoooOoo.get(this.OoooOoO));
            gb.this.notifyDataSetChanged();
            if (gb.this.Ooooo00 != null) {
                gb.this.Ooooo00.OooO00o(gb.this.OoooOoo.size());
            }
        }
    }

    public interface OooO0O0 {
        void OooO00o(int i);
    }

    public class OooO0OO {
        public ImageView OooO00o;
        public ImageView OooO0O0;

        public OooO0OO() {
        }
    }

    public gb(Context context, List<String> list) {
        this.OoooOoo = new ArrayList();
        this.OoooOoO = LayoutInflater.from(context);
        this.OoooOoo = list;
    }

    public void OooO0OO(List<String> list) {
        this.OoooOoo = list;
    }

    public void OooO0Oo(OooO0O0 oooO0O0) {
        this.Ooooo00 = oooO0O0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.OoooOoo;
        if (list == null) {
            return 1;
        }
        if (list.size() < 4) {
            return this.OoooOoo.size() + 1;
        }
        return 4;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        List<String> list = this.OoooOoo;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.OoooOoo.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        OooO0OO oooO0OO;
        if (view == null) {
            view = this.OoooOoO.inflate(R.layout.grid_view_item, viewGroup, false);
            oooO0OO = new OooO0OO();
            oooO0OO.OooO00o = (ImageView) view.findViewById(R.id.id_iv_grid_item);
            oooO0OO.OooO0O0 = (ImageView) view.findViewById(R.id.id_img_delete_select);
            view.setTag(oooO0OO);
        } else {
            oooO0OO = (OooO0OO) view.getTag();
        }
        oooO0OO.OooO00o.setImageResource(R.mipmap.img_add_img_select);
        oooO0OO.OooO0O0.setVisibility(4);
        if (this.OoooOoo != null && i < getCount() - 1) {
            ImageLoader.OooOOo0().OooOo00(this.OoooOoo.get(i), oooO0OO.OooO00o);
            oooO0OO.OooO0O0.setVisibility(0);
        }
        List<String> list = this.OoooOoo;
        if (list != null && list.size() == 4) {
            ImageLoader.OooOOo0().OooOo00(this.OoooOoo.get(i), oooO0OO.OooO00o);
            oooO0OO.OooO0O0.setVisibility(0);
        }
        oooO0OO.OooO0O0.setOnClickListener(new OooO00o(i));
        return view;
    }
}
