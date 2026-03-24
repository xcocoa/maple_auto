package mobi.oneway.export.plugin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.Window;
import mobi.oneway.export.AdShowActivity;

/* JADX INFO: loaded from: classes2.dex */
public class BasePluginActivity extends Activity implements IActivityInterface {
    public AdShowActivity hostActivity;
    public boolean isPluginMode = false;

    @Override // mobi.oneway.export.plugin.IActivityInterface
    public void attach(AdShowActivity adShowActivity) {
        this.hostActivity = adShowActivity;
        this.isPluginMode = true;
    }

    @Override // mobi.oneway.export.plugin.IActivityInterface
    public Activity getActivity() {
        return this.isPluginMode ? this.hostActivity : this;
    }

    @Override // mobi.oneway.export.plugin.IActivityInterface
    public Context getContext() {
        return this.isPluginMode ? this.hostActivity.getBaseContext() : getBaseContext();
    }

    @Override // mobi.oneway.export.plugin.IActivityInterface
    public Activity getHostActivity() {
        return this.hostActivity;
    }

    @Override // android.app.Activity
    public Intent getIntent() {
        return this.isPluginMode ? this.hostActivity.getIntent() : super.getIntent();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Looper getMainLooper() {
        return this.isPluginMode ? this.hostActivity.getMainLooper() : super.getMainLooper();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.isPluginMode ? this.hostActivity.getResources() : super.getResources();
    }

    @Override // android.app.Activity
    public Window getWindow() {
        return this.isPluginMode ? this.hostActivity.getWindow() : super.getWindow();
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onCreate(Bundle bundle) {
        if (this.isPluginMode) {
            return;
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onDestroy() {
        if (this.isPluginMode) {
            return;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback, mobi.oneway.export.plugin.IActivityInterface
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.isPluginMode ? this.hostActivity.onKeyDownInHost(i, keyEvent) : super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onPause() {
        if (this.isPluginMode) {
            return;
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRestart() {
        if (this.isPluginMode) {
            return;
        }
        super.onRestart();
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onResume() {
        if (this.isPluginMode) {
            return;
        }
        super.onResume();
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onSaveInstanceState(Bundle bundle) {
        if (this.isPluginMode) {
            return;
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onStart() {
        if (this.isPluginMode) {
            return;
        }
        super.onStart();
    }

    @Override // android.app.Activity, mobi.oneway.export.plugin.IActivityInterface
    public void onStop() {
        if (this.isPluginMode) {
            return;
        }
        super.onStop();
    }
}
