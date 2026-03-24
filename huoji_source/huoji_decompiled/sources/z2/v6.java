package z2;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.ac.R;

/* JADX INFO: loaded from: classes.dex */
public class v6 extends w9 {
    private TextView Ooooo0o;

    public v6(Context context) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            window = getWindow();
            i = 2038;
        } else if (i2 < 19 || i2 >= 24) {
            if (getWindow() == null) {
                return;
            }
            window = getWindow();
            i = 2002;
        } else {
            if (getWindow() == null) {
                return;
            }
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooO0oO(View view) {
        dismiss();
    }

    private void OooO0o0() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_message);
        this.Ooooo0o = textView;
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        findViewById(R.id.tv_dialog_known).setOnClickListener(new View.OnClickListener() { // from class: z2.o6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.OoooOoO.OooO0oO(view);
            }
        });
    }

    public void OooO0oo(String str) {
        this.Ooooo0o.setText(str);
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_show_message);
        OooO0O0(0.6f);
        OooO0o0();
    }
}
