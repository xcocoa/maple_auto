package z2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k implements o0O0OOOo<Uri, Drawable> {
    private static final String OooO0O0 = "android";
    private static final int OooO0OO = 0;
    private static final int OooO0Oo = 2;
    private static final int OooO0o = 1;
    private static final int OooO0o0 = 0;
    private static final int OooO0oO = 1;
    private static final int OooO0oo = 0;
    private final Context OooO00o;

    public k(Context context) {
        this.OooO00o = context.getApplicationContext();
    }

    @NonNull
    private Context OooO0Oo(Uri uri, String str) {
        if (str.equals(this.OooO00o.getPackageName())) {
            return this.OooO00o;
        }
        try {
            return this.OooO00o.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.OooO00o.getPackageName())) {
                return this.OooO00o;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    @DrawableRes
    private int OooO0o(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    @DrawableRes
    private int OooO0o0(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e);
        }
    }

    @DrawableRes
    private int OooO0oO(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return OooO0o(context, uri);
        }
        if (pathSegments.size() == 1) {
            return OooO0o0(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // z2.o0O0OOOo
    @Nullable
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0Ooooo<Drawable> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        Context contextOooO0Oo = OooO0Oo(uri, uri.getAuthority());
        return j.OooO0Oo(g.OooO0O0(this.OooO00o, contextOooO0Oo, OooO0oO(contextOooO0Oo, uri)));
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri, @NonNull o0O0OOO0 o0o0ooo0) {
        return uri.getScheme().equals("android.resource");
    }
}
