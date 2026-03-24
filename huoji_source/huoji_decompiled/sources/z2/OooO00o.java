package z2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class OooO00o<M> extends BaseAdapter {
    public final int OoooOoO;
    public Context OoooOoo;
    public List<M> Ooooo00 = new ArrayList();
    public OooO0o Ooooo0o;
    public OooO OooooO0;
    public OooO0OO OooooOO;

    public OooO00o(Context context, int i) {
        this.OoooOoo = context;
        this.OoooOoO = i;
    }

    public void OooO(int i, int i2) {
        Collections.swap(this.Ooooo00, i, i2);
        notifyDataSetChanged();
    }

    public void OooO00o(M m) {
        OooO0O0(0, m);
    }

    public void OooO0O0(int i, M m) {
        this.Ooooo00.add(i, m);
        notifyDataSetChanged();
    }

    public void OooO0OO(M m) {
        OooO0O0(this.Ooooo00.size(), m);
    }

    public void OooO0Oo(List<M> list) {
        if (list != null) {
            List<M> list2 = this.Ooooo00;
            list2.addAll(list2.size(), list);
            notifyDataSetChanged();
        }
    }

    public void OooO0o() {
        this.Ooooo00.clear();
        notifyDataSetChanged();
    }

    public void OooO0o0(List<M> list) {
        if (list != null) {
            this.Ooooo00.addAll(0, list);
            notifyDataSetChanged();
        }
    }

    public abstract void OooO0oO(OooOOOO oooOOOO, int i, M m);

    public List<M> OooO0oo() {
        return this.Ooooo00;
    }

    public void OooOO0(int i) {
        this.Ooooo00.remove(i);
        notifyDataSetChanged();
    }

    public void OooOO0O(M m) {
        this.Ooooo00.remove(m);
        notifyDataSetChanged();
    }

    public void OooOO0o(List<M> list) {
        if (list != null) {
            this.Ooooo00 = list;
        } else {
            this.Ooooo00.clear();
        }
        notifyDataSetChanged();
    }

    public void OooOOO(M m, M m2) {
        OooOOO0(this.Ooooo00.indexOf(m), m2);
    }

    public void OooOOO0(int i, M m) {
        this.Ooooo00.set(i, m);
        notifyDataSetChanged();
    }

    public void OooOOOO(OooOOOO oooOOOO) {
    }

    public void OooOOOo(OooO0OO oooO0OO) {
        this.OooooOO = oooO0OO;
    }

    public void OooOOo(OooO oooO) {
        this.OooooO0 = oooO;
    }

    public void OooOOo0(OooO0o oooO0o) {
        this.Ooooo0o = oooO0o;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.Ooooo00.size();
    }

    @Override // android.widget.Adapter
    public M getItem(int i) {
        return this.Ooooo00.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        OooO0O0 oooO0O0OooO00o = OooO0O0.OooO00o(view, viewGroup, this.OoooOoO);
        oooO0O0OooO00o.OooO0OO().OooOo0o(i);
        oooO0O0OooO00o.OooO0OO().OooOo0(this.Ooooo0o);
        oooO0O0OooO00o.OooO0OO().OooOo0O(this.OooooO0);
        oooO0O0OooO00o.OooO0OO().OooOo00(this.OooooOO);
        OooOOOO(oooO0O0OooO00o.OooO0OO());
        OooO0oO(oooO0O0OooO00o.OooO0OO(), i, getItem(i));
        return oooO0O0OooO00o.OooO0O0();
    }
}
