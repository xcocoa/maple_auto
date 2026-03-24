package com.didi.virtualapk.delegate;

import android.content.Context;
import android.content.IContentProvider;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.PluginContentResolver;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class IContentProviderProxy implements InvocationHandler {
    private static final String TAG = "VA.IContentProviderProxy";
    private IContentProvider mBase;
    private Context mContext;

    private IContentProviderProxy(Context context, IContentProvider iContentProvider) {
        this.mBase = iContentProvider;
        this.mContext = context;
    }

    private Bundle getBundleParameter(Object[] objArr) {
        if (objArr != null) {
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] instanceof Bundle) {
                    return (Bundle) objArr[i];
                }
            }
        }
        return null;
    }

    public static IContentProvider newInstance(Context context, IContentProvider iContentProvider) {
        return (IContentProvider) Proxy.newProxyInstance(iContentProvider.getClass().getClassLoader(), new Class[]{IContentProvider.class}, new IContentProviderProxy(context, iContentProvider));
    }

    private void wrapperUri(Method method, Object[] objArr) {
        Uri uri;
        int i;
        PluginManager pluginManager;
        ProviderInfo providerInfoResolveContentProvider;
        String string;
        Bundle bundleParameter = null;
        if (objArr != null) {
            i = 0;
            while (i < objArr.length) {
                if (objArr[i] instanceof Uri) {
                    uri = (Uri) objArr[i];
                    break;
                }
                i++;
            }
            uri = null;
            i = 0;
        } else {
            uri = null;
            i = 0;
        }
        if (method.getName().equals(NotificationCompat.CATEGORY_CALL) && (bundleParameter = getBundleParameter(objArr)) != null && (string = bundleParameter.getString(RemoteContentProvider.KEY_WRAPPER_URI)) != null) {
            uri = Uri.parse(string);
        }
        if (uri == null || (providerInfoResolveContentProvider = (pluginManager = PluginManager.getInstance(this.mContext)).resolveContentProvider(uri.getAuthority(), 0)) == null) {
            return;
        }
        Uri uriWrapperUri = PluginContentResolver.wrapperUri(pluginManager.getLoadedPlugin(providerInfoResolveContentProvider.packageName), uri);
        if (method.getName().equals(NotificationCompat.CATEGORY_CALL)) {
            bundleParameter.putString(RemoteContentProvider.KEY_WRAPPER_URI, uriWrapperUri.toString());
        } else {
            objArr[i] = uriWrapperUri;
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        Log.v(TAG, method.toGenericString() + " : " + Arrays.toString(objArr));
        wrapperUri(method, objArr);
        try {
            return method.invoke(this.mBase, objArr);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }
}
