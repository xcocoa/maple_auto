package z2;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class OooOOO extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnLongClickListener {
    public Context OoooOoO;
    public OooOO0 OoooOoo;
    public OooOO0O Ooooo00;
    public OooOOOO Ooooo0o;
    public RecyclerView OooooO0;

    public OooOOO(RecyclerView recyclerView, View view, OooOO0 oooOO0, OooOO0O oooOO0O) {
        super(view);
        this.OooooO0 = recyclerView;
        this.OoooOoO = recyclerView.getContext();
        this.OoooOoo = oooOO0;
        this.Ooooo00 = oooOO0O;
        view.setOnClickListener(this);
        view.setOnLongClickListener(this);
        OooOOOO oooOOOO = new OooOOOO(this.OooooO0, this.itemView);
        this.Ooooo0o = oooOOOO;
        oooOOOO.OooOo(this);
    }

    public OooOOOO OooO00o() {
        return this.Ooooo0o;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OooOO0 oooOO0;
        if (view.getId() != this.itemView.getId() || (oooOO0 = this.OoooOoo) == null) {
            return;
        }
        oooOO0.OooO00o(this.OooooO0, view, getAdapterPosition());
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        OooOO0O oooOO0O;
        if (view.getId() != this.itemView.getId() || (oooOO0O = this.Ooooo00) == null) {
            return false;
        }
        return oooOO0O.OooO00o(this.OooooO0, view, getAdapterPosition());
    }
}
