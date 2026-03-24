package z2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class OooOOO0<M> extends RecyclerView.Adapter<OooOOO> {
    public RecyclerView OooO;
    public final int OooO00o;
    public Context OooO0O0;
    public List<M> OooO0OO = new ArrayList();
    public OooO0o OooO0Oo;
    public OooO0OO OooO0o;
    public OooO OooO0o0;
    public OooOO0 OooO0oO;
    public OooOO0O OooO0oo;

    public OooOOO0(RecyclerView recyclerView, int i) {
        this.OooO = recyclerView;
        this.OooO0O0 = recyclerView.getContext();
        this.OooO00o = i;
    }

    public void OooO(int i, int i2) {
        List<M> list = this.OooO0OO;
        list.add(i2, list.remove(i));
        notifyItemMoved(i, i2);
    }

    public void OooO00o(M m) {
        OooO0O0(0, m);
    }

    public void OooO0O0(int i, M m) {
        this.OooO0OO.add(i, m);
        notifyItemInserted(i);
    }

    public void OooO0OO(M m) {
        OooO0O0(this.OooO0OO.size(), m);
    }

    public void OooO0Oo(List<M> list) {
        if (list != null) {
            List<M> list2 = this.OooO0OO;
            list2.addAll(list2.size(), list);
            notifyItemRangeInserted(this.OooO0OO.size(), list.size());
        }
    }

    public void OooO0o() {
        this.OooO0OO.clear();
        notifyDataSetChanged();
    }

    public void OooO0o0(List<M> list) {
        if (list != null) {
            this.OooO0OO.addAll(0, list);
            notifyItemRangeInserted(0, list.size());
        }
    }

    public abstract void OooO0oO(OooOOOO oooOOOO, int i, M m);

    public List<M> OooO0oo() {
        return this.OooO0OO;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: OooOO0, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(OooOOO oooOOO, int i) {
        OooO0oO(oooOOO.OooO00o(), i, getItem(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: OooOO0O, reason: merged with bridge method [inline-methods] */
    public OooOOO onCreateViewHolder(ViewGroup viewGroup, int i) {
        OooOOO oooOOO = new OooOOO(this.OooO, LayoutInflater.from(this.OooO0O0).inflate(this.OooO00o, viewGroup, false), this.OooO0oO, this.OooO0oo);
        oooOOO.OooO00o().OooOo0(this.OooO0Oo);
        oooOOO.OooO00o().OooOo0O(this.OooO0o0);
        oooOOO.OooO00o().OooOo00(this.OooO0o);
        OooOOo0(oooOOO.OooO00o());
        return oooOOO;
    }

    public void OooOO0o(int i) {
        this.OooO0OO.remove(i);
        notifyItemRemoved(i);
    }

    public void OooOOO(List<M> list) {
        if (list != null) {
            this.OooO0OO = list;
        } else {
            this.OooO0OO.clear();
        }
        notifyDataSetChanged();
    }

    public void OooOOO0(M m) {
        OooOO0o(this.OooO0OO.indexOf(m));
    }

    public void OooOOOO(int i, M m) {
        this.OooO0OO.set(i, m);
        notifyItemChanged(i);
    }

    public void OooOOOo(M m, M m2) {
        OooOOOO(this.OooO0OO.indexOf(m), m2);
    }

    public void OooOOo(OooO0OO oooO0OO) {
        this.OooO0o = oooO0OO;
    }

    public void OooOOo0(OooOOOO oooOOOO) {
    }

    public void OooOOoo(OooO0o oooO0o) {
        this.OooO0Oo = oooO0o;
    }

    public void OooOo0(OooOO0 oooOO0) {
        this.OooO0oO = oooOO0;
    }

    public void OooOo00(OooO oooO) {
        this.OooO0o0 = oooO;
    }

    public void OooOo0O(OooOO0O oooOO0O) {
        this.OooO0oo = oooOO0O;
    }

    public M getItem(int i) {
        return this.OooO0OO.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.OooO0OO.size();
    }
}
