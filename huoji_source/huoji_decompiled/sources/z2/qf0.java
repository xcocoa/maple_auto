package z2;

import android.view.MotionEvent;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class qf0 {
    public static String OooO00o(int i) {
        StringBuilder sb;
        String str;
        switch (i) {
            case 0:
                return "ACTION_DOWN";
            case 1:
                return "ACTION_UP";
            case 2:
                return "ACTION_MOVE";
            case 3:
                return "ACTION_CANCEL";
            case 4:
                return "ACTION_OUTSIDE";
            case 5:
            case 6:
            default:
                int i2 = (65280 & i) >> 8;
                int i3 = i & 255;
                if (i3 == 5) {
                    sb = new StringBuilder();
                    str = "ACTION_POINTER_DOWN(";
                } else {
                    if (i3 != 6) {
                        return Integer.toString(i);
                    }
                    sb = new StringBuilder();
                    str = "ACTION_POINTER_UP(";
                }
                sb.append(str);
                sb.append(i2);
                sb.append(")");
                return sb.toString();
            case 7:
                return "ACTION_HOVER_MOVE";
            case 8:
                return "ACTION_SCROLL";
            case 9:
                return "ACTION_HOVER_ENTER";
            case 10:
                return "ACTION_HOVER_EXIT";
            case 11:
                return "ACTION_BUTTON_PRESS";
            case 12:
                return "ACTION_BUTTON_RELEASE";
        }
    }

    public static String OooO0O0(List list) {
        String strOooO0O0;
        if (list == null) {
            return "list is null";
        }
        if (list.isEmpty()) {
            return "list is empty";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        sb.append("{\n ");
        for (Object obj : list) {
            if (obj instanceof List) {
                strOooO0O0 = OooO0O0((List) obj);
            } else {
                sb.append(String.valueOf(obj));
                strOooO0O0 = " ,\n ";
            }
            sb.append(strOooO0O0);
        }
        sb.append("}");
        return sb.toString();
    }

    public static String OooO0OO(Map map) {
        if (map == null) {
            return "map is null";
        }
        if (map.isEmpty()) {
            return "map is empty";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        sb.append("{");
        sb.append("\n");
        sb.append("\t");
        for (Map.Entry entry : map.entrySet()) {
            sb.append(String.format("\t%1$s : %2$s", String.valueOf(entry.getKey()), String.valueOf(entry.getValue())));
            sb.append("\n");
        }
        sb.append("}");
        return sb.toString();
    }

    private static String OooO0Oo(MotionEvent motionEvent) {
        return OooO00o(motionEvent.getAction());
    }

    public static String OooO0o(Object... objArr) {
        StringBuilder sb = new StringBuilder();
        if (objArr != null) {
            if (objArr.length > 1) {
                sb.append(" {  ");
            }
            int i = 0;
            for (Object obj : objArr) {
                sb.append("params【");
                sb.append(i);
                sb.append("】");
                sb.append(" = ");
                sb.append(OooO0oO(obj));
                if (i < objArr.length - 1) {
                    sb.append(" , ");
                }
                i++;
            }
            if (objArr.length > 1) {
                sb.append("  }");
            }
        }
        return sb.toString();
    }

    public static String OooO0o0(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        do {
            th.printStackTrace(printWriter);
            th = th.getCause();
        } while (th != null);
        String string = stringWriter.toString();
        printWriter.close();
        return string;
    }

    private static String OooO0oO(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof Throwable ? OooO0o0((Throwable) obj) : obj instanceof List ? OooO0O0((List) obj) : obj instanceof Map ? OooO0OO((Map) obj) : obj instanceof MotionEvent ? OooO0Oo((MotionEvent) obj) : String.valueOf(obj);
    }
}
