package com.core.util.share;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import z2.a3;
import z2.z2;

/* JADX INFO: loaded from: classes.dex */
public class SharedPreferenceProvider extends ContentProvider {
    private Map<String, OooO> OoooOoO = new ArrayMap();
    private OooO OoooOoo = new OooO00o();
    private OooO Ooooo00 = new OooO0O0();
    private OooO Ooooo0o = new OooO0OO();
    private OooO OooooO0 = new OooO0o();

    public interface OooO {
        Bundle OooO00o(@Nullable String str, @Nullable Bundle bundle);
    }

    public class OooO00o implements OooO {
        public OooO00o() {
        }

        @Override // com.core.util.share.SharedPreferenceProvider.OooO
        public Bundle OooO00o(@Nullable String str, @Nullable Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(a3.OooO0oO, Process.myPid());
            return bundle2;
        }
    }

    public class OooO0O0 implements OooO {
        public OooO0O0() {
        }

        @Override // com.core.util.share.SharedPreferenceProvider.OooO
        public Bundle OooO00o(@Nullable String str, @Nullable Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("methodQueryValues, extras is null!");
            }
            Context context = SharedPreferenceProvider.this.getContext();
            if (context == null) {
                throw new IllegalArgumentException("methodQueryValues, ctx is null!");
            }
            String string = bundle.getString(z2.OooOOO);
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            int i = bundle.getInt(z2.OooOOOo);
            switch (i) {
                case 1:
                    bundle.putString(z2.OooOOOO, sharedPreferences.getString(string, bundle.getString(z2.OooOOOO)));
                    return bundle;
                case 2:
                    bundle.putInt(z2.OooOOOO, sharedPreferences.getInt(string, bundle.getInt(z2.OooOOOO)));
                    return bundle;
                case 3:
                    bundle.putLong(z2.OooOOOO, sharedPreferences.getLong(string, bundle.getLong(z2.OooOOOO)));
                    return bundle;
                case 4:
                    bundle.putFloat(z2.OooOOOO, sharedPreferences.getFloat(string, bundle.getFloat(z2.OooOOOO)));
                    return bundle;
                case 5:
                    bundle.putBoolean(z2.OooOOOO, sharedPreferences.getBoolean(string, bundle.getBoolean(z2.OooOOOO)));
                    return bundle;
                case 6:
                    Set<String> stringSet = sharedPreferences.getStringSet(string, null);
                    bundle.putStringArrayList(z2.OooOOOO, stringSet != null ? new ArrayList<>(stringSet) : null);
                    return bundle;
                default:
                    throw new IllegalArgumentException("unknown valueType:" + i);
            }
        }
    }

    public class OooO0OO implements OooO {
        public OooO0OO() {
        }

        @Override // com.core.util.share.SharedPreferenceProvider.OooO
        public Bundle OooO00o(@Nullable String str, @Nullable Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("methodQueryValues, extras is null!");
            }
            Context context = SharedPreferenceProvider.this.getContext();
            if (context == null) {
                throw new IllegalArgumentException("methodQueryValues, ctx is null!");
            }
            bundle.putBoolean(a3.OooO0oO, context.getSharedPreferences(str, 0).contains(bundle.getString(z2.OooOOO)));
            return bundle;
        }
    }

    public class OooO0o implements OooO {
        public OooO0o() {
        }

        private SharedPreferences.Editor OooO0O0(SharedPreferences.Editor editor, Bundle bundle) {
            String string = bundle.getString(z2.OooOOO);
            int i = bundle.getInt(z2.OooOOOo);
            switch (i) {
                case 1:
                    return editor.putString(string, bundle.getString(z2.OooOOOO));
                case 2:
                    return editor.putInt(string, bundle.getInt(z2.OooOOOO));
                case 3:
                    return editor.putLong(string, bundle.getLong(z2.OooOOOO));
                case 4:
                    return editor.putFloat(string, bundle.getFloat(z2.OooOOOO));
                case 5:
                    return editor.putBoolean(string, bundle.getBoolean(z2.OooOOOO));
                case 6:
                    ArrayList<String> stringArrayList = bundle.getStringArrayList(z2.OooOOOO);
                    return stringArrayList == null ? editor.putStringSet(string, null) : editor.putStringSet(string, new HashSet(stringArrayList));
                default:
                    throw new IllegalArgumentException("unknown valueType:" + i);
            }
        }

        @Override // com.core.util.share.SharedPreferenceProvider.OooO
        public Bundle OooO00o(@Nullable String str, @Nullable Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("methodQueryValues, extras is null!");
            }
            Context context = SharedPreferenceProvider.this.getContext();
            if (context == null) {
                throw new IllegalArgumentException("methodQueryValues, ctx is null!");
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            ArrayList<Bundle> parcelableArrayList = bundle.getParcelableArrayList(a3.OooO0oO);
            if (parcelableArrayList == null) {
                parcelableArrayList = new ArrayList();
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            for (Bundle bundle2 : parcelableArrayList) {
                int i = bundle2.getInt(z2.OooOOo0);
                if (i == 2) {
                    editorEdit = OooO0O0(editorEdit, bundle2);
                } else if (i == 3) {
                    editorEdit = editorEdit.clear();
                } else {
                    if (i != 4) {
                        throw new IllegalArgumentException("unkonw op type:" + i);
                    }
                    editorEdit = editorEdit.remove(bundle2.getString(z2.OooOOO));
                }
            }
            int i2 = bundle.getInt(z2.OooOOo0);
            if (i2 == 6) {
                editorEdit.apply();
                return null;
            }
            if (i2 == 5) {
                boolean zCommit = editorEdit.commit();
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean(a3.OooO0oO, zCommit);
                return bundle3;
            }
            throw new IllegalArgumentException("unknown applyOrCommit:" + i2);
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        OooO oooO = this.OoooOoO.get(str);
        if (oooO == null) {
            return null;
        }
        return oooO.OooO00o(str2, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.OoooOoO.put(a3.OooO0Oo, this.Ooooo00);
        this.OoooOoO.put(a3.OooO00o, this.Ooooo0o);
        this.OoooOoO.put(a3.OooO0o0, this.OooooO0);
        this.OoooOoO.put(a3.OooO0o, this.OoooOoo);
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
