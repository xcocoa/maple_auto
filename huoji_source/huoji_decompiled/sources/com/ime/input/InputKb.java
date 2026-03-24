package com.ime.input;

import android.inputmethodservice.InputMethodService;
import android.inputmethodservice.KeyboardView;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.EditorInfo;

/* JADX INFO: loaded from: classes2.dex */
public class InputKb extends InputMethodService {
    public static Handler b;
    public EditorInfo a;
    private KeyboardView c;

    @Override // android.inputmethodservice.InputMethodService, android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i("InputKb", "InputKb - onCreate()");
        a aVarA = a.a();
        new StringBuilder("settings initInputMethod ims").append(Thread.currentThread().getName());
        aVarA.a = this;
    }

    @Override // android.inputmethodservice.InputMethodService
    public View onCreateInputView() {
        return this.c;
    }

    @Override // android.inputmethodservice.InputMethodService, android.inputmethodservice.AbstractInputMethodService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.i("InputKb", "InputKb - onDestroy()");
        a.a().a = null;
    }

    @Override // android.inputmethodservice.InputMethodService
    public boolean onEvaluateFullscreenMode() {
        EditorInfo editorInfo;
        if (getResources().getConfiguration().orientation == 2 && (editorInfo = this.a) != null && (editorInfo.imeOptions & 268435456) != 0) {
        }
        return false;
    }

    @Override // android.inputmethodservice.InputMethodService
    public void onFinishInputView(boolean z) {
        super.onFinishInputView(z);
    }
}
