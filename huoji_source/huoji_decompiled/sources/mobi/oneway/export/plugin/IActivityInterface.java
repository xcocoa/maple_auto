package mobi.oneway.export.plugin;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import mobi.oneway.export.AdShowActivity;

/* JADX INFO: loaded from: classes2.dex */
public interface IActivityInterface {
    void attach(AdShowActivity adShowActivity);

    Activity getActivity();

    Context getContext();

    Activity getHostActivity();

    void onCreate(Bundle bundle);

    void onDestroy();

    boolean onKeyDown(int i, KeyEvent keyEvent);

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();
}
