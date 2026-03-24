package com.zbar.zbar.decode;

import android.os.Handler;
import android.os.Message;
import com.ac.R;
import com.cyjh.elfin.ui.activity.SweepCodeActivity;
import z2.jv;
import z2.nv;

/* JADX INFO: loaded from: classes2.dex */
public final class CaptureActivityHandler extends Handler {
    public nv OooO00o;
    public SweepCodeActivity OooO0O0;
    private State OooO0OO;

    public enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandler(SweepCodeActivity sweepCodeActivity) {
        this.OooO00o = null;
        this.OooO0O0 = null;
        this.OooO0O0 = sweepCodeActivity;
        nv nvVar = new nv(sweepCodeActivity);
        this.OooO00o = nvVar;
        nvVar.start();
        this.OooO0OO = State.SUCCESS;
        jv.OooO0O0().OooOO0();
        OooO0O0();
    }

    private void OooO0O0() {
        if (this.OooO0OO == State.SUCCESS) {
            this.OooO0OO = State.PREVIEW;
            jv.OooO0O0().OooO(this.OooO00o.OooO00o(), R.id.decode);
            jv.OooO0O0().OooO0oo(this, R.id.auto_focus);
        }
    }

    public void OooO00o() {
        this.OooO0OO = State.DONE;
        jv.OooO0O0().OooOO0O();
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
        removeMessages(R.id.decode);
        removeMessages(R.id.auto_focus);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case R.id.auto_focus /* 2131296811 */:
                if (this.OooO0OO == State.PREVIEW) {
                    jv.OooO0O0().OooO0oo(this, R.id.auto_focus);
                    return;
                }
                return;
            case R.id.decode_failed /* 2131296872 */:
                break;
            case R.id.decode_succeeded /* 2131296873 */:
                this.OooO0OO = State.SUCCESS;
                this.OooO0O0.OooOO0o((String) message.obj);
                break;
            case R.id.restart_preview /* 2131297203 */:
                OooO0O0();
                return;
            default:
                return;
        }
        this.OooO0OO = State.PREVIEW;
        jv.OooO0O0().OooO(this.OooO00o.OooO00o(), R.id.decode);
    }
}
