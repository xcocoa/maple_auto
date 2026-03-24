package z2;

import android.content.Context;
import android.os.Bundle;
import com.cyjh.feedback.libraryfeedbackinfo.R;

/* JADX INFO: loaded from: classes.dex */
public class lb extends hb {
    public lb(Context context) {
        super(context, R.style.Theme_Dialog);
    }

    @Override // z2.hb, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_loading);
        OooOo00(0.3f);
        OooOo0O(1.0f, 1.0f);
    }
}
