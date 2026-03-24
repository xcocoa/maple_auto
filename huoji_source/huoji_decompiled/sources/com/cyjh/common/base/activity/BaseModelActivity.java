package com.cyjh.common.base.activity;

import android.os.Bundle;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelProviders;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseModelActivity<T extends AndroidViewModel> extends BaseActivity {
    public T OooooO0;

    public abstract void OooO();

    public abstract int OooO0oO();

    public abstract Class<T> OooO0oo();

    public abstract void initView();

    @Override // com.cyjh.common.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(OooO0oO());
        initView();
        this.OooooO0 = (T) ViewModelProviders.of(this).get(OooO0oo());
        OooO();
    }
}
