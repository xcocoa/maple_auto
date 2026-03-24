package z2;

import android.content.Context;
import android.content.Intent;
import com.elfin.ad.activity.FullScreenTwoAdActivity;

/* JADX INFO: loaded from: classes2.dex */
public class ei {
    public static void OooO00o(Context context) {
        try {
            Intent intent = new Intent(context, Class.forName("com.cyjh.elfin.ui.activity.ElfinFreeActivity"));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void OooO0O0(Context context) {
        Intent intent = new Intent(context, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void OooO0OO(Context context, String str, String str2) {
        try {
            Intent intent = new Intent(context, Class.forName("com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity"));
            intent.addFlags(268435456);
            intent.putExtra("com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity", str);
            intent.putExtra("H5LinkJumpPageActivity", str2);
            context.startActivity(intent);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
