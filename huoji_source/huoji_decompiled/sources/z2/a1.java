package z2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class a1 {
    private static final String OooO0O0 = "ManifestParser";
    private static final String OooO0OO = "GlideModule";
    private final Context OooO00o;

    public a1(Context context) {
        this.OooO00o = context;
    }

    private static y0 OooO0O0(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Object objNewInstance = null;
            try {
                objNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                OooO0OO(cls, e);
            }
            if (objNewInstance instanceof y0) {
                return (y0) objNewInstance;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + objNewInstance);
        } catch (ClassNotFoundException e2) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e2);
        }
    }

    private static void OooO0OO(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    public List<y0> OooO00o() {
        if (Log.isLoggable(OooO0O0, 3)) {
            Log.d(OooO0O0, "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.OooO00o.getPackageManager().getApplicationInfo(this.OooO00o.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                if (Log.isLoggable(OooO0O0, 3)) {
                    Log.d(OooO0O0, "Got null app info metadata");
                }
                return arrayList;
            }
            if (Log.isLoggable(OooO0O0, 2)) {
                Log.v(OooO0O0, "Got app info metadata: " + applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if (OooO0OO.equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(OooO0O0(str));
                    if (Log.isLoggable(OooO0O0, 3)) {
                        Log.d(OooO0O0, "Loaded Glide module: " + str);
                    }
                }
            }
            if (Log.isLoggable(OooO0O0, 3)) {
                Log.d(OooO0O0, "Finished loading Glide modules");
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
