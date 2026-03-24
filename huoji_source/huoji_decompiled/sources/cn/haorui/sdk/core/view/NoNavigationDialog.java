package cn.haorui.sdk.core.view;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class NoNavigationDialog extends AlertDialog {
    private Window window;

    public class a implements View.OnSystemUiVisibilityChangeListener {
        public final /* synthetic */ Window a;

        public a(NoNavigationDialog noNavigationDialog, Window window) {
            this.a = window;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            this.a.getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
        }
    }

    public NoNavigationDialog(Context context) {
        super(context);
        this.window = getWindow();
    }

    public NoNavigationDialog(@NonNull Context context, int i) {
        super(context, i);
    }

    private void clearFocusNotAle(Window window) {
        window.clearFlags(8);
    }

    private void focusNotAle(Window window) {
        window.setFlags(8, 8);
    }

    public void hideNavigationBar(Window window) {
        window.getDecorView().setSystemUiVisibility(2);
        window.getDecorView().setOnSystemUiVisibilityChangeListener(new a(this, window));
    }

    @Override // android.app.Dialog
    public void show() {
        focusNotAle(this.window);
        super.show();
        hideNavigationBar(this.window);
        clearFocusNotAle(this.window);
    }
}
