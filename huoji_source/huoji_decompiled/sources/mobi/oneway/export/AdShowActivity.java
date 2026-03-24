package mobi.oneway.export;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.annotation.Nullable;
import mobi.oneway.export.e.c;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.g.g;
import mobi.oneway.export.plugin.IActivityInterface;

/* JADX INFO: loaded from: classes2.dex */
public class AdShowActivity extends Activity {
    public IActivityInterface iActivityInterface;
    public Class pluginActivityClass;

    public AdShowActivity() {
        this.pluginActivityClass = null;
        this.iActivityInterface = null;
        try {
            Class clsA = b.a(mobi.oneway.export.a.a.k);
            this.pluginActivityClass = clsA;
            IActivityInterface iActivityInterface = (IActivityInterface) clsA.newInstance();
            this.iActivityInterface = iActivityInterface;
            iActivityInterface.attach(this);
        } catch (Exception e) {
            c.a(PluginErrorType.shell_error_reflectClass, g.a((Throwable) e));
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onCreate(bundle);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onDestroy();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        IActivityInterface iActivityInterface = this.iActivityInterface;
        return iActivityInterface != null ? iActivityInterface.onKeyDown(i, keyEvent) : super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyDownInHost(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onPause();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onResume();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onSaveInstanceState(bundle);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onStart();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        IActivityInterface iActivityInterface = this.iActivityInterface;
        if (iActivityInterface != null) {
            iActivityInterface.onStop();
        }
    }
}
