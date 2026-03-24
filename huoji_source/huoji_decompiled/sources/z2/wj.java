package z2;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes2.dex */
public class wj extends AppCompatDialog {
    private BottomSheetBehavior<FrameLayout> OoooOoO;
    public boolean OoooOoo;
    private boolean Ooooo00;
    private boolean Ooooo0o;
    private BottomSheetBehavior.OooO0OO OooooO0;

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            wj wjVar = wj.this;
            if (wjVar.OoooOoo && wjVar.isShowing() && wj.this.OooO00o()) {
                wj.this.cancel();
            }
        }
    }

    public class OooO0O0 extends AccessibilityDelegateCompat {
        public OooO0O0() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            boolean z;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (wj.this.OoooOoo) {
                accessibilityNodeInfoCompat.addAction(1048576);
                z = true;
            } else {
                z = false;
            }
            accessibilityNodeInfoCompat.setDismissable(z);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                wj wjVar = wj.this;
                if (wjVar.OoooOoo) {
                    wjVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }
    }

    public class OooO0OO implements View.OnTouchListener {
        public OooO0OO() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class OooO0o extends BottomSheetBehavior.OooO0OO {
        public OooO0o() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.OooO0OO
        public void OooO00o(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.OooO0OO
        public void OooO0O0(@NonNull View view, int i) {
            if (i == 5) {
                wj.this.cancel();
            }
        }
    }

    public wj(@NonNull Context context) {
        this(context, 0);
    }

    public wj(@NonNull Context context, @StyleRes int i) {
        super(context, getThemeResId(context, i));
        this.OoooOoo = true;
        this.Ooooo00 = true;
        this.OooooO0 = new OooO0o();
        supportRequestWindowFeature(1);
    }

    public wj(@NonNull Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.OoooOoo = true;
        this.Ooooo00 = true;
        this.OooooO0 = new OooO0o();
        supportRequestWindowFeature(1);
        this.OoooOoo = z;
    }

    private View OooO0O0(int i, View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout frameLayout2 = (FrameLayout) coordinatorLayout.findViewById(R.id.design_bottom_sheet);
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorOooO0o = BottomSheetBehavior.OooO0o(frameLayout2);
        this.OoooOoO = bottomSheetBehaviorOooO0o;
        bottomSheetBehaviorOooO0o.OooOOOo(this.OooooO0);
        this.OoooOoO.OooOOo(this.OoooOoo);
        if (layoutParams == null) {
            frameLayout2.addView(view);
        } else {
            frameLayout2.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new OooO00o());
        ViewCompat.setAccessibilityDelegate(frameLayout2, new OooO0O0());
        frameLayout2.setOnTouchListener(new OooO0OO());
        return frameLayout;
    }

    private static int getThemeResId(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R.style.Theme_Design_Light_BottomSheetDialog;
    }

    public boolean OooO00o() {
        if (!this.Ooooo0o) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
            this.Ooooo00 = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.Ooooo0o = true;
        }
        return this.Ooooo00;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.OoooOoO;
        if (bottomSheetBehavior == null || bottomSheetBehavior.OooOO0O() != 5) {
            return;
        }
        this.OoooOoO.OooOo0(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.OoooOoo != z) {
            this.OoooOoo = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.OoooOoO;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.OooOOo(z);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.OoooOoo) {
            this.OoooOoo = true;
        }
        this.Ooooo00 = z;
        this.Ooooo0o = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(OooO0O0(i, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(OooO0O0(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(OooO0O0(0, view, layoutParams));
    }
}
