package z2;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class iv {
    private static final String OooO0o = "iv";
    private static final int OooO0oO = 27;
    private static final Pattern OooO0oo = Pattern.compile(",");
    private final Context OooO00o;
    private Point OooO0O0;
    private Point OooO0OO;
    private int OooO0Oo;
    private String OooO0o0;

    public iv(Context context) {
        this.OooO00o = context;
    }

    private static int OooO00o(CharSequence charSequence, int i) {
        int i2 = 0;
        for (String str : OooO0oo.split(charSequence)) {
            try {
                double d = Double.parseDouble(str.trim());
                int i3 = (int) (10.0d * d);
                if (Math.abs(((double) i) - d) < Math.abs(i - i2)) {
                    i2 = i3;
                }
            } catch (NumberFormatException unused) {
                return i;
            }
        }
        return i2;
    }

    private static Point OooO0O0(CharSequence charSequence, Point point) {
        String[] strArrSplit = OooO0oo.split(charSequence);
        int length = strArrSplit.length;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            String strTrim = strArrSplit[i2].trim();
            int iIndexOf = strTrim.indexOf(120);
            if (iIndexOf >= 0) {
                try {
                    int i5 = Integer.parseInt(strTrim.substring(0, iIndexOf));
                    int i6 = Integer.parseInt(strTrim.substring(iIndexOf + 1));
                    int iAbs = Math.abs(i5 - point.x) + Math.abs(i6 - point.y);
                    if (iAbs == 0) {
                        i4 = i6;
                        i3 = i5;
                        break;
                    }
                    if (iAbs < i) {
                        i4 = i6;
                        i = iAbs;
                        i3 = i5;
                    }
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
            i2++;
        }
        if (i3 <= 0 || i4 <= 0) {
            return null;
        }
        return new Point(i3, i4);
    }

    private static Point OooO0Oo(Camera.Parameters parameters, Point point) {
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        Point pointOooO0O0 = str != null ? OooO0O0(str, point) : null;
        return pointOooO0O0 == null ? new Point((point.x >> 3) << 3, (point.y >> 3) << 3) : pointOooO0O0;
    }

    private void OooOO0(Camera.Parameters parameters) {
        parameters.set("flash-value", (Build.MODEL.contains("Behold II") && jv.OooOO0 == 3) ? 1 : 2);
        parameters.set("flash-mode", "off");
    }

    private void OooOO0O(Camera.Parameters parameters) {
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            int iOooO00o = 27;
            String str2 = parameters.get("max-zoom");
            if (str2 != null) {
                try {
                    int i = (int) (Double.parseDouble(str2) * 10.0d);
                    if (27 > i) {
                        iOooO00o = i;
                    }
                } catch (NumberFormatException unused) {
                    Log.w(OooO0o, "Bad max-zoom: " + str2);
                }
            }
            String str3 = parameters.get("taking-picture-zoom-max");
            if (str3 != null) {
                try {
                    int i2 = Integer.parseInt(str3);
                    if (iOooO00o > i2) {
                        iOooO00o = i2;
                    }
                } catch (NumberFormatException unused2) {
                    Log.w(OooO0o, "Bad taking-picture-zoom-max: " + str3);
                }
            }
            String str4 = parameters.get("mot-zoom-values");
            if (str4 != null) {
                iOooO00o = OooO00o(str4, iOooO00o);
            }
            String str5 = parameters.get("mot-zoom-step");
            if (str5 != null) {
                try {
                    int i3 = (int) (Double.parseDouble(str5.trim()) * 10.0d);
                    if (i3 > 1) {
                        iOooO00o -= iOooO00o % i3;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (str2 != null || str4 != null) {
                parameters.set("zoom", String.valueOf(((double) iOooO00o) / 10.0d));
            }
            if (str3 != null) {
                parameters.set("taking-picture-zoom", iOooO00o);
            }
        }
    }

    public void OooO(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        Point point = this.OooO0OO;
        parameters.setPreviewSize(point.x, point.y);
        OooOO0(parameters);
        OooOO0O(parameters);
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    public Point OooO0OO() {
        return this.OooO0OO;
    }

    public String OooO0o() {
        return this.OooO0o0;
    }

    public int OooO0o0() {
        return this.OooO0Oo;
    }

    public Point OooO0oO() {
        return this.OooO0O0;
    }

    public void OooO0oo(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        this.OooO0Oo = parameters.getPreviewFormat();
        this.OooO0o0 = parameters.get("preview-format");
        Display defaultDisplay = ((WindowManager) this.OooO00o.getSystemService("window")).getDefaultDisplay();
        this.OooO0O0 = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        Point point = new Point();
        Point point2 = this.OooO0O0;
        point.x = point2.x;
        point.y = point2.y;
        int i = point2.x;
        int i2 = point2.y;
        if (i < i2) {
            point.x = i2;
            point.y = point2.x;
        }
        this.OooO0OO = OooO0Oo(parameters, point);
    }
}
