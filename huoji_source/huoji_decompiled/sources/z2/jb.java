package z2;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import com.cyjh.feedback.libraryfeedbackinfo.R;

/* JADX INFO: loaded from: classes.dex */
public class jb extends hb {
    public jb(Context context) {
        super(context, R.style.Theme_Dialog);
    }

    @Override // z2.hb, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_feedback_commit);
        OooOo00(0.5f);
        OooOo0O(1.0f, 1.0f);
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        dismiss();
        return true;
    }
}
