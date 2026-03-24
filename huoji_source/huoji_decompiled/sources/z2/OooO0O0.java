package z2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class OooO0O0 {
    public View OooO00o;
    public OooOOOO OooO0O0;

    private OooO0O0(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        this.OooO00o = viewInflate;
        viewInflate.setTag(this);
        this.OooO0O0 = new OooOOOO(viewGroup, this.OooO00o);
    }

    public static OooO0O0 OooO00o(View view, ViewGroup viewGroup, int i) {
        return view == null ? new OooO0O0(viewGroup, i) : (OooO0O0) view.getTag();
    }

    public View OooO0O0() {
        return this.OooO00o;
    }

    public OooOOOO OooO0OO() {
        return this.OooO0O0;
    }
}
