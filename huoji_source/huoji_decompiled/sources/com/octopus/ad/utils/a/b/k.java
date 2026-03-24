package com.octopus.ad.utils.a.b;

import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class k implements com.octopus.ad.utils.a.d {
    private final Context a;

    public k(Context context) {
        this.a = context;
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        if (!a()) {
            com.octopus.ad.utils.a.f.a("Only supports Android 10.0 and above for Nubia");
            cVar.a(new com.octopus.ad.utils.a.e("Only supports Android 10.0 and above for Nubia"));
            return;
        }
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.a.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (contentProviderClientAcquireContentProviderClient == null) {
                return;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            if (Build.VERSION.SDK_INT >= 24) {
                contentProviderClientAcquireContentProviderClient.close();
            } else {
                contentProviderClientAcquireContentProviderClient.release();
            }
            if (bundleCall == null) {
                throw new com.octopus.ad.utils.a.e("OAID query failed: bundle is null");
            }
            String string = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : null;
            if (string == null || string.length() == 0) {
                throw new com.octopus.ad.utils.a.e("OAID query failed: " + bundleCall.getString("message"));
            }
            com.octopus.ad.utils.a.f.a("OAID query success: " + string);
            cVar.a(string);
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            cVar.a(e);
        }
    }

    @Override // com.octopus.ad.utils.a.d
    @SuppressLint({"AnnotateVersionCheck"})
    public boolean a() {
        return Build.VERSION.SDK_INT >= 29;
    }
}
