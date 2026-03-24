package com.cyjh.event.accessibility;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Marker;
import z2.cb;

/* JADX INFO: loaded from: classes.dex */
public class Cservice extends AccessibilityService {
    public static Cservice OoooOoo;
    private final String OoooOoO = getClass().getName();

    @RequiresApi(api = 14)
    public static void OooO(List<AccessibilityNodeInfo> list, AccessibilityNodeInfo accessibilityNodeInfo, @NonNull cb... cbVarArr) {
        boolean z;
        if (accessibilityNodeInfo == null || list == null) {
            return;
        }
        if (cbVarArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
            AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i);
            if (child != null) {
                int length = cbVarArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = true;
                        break;
                    } else {
                        if (!cbVarArr[i2].OooO0oO(child)) {
                            z = false;
                            break;
                        }
                        i2++;
                    }
                }
                if (z) {
                    list.add(child);
                } else {
                    OooO(list, child, cbVarArr);
                    child.recycle();
                }
            }
        }
    }

    @RequiresApi(api = 14)
    public static boolean OooO0OO(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo == null) {
            return false;
        }
        if (accessibilityNodeInfo.isClickable()) {
            accessibilityNodeInfo.performAction(16);
            return true;
        }
        AccessibilityNodeInfo parent = accessibilityNodeInfo.getParent();
        if (parent == null) {
            return false;
        }
        boolean zOooO0OO = OooO0OO(parent);
        parent.recycle();
        return zOooO0OO;
    }

    @RequiresApi(api = 14)
    public static AccessibilityNodeInfo OooOO0O(AccessibilityNodeInfo accessibilityNodeInfo, @NonNull cb... cbVarArr) {
        boolean z;
        if (accessibilityNodeInfo == null) {
            return null;
        }
        if (cbVarArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
            AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i);
            if (child != null) {
                int length = cbVarArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = true;
                        break;
                    }
                    if (!cbVarArr[i2].OooO0oO(child)) {
                        z = false;
                        break;
                    }
                    i2++;
                }
                if (z) {
                    return child;
                }
                AccessibilityNodeInfo accessibilityNodeInfoOooOO0O = OooOO0O(child, cbVarArr);
                child.recycle();
                if (accessibilityNodeInfoOooOO0O != null) {
                    return accessibilityNodeInfoOooOO0O;
                }
            }
        }
        return null;
    }

    public static boolean OooOOOO() {
        return OoooOoo != null;
    }

    @RequiresApi(api = 14)
    public static void OooOOo0(List<AccessibilityNodeInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<AccessibilityNodeInfo> it = list.iterator();
        while (it.hasNext()) {
            it.next().recycle();
        }
    }

    public String OooO00o(int i) {
        return (i < 7 || i > 16) ? (i < 29 || i > 54) ? i == 17 ? Marker.ANY_MARKER : i == 18 ? "#" : i == 55 ? "," : i == 56 ? "." : i == 68 ? "`" : i == 69 ? "-" : i == 70 ? "=" : i == 71 ? "[" : i == 72 ? "]" : i == 73 ? "\\" : i == 74 ? ";" : i == 75 ? "'" : i == 76 ? "/" : i == 77 ? "@" : "" : String.valueOf((char) (i + 36)) : Integer.toString(i - 7);
    }

    @RequiresApi(api = 24)
    public void OooO0O0(int i, int i2, int i3, int i4, int i5) {
        Path path = new Path();
        path.moveTo(i, i2);
        path.lineTo(i3, i4);
        OooO0oO(path, i5);
    }

    @RequiresApi(24)
    public void OooO0Oo(int i, int i2, int i3) {
        Path path = new Path();
        path.moveTo(i - 1, i2 - 1);
        path.lineTo(i + 1, i2 + 1);
        dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 50L, i3)).build(), null, null);
    }

    @RequiresApi(24)
    public void OooO0o(int i, int i2) {
        Path path = new Path();
        float f = i - 1;
        float f2 = i2 - 1;
        path.moveTo(f, f2);
        float f3 = i;
        path.lineTo(f3, f2);
        float f4 = i2;
        path.lineTo(f3, f4);
        path.lineTo(f, f4);
        dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, 1000L)).build(), null, null);
    }

    @RequiresApi(24)
    public void OooO0o0(AccessibilityNodeInfo accessibilityNodeInfo) {
        Rect rect = cb.OooO0OO;
        accessibilityNodeInfo.getBoundsInScreen(rect);
        OooO0Oo(rect.centerX(), rect.centerY(), 100);
    }

    @RequiresApi(24)
    public void OooO0oO(Path path, long j) {
        dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, j)).build(), null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @RequiresApi(api = 16)
    public List<AccessibilityNodeInfo> OooO0oo(@NonNull cb... cbVarArr) {
        boolean z;
        if (cbVarArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        ArrayList arrayList = new ArrayList();
        AccessibilityNodeInfo rootInActiveWindow = getRootInActiveWindow();
        if (rootInActiveWindow == null) {
            return arrayList;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < cbVarArr.length; i3++) {
            if (cbVarArr[i3] instanceof cb.OooO) {
                i++;
                i2 = i3;
            }
        }
        if (i == 0) {
            OooO(arrayList, rootInActiveWindow, cbVarArr);
        } else {
            if (i != 1) {
                throw new RuntimeException("由于时间有限，并且多了也没什么用，所以IdTF和TextTF只能有一个");
            }
            List<AccessibilityNodeInfo> listOooO00o = ((cb.OooO) cbVarArr[i2]).OooO00o(rootInActiveWindow);
            if (listOooO00o != null && listOooO00o.size() != 0) {
                if (cbVarArr.length == 1) {
                    arrayList.addAll(listOooO00o);
                } else {
                    for (AccessibilityNodeInfo accessibilityNodeInfo : listOooO00o) {
                        int length = cbVarArr.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                z = true;
                                break;
                            }
                            if (!cbVarArr[i4].OooO0oO(accessibilityNodeInfo)) {
                                z = false;
                                break;
                            }
                            i4++;
                        }
                        if (z) {
                            arrayList.add(accessibilityNodeInfo);
                        } else {
                            accessibilityNodeInfo.recycle();
                        }
                    }
                }
            }
        }
        rootInActiveWindow.recycle();
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @RequiresApi(api = 16)
    public AccessibilityNodeInfo OooOO0(@NonNull cb... cbVarArr) {
        AccessibilityNodeInfo accessibilityNodeInfoOooOO0O;
        boolean z;
        if (cbVarArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        AccessibilityNodeInfo rootInActiveWindow = getRootInActiveWindow();
        AccessibilityNodeInfo accessibilityNodeInfo = null;
        if (rootInActiveWindow == null) {
            return null;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < cbVarArr.length; i3++) {
            if (cbVarArr[i3] instanceof cb.OooO) {
                i++;
                i2 = i3;
            }
        }
        if (i == 0) {
            accessibilityNodeInfoOooOO0O = OooOO0O(rootInActiveWindow, cbVarArr);
        } else {
            if (i != 1) {
                throw new RuntimeException("由于时间有限，并且多了也没什么用，所以IdTF和TextTF只能有一个");
            }
            if (cbVarArr.length != 1) {
                List<AccessibilityNodeInfo> listOooO00o = ((cb.OooO) cbVarArr[i2]).OooO00o(rootInActiveWindow);
                if (listOooO00o == null || listOooO00o.size() == 0) {
                    rootInActiveWindow.recycle();
                    return null;
                }
                for (AccessibilityNodeInfo accessibilityNodeInfo2 : listOooO00o) {
                    if (accessibilityNodeInfo == null) {
                        int length = cbVarArr.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                z = true;
                                break;
                            }
                            if (!cbVarArr[i4].OooO0oO(accessibilityNodeInfo2)) {
                                z = false;
                                break;
                            }
                            i4++;
                        }
                        if (z) {
                            accessibilityNodeInfo = accessibilityNodeInfo2;
                        }
                    }
                    accessibilityNodeInfo2.recycle();
                }
                rootInActiveWindow.recycle();
                return accessibilityNodeInfo;
            }
            accessibilityNodeInfoOooOO0O = ((cb.OooO) cbVarArr[i2]).OooO0O0(rootInActiveWindow);
        }
        rootInActiveWindow.recycle();
        return accessibilityNodeInfoOooOO0O;
    }

    @RequiresApi(api = 14)
    public boolean OooOO0o(AccessibilityNodeInfo accessibilityNodeInfo, String str, Context context) {
        if (accessibilityNodeInfo.getChildCount() != 0) {
            for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
                if (accessibilityNodeInfo.getChild(i) != null) {
                    OooOO0o(accessibilityNodeInfo.getChild(i), str, context);
                }
            }
        } else if (accessibilityNodeInfo != null && accessibilityNodeInfo.isFocused() && accessibilityNodeInfo.getClassName().toString().compareTo(cb.OooO) == 0) {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("复制", str));
            accessibilityNodeInfo.performAction(1);
            accessibilityNodeInfo.performAction(32768);
            accessibilityNodeInfo.recycle();
            return true;
        }
        return false;
    }

    public void OooOOO(String str, Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        AccessibilityNodeInfo[] accessibilityNodeInfoArrOooOOO0 = OooOOO0();
        int length = accessibilityNodeInfoArrOooOOO0.length;
        for (int i = 0; i < length && !OooOO0o(accessibilityNodeInfoArrOooOOO0[i], str, context); i++) {
        }
    }

    public AccessibilityNodeInfo[] OooOOO0() {
        ArrayList arrayList = new ArrayList();
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            Iterator<AccessibilityWindowInfo> it = getWindows().iterator();
            while (it.hasNext()) {
                AccessibilityNodeInfo root = it.next().getRoot();
                if (root != null) {
                    arrayList.add(root);
                }
            }
        } else if (i >= 16) {
            arrayList.add(getRootInActiveWindow());
        }
        return (AccessibilityNodeInfo[]) arrayList.toArray(new AccessibilityNodeInfo[arrayList.size()]);
    }

    public void OooOOOo(int i, Context context) {
        if (Build.VERSION.SDK_INT >= 16) {
            if (i == 3) {
                performGlobalAction(2);
                return;
            }
            if (i == 4) {
                performGlobalAction(1);
            } else if (i == 26) {
                performGlobalAction(6);
            } else {
                if (OooO00o(i).isEmpty()) {
                    return;
                }
                OooOOO(OooO00o(i), context);
            }
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    @RequiresApi(api = 16)
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        OoooOoo = null;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
        OoooOoo = null;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public boolean onKeyEvent(KeyEvent keyEvent) {
        System.out.println("哈哈哈哈".concat(String.valueOf(keyEvent)));
        return super.onKeyEvent(keyEvent);
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onServiceConnected() {
        super.onServiceConnected();
        OoooOoo = this;
    }
}
