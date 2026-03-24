package z2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    private static volatile boolean OooO00o = true;

    private g() {
    }

    public static Drawable OooO00o(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return OooO0OO(context, context, i, theme);
    }

    public static Drawable OooO0O0(Context context, Context context2, @DrawableRes int i) {
        return OooO0OO(context, context2, i, null);
    }

    private static Drawable OooO0OO(Context context, Context context2, @DrawableRes int i, @Nullable Resources.Theme theme) {
        try {
            if (OooO00o) {
                return OooO0o0(context2, i, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return ContextCompat.getDrawable(context2, i);
        } catch (NoClassDefFoundError unused2) {
            OooO00o = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return OooO0Oo(context2, i, theme);
    }

    private static Drawable OooO0Oo(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return ResourcesCompat.getDrawable(context.getResources(), i, theme);
    }

    private static Drawable OooO0o0(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        if (theme != null) {
            context = new ContextThemeWrapper(context, theme);
        }
        return AppCompatResources.getDrawable(context, i);
    }
}
