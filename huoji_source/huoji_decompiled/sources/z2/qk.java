package z2;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.util.Log;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class qk {
    private static final String OooO00o = "DrawableUtils";
    private static Method OooO0O0;
    private static boolean OooO0OO;

    private qk() {
    }

    public static boolean OooO00o(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return OooO0O0(drawableContainer, constantState);
    }

    private static boolean OooO0O0(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!OooO0OO) {
            try {
                Method declaredMethod = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                OooO0O0 = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.e(OooO00o, "Could not fetch setConstantState(). Oh well.");
            }
            OooO0OO = true;
        }
        Method method = OooO0O0;
        if (method != null) {
            try {
                method.invoke(drawableContainer, constantState);
                return true;
            } catch (Exception unused2) {
                Log.e(OooO00o, "Could not invoke setConstantState(). Oh well.");
            }
        }
        return false;
    }
}
