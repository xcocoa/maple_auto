package net.grandcentrix.tray.provider;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Process;
import android.provider.BaseColumns;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.List;
import net.grandcentrix.tray.core.TrayLog;
import net.grandcentrix.tray.core.TrayRuntimeException;

/* JADX INFO: loaded from: classes2.dex */
public class TrayContract {

    @VisibleForTesting
    public static String sAuthority;

    public interface InternalPreferences extends Preferences {
        public static final String BASE_PATH = "internal_preferences";
    }

    public interface Preferences {
        public static final String BASE_PATH = "preferences";

        public interface Columns extends BaseColumns {
            public static final String CREATED = "CREATED";
            public static final String ID = "_id";
            public static final String KEY = "KEY";
            public static final String MIGRATED_KEY = "MIGRATED_KEY";
            public static final String MODULE = "MODULE";
            public static final String UPDATED = "UPDATED";
            public static final String VALUE = "VALUE";
        }
    }

    @NonNull
    public static Uri generateContentUri(@NonNull Context context) {
        return generateContentUri(context, Preferences.BASE_PATH);
    }

    @NonNull
    private static Uri generateContentUri(@NonNull Context context, String str) {
        return Uri.withAppendedPath(Uri.parse("content://" + getAuthority(context)), str);
    }

    @NonNull
    public static Uri generateInternalContentUri(@NonNull Context context) {
        return generateContentUri(context, InternalPreferences.BASE_PATH);
    }

    @NonNull
    private static synchronized String getAuthority(@NonNull Context context) {
        String str = sAuthority;
        if (str != null) {
            return str;
        }
        List<ProviderInfo> listQueryContentProviders = context.getPackageManager().queryContentProviders(context.getPackageName(), Process.myUid(), 0);
        if (listQueryContentProviders != null) {
            for (ProviderInfo providerInfo : listQueryContentProviders) {
                if (providerInfo.name.equals(TrayContentProvider.class.getName())) {
                    sAuthority = providerInfo.authority;
                    TrayLog.v("found authority: " + sAuthority);
                    return sAuthority;
                }
            }
        }
        throw new TrayRuntimeException("Internal tray error. Could not find the provider authority. Please fill an issue at https://github.com/grandcentrix/tray/issues");
    }
}
