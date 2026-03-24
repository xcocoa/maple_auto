package com.didi.virtualapk.delegate;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.LoadedPlugin;
import com.didi.virtualapk.utils.RunUtil;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteContentProvider extends ContentProvider {
    public static final String KEY_PKG = "pkg";
    public static final String KEY_PLUGIN = "plugin";
    public static final String KEY_URI = "uri";
    public static final String KEY_WRAPPER_URI = "wrapper_uri";
    private static final String TAG = "VA.RemoteContentProvider";
    private static Map<String, ContentProvider> sCachedProviders = new HashMap();

    public static String getAuthority(Context context) {
        return context.getPackageName() + ".VirtualAPK.Provider";
    }

    private ContentProvider getContentProvider(final Uri uri) {
        final PluginManager pluginManager = PluginManager.getInstance(getContext());
        final String authority = Uri.parse(uri.getQueryParameter("uri")).getAuthority();
        ContentProvider contentProvider = sCachedProviders.get(authority);
        if (contentProvider != null) {
            return contentProvider;
        }
        synchronized (sCachedProviders) {
            if (pluginManager.getLoadedPlugin(uri.getQueryParameter("pkg")) == null) {
                try {
                    pluginManager.loadPlugin(new File(uri.getQueryParameter("plugin")));
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
            final ProviderInfo providerInfoResolveContentProvider = pluginManager.resolveContentProvider(authority, 0);
            if (providerInfoResolveContentProvider == null) {
                return null;
            }
            RunUtil.runOnUiThread(new Runnable() { // from class: com.didi.virtualapk.delegate.RemoteContentProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LoadedPlugin loadedPlugin = pluginManager.getLoadedPlugin(uri.getQueryParameter("pkg"));
                        ContentProvider contentProvider2 = (ContentProvider) Class.forName(providerInfoResolveContentProvider.name).newInstance();
                        contentProvider2.attachInfo(loadedPlugin.getPluginContext(), providerInfoResolveContentProvider);
                        RemoteContentProvider.sCachedProviders.put(authority, contentProvider2);
                    } catch (Exception e2) {
                        Log.w(RemoteContentProvider.TAG, e2);
                    }
                }
            }, true);
            return sCachedProviders.get(authority);
        }
    }

    public static String getUri(Context context) {
        return "content://" + getAuthority(context);
    }

    @Override // android.content.ContentProvider
    @NonNull
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
        ContentProvider contentProvider;
        try {
            Field declaredField = ContentProviderOperation.class.getDeclaredField("mUri");
            declaredField.setAccessible(true);
            for (ContentProviderOperation contentProviderOperation : arrayList) {
                declaredField.set(contentProviderOperation, Uri.parse(contentProviderOperation.getUri().getQueryParameter("uri")));
            }
            return (arrayList.size() <= 0 || (contentProvider = getContentProvider(arrayList.get(0).getUri())) == null) ? new ContentProviderResult[0] : contentProvider.applyBatch(arrayList);
        } catch (Exception unused) {
            return new ContentProviderResult[0];
        }
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        ContentProvider contentProvider = getContentProvider(uri);
        Uri uri2 = Uri.parse(uri.getQueryParameter("uri"));
        if (contentProvider != null) {
            return contentProvider.bulkInsert(uri2, contentValuesArr);
        }
        return 0;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        ContentProvider contentProvider;
        Log.d(TAG, "call " + str + " with extras : " + bundle);
        if (bundle == null || bundle.getString(KEY_WRAPPER_URI) == null || (contentProvider = getContentProvider(Uri.parse(bundle.getString(KEY_WRAPPER_URI)))) == null) {
            return null;
        }
        return contentProvider.call(str, str2, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        ContentProvider contentProvider = getContentProvider(uri);
        Uri uri2 = Uri.parse(uri.getQueryParameter("uri"));
        if (contentProvider != null) {
            return contentProvider.delete(uri2, str, strArr);
        }
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        ContentProvider contentProvider = getContentProvider(uri);
        Uri uri2 = Uri.parse(uri.getQueryParameter("uri"));
        if (contentProvider != null) {
            return contentProvider.getType(uri2);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        ContentProvider contentProvider = getContentProvider(uri);
        return contentProvider != null ? contentProvider.insert(Uri.parse(uri.getQueryParameter("uri")), contentValues) : uri;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Log.d(TAG, "onCreate, current thread:" + Thread.currentThread().getName());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        ContentProvider contentProvider = getContentProvider(uri);
        Uri uri2 = Uri.parse(uri.getQueryParameter("uri"));
        if (contentProvider != null) {
            return contentProvider.query(uri2, strArr, str, strArr2, str2);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        ContentProvider contentProvider = getContentProvider(uri);
        Uri uri2 = Uri.parse(uri.getQueryParameter("uri"));
        if (contentProvider != null) {
            return contentProvider.update(uri2, contentValues, str, strArr);
        }
        return 0;
    }
}
