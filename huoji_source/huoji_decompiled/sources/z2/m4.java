package z2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import com.cyjh.common.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class m4 {

    public class OooO00o extends SimpleTarget<Bitmap> {
        public final /* synthetic */ s3 OoooOoO;

        public OooO00o(s3 s3Var) {
            this.OoooOoO = s3Var;
        }

        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable x1<? super Bitmap> x1Var) {
            s3 s3Var = this.OoooOoO;
            if (s3Var != null) {
                s3Var.OooO00o(bitmap);
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

    private m4() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void OooO(Context context, String str, ImageView imageView) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooO(str).OooOO0O(OooO0OO()).o0000oOO(imageView);
        }
    }

    public static void OooO00o(Context context, String str, ImageView imageView) {
        if (str.endsWith(".gif")) {
            p1 p1VarOooO0OO = OooO0OO();
            p1VarOooO0OO.OooOOoo(o0oo0000.OooO0OO);
            OooOOO(context, str, imageView, p1VarOooO0OO);
        } else {
            p1 p1VarOooO0OO2 = OooO0OO();
            p1VarOooO0OO2.OooOOoo(o0oo0000.OooO0O0);
            OooOO0O(context, str, imageView, p1VarOooO0OO2);
        }
    }

    public static void OooO0O0(Context context, String str, p1 p1Var, s3 s3Var) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooOOO0().OooO(str).OooOO0O(p1Var).o0000o0o(new OooO00o(s3Var));
        }
    }

    public static p1 OooO0OO() {
        p1 p1Var = new p1();
        int i = R.drawable.bg_normal_pic;
        return p1Var.o0OOO0o(i).OooOoO0(i).o0OO00O(Priority.NORMAL);
    }

    public static p1 OooO0Oo() {
        p1 p1VarOooOOO0 = new p1().OooOOO0();
        int i = R.drawable.bg_normal_pic;
        return p1VarOooOOO0.o0OOO0o(i).OooOoO0(i).o0OO00O(Priority.NORMAL);
    }

    public static void OooO0o(Context context, int i, ImageView imageView) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooO0oo(Integer.valueOf(i)).OooOO0O(OooO0OO()).o0000oOO(imageView);
        }
    }

    public static boolean OooO0o0(Context context) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return Build.VERSION.SDK_INT >= 17 ? (activity.isDestroyed() || activity.isFinishing()) ? false : true : !activity.isFinishing();
    }

    public static void OooO0oO(Context context, int i, ImageView imageView, p1 p1Var) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooO0oo(Integer.valueOf(i)).OooOO0O(p1Var).o0000oOO(imageView);
        }
    }

    public static void OooO0oo(Context context, File file, ImageView imageView) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooO0Oo(file).OooOO0O(OooO0OO()).o0000oOO(imageView);
        }
    }

    public static void OooOO0(Context context, String str, ImageView imageView, o0O0o000 o0o0o000) {
        if (OooO0o0(context)) {
            p1 p1Var = new p1();
            int i = R.drawable.bg_normal_pic;
            o00Oo00.OooOooO(context).OooO(str).OooOO0O(p1Var.o0OOO0o(i).OooOoO0(i).o0OO00O(Priority.NORMAL).o00000Oo(o0o0o000)).o0000oOO(imageView);
        }
    }

    public static void OooOO0O(Context context, String str, ImageView imageView, p1 p1Var) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooO(str).OooOO0O(p1Var).o0000oOO(imageView);
        }
    }

    public static void OooOO0o(Context context, byte[] bArr, ImageView imageView) {
        if (OooO0o0(context)) {
            p1 p1Var = new p1();
            int i = R.drawable.bg_normal_pic;
            o00Oo00.OooOooO(context).OooO0OO(bArr).OooOO0O(p1Var.o0OOO0o(i).OooOoO0(i).o0OO00O(Priority.HIGH).OooOOoo(o0oo0000.OooO00o)).o0000oOO(imageView);
        }
    }

    public static void OooOOO(Context context, String str, ImageView imageView, p1 p1Var) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooOOOo().OooO(str).OooOO0O(p1Var).o0000oOO(imageView);
        }
    }

    public static void OooOOO0(Context context, String str, ImageView imageView) {
        if (OooO0o0(context)) {
            o00Oo00.OooOooO(context).OooOOOo().OooO(str).o0000oOO(imageView);
        }
    }

    @SuppressLint({"CheckResult"})
    public static void OooOOOO(Context context, String str, o1<File> o1Var) {
        if (OooO0o0(context)) {
            o0O0o<File> o0o0oOooOo00 = o00Oo00.OooOooO(context).OooOo00();
            o0o0oOooOo00.OooO(str);
            o0o0oOooOo00.o0000oo0(new OooO0O0(o1Var));
            o0o0oOooOo00.o000O0Oo();
        }
    }
}
