package z2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.MediaStore;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public class e4 {
    private static final String OooO00o = "ElfinCompat";

    private static Intent OooO00o(Context context) {
        Intent intent;
        if (f5.OooO00o(context)) {
            intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        } else {
            if (Build.VERSION.SDK_INT >= 19) {
                intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                intent.addFlags(3);
                intent.setType("image/*");
                return intent;
            }
            intent = new Intent("android.intent.action.GET_CONTENT");
        }
        intent.addCategory("android.intent.category.OPENABLE");
        intent.addFlags(3);
        intent.setType("image/*");
        return intent;
    }

    public static void OooO0O0(Activity activity, int i) {
        activity.startActivityForResult(OooO00o(activity), i);
    }

    public static void OooO0OO(Fragment fragment, int i) {
        fragment.startActivityForResult(OooO00o(fragment.getActivity()), i);
    }
}
