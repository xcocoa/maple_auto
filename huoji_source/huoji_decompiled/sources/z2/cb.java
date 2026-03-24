package z2;

import android.graphics.Rect;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class cb<T> {
    public static final String OooO = "android.widget.EditText";
    public static Rect OooO0OO = new Rect();
    public static final String OooO0Oo = "android.view.View";
    public static final String OooO0o = "android.widget.ImageView";
    public static final String OooO0o0 = "android.widget.TextView";
    public static final String OooO0oO = "android.widget.Button";
    public static final String OooO0oo = "android.widget.ImageButton";
    public static final String OooOO0 = "android.widget.ListView";
    public static final String OooOO0O = "android.widget.LinearLayout";
    public static final String OooOO0o = "android.view.ViewGroup";
    public static final String OooOOO0 = "com.android.systemui";
    public final boolean OooO00o;
    public final T OooO0O0;

    public interface OooO {
        @Nullable
        List<AccessibilityNodeInfo> OooO00o(AccessibilityNodeInfo accessibilityNodeInfo);

        @Nullable
        AccessibilityNodeInfo OooO0O0(AccessibilityNodeInfo accessibilityNodeInfo);
    }

    public static class OooO0O0 extends cb<String> {
        public OooO0O0(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        @Override // z2.cb
        @RequiresApi(api = 14)
        public final boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo) {
            boolean z = this.OooO00o;
            String string = accessibilityNodeInfo.getClassName().toString();
            return z ? string.equals(this.OooO0O0) : string.contains((CharSequence) this.OooO0O0);
        }
    }

    public static class OooO0OO extends cb<String> {
        private OooO0OO(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        public /* synthetic */ OooO0OO(String str, boolean z, byte b) {
            this(str, z);
        }

        @Override // z2.cb
        @RequiresApi(api = 14)
        public final boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo) {
            CharSequence contentDescription = accessibilityNodeInfo.getContentDescription();
            return this.OooO00o ? contentDescription != null && contentDescription.toString().equals(this.OooO0O0) : contentDescription != null && contentDescription.toString().contains((CharSequence) this.OooO0O0);
        }
    }

    public static class OooO0o extends cb<String> implements OooO {
        private OooO0o(@NonNull String str) {
            super(str, true, (byte) 0);
        }

        public /* synthetic */ OooO0o(String str, byte b) {
            this(str);
        }

        @Override // z2.cb.OooO
        @Nullable
        @RequiresApi(api = 18)
        public final List<AccessibilityNodeInfo> OooO00o(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.findAccessibilityNodeInfosByViewId((String) this.OooO0O0);
        }

        @Override // z2.cb.OooO
        @Nullable
        @RequiresApi(api = 18)
        public final AccessibilityNodeInfo OooO0O0(AccessibilityNodeInfo accessibilityNodeInfo) {
            List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId((String) this.OooO0O0);
            if (listFindAccessibilityNodeInfosByViewId == null || listFindAccessibilityNodeInfosByViewId.size() == 0) {
                return null;
            }
            for (int i = 1; i < listFindAccessibilityNodeInfosByViewId.size(); i++) {
                listFindAccessibilityNodeInfosByViewId.get(i).recycle();
            }
            return listFindAccessibilityNodeInfosByViewId.get(0);
        }

        @Override // z2.cb
        public final boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo) {
            return true;
        }
    }

    public static class OooOO0 extends cb<Rect> {
        public OooOO0(@NonNull Rect rect) {
            super(rect, true, (byte) 0);
        }

        @Override // z2.cb
        @RequiresApi(api = 14)
        public final boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.getBoundsInScreen(cb.OooO0OO);
            return ((Rect) this.OooO0O0).contains(cb.OooO0OO);
        }
    }

    public static class OooOO0O extends cb<String> implements OooO {
        private OooOO0O(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        public /* synthetic */ OooOO0O(String str, boolean z, byte b) {
            this(str, z);
        }

        @Override // z2.cb.OooO
        @Nullable
        @RequiresApi(api = 14)
        public final List<AccessibilityNodeInfo> OooO00o(AccessibilityNodeInfo accessibilityNodeInfo) {
            List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText((String) this.OooO0O0);
            if (listFindAccessibilityNodeInfosByText == null || listFindAccessibilityNodeInfosByText.size() == 0) {
                return null;
            }
            if (!this.OooO00o) {
                return listFindAccessibilityNodeInfosByText;
            }
            ArrayList arrayList = new ArrayList();
            for (AccessibilityNodeInfo accessibilityNodeInfo2 : listFindAccessibilityNodeInfosByText) {
                if (accessibilityNodeInfo2.getText() == null || !((String) this.OooO0O0).equals(accessibilityNodeInfo2.getText().toString())) {
                    accessibilityNodeInfo2.recycle();
                } else {
                    arrayList.add(accessibilityNodeInfo2);
                }
            }
            return arrayList;
        }

        @Override // z2.cb.OooO
        @Nullable
        @RequiresApi(api = 14)
        public final AccessibilityNodeInfo OooO0O0(AccessibilityNodeInfo accessibilityNodeInfo) {
            List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText((String) this.OooO0O0);
            AccessibilityNodeInfo accessibilityNodeInfo2 = null;
            if (listFindAccessibilityNodeInfosByText == null || listFindAccessibilityNodeInfosByText.size() == 0) {
                return null;
            }
            if (!this.OooO00o) {
                return listFindAccessibilityNodeInfosByText.get(0);
            }
            for (AccessibilityNodeInfo accessibilityNodeInfo3 : listFindAccessibilityNodeInfosByText) {
                if (accessibilityNodeInfo2 == null && accessibilityNodeInfo3.getText() != null && ((String) this.OooO0O0).equals(accessibilityNodeInfo3.getText().toString())) {
                    accessibilityNodeInfo2 = accessibilityNodeInfo3;
                } else {
                    accessibilityNodeInfo3.recycle();
                }
            }
            return accessibilityNodeInfo2;
        }

        @Override // z2.cb
        public final boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo) {
            return true;
        }
    }

    public static class OooOOO0 extends cb<String> {
        private OooOOO0(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        public /* synthetic */ OooOOO0(String str, boolean z, byte b) {
            this(str, z);
        }

        @Override // z2.cb
        @RequiresApi(api = 14)
        public final boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo) {
            CharSequence text = accessibilityNodeInfo.getText();
            return this.OooO00o ? text != null && text.toString().equals(this.OooO0O0) : text != null && text.toString().contains((CharSequence) this.OooO0O0);
        }
    }

    private cb(@NonNull T t, boolean z) {
        this.OooO0O0 = t;
        this.OooO00o = z;
    }

    public /* synthetic */ cb(Object obj, boolean z, byte b) {
        this(obj, z);
    }

    private static cb OooO(@NonNull String str, boolean z) {
        return new OooOOO0(str, z, (byte) 0);
    }

    private static cb OooO0OO(@NonNull Rect rect) {
        return new OooOO0(rect);
    }

    private static cb OooO0Oo(@NonNull String str) {
        return new OooO0o(str, (byte) 0);
    }

    private static cb OooO0o(@NonNull String str, boolean z) {
        return new OooOO0O(str, z, (byte) 0);
    }

    private static cb OooO0o0(String str, String str2) {
        return new OooO0o(str + ":id/" + str2, (byte) 0);
    }

    private static cb OooO0oo(@NonNull String str) {
        return new OooO0O0(str, true);
    }

    private static cb OooOO0(@NonNull String str, boolean z) {
        return new OooO0OO(str, z, (byte) 0);
    }

    private static cb OooOO0O(@NonNull String str, boolean z) {
        return new OooO0O0(str, z);
    }

    public abstract boolean OooO0oO(AccessibilityNodeInfo accessibilityNodeInfo);
}
