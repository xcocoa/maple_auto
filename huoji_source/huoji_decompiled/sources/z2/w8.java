package z2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ac.R;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class w8 {

    public class OooO00o extends SimpleTarget<Bitmap> {
        public final /* synthetic */ k7 OoooOoO;

        public OooO00o(k7 k7Var) {
            this.OoooOoO = k7Var;
        }

        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable x1<? super Bitmap> x1Var) {
            k7 k7Var = this.OoooOoO;
            if (k7Var != null) {
                k7Var.OooO00o(bitmap);
            }
        }

        @Override // com.bumptech.glide.request.target.Target
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable x1 x1Var) {
            onResourceReady((Bitmap) obj, (x1<? super Bitmap>) x1Var);
        }
    }

    public class OooO0O0 implements o1<File> {
        public final /* synthetic */ o1 OoooOoO;

        public OooO0O0(o1 o1Var) {
            this.OoooOoO = o1Var;
        }

        @Override // z2.o1
        public boolean OooO00o(@Nullable GlideException glideException, Object obj, Target<File> target, boolean z) {
            o1 o1Var = this.OoooOoO;
            if (o1Var != null) {
                return o1Var.OooO00o(glideException, obj, target, z);
            }
            return false;
        }

        @Override // z2.o1
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public boolean OooO0O0(File file, Object obj, Target<File> target, DataSource dataSource, boolean z) {
            o1 o1Var = this.OoooOoO;
            if (o1Var != null) {
                return o1Var.OooO0O0(file, obj, target, dataSource, z);
            }
            return false;
        }
    }

    private w8() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void OooO(Context context, String str, ImageView imageView, o0O0o000 o0o0o000) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO(str).OooOO0O(new p1().o0OOO0o(R.drawable.bg_normal_pic).OooOoO0(R.drawable.bg_normal_pic).o0OO00O(Priority.NORMAL).o00000Oo(o0o0o000)).o0000oOO(imageView);
        }
    }

    public static void OooO00o(Context context, String str, p1 p1Var, k7 k7Var) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooOOO0().OooO(str).OooOO0O(p1Var).o0000o0o(new OooO00o(k7Var));
        }
    }

    public static p1 OooO0O0() {
        return new p1().o0OOO0o(R.drawable.bg_normal_pic).OooOoO0(R.drawable.bg_normal_pic).o0OO00O(Priority.NORMAL);
    }

    public static p1 OooO0OO() {
        return new p1().OooOOO0().o0OOO0o(R.drawable.bg_normal_pic).OooOoO0(R.drawable.bg_normal_pic).o0OO00O(Priority.NORMAL);
    }

    public static boolean OooO0Oo(Context context) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return Build.VERSION.SDK_INT >= 17 ? (activity.isDestroyed() || activity.isFinishing()) ? false : true : !activity.isFinishing();
    }

    public static void OooO0o(Context context, int i, ImageView imageView, p1 p1Var) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO0oo(Integer.valueOf(i)).OooOO0O(p1Var).o0000oOO(imageView);
        }
    }

    public static void OooO0o0(Context context, int i, ImageView imageView) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO0oo(Integer.valueOf(i)).OooOO0O(OooO0O0()).o0000oOO(imageView);
        }
    }

    public static void OooO0oO(Context context, File file, ImageView imageView) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO0Oo(file).OooOO0O(OooO0O0()).o0000oOO(imageView);
        }
    }

    public static void OooO0oo(Context context, String str, ImageView imageView) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO(str).OooOO0O(OooO0O0()).o0000oOO(imageView);
        }
    }

    public static void OooOO0(Context context, String str, ImageView imageView, p1 p1Var) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO(str).OooOO0O(p1Var).o0000oOO(imageView);
        }
    }

    public static void OooOO0O(Context context, byte[] bArr, ImageView imageView) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooO0OO(bArr).OooOO0O(new p1().o0OOO0o(R.drawable.bg_normal_pic).OooOoO0(R.drawable.bg_normal_pic).o0OO00O(Priority.HIGH).OooOOoo(o0oo0000.OooO00o)).o0000oOO(imageView);
        }
    }

    public static void OooOO0o(Context context, String str, ImageView imageView) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooOOOo().OooO(str).o0000oOO(imageView);
        }
    }

    @SuppressLint({"CheckResult"})
    public static void OooOOO(Context context, String str, o1<File> o1Var) {
        if (OooO0Oo(context)) {
            o0O0o<File> o0o0oOooOo00 = o00Oo00.OooOooO(context).OooOo00();
            o0o0oOooOo00.OooO(str);
            o0o0oOooOo00.o0000oo0(new OooO0O0(o1Var));
            o0o0oOooOo00.o000O0Oo();
        }
    }

    public static void OooOOO0(Context context, String str, ImageView imageView, p1 p1Var) {
        if (OooO0Oo(context)) {
            o00Oo00.OooOooO(context).OooOOOo().OooO(str).OooOO0O(p1Var).o0000oOO(imageView);
        }
    }
}
