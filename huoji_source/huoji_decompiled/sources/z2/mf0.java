package z2;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public class mf0 {
    private static final int OooO00o = 0;
    private static final int OooO0O0 = 1;
    private static int OooO0o;
    private static volatile Point[] OooO0OO = new Point[2];
    private static final Point OooO0Oo = new Point();
    private static Rect OooO0o0 = new Rect();

    public static int OooO(Context context) {
        char c = context.getResources().getConfiguration().orientation == 1 ? (char) 0 : (char) 1;
        if (Build.VERSION.SDK_INT < 17) {
            return context.getResources().getDisplayMetrics().widthPixels + (c == 1 ? OooO0OO(context) : 0);
        }
        if (OooO0OO[c] == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return context.getResources().getDisplayMetrics().widthPixels + (c == 1 ? OooO0OO(context) : 0);
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            OooO0OO[c] = point;
        }
        if (OooO00o(context) && OooO0o0.right != 0) {
            iOooO0o = OooO0o(context);
        }
        return OooO0OO[c].x - iOooO0o;
    }

    @SuppressLint({"NewApi"})
    public static boolean OooO00o(Context context) {
        OooO0o0.setEmpty();
        Activity activityOooO0oo = nf0.OooO0oo(context, 15);
        if (activityOooO0oo == null) {
            return false;
        }
        Configuration configuration = context.getResources().getConfiguration();
        if (Build.VERSION.SDK_INT < 21) {
            Window window = activityOooO0oo.getWindow();
            if (window == null) {
                return false;
            }
            Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
            Point point = OooO0Oo;
            defaultDisplay.getRealSize(point);
            View decorView = window.getDecorView();
            if (2 == configuration.orientation) {
                boolean z = point.x != decorView.findViewById(R.id.content).getWidth();
                if (z) {
                    if (decorView.getLeft() > 0) {
                        OooO0o0.set(1, 0, 0, 0);
                    } else {
                        OooO0o0.set(0, 0, 1, 0);
                    }
                }
                return z;
            }
            decorView.getWindowVisibleDisplayFrame(OooO0o0);
            Rect rect = OooO0o0;
            boolean z3 = rect.bottom != point.y;
            rect.setEmpty();
            if (z3) {
                OooO0o0.set(0, 0, 0, 1);
            }
            return z3;
        }
        ViewGroup viewGroup = (ViewGroup) activityOooO0oo.getWindow().getDecorView();
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getId() != -1) {
                try {
                    String resourceEntryName = activityOooO0oo.getResources().getResourceEntryName(childAt.getId());
                    if (!TextUtils.isEmpty(resourceEntryName) && childAt.getId() != -1 && childAt.isShown() && (TextUtils.equals("navigationbarbackground", resourceEntryName.toLowerCase()) || TextUtils.equals("immersion_navigation_bar_view", resourceEntryName.toLowerCase()))) {
                        if (configuration.orientation != 2 || childAt.getWidth() > childAt.getHeight()) {
                            OooO0o0.set(0, 0, 0, 1);
                        } else if (childAt.getLeft() == 0) {
                            OooO0o0.set(1, 0, 0, 0);
                        } else {
                            OooO0o0.set(0, 0, 1, 0);
                        }
                        return true;
                    }
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return false;
    }

    private static void OooO0O0(Context context) {
        if (OooO0o != 0 || context == null) {
            return;
        }
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", g6.OooO0O0);
        OooO0o = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }

    private static int OooO0OO(Context context) {
        if (OooO00o(context) || OooO0o0.right == 0) {
            return 0;
        }
        return OooO0o(context);
    }

    private static int OooO0Oo(Context context) {
        if (OooO00o(context) || OooO0o0.bottom == 0) {
            return 0;
        }
        return OooO0o(context);
    }

    private static int OooO0o(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", g6.OooO0O0);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int OooO0o0(Context context) {
        if (OooO00o(context)) {
            return OooO0o(context);
        }
        return 0;
    }

    public static int OooO0oO(Context context) {
        char c = context.getResources().getConfiguration().orientation == 1 ? (char) 0 : (char) 1;
        if (Build.VERSION.SDK_INT < 17) {
            return context.getResources().getDisplayMetrics().heightPixels + (c == 0 ? OooO0Oo(context) : 0);
        }
        if (OooO0OO[c] == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return context.getResources().getDisplayMetrics().heightPixels + (c == 0 ? OooO0Oo(context) : 0);
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            OooO0OO[c] = point;
        }
        if (OooO00o(context) && OooO0o0.bottom != 0) {
            iOooO0o = OooO0o(context);
        }
        return OooO0OO[c].y - iOooO0o;
    }

    public static int OooO0oo(Context context) {
        if (context == null) {
            return 1;
        }
        return context.getResources().getConfiguration().orientation;
    }

    public static int OooOO0(Context context) {
        OooO0O0(context);
        return OooO0o;
    }
}
