package com.ime.input;

import android.inputmethodservice.InputMethodService;
import android.view.inputmethod.InputConnection;
import z2.gf;
import z2.hg;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static a d;
    public InputMethodService a = null;
    public String b;
    public String c;

    private a() {
    }

    public static a a() {
        if (d == null) {
            d = new a();
        }
        return d;
    }

    private void a(InputMethodService inputMethodService) {
        new StringBuilder("settings initInputMethod ims").append(Thread.currentThread().getName());
        this.a = inputMethodService;
    }

    private void a(String str) {
        InputConnection currentInputConnection;
        StringBuilder sb = new StringBuilder("inputText: ");
        sb.append(str);
        sb.append(", name:");
        sb.append(Thread.currentThread().getName());
        InputMethodService inputMethodService = this.a;
        if (inputMethodService == null || (currentInputConnection = inputMethodService.getCurrentInputConnection()) == null) {
            return;
        }
        currentInputConnection.commitText(str, str.length());
    }

    private void b() {
        this.a = null;
    }

    private void b(String str) {
        InputMethodService inputMethodService = this.a;
        if (inputMethodService != null) {
            inputMethodService.switchInputMethod(str);
        }
    }

    private void c(String str) {
        this.b = str;
    }

    private void d(String str) {
        this.c = str;
    }

    public final void a(boolean z) throws Throwable {
        StringBuilder sb = new StringBuilder("settings cmdSwitchInput isDefault: ");
        sb.append(z);
        sb.append(", name: ");
        sb.append(Thread.currentThread().getName());
        if (this.a == null && gf.OooO0O0()) {
            try {
                hg.OooO00o("ime enable " + this.c);
                hg.OooO00o("settings put secure default_input_method ".concat(String.valueOf(z ? this.b : this.c)));
                Thread.sleep(300L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
