package com.didi.virtualapk.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes2.dex */
public class PluginContext extends ContextWrapper {
    private final LoadedPlugin mPlugin;

    public PluginContext(LoadedPlugin loadedPlugin) {
        super(loadedPlugin.getPluginManager().getHostContext());
        this.mPlugin = loadedPlugin;
    }

    public PluginContext(LoadedPlugin loadedPlugin, Context context) {
        super(context);
        this.mPlugin = loadedPlugin;
    }

    private Context getHostContext() {
        return getBaseContext();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this.mPlugin.getApplication();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.mPlugin.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return this.mPlugin.getClassLoader();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ContentResolver getContentResolver() {
        return new PluginContentResolver(getHostContext());
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        return this.mPlugin.getPackageManager();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.mPlugin.getResources();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        return (str.equals("clipboard") || str.equals("notification")) ? getHostContext().getSystemService(str) : super.getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.mPlugin.getTheme();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        this.mPlugin.getPluginManager().getComponentsHandler().transformIntentToExplicitAsNeeded(intent);
        super.startActivity(intent);
    }
}
