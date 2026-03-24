package z2;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
@rk("The shapes API is currently experimental and subject to change")
public class kl {
    private View OooO00o;
    private ll OooO0O0;
    private ScrollView OooO0OO;
    private final int[] OooO0Oo = new int[2];
    private final int[] OooO0o0 = new int[2];
    private final ViewTreeObserver.OnScrollChangedListener OooO0o = new OooO00o();

    public class OooO00o implements ViewTreeObserver.OnScrollChangedListener {
        public OooO00o() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            kl.this.OooO0o0();
        }
    }

    public kl(View view, ll llVar, ScrollView scrollView) {
        this.OooO00o = view;
        this.OooO0O0 = llVar;
        this.OooO0OO = scrollView;
    }

    public void OooO00o(ScrollView scrollView) {
        this.OooO0OO = scrollView;
    }

    public void OooO0O0(ll llVar) {
        this.OooO0O0 = llVar;
    }

    public void OooO0OO(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.OooO0o);
    }

    public void OooO0Oo(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.OooO0o);
    }

    public void OooO0o0() {
        ll llVar;
        float f;
        ScrollView scrollView = this.OooO0OO;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        this.OooO0OO.getLocationInWindow(this.OooO0Oo);
        this.OooO0OO.getChildAt(0).getLocationInWindow(this.OooO0o0);
        int top = (this.OooO00o.getTop() - this.OooO0Oo[1]) + this.OooO0o0[1];
        int height = this.OooO00o.getHeight();
        int height2 = this.OooO0OO.getHeight();
        if (top < 0) {
            llVar = this.OooO0O0;
            f = (top / height) + 1.0f;
        } else {
            int i = top + height;
            if (i <= height2) {
                if (this.OooO0O0.OooO0oo() != 1.0f) {
                    this.OooO0O0.OooOo0o(1.0f);
                    this.OooO00o.invalidate();
                }
                return;
            }
            int i2 = i - height2;
            llVar = this.OooO0O0;
            f = 1.0f - (i2 / height);
        }
        llVar.OooOo0o(Math.max(0.0f, Math.min(1.0f, f)));
        this.OooO00o.invalidate();
    }
}
