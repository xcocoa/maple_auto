package z2;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.elfin.entity.Script;
import java.io.File;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class t6 extends w9 implements View.OnClickListener {
    private static final String o0OoOo0 = t6.class.getName();
    private ImageView Ooooo0o;
    private Button OooooO0;
    private ScrollView OooooOO;
    public Context OooooOo;
    private TextView Oooooo;
    private LinearLayout Oooooo0;
    private vi OoooooO;
    private boolean Ooooooo;

    public class OooO00o implements DialogInterface.OnDismissListener {
        public OooO00o() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (t6.this.Ooooooo) {
                t6.this.Ooooooo = false;
                if (x4.OooO0O0().OooO00o(f6.OooOo0O, Boolean.FALSE)) {
                    y8.OooOO0o(11);
                }
            } else {
                t6.this.OooOo0();
            }
            String unused = t6.o0OoOo0;
            i7.OooO().Oooo0o();
        }
    }

    public class OooO0O0 implements Runnable {
        public final /* synthetic */ float OoooOoO;
        public final /* synthetic */ float OoooOoo;
        public final /* synthetic */ int Ooooo00;
        public final /* synthetic */ boolean Ooooo0o;

        public OooO0O0(float f, float f2, int i, boolean z) {
            this.OoooOoO = f;
            this.OoooOoo = f2;
            this.Ooooo00 = i;
            this.Ooooo0o = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            t6.this.OooO0Oo(this.OoooOoO, this.OoooOoo);
            t6.this.OooOOO0(this.Ooooo00, this.Ooooo0o);
            t6.this.show();
        }
    }

    public class OooO0OO implements DialogInterface.OnDismissListener {
        public final /* synthetic */ u6 OoooOoO;

        public OooO0OO(u6 u6Var) {
            this.OoooOoO = u6Var;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (this.OoooOoO.OooO0oo()) {
                t6.this.dismiss();
            }
        }
    }

    public t6(Context context) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        this.Ooooooo = false;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            window = getWindow();
            i = 2038;
        } else if (i2 < 19 || i2 >= 24) {
            window = getWindow();
            i = 2002;
        } else {
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    private void OooOO0(float f, float f2, int i, boolean z) {
        if (isShowing()) {
            dismiss();
            new Handler().postDelayed(new OooO0O0(f, f2, i, z), 500L);
        }
    }

    private void OooOO0O(File file) throws Exception {
        vi viVar = this.OoooooO;
        if (viVar != null) {
            viVar.OooO0o0();
        }
    }

    private void OooOO0o() {
        setOnDismissListener(new OooO00o());
    }

    private void OooOOO() {
        this.Ooooo0o = (ImageView) findViewById(R.id.scriptui_imageview_setting);
        this.OooooO0 = (Button) findViewById(R.id.scriptui_button_savesetting);
        this.OooooOO = (ScrollView) findViewById(R.id.scriptui_scrollview);
        this.Oooooo = (TextView) findViewById(R.id.tv_tip_load);
        this.Ooooo0o.setOnClickListener(this);
        this.OooooO0.setOnClickListener(this);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ll_dialog_ui_parent);
        this.Oooooo0 = linearLayout;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        layoutParams.width = (int) (w3.OooOoo0(getContext()).x * 0.9f);
        this.Oooooo0.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOOOO, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ LinearLayout OooOOOo() throws Exception {
        return this.OoooooO.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOOo(Script script, LinearLayout linearLayout) {
        try {
            this.OoooooO.OooO0Oo();
            this.OoooooO.OooO0o0();
            File file = new File(script.getUipFile().getPath());
            if (!file.exists() || file.length() <= 0) {
                this.OooooOO.removeViewAt(0);
                this.OooooOO.addView(linearLayout);
            } else {
                this.Oooooo0.removeAllViews();
                this.Oooooo0.addView(linearLayout);
            }
            this.Oooooo.setVisibility(8);
            this.OooooO0.setVisibility(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOo00(Throwable th) {
        this.Oooooo.setVisibility(8);
        this.OooooO0.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOo0() {
        try {
            OooOO0O(b7.OooO0Oo().OooO0oO().getCfgFile());
        } catch (Exception e) {
            e.printStackTrace();
        }
        y8.OooOO0();
    }

    public void OooOOO0(int i, boolean z) {
        i7.OooO().Oooo0O0(b7.OooO0Oo().OooO0oO().getLcFile().getAbsolutePath(), m7.OooO0o0().OooO0o(), m7.OooO0o0().OooO0oO(), b7.OooO0Oo().OooO0Oo, b7.OooO0Oo().OooO0oO().getCfgFile().getAbsolutePath());
        this.Oooooo.setVisibility(0);
        this.OooooO0.setVisibility(4);
        if (this.Oooooo0.findViewById(this.Oooooo.getId()) == null) {
            this.Oooooo0.addView(this.Oooooo, 0);
        }
        final Script scriptOooO0oO = b7.OooO0Oo().OooO0oO();
        if (this.OoooooO == null) {
            this.OoooooO = ii.OooO0OO(getContext(), scriptOooO0oO.getUiFile().getPath(), scriptOooO0oO.getUipFile().getPath(), scriptOooO0oO.getCfgFile().getPath());
        }
        e5.OooO00o().OooO0oO(new Callable() { // from class: z2.l6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.OoooOoO.OooOOOo();
            }
        }).OooOOO(new y30() { // from class: z2.m6
            @Override // z2.y30
            public final void OooO0O0(Object obj) {
                this.OooO00o.OooOOo(scriptOooO0oO, (LinearLayout) obj);
            }
        }).OooOO0(new b40() { // from class: z2.n6
            @Override // z2.b40
            public final void OooO0O0(Object obj) {
                this.OooO00o.OooOo00((Throwable) obj);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.scriptui_button_savesetting /* 2131297233 */:
                this.Ooooooo = true;
                OooOo0();
                break;
            case R.id.scriptui_imageview_setting /* 2131297234 */:
                u6 u6Var = new u6(getContext());
                u6Var.o00Ooo = this.OooooOo;
                u6Var.setOnDismissListener(new OooO0OO(u6Var));
                u6Var.show();
                break;
            default:
                return;
        }
        dismiss();
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_scriptui);
        OooO0O0(0.1f);
        OooO0Oo(0.9f, a7.OooO00o().OooO0O0() ? 0.8f : 0.6f);
        OooOOO();
        OooOOO0(1, true);
        OooOO0o();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
