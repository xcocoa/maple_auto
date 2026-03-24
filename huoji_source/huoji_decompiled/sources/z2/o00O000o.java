package z2;

import android.app.Activity;
import android.app.Dialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class o00O000o implements Comparator<File>, Runnable, View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, AbsListView.OnScrollListener, AdapterView.OnItemSelectedListener, TextWatcher {
    public static final int o0OoOo0 = 1;
    public static final int ooOO = 2;
    private Object OoooOoO;
    private String OoooOoo;
    private Object[] Ooooo00;
    private boolean Ooooo0o;
    private Class<?>[] OooooO0;
    private int OooooOO;
    private int Oooooo;
    private AbsListView.OnScrollListener Oooooo0;
    private AdapterView.OnItemSelectedListener OoooooO;
    private int OooooOo = 0;
    private boolean Ooooooo = false;

    private void OooO(ExpandableListView expandableListView, int i) {
        expandableListView.setTag(o00O00.OooOoO0, Integer.valueOf(i));
        if (i == 0) {
            int firstVisiblePosition = expandableListView.getFirstVisiblePosition();
            int lastVisiblePosition = expandableListView.getLastVisiblePosition() - firstVisiblePosition;
            ExpandableListAdapter expandableListAdapter = expandableListView.getExpandableListAdapter();
            for (int i2 = 0; i2 <= lastVisiblePosition; i2++) {
                long expandableListPosition = expandableListView.getExpandableListPosition(i2 + firstVisiblePosition);
                int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListPosition);
                int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListPosition);
                if (packedPositionGroup >= 0) {
                    View childAt = expandableListView.getChildAt(i2);
                    Long l = (Long) childAt.getTag(o00O00.OooOoO0);
                    if (l != null && l.longValue() == expandableListPosition) {
                        if (packedPositionChild == -1) {
                            expandableListAdapter.getGroupView(packedPositionGroup, expandableListView.isGroupExpanded(packedPositionGroup), childAt, expandableListView);
                        } else {
                            expandableListAdapter.getChildView(packedPositionGroup, packedPositionChild, packedPositionChild == expandableListAdapter.getChildrenCount(packedPositionGroup) - 1, childAt, expandableListView);
                        }
                        childAt.setTag(o00O00.OooOoO0, null);
                    }
                }
            }
        }
    }

    private void OooO00o(AbsListView absListView, int i) {
        int count = absListView.getCount();
        int lastVisiblePosition = absListView.getLastVisiblePosition();
        if (i != 0 || count != lastVisiblePosition + 1) {
            this.Oooooo = -1;
        } else if (lastVisiblePosition != this.Oooooo) {
            this.Oooooo = lastVisiblePosition;
            OooO0o(absListView, Integer.valueOf(i));
        }
    }

    private Object OooO0o(Object... objArr) {
        String str = this.OoooOoo;
        if (str != null) {
            Object[] objArr2 = this.Ooooo00;
            Object[] objArr3 = objArr2 != null ? objArr2 : objArr;
            Object obj = this.OoooOoO;
            return o00O000.OooOooO(obj == null ? this : obj, str, this.Ooooo0o, true, this.OooooO0, objArr3);
        }
        int i = this.OooooOO;
        if (i == 0) {
            return null;
        }
        if (i == 1) {
            Object[] objArr4 = this.Ooooo00;
            o00O000.OoooOo0((File) objArr4[0], (byte[]) objArr4[1]);
            return null;
        }
        if (i != 2) {
            return null;
        }
        Object[] objArr5 = this.Ooooo00;
        o00O000.OooO0O0((File) objArr5[0], ((Long) objArr5[1]).longValue(), ((Long) this.Ooooo00[2]).longValue());
        return null;
    }

    private void OooOO0(AbsListView absListView, int i) {
        absListView.setTag(o00O00.OooOoO0, Integer.valueOf(i));
        if (i == 0) {
            int firstVisiblePosition = absListView.getFirstVisiblePosition();
            int lastVisiblePosition = absListView.getLastVisiblePosition() - firstVisiblePosition;
            ListAdapter listAdapter = (ListAdapter) absListView.getAdapter();
            for (int i2 = 0; i2 <= lastVisiblePosition; i2++) {
                long j = i2 + firstVisiblePosition;
                View childAt = absListView.getChildAt(i2);
                if (((Number) childAt.getTag(o00O00.OooOoO0)) != null) {
                    listAdapter.getView((int) j, childAt, absListView);
                    childAt.setTag(o00O00.OooOoO0, null);
                }
            }
        }
    }

    public static boolean OooOO0O(int i, int i2, View view, ViewGroup viewGroup, String str) {
        if (str != null && !o000OO00.isMemoryCached(str)) {
            AbsListView absListView = (AbsListView) viewGroup;
            if (((AbsListView.OnScrollListener) viewGroup.getTag(o00O00.OooOo0o)) == null) {
                o00O000o o00o000o = new o00O000o();
                absListView.setOnScrollListener(o00o000o);
                viewGroup.setTag(o00O00.OooOo0o, o00o000o);
            }
            Integer num = (Integer) absListView.getTag(o00O00.OooOoO0);
            if (num != null && num.intValue() != 0 && num.intValue() != 1) {
                long packedPositionForChild = i2;
                if (viewGroup instanceof ExpandableListView) {
                    packedPositionForChild = ExpandableListView.getPackedPositionForChild(i, i2);
                }
                view.setTag(o00O00.OooOoO0, Long.valueOf(packedPositionForChild));
                return true;
            }
        }
        return false;
    }

    public static boolean OooOO0o(int i, View view, ViewGroup viewGroup, String str) {
        return viewGroup instanceof Gallery ? OooOOO(i, view, viewGroup, str) : OooOO0O(-2, i, view, viewGroup, str);
    }

    private static boolean OooOOO(int i, View view, ViewGroup viewGroup, String str) {
        Integer num = 0;
        if (str == null || o000OO00.isMemoryCached(str)) {
            return false;
        }
        Gallery gallery = (Gallery) viewGroup;
        Integer num2 = (Integer) gallery.getTag(o00O00.OooOoO0);
        if (num2 == null) {
            gallery.setTag(o00O00.OooOoO0, num);
            gallery.setCallbackDuringFling(false);
            new o00O000o().OooO0oO(gallery);
        } else {
            num = num2;
        }
        int lastVisiblePosition = ((gallery.getLastVisiblePosition() - gallery.getFirstVisiblePosition()) / 2) + 1;
        int iIntValue = num.intValue() - lastVisiblePosition;
        int iIntValue2 = num.intValue() + lastVisiblePosition;
        if (iIntValue < 0) {
            iIntValue2 -= iIntValue;
            iIntValue = 0;
        }
        if (i < iIntValue || i > iIntValue2) {
            view.setTag(o00O00.OooOoO0, null);
            return true;
        }
        view.setTag(o00O00.OooOoO0, Integer.valueOf(i));
        return false;
    }

    public static boolean OooOOO0(View view, ViewGroup viewGroup, String str, float f, boolean z) {
        return OooOO0o(-1, view, viewGroup, str);
    }

    public static void OooOOOO(Object obj, String str, boolean z) {
        if (obj != null) {
            if (!(obj instanceof View)) {
                if (obj instanceof Dialog) {
                    Dialog dialog = (Dialog) obj;
                    o000 o000Var = new o000(dialog.getContext());
                    if (z) {
                        o000Var.o000O0oo(dialog);
                        return;
                    } else {
                        o000Var.OooOooO(dialog);
                        return;
                    }
                }
                if (obj instanceof Activity) {
                    Activity activity = (Activity) obj;
                    activity.setProgressBarIndeterminateVisibility(z);
                    activity.setProgressBarVisibility(z);
                    if (z) {
                        activity.setProgress(0);
                        return;
                    }
                    return;
                }
                return;
            }
            View view = (View) obj;
            ProgressBar progressBar = obj instanceof ProgressBar ? (ProgressBar) obj : null;
            if (z) {
                view.setTag(o00O00.OooOo0O, str);
                view.setVisibility(0);
                if (progressBar != null) {
                    progressBar.setProgress(0);
                    progressBar.setMax(100);
                    return;
                }
                return;
            }
            Object tag = view.getTag(o00O00.OooOo0O);
            if (tag == null || tag.equals(str)) {
                view.setTag(o00O00.OooOo0O, null);
                if (progressBar == null || progressBar.isIndeterminate()) {
                    view.setVisibility(8);
                }
            }
        }
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        long jLastModified = file.lastModified();
        long jLastModified2 = file2.lastModified();
        if (jLastModified2 > jLastModified) {
            return 1;
        }
        return jLastModified2 == jLastModified ? 0 : -1;
    }

    public o00O000o OooO0OO(Object obj, String str, boolean z, Class<?>[] clsArr) {
        this.OoooOoO = obj;
        this.OoooOoo = str;
        this.Ooooo0o = z;
        this.OooooO0 = clsArr;
        return this;
    }

    public void OooO0Oo(AbsListView.OnScrollListener onScrollListener) {
        this.Oooooo0 = onScrollListener;
    }

    public int OooO0o0() {
        return this.OooooOo;
    }

    public void OooO0oO(Gallery gallery) {
        this.OoooooO = gallery.getOnItemSelectedListener();
        this.Ooooooo = true;
        gallery.setOnItemSelectedListener(this);
    }

    public o00O000o OooO0oo(int i, Object... objArr) {
        this.OooooOO = i;
        this.Ooooo00 = objArr;
        return this;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OooO0o(view);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        OooO0o(adapterView, view, Integer.valueOf(i), Long.valueOf(j));
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        OooO0o(adapterView, view, Integer.valueOf(i), Long.valueOf(j));
        AdapterView.OnItemSelectedListener onItemSelectedListener = this.OoooooO;
        if (onItemSelectedListener != null) {
            onItemSelectedListener.onItemSelected(adapterView, view, i, j);
        }
        if (!this.Ooooooo || ((Integer) adapterView.getTag(o00O00.OooOoO0)).intValue() == i) {
            return;
        }
        Adapter adapter = adapterView.getAdapter();
        adapterView.setTag(o00O00.OooOoO0, Integer.valueOf(i));
        int childCount = adapterView.getChildCount();
        int firstVisiblePosition = adapterView.getFirstVisiblePosition();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = adapterView.getChildAt(i2);
            int i3 = firstVisiblePosition + i2;
            Integer num = (Integer) childAt.getTag(o00O00.OooOoO0);
            if (num == null || num.intValue() != i3) {
                adapter.getView(i3, childAt, adapterView);
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Object objOooO0o = OooO0o(view);
        if (objOooO0o instanceof Boolean) {
            return ((Boolean) objOooO0o).booleanValue();
        }
        return false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        AdapterView.OnItemSelectedListener onItemSelectedListener = this.OoooooO;
        if (onItemSelectedListener != null) {
            onItemSelectedListener.onNothingSelected(adapterView);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        OooO00o(absListView, this.OooooOo);
        AbsListView.OnScrollListener onScrollListener = this.Oooooo0;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i, i2, i3);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.OooooOo = i;
        OooO00o(absListView, i);
        if (absListView instanceof ExpandableListView) {
            OooO((ExpandableListView) absListView, i);
        } else {
            OooOO0(absListView, i);
        }
        AbsListView.OnScrollListener onScrollListener = this.Oooooo0;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        OooO0o(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @Override // java.lang.Runnable
    public void run() {
        OooO0o(new Object[0]);
    }
}
