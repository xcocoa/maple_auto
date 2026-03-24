package z2;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.view.View;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
public class oOO00O implements Runnable {
    private ProgressBar OoooOoO;
    private ProgressDialog OoooOoo;
    private Activity Ooooo00;
    private View Ooooo0o;
    private boolean OooooO0;
    private int OooooOO;
    private int OooooOo;
    private String Oooooo0;

    public oOO00O(Object obj) {
        if (obj instanceof ProgressBar) {
            this.OoooOoO = (ProgressBar) obj;
            return;
        }
        if (obj instanceof ProgressDialog) {
            this.OoooOoo = (ProgressDialog) obj;
        } else if (obj instanceof Activity) {
            this.Ooooo00 = (Activity) obj;
        } else if (obj instanceof View) {
            this.Ooooo0o = (View) obj;
        }
    }

    private void OooO00o(String str) {
        if (this.OoooOoo != null) {
            new o000(this.OoooOoo.getContext()).OooOooO(this.OoooOoo);
        }
        Activity activity = this.Ooooo00;
        if (activity != null) {
            activity.setProgressBarIndeterminateVisibility(false);
            this.Ooooo00.setProgressBarVisibility(false);
        }
        ProgressBar progressBar = this.OoooOoO;
        if (progressBar != null) {
            progressBar.setTag(o00O00.OooOo0O, str);
            this.OoooOoO.setVisibility(0);
        }
        View view = this.OoooOoO;
        if (view == null) {
            view = this.Ooooo0o;
        }
        if (view != null) {
            Object tag = view.getTag(o00O00.OooOo0O);
            if (tag == null || tag.equals(str)) {
                view.setTag(o00O00.OooOo0O, null);
                ProgressBar progressBar2 = this.OoooOoO;
                if (progressBar2 == null || !progressBar2.isIndeterminate()) {
                    return;
                }
                view.setVisibility(8);
            }
        }
    }

    private void OooO0oo(Object obj, String str, boolean z) {
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
                if (progressBar == null || !progressBar.isIndeterminate()) {
                    return;
                }
                view.setVisibility(8);
            }
        }
    }

    public void OooO0O0() {
        ProgressBar progressBar = this.OoooOoO;
        if (progressBar != null) {
            progressBar.setProgress(progressBar.getMax());
        }
        ProgressDialog progressDialog = this.OoooOoo;
        if (progressDialog != null) {
            progressDialog.setProgress(progressDialog.getMax());
        }
        Activity activity = this.Ooooo00;
        if (activity != null) {
            activity.setProgress(9999);
        }
    }

    public void OooO0OO(String str) {
        if (o00O000.Oooo00O()) {
            OooO00o(str);
        } else {
            this.Oooooo0 = str;
            o00O000.Oooo0o(this);
        }
    }

    public void OooO0Oo(int i) {
        int i2;
        ProgressBar progressBar = this.OoooOoO;
        if (progressBar != null) {
            progressBar.incrementProgressBy(this.OooooO0 ? 1 : i);
        }
        ProgressDialog progressDialog = this.OoooOoo;
        if (progressDialog != null) {
            progressDialog.incrementProgressBy(this.OooooO0 ? 1 : i);
        }
        Activity activity = this.Ooooo00;
        if (activity != null) {
            if (this.OooooO0) {
                i2 = this.OooooOo;
                this.OooooOo = i2 + 1;
            } else {
                int i3 = this.OooooOo + i;
                this.OooooOo = i3;
                i2 = (i3 * 10000) / this.OooooOO;
            }
            if (i2 > 9999) {
                i2 = 9999;
            }
            activity.setProgress(i2);
        }
    }

    public void OooO0o(int i) {
        if (i <= 0) {
            this.OooooO0 = true;
            i = 10000;
        }
        this.OooooOO = i;
        ProgressBar progressBar = this.OoooOoO;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.OoooOoO.setMax(i);
        }
        ProgressDialog progressDialog = this.OoooOoo;
        if (progressDialog != null) {
            progressDialog.setProgress(0);
            this.OoooOoo.setMax(i);
        }
    }

    public void OooO0o0() {
        ProgressBar progressBar = this.OoooOoO;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.OoooOoO.setMax(10000);
        }
        ProgressDialog progressDialog = this.OoooOoo;
        if (progressDialog != null) {
            progressDialog.setProgress(0);
            this.OoooOoo.setMax(10000);
        }
        Activity activity = this.Ooooo00;
        if (activity != null) {
            activity.setProgress(0);
        }
        this.OooooO0 = false;
        this.OooooOo = 0;
        this.OooooOO = 10000;
    }

    public void OooO0oO(String str) {
        OooO0o0();
        if (this.OoooOoo != null) {
            new o000(this.OoooOoo.getContext()).o000O0oo(this.OoooOoo);
        }
        Activity activity = this.Ooooo00;
        if (activity != null) {
            activity.setProgressBarIndeterminateVisibility(true);
            this.Ooooo00.setProgressBarVisibility(true);
        }
        ProgressBar progressBar = this.OoooOoO;
        if (progressBar != null) {
            progressBar.setTag(o00O00.OooOo0O, str);
            this.OoooOoO.setVisibility(0);
        }
        View view = this.Ooooo0o;
        if (view != null) {
            view.setTag(o00O00.OooOo0O, str);
            this.Ooooo0o.setVisibility(0);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        OooO00o(this.Oooooo0);
    }
}
